<?php

use Webman\App;
use Workerman\Worker;
use Workerman\Connection\TcpConnection;
use Webman\Http\Request;
use Webman\Http\Response;
use Webman\Route\Route as RouteObject;
use Webman\Route;
use Webman\Exception\ExceptionHandlerInterface;
use Webman\Exception\ExceptionHandler;
use Webman\Config;
use FastRoute\Dispatcher;
use Psr\Container\ContainerInterface;
use Monolog\Logger;

class Server extends App
{
    public function __construct(Worker $worker, $container, $logger, $app_path, $public_path)
    {
        parent::__construct($worker, $container, $logger, $app_path, $public_path);
    }

    /**
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
     * @param TcpConnection $connection
     * @param Request $request
     * @return null
     */
    public function onMessage(TcpConnection $connection, $request)
    {
        try {
            static::$_request = $request;
            static::$_connection = $connection;
            $path = $request->path();
            $path=$this->request_path($request); //改进方法
            $key = $request->method() . $path;
            //如果处理过这个请求 就执行使用 历史处理方法处理
            if (isset(static::$_callbacks[$key])) {
                [$callback, $request->app, $request->controller, $request->action, $request->route] = static::$_callbacks[$key];
                static::send($connection, $callback($request), $request);
                return null;
            }
            //不安全的url访问 ../
            if (static::unsafeUri($connection, $path, $request)) {
                return null;
            }

            //直接访问文件
            if (static::findFile($connection, $path, $key, $request)) {
                return null;
            }

            if (static::findRoute($connection, $path, $key, $request)) {
                return null;
            }

            $controller_and_action = static::parse_controller_action($path);
            if (!$controller_and_action || Route::hasDisableDefaultRoute()) {
                $request->app = $request->controller = $request->action = '';
                $app=$controller=$action='index';
                $callback = static::getCallback($app, [$controller_and_action['instance'], $action]);
                static::send($connection, $callback($request), $request);
                return null;
            }
            $app = $controller_and_action['app'];
            $controller = $controller_and_action['controller'];
            $action = $controller_and_action['action'];
            $callback = static::getCallback($app, [$controller_and_action['instance'], $action]);
            static::$_callbacks[$key] = [$callback, $app, $controller, $action, null];
            [$callback, $request->app, $request->controller, $request->action, $request->route] = static::$_callbacks[$key];
            static::send($connection, $callback($request), $request);
        } catch (\Throwable $e) {
            static::send($connection, static::exceptionResponse($e, $request), $request);
        }
        return null;
    }
    /**
     * @param $path
     * @return array|bool
     */
    protected static function parse_controller_action($path)
    {
        $suffix = config('app.controller_suffix', '');
        $path_explode = explode('/', trim($path, '/'));
        $app = !empty($path_explode[0]) ? $path_explode[0] : 'index';
        $controller = $path_explode[1] ?? 'index';
        $controller = str_replace('.', '\\', $controller);

        $action = $path_explode[2] ?? 'index';
        if (isset($path_explode[2])) {
            $controller_class = "app\\$app\\controller\\$controller$suffix";
            if ($controller_action = static::get_controller_action($controller_class, $action)) {
                return $controller_action;
            }
        }

        $controller = $app;
        $action = $path_explode[1] ?? 'index';

        $controller_class = "app\\controller\\$controller$suffix";
        if ($controller_action = static::get_controller_action($controller_class, $action)) {
            return $controller_action;
        }

        $controller = $path_explode[1] ?? 'index';
        $action = $path_explode[2] ?? 'index';
        $controller_class = "app\\$app\\controller\\$controller$suffix";
        if ($controller_action = static::get_controller_action($controller_class, $action)) {
            return $controller_action;
        }
        $app=$controller=$action='index';
        $controller_class = "app\\$app\\controller\\$controller$suffix";
        if ($controller_action = static::get_controller_action($controller_class, $action)) {
            return $controller_action;
        }

        return false;
    }
    /**
     * @param $controller_class
     * @param $action
     * @return array|false
     * @throws \Psr\Container\ContainerExceptionInterface
     * @throws \Psr\Container\NotFoundExceptionInterface
     * @throws \ReflectionException
     */
    protected static function get_controller_action($controller_class, $action)
    {
        if (
            static::load_controller($controller_class)
            && ($controller_class = (new \ReflectionClass($controller_class))->name)
            && \is_callable([$instance = static::$_container->get($controller_class), $action])
        ) {
            return [
                'app'        => static::getAppByController($controller_class),
                'controller' => $controller_class,
                'action'     => static::getRealMethod($controller_class, $action),
                'instance'   => $instance,
            ];
        }
        return false;
    }

    /**
     * @param $controller_class
     * @return bool
     */
    protected static function load_controller($controller_class)
    {

        static $controller_files = [];
        if (empty($controller_files)) {
            $app_path = static::$_appPath;
            $dir_iterator = new \RecursiveDirectoryIterator($app_path, \FilesystemIterator::SKIP_DOTS | \FilesystemIterator::FOLLOW_SYMLINKS);
            $iterator = new \RecursiveIteratorIterator($dir_iterator);
            $app_base_path_length = \strrpos($app_path, DIRECTORY_SEPARATOR) + 1;
            foreach ($iterator as $spl_file) {
                $file = (string)$spl_file;
                if (\is_dir($file) || false === \strpos(strtolower($file), DIRECTORY_SEPARATOR . 'controller' . DIRECTORY_SEPARATOR) || $spl_file->getExtension() !== 'php') {
                    continue;
                }
                $controller_files[$file] = \str_replace(DIRECTORY_SEPARATOR, "\\", \strtolower(\substr(\substr($file, $app_base_path_length), 0, -4)));
            }
        }

        if (\class_exists($controller_class)) {
            return true;
        }

        $controller_class = \strtolower($controller_class);
        if ($controller_class[0] === "\\") {
            $controller_class = \substr($controller_class, 1);
        }
        foreach ($controller_files as $real_path => $class_name) {
            if ($class_name === $controller_class) {
                require_once $real_path;
                if (\class_exists($controller_class, false)) {
                    return true;
                }
            }
        }
        return false;
    }
}
