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
        $menu_array=array('id'=>'1','name'=>'仪表盘','child'=>array(),'fold'=>false,);
        $menu_array['child'][]=array('id'=>'2','name'=>'分析页','href'=>"/help",'fold'=>false,);
        $menu_array['child'][]=array('id'=>'3','name'=>'监控页','href'=>"/help",'fold'=>false,);
        $menu_array['child'][]=array(
            'id'=>'4',
            'name'=>'工作台',
            'fold'=>false,
            'child'=>array(
                    ['id'=>'5','name'=>'工作台1','href'=>"/help",'fold'=>false,],
                    [
                        'id'=>'6','name'=>'工作台2','href'=>"/help",'fold'=>false,
                        'child'=>array(
                            ['id'=>'75','name'=>'工作台1','href'=>"/help",'fold'=>false,],
                            ['id'=>'76','name'=>'工作台2','href'=>"/help",'fold'=>false,]
                        )
                    ]
                )
        );
        $data_array[]=$menu_array;

        $menu_array=array('id'=>'11','name'=>'用户管理','child'=>array(),'fold'=>false,);
        $menu_array['child'][]=array('id'=>'21','name'=>'账号列表','href'=>"/help",'fold'=>false,);
        $menu_array['child'][]=array('id'=>'31','name'=>'权限管理','href'=>"/help",'fold'=>false,);
        $menu_array['child'][]=array(
            'id'=>'41',
            'name'=>'权限管理',
            'fold'=>false,
            'child'=>array(
                    ['id'=>'51','name'=>'权限类型','href'=>"/help",'fold'=>false,],
                    ['id'=>'61','name'=>'权限设置','href'=>"/help",'fold'=>false,]
                )
        );
        $data_array[]=$menu_array;


        $menu_array=array('id'=>'111','name'=>'管理员','child'=>array(),'fold'=>false,);
        $menu_array['child'][]=array('id'=>'211','name'=>'账号列表','href'=>"/help",'fold'=>false,);
        $menu_array['child'][]=array('id'=>'311','name'=>'权限管理','href'=>"/help",'fold'=>false,);
        $menu_array['child'][]=array(
            'id'=>'411',
            'name'=>'权限管理',
            'fold'=>false,
            'child'=>array(
                    ['id'=>'511','name'=>'权限类型','href'=>"/help",'fold'=>false,],
                    ['id'=>'611','name'=>'权限设置','href'=>"/help",'fold'=>false,]
                )
        );
        $data_array[]=$menu_array;

        $menu_array=array('id'=>'121','name'=>'仪表盘','child'=>array(),'fold'=>false,);
        $menu_array['child'][]=array('id'=>'122','name'=>'分析页','href'=>"/help",'fold'=>false,);
        $menu_array['child'][]=array('id'=>'123','name'=>'监控页','href'=>"/help",'fold'=>false,);
        $menu_array['child'][]=array(
            'id'=>'124',
            'name'=>'工作台',
            'fold'=>false,
            'child'=>array(
                    ['id'=>'125','name'=>'工作台1','href'=>"/help",'fold'=>false,],
                    [
                        'id'=>'126','name'=>'工作台2','href'=>"/help",'fold'=>false,
                        'child'=>array(
                            ['id'=>'1275','name'=>'工作台1','href'=>"/help",'fold'=>false,],
                            ['id'=>'1276','name'=>'工作台2','href'=>"/help",'fold'=>false,]
                        )
                    ]
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
