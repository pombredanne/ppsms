<?php
require_once(dirname(__FILE__)."/"."../inc/common.inc.php");	//�����ļ�
require_once(ROOT_PATH."inc/artic_function.php");		//�漰�����·���ĺ���

@include_once(ROOT_PATH."data/ad_cache.php");		//�����������ļ�
@include_once(ROOT_PATH."data/label_hf.php");		//��ǩͷ����ײ����������ļ�
@include_once(ROOT_PATH."data/all_fid.php");		//ȫ����Ŀ�����ļ�
@include_once(ROOT_PATH."data/article_module.php");	//����ϵͳ����������ģ��

if(!$webdb[web_open])
{
	$webdb[close_why] = str_replace("\n","<br>",$webdb[close_why]);
	showerr("��վ��ʱ�ر�:$webdb[close_why]");
}

/**
*������ЩIP����
**/
$IS_BIZ && Limt_IP('AllowVisitIp');

$rows=intval($rows);
$ch=intval($ch);
unset($listdb,$rs);

//����JSʱ����ʾ��,����Ի���ͼƬ,'��Ҫ��\
$Load_Msg="<img alt=\"���ݼ�����,���Ժ�...\" src=\"$webdb[www_url]/images/default/ico_loading3.gif\">";










//PPSϵͳ���ò����б�
$sms_price=6;						//���ŵ���Ϊ6��һ����ϵͳ��Ǯ��λΪ��
$sms_length=70;




