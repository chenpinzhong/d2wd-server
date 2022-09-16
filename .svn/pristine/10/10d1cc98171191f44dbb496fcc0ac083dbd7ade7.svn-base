<?php
/*
    菜单功能
*/
namespace app\admin\controller\admin_user;
use support\Request;
use think\facade\Db;
class api{
    //管理员用户列表接口
    public function index(Request $request){
        $where=array();
        if(!empty($request->input('account_name'))){
            $where[]=['account_name','LIKE',"%".$request->input('account_name')."%"];
        }
        $page_size=$request->input('page_size',10);
        $list=Db::table('admin_user')->where($where)->paginate($page_size);
        return json(['code' => 200, 'msg' => 'ok','data'=>$list]);
    }

    //获取用户信息
    public function get(Request $request){
        $admin_id=$request->session()->get('admin_id','');
        if(!empty($admin_id)){
            $admin_user_info=Db::table('admin_user')->where([['id','=',$admin_id]])->find();
            if(!empty($admin_user_info))unset($admin_user_info['password']);
            return json(['code' => 200, 'msg' => 'ok','data'=>$admin_user_info]);
        }
        return json(['code' => 100, 'msg' => '用户未登陆!']);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok','type'=>'api']);
    }
}
