<?php
/*
    产品管理
*/

namespace app\admin\controller;

use support\Request;
use think\db\Where;
use think\facade\Db;
class product_manage
{
    //添加产品功能
    public function add(Request $request){
        //初始化错误信息
        $error_array=array();

        $category_id=$request->input('category_id','');//类目id
        $product_name=$request->input('product_name','');//产品名称
        $brand_name=$request->input('brand_name','');//品牌名称
        $product_images=$request->input('product_images','');//产品图
        $attribute_info=$request->input('attribute_info','');//产品属性
        $product_table_data=$request->input('product_table_data','');//产品属性
        $editor_html=$request->input('editor_html','');

        if(empty($category_id))$error_array[]="未选择产品目录!";
        if(empty($product_name))$error_array[]="未输入产品名称!";
        if(empty($brand_name))$error_array[]="未输入品牌名称!";
        if(empty($product_images))$error_array[]="未上传产品图!";
        if(empty($attribute_info))$error_array[]="未设置产品属性!";
        if(empty($product_table_data))$error_array[]="产品表数据为空!";
        if(empty($editor_html))$error_array[]="产品描述为空!";

        //产品信息
        $product_data=array();
        $product_data['category_id']=$category_id;
        $product_data['product_name']=$product_name;
        $product_data['brand_name']=$brand_name;
        $product_data['product_images']=json_encode($product_images,true);//产品图片
        $product_data['attribute_info']=json_encode($attribute_info,true);//产品属性
        $product_data['product_description']=$editor_html;
        $product_data['product_status']=1;//产品状态 1上架 2下架 3清仓 4租售产品
        $product_data['add_time']=date('Y-m-d H:i:s',time());//添加时间
        $product_data['update_time']=date('Y-m-d H:i:s',time());//更新时间

        $product_id=1;//得到产品id

        foreach ($attribute_info as $attribute){
            $attribute_name=$attribute['attribute_name'];
            //插入数据库
            $product_attribute_data=array();
            $product_attribute_data['product_id']=$product_id;
            $product_attribute_data['attribute_name']=$attribute_name;
            $product_attribute_data['add_time']=date('Y-m-d H:i:s',time());//添加时间
            $product_attribute_data['update_time']=date('Y-m-d H:i:s',time());//更新时间

            //得到属性值列表
            $attribute_value_list=$attribute['attribute_value_list'];



        }



        //$product_attribute_data['attribute_name']=$info['attribute_name'];






        $data_array=array();

        return json(['code' => 0, 'msg' => 'ok', 'data' => $data_array]);
    }
}
