<?php
/*
    目录管理功能
*/

namespace app\admin\controller;

use support\Request;
use think\db\Where;
use think\facade\Db;
class product_catalog
{
    public function get(Request $request)
    {
        $data_array=$this->get_product_catalog_id(0);
        return json(['code' => 200, 'msg' => 'ok', 'data' => $data_array]);
    }

    //获取类目下所有的类目id
    public function get_product_catalog_id($pid=0): array
    {
        $catalog_return=array();
        $where=array();
        $where[]=['pid',"=",$pid];
        $catalog_list=Db::table('product_catalog')->field('id,`id` as `key`,catalog_name as `title`')->where($where)->select()->toArray();
        foreach($catalog_list as $catalog_info){
            $product_catalog_id=$catalog_info['id'];
            $catalog_array=$catalog_info;
            $catalog_array['children']=$this->get_product_catalog_id($product_catalog_id);
            $catalog_return[]=$catalog_array;
        }
        return $catalog_return;
    }
    //根据操作请求 操作数据
    public function category_edit(Request $request){
        if($request->method()=='POST'){
            $type=$request->input('type','');//操作类型
            $category_id=$request->input('category_id','');//类目id
            $category_name=$request->input('category_name','');

            $error_array=array();
            $where[]=['id',"=",$category_id];
            $catalog_rows=Db::table('product_catalog')->where($where)->find();
            if(empty($catalog_rows))$error_array[]='目录ID不存在!';

            $msg='';
            if ($type == 'category_modify')$msg = '修改目录';
            if ($type == 'category_add')$msg = '添加目录';
            if ($type == 'category_del')$msg = '删除目录';

            if(empty($error_array)) {
                if ($type == 'category_modify') {
                    $data=array();
                    $data['catalog_name']=$category_name;
                    Db::table('product_catalog')->where($where)->update($data);
                }
                if ($type == 'category_add') {
                    $data=array();
                    $data['pid']=$catalog_rows['id'];//得到父节点id
                    $data['catalog_name']=$category_name;
                    $data['update_time']=date('Y-m-d H:i:s',time());
                    Db::table('product_catalog')->where($where)->insert($data);
                }
                if ($type == 'category_del') {
                    Db::table('product_catalog')->where($where)->delete();
                }
            }
            if(empty($error_array)) {
                return json(['code' => 200, 'msg' => $msg." 成功!", 'data' => ['操作成功!']]);
            }else{
                return json(['code' => 100, 'msg' => $msg." 失败!", 'data' => $error_array]);
            }
        }
        return json(['code' => 100, 'msg' => '不安全的操作!', 'data' => ['非POST请求!']]);
    }


}
