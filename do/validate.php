<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");




if($action=='email')
{
	if (!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$email)) {
		die('{"name":"email","tips":"邮箱不符合规则！"}');
	}
	//检查该邮箱是否被验证
	if($userDB->check_emailexists($email))die('{"name":"email","tips":"该邮箱已被其它账号使用，您不能使用该邮箱！"}');
	$Title="来自<$webdb[webname]>的邮箱验证信息!";
	$eid=str_replace('+','%2B',mymd5("$lfjid\t$lfjuid\t$email"));
	$Content="请点击以下网址,以完成邮箱的验证:<br><A HREF='$webdb[www_url]/validate-{$eid}.html'>$webdb[www_url]/validate-{$eid}.html</A>";
	if($webdb[MailType]=='smtp')
	{
		if(!$webdb[MailServer]||!$webdb[MailPort]||!$webdb[MailId]||!$webdb[MailPw])
		{
			die('{"name":"email","tips":"请管理员设置邮件服务器！"}');
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
		die('{"name":"ok","tips":"系统刚刚发了一封验证信息到您的邮箱，请尽快查收，以完成邮件验证！"}');
	}else{
		die('{"name":"email","tips":"邮件发送失败.请管理员检查邮箱服务器设置！"}');
	}

}
elseif($action=='idcard')
{
	$truename=get_ajax($truename);
	$idcardpic=get_ajax($idcardpic);
	if(!$truename){
		die('{"name":"truename","tips":"真实姓名不能为空！"}');
	}
	if(!$idcard){
		die('{"name":"idcard","tips":"身份证号码不能为空！"}');
	}
	if(!preg_match("/^(?:\d{18})$/", $idcard)){
		die('{"name":"idcard","tips":"身份证号码有误！"}');
	}
	if($idcardpic){
		if(!is_file(ROOT_PATH."$webdb[updir]/$idcardpic")){
			die('{"name":"idcardpic","tips":"请上传身份证复印件，不能引用其它网址！"}');
		}
		if(!eregi("^{$lfjuid}_",basename($idcardpic))&&$idcardpic!="idcard/$lfjuid.jpg"){
			die('{"name":"idcardpic","tips":"请上传身份证复印件，不能引用其它网址！"}');
		}
		if($idcardpic!="idcard/$lfjuid.jpg"){
			unlink(ROOT_PATH."$webdb[updir]/idcard/$lfjuid.jpg");
			rename(ROOT_PATH."$webdb[updir]/$idcardpic",ROOT_PATH."$webdb[updir]/idcard/$lfjuid.jpg");
		}		
	}
	$db->query("UPDATE {$pre}memberdata SET idcard='$idcard',truename='$truename',idcard_yz='-1' WHERE uid='$lfjuid'");
	die('{"name":"ok","tips":"实名验证信息提交成功，请等待管理员审核！"}');
}
elseif($action=='mobphone'&&!$md5code)
{
	$code=rand(1000,9999);
	if( !eregi("^1(3|5|8)([0-9]{9})$",$mobphone) ){
		die('{"name":"mobphone","tips":"手机号码格式不正确！"}');
	}
	$msg=sms_send($mobphone,"你的验证码是:$code");

	if($msg!==1){
		die('{"name":"mobphone","tips":"系统发送短信失败，请联系管理员！"}');
	}
	$md5code=str_replace('+','%2B',mymd5("$code\t$mobphone\t$lfjuid","EN"));
	die('{"name":"ok","tips":"手机验证短信发送成功，请填写短信验证码！","url":"'.$webdb[www_url].'/validate?type=mob&mobphone='.$mobphone.'&md5code='.$md5code.'"}');
}elseif($action=='mobphone'&&$md5code){
	if( !eregi("^1(3|5|8)([0-9]{9})$",$mobphone) ){
		showerr('手机号码格式不正确！');
	}
	require(ROOT_PATH."inc/head.php");
	require(html("validate"));
	require(ROOT_PATH."inc/foot.php");
}elseif($action=='mobphone2')
{
	if($lfjdb[mob_yz]){
		die('{"name":"yznum","tips":"请不要重复验证手机号码！"}');
	}
	if(!$yznum){
		die('{"name":"yznum","tips":"请输入验证码！"}');
	}elseif(!$md5code){
		die('{"name":"yznum","tips":"请勿非法提交，请联系管理员！"}');
	}else{
		unset($code,$mobphone,$uid);
		list($code,$mobphone,$uid)=explode("\t",mymd5($md5code,"DE") );
		if($code!=$yznum||$uid!=$lfjuid){
			die('{"name":"yznum","tips":"短信验证码校验失败，请联系管理员！"}');
		}
	}
	add_user($lfjuid,$webdb[YZ_MobMoney],'手机号码审核奖分');
	$db->query("UPDATE {$pre}memberdata SET mobphone='$mobphone',mob_yz='1' WHERE uid='$lfjuid'");
	die('{"name":"ok","tips":"恭喜你，你的手机号码成功通过审核，你同时得到 {$webdb[YZ_MobMoney]} 个积分奖励！","url":"'.$webdb[www_url].'/validate?type=mob"}');
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