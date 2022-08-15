<?php
/*
    菜单功能
*/
namespace app\admin\controller\user;
use support\Request;
use think\facade\Db;
class api{
    public function index(Request $request){
        $list=array();

        $list=Db::table('admin_user')->where('id',2)->select();
        /*
        $where=array();
        if(!empty($request->input('account_name'))){
            $where[]=['account_name','LIKE',"%".$request->input('account_name')."%"];
        }
        $columns='*';
        $page_name='page';
        $page_size=$request->input('page_size',20);
        $page=$request->input($page_name,'page');
        $list = Db::table('admin_user')->where($where)->paginate($page_size, $columns, $page_name,$page);
        */
        return json(['code' => 0, 'msg' => 'ok','data'=>$list]);
    }

    public function test(Request $request){
        return '123';
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok','type'=>'api']);
    }
}
