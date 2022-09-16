<?php
/*
    菜单功能
*/
namespace app\admin\controller;
use support\Request;
use think\facade\Db;
class admin_user{
    //管理员用户列表接口
    public function index(Request $request){
        if($request->method()=='POST'){
            if($request->post('action_type')=='add')return $this->add($request);
            if($request->post('action_type')=='edit')return $this->edit($request);
            return "未知的请求:".$request->post('action_type');
        }
        $data_array=array();
        $data_array['title']='d2wd';//网站title
        return view(default_view(), $data_array);
    }

    public function get_admin_info(Request $request){
        $where=array();
        $session = $request->session();
        $admin_id=$session->get('admin_id');
        if(empty($admin_id)){
            return json(['code' => 0, 'msg' => '未登陆!','data'=>[]]);
        }
        $where[]=['id','=',$admin_id];
        $user_rows=Db::table('admin_user')->where($where)->find();
        return json(['code' => 200, 'msg' => 'ok','data'=>$user_rows]);
    }


    public function get(Request $request){
        $where=array();
        if(!empty($request->input('account_name'))){
            $where[]=['account_name','LIKE',"%".$request->input('account_name')."%"];
        }
        $page_size=$request->input('page_size',10);
        $list=Db::table('admin_user')->where($where)->paginate($page_size);
        return json(['code' => 200, 'msg' => 'ok','data'=>$list]);
    }

    public function add(Request $request): string
    {
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
            $data_array['password']=password($password);
            Db::table('admin_user')->insert($data_array);
        }

        if(empty($error_array)){
            return jump(['title'=>'管理员注册','code' => 200,'msg'=>'注册成功','url'=>'/admin/admin_user/index']);//注册成功
        }else{
            $error_msg=implode(',',$error_array);//错误信息
            return jump(['title'=>'管理员注册','code' => 100,'msg'=>$error_msg,'url'=>'/admin/admin_user/index']);//注册失败
        }
    }
    public function edit(Request $request){
        $error_array=array();//初始化错误
        $id=$request->input('id','');
        $account_name=$request->input('account_name','');
        $phone=$request->input('phone','');
        $user_name=$request->input('user_name','');
        $real_name=$request->input('real_name','');
        $password=$request->input('password','');
        if(empty($account_name))$error_array[]='账号名称不能为空!';
        if(empty($phone))$error_array[]='手机号不能为空!';
        if(empty($user_name))$error_array[]='用户名称不能为空!';
        if(empty($real_name))$error_array[]='真实名称不能为空!';

        //检查账号是否存在
        if(empty($error_array)){
            $where[]=['id','=',$id];
            $admin_user_rows=Db::table('admin_user')->where($where)->find();
            if(empty($admin_user_rows))$error_array[]="用户信息不存在 ID:".$id;
        }
        //如果错误就更新数据
        if(empty($error_array)){
            $data_array=array();
            $data_array['account_name']=$account_name;
            $data_array['phone']=$phone;
            $data_array['user_name']=$user_name;
            $data_array['real_name']=$real_name;

            //空密码就是不修改密码
            if(!empty($password))$data_array['password']=password($password);

            $where[]=['id','=',$id];
            Db::table('admin_user')->where($where)->update($data_array);//更新数据
        }

        if(empty($error_array)){
            return jump(['title'=>'编辑管理员信息','code' => 200,'msg'=>'编辑成功','url'=>'/admin/admin_user/index']);//注册成功
        }else{
            $error_msg=implode(',',$error_array);//错误信息
            return jump(['title'=>'编辑管理员信息','code' => 100,'msg'=>$error_msg,'url'=>'/admin/admin_user/index']);//注册失败
        }
    }

}
