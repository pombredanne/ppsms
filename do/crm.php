<?php
require(dirname(__FILE__)."/"."global.php");



//���������ʾ�߼�
if($action=="group"){
	$postdb=get_ajax($postdb);
	//�����½�����
	foreach($postdb[new_group] AS $key=>$value){
		if($value){
			$postdb[new_group_order][$key]||$postdb[new_group_order][$key]="0";
			$sql_value.="(NULL,'$value','{$postdb[new_group_order][$key]}','0','$lfjid','$timestamp'),";
		}
	}
	if($sql_value)$db->query("INSERT INTO {$pre}crm_group (`cgid`, `name`, `order`, `num`, `username`, `posttime`) VALUES ".cut_end_str($sql_value));
	//���������
	foreach($postdb[old_group] AS $key=>$rs){
		if($key){
			$rs[order]||$rs[order]="0";
			if(trim($rs[name])=="")die('{"name":"postdb[old_group]['.$key.'][name]","tips":"�������Ʋ���Ϊ�գ�����д"}');
			$db->query("UPDATE {$pre}crm_group SET name='$rs[name]',`order`='$rs[order]' WHERE cgid=$key AND username='$lfjid'");
		}
	}
	die('{"name":"ok","tips":"��ϲ�������������ɹ���","url":"'.$webdb[www_url].'/crm?type=group"}');
}else if($action=="del_group"){
	confirmm("���������ɻָ�����ȷ��Ҫɾ���÷�����<br>ע��: ɾ�����鲢����ɾ�������µ��û�","$webdb[www_url]/crm?action=del_group_do&cgid=$cgid","��ֵ����,�ͻ�ͨѶ¼����,�������");
}else if($action=="del_group_do"){
	//ɾ��id����ת��������ҳ��
	$db->query("DELETE FROM {$pre}crm_group WHERE cgid='$cgid' AND username='$lfjid'");
	refresh2("$webdb[www_url]/crm?type=group","����ɹ�ɾ����");
}

//�������ҳ���
if($type=="group"){
	//��ȡ��������
	$query = $db->query("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' ORDER BY `order` DESC ");
	while($rs = $db->fetch_array($query)){
		$listdb[]=$rs;
	}
	
}







require(ROOT_PATH."inc/head.php");
require(html("crm"));
require(ROOT_PATH."inc/foot.php");
?>