function send_sms($mobile,$content){//���Ͷ��Žӿ�����
	return send_sms_by_test($mobile,$content);
	//send_sms_by_51jje($mobile,$content);
	//send_sms_by_opplink($mobile,$content);
}
function send_sms_by_test($mobile,$content){//���Զ��ŷ��ͽӿ�
		global $webdb;
		require_once(ROOT_PATH."inc/class.mail.php");
		$smtp = new smtp($webdb[MailServer],$webdb[MailPort],true,$webdb[MailId],$webdb[MailPw]);
		$smtp->debug = false;
		if($smtp->sendmail($webdb[MailId],$webdb[MailId],"$mobile","$content", "HTML"))
		{
			return false;
		}else{
			return "�����ʼ�����������!";
		}
}
//�ɶ��Ҽ�E���Žӿ�
function send_sms_by_51jje($mobile,$content){
	if(!$mobile||!$content)return;
	$url="http://www.51jje.com/sp.do?spName=WEB_SENDSMSW&P01=61198999&P02=0&P03=61198999&P04={$mobile}&P05=".urlencode($content);
	if( !$msg=sockOpenUrl($url) ){
		return '���ŷ���ʧ�ܣ����Ӷ��ŷ�����ʧ�ܣ�';
	}
	if($msg!=''&&strstr($msg,"�ύ���")){
		return 'ok';
	}else{
		return '���ŷ���ʧ�ܣ����Ժ����ԣ�';
	}
}
//opplink���Žӿ�
function send_sms_by_opplink($mobile,$content){
	global $sms_username,$sms_password;
	if(!$mobile||!$content)return;
	$client = new SoapClient("http://www.opptarget.com/api/WebService.asmx?WSDL");//ʹ�� wsdl��ʽ
	$parameters=array(
		"username"=>$sms_username,
		"password"=>$sms_password,
		"message"=>iconv('gb2312','UTF-8',$content),
		"mobileList"=>$mobile
	);
	try{
		$result = $client->SendSMS($parameters);
	}catch(SoapFault $exception) {
		return '���ŷ����쳣���쳣ԭ���ǣ�'.$exception;
	}
	$msg=$result->SendSMSResult;
	if($msg=="OK")return 'ok';
	else{
		if($msg!=''&&strstr("msg".$msg,"OK.")){
			return 'ok';
		}else{
			return '���ŷ���ʧ�ܣ�ԭ���ǣ�'.$result->SendSMSResult;
		}
	}
}
//ȥ�����һ���ض��ַ��������������ض��ַ�
function cut_end_str($str,$cutstr=','){
	if($str{strlen($str)-1}==$cutstr)
	$str=substr($str,0,strlen($str)-1);
	return $str;
}
//ȥ����ͷһ���ض��ַ��������������ض��ַ�
function cut_start_str($str,$cutstr=','){
	if($str{0}==$cutstr)
	$str=substr($str,1);
	return $str;
}
//ȥ����ͷһ���ض��ַ��������������ض��ַ�
function cut_side_str($str,$cutstr=','){
	return cut_start_str(cut_end_str($str,$cutstr),$cutstr);
}
//��������ɫ��״̬����
function state_color($str){
	$green=array("���ͳɹ�","����","ͬ��","����ɹ�");
	$red=array("����ʧ��","ȡ������","�ܾ�","��ͬ��");
	$orange=array("�ȴ�����","һ��","�ȴ�����");
	if(in_array($str,$green)){
			return "<span class='green'>$str</span>";
	}else if(in_array($str,$red)){
			return "<span class='red'>$str</span>";
	}else if(in_array($str,$orange)){
			return "<span class='orange'>$str</span>";
	}else return $str;
}
//selseת������		������ѡ���ַ�����select����������Ĭ��ֵ֧�ֶ��ֵ
function make_select($arr,$other,$defvalue){
    $arrs=explode("|",$arr);
    $select="<select $other>";
    foreach($arrs AS $key=>$rs){
        $select.=strstr($defvalue."|",$rs."|")?"<option selected=\"selected\">$rs</option>":"<option>$rs</option>";
    }
    return $select."</select>";
}
//radioת������		������ѡ���ַ�����radio����������Ĭ��ֵ
function make_radio($arr,$other,$defvalue){
    $arrs=explode("|",$arr);
    foreach($arrs AS $key=>$rs){
        $select.=$rs==$defvalue?"<label><input $other checked='checked' type='radio' value='$rs'>$rs </label>":"<label><input $other type='radio' value='$rs'>$rs </label>";
    }
    return $select;
}
//ע���û�
function reg_user($username,$password){
	global $timestamp,$onlineip,$db,$userDB;
	//��ʼ����ע������
	$array=array(
		'username'=>$username,
		'password'=>$password,
		'groupid'=>8,
		'grouptype'=>0,
		'yz'=>1,
		'lastvist'=>$timestamp,
		'lastip'=>$onlineip,
		'regdate'=>$timestamp,
		'regip'=>$onlineip,
		'sex'=>0,
		'bday'=>"",
		'oicq'=>$oicq,
		'msn'=>$msn,
		'homepage'=>$homepage,
		'email'=>$email,
		'mobphone'=>''
	);
	//�û�ע��
	$uid = $userDB->register_user($array);
	if(!is_numeric($uid)){
		return $uid;
	}
	//�û���¼
	$cookietime = 3600;
	$userDB->login($username,$password,$cookietime);
	return false;
}
//�û���¼
function login_user($login_mobile,$login_pwd,$cookietime=3600){
	global $lfjid,$userDB;
	//��ֹ�ظ���¼
	if($lfjid)return "���Ѿ���¼��,�벻Ҫ�ظ���¼,Ҫ���µ�¼���˳�";
	//�û���¼
	$login = $userDB->login($login_mobile,$login_pwd,$cookietime);
	if($login==0){
		return "��ǰ�û�������,����������";
	}elseif($login==-1){
		return "���벻��ȷ,�����������";
	}else
	return false;
}
function get_left_menu(){//��ȡ���˵�����
		global $db,$pre,$lfjdb,$webdb;
		//�跨��ȡ��̨�Զ���˵�
		$query = $db->query("SELECT * FROM {$pre}admin_menu WHERE groupid='-$lfjdb[groupid]' AND fid=0 ORDER BY list DESC");
		while($rs = $db->fetch_array($query)){
				$query2 = $db->query("SELECT * FROM {$pre}admin_menu WHERE fid='$rs[id]' ORDER BY list DESC");
				while($rs2 = $db->fetch_array($query2)){
						$menudb[$rs[name]][$rs2[name]]['link']=$rs2['linkurl'];
				}
		}
		//�����˵�js
		$left_menu_out="d.add(0,-1,'�˵�');";
		$menu_i=99;
		foreach($menudb AS $SortName=>$array){
				$left_menu_out.="d.add({$menu_i},0,'<strong>$SortName</strong>','#');";
				$menu_fid=$menu_i;
				foreach($array AS $MenuName=>$array2){
					if($power<$array2[power])continue;
					$menu_i++;
					$left_menu_out.="d.add($menu_i,$menu_fid,'$MenuName','$webdb[www_url]/$array2[link]');";
				}
				$menu_i++;
		}
		return $left_menu_out;
}
function post_wait_sms($receivers_arr,$message,$send_time){//����Ҫ���͵Ķ��Ŵ���ȴ������б�
		global $db,$pre,$lfjdb,$onlineip,$timestamp,$sms_price,$sms_length;
		//���Ż���ռ�����ַ�����
		//����Ƿ��㹻֧�����۳����
		$sms_words=mb_strlen($message,'gb2312');
		$sms_num=(int)(($sms_words-1)/$sms_length)+1;//��������
		$cost_num=count($receivers_arr)*$sms_num;//���Ͷ���������
		$send_money=$cost_num*$sms_price;//��Ҫ֧���ķ���
		if($lfjdb[money]<$send_money)return "�����˺����Ϊ".($lfjdb[money]/100)."Ԫ�����η���{$sms_num}�����ţ���Ҫ֧��".($send_money/100)."Ԫ�������ٳ�ֵ".(($send_money-$lfjdb[money])/100)."Ԫ";
		//�ӵ�ǰ�ʻ��м��� $send_money ��
		add_user($lfjdb[uid],$send_money*-1,"����{$cost_num}������");
		//���뵽�������б�
		$db->query("INSERT INTO {$pre}sms_list(`slid` ,`receiver` ,`receiver_num` ,`message`,`message_words`  ,`message_num` ,`posttime` ,`sendtime` ,`lasttime` ,`state` ,`username` ,`ip` ,`cost_num` ,`cost_sum` ,`money` ,`remarks`)
						VALUES (NULL , '".implode(",",$receivers_arr).",', '".count($receivers_arr)."', '$message', '$sms_words', '$sms_num', '$timestamp', '$send_time', '$timestamp', '�ȴ�����', '$lfjdb[username]', '$onlineip', '$cost_num', '$send_money', '".($lfjdb[money]-$send_money)."', '')");
		return false;
}
function post_invoice($postdb){//����Ʊ������뷢Ʊ�б�
		global $db,$pre,$lfjid,$onlineip,$timestamp,$sms_price,$sms_length;
		$postdb[money]=$postdb[money]*100;//Ԫת��Ϊ��
		$db->query("INSERT INTO `ppsms`.`pp_invoice` (`inid`, `type`, `title`, `money`, `express_type`, `express_num`, `tax`, `content`, `receiver`, `receiver_tel`, `receiver_add`, `remarks`, `invoice_num`, `username`, `posttime`, `state`) VALUES (NULL, '$postdb[type]', '$postdb[title]', '$postdb[money]', '$postdb[express_type]', '', '$postdb[tax]', '$postdb[content]', '$postdb[receiver]', '$postdb[receiver_tel]', '$postdb[receiver_add]', '$postdb[remarks]', '', '$lfjid', '$timestamp', '�ȴ�����')");
		return false;
}
function get_ajax($str){//��jquery��rewrite������utf8�༭ת����gbk��trim����֧�����޼�����
	if(is_array($str)){
			foreach($str AS $key=>$value){
					$listdb[$key]=get_ajax($value);
			}
			return $listdb;
	}else return trim(iconv('UTF-8','gb2312',$str));
}
function money2msg($money,$isint=true){//���ת��Ϊת�ɷ��Ͷ�����
	global $sms_price;
	if($isint)return (int)($money*1/$sms_price);
	else return $money*1/$sms_price;
}
function get_pay_sum($username){//��ȡ��ֵ�ܽ��
	global $lfjid,$db,$pre;
	$username||$username=$lfjid;
	$rsdb=$db->get_one("SELECT COALESCE(SUM(money),0) AS num FROM {$pre}olpay WHERE username='$username' AND ifpay= '1' ");
	return $rsdb[num];
}
function get_invoice_sum($username){//�ѳɹ����뷢Ʊ�ܽ��
	global $lfjid,$db,$pre;
	$username||$username=$lfjid;
	$rsdb=$db->get_one("SELECT COALESCE(SUM(money),0) AS num FROM {$pre}invoice WHERE username='$username' AND state LIKE '����ɹ�' ");
	return $rsdb[num];
}
function get_my_invoices($username){//��ȡ���뷢Ʊ�б�
	global $lfjid,$db,$pre;
	$username||$username=$lfjid;
	$query = $db->query("SELECT * FROM {$pre}invoice WHERE username='$username' AND state LIKE '�ȴ�����' ORDER BY inid DESC ");
	while($rs = $db->fetch_array($query)){
		$rs[money]=$rs[money]/100;
		$rs[state_out]=state_color($rs[state]);
		$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
		$listdb[]=$rs;
	}
	return $listdb;
}
function get_my_moneylog($uid){//��ȡ�ҵĲ����¼
	global $lfjuid,$db,$pre;
	$uid||$uid=$lfjuid;
	$query = $db->query("SELECT * FROM {$pre}moneylog WHERE uid='$lfjuid' ORDER BY id DESC ");
	while($rs = $db->fetch_array($query)){
		$rs[money]=$rs[money]/100;
		$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
		$listdb[]=$rs;
	}
	return $listdb;
}
function get_my_olpay($uid){//��ȡ�ҵ����߳�ֵ��¼
	global $lfjuid,$db,$pre;
	$uid||$uid=$lfjuid;
	$query = $db->query("SELECT * FROM {$pre}olpay WHERE uid='$lfjuid' ORDER BY id DESC ");
	while($rs = $db->fetch_array($query)){
		$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
		$listdb[]=$rs;
	}
	return $listdb;
}
function get_rsdb($table,$table_id){
	global $lfjid,$db,$pre;
	$rsdb=$db->get_one("SELECT * FROM {$pre}$table WHERE username='$lfjid' AND $table_id ");
	if(!$rsdb)refresh2("javascript:window.history.go(-1);","��Ҫ�����ļ�¼�����ڻ���ɾ����");
	return $rsdb;
}
function get_crm_group_select($other,$defaulf=false,$show_num=true){//��ȡCRM��ǰ�û��ķ���select
	global $pre,$db,$lfjid;
	$query = $db->query("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' ORDER BY `order` DESC");
	$select="<select $other>";
	while($rs = $db->fetch_array($query)){
		if($show_num){//�Ƿ���ʾ������������ѡ
			$rs[num_out]=$rs[num]?">$rs[name] - $rs[num] λ</option>":" disabled='disabled'>$rs[name] - ����</option>";
			if(strstr($defaulf,"|$rs[name]|")){
				$select.="<option value='$rs[name]' selected='selected' $rs[num_out]";
			}else{
				$select.="<option value='$rs[name]' $rs[num_out]";
			}
		}else{
			if(strstr($defaulf,"|$rs[name]|"))
			$select.="<option selected='selected'>$rs[name]</option>";
			else
			$select.="<option>$rs[name]</option>";
		}
	}
	return $select."</select>";
}
function post_sms_do($postdb){//�򵥷��ͺ�ͨѶ¼���Ͷ����߼�
		global $timestamp,$db,$webdb,$lfjdb,$sms_price,$sms_length;
		if($postdb[message]=="")die('{"name":"message","tips":"�����뷢�͵Ķ�������"}');
		if($postdb[time]=="true"){//��Ϊ��ʱ��������
			if(!$postdb[time_date])die('{"name":"time_date","tips":"�����ö�ʱ���͵�ʱ��"}');
			//�ж϶�ʱ���ű�����ڵ�ǰʱ��
			$time_val=strtotime("$postdb[time_date] $postdb[time_hh]:$postdb[time_ii]:00");
			if($time_val<$timestamp)die('{"name":"time_date","tips":"�����ö�ʱ���͵�ʱ�������ڵ�ǰʱ��"}');
			//����ʱ���͵Ķ��Ŵ��ڵȴ������б�
			if($post_sms_error=post_wait_sms($postdb[receiver],$postdb[message],$time_val)){
					die('{"name":"ajax_submit","tips":"'.$post_sms_error.'"}');
			};
			die('{"name":"ok","tips":"��ϲ���������ѽ��붨ʱ�ȴ������б�","url":"'.$webdb[www_url].'/wait_post"}');
			//PS:��Ҫϵͳ��̨1����ִ������һ�Σ�������3�����ڴ��ڶ��У��򼴿̷��͡�
		}else{//�Ƕ�ʱ��������������
			$sms_words=mb_strlen($postdb[message],'gb2312');
			$sms_num=(int)(($sms_words-1)/$sms_length)+1;//��������
			$cost_num=count($postdb[receivers_arr])*$sms_num;//���Ͷ���������
			$send_money=$cost_num*$sms_price;//��Ҫ֧���ķ���
			if($lfjdb[money]<$send_money)return "�����˺����Ϊ".($lfjdb[money]/100)."Ԫ�����η���{$sms_num}�����ţ���Ҫ֧��".($send_money/100)."Ԫ�������ٳ�ֵ".(($send_money-$lfjdb[money])/100)."Ԫ";
			//�ӵ�ǰ�ʻ��м��� $send_money ��
			add_user($lfjdb[uid],$send_money*-1,"����{$cost_num}������");
			if($send_sms_result=send_sms(implode(',',$postdb[receiver]),$postdb[message]))die('{"name":"ajax_submit","tips":"'.$send_sms_result.'"}');
			die('{"name":"ok","tips":"��ϲ�������ŷ��ͳɹ���","url":"'.$webdb[www_url].'/post_sms"}');
		}
}
function get_receiver_array($receiver_temp){//У����˲���ȡ���պ��룬����Ϊ�������
		foreach($receiver_temp AS $key=>$value){
				$value=str_replace(array("\n","\r","\t","'"),array("","","","\'"),trim($value));
				if($value=="")continue;
				if(strlen($value)>11){
						die('{"name":"postdb[receiver]","tips":"���պ��룺'.$value.' �ĳ���Ϊ'.strlen($value).'λ���ܴ���11λ"}');
				}else if(strlen($value)<11){
						die('{"name":"postdb[receiver]","tips":"���պ��룺'.$value.' �ĳ���Ϊ'.strlen($value).'λ����11λ"}');
				}
				if(preg_match("/^13[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$/",$value)){//��������13��15��18��ͷ������11λ����
						//����
				}else{
						//������
						die('{"name":"receiver","tips":"���պ��룺'.$value.' �����Ϻ������"}');
				}
				$receiver_arr[]=$value;
		}
		return $receiver_arr;
}

?>