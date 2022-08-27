<?php
/*
    菜单功能
*/

namespace app\admin\controller;

use support\Request;

class menu
{
    public function index(Request $request)
    {
        //整理菜单数据
        $data_array = array();
        //管理用户信息
        $menu_array = array('id' => '1000', 'name' => '用户模块', 'child' => array(), 'fold' => false,);
        //管理员列表 管理系统操作 目前不划分权限
        $menu_array['child'][] = array(
            'id' => '1003',
            'name' => '管理员',
            'fold' => false,
            'child' => array(
                ['id' => '1004', 'name' => '管理员列表', 'href' => "/admin/admin_user/index", 'fold' => false,],
            )
        );
        //租售系统
        $data_array[] = $menu_array;
        $menu_array = array('id' => '11005', 'name' => '产品模块', 'child' => array(), 'fold' => false,);
        $menu_array['child'][] = array(
            'id' => '11006',
            'name' => '产品管理',
            'fold' => false,
            'child' => array(
                ['id' => '11007', 'name' => '产品类目', 'href' => "/admin/product_manage/category", 'fold' => true,],
                ['id' => '11008', 'name' => '产品列表', 'href' => "/admin/product_manage/product", 'fold' => true,],
            )
        );
        //租售系统
        $data_array[] = $menu_array;
        $menu_array = array('id' => '1005', 'name' => '租售系统', 'child' => array(), 'fold' => false,);
        $menu_array['child'][] = array(
            'id' => '1006',
            'name' => '产品管理',
            'fold' => false,
            'child' => array(
                ['id' => '1007', 'name' => '产品列表', 'href' => "/help", 'fold' => true,],
                ['id' => '1008', 'name' => '新增产品', 'href' => "/help", 'fold' => true,],
            )
        );
        $menu_array['child'][] = array('id' => '1009', 'name' => '租借列表', 'href' => "/help", 'fold' => true,);
        $menu_array['child'][] = array('id' => '1010', 'name' => '出售列表', 'href' => "/help", 'fold' => true,);

        $data_array[] = $menu_array;
        return json(['code' => 0, 'msg' => 'ok', 'data' => $data_array]);
    }


    public function view(Request $request)
    {
        return view('index/view', ['name' => 'webman']);
    }

    public function json(Request $request)
    {
        return json(['code' => 0, 'msg' => 'ok', 'type' => 'api']);
    }
}
