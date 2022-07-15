<?php
namespace app\admin\controller;
use support\Request;
class Index{
    public function index(Request $request){
        return response('api webman1');
    }
    public function view(Request $request){
        return response('api webman2');
        //return view('index/view', ['name' => 'webman']);
    }
    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok','type'=>'api']);
    }
}
