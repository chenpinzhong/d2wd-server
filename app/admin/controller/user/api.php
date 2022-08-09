<?php
/*
    菜单功能
*/
namespace app\admin\controller\user;
use support\Request;
use support\Db;
class api{
    public function index(Request $request){
        $list = Db::table('admin_user')
                 ->paginate($request->input('page_size',20), '*', 'page', $request->input('page',1));
        return json(['code' => 0, 'msg' => 'ok','data'=>$list]);
    }

    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok','type'=>'api']);
    }
}
