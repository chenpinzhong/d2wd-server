<?php
namespace app\shop\controller;
use support\Request;
use think\facade\Db;
class product{
    public function index(Request $request){
        $session = $request->session();
        //普通用户信息存在
        $user=$session->get('user');
        if(!empty($user))$data_array['user']=$user;//网站title
        //如果管理员信息存在
        $admin_user=$session->get('admin_user');
        if(!empty($admin_user))$data_array['admin_user']=$admin_user;//网站title
        $data_array=array();
        $data_array['title']='d2wd';//网站title
        return view(default_view(), $data_array);
    }
    //获取首页信息
    public function get_product(Request $request){
        $error_array=array();
        $id=$request->input('id');
        $product_rows=Db::table('product')->where('id',$id)->find();
        if(empty($product_rows))$error_array[]='产品信息不存在!';

        //判断是否存在错误
        if(empty($error_array)){
            $product_id=$product_rows['id'];
            //查询属性名称
            $product_attribute_list=Db::table('product_attribute')->where('product_id',$product_id)->select()->toArray();
            $attribute_name_map=array();
            foreach ($product_attribute_list as $product_attribute){
                $attribute_name_map[$product_attribute['id']]=$product_attribute['attribute_name'];
            }
            $product_images=json_decode($product_rows['product_images'],true);
            $product_image_map=array();
            foreach ($product_images as $product_image){
                $product_image_map[$product_image['file_id']]=$product_image;
            }

            //属性集
            $attribute_set=array();
            foreach ($product_attribute_list as $product_attribute){
                $attribute_value_where=array();
                $attribute_value_where['product_id']=$product_id;
                $attribute_value_where['attribute_id']=$product_attribute['id'];
                $attribute_value_list=Db::table('product_attribute_value')->where($attribute_value_where)->select()->toArray();
                /*
                foreach ($attribute_value_list as &$attribute_value){
                    $attribute_value['image_src']='';
                    if(!empty($attribute_value['attribute_image_id'])){
                        $product_image_rows=Db::table('product_image')->where('id',$attribute_value['attribute_image_id'])->find();
                        $attribute_value['image_src']=$product_image_rows['web_path_400'];
                    }
                }
                */
                $attribute_set[$product_attribute['id']]=$attribute_value_list;
            }

            //查询所有子产品
            $product_sku_where=array();
            $product_sku_where['product_id']=$product_id;
            $product_sku_list=Db::table('product_sku')->where($product_sku_where)->select()->toArray();
            foreach ($product_sku_list as &$product_sku){
                $sku_id=$product_sku['id'];
                //查询sku的属性详情
                $product_sku_details_list=Db::table('product_sku_details')->where('sku_id',$sku_id)->select()->toArray();
                $product_sku['sku_details']=$product_sku_details_list;
            }

            $product_rows['product_image_map']=$product_image_map;//产品图
            $product_rows['attribute_name_map']=$attribute_name_map;//属性列表
            $product_rows['attribute_set']=$attribute_set;//设置属性集合
            $product_rows['product_sku_list']=$product_sku_list;//产品sku列表
            unset($product_rows['product_images']);//不需要给前端
            unset($product_rows['attribute_info']);//不需要给前端
        }

        if(empty($error_array)){
            return json(['code' => 200, 'msg' => 'ok','data'=>$product_rows]);
        }else{
            return json(['code' => 100, 'msg' => implode("\r\n",$error_array)]);
        }
    }
    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok']);
    }
}
