<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");





if($job=="post"){
		$postdb=get_ajax($postdb);//����ת��
		$postdb[receiver]=get_receiver_array(explode("\r\n",$postdb[receiver]));//����У��ת��������
		post_sms_do($postdb);//���Ͷ���
}


require(ROOT_PATH."inc/head.php");
require(html("post_sms"));
require(ROOT_PATH."inc/foot.php");
?>