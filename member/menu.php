<?php
!function_exists('html') && exit('ERR');

unset($base_menudb,$menudb);

$base_menudb['查看个人资料']['link']='homepage.php';
$base_menudb['查看个人资料']['power']='2';

$base_menudb['修改个人资料']['link']='userinfo.php?job=edit';
$base_menudb['修改个人资料']['power']='2';

$base_menudb['站内短消息管理']['link']='pm.php?job=list';
$base_menudb['站内短消息管理']['power']='2';

$base_menudb['稿件管理']['link']='list.php';
$base_menudb['稿件管理']['power']='2';

$base_menudb['评论管理']['link']='comment.php?job=work';
$base_menudb['评论管理']['power']='2';

$menudb['基本功能']['修改个人资料']['link']='userinfo.php?job=edit';
$menudb['基本功能']['站内短消息']['link']='pm.php?job=list';
$menudb['基本功能']['积分充值']['link']='money.php?job=list';
$menudb['基本功能']['购买会员等级']['link']='buygroup.php?job=list';
$ModuleDB['hy_'] && $menudb['基本功能']['企业信息']['link']='company.php?job=edit';
$menudb['基本功能']['身份验证']['link']='yz.php?job=email';
$menudb['基本功能']['积分消费记录']['link']='moneylog.php?job=list';
$menudb['基本功能']['购买空间']['link']='buyspace.php';
$menudb['基本功能']['订单管理']['link']='shoporder.php';

 

$menudb['CMS其它功能']['收藏夹管理']['link']='collection.php?job=myarticle';
$menudb['CMS其它功能']['专题管理']['link']='special.php?job=listsp';
$menudb['CMS其它功能']['评论管理']['link']='comment.php?job=list';



$menudb['CMS频道']['发表文章']['link']='post.php?job=postnew&only=1&mid=0';
$menudb['CMS频道']['管理文章']['link']='myarticle.php?job=myarticle&only=1&mid=0';

$menudb['CMS频道']['发布图片']['link']='post.php?job=postnew&only=1&mid=100';
$menudb['CMS频道']['管理图片']['link']='myarticle.php?job=myarticle&only=1&mid=100';

$menudb['CMS频道']['发布软件']['link']='post.php?job=postnew&only=1&mid=101';
$menudb['CMS频道']['管理软件']['link']='myarticle.php?job=myarticle&only=1&mid=101';

$menudb['CMS频道']['发布视频']['link']='post.php?job=postnew&only=1&mid=102';
$menudb['CMS频道']['管理视频']['link']='myarticle.php?job=myarticle&only=1&mid=102';

$menudb['CMS频道']['发布商品']['link']='post.php?job=postnew&only=1&mid=103';
$menudb['CMS频道']['管理商品']['link']='myarticle.php?job=myarticle&only=1&mid=103';

$menudb['CMS频道']['发布FLASH']['link']='post.php?job=postnew&only=1&mid=104';
$menudb['CMS频道']['管理FLASH']['link']='myarticle.php?job=myarticle&only=1&mid=104';


//获取插件功能的菜单
$query = $db->query("SELECT * FROM {$pre}hack ORDER BY list DESC");
while($rs = $db->fetch_array($query)){
	if(is_file(ROOT_PATH."hack/$rs[keywords]/member_menu.php")){
		$array = include(ROOT_PATH."hack/$rs[keywords]/member_menu.php");
		$menudb['插件功能']["$array[name]"]['link']=$array['url'];
	}
}
?>