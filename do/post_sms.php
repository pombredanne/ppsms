<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");





if($job=="post"){
		$postdb=get_ajax($postdb);//编码转换
		$postdb[receiver]=get_receiver_array(explode("\r\n",$postdb[receiver]));//过滤校验转换接收人
		post_sms_do($postdb);//发送动作
}


require(ROOT_PATH."inc/head.php");
require(html("post_sms"));
require(ROOT_PATH."inc/foot.php");
?>