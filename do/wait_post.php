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
		//【等待编写】：获取等待发送的记录，若无则报错
		if($rsdb=$db->get_one("SELECT * FROM {$pre}sms_list WHERE username='$lfjid' AND state='等待发送' AND slid<>$key "))
		die('{"name":"postdb[old_group]['.$key.'][name]","tips":"修改的分组名称不能有重名，请修改"}');
		
		$db->query("UPDATE {$pre}sms_list SET state='取消发送' WHERE slid='$id' AND username='$lfjid' ");
		//【等待编写】：计算费用总额并 返回增加用户金额。
		die('{"name":"ok"}');
}

$order=='sendtime'||$order="posttime";
$query = $db->query("SELECT * FROM {$pre}sms_list WHERE username = '$lfjid' AND state LIKE '等待发送' ORDER BY $order");
while($rs = $db->fetch_array($query)){
	$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
	$rs[sendtime]=date("Y-m-d H:i:s",$rs[sendtime]);
	$listdb[]=$rs;
}

require(ROOT_PATH."inc/head.php");
require(html("wait_post"));
require(ROOT_PATH."inc/foot.php");
?>