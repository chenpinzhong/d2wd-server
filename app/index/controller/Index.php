<?php
namespace app\index\controller;
use support\Request;
class Index{
    public function index(Request $request){
        $session = $request->session();
        $path=$request->path();
        $is_login=false;//是否登陆 默认未登陆
        if(!empty($session->get('id')))$is_login=true;

        //如果是后台页面 后台访问强制要求登陆
        if(preg_match("/\/admin.*/i", $path) && $is_login==false){
            $is_exception=false;//例外情况
            //不需要登陆的情况
            $exception_array=array(
                '/admin/login/',//登陆
                '/admin/handle/',//异常处理
            );
            foreach ($exception_array as $exception){
                $temp_exception=str_replace('/','\/',$exception);
                if(preg_match("/{$temp_exception}.*/i", $path)){
                    $is_exception=true;
                }
            }
            if($is_exception==false)return jump(['title'=>'未登陆','code' => 100,'msg'=>'用户未登陆','url'=>'/admin/login/index']);//页面需要登录
        }

        $data_array=array();
        $data_array['title']='d2wd';//网站title
        return view(default_view(), $data_array);
    }
    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }
    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok']);
    }
}
