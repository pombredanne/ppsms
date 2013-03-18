<?php
require(dirname(__FILE__)."/"."global.php");


//ำรปงตวยผ
$cookietime=$remember?2592000:0;
$return_login=login_user($username,$password,$cookietime);
if($return_login)die($return_login);
else die("ok");

?>