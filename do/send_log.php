<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");




if($job=="post"){
		if(!$slids)die('{"name":"ajax_submit","tips":"������ѡ��һ����¼��"}');
		if($action!="cancel")die('{"name":"action","tips":"��ָ�������������ͣ�"}');
		$db->query("UPDATE {$pre}sms_list SET state='ȡ������' WHERE slid IN (".implode(",",$slids).") AND username='$lfjid' ");
		die('{"name":"ok","tips":"�ѳɹ�ȡ�� '.count($slids).' ���ȴ����͵Ķ��ţ�"}');//urlΪ��ѡ����������ֵҳ���ύ��ɺ�ת���url
}
if($job=="delete"){
		if(!$id)die('{"name":"error","tips":"����ʧ�ܣ�ɾ�������idδ���ݣ�"}');
		$db->query("UPDATE {$pre}sms_list SET state='ȡ������' WHERE slid='$id' AND username='$lfjid' ");
		die('{"name":"ok"}');
}
$state=get_ajax($state);
$t_SQL2=$t_SQL="WHERE username = '$lfjid' AND state <> 'ɾ��' ";
if($state){
    $t_SQL.=" AND  state LIKE '$state' ";//��������
}
$query = $db->query("SELECT * FROM {$pre}sms_list $t_SQL ORDER BY slid DESC");
while($rs = $db->fetch_array($query)){
	$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
	$rs[sendtime]=date("Y-m-d H:i:s",$rs[sendtime]);
	$listdb[]=$rs;
}

//ͳ�Ƹ���״̬�Ķ�������
$query = $db->query("SELECT state,COUNT(*) count FROM {$pre}sms_list $t_SQL2 GROUP BY state");
while($rs = $db->fetch_array($query)){
	$select_out=$rs[state]==$state?"select":"";
	$submenu_out.="<a href='$webdb[www_url]/send_log/$rs[state]' class='$select_out'>$rs[state]��$rs[count]��</a>";
}




require(ROOT_PATH."inc/head.php");
require(html("send_log"));
require(ROOT_PATH."inc/foot.php");
?>