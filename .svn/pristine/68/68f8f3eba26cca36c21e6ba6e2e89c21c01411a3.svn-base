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

use app\cli\controller\syn\V3Role;
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
        [$app,$controller,$action]=analysis_path($path);
        //如果访问admin模块
        if($app=='admin1' && empty($session->get('admin_id'))){
            $is_exception=false;//例外情况
            //不需要登陆的情况
            $controller_action_array=array(
                '/admin/login/*',//登陆
                '/admin/handle/*',//异常处理
            );
            foreach ($controller_action_array as $controller_action){
                [$temp_app,$temp_controller,$temp_action]=analysis_path($controller_action);
                if($app!=$temp_app)continue;//模块级别
                if($controller!=$temp_controller)continue;//控制器级别
                if($temp_action!='*'){
                    if($action!=$temp_action)continue;//功能级别
                }
                if(
                    $controller==$temp_controller #控制器相等
                    && ($temp_action=="*" ||  $action==$temp_action) #功能为* 或者相等
                ){
                    $is_exception=true;
                }
            }
            //如果不是例外情况就跳转到登录页面
            if($is_exception==false){
                return redirect('/admin/login/index');
            }
        }
        return $next($request);
    }
}
