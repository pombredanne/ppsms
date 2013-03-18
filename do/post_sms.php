<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");





if($job=="post"){
		$receiver=get_ajax($receiver);
		$message=get_ajax($message);
		if($receiver=="")die('{"name":"receiver","tips":"请输入接收号码"}');
		$receiver_arr=get_receiver_array($receiver);//获取接收号码为数组对象
		if($message=="")die('{"name":"message","tips":"请输入发送的短信内容"}');
		if($time=="true"&&!$time_date)die('{"name":"time_date","tips":"请设置定时发送的时间"}');
		
		
		
		
		//将需要发送的短信存在等待发送列表
		if($post_sms_error=post_sms($receiver_arr,$message,$time=="true"?strtotime("$time_date $time_hh:$time_ii:00"):$timestamp)){
				die('{"name":"error","tips":"'.$post_sms_error.'"}');
		};
		//pp_sms_list
		//返回提示成功后，转向页面ajax请求发送队列
		//PS:系统后台1分钟执行请求一次，若发现存在队列，则逐次不等候循环请求，每次5条。
		
		
		
		die('{"name":"ok","tips":"恭喜您，短信发送成功！","url":"'.$webdb[www_url].'/post_sms"}');//url为可选参数，若有值页面提交完成后将转向该url
}





function get_receiver_array($receiver){//获取接收号码为数组对象
		$receiver_temp=explode("\r\n",$receiver);
		foreach($receiver_temp AS $key=>$value){
				$value=str_replace(array("\n","\r","\t","'"),array("","","","\'"),trim($value));
				if($value=="")continue;
				if(strlen($value)>11){
						die('{"name":"receiver","tips":"接收号码：'.$value.' 的长度为'.strlen($value).'位不能大于11位"}');
						//die(json_encode(array ('name'=>'receiver','tips'=>"接收号码：$value 的长度为".strlen($value)."位不能大于11位")));
				}else if(strlen($value)<11){
						die('{"name":"receiver","tips":"接收号码：'.$value.' 的长度为'.strlen($value).'位不足11位"}');
						//die(json_encode(array ('name'=>'receiver','tips'=>"接收号码：$value 的长度为".strlen($value)."位不足11位")));
				}
				if(preg_match("/^13[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$/",$value)){//规则：所有13、15、18开头的所有11位数字
						//符合
				}else{
						//不符合
						die('{"name":"receiver","tips":"接收号码：'.$value.' 不符合号码规则"}');
						//die(json_encode(array ('name'=>'receiver','tips'=>"接收号码：$value 不符合号码规则")));
				}
				$receiver_arr[]=$value;
		}
		return $receiver_arr;
}


require(ROOT_PATH."inc/head.php");
require(html("post_sms"));
require(ROOT_PATH."inc/foot.php");
?>