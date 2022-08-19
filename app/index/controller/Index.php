<?php
namespace app\index\controller;
use support\Request;
class Index{
    public function index(Request $request){
        return view(public_path().'/template/index.html', ['title' => 'webman']);
    }
    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }
    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok']);
    }
}
