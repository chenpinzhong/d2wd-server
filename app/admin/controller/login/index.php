<?php
/*
    菜单功能
*/

namespace app\admin\controller\menu;

use support\Request;

class index{
    public function index(Request $request){
        $data_array=array();
        $data_array['title']='用户登陆';
        return view(default_view(), $data_array);
    }
}
