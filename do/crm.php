<?php
require(dirname(__FILE__)."/"."global.php");



//���������ʾ�߼�
if($action=="group"){
	$postdb=get_ajax($postdb);
	//�������޸ķ���
	foreach($postdb[old_group] AS $key=>$rs){
		if($key){
			$rs[order]||$rs[order]="0";
			if(trim($rs[name])=="")die('{"name":"postdb[old_group]['.$key.'][name]","tips":"�������Ʋ���Ϊ�գ�����д"}');
			//�����������
			if($rsdb=$db->get_one("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' AND name='$rs[name]' AND cgid<>$key "))
			die('{"name":"postdb[old_group]['.$key.'][name]","tips":"�޸ĵķ������Ʋ��������������޸�"}');
			//���˷ָ���|
			if(is_int(strpos($rs[name],"|")))die('{"name":"postdb[old_group]['.$key.'][name]","tips":"���������в��ܰ����ַ���|"}');
			$db->query("UPDATE {$pre}crm_group SET name='$rs[name]',`order`='$rs[order]' WHERE cgid=$key AND username='$lfjid'");
			//ͬ���޸Ŀͻ�������Ϣ
			$db->query("UPDATE {$pre}crm SET `group`=replace(`group`,'|$rsdb[name]|','|$rs[name]|') WHERE username='$lfjid'");
		}
	}
	//�����½�����
	foreach($postdb[new_group] AS $key=>$value){
		if($value){
			$postdb[new_group_order][$key]||$postdb[new_group_order][$key]="0";
			//�����������
			if($rsdb=$db->get_one("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' AND name='$value' "))
			die('{"name":"postdb[new_group][]","eq":"'.$key.'","tips":"����Ӻ��Ѵ��ڵķ������Ʋ������������޸�"}');
			//���˷ָ���|
			if(is_int(strpos($value,"|")))die('{"name":"postdb[old_group]['.$key.'][name]","tips":"���������в��ܰ����ַ���|"}');
			$sql_value.="(NULL,'$value','{$postdb[new_group_order][$key]}','0','$lfjid','$timestamp'),";
		}
	}
	if($sql_value)$db->query("INSERT INTO {$pre}crm_group (`cgid`, `name`, `order`, `num`, `username`, `posttime`) VALUES ".cut_end_str($sql_value));
	die('{"name":"ok","tips":"��ϲ�������������ɹ���","url":"'.$webdb[www_url].'/crm?type=group"}');
}else if($action=="del_group"){
	confirmm("���������ɻָ�����ȷ��Ҫɾ���÷�����<br>ע��: ɾ�����鲢����ɾ�������µ��û�","$webdb[www_url]/crm?action=del_group_do&cgid=$cgid","��ֵ����,�ͻ�ͨѶ¼����,�������");
}else if($action=="del_group_do"){
	//��ո��û���crm���пͻ��͸÷���Ĺ���
	$rsdb=get_rsdb("crm_group"," cgid='$cgid' ");	
	$db->query("UPDATE {$pre}crm SET `group`=replace(`group`,'|$rsdb[name]|','|') WHERE username='$lfjid'");
	//ɾ�������¼����ת��������ҳ��
	$db->query("DELETE FROM {$pre}crm_group WHERE cgid='$cgid' AND username='$lfjid'");
	refresh2("$webdb[www_url]/crm?type=group","����ɹ�ɾ����");
}else if($action=="add"){
	$postdb=get_ajax($postdb);
	if(!$postdb[truename])die('{"name":"postdb[truename]","tips":"����д�ͻ�������"}');
	if(!$postdb[mob])die('{"name":"postdb[mob]","tips":"����д�ֻ����룡"}');
	if(!eregi("^1(3|5|8)([0-9]{9})$",$postdb[mob]) )die('{"name":"postdb[mob]","tips":"�ֻ������ʽ����ȷ��"}');
	//����ֻ������Ƿ񱣴��
	if($rsdb=$db->get_one("SELECT * FROM {$pre}crm WHERE username='$lfjid' AND mob='$postdb[mob]'"))
	die('{"name":"postdb[mob]","tips":"�ֻ����룺'.$rsdb[mob].' �Ѵ��ڿͻ�ͨѶ¼������Ϊ'.$rsdb[truename].'�������ظ����޸ģ�"}');
	if($postdb[sex]=="")die('{"name":"postdb[sex]","tips":"��ѡ��ͻ��Ա�"}');
	$postdb[group]&&$group_out="|".implode("|",$postdb[group])."|";
	if($postdb[postalcode]&&!ereg("^[0-9]{6}$",$postdb[postalcode]))die('{"name":"postdb[postalcode]","tips":"���������ʽ�����Ϲ���"}');
	if ($postdb[email]&&!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$postdb[email]))die('{"name":"postdb[email]","tips":"���䲻���Ϲ���"}');
	if($postdb[oicq]&&!ereg("^[0-9]{5,11}$",$postdb[oicq]))die('{"name":"postdb[oicq]","tips":"QQ��ʽ�����Ϲ���"}');
	if($postdb[msn]&&!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$postdb[msn]))die('{"name":"postdb[msn]","tips":"MSN�����Ϲ���"}');
	update_group_num();
	if($postdb[crid]){
		$rsdb=get_rsdb("crm"," crid='$postdb[crid]' ");
		$db->query("UPDATE {$pre}crm SET `truename`='$postdb[truename]',`mob`='$postdb[mob]',`group`='$group_out',`sex`='$postdb[sex]',`bday`='$postdb[bday]',`company`='$postdb[company]',`dept`='$postdb[dept]',`job`='$postdb[job]',`address`='$postdb[address]',`postalcode`='$postdb[postalcode]',`email`='$postdb[email]',`telephone`='$postdb[telephone]',`oicq`='$postdb[oicq]',`msn`='$postdb[msn]',`note`='$postdb[note]' WHERE crid=$postdb[crid] AND username='$lfjid'");
		die('{"name":"ok","tips":"��ϲ�����޸Ŀͻ���Ϣ�ɹ���","url":"'.$webdb[www_url].'/crm?action=search"}');
	}else{
			$db->query("INSERT INTO {$pre}crm(`crid` ,`truename` ,`mob` ,`group` ,`sex` ,`bday` ,`company` ,`dept` ,`job` ,`address` ,`postalcode` ,`email` ,`telephone` ,`oicq` ,`msn` ,`note` ,`posttime` ,`username`)VALUES (NULL ,  '$postdb[truename]',  '$postdb[mob]',  '$group_out',  '$postdb[sex]',  '$postdb[bday]',  '$postdb[company]',  '$postdb[dept]',  '$postdb[job]',  '$postdb[address]',  '$postdb[postalcode]',  '$postdb[email]', '$postdb[telephone]',  '$postdb[oicq]',  '$postdb[msn]',  '$postdb[note]',  '$timestamp',  '$lfjid')");
			die('{"name":"ok","tips":"��ϲ�����½��ͻ�����ɹ���","url":"'.$webdb[www_url].'/crm?type=add"}');
	}
}else if($action=="search"){
	//�����ͻ����
	if(trim($postdb[truename])!=""){
		$postdb[truename]=explode(",",$postdb[truename]);
		$t_SQL_temp=" AND ( 0 ";
		foreach($postdb[truename] AS $key=>$rs){
			$rs=str_replace("*","%",$rs);
		   	$t_SQL_temp.=" OR truename LIKE '%".trim($rs)."%' ";
		}
		$t_SQL.=$t_SQL_temp.")";
	}
	if(trim($postdb[mob])!=""){
    	$t_SQL.=" AND mob LIKE '%".trim($postdb[mob])."%' ";
	}
	if(count($postdb[group])>0){
		$t_SQL_temp=" AND ( 0 ";
		foreach($postdb[group] AS $key=>$rs){
			$t_SQL_temp.=" OR `group` LIKE '%".$rs."|%' ";
		}
		$t_SQL.=$t_SQL_temp.")";
	}
	$query = $db->query("SELECT * FROM {$pre}crm WHERE username='$lfjid' $t_SQL ");
	while($rs = $db->fetch_array($query)){
		$rs[group]=str_replace("|",", ",cut_side_str($rs[group],"|"));
		$rs[group]||$rs[group]="<span class='gray'>�޷���</span>";
		$rs[bday]=="0000-00-00"&&$rs[bday]="<span class='gray'>δ����</span>";
		if($rs[sex]==1)$rs[sex]="��";
		elseif($rs[sex]==2)$rs[sex]="Ů";
		else $rs[sex]="����";
		$rs[company]="$rs[company] $rs[dept] $rs[job]";
		trim($rs[company])==""&&$rs[company]="<span class='gray'>δ��д</span>";
		$listdb[]=$rs;
	}
}





