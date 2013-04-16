<?php
require(dirname(__FILE__)."/"."global.php");



//分组管理提示逻辑
if($action=="group"){
	$postdb=get_ajax($postdb);
	//处理保存修改分组
	foreach($postdb[old_group] AS $key=>$rs){
		if($key){
			$rs[order]||$rs[order]="0";
			if(trim($rs[name])=="")die('{"name":"postdb[old_group]['.$key.'][name]","tips":"分组名称不能为空，请填写"}');
			//检测重名分组
			if($rsdb=$db->get_one("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' AND name='$rs[name]' AND cgid<>$key "))
			die('{"name":"postdb[old_group]['.$key.'][name]","tips":"修改的分组名称不能有重名，请修改"}');
			//过滤分隔符|
			if(is_int(strpos($rs[name],"|")))die('{"name":"postdb[old_group]['.$key.'][name]","tips":"分组名称中不能包含字符：|"}');
			$db->query("UPDATE {$pre}crm_group SET name='$rs[name]',`order`='$rs[order]' WHERE cgid=$key AND username='$lfjid'");
			//同步修改客户分组信息
			$db->query("UPDATE {$pre}crm SET `group`=replace(`group`,'|$rsdb[name]|','|$rs[name]|') WHERE username='$lfjid'");
		}
	}
	//处理新建分组
	foreach($postdb[new_group] AS $key=>$value){
		if($value){
			$postdb[new_group_order][$key]||$postdb[new_group_order][$key]="0";
			//检测重名分组
			if($rsdb=$db->get_one("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' AND name='$value' "))
			die('{"name":"postdb[new_group][]","eq":"'.$key.'","tips":"新添加和已存在的分组名称不能重名，请修改"}');
			//过滤分隔符|
			if(is_int(strpos($value,"|")))die('{"name":"postdb[old_group]['.$key.'][name]","tips":"分组名称中不能包含字符：|"}');
			$sql_value.="(NULL,'$value','{$postdb[new_group_order][$key]}','0','$lfjid','$timestamp'),";
		}
	}
	if($sql_value)$db->query("INSERT INTO {$pre}crm_group (`cgid`, `name`, `order`, `num`, `username`, `posttime`) VALUES ".cut_end_str($sql_value));
	die('{"name":"ok","tips":"恭喜您，分组管理保存成功！","url":"'.$webdb[www_url].'/crm?type=group"}');
}else if($action=="del_group"){
	confirmm("本操作不可恢复，您确定要删除该分组吗？<br>注意: 删除分组并不会删除该组下的用户","$webdb[www_url]/crm?action=del_group_do&cgid=$cgid","增值功能,客户通讯录管理,分组管理");
}else if($action=="del_group_do"){
	//清空该用户的crm表中客户和该分组的关联
	$rsdb=get_rsdb("crm_group"," cgid='$cgid' ");	
	$db->query("UPDATE {$pre}crm SET `group`=replace(`group`,'|$rsdb[name]|','|') WHERE username='$lfjid'");
	//删除分组记录，并转向分组管理页面
	$db->query("DELETE FROM {$pre}crm_group WHERE cgid='$cgid' AND username='$lfjid'");
	refresh2("$webdb[www_url]/crm?type=group","分组成功删除。");
}else if($action=="add"){
	$postdb=get_ajax($postdb);
	if(!$postdb[truename])die('{"name":"postdb[truename]","tips":"请填写客户姓名！"}');
	if(!$postdb[mob])die('{"name":"postdb[mob]","tips":"请填写手机号码！"}');
	if(!eregi("^1(3|5|8)([0-9]{9})$",$postdb[mob]) )die('{"name":"postdb[mob]","tips":"手机号码格式不正确！"}');
	//检测手机号码是否保存过
	if($rsdb=$db->get_one("SELECT * FROM {$pre}crm WHERE username='$lfjid' AND mob='$postdb[mob]'"))
	die('{"name":"postdb[mob]","tips":"手机号码：'.$rsdb[mob].' 已存在客户通讯录，姓名为'.$rsdb[truename].'，不能重复请修改！"}');
	if($postdb[sex]=="")die('{"name":"postdb[sex]","tips":"请选择客户性别！"}');
	$postdb[group]&&$group_out="|".implode("|",$postdb[group])."|";
	if($postdb[postalcode]&&!ereg("^[0-9]{6}$",$postdb[postalcode]))die('{"name":"postdb[postalcode]","tips":"邮政编码格式不符合规则！"}');
	if ($postdb[email]&&!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$postdb[email]))die('{"name":"postdb[email]","tips":"邮箱不符合规则！"}');
	if($postdb[oicq]&&!ereg("^[0-9]{5,11}$",$postdb[oicq]))die('{"name":"postdb[oicq]","tips":"QQ格式不符合规则！"}');
	if($postdb[msn]&&!ereg("^[-a-zA-Z0-9_\.]+\@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$",$postdb[msn]))die('{"name":"postdb[msn]","tips":"MSN不符合规则！"}');
	update_group_num();
	if($postdb[crid]){
		$rsdb=get_rsdb("crm"," crid='$postdb[crid]' ");
		$db->query("UPDATE {$pre}crm SET `truename`='$postdb[truename]',`mob`='$postdb[mob]',`group`='$group_out',`sex`='$postdb[sex]',`bday`='$postdb[bday]',`company`='$postdb[company]',`dept`='$postdb[dept]',`job`='$postdb[job]',`address`='$postdb[address]',`postalcode`='$postdb[postalcode]',`email`='$postdb[email]',`telephone`='$postdb[telephone]',`oicq`='$postdb[oicq]',`msn`='$postdb[msn]',`note`='$postdb[note]' WHERE crid=$postdb[crid] AND username='$lfjid'");
		die('{"name":"ok","tips":"恭喜您，修改客户信息成功！","url":"'.$webdb[www_url].'/crm?action=search"}');
	}else{
			$db->query("INSERT INTO {$pre}crm(`crid` ,`truename` ,`mob` ,`group` ,`sex` ,`bday` ,`company` ,`dept` ,`job` ,`address` ,`postalcode` ,`email` ,`telephone` ,`oicq` ,`msn` ,`note` ,`posttime` ,`username`)VALUES (NULL ,  '$postdb[truename]',  '$postdb[mob]',  '$group_out',  '$postdb[sex]',  '$postdb[bday]',  '$postdb[company]',  '$postdb[dept]',  '$postdb[job]',  '$postdb[address]',  '$postdb[postalcode]',  '$postdb[email]', '$postdb[telephone]',  '$postdb[oicq]',  '$postdb[msn]',  '$postdb[note]',  '$timestamp',  '$lfjid')");
			die('{"name":"ok","tips":"恭喜您，新建客户保存成功！","url":"'.$webdb[www_url].'/crm?type=add"}');
	}
}else if($action=="search"){
	//搜索客户结果
	if(trim($postdb[truename])!=""){
		$postdb[truename]=explode(",",$postdb[truename]);
		$t_SQL_temp=" AND ( 0 ";
		foreach($postdb[truename] AS $key=>$rs){
			$rs=str_replace("*","%",$rs);
		   	$t_SQL_temp.=" OR truename LIKE '%".trim($rs)."%' ";
		}
		$t_SQL.=$t_SQL_temp.")";
	}
	if(trim($postdb[mob])!=""){
    	$t_SQL.=" AND mob LIKE '%".trim($postdb[mob])."%' ";
	}
	if(count($postdb[group])>0){
		$t_SQL_temp=" AND ( 0 ";
		foreach($postdb[group] AS $key=>$rs){
			$t_SQL_temp.=" OR `group` LIKE '%".$rs."|%' ";
		}
		$t_SQL.=$t_SQL_temp.")";
	}
	$query = $db->query("SELECT * FROM {$pre}crm WHERE username='$lfjid' $t_SQL ");
	while($rs = $db->fetch_array($query)){
		$rs[group]=str_replace("|",", ",cut_side_str($rs[group],"|"));
		$rs[group]||$rs[group]="<span class='gray'>无分组</span>";
		$rs[bday]=="0000-00-00"&&$rs[bday]="<span class='gray'>未设置</span>";
		if($rs[sex]==1)$rs[sex]="男";
		elseif($rs[sex]==2)$rs[sex]="女";
		else $rs[sex]="保密";
		$rs[company]="$rs[company] $rs[dept] $rs[job]";
		trim($rs[company])==""&&$rs[company]="<span class='gray'>未填写</span>";
		$listdb[]=$rs;
	}
}





