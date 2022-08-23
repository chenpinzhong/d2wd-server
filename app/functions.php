<?php

/**
 * 加载控制器
 * @param  $request
 * @return string
 */
function request_path($request): string
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
 *  密码加密函数
 * @param string $password
 * @return mixed|string
 */
function password($password=''):string{
    return sha1(sha1($password).'d2wd'.md5($password));
}
/**
 *  页面跳转函数
 * @param array jump
 * @return mixed|string
 */
function jump($info):string{
    if(empty($info['url']))$info['url']='';
    $script_string='';
    $script_string.='<script>';
    if($info['code']=="200"){
        if(empty($info['title']))$info['title']='成功';
        if(empty($info['msg']))$info['msg']='处理成功!';
        $script_string.="window.location.href = '/admin/handle/success?title={$info['title']}&msg={$info['msg']}&url={$info['url']}';";
    }else{
        if(empty($info['title']))$info['title']='失败';
        if(empty($info['msg']))$info['msg']='处理失败!';
        $script_string.="window.location.href = '/admin/handle/fail?title={$info['title']}&msg={$info['msg']}&url={$info['url']}';";
    }
    $script_string.='</script>';
    return $script_string;
}
/**
 *  默认视图
 * @return mixed|string
 */
function default_view():string{
    return public_path().'/index.html';
}