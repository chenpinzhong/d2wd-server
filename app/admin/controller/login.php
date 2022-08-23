<?php
/*
    菜单功能
*/

namespace app\admin\controller;

use support\Request;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use Webman\WebServer;
use think\facade\Db;
class login{
    public function index(Request $request){

        $session = $request->session();
        //如果是post请求
        if(!empty($request->post())){
            $account_name=$request->post('account_name');
            $password=$request->post('password');
            $where_array=array();
            $error_array=array();

            if(!empty($account_name)){
                $where_array[]=['account_name','=',$account_name];
            }else{
                $error_array[]="未输入账号!";
            }

            if(!empty($password)){
                $where_array[]=['password','=',password($password)];
            }else{
                $error_array[]="未输入密码!";
            }

            $admin_user_rows = Db::table('admin_user')->where($where_array)->find();
            if(!empty($admin_user_rows)){
                $session->set('admin_id', $admin_user_rows['id']);//记录用户登陆信息
                $session->set('admin_info', $admin_user_rows);//记录用户登陆信息
            }else{
                $error_array[]="账号或者密码错误!";
            }
            WebServer::echo('登陆模块 ccc',$session->get('admin_id'),date('Y-m-d H:i:s'));
            if(empty($error_array)){
                return jump(['title'=>'登陆成功','code' => 200,'msg'=>'登陆成功!','url'=>'/admin/index/index']);//页面需要登录
            }else{
                return jump(['title'=>'登陆失败','code' => 100,'msg'=>implode('<br/>',$error_array),'url'=>'/admin/login/index']);//继续登陆
            }
        }
        $data_array=array();
        $data_array['title']='用户登陆';
        return view(default_view(), $data_array);
    }

    public function quit(Request $request){
        $request->session()->flush();
        return jump(['title'=>'退出成功','code' => 200,'msg'=>'用户退出登陆成功!','url'=>'/admin/index/index']);//页面需要登录
    }
}
