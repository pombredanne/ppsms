<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");





$pay_sum=get_pay_sum()/100;						//��ֵ�ܽ��
$invoice_sum=get_invoice_sum()/100;			//�ѳɹ����뷢Ʊ�ܽ��
$invoice_can=$pay_sum-$invoice_sum;		//ʣ�໹���Կ����ٷ�Ʊ

if($action=='apply'){
		$postdb=get_ajax($postdb);
		if(!$postdb[type])die('{"name":"postdb[type]","tips":"��Ʊ���Ͳ���Ϊ�գ�����д��"}');
				if($postdb[type]!="��ҵ"&&$postdb[type]!="����")die('{"name":"postdb[type]","tips":"���ύ�ķ�Ʊ���Ͳ���ȷ��"}');
		if(!$postdb[title])die('{"name":"postdb[title]","tips":"��Ʊ̧ͷ����Ϊ�գ�����д��"}');
		if($postdb[money]=="")die('{"name":"postdb[money]","tips":"��Ʊ����Ϊ�գ�����д��"}');
				if($postdb[money]<=0)die('{"name":"postdb[money]","tips":"��Ʊ��������� 0 Ԫ��"}');
				//if($postdb[money]>=$invoice_can)die('{"name":"postdb[money]","tips":"Ŀǰ���������뷢Ʊ���Ϊ '.$invoice_can.' Ԫ��"}');
		if($postdb[express_type]==""||($postdb[express_type]!=0&&$postdb[express_type]!=12&&$postdb[express_type]!=22))die('{"name":"postdb[express_type]","tips":"�ʵݷ�ʽ����Ϊ�գ�����д��"}');
				if($postdb[express_type]>($lfjdb[money]/100))die('{"name":"postdb[express_type]","tips":"�������Ϊ '.($lfjdb[money]/100).' Ԫ��������֧���ʵݷ��� '.$postdb[express_type].' Ԫ�����ȳ�ֵ��"}');
		if(!$postdb[tax])die('{"name":"postdb[tax]","tips":"��˰��ʶ��Ų���Ϊ�գ�����д��"}');
		if(!$postdb[content])die('{"name":"postdb[content]","tips":"��Ʊ���ݲ���Ϊ�գ�����д��"}');
		if(!$postdb[receiver])die('{"name":"postdb[receiver]","tips":"�ռ�����������Ϊ�գ�����д��"}');
		if(!$postdb[receiver_tel])die('{"name":"postdb[receiver_tel]","tips":"�ռ��˵绰����Ϊ�գ�����д��"}');
		if(!$postdb[receiver_add])die('{"name":"postdb[receiver_add]","tips":"�ռ��˵�ַ����Ϊ�գ�����д��"}');
		if($result=post_invoice($postdb)){
				die('{"name":"ajax_submit","tips":"'.$result.'"}');
		};
		die('{"name":"ok","tips":"��ϲ������Ʊ����ɹ�����ȴ�������Ա��ˣ�","url":"'.$webdb[www_url].'/invoice?type=list"}');
}








require(ROOT_PATH."inc/head.php");
require(html("invoice"));
require(ROOT_PATH."inc/foot.php");
?>