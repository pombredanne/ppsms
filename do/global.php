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





//ȥ�����һ���ض��ַ��������������ض��ַ�
function cut_end_str($str,$cutstr=','){
	if($str{strlen($str)-1}==$cutstr)
	$str=substr($str,0,strlen($str)-1);
	return $str;
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
function post_sms($receivers_arr,$message,$send_time){//����Ҫ���͵Ķ��Ŵ���ȴ������б�
		global $db,$pre,$lfjdb,$onlineip,$timestamp,$sms_price,$sms_length;
		//���Ż���ռ�����ַ�����
		//����Ƿ��㹻֧�����۳����
		$sms_words=mb_strlen($message,'gb2312');
		$sms_num=(int)(($sms_words-1)/$sms_length)+1;//��������
		$cost_num=count($receivers_arr)*$sms_num;//���Ͷ���������
		$send_money=$cost_num*$sms_price;//��Ҫ֧���ķ���
		if($lfjdb[money]<$send_money)return mb_strlen($message,'UTF8')."�����˺����Ϊ".($lfjdb[money]/100)."Ԫ�����η���{$sms_num}�����ţ���Ҫ֧��".($send_money/100)."Ԫ�������ٳ�ֵ".(($send_money-$lfjdb[money])/100)."Ԫ";
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
?>