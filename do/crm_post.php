<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");





if($job=="post"){
		$postdb=get_ajax($postdb);//����ת��
		//ͬpost_sms.php���������ڽ����û��Ĵ���ͬ�� start
		if(!$postdb[group])die('{"name":"postdb[group][]","tips":"��ѡ����շ���"}');
		$group_sql=implode("' OR `group` LIKE '%",$postdb[group]);
		$query = $db->query("SELECT * FROM {$pre}crm WHERE username='$lfjid' AND (`group` LIKE '%{$group_sql}%')");
		while($rs = $db->fetch_array($query)){
			$postdb[receiver][]=$rs[mob];
		}//end
		$postdb[receiver]=get_receiver_array($postdb[receiver]);//����У��ת��������
		post_sms_do($postdb);//���Ͷ���
}else{
	$group_out=get_crm_group_select("name='postdb[group][]' multiple='multiple' size='8' ");
}






require(ROOT_PATH."inc/head.php");
require(html("crm_post"));
require(ROOT_PATH."inc/foot.php");
?>