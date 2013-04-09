<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");





if($job=="post"){
		$postdb=get_ajax($postdb);
		
		if(!$postdb[group])die('{"name":"postdb[group][]","tips":"请选择接收分组"}');
		$postdb[receiver_arr]=get_receiver_array($postdb[receiver]);//获取接收号码为数组对象

		post_sms_do($receiver_arr,$message,$time,$time_date,$time_hh,$time_ii);
		
		

}else{
	$group_out=get_crm_group_select("name='postdb[group][]' multiple='multiple' size='8' ");
}






require(ROOT_PATH."inc/head.php");
require(html("crm_post"));
require(ROOT_PATH."inc/foot.php");
?>