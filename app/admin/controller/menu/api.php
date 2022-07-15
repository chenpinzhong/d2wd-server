<?php
/*
    菜单功能
*/
namespace app\admin\controller\menu;
use support\Request;
class api{
    public function index(Request $request){
        //整理菜单数据
        $data_array=array();
        $menu_array=array('name'=>'仪表盘','child'=>array());
        $menu_array['child'][]=array('name'=>'分析页');
        $menu_array['child'][]=array('name'=>'监控页');
        $menu_array['child'][]=array('name'=>'工作台');
        $data_array[]=$menu_array;
        return json(['code' => 0, 'msg' => 'ok','data'=>$data_array]);
    }
    
    public function view(Request $request){
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request){
        return json(['code' => 0, 'msg' => 'ok','type'=>'api']);
    }
}
