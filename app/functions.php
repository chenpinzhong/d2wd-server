<?php
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