<?php
require_once(dirname(__FILE__)."/"."../inc/common.inc.php");	//核心文件
require_once(ROOT_PATH."inc/artic_function.php");		//涉及到文章方面的函数

@include_once(ROOT_PATH."data/ad_cache.php");		//广告变量缓存文件
@include_once(ROOT_PATH."data/label_hf.php");		//标签头部与底部变量缓存文件
@include_once(ROOT_PATH."data/all_fid.php");		//全部栏目配置文件
@include_once(ROOT_PATH."data/article_module.php");	//文章系统创建出来的模型

if(!$webdb[web_open])
{
	$webdb[close_why] = str_replace("\n","<br>",$webdb[close_why]);
	showerr("网站暂时关闭:$webdb[close_why]");
}

/**
*允许哪些IP访问
**/
$IS_BIZ && Limt_IP('AllowVisitIp');

$rows=intval($rows);
$ch=intval($ch);
unset($listdb,$rs);

//加载JS时的提示语,你可以换成图片,'号要加\
$Load_Msg="<img alt=\"内容加载中,请稍候...\" src=\"$webdb[www_url]/images/default/ico_loading3.gif\">";










//PPS系统配置参数列表
$sms_price=6;						//短信单价为6分一条，系统金钱单位为分
$sms_length=70;





