<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");




if($job=="post"){
		if(!$slids)die('{"name":"ajax_submit","tips":"请至少选择一条记录！"}');
		if($action!="cancel")die('{"name":"action","tips":"请指定批量操作类型！"}');
		$db->query("UPDATE {$pre}sms_list SET state='取消发送' WHERE slid IN (".implode(",",$slids).") AND username='$lfjid' ");
		die('{"name":"ok","tips":"已成功取消 '.count($slids).' 条等待发送的短信！"}');//url为可选参数，若有值页面提交完成后将转向该url
}
if($job=="delete"){
		if(!$id)die('{"name":"error","tips":"操作失败，删除对象的id未传递！"}');
		$db->query("UPDATE {$pre}sms_list SET state='取消发送' WHERE slid='$id' AND username='$lfjid' ");
		die('{"name":"ok"}');
}
$state=get_ajax($state);
$t_SQL2=$t_SQL="WHERE username = '$lfjid' AND state <> '删除' ";
if($state){
    $t_SQL.=" AND  state LIKE '$state' ";//财务类型
}
$query = $db->query("SELECT * FROM {$pre}sms_list $t_SQL ORDER BY slid DESC");
while($rs = $db->fetch_array($query)){
	$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
	$rs[sendtime]=date("Y-m-d H:i:s",$rs[sendtime]);
	$listdb[]=$rs;
}

//统计各种状态的短信数量
$query = $db->query("SELECT state,COUNT(*) count FROM {$pre}sms_list $t_SQL2 GROUP BY state");
while($rs = $db->fetch_array($query)){
	$select_out=$rs[state]==$state?"select":"";
	$submenu_out.="<a href='$webdb[www_url]/send_log/$rs[state]' class='$select_out'>$rs[state]（$rs[count]）</a>";
}




require(ROOT_PATH."inc/head.php");
require(html("send_log"));
require(ROOT_PATH."inc/foot.php");
?>