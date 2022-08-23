<?php
/**
 * This file is part of webman.
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the MIT-LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @author    walkor<walkor@workerman.net>
 * @copyright walkor<walkor@workerman.net>
 * @link      http://www.workerman.net/
 * @license   http://www.opensource.org/licenses/mit-license.php MIT License
 */

namespace app\admin\middleware;

use Webman\MiddlewareInterface;
use Webman\Http\Response;
use Webman\Http\Request;
use support\Log;
use Webman\WebServer;

/**
 * Class StaticFile
 * @package app\middleware
 */
class AdminCheck implements MiddlewareInterface
{
    public function process(Request $request, callable $next): Response
    {
        $path=$request->path();
        $session = $request->session();
        //如果是后台页面 后台访问强制要求登陆
        if(preg_match("/\/admin.*/i", $path) && empty($session->get('admin_id'))){
            $is_exception=false;//例外情况
            //不需要登陆的情况
            $exception_array=array(
                '/admin/login/',//登陆
                '/admin/handle/',//异常处理
            );
            foreach ($exception_array as $exception){
                $temp_exception=str_replace('/','\/',$exception);
                if(preg_match("/{$temp_exception}.*/i", $path)){
                    $is_exception=true;
                }
            }
            if($is_exception==false){
                return redirect('/admin/login/index');
            }
        }
        $response = $next($request);
        return $response;
    }
}
