<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");




if($action=='email')
{
	if (!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$email)) {
		die('{"name":"email","tips":"���䲻���Ϲ���"}');
	}
	//���������Ƿ���֤
	if($userDB->check_emailexists($email))die('{"name":"email","tips":"�������ѱ������˺�ʹ�ã�������ʹ�ø����䣡"}');
	$Title="����<$webdb[webname]>��������֤��Ϣ!";
	$eid=str_replace('+','%2B',mymd5("$lfjid\t$lfjuid\t$email"));
	$Content="����������ַ,������������֤:<br><A HREF='$webdb[www_url]/validate-{$eid}.html'>$webdb[www_url]/validate-{$eid}.html</A>";
	if($webdb[MailType]=='smtp')
	{
		if(!$webdb[MailServer]||!$webdb[MailPort]||!$webdb[MailId]||!$webdb[MailPw])
		{
			die('{"name":"email","tips":"�����Ա�����ʼ���������"}');
		}
		require_once(ROOT_PATH."inc/class.mail.php");
		$smtp = new smtp($webdb[MailServer],$webdb[MailPort],true,$webdb[MailId],$webdb[MailPw]);
		$smtp->debug = false;
		if($smtp->sendmail($email,$webdb[MailId], $Title, $Content, "HTML")){
			$succeed=1;
		}
	}
	elseif(mail($email, $Title, $Content))
	{
		$succeed=1;
	}

	if($succeed){
		die('{"name":"ok","tips":"ϵͳ�ոշ���һ����֤��Ϣ���������䣬�뾡����գ�������ʼ���֤��"}');
	}else{
		die('{"name":"email","tips":"�ʼ�����ʧ��.�����Ա���������������ã�"}');
	}

}
elseif($action=='idcard')
{
	$truename=get_ajax($truename);
	$idcardpic=get_ajax($idcardpic);
	if(!$truename){
		die('{"name":"truename","tips":"��ʵ��������Ϊ�գ�"}');
	}
	if(!$idcard){
		die('{"name":"idcard","tips":"���֤���벻��Ϊ�գ�"}');
	}
	if(!preg_match("/^(?:\d{18})$/", $idcard)){
		die('{"name":"idcard","tips":"���֤��������"}');
	}
	if($idcardpic){
		if(!is_file(ROOT_PATH."$webdb[updir]/$idcardpic")){
			die('{"name":"idcardpic","tips":"���ϴ����֤��ӡ������������������ַ��"}');
		}
		if(!eregi("^{$lfjuid}_",basename($idcardpic))&&$idcardpic!="idcard/$lfjuid.jpg"){
			die('{"name":"idcardpic","tips":"���ϴ����֤��ӡ������������������ַ��"}');
		}
		if($idcardpic!="idcard/$lfjuid.jpg"){
			unlink(ROOT_PATH."$webdb[updir]/idcard/$lfjuid.jpg");
			rename(ROOT_PATH."$webdb[updir]/$idcardpic",ROOT_PATH."$webdb[updir]/idcard/$lfjuid.jpg");
		}		
	}
	$db->query("UPDATE {$pre}memberdata SET idcard='$idcard',truename='$truename',idcard_yz='-1' WHERE uid='$lfjuid'");
	die('{"name":"ok","tips":"ʵ����֤��Ϣ�ύ�ɹ�����ȴ�����Ա��ˣ�"}');
}
elseif($action=='mobphone'&&!$md5code)
{
	$code=rand(1000,9999);
	if( !eregi("^1(3|5|8)([0-9]{9})$",$mobphone) ){
		die('{"name":"mobphone","tips":"�ֻ������ʽ����ȷ��"}');
	}
	$msg=sms_send($mobphone,"�����֤����:$code");

	if($msg!==1){
		die('{"name":"mobphone","tips":"ϵͳ���Ͷ���ʧ�ܣ�����ϵ����Ա��"}');
	}
	$md5code=str_replace('+','%2B',mymd5("$code\t$mobphone\t$lfjuid","EN"));
	die('{"name":"ok","tips":"�ֻ���֤���ŷ��ͳɹ�������д������֤�룡","url":"'.$webdb[www_url].'/validate?type=mob&mobphone='.$mobphone.'&md5code='.$md5code.'"}');
}elseif($action=='mobphone'&&$md5code){
	if( !eregi("^1(3|5|8)([0-9]{9})$",$mobphone) ){
		showerr('�ֻ������ʽ����ȷ��');
	}
	require(ROOT_PATH."inc/head.php");
	require(html("validate"));
	require(ROOT_PATH."inc/foot.php");
}elseif($action=='mobphone2')
{
	if($lfjdb[mob_yz]){
		die('{"name":"yznum","tips":"�벻Ҫ�ظ���֤�ֻ����룡"}');
	}
	if(!$yznum){
		die('{"name":"yznum","tips":"��������֤�룡"}');
	}elseif(!$md5code){
		die('{"name":"yznum","tips":"����Ƿ��ύ������ϵ����Ա��"}');
	}else{
		unset($code,$mobphone,$uid);
		list($code,$mobphone,$uid)=explode("\t",mymd5($md5code,"DE") );
		if($code!=$yznum||$uid!=$lfjuid){
			die('{"name":"yznum","tips":"������֤��У��ʧ�ܣ�����ϵ����Ա��"}');
		}
	}
	add_user($lfjuid,$webdb[YZ_MobMoney],'�ֻ�������˽���');
	$db->query("UPDATE {$pre}memberdata SET mobphone='$mobphone',mob_yz='1' WHERE uid='$lfjuid'");
	die('{"name":"ok","tips":"��ϲ�㣬����ֻ�����ɹ�ͨ����ˣ���ͬʱ�õ� {$webdb[YZ_MobMoney]} �����ֽ�����","url":"'.$webdb[www_url].'/validate?type=mob"}');
}
else
{	
	unset($idcardpic);
	if($type=='idcard'){
		if(is_file(ROOT_PATH."$webdb[updir]/idcard/$lfjuid.jpg")){
			$idcardpic="idcard/$lfjuid.jpg";
		}
	}
	require(ROOT_PATH."inc/head.php");
	require(html("validate"));
	require(ROOT_PATH."inc/foot.php");
}
?>