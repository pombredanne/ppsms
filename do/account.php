<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");





if($job=="post"){
		$postdb=get_ajax($postdb);
		if($postdb[type]=="account"){//个人信息
				if(!$postdb[truename])die('{"name":"postdb[truename]","tips":"请填写您的姓名！"}');
				if(!$postdb[sex])die('{"name":"postdb[sex]","tips":"请填写您的性别！"}');
				if(!$postdb[company])die('{"name":"postdb[company]","tips":"请填写您的公司名称！"}');
				if(!$postdb[dept])die('{"name":"postdb[dept]","tips":"请填写您的所属部门！"}');
				if(!$postdb[job])die('{"name":"postdb[job]","tips":"请填写您的职位名称！"}');
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
						die('{"name":"postdb[truename]","tips":"您不可以再修改姓名，因为已经审核过了！"}');
					}
				}
				$userDB->edit_user($array);
				die('{"name":"ok","tips":"恭喜您，个人信息修改成功！"}');//url为可选参数，若有值页面提交完成后将转向该url
		}else if($postdb[type]=="contact"){//联系方式
				if($postdb[oicq]&&!ereg("^[0-9]{5,11}$",$postdb[oicq]))die('{"name":"postdb[oicq]","tips":"OICQ格式不符合规则！"}');
				if($postdb[msn]&&!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$postdb[msn]))die('{"name":"postdb[msn]","tips":"MSN不符合规则！"}');
				if($postdb[postalcode]&&!ereg("^[0-9]{6}$",$postdb[postalcode]))die('{"name":"postdb[postalcode]","tips":"邮政编码格式不符合规则！"}');
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
				die('{"name":"ok","tips":"恭喜您，联系方式修改成功！"}');
		}else if($postdb[type]=="validate"){//账户认证
				if($postdb[oicq]&&!ereg("^[0-9]{5,11}$",$postdb[oicq]))die('{"name":"postdb[oicq]","tips":"OICQ格式不符合规则！"}');
				if($postdb[msn]&&!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$postdb[msn]))die('{"name":"postdb[msn]","tips":"MSN不符合规则！"}');
				if($postdb[postalcode]&&!ereg("^[0-9]{6}$",$postdb[postalcode]))die('{"name":"postdb[postalcode]","tips":"邮政编码格式不符合规则！"}');
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
				die('{"name":"ok","tips":"恭喜您，认证方式修改成功！"}');
		}else if($postdb[type]=="password"){//修改密码
				if(!$postdb[password])die('{"name":"postdb[password]","tips":"新密码不能为空，请填写！"}');
				if($postdb[password]!=$postdb[password2])die('{"name":"postdb[password2]","tips":"重复输入密码与新密码不一致，请确认！"}');
				if(!$postdb[old_password])die('{"name":"postdb[old_password]","tips":"修改密码必须输入旧密码！"}');
				if(!is_array($userDB->check_password($lfjid,$postdb[old_password])))die('{"name":"postdb[old_password]","tips":"旧密码不正确，请必须正确输入旧密码！"}');
				$array=array(
					"uid"=>$lfjuid,
					"username"=>$lfjid,
					"password"=>$postdb[password]
				);
				$userDB->edit_user($array);
				$userDB->login($lfjid,$postdb[password],3600);
				die('{"name":"ok","tips":"恭喜您，密码修改成功！"}');
		}die('{"name":"error","tips":"未指定提交类型！"}');
}





		$sexdb[$lfjdb[sex]]=" checked ";
		if(!$webdb[EditYzEmail]&&$lfjdb[email_yz]){
			$ipunt_email=" readonly onclick=\"alert('邮箱已审核,不可再修改')\" ";
		}elseif($lfjdb[email_yz]){
			$ipunt_email=" onclick=\"alert('邮箱已审核,修改的话,会处于未审核状态')\" ";
		}
		if(!$webdb[EditYzMob]&&$lfjdb[mob_yz]){
			$ipunt_mob=" readonly onclick=\"alert('手机已审核,不可再修改')\"  ";
		}elseif($lfjdb[mob_yz]){
			$ipunt_mob=" onclick=\"alert('手机已审核,修改的话,会处于未审核状态')\"  ";
		}
		if(!$webdb[EditYzIdcard]&&$lfjdb[idcard_yz]){
			$ipunt_idcard=" class='readonly' readonly onclick=\"alert('身份证已审核,不可再修改')\"  ";
		}elseif($lfjdb[idcard_yz]){
			$ipunt_idcard=" onclick=\"alert('身份证已审核,修改的话,会处于未审核状态')\"  ";
		}
		$lfjdb[postalcode]==0&&$lfjdb[postalcode]='';

require(ROOT_PATH."inc/head.php");
require(html("account"));
require(ROOT_PATH."inc/foot.php");
?>