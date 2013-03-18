<?php
require(dirname(__FILE__)."/"."global.php");

if($lfjid){die("请先退出后，再进行注册操作！");}

/*有校性校验*/
if(is_numeric($username))die("用户名不能全部为数字！");
if($password!=$password2)die("两次输入的密码不同，请确认！");

/*安全注册限制，5分钟内不能多次注册*/







/*注册用户并登录*/
$return_reg=reg_user($username,$password);
if($return_reg)die($return_reg);
else die("ok");

?>