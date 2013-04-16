<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");





if($job=="post"){
		$postdb=get_ajax($postdb);//编码转换
		//同post_sms.php的区别在于接收用户的处理不同。 start
		if(!$postdb[group])die('{"name":"postdb[group][]","tips":"请选择接收分组"}');
		$group_sql=implode("' OR `group` LIKE '%",$postdb[group]);
		$query = $db->query("SELECT * FROM {$pre}crm WHERE username='$lfjid' AND (`group` LIKE '%{$group_sql}%')");
		while($rs = $db->fetch_array($query)){
			$postdb[receiver][]=$rs[mob];
		}//end
		$postdb[receiver]=get_receiver_array($postdb[receiver]);//过滤校验转换接收人
		post_sms_do($postdb);//发送动作
}else{
	$group_out=get_crm_group_select("name='postdb[group][]' multiple='multiple' size='8' ");
}






require(ROOT_PATH."inc/head.php");
require(html("crm_post"));
require(ROOT_PATH."inc/foot.php");
?>