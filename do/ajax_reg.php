<?php
require(dirname(__FILE__)."/"."global.php");

if($lfjid){die("�����˳����ٽ���ע�������");}

/*��У��У��*/
if(is_numeric($username))die("�û�������ȫ��Ϊ���֣�");
if($password!=$password2)die("������������벻ͬ����ȷ�ϣ�");

/*��ȫע�����ƣ�5�����ڲ��ܶ��ע��*/







/*ע���û�����¼*/
$return_reg=reg_user($username,$password);
if($return_reg)die($return_reg);
else die("ok");

?>