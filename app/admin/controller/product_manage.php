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

        //查询产品是否存在
        $product_where=array();
        $product_where[]=['product_name','=',$product_name];
        $product_rows=Db::table('product')->where($product_where)->find();
        if(empty($product_rows)){
            $product_id=Db::table('product')->insert($product_data,true);
        }else{
            $product_id=$product_rows['id'];
            Db::table('product')->where($product_where)->update($product_data);
        }

        //产品属性管理
        foreach ($attribute_info as $attribute){
            $attribute_name=$attribute['attribute_name'];

            //产品属性处理
            $product_attribute_data=array();
            $product_attribute_data['product_id']=$product_id;
            $product_attribute_data['attribute_name']=$attribute_name;
            $product_attribute_data['add_time']=date('Y-m-d H:i:s',time());//添加时间
            $product_attribute_data['update_time']=date('Y-m-d H:i:s',time());//更新时间

            //更新产品属性
            $product_attribute_where=array();
            $product_attribute_where[]=['product_id','=',$product_id];
            $product_attribute_where[]=['attribute_name','=',$attribute_name];
            $product_rows=Db::table('product_attribute')->where($product_attribute_where)->find();
            if(empty($product_rows)){
                $product_attribute_id=Db::table('product_attribute')->insert($product_attribute_data,true);
            }else{
                $product_attribute_id=$product_rows['id'];
                Db::table('product_attribute')->where($product_attribute_data)->update($product_attribute_data);
            }

            //产品属性值处理
            $attribute_value_list=$attribute['attribute_value_list'];
            foreach ($attribute_value_list as $attribute_info){
                $attribute_value_data=array();
                $attribute_value_data['product_id']=$product_id;
                $attribute_value_data['attribute_id']=$product_attribute_id;
                $attribute_value_data['attribute_name']=$attribute_name;
                $attribute_value_data['attribute_value']=$attribute_info['value'];
                $attribute_value_data['attribute_image_id']=$attribute_info['image_id'];
                $attribute_value_data['add_time']=date('Y-m-d H:i:s',time());//添加时间
                $attribute_value_data['update_time']=date('Y-m-d H:i:s',time());//更新时间

                //更新产品属性值
                $attribute_value_where=array();
                $attribute_value_where[]=['product_id','=',$product_id];
                $attribute_value_where[]=['attribute_id','=',$product_attribute_id];
                $attribute_value_where[]=['attribute_value','=',$attribute_info['value']];
                $attribute_value_rows=Db::table('product_attribute_value')->where($attribute_value_where)->find();

                if(empty($attribute_value_rows)){
                    Db::table('product_attribute_value')->insert($attribute_value_data,true);
                }else{
                    Db::table('product_attribute_value')->where($attribute_value_where)->update($attribute_value_data);
                }
            }
        }

        //库存,价格,售价 这是固定结构
        foreach ($product_table_data as $product_info){
            //动态属性
            $attribute_id_array=array();//产品属性ID
            $attribute_value_id_array=array();//属性值ID
            foreach ($product_info as $attribute_name=>$product_sku_info){
                //查询产品属性
                $attribute_where=array();
                $attribute_where[]=['product_id','=',$product_id];
                $attribute_where[]=['attribute_name','=',$attribute_name];
                $attribute_rows=Db::table('product_attribute')->where($attribute_where)->find();
                if(empty($attribute_rows))continue;//如果产品属性不存在 就不需要处理
                $attribute_id_array[]=$attribute_id=$attribute_rows['id'];//记录属性id

                //查询属性值
                $attribute_value=$product_sku_info['value'];//当前的属性值
                $attribute_value_where=array();
                $attribute_value_where[]=['product_id','=',$product_id];
                $attribute_value_where[]=['attribute_id','=',$attribute_id];
                $attribute_value_where[]=['attribute_value','=',$attribute_value];
                $attribute_value_rows=Db::table('product_attribute_value')->where($attribute_value_where)->find();
                $attribute_value_id_array[]=$attribute_value_rows['id'];
            }
            //产品表数据
            $product_sku_data=array();
            $product_sku_data['product_id']=$product_id;
            $product_sku_data['attribute_ids']=$attribute_ids=implode(',',$attribute_id_array);
            $product_sku_data['attribute_value_ids']=$attribute_value_ids=implode(',',$attribute_value_id_array);
            if(!empty($product_info['库存']))$product_sku_data['stock']=$product_info['库存']['value'];
            if(!empty($product_info['价格']))$product_sku_data['price']=$product_info['价格']['value'];
            if(!empty($product_info['售价']))$product_sku_data['sale_price']=$product_info['售价']['value'];
            $product_sku_data['add_time']=date('Y-m-d H:i:s',time());
            $product_sku_data['update_time']=date('Y-m-d H:i:s',time());

            //更新产品属性
            $product_sku_where=array();
            $product_sku_where[]=['product_id','=',$product_id];
            $product_sku_where[]=['attribute_value_ids','=',$attribute_value_ids];
            $product_sku_rows=Db::table('product_sku')->where($product_sku_where)->find();
            if(empty($product_sku_rows)){
                Db::table('product_sku')->insert($product_sku_data,true);
            }else{
                Db::table('product_sku')->where($product_sku_where)->update($product_sku_data);
            }
        }
        $data_array=array();
        $data_array['product_id']=$product_id;
        return json(['code' => 200, 'msg' => '添加产品成功! product_id:'.$product_id, 'data' => $data_array]);
    }
}
