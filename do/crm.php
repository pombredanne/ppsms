<?php
require(dirname(__FILE__)."/"."global.php");



//分组管理提示逻辑
if($action=="group"){
	$postdb=get_ajax($postdb);
	//处理新建分组
	foreach($postdb[new_group] AS $key=>$value){
		if($value){
			$postdb[new_group_order][$key]||$postdb[new_group_order][$key]="0";
			$sql_value.="(NULL,'$value','{$postdb[new_group_order][$key]}','0','$lfjid','$timestamp'),";
		}
	}
	if($sql_value)$db->query("INSERT INTO {$pre}crm_group (`cgid`, `name`, `order`, `num`, `username`, `posttime`) VALUES ".cut_end_str($sql_value));
	//处理保存分组
	foreach($postdb[old_group] AS $key=>$rs){
		if($key){
			$rs[order]||$rs[order]="0";
			if(trim($rs[name])=="")die('{"name":"postdb[old_group]['.$key.'][name]","tips":"分组名称不能为空，请填写"}');
			$db->query("UPDATE {$pre}crm_group SET name='$rs[name]',`order`='$rs[order]' WHERE cgid=$key AND username='$lfjid'");
		}
	}
	die('{"name":"ok","tips":"恭喜您，分组管理保存成功！","url":"'.$webdb[www_url].'/crm?type=group"}');
}else if($action=="del_group"){
	confirmm("本操作不可恢复，您确定要删除该分组吗？<br>注意: 删除分组并不会删除该组下的用户","$webdb[www_url]/crm?action=del_group_do&cgid=$cgid","增值功能,客户通讯录管理,分组管理");
}else if($action=="del_group_do"){
	//删除id，并转向分组管理页面
	$db->query("DELETE FROM {$pre}crm_group WHERE cgid='$cgid' AND username='$lfjid'");
	refresh2("$webdb[www_url]/crm?type=group","分组成功删除。");
}

//分组管理页面打开
if($type=="group"){
	//获取分组数据
	$query = $db->query("SELECT * FROM {$pre}crm_group WHERE username='$lfjid' ORDER BY `order` DESC ");
	while($rs = $db->fetch_array($query)){
		$listdb[]=$rs;
	}
	
}







require(ROOT_PATH."inc/head.php");
require(html("crm"));
require(ROOT_PATH."inc/foot.php");
?>