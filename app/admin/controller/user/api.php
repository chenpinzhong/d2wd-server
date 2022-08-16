<?php
/*
    菜单功能
*/
namespace app\admin\controller\user;
use support\Request;
use think\facade\Db;
class api{
    //管理员用户列表接口
    public function index(Request $request){
        $list=array();
        $where=array();
        if(!empty($request->input('account_name'))){
            $where[]=['account_name','LIKE',"%".$request->input('account_name')."%"];
        }
        $page_size=$request->input('page_size',10);
        $list=Db::table('admin_user')->where($where)->paginate($page_size);
        return json(['code' => 0, 'msg' => 'ok','data'=>$list]);
    }

    public function add(Request $request){
        $error_array=array();//初始化错误
        $account_name=$request->input('account_name','');
        $phone=$request->input('phone','');
        $user_name=$request->input('user_name','');
        $real_name=$request->input('real_name','');
        $password=$request->input('password','');
        if(empty($account_name))$error_array[]='账号名称不能为空!';
        if(empty($phone))$error_array[]='手机号不能为空!';
        if(empty($user_name))$error_array[]='用户名称不能为空!';
        if(empty($real_name))$error_array[]='真实名称不能为空!';
        if(empty($password))$error_array[]='密码不能为空!';

        //检查账号是否存在
        if(empty($error_array)){
            $where[]=['account_name','=',$account_name];
            $admin_user_rows=Db::table('admin_user')->where($where)->find();
            if(!empty($admin_user_rows))$error_array[]='用户已经存在!';
        }
        //没有错误就插入数据
        if(empty($error_array)){
            $data_array=array();
            $data_array['account_name']=$account_name;
            $data_array['phone']=$phone;
            $data_array['user_name']=$user_name;
            $data_array['real_name']=$real_name;
            $data_array['password']=$password;
            Db::table('admin_user')->insert($data_array);
        }
        if(empty($error_array)){
            return json(['code' => 200, 'msg' => 'ok']);
        }
        return json(['code' => 100, 'msg' => implode(',',$error_array)]);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok','type'=>'api']);
    }
}
