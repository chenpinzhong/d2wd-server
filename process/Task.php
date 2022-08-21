<?php
namespace process;
use Workerman\Crontab\Crontab;
class Task
{
    public function onWorkerStart()
    {
        // 每分钟的第一秒执行
        new Crontab('1 * * * * *', function(){
            echo '定时任务触发!'.PHP_EOL;
            file_put_contents('D:/1.txt',date('Y-m-d H:i:s')."\r\n",FILE_APPEND);
        });

    }
}