//分组管理页面打开
if($type=="group"){
	//获取分组数据
	$query = $db->query("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' ORDER BY `order` DESC ");
	while($rs = $db->fetch_array($query)){
		$listdb[]=$rs;
	}
	
}else if($type=="add"){
	if($crid){//编辑
		$rsdb=get_rsdb("crm"," crid='$crid' ");
	}
	$group_out=get_crm_group_select("name='postdb[group][]' multiple='multiple' size='8' ",$rsdb[group],false);
	$sexdb[intval($rsdb[sex])]=' checked ';
}else{
	$group_out=get_crm_group_select("name='postdb[group][]' multiple='multiple' size='8' ",false);
}















function update_group_num($username=false){//更新某分员下客户分组的统计会员数
	global $lfjid,$db,$pre;
	$username||$username=$lfjid;
	$query = $db->query("SELECT name FROM {$pre}crm_group WHERE username='$username' ");
	while($rs = $db->fetch_array($query)){
		//逐个查询并统计数量
		$rsdb = $db->get_one("SELECT count(crid) num FROM {$pre}crm WHERE username='$username' AND `group` LIKE '%|$rs[name]|%' ");
		//逐个更新分组中的数量字段
		$db->query("UPDATE {$pre}crm_group SET num='$rsdb[num]' WHERE name='$rs[name]' AND username='$username'");
	}
}

require(ROOT_PATH."inc/head.php");
require(html("crm"));
require(ROOT_PATH."inc/foot.php");
?>