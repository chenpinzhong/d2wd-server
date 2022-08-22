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

namespace Webman;

use Closure;
use FastRoute\Dispatcher;
use Monolog\Logger;
use Psr\Container\ContainerInterface;
use Throwable;
use Webman\Exception\ExceptionHandler;
use Webman\Exception\ExceptionHandlerInterface;
use Webman\Http\Request;
use Webman\Http\Response;
use Webman\Route\Route as RouteObject;
use Workerman\Connection\TcpConnection;
use Workerman\Protocols\Http;
use Workerman\Worker;

/**
 * Class App
 * @package Webman
 */
class WebServer extends \Webman\App{
    /**
     * App constructor.
     *
     * @param string $request_class
     * @param Logger $logger
     * @param string $app_path
     * @param string $public_path
     */
    public function __construct(string $request_class, Logger $logger, string $app_path, string $public_path)
    {
        parent::__construct($request_class,$logger, $app_path,$public_path);
    }
    /**
     * 加载控制器
     * @param Request $request
     * @return string
     */
    public function request_path(Request $request): string
    {
        //GET //XXX//XX/XX?id=cc
        $first_line = \strstr($request->rawBuffer(), "\r\n", true);
        $tmp = \explode(' ', $first_line, 3);//tmp 数据 去掉了GET  //XXX//XX/XX?id=cc
        $temp_array=explode('?',$tmp[1],2);
        $tmp[1]= implode('/',array_filter(\explode('/',$temp_array[0])));
        //如果请求后面存在参数
        if(!empty($temp_array[1]))$tmp[1];
        return $tmp[1];
    }
    
    /**
     * 请求处理
     * @param TcpConnection $connection
     * @param Request $request
     * @return null
     */
    public function onMessage($connection, $request)
    {
        try {
            parent::$_request=static::$_request = $request;
            parent::$_connection=static::$_connection = $connection;
            //$path = $request->path();
            $path=$this->request_path($request);//优化路径问题
            $key = $request->method() . $path;
            if (isset(static::$_callbacks[$key])) {
                [$callback, $request->plugin, $request->app, $request->controller, $request->action, $request->route] = static::$_callbacks[$key];
                return static::send($connection, $callback($request), $request);
            }
            //不安全的url
            //if(static::unsafeUri($connection, $path, $request))return null;
            if(static::findFile($connection, $path, $key, $request))return null;
            if(static::findRoute($connection, $path, $key, $request))return null;
            
            $controller_and_action = static::parse_controller_action($path);
            $plugin = $controller_and_action['plugin'] ?? '';
            //如果无法请求就重定向到index/index/index 方法
            if (!$controller_and_action) $controller_and_action = static::parse_controller_action('/index/index/index');

            if (!$controller_and_action || Route::hasDisableDefaultRoute($plugin)) {
                $callback = static::getFallback();
                $request->app = $request->controller = $request->action = '';
                static::send($connection, $callback($request), $request);
                return null;
            }

            $app = $controller_and_action['app'];
            $controller = $controller_and_action['controller'];
            $action = $controller_and_action['action'];
            $callback = static::getCallback($plugin, $app, [$controller, $action]);
            static::collectCallbacks($key, [$callback, $plugin, $app, $controller, $action, null]);
            [$callback, $request->plugin, $request->app, $request->controller, $request->action, $request->route] = static::$_callbacks[$key];
            static::send($connection, $callback($request), $request);
        } catch (Throwable $e) {
            static::send($connection, static::exceptionResponse($e, $request), $request);
        }
        return null;
    }
    /**
     * 解析控制器
     * @param string $path
     * @return array|false
     * @throws \Psr\Container\ContainerExceptionInterface
     * @throws \Psr\Container\NotFoundExceptionInterface
     * @throws \ReflectionException
     */
    protected static function parse_controller_action(string $path){
        $path_explode = \explode('/', trim($path, '/'));
        $is_plugin = isset($path_explode[1]) && $path_explode[0] === 'app';
        $config_prefix = $is_plugin ? "plugin.{$path_explode[1]}." : '';
        $path_prefix = $is_plugin ? "/app/{$path_explode[1]}" : '';
        $class_prefix = $is_plugin ? "plugin\\{$path_explode[1]}" : '';
        $suffix = Config::get("{$config_prefix}app.controller_suffix", '');
        $relative_path = \trim(substr($path, strlen($path_prefix)), '/');
        $path_explode = $relative_path ? \explode('/', $relative_path) : [];

        $action = 'index';
        if ($controller_action = static::guessControllerAction($path_explode, $action, $suffix, $class_prefix)) {
            return $controller_action;
        }
        $action = \end($path_explode);
        unset($path_explode[count($path_explode) - 1]);
        return static::guessControllerAction($path_explode, $action, $suffix, $class_prefix);
    }
    /**
     * 猜测控制器动作
     * @param $path_explode
     * @param $action
     * @param $suffix
     * @return array|false
     * @throws \ReflectionException
     */
    protected static function guessControllerAction($path_explode, $action, $suffix, $class_prefix)
    {   
        /*
        $map[] = "$class_prefix\\app\\controller\\" . \implode('\\', $path_explode);
        foreach ($path_explode as $index => $section) {
            $tmp = $path_explode;
            $section = str_replace('.', '\\', $section);
            \array_splice($tmp, $index, 1, [$section, 'controller']);
            $map[] = "$class_prefix\\" . \implode('\\', \array_merge(['app'], $tmp));
        }
        $last_index = \count($map) - 1;
        $map[$last_index] = \trim($map[$last_index], '\\') . '\\index';
        
        foreach ($map as $controller_class) {
            $controller_class .= $suffix;
            if ($controller_action = static::getControllerAction($controller_class, $action)) {
                return $controller_action;
            }
        }
        */
        //改进 可用用点号分隔控制器
        $app = !empty($path_explode[0]) ? $path_explode[0] : 'index';
        $controller = $path_explode[1] ?? 'index';
        $controller = str_replace('.', '\\', $controller);
        $action = $path_explode[2] ?? 'index';
        $controller_class = "app\\$app\\controller\\$controller$suffix";
        if ($controller_action = static::getControllerAction($controller_class, $action)) {
            return $controller_action;
        }
        return false;
    }
}
