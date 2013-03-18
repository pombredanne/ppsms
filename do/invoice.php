<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");





$pay_sum=get_pay_sum()/100;						//充值总金额
$invoice_sum=get_invoice_sum()/100;			//已成功申请发票总金额
$invoice_can=$pay_sum-$invoice_sum;		//剩余还可以开多少发票

if($action=='apply'){
		$postdb=get_ajax($postdb);
		if(!$postdb[type])die('{"name":"postdb[type]","tips":"发票类型不能为空，请填写！"}');
				if($postdb[type]!="企业"&&$postdb[type]!="个人")die('{"name":"postdb[type]","tips":"您提交的发票类型不正确！"}');
		if(!$postdb[title])die('{"name":"postdb[title]","tips":"发票抬头不能为空，请填写！"}');
		if($postdb[money]=="")die('{"name":"postdb[money]","tips":"发票金额不能为空，请填写！"}');
				if($postdb[money]<=0)die('{"name":"postdb[money]","tips":"发票金额必须大于 0 元！"}');
				//if($postdb[money]>=$invoice_can)die('{"name":"postdb[money]","tips":"目前您最多可申请发票金额为 '.$invoice_can.' 元！"}');
		if($postdb[express_type]==""||($postdb[express_type]!=0&&$postdb[express_type]!=12&&$postdb[express_type]!=22))die('{"name":"postdb[express_type]","tips":"邮递方式不能为空，请填写！"}');
				if($postdb[express_type]>($lfjdb[money]/100))die('{"name":"postdb[express_type]","tips":"您的余额为 '.($lfjdb[money]/100).' 元，不足以支付邮递费用 '.$postdb[express_type].' 元，请先充值！"}');
		if(!$postdb[tax])die('{"name":"postdb[tax]","tips":"纳税人识别号不能为空，请填写！"}');
		if(!$postdb[content])die('{"name":"postdb[content]","tips":"发票内容不能为空，请填写！"}');
		if(!$postdb[receiver])die('{"name":"postdb[receiver]","tips":"收件人姓名不能为空，请填写！"}');
		if(!$postdb[receiver_tel])die('{"name":"postdb[receiver_tel]","tips":"收件人电话不能为空，请填写！"}');
		if(!$postdb[receiver_add])die('{"name":"postdb[receiver_add]","tips":"收件人地址不能为空，请填写！"}');
		if($result=post_invoice($postdb)){
				die('{"name":"ajax_submit","tips":"'.$result.'"}');
		};
		die('{"name":"ok","tips":"恭喜您，发票申请成功，请等待工作人员审核！","url":"'.$webdb[www_url].'/invoice?type=list"}');
}








require(ROOT_PATH."inc/head.php");
require(html("invoice"));
require(ROOT_PATH."inc/foot.php");
?>