<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");





if($job=="post"){
		$receiver=get_ajax($receiver);
		$message=get_ajax($message);
		if($receiver=="")die('{"name":"receiver","tips":"��������պ���"}');
		$receiver_arr=get_receiver_array($receiver);//��ȡ���պ���Ϊ�������
		if($message=="")die('{"name":"message","tips":"�����뷢�͵Ķ�������"}');
		if($time=="true"&&!$time_date)die('{"name":"time_date","tips":"�����ö�ʱ���͵�ʱ��"}');
		
		
		
		
		//����Ҫ���͵Ķ��Ŵ��ڵȴ������б�
		if($post_sms_error=post_sms($receiver_arr,$message,$time=="true"?strtotime("$time_date $time_hh:$time_ii:00"):$timestamp)){
				die('{"name":"error","tips":"'.$post_sms_error.'"}');
		};
		//pp_sms_list
		//������ʾ�ɹ���ת��ҳ��ajax�����Ͷ���
		//PS:ϵͳ��̨1����ִ������һ�Σ������ִ��ڶ��У�����β��Ⱥ�ѭ������ÿ��5����
		
		
		
		die('{"name":"ok","tips":"��ϲ�������ŷ��ͳɹ���","url":"'.$webdb[www_url].'/post_sms"}');//urlΪ��ѡ����������ֵҳ���ύ��ɺ�ת���url
}





function get_receiver_array($receiver){//��ȡ���պ���Ϊ�������
		$receiver_temp=explode("\r\n",$receiver);
		foreach($receiver_temp AS $key=>$value){
				$value=str_replace(array("\n","\r","\t","'"),array("","","","\'"),trim($value));
				if($value=="")continue;
				if(strlen($value)>11){
						die('{"name":"receiver","tips":"���պ��룺'.$value.' �ĳ���Ϊ'.strlen($value).'λ���ܴ���11λ"}');
						//die(json_encode(array ('name'=>'receiver','tips'=>"���պ��룺$value �ĳ���Ϊ".strlen($value)."λ���ܴ���11λ")));
				}else if(strlen($value)<11){
						die('{"name":"receiver","tips":"���պ��룺'.$value.' �ĳ���Ϊ'.strlen($value).'λ����11λ"}');
						//die(json_encode(array ('name'=>'receiver','tips'=>"���պ��룺$value �ĳ���Ϊ".strlen($value)."λ����11λ")));
				}
				if(preg_match("/^13[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$/",$value)){//��������13��15��18��ͷ������11λ����
						//����
				}else{
						//������
						die('{"name":"receiver","tips":"���պ��룺'.$value.' �����Ϻ������"}');
						//die(json_encode(array ('name'=>'receiver','tips'=>"���պ��룺$value �����Ϻ������")));
				}
				$receiver_arr[]=$value;
		}
		return $receiver_arr;
}


require(ROOT_PATH."inc/head.php");
require(html("post_sms"));
require(ROOT_PATH."inc/foot.php");
?>