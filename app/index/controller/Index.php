<?php
namespace app\index\controller;
use support\Request;
use think\facade\Db;
class Index{
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
    public function get_home_data(Request $request){
        //海报
        $poster_where=[['type','=','home']];
        $poster_list=Db::table('poster')->where($poster_where)->select()->toArray();
        //获取产品列表
        $product_where=[['product_status','=',1]];//只显示上架的产品
        $product_list=Db::table('product')->where($product_where)->limit(12)->select();

        $product_data=array();
        foreach ($product_list as $index=>$product_info){
            $product_id=$product_info['id'];//得到产品ID
            //查询上传的主图ID信息
            $product_images=json_decode($product_info['product_images'],true);
            $image_id=$product_images[0]['file_id'];
            //查询产品图
            $product_image_where=[['id','=',$image_id]];
            $product_image_rows=Db::table('product_image')->where($product_image_where)->find();
            $product_info['product_image']=$product_image_rows['web_path_400'];
            //查询产品价格
            $product_sku_rows=Db::table('product_sku')->where('product_id',$product_id)->order("sale_price asc")->find();

            $product_info['price']=$product_sku_rows['price'];//价格
            $product_info['sale_price']=$product_sku_rows['sale_price'];//销售价格
            $product_info['discount']=0;
            if($product_info['price']!=0 && $product_info['sale_price']!=0){
                $product_info['discount']=(round($product_info['sale_price']/$product_info['price'],2)*100)."%";
            }

            $product_info['new']= time()-strtotime($product_sku_rows['add_time'])<3600*24*30;
            unset($product_info['product_images']);//减少网络传输
            unset($product_info['attribute_info']);//减少网络传输
            $product_data[]=$product_info;
        }

        $page_data=array();
        $page_data['home_poster']=$poster_list;//首页的海报
        $page_data['product_list']=$product_data;//首页的海报

        return json(['code' => 200, 'msg' => 'ok','data'=>$page_data]);
    }
    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok']);
    }
}