//去掉最后一个特定字符，如果存在这个特定字符
function cut_end_str($str,$cutstr=','){
	if($str{strlen($str)-1}==$cutstr)
	$str=substr($str,0,strlen($str)-1);
	return $str;
}
//返回有颜色的状态函数
function state_color($str){
	$green=array("发送成功","允许","同意","申请成功");
	$red=array("发送失败","取消发送","拒绝","不同意");
	$orange=array("等待发送","一般","等待处理");
	if(in_array($str,$green)){
			return "<span class='green'>$str</span>";
	}else if(in_array($str,$red)){
			return "<span class='red'>$str</span>";
	}else if(in_array($str,$orange)){
			return "<span class='orange'>$str</span>";
	}else return $str;
}
//注册用户
function reg_user($username,$password){
	global $timestamp,$onlineip,$db,$userDB;
	//开始构建注册数据
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
	//用户注册
	$uid = $userDB->register_user($array);
	if(!is_numeric($uid)){
		return $uid;
	}
	//用户登录
	$cookietime = 3600;
	$userDB->login($username,$password,$cookietime);
	return false;
}
//用户登录
function login_user($login_mobile,$login_pwd,$cookietime=3600){
	global $lfjid,$userDB;
	//禁止重复登录
	if($lfjid)return "你已经登录了,请不要重复登录,要重新登录先退出";
	//用户登录
	$login = $userDB->login($login_mobile,$login_pwd,$cookietime);
	if($login==0){
		return "当前用户不存在,请重新输入";
	}elseif($login==-1){
		return "密码不正确,点击重新输入";
	}else
	return false;
}
function get_left_menu(){//获取左侧菜单代码
		global $db,$pre,$lfjdb,$webdb;
		//设法获取后台自定义菜单
		$query = $db->query("SELECT * FROM {$pre}admin_menu WHERE groupid='-$lfjdb[groupid]' AND fid=0 ORDER BY list DESC");
		while($rs = $db->fetch_array($query)){
				$query2 = $db->query("SELECT * FROM {$pre}admin_menu WHERE fid='$rs[id]' ORDER BY list DESC");
				while($rs2 = $db->fetch_array($query2)){
						$menudb[$rs[name]][$rs2[name]]['link']=$rs2['linkurl'];
				}
		}
		//构建菜单js
		$left_menu_out="d.add(0,-1,'菜单');";
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
function post_sms($receivers_arr,$message,$send_time){//将需要发送的短信存入等待发送列表
		global $db,$pre,$lfjdb,$onlineip,$timestamp,$sms_price,$sms_length;
		//短信换行占两个字符问题
		//余额是否足够支付，扣除余额
		$sms_words=mb_strlen($message,'gb2312');
		$sms_num=(int)(($sms_words-1)/$sms_length)+1;//短信条数
		$cost_num=count($receivers_arr)*$sms_num;//发送短信总数量
		$send_money=$cost_num*$sms_price;//需要支付的费用
		if($lfjdb[money]<$send_money)return mb_strlen($message,'UTF8')."您的账号余额为".($lfjdb[money]/100)."元，本次发送{$sms_num}条短信，需要支付".($send_money/100)."元，请至少充值".(($send_money-$lfjdb[money])/100)."元";
		//从当前帐户中减掉 $send_money 分
		add_user($lfjdb[uid],$send_money*-1,"发送{$cost_num}条短信");
		//插入到待发送列表
		$db->query("INSERT INTO {$pre}sms_list(`slid` ,`receiver` ,`receiver_num` ,`message`,`message_words`  ,`message_num` ,`posttime` ,`sendtime` ,`lasttime` ,`state` ,`username` ,`ip` ,`cost_num` ,`cost_sum` ,`money` ,`remarks`)
						VALUES (NULL , '".implode(",",$receivers_arr).",', '".count($receivers_arr)."', '$message', '$sms_words', '$sms_num', '$timestamp', '$send_time', '$timestamp', '等待发送', '$lfjdb[username]', '$onlineip', '$cost_num', '$send_money', '".($lfjdb[money]-$send_money)."', '')");
		return false;
}
function post_invoice($postdb){//将发票申请存入发票列表
		global $db,$pre,$lfjid,$onlineip,$timestamp,$sms_price,$sms_length;
		$postdb[money]=$postdb[money]*100;//元转换为分
		$db->query("INSERT INTO `ppsms`.`pp_invoice` (`inid`, `type`, `title`, `money`, `express_type`, `express_num`, `tax`, `content`, `receiver`, `receiver_tel`, `receiver_add`, `remarks`, `invoice_num`, `username`, `posttime`, `state`) VALUES (NULL, '$postdb[type]', '$postdb[title]', '$postdb[money]', '$postdb[express_type]', '', '$postdb[tax]', '$postdb[content]', '$postdb[receiver]', '$postdb[receiver_tel]', '$postdb[receiver_add]', '$postdb[remarks]', '', '$lfjid', '$timestamp', '等待处理')");
		return false;
}
function get_ajax($str){//将jquery或rewrite进来的utf8编辑转换成gbk并trim，现支持无限级数组
	if(is_array($str)){
			foreach($str AS $key=>$value){
					$listdb[$key]=get_ajax($value);
			}
			return $listdb;
	}else return trim(iconv('UTF-8','gb2312',$str));
}
function money2msg($money,$isint=true){//余额转换为转可发送短信数
	global $sms_price;
	if($isint)return (int)($money*1/$sms_price);
	else return $money*1/$sms_price;
}
function get_pay_sum($username){//获取充值总金额
	global $lfjid,$db,$pre;
	$username||$username=$lfjid;
	$rsdb=$db->get_one("SELECT COALESCE(SUM(money),0) AS num FROM {$pre}olpay WHERE username='$username' AND ifpay= '1' ");
	return $rsdb[num];
}
function get_invoice_sum($username){//已成功申请发票总金额
	global $lfjid,$db,$pre;
	$username||$username=$lfjid;
	$rsdb=$db->get_one("SELECT COALESCE(SUM(money),0) AS num FROM {$pre}invoice WHERE username='$username' AND state LIKE '申请成功' ");
	return $rsdb[num];
}
function get_my_invoices($username){//获取申请发票列表
	global $lfjid,$db,$pre;
	$username||$username=$lfjid;
	$query = $db->query("SELECT * FROM {$pre}invoice WHERE username='$username' AND state LIKE '等待处理' ORDER BY inid DESC ");
	while($rs = $db->fetch_array($query)){
		$rs[money]=$rs[money]/100;
		$rs[state_out]=state_color($rs[state]);
		$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
		$listdb[]=$rs;
	}
	return $listdb;
}
function get_my_moneylog($uid){//获取我的财务记录
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
function get_my_olpay($uid){//获取我的在线充值记录
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