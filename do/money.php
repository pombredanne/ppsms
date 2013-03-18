<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("登录超时，请先登录后进行操作！");






require(ROOT_PATH."inc/head.php");
require(html("money"));
require(ROOT_PATH."inc/foot.php");
?>