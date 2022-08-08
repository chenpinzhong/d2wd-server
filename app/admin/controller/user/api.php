<?php
/*
    菜单功能
*/
namespace app\admin\controller\user;
use support\Request;
use support\Db;
class api{
    public function index(Request $request){
        $count = Db::table('admin_user')->where('account_name', 'chenpinzhong')->count();
        return json(['code' => 0, 'msg' => 'ok','data'=>$count]);
    }

    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok','type'=>'api']);
    }
}
