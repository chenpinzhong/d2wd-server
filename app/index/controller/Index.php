<?php
namespace app\index\controller;
use support\Request;
class Index{
    public function index(Request $request){
        $session = $request->session();
        $data_array=array();
        $data_array['title']='d2wd';//网站title
        //普通用户信息存在
        $user=$session->get('user');
        if(!empty($user))$data_array['user']=$user;//网站title
        //如果管理员信息存在
        $admin_user=$session->get('admin_user');
        if(!empty($admin_user))$data_array['admin_user']=$admin_user;//网站title

        return view(default_view(), $data_array);
    }
    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok']);
    }
}
