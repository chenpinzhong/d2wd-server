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
        $menu_array=array('id'=>'1','name'=>'仪表盘','child'=>array());
        $menu_array['child'][]=array('id'=>'2','name'=>'分析页','href'=>"/help");
        $menu_array['child'][]=array('id'=>'3','name'=>'监控页','href'=>"/help");
        $menu_array['child'][]=array(
            'id'=>'4',
            'name'=>'工作台',
            'child'=>array(
                    ['id'=>'5','name'=>'工作台1','href'=>"/help"],
                    ['id'=>'6','name'=>'工作台2','href'=>"/help"]
                )
        );
        $data_array[]=$menu_array;

        $menu_array=array('id'=>'11','name'=>'用户管理','child'=>array());
        $menu_array['child'][]=array('id'=>'21','name'=>'账号列表','href'=>"/help");
        $menu_array['child'][]=array('id'=>'31','name'=>'权限管理','href'=>"/help");
        $menu_array['child'][]=array(
            'id'=>'41',
            'name'=>'权限管理',
            'child'=>array(
                    ['id'=>'51','name'=>'权限类型','href'=>"/help"],
                    ['id'=>'61','name'=>'权限设置','href'=>"/help"]
                )
        );
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
