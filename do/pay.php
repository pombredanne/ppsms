<?php
require(dirname(__FILE__)."/"."global.php");
if($trade_status||$job=="pay_finish"){//��ֵ�ɹ��ص���return AND notify
		$alipay_partner=$webdb[alipay_partner];
		$veryfy_result = file_get_contents("http://notify.alipay.com/trade/notify_query.do?notify_id=$notify_id&partner=$alipay_partner");
		if(!eregi("true$",$veryfy_result)){
				if($is_notify=="true")die("��ȫ��֤����У��ʧ�ܣ���ҪϹ��");
				else showerr('��ȫ��֤����У��ʧ�ܣ��޷���ɽ��ף�<hr>'.$veryfy_result);
		}
		olpay_end($out_trade_no);
		exit;
}
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");


if($job=='do'){
		if(!$money)showerr("��ֵ����Ϊ�գ�����д��");
		if(!eregi("^[0-9]+$",$money))showerr("��ֵ������Ϊ������");

		$return_url_out="$webdb[www]/pay?job=pay_finish&";
		$notify_url_out="$webdb[www]/pay?job=pay_finish&is_notify=true&";
		$title_out="Ϊ{$lfjid}������ŷ������";
		$content_out="Ϊ�ʺ�:$lfjid,���߸���������Ͷ��ŷ��ͷ��÷���";
		
		$array=olpay_send();
		$url  = $webdb['alipay_transport']."://www.alipay.com/cooperate/gateway.do?";
		//֧������һЩСBUG,Ҫ�ر�������
		if(eregi("^0",$array[numcode])){
			$array[numcode]="$array[numcode]code";
		}
		$para = array(
				'_input_charset' => 'gbk',
				'service'		 => $webdb['alipay_service'],	//��������
				'partner'		 => $webdb['alipay_partner'],		//�����̻���
				'notify_url'	 => $notify_url_out,		//�����������ϵͳ֪ͨ�ص�
				'return_url'	 => $return_url_out,		//ͬ������
				'payment_type'	 => 1,							//Ĭ��Ϊ1,����Ҫ�޸�
				'quantity'		 => 1,							//��Ʒ����,ǿ��Ϊ1,�ܶ���price�����
				'subject'		 => $title_out,			//��Ʒ���ƣ�����
				'body'			 => $content_out,			//��Ʒ����������
				'out_trade_no'	 => $array['numcode'],			//��Ʒ�ⲿ���׺ţ������֤Ψһ�ԣ�
				'price'		 => $array['money'],				//�ܶ�
				'seller_email'	 => $webdb['alipay_id'],		//�������䣬����
				'logistics_fee'		=> '0.00',        			//�������ͷ���
				'logistics_payment'	=> 'BUYER_PAY',   			//�������ø��ʽ��SELLER_PAY(����֧��)��BUYER_PAY(���֧��)��BUYER_PAY_AFTER_RECEIVE(��������)
				'logistics_type'	=> 'EXPRESS'    			//�������ͷ�ʽ��POST(ƽ��)��EMS(EMS)��EXPRESS(�������)
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








function olpay_send(){//������֧������
	global $db,$pre,$webdb,$money,$timestamp,$lfjuid,$lfjid,$webdb,$job;
	$money = intval($money);
	if($money<1){
		showerr("������ĳ�ֵ����С��1");
	}
	$array[money]=$money;
	$array[numcode]=strtolower(rands(10));
	$db->query("INSERT INTO {$pre}olpay (`numcode` , `money` , `posttime` , `uid` , `username`, `banktype`, `paytype` ) VALUES ('$array[numcode]','$array[money]','$timestamp','$lfjuid','$lfjid','alipay','1')");
	return $array;
}
function olpay_end($numcode){//����֧���ɹ��ص�����
	global $db,$pre,$webdb,$is_notify;
	$rt = $db->get_one("SELECT * FROM {$pre}olpay WHERE numcode='$numcode' AND `paytype`=1");
	if(!$rt){
		if($is_notify=="true")
		die("ϵͳ��û�����ĳ�ֵ�������޷���ɳ�ֵ��");
		else
		showerr('ϵͳ��û�����ĳ�ֵ�������޷���ɳ�ֵ��');
	}
	if($rt['ifpay'] == 1){
		if($is_notify=="true")
		die("�ñʽ����Ѿ��ɹ���");
		else
		showerr('�ñʽ����Ѿ��ɹ���');
	}
	$db->query("UPDATE {$pre}olpay SET ifpay='1' WHERE id='$rt[id]'");
	$num=$rt[money]*$webdb[alipay_scale];
	add_user($rt[uid],$num,"֧�������߳�ֵ");
	//��ֵ�ɹ�������֪ͨ�û�
	//send_sms_fast("$rt[username]","��ϲ������ֵ����ɹ��������{$rt[money]}Ԫ֧��������");
	if($is_notify=="true")
	die("success");
	else
	refreshto("$webdb[www_url]/pay?type=list","��ϲ�������߳�ֵ�ɹ����ѳɹ���ֵ{$rt[money]}Ԫ��",10);
}





require(ROOT_PATH."inc/head.php");
require(html("pay"));
require(ROOT_PATH."inc/foot.php");
?>