<?php
/*
    菜单功能
*/
namespace app\admin\controller\menu;
use support\Request;
class index{
    public function index(Request $request){
        $data_array=array();
        return json(['code' => 0, 'msg' => 'ok','data'=>$data_array]);
    }
    
    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok','type'=>'api']);
    }
}
