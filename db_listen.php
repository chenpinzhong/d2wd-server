<?php

use support\Db;
use support\ServiceProvider;

class db_listen extends ServiceProvider{
    /**
     * 注册所有应用的服务
     *
     * @return void
     */
    public function register()
    {
    }

    public function index(){
        $count = Db::table('admin_user')->where('account_name', 'chenpinzhong')->count();
        return json(['code' => 0, 'msg' => 'ok','data'=>$count]);
    }
    public function boot()
    {
        DB::listen(function ($query) {
            echo $query->sql.PHP_EOL;
            // $query->bindings
            // $query->time
        });
    }
}
