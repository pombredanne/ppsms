<?php
require(dirname(__FILE__)."/"."global.php");
if($trade_status||$job=="pay_finish"){//充值成功回调，return AND notify
		$alipay_partner=$webdb[alipay_partner];
		$veryfy_result = file_get_contents("http://notify.alipay.com/trade/notify_query.do?notify_id=$notify_id&partner=$alipay_partner");
		if(!eregi("true$",$veryfy_result)){
				if($is_notify=="true")die("安全验证参数校验失败，不要瞎搞");
				else showerr('安全验证参数校验失败，无法完成交易！<hr>'.$veryfy_result);
		}
		olpay_end($out_trade_no);
		exit;
}
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");


if($job=='do'){
		if(!$money)showerr("充值金额不能为空，请填写！");
		if(!eregi("^[0-9]+$",$money))showerr("充值金额必须为整数！");

		$return_url_out="$webdb[www]/pay?job=pay_finish&";
		$notify_url_out="$webdb[www]/pay?job=pay_finish&is_notify=true&";
		$title_out="为{$lfjid}购买短信服务费用";
		$content_out="为帐号:$lfjid,在线付款购买拍拍送短信发送费用服务";
		
		$array=olpay_send();
		$url  = $webdb['alipay_transport']."://www.alipay.com/cooperate/gateway.do?";
		//支付宝的一些小BUG,要特别处理订单号
		if(eregi("^0",$array[numcode])){
			$array[numcode]="$array[numcode]code";
		}
		$para = array(
				'_input_charset' => 'gbk',
				'service'		 => $webdb['alipay_service'],	//交易类型
				'partner'		 => $webdb['alipay_partner'],		//合作商户号
				'notify_url'	 => $notify_url_out,		//本本添加用于系统通知回调
				'return_url'	 => $return_url_out,		//同步返回
				'payment_type'	 => 1,							//默认为1,不需要修改
				'quantity'		 => 1,							//商品数量,强制为1,总额在price处算好
				'subject'		 => $title_out,			//商品名称，必填
				'body'			 => $content_out,			//商品描述，必填
				'out_trade_no'	 => $array['numcode'],			//商品外部交易号，必填（保证唯一性）
				'price'		 => $array['money'],				//总额
				'seller_email'	 => $webdb['alipay_id'],		//卖家邮箱，必填
				'logistics_fee'		=> '0.00',        			//物流配送费用
				'logistics_payment'	=> 'BUYER_PAY',   			//物流费用付款方式：SELLER_PAY(卖家支付)、BUYER_PAY(买家支付)、BUYER_PAY_AFTER_RECEIVE(货到付款)
				'logistics_type'	=> 'EXPRESS'    			//物流配送方式：POST(平邮)、EMS(EMS)、EXPRESS(其他快递)
			);
		ksort($para);
		$and='';
		foreach($para as $key => $value){
			if($value!==''){
				$_url  .= $and."$key=$value";
				$url  .= $and."$key=".urlencode($value);
				$and="&";
			}
		}
		$sign=md5($_url.$webdb['alipay_key']);
		$url.="&sign=".$sign."&sign_type=MD5";
		header("location:$url");
		exit;
}








function olpay_send(){//请求发送支付链接
	global $db,$pre,$webdb,$money,$timestamp,$lfjuid,$lfjid,$webdb,$job;
	$money = intval($money);
	if($money<1){
		showerr("你输入的充值金额不能小于1");
	}
	$array[money]=$money;
	$array[numcode]=strtolower(rands(10));
	$db->query("INSERT INTO {$pre}olpay (`numcode` , `money` , `posttime` , `uid` , `username`, `banktype`, `paytype` ) VALUES ('$array[numcode]','$array[money]','$timestamp','$lfjuid','$lfjid','alipay','1')");
	return $array;
}
function olpay_end($numcode){//处理支付成功回调函数
	global $db,$pre,$webdb,$is_notify;
	$rt = $db->get_one("SELECT * FROM {$pre}olpay WHERE numcode='$numcode' AND `paytype`=1");
	if(!$rt){
		if($is_notify=="true")
		die("系统中没有您的充值订单，无法完成充值！");
		else
		showerr('系统中没有您的充值订单，无法完成充值！');
	}
	if($rt['ifpay'] == 1){
		if($is_notify=="true")
		die("该笔交易已经成功！");
		else
		showerr('该笔交易已经成功！');
	}
	$db->query("UPDATE {$pre}olpay SET ifpay='1' WHERE id='$rt[id]'");
	$num=$rt[money]*$webdb[alipay_scale];
	add_user($rt[uid],$num,"支付宝在线充值");
	//充值成功，短信通知用户
	//send_sms_fast("$rt[username]","恭喜您，充值服务成功，已完成{$rt[money]}元支付操作。");
	if($is_notify=="true")
	die("success");
	else
	refreshto("$webdb[www_url]/pay?type=list","恭喜您，在线充值成功，已成功充值{$rt[money]}元！",10);
}





require(ROOT_PATH."inc/head.php");
require(html("pay"));
require(ROOT_PATH."inc/foot.php");
?>