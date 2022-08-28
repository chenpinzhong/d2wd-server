<?php
/*
    目录管理功能
*/

namespace app\admin\controller;

use support\Request;
use think\db\Where;
use think\facade\Db;
class product_manage
{
    public function get(Request $request)
    {
        $data_array=$this->get_product_catalog_id(0);
        return json(['code' => 0, 'msg' => 'ok', 'data' => $data_array]);
    }

    //获取类目下所有的类目id
    public function get_product_catalog_id($pid=0){
        $catalog_return=array();
        $where=array();
        $where[]=['pid',"=",$pid];
        $catalog_list=Db::table('product_catalog')->field('id,`id` as `key`,catalog_name as `title`')->where($where)->select()->toArray();
        foreach($catalog_list as $catalog_info){
            $catalog_array=array();
            $product_catalog_id=$catalog_info['id'];
            $catalog_array=$catalog_info;
            $catalog_array['children']=$this->get_product_catalog_id($product_catalog_id);
            $catalog_return[]=$catalog_array;
        }
        return $catalog_return;
    }



    public function view(Request $request)
    {
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request)
    {
        return json(['code' => 0, 'msg' => 'ok', 'type' => 'api']);
    }
}
