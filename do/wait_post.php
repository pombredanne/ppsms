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
		//��ȡ�ȴ����͵ļ�¼�������򱨴�
		if(!$rsdb=$db->get_one("SELECT * FROM {$pre}sms_list WHERE username='$lfjid' AND state='�ȴ�����' AND slid=$id "))
		die('{"name":"del_'.$id.'","tips":"��Ҫȡ���ĵȴ����Ͷ��Ų����ڻ���ȡ������ˢ�º����ԣ�"}');
		
		$db->query("UPDATE {$pre}sms_list SET state='ȡ������' WHERE slid='$id' AND username='$lfjid' ");
		//���ز������û���
		add_user($lfjdb[uid],$rsdb[cost_sum],"ȡ���ȴ����͵�{$rsdb[cost_num]}������");
		
		die('{"name":"ok"}');
}

$order=='sendtime'||$order="posttime";
$query = $db->query("SELECT * FROM {$pre}sms_list WHERE username = '$lfjid' AND state LIKE '�ȴ�����' ORDER BY $order");
while($rs = $db->fetch_array($query)){
	$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
	$rs[sendtime]=date("Y-m-d H:i:s",$rs[sendtime]);
	$listdb[]=$rs;
}

require(ROOT_PATH."inc/head.php");
require(html("wait_post"));
require(ROOT_PATH."inc/foot.php");
?>