<?php
/**
 *  密码加密函数
 * @param string $password
 * @return mixed|string
 */

function password($password=''):string{
    return sha1(sha1($password).'d2wd'.md5($password));
}

function jump($info):string{
    $script_string='';
    $script_string.='<script>';
    if($info['code']=="200"){
        $script_string.="document.location.href = '/admin/handle/success?id=1';";
    }else{
        $script_string.="document.location.href = '/admin/handle/fail?id=1';";
    }
    $script_string.='<script>';
    return $script_string;
}