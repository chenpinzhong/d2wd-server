<?php
/*
    上传图片功能
*/

namespace app\admin\controller;
use think\facade\Db;
use support\Request;

class upload
{
    //主要处理上传图片
    public function image(Request $request){
        $data_array=array();
        $file_path=upload_path();
        $temp_error_array=array();//记录错误信息
        $web_path=str_replace(public_path(),'',$file_path);
        $list=array();
        foreach ($request->file() as $key => $spl_file) {
            /*
            var_export($spl_file->isValid()); // 文件是否有效，例如ture|false
            var_export($spl_file->getUploadExtension()); // 上传文件后缀名，例如'jpg'
            var_export($spl_file->getUploadMineType()); // 上传文件mine类型，例如 'image/jpeg'
            var_export($spl_file->getUploadErrorCode()); // 获取上传错误码，例如 UPLOAD_ERR_NO_TMP_DIR UPLOAD_ERR_NO_FILE UPLOAD_ERR_CANT_WRITE
            var_export($spl_file->getUploadName()); // 上传文件名，例如 'my-test.jpg'
            var_export($spl_file->getSize()); // 获得文件大小，例如 13364，单位字节
            var_export($spl_file->getPath()); // 获得上传的目录，例如 '/tmp'
            var_export($spl_file->getRealPath()); // 获得临时文件路径，例如 `/tmp/workerman.upload.SRliMu`
            */
            //20MB的文件 拒绝上传
            $max_size=20*1024*1024;
            if($spl_file->getSize()>=$max_size){
                $size_mb=$spl_file->getSize()/1024/1024;
                $temp_error_array[]=$spl_file->getUploadName().'文件'.$size_mb."mb 过大!";
                continue;
            }
            $file_content=file_get_contents($spl_file->getRealPath());
            $file_name=$spl_file->getUploadName().'_'.md5($file_content).'.'.$spl_file->getUploadExtension();

            $list[]=array(
                'web_path'=>$web_path.'\\'.$file_name,
                'getUploadMineType'=>$spl_file->getUploadMineType(),
                'getSize'=>$spl_file->getSize(),
                'getUploadExtension'=>$spl_file->getUploadExtension(),
            );
            file_put_contents($file_path."\\".$file_name,$file_content);
        }
        return json(['code' => 200, 'msg' => 'ok','data'=>$list]);
    }
    //主要处理上传图片
    public function attribute_image(Request $request){
        $session = $request->session();
        $admin_id=$session->get('admin_id',0);

        $file_path=upload_path();
        $temp_error_array=array();//记录错误信息
        $web_path=str_replace(public_path(),'',$file_path);
        $image = new \Image();
        $file_list=array();
        foreach ($request->file() as $key => $spl_file) {
            if($key!='attribute_image')continue;
            //20MB的文件 拒绝上传
            $max_size=20*1024*1024;
            if($spl_file->getSize()>=$max_size){
                $size_mb=$spl_file->getSize()/1024/1024;
                $temp_error_array[]=$spl_file->getUploadName().'文件'.$size_mb."mb 过大!";
                continue;
            }
            $file_content=file_get_contents($spl_file->getRealPath());
            $file_name= uniqid().'_'.$spl_file->getUploadName();

            $original_file_path=$file_path."\\".$file_name;
            $original_file_path_100=$file_path."\\".'100_'.$file_name;
            $original_file_path_400=$file_path."\\".'400_'.$file_name;

            $image_config=array();
            $image_config['source_image'] = $spl_file->getRealPath();
            $image_config['save_path'] = $original_file_path_100;
            $image_config['width']        = 100;
            $image_config['height']       = 100;
            $image->initialize($image_config);
            $image->crop();

            $image_config=array();
            $image_config['source_image'] = $spl_file->getRealPath();
            $image_config['save_path'] = $original_file_path_400;
            $image_config['width']        = 400;
            $image_config['height']       = 400;

            $image->initialize($image_config);
            $image->crop();

            file_put_contents($original_file_path,$file_content);//保存原始图片

            $data=array(
                'user_id'=>$admin_id,//上传图片的用户
                'file_path'=>$original_file_path,
                'file_name'=>$spl_file->getUploadName(),
                'web_path'=>web_path($original_file_path),
                'web_path_100'=>web_path($original_file_path_100),
                'web_path_400'=>web_path($original_file_path_400),
                'file_size'=>$spl_file->getSize(),
                'file_type'=>$spl_file->getUploadMineType(),
                'file_extension'=>$spl_file->getUploadExtension(),
            );
            $where=array();
            $where[]=['file_path','=',$file_path];
            $product_image_rows=Db::table('product_image')->where($where)->find();
            if(empty($product_image_rows)){
                $file_id=Db::table('product_image')->insert($data,true);
                $data['file_id']=$file_id;
            }
            $file_list[]=$data;
        }
        return json(['code' => 200, 'msg' => 'ok','data'=>$data]);
    }



}
