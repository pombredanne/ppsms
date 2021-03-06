<?php
require_once(dirname(__FILE__)."/../../../../../inc/common.inc.php");
    //上传配置
    $config = array(
        "uploadPath"=>"../../../../../upload_files/other/",                          //保存路径
        //"fileType"=>array(".gif",".png",".jpg",".jpeg",".bmp"),   //文件允许格式
		"fileType"=>explode(' ',$webdb['upfileType']),
        "fileSize"=>1000                                          //文件大小限制，单位KB
    );
	

    //文件上传状态,当成功时返回SUCCESS，其余值将直接返回对应字符窜并显示在图片预览框，同时可以在前端页面通过回调函数获取对应字符窜
    $state = "SUCCESS";
    $fileName="";

    $path  = $config['uploadPath'];
    if(!file_exists($path)){
        mkdir("$path", 0777);
    }
    //格式验证
    $current_type = strtolower(strrchr($_FILES["upfile"]["name"], '.'));
    if(!in_array($current_type, $config['fileType'])){
        $state = "不支持的图片类型！";
    }
    //大小验证
    $file_size = 1024 * $config['fileSize'];
    if( $_FILES["upfile"]["size"] > $file_size ){
        $state = "图片大小超出限制！";
    }
	if(!$lfjid){
		$state = "你还没登录";
	}
    //保存图片
    if($state == "SUCCESS"){/*
        $resource = fopen("log.txt","a");
		fwrite($resource,date("Ymd h:i:s")."UPLOAD - $_SERVER[REMOTE_ADDR]"
					.$_FILES['upfile']['name']." "
					.$_FILES['upfile']['type']."\n");
		fclose($resource);

        $tmp_file=$_FILES["upfile"]["name"];
        $fileName = $path.rand(1,10000).time().strrchr($tmp_file,'.');
        $result = move_uploaded_file($_FILES["upfile"]["tmp_name"],$fileName);
        if(!$result){
            $state = "图片保存失败！";
        }*/

		$array='';
		$array['name']=is_array($upfile)?$_FILES['upfile']['name']:$upfile_name;
		$array['path']=$webdb['updir']."/other";
		$array['size']=is_array($upfile)?$_FILES['upfile']['size']:$upfile_size;
		
		$array['updateTable']=1;	//统计用户上传的文件占用空间大小
		$filename=upfile(is_array($upfile)?$_FILES['upfile']['tmp_name']:$upfile,$array);

    }
    //向浏览器返回数据json数据
    //$file= str_replace('../','',$fileName);  //为方便理解，替换掉所有类似../和./等相对路径标识

	WEB_LANG=='gb2312' && $state = gbk2utf8($state);
    echo "{'url':'".$filename."','state':'".$state."'}";
?>