//�������ҳ���
if($type=="group"){
	//��ȡ��������
	$query = $db->query("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' ORDER BY `order` DESC ");
	while($rs = $db->fetch_array($query)){
		$listdb[]=$rs;
	}
	
}else if($type=="add"){
	if($crid){//�༭
		$rsdb=get_rsdb("crm"," crid='$crid' ");
	}
	$group_out=get_crm_group_select("name='postdb[group][]' multiple='multiple' size='8' ",$rsdb[group],false);
	$sexdb[intval($rsdb[sex])]=' checked ';
}else{
	$group_out=get_crm_group_select("name='postdb[group][]' multiple='multiple' size='8' ",false);
}















function update_group_num($username=false){//����ĳ��Ա�¿ͻ������ͳ�ƻ�Ա��
	global $lfjid,$db,$pre;
	$username||$username=$lfjid;
	$query = $db->query("SELECT name FROM {$pre}crm_group WHERE username='$username' ");
	while($rs = $db->fetch_array($query)){
		//�����ѯ��ͳ������
		$rsdb = $db->get_one("SELECT count(crid) num FROM {$pre}crm WHERE username='$username' AND `group` LIKE '%|$rs[name]|%' ");
		//������·����е������ֶ�
		$db->query("UPDATE {$pre}crm_group SET num='$rsdb[num]' WHERE name='$rs[name]' AND username='$username'");
	}
}

require(ROOT_PATH."inc/head.php");
require(html("crm"));
require(ROOT_PATH."inc/foot.php");
?>