<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");





if($job=="post"){
		$postdb=get_ajax($postdb);
		if($postdb[type]=="account"){//������Ϣ
				if(!$postdb[truename])die('{"name":"postdb[truename]","tips":"����д����������"}');
				if(!$postdb[sex])die('{"name":"postdb[sex]","tips":"����д�����Ա�"}');
				if(!$postdb[company])die('{"name":"postdb[company]","tips":"����д���Ĺ�˾���ƣ�"}');
				if(!$postdb[dept])die('{"name":"postdb[dept]","tips":"����д�����������ţ�"}');
				if(!$postdb[job])die('{"name":"postdb[job]","tips":"����д����ְλ���ƣ�"}');
				$array=array(
					"uid"=>$lfjuid,
					"username"=>$lfjid,
					"truename"=>$postdb[truename],
					"sex"=>$postdb[sex],
					"company"=>$postdb[company],
					"dept"=>$postdb[dept],
					"job"=>$postdb[job]
				);
				if($lfjdb[idcard_yz]&&($lfjdb[truename]!=$postdb[truename])){
					if(!$webdb[EditYzIdcard]){
						die('{"name":"postdb[truename]","tips":"�����������޸���������Ϊ�Ѿ���˹��ˣ�"}');
					}
				}
				$userDB->edit_user($array);
				die('{"name":"ok","tips":"��ϲ����������Ϣ�޸ĳɹ���"}');//urlΪ��ѡ����������ֵҳ���ύ��ɺ�ת���url
		}else if($postdb[type]=="contact"){//��ϵ��ʽ
				if($postdb[oicq]&&!ereg("^[0-9]{5,11}$",$postdb[oicq]))die('{"name":"postdb[oicq]","tips":"OICQ��ʽ�����Ϲ���"}');
				if($postdb[msn]&&!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$postdb[msn]))die('{"name":"postdb[msn]","tips":"MSN�����Ϲ���"}');
				if($postdb[postalcode]&&!ereg("^[0-9]{6}$",$postdb[postalcode]))die('{"name":"postdb[postalcode]","tips":"���������ʽ�����Ϲ���"}');
				$array=array(
					"uid"=>$lfjuid,
					"username"=>$lfjid,
					"telephone"=>$postdb[telephone],
					"oicq"=>$postdb[oicq],
					"msn"=>$postdb[msn],
					"postalcode"=>$postdb[postalcode],
					"address"=>$postdb[address]
				);
				$userDB->edit_user($array);
				die('{"name":"ok","tips":"��ϲ������ϵ��ʽ�޸ĳɹ���"}');
		}else if($postdb[type]=="validate"){//�˻���֤
				if($postdb[oicq]&&!ereg("^[0-9]{5,11}$",$postdb[oicq]))die('{"name":"postdb[oicq]","tips":"OICQ��ʽ�����Ϲ���"}');
				if($postdb[msn]&&!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$postdb[msn]))die('{"name":"postdb[msn]","tips":"MSN�����Ϲ���"}');
				if($postdb[postalcode]&&!ereg("^[0-9]{6}$",$postdb[postalcode]))die('{"name":"postdb[postalcode]","tips":"���������ʽ�����Ϲ���"}');
				$array=array(
					"uid"=>$lfjuid,
					"username"=>$lfjid,
					"telephone"=>$postdb[telephone],
					"oicq"=>$postdb[oicq],
					"msn"=>$postdb[msn],
					"postalcode"=>$postdb[postalcode],
					"address"=>$postdb[address]
				);
				$userDB->edit_user($array);
				die('{"name":"ok","tips":"��ϲ������֤��ʽ�޸ĳɹ���"}');
		}else if($postdb[type]=="password"){//�޸�����
				if(!$postdb[password])die('{"name":"postdb[password]","tips":"�����벻��Ϊ�գ�����д��"}');
				if($postdb[password]!=$postdb[password2])die('{"name":"postdb[password2]","tips":"�ظ����������������벻һ�£���ȷ�ϣ�"}');
				if(!$postdb[old_password])die('{"name":"postdb[old_password]","tips":"�޸����������������룡"}');
				if(!is_array($userDB->check_password($lfjid,$postdb[old_password])))die('{"name":"postdb[old_password]","tips":"�����벻��ȷ���������ȷ��������룡"}');
				$array=array(
					"uid"=>$lfjuid,
					"username"=>$lfjid,
					"password"=>$postdb[password]
				);
				$userDB->edit_user($array);
				$userDB->login($lfjid,$postdb[password],3600);
				die('{"name":"ok","tips":"��ϲ���������޸ĳɹ���"}');
		}die('{"name":"error","tips":"δָ���ύ���ͣ�"}');
}





		$sexdb[$lfjdb[sex]]=" checked ";
		if(!$webdb[EditYzEmail]&&$lfjdb[email_yz]){
			$ipunt_email=" readonly onclick=\"alert('���������,�������޸�')\" ";
		}elseif($lfjdb[email_yz]){
			$ipunt_email=" onclick=\"alert('���������,�޸ĵĻ�,�ᴦ��δ���״̬')\" ";
		}
		if(!$webdb[EditYzMob]&&$lfjdb[mob_yz]){
			$ipunt_mob=" readonly onclick=\"alert('�ֻ������,�������޸�')\"  ";
		}elseif($lfjdb[mob_yz]){
			$ipunt_mob=" onclick=\"alert('�ֻ������,�޸ĵĻ�,�ᴦ��δ���״̬')\"  ";
		}
		if(!$webdb[EditYzIdcard]&&$lfjdb[idcard_yz]){
			$ipunt_idcard=" class='readonly' readonly onclick=\"alert('���֤�����,�������޸�')\"  ";
		}elseif($lfjdb[idcard_yz]){
			$ipunt_idcard=" onclick=\"alert('���֤�����,�޸ĵĻ�,�ᴦ��δ���״̬')\"  ";
		}
		$lfjdb[postalcode]==0&&$lfjdb[postalcode]='';

require(ROOT_PATH."inc/head.php");
require(html("account"));
require(ROOT_PATH."inc/foot.php");
?>