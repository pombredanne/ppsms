DROP TABLE IF EXISTS pp_ad_compete_place;
CREATE TABLE `pp_ad_compete_place` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `price` mediumint(5) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `adnum` smallint(3) NOT NULL DEFAULT '0',
  `wordnum` smallint(3) NOT NULL DEFAULT '0',
  `autoyz` tinyint(1) NOT NULL DEFAULT '1',
  `demourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_ad_compete_user;
CREATE TABLE `pp_ad_compete_user` (
  `ad_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `money` mediumint(6) NOT NULL DEFAULT '0',
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `adlink` varchar(200) NOT NULL DEFAULT '',
  `adword` varchar(255) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `color` varchar(20) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`),
  KEY `id` (`id`,`endtime`,`money`,`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_ad_config;
CREATE TABLE `pp_ad_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_ad_norm_place;
CREATE TABLE `pp_ad_norm_place` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `adcode` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(6) NOT NULL DEFAULT '0',
  `moneycard` mediumint(6) NOT NULL DEFAULT '0',
  `ifsale` tinyint(1) NOT NULL DEFAULT '0',
  `autoyz` tinyint(1) NOT NULL DEFAULT '0',
  `demourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_ad_norm_user;
CREATE TABLE `pp_ad_norm_user` (
  `u_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `u_uid` mediumint(7) NOT NULL DEFAULT '0',
  `u_username` varchar(30) NOT NULL DEFAULT '',
  `u_day` smallint(4) NOT NULL DEFAULT '0',
  `u_begintime` int(10) NOT NULL DEFAULT '0',
  `u_endtime` int(10) NOT NULL DEFAULT '0',
  `u_hits` mediumint(7) NOT NULL DEFAULT '0',
  `u_yz` tinyint(1) NOT NULL DEFAULT '0',
  `u_code` text NOT NULL,
  `u_money` mediumint(7) NOT NULL DEFAULT '0',
  `u_moneycard` mediumint(7) NOT NULL DEFAULT '0',
  `u_posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u_id`),
  KEY `u_endtime` (`u_endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_admin_menu;
CREATE TABLE `pp_admin_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `groupid` mediumint(5) NOT NULL DEFAULT '0',
  `iftier` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_alonepage;
CREATE TABLE `pp_alonepage` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `tpl_head` varchar(50) NOT NULL DEFAULT '',
  `tpl_main` varchar(50) NOT NULL DEFAULT '',
  `tpl_foot` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_area;
CREATE TABLE `pp_area` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article;
CREATE TABLE `pp_article` (
  `aid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '',
  `smalltitle` varchar(100) NOT NULL DEFAULT '',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `pages` smallint(4) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `copyfrom` varchar(100) NOT NULL DEFAULT '',
  `copyfromurl` varchar(150) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `picurl` varchar(150) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `iframeurl` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `allowdown` varchar(150) NOT NULL DEFAULT '',
  `allowview` varchar(150) NOT NULL DEFAULT '',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `lastview` int(10) NOT NULL DEFAULT '0',
  `digg_num` mediumint(7) NOT NULL DEFAULT '0',
  `digg_time` int(10) NOT NULL DEFAULT '0',
  `forbidcomment` tinyint(1) NOT NULL DEFAULT '0',
  `ifvote` tinyint(1) NOT NULL DEFAULT '0',
  `heart` varchar(255) NOT NULL DEFAULT '',
  `htmlname` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `fid` (`fid`),
  KEY `hits` (`hits`,`yz`,`fid`,`ispic`),
  KEY `lastview` (`yz`,`lastview`,`fid`,`ispic`),
  KEY `list` (`list`,`yz`,`fid`,`ispic`),
  KEY `ispic` (`ispic`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `digg_num` (`digg_num`),
  KEY `digg_time` (`digg_time`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_100;
CREATE TABLE `pp_article_content_100` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `photourl` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_101;
CREATE TABLE `pp_article_content_101` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `day_hits` mediumint(7) NOT NULL DEFAULT '0',
  `week_hits` mediumint(7) NOT NULL DEFAULT '0',
  `month_hits` mediumint(7) NOT NULL DEFAULT '0',
  `total_hits` mediumint(7) NOT NULL DEFAULT '0',
  `hits_time` int(10) NOT NULL DEFAULT '0',
  `hits_user` text NOT NULL,
  `my_author` varchar(30) NOT NULL DEFAULT '',
  `my_copyfromurl` varchar(150) NOT NULL DEFAULT '',
  `my_demo` varchar(150) NOT NULL DEFAULT '',
  `operatingsystem` varchar(150) NOT NULL DEFAULT '',
  `softlanguage` varchar(30) NOT NULL DEFAULT '',
  `copyright` varchar(30) NOT NULL DEFAULT '',
  `softsize` varchar(20) NOT NULL DEFAULT '',
  `softurl` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_102;
CREATE TABLE `pp_article_content_102` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `day_hits` mediumint(7) NOT NULL DEFAULT '0',
  `week_hits` mediumint(7) NOT NULL DEFAULT '0',
  `month_hits` mediumint(7) NOT NULL DEFAULT '0',
  `total_hits` mediumint(7) NOT NULL DEFAULT '0',
  `hits_time` int(10) NOT NULL DEFAULT '0',
  `hits_user` text NOT NULL,
  `mvurl` mediumtext NOT NULL,
  `my_role` varchar(100) NOT NULL DEFAULT '',
  `my_lang` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_103;
CREATE TABLE `pp_article_content_103` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `shoptype` varchar(50) NOT NULL DEFAULT '',
  `martprice` varchar(15) NOT NULL DEFAULT '',
  `nowprice` varchar(20) NOT NULL DEFAULT '',
  `shop_id` varchar(30) NOT NULL DEFAULT '',
  `shopmoney` int(7) NOT NULL DEFAULT '0',
  `shopnum` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_104;
CREATE TABLE `pp_article_content_104` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `flashurl` varchar(150) NOT NULL DEFAULT '',
  `flashauthor` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_105;
CREATE TABLE `pp_article_content_105` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `my_type` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_db;
CREATE TABLE `pp_article_db` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_module;
CREATE TABLE `pp_article_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `alias` varchar(30) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `config` mediumtext NOT NULL,
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `ifclose` tinyint(1) NOT NULL DEFAULT '0',
  `iftable` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_channel;
CREATE TABLE `pp_channel` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `sort` smallint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `path` varchar(30) NOT NULL DEFAULT '',
  `phpname` varchar(255) NOT NULL DEFAULT '',
  `htmlname` varchar(255) NOT NULL DEFAULT '',
  `fids` varchar(255) NOT NULL DEFAULT '',
  `showfid` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `head_tpl` varchar(255) NOT NULL DEFAULT '',
  `main_tpl` varchar(255) NOT NULL DEFAULT '',
  `foot_tpl` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `admin` varchar(150) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_collection;
CREATE TABLE `pp_collection` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_comment;
CREATE TABLE `pp_comment` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ifcom` tinyint(1) NOT NULL DEFAULT '0',
  `agree` mediumint(5) NOT NULL DEFAULT '0',
  `disagree` mediumint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `aid` (`aid`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `ifcom` (`ifcom`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_config;
CREATE TABLE `pp_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_copyfrom;
CREATE TABLE `pp_copyfrom` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keywords` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_crm_group;
CREATE TABLE `pp_crm_group` (
  `cgid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '分组名称',
  `order` int(10) NOT NULL COMMENT '排序值',
  `num` mediumint(7) NOT NULL COMMENT '分组下用户数',
  `username` varchar(30) NOT NULL COMMENT '所属用户',
  `posttime` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`cgid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk COMMENT='客户所在分组';


DROP TABLE IF EXISTS pp_crontab;
CREATE TABLE `pp_crontab` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `minutetime` mediumint(4) NOT NULL DEFAULT '0',
  `daytime` varchar(4) NOT NULL DEFAULT '0',
  `whiletime` int(10) NOT NULL DEFAULT '0',
  `lasttime` int(10) NOT NULL DEFAULT '0',
  `filepath` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `ifstop` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ifstop` (`ifstop`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_config;
CREATE TABLE `pp_form_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content;
CREATE TABLE `pp_form_content` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hits` (`hits`,`yz`),
  KEY `list` (`list`,`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_1;
CREATE TABLE `pp_form_content_1` (
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `oicq` varchar(10) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `interest` mediumtext NOT NULL,
  `introduce` mediumtext NOT NULL,
  `sortname` varchar(40) NOT NULL DEFAULT '',
  `webtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_2;
CREATE TABLE `pp_form_content_2` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `workplace` varchar(100) NOT NULL DEFAULT '',
  `nums` varchar(10) NOT NULL DEFAULT '',
  `jobrequire` mediumtext NOT NULL,
  `workwhere` varchar(50) NOT NULL DEFAULT '',
  `wage` varchar(30) NOT NULL DEFAULT '',
  `asksex` int(1) NOT NULL DEFAULT '0',
  `schoo_age` varchar(20) NOT NULL DEFAULT '',
  `wageyear` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_3;
CREATE TABLE `pp_form_content_3` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `advicetype` varchar(30) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `truename` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_4;
CREATE TABLE `pp_form_content_4` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(2) NOT NULL DEFAULT '0',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  `metier` varchar(30) NOT NULL DEFAULT '',
  `my_song` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_5;
CREATE TABLE `pp_form_content_5` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `bday` varchar(25) NOT NULL DEFAULT '',
  `school_age` varchar(20) NOT NULL DEFAULT '',
  `native` varchar(30) NOT NULL DEFAULT '',
  `specialty` varchar(40) NOT NULL DEFAULT '',
  `skill` varchar(50) NOT NULL DEFAULT '',
  `sport` varchar(80) NOT NULL DEFAULT '',
  `height` int(3) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `oicq` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `idcard` varchar(18) NOT NULL DEFAULT '',
  `cp_title` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_6;
CREATE TABLE `pp_form_content_6` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `workposition` varchar(50) NOT NULL DEFAULT '',
  `experience` mediumtext NOT NULL,
  `workyear` int(2) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `schoo_age` varchar(15) NOT NULL DEFAULT '',
  `myage` int(2) NOT NULL DEFAULT '0',
  `graduateschool` varchar(40) NOT NULL DEFAULT '',
  `specialty` varchar(50) NOT NULL DEFAULT '',
  `skill` varchar(50) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `wage` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `worktime` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_7;
CREATE TABLE `pp_form_content_7` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `product` varchar(50) NOT NULL DEFAULT '',
  `paymoney` varchar(15) NOT NULL DEFAULT '',
  `paytime` varchar(15) NOT NULL DEFAULT '',
  `paytype` varchar(25) NOT NULL DEFAULT '',
  `sendbank` varchar(30) NOT NULL DEFAULT '',
  `receivebank` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_8;
CREATE TABLE `pp_form_content_8` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `roomtype` varchar(30) NOT NULL DEFAULT '',
  `roomnum` int(3) NOT NULL DEFAULT '0',
  `numday` int(3) NOT NULL DEFAULT '0',
  `intotime` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_module;
CREATE TABLE `pp_form_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` mediumtext NOT NULL,
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `about` text NOT NULL,
  `usetitle` tinyint(1) NOT NULL DEFAULT '0',
  `repeatpost` tinyint(1) NOT NULL DEFAULT '0',
  `statename` varchar(30) NOT NULL DEFAULT '',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_reply;
CREATE TABLE `pp_form_reply` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `mid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_friendlink;
CREATE TABLE `pp_friendlink` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` int(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `iswordlink` tinyint(1) DEFAULT NULL,
  `hits` tinyint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `endtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_friendlink_sort;
CREATE TABLE `pp_friendlink_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_fu_article;
CREATE TABLE `pp_fu_article` (
  `fid` int(7) NOT NULL DEFAULT '0',
  `aid` int(10) NOT NULL DEFAULT '0',
  KEY `fid` (`fid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_fu_sort;
CREATE TABLE `pp_fu_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fmid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `domain_dir` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`fmid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_gather_rule;
CREATE TABLE `pp_gather_rule` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL DEFAULT '0',
  `fixsystem` varchar(30) NOT NULL DEFAULT '',
  `filetype` varchar(50) NOT NULL DEFAULT '',
  `webname` varchar(150) NOT NULL DEFAULT '',
  `listurl` varchar(150) NOT NULL DEFAULT '',
  `firstpage` varchar(150) NOT NULL DEFAULT '',
  `page_begin` int(10) NOT NULL DEFAULT '0',
  `page_end` int(10) NOT NULL DEFAULT '0',
  `page_step` int(10) NOT NULL DEFAULT '0',
  `title_minleng` smallint(5) NOT NULL DEFAULT '0',
  `listmoreurl` text NOT NULL,
  `link_include_word` text NOT NULL,
  `link_noinclude_word` text NOT NULL,
  `link_replace_word` text NOT NULL,
  `title_replace_word` text NOT NULL,
  `list_begin_code` text NOT NULL,
  `list_end_code` text NOT NULL,
  `list_begin_preg` text NOT NULL,
  `list_end_preg` text NOT NULL,
  `gatherthesame` tinyint(1) NOT NULL DEFAULT '0',
  `show_begin_preg` text NOT NULL,
  `show_end_preg` text NOT NULL,
  `show_endfile_preg` text NOT NULL,
  `show_begin_code` text NOT NULL,
  `show_end_code` text NOT NULL,
  `show_replace_word` text NOT NULL,
  `show_morepage` varchar(100) NOT NULL DEFAULT '',
  `show_firstpage` varchar(100) NOT NULL DEFAULT '',
  `show_spe2page` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `copypic` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(4) NOT NULL DEFAULT '0',
  `file_type` varchar(50) NOT NULL DEFAULT '',
  `file_minleng` mediumint(6) NOT NULL DEFAULT '0',
  `file_minsize` int(9) NOT NULL DEFAULT '0',
  `file_includeword` text NOT NULL,
  `file_noincludeword` text NOT NULL,
  `file_explode` text NOT NULL,
  `file_picwidth` int(8) NOT NULL DEFAULT '0',
  `file_star_string` varchar(150) NOT NULL DEFAULT '',
  `title_rule` text NOT NULL,
  `content_rule` text NOT NULL,
  `title_morepage_rull` text NOT NULL,
  `content_morepage_rull` text NOT NULL,
  `charset_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_gather_sort;
CREATE TABLE `pp_gather_sort` (
  `fid` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '',
  `fup` mediumint(6) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `list` mediumint(5) NOT NULL DEFAULT '0',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_group;
CREATE TABLE `pp_group` (
  `gid` smallint(4) NOT NULL AUTO_INCREMENT,
  `gptype` tinyint(1) NOT NULL DEFAULT '0',
  `grouptitle` varchar(50) NOT NULL DEFAULT '',
  `levelnum` mediumint(7) NOT NULL DEFAULT '0',
  `totalspace` int(10) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `powerdb` text NOT NULL,
  `allowadmin` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmindb` text,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_guestbook_config;
CREATE TABLE `pp_guestbook_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_guestbook_content;
CREATE TABLE `pp_guestbook_content` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `ico` tinyint(2) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) DEFAULT NULL,
  `weburl` varchar(150) NOT NULL DEFAULT '',
  `blogurl` varchar(150) NOT NULL DEFAULT '',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `reply` text NOT NULL,
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_guestbook_sort;
CREATE TABLE `pp_guestbook_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_hack;
CREATE TABLE `pp_hack` (
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(30) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `htmlcode` text NOT NULL,
  `hackfile` text NOT NULL,
  `hacksqltable` text NOT NULL,
  `adminurl` varchar(150) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `class1` varchar(30) NOT NULL DEFAULT '',
  `class2` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `linkname` text NOT NULL,
  `isbiz` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_invoice;
CREATE TABLE `pp_invoice` (
  `inid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL COMMENT '类型',
  `title` varchar(150) NOT NULL COMMENT '抬头',
  `money` mediumint(7) NOT NULL COMMENT '金额',
  `express_type` mediumint(4) NOT NULL COMMENT '邮递类型',
  `express_num` varchar(30) NOT NULL COMMENT '快递号',
  `tax` varchar(30) NOT NULL COMMENT '税号',
  `content` varchar(255) NOT NULL COMMENT '发票内容',
  `receiver` varchar(30) NOT NULL COMMENT '收件人',
  `receiver_tel` varchar(25) NOT NULL COMMENT '收件人电话',
  `receiver_add` varchar(255) NOT NULL COMMENT '收件人地址',
  `remarks` varchar(255) NOT NULL COMMENT '备注',
  `invoice_num` varchar(30) NOT NULL COMMENT '发票号',
  `username` varchar(30) NOT NULL COMMENT '提交人',
  `posttime` int(10) NOT NULL COMMENT '提交时间',
  `state` varchar(12) NOT NULL COMMENT '状态',
  PRIMARY KEY (`inid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk COMMENT='发票申请表';


DROP TABLE IF EXISTS pp_jfabout;
CREATE TABLE `pp_jfabout` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_jfsort;
CREATE TABLE `pp_jfsort` (
  `fid` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_keyword;
CREATE TABLE `pp_keyword` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `num` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keywords` (`keywords`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_keywordid;
CREATE TABLE `pp_keywordid` (
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_label;
CREATE TABLE `pp_label` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `ch` smallint(4) NOT NULL DEFAULT '0',
  `chtype` tinyint(2) NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `typesystem` tinyint(1) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  `divcode` text,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `js_time` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `pagetype` tinyint(3) NOT NULL DEFAULT '0',
  `module` mediumint(6) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `if_js` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`lid`),
  KEY `ch` (`ch`,`pagetype`,`module`,`fid`,`chtype`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=740 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_limitword;
CREATE TABLE `pp_limitword` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `oldword` varchar(50) NOT NULL DEFAULT '',
  `newword` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_memberdata;
CREATE TABLE `pp_memberdata` (
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(32) NOT NULL DEFAULT '',
  `groupid` smallint(4) NOT NULL DEFAULT '0',
  `grouptype` tinyint(1) NOT NULL DEFAULT '0',
  `groups` varchar(255) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `newpm` tinyint(1) NOT NULL DEFAULT '0',
  `medals` varchar(255) NOT NULL DEFAULT '',
  `money` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `totalspace` bigint(13) NOT NULL DEFAULT '0',
  `usespace` bigint(13) NOT NULL DEFAULT '0',
  `oltime` int(10) NOT NULL DEFAULT '0',
  `lastvist` int(10) NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `regdate` int(10) NOT NULL DEFAULT '0',
  `regip` varchar(15) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `icon` varchar(150) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `provinceid` mediumint(6) NOT NULL DEFAULT '0',
  `cityid` mediumint(7) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postalcode` varchar(6) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `idcard` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `moneycard` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `email_yz` tinyint(1) NOT NULL DEFAULT '0',
  `mob_yz` tinyint(1) NOT NULL DEFAULT '0',
  `idcard_yz` tinyint(1) NOT NULL DEFAULT '0',
  `company` mediumtext NOT NULL,
  `dept` mediumtext NOT NULL,
  `job` mediumtext NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groups` (`groups`),
  KEY `sex` (`sex`,`bday`,`cityid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_members;
CREATE TABLE `pp_members` (
  `uid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_menu;
CREATE TABLE `pp_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `extend` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_module;
CREATE TABLE `pp_module` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `pre` varchar(20) NOT NULL DEFAULT '',
  `dirname` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(100) NOT NULL DEFAULT '',
  `admindir` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `list` mediumint(5) NOT NULL DEFAULT '0',
  `admingroup` varchar(150) NOT NULL DEFAULT '',
  `adminmember` text NOT NULL,
  `ifclose` tinyint(1) NOT NULL DEFAULT '0',
  `ifsys` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_moneycard;
CREATE TABLE `pp_moneycard` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `moneyrmb` int(7) NOT NULL DEFAULT '0',
  `moneycard` int(7) NOT NULL DEFAULT '0',
  `ifsell` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_moneylog;
CREATE TABLE `pp_moneylog` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `about` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_olpay;
CREATE TABLE `pp_olpay` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL DEFAULT '0',
  `numcode` varchar(32) NOT NULL DEFAULT '',
  `money` varchar(15) NOT NULL DEFAULT '0',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `paytype` tinyint(3) NOT NULL DEFAULT '0',
  `moduleid` mediumint(5) NOT NULL DEFAULT '0',
  `formid` mediumint(5) NOT NULL DEFAULT '0',
  `banktype` varchar(15) NOT NULL DEFAULT '',
  `articleid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `numcode` (`numcode`),
  KEY `paytype` (`paytype`),
  KEY `formid` (`formid`),
  KEY `articleid` (`articleid`),
  KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_pm;
CREATE TABLE `pp_pm` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `togroups` varchar(80) NOT NULL DEFAULT '',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `type` enum('rebox','sebox','public') NOT NULL DEFAULT 'rebox',
  `ifnew` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(130) NOT NULL DEFAULT '',
  `mdate` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_propagandize;
CREATE TABLE `pp_propagandize` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ip` bigint(11) NOT NULL DEFAULT '0',
  `day` smallint(3) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `fromurl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_regnum;
CREATE TABLE `pp_regnum` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `num` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`num`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_reply;
CREATE TABLE `pp_reply` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `subhead` varchar(150) NOT NULL DEFAULT '',
  `postdate` int(10) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `topic` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `orderid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `aid` (`aid`,`topic`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_report;
CREATE TABLE `pp_report` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_shoporderproduct;
CREATE TABLE `pp_shoporderproduct` (
  `pid` int(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `orderid` mediumint(7) DEFAULT NULL,
  `shopid` int(10) NOT NULL DEFAULT '0',
  `shopuid` mediumint(7) NOT NULL DEFAULT '0',
  `ifsend` tinyint(1) NOT NULL DEFAULT '0',
  `amount` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_shoporderuser;
CREATE TABLE `pp_shoporderuser` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `telphone` varchar(20) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `postalcode` varchar(6) NOT NULL DEFAULT '',
  `sendtype` varchar(50) NOT NULL DEFAULT '',
  `paytype` varchar(50) NOT NULL DEFAULT '',
  `olpaytype` varchar(25) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `othersay` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `ifsend` tinyint(1) NOT NULL DEFAULT '0',
  `totalmoney` varchar(15) NOT NULL DEFAULT '',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_sms_list;
CREATE TABLE `pp_sms_list` (
  `slid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `receiver` mediumtext NOT NULL COMMENT '接收号码',
  `receiver_num` mediumint(5) NOT NULL DEFAULT '0' COMMENT '接收人数',
  `message` mediumtext NOT NULL COMMENT '短信内容',
  `message_words` mediumint(5) NOT NULL DEFAULT '0' COMMENT '短信字数',
  `message_num` mediumint(2) NOT NULL DEFAULT '1' COMMENT '短信条数',
  `posttime` int(10) NOT NULL COMMENT '创建时间',
  `sendtime` int(10) NOT NULL COMMENT '预约时间',
  `lasttime` int(10) NOT NULL COMMENT '最后变更时间',
  `state` varchar(12) NOT NULL COMMENT '状态',
  `username` varchar(30) NOT NULL COMMENT '操作账号',
  `ip` varchar(15) CHARACTER SET gb2312 NOT NULL COMMENT '账号IP地址',
  `cost_num` mediumint(2) NOT NULL COMMENT '发送短信数量',
  `cost_sum` mediumint(7) NOT NULL COMMENT '发送短信费用',
  `money` mediumint(7) NOT NULL COMMENT '账号操作后余额',
  `remarks` mediumtext NOT NULL COMMENT '备注',
  PRIMARY KEY (`slid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_sort;
CREATE TABLE `pp_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fmid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `domain_dir` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`fmid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_special;
CREATE TABLE `pp_special` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(25) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `aids` text NOT NULL,
  `tids` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(1) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `htmlfile` varchar(50) NOT NULL DEFAULT '',
  `banner` varchar(150) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `ifbase` tinyint(1) NOT NULL DEFAULT '0',
  `htmlname` varchar(80) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ifbase` (`ifbase`),
  KEY `yz` (`yz`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_special_comment;
CREATE TABLE `pp_special_comment` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `vid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_spsort;
CREATE TABLE `pp_spsort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_template;
CREATE TABLE `pp_template` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `filepath` varchar(100) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_template_bak;
CREATE TABLE `pp_template_bak` (
  `bid` int(7) NOT NULL AUTO_INCREMENT,
  `id` int(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_upfile;
CREATE TABLE `pp_upfile` (
  `up_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `module_id` smallint(4) NOT NULL DEFAULT '0',
  `ids` varchar(255) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `filename` varchar(100) NOT NULL DEFAULT '',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `if_tmp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`up_id`),
  KEY `filename` (`filename`),
  KEY `if_tmp` (`if_tmp`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_vote_comment;
CREATE TABLE `pp_vote_comment` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `vid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_vote_config;
CREATE TABLE `pp_vote_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_vote_element;
CREATE TABLE `pp_vote_element` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `cid` int(7) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `votenum` int(7) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `img` varchar(100) NOT NULL DEFAULT '',
  `describes` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_vote_topic;
CREATE TABLE `pp_vote_topic` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `limittime` int(10) NOT NULL DEFAULT '0',
  `limitip` tinyint(1) NOT NULL DEFAULT '0',
  `ip` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `user` text NOT NULL,
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `forbidguestvote` tinyint(1) NOT NULL DEFAULT '0',
  `ifcomment` tinyint(1) NOT NULL DEFAULT '0',
  `tplcode` text NOT NULL,
  `votetype` tinyint(2) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_yzimg;
CREATE TABLE `pp_yzimg` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `imgnum` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;


INSERT INTO `pp_ad_compete_place` VALUES ('3','顶客页竞价广告','0','0','50','5','8','36','1','/do/digg.php');
INSERT INTO `pp_ad_compete_user` VALUES ('11','1','admin','1239277578','1239709578','50','3','1','http://www.qibosoft.com/','齐博官方站','0','','0');
INSERT INTO `pp_ad_compete_user` VALUES ('12','1','admin','1239279810','1239711810','50','3','1','http://www.qibosoft.com/bbs','齐博官方论坛','0','','0');
INSERT INTO `pp_ad_config` VALUES ('module_pre','ad_','');
INSERT INTO `pp_ad_config` VALUES ('Info_webname','广告系统','');
INSERT INTO `pp_ad_config` VALUES ('Info_webOpen','1','');
INSERT INTO `pp_ad_config` VALUES ('module_close','0','');
INSERT INTO `pp_ad_config` VALUES ('module_id','24','');
INSERT INTO `pp_ad_norm_place` VALUES ('1','article_list','文章列表页侧面广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `pp_ad_norm_place` VALUES ('10','article_content','文章内容里边的广告','pic','1','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:32:\"other/1_20090326120324_mnfIi.jpg\";s:7:\"linkurl\";s:22:\"http://www.qibosoft.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','5','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `pp_ad_norm_place` VALUES ('2','article_show','文章内容页侧边下方广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:1782:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.zxx6.com/\" target=_blank><font color=#ff0000><strong>站长学习网</strong></font></a> 　　<a href=\"http://www.angelyyl.cn/\" target=_blank>冰蓝世界</a><a href=\"http://www.czin.cn/\" target=_blank><br />崇左热线—崇左人的网上家园</a> <br /><a href=\"http://www.sy50.com/\" target=_blank>邵阳网邻 了解邵阳 商务邵阳</a> <br /><a href=\"http://www.771881.cn/\" target=_blank>亲亲你抱抱你-国际女同拉拉网-败家女网站 </a><br /><a href=\"http://www.aihut.com/\" target=_blank>情感小筑原创情感文章网 </a><br /><a href=\"http://www.popyule.com/\" target=_blank>泡泡娱乐网--娱乐综合站qibosoft构建</a> <br /><a href=\"http://www.china551.cn/\" target=_blank><font color=#ff0000>高中物理网</font></a> 　　<a href=\"http://www.ym988.com/\" target=_blank>圆梦模板工作室 </a><br /><a href=\"http://www.welights.com/\" target=_blank>国际灯具网</a> 　　<a href=\"http://www.hnmssy.cn/\" target=_blank>湖南民俗摄影网</a> <br /><a href=\"http://www.nuoyue.net/\" target=_blank><font color=#ff0000>诺跃站长社区 - 站长、菜鸟学习的好地方</font></a> <br /><a href=\"http://www.qzfl.com/\" target=_blank>泉州分类 连接泉州信息，服务百姓生活</a> <br /><a href=\"http://www.stmsn.com/\" target=_blank>中国内衣联盟</a> 　　<a href=\"http://www.downcc.cn/\" target=_blank>大当家软件站 </a><br /><a href=\"http://www.yt12333.cn/\" target=_blank>劳动社保之家-盐亭劳动保障网</a> <br /><a href=\"http://www.gooyi.cn/\" target=_blank>广易网 - 广州最大门户网 </a><br /><a href=\"http://www.idercn.com/\" target=_blank>I.D.部落</a> 　　<a href=\"http://www.tz0632.com/\" target=_blank>滕州城市网</a> 　　<a href=\"http://www.doubar.com/\" target=_blank>豆吧 </a></div>\r\n<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.wfseo.org/\" target=_blank><font color=#d2691e>重庆网站优化</font><br /></a><br /></div>\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `pp_ad_norm_place` VALUES ('11','digg_list','顶客排行榜侧边广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:813:\"<div style=\"LINE-HEIGHT: 200%\"><a href=\"http://www.ibioo.com/\" target=_blank><font color=#ff0000>绿谷生物网--打造最具活力生物站!</font> </a><br /><a href=\"http://www.51solo.net/\" target=_blank>搜罗娱乐门户－精彩娱乐生活从我开始 </a><br /><a href=\"http://1.com/45/admin/www.china-highway.com\" target=_blank>方向和路线尽在中国高速公路网 </a><br /><a href=\"http://www.nenbei.com/\" target=_blank><font color=#ff0000>嫩北聚合娱乐网欢迎您的到来 </font></a><br /><a href=\"http://www.liuv.net/\" target=_blank><font color=#ff0000>流水设计</font></a> <br /><a href=\"http://www.fming.net/\" target=_blank>蜂鸣原创 文学与摄影的创作平台 </a><br /><a href=\"http://www.netchinatown.com/\" target=_blank>时尚唐城-海外华人精英的网络家园 </a><br /><a href=\"http://frp.ok586.cn/\" target=_blank>上海玻璃钢冷却塔专业生产厂家. </a></div>\";}','0','0','0','0','0','5','0','1','/do/digg.php');
INSERT INTO `pp_ad_norm_place` VALUES ('19','list_page_topad','列表页侧边顶部广告位','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:13:\"ad/listad.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"130\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','2','0','10','1','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `pp_ad_norm_place` VALUES ('18','show_topad','内容页顶部横幅广告','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:18:\"ad/ad_show_top.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','10','1','1','../do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `pp_ad_norm_place` VALUES ('17','show_right_top_picad','内容页侧边顶部图片广告位','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:15:\"ad/qyshowad.jpg\";s:7:\"linkurl\";s:43:\"http://www.qy.com.cn/idc/product_double.asp\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"110\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','29','0','10','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `pp_ad_norm_place` VALUES ('20','AD_list_topad','列表页顶部横幅广告','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:14:\"ad/cnidca1.gif\";s:7:\"linkurl\";s:21:\"http://www.cnidc.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','4','0','10','1','1','/do/list.php?fid=1');
INSERT INTO `pp_ad_norm_place` VALUES ('21','sp_show_ad','专题页广告位','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:943:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://3cq.org/\" target=_blank>重庆幼儿教育 一切为了我们的孩子</a> <br /><a href=\"http://www.liuv.net/\" target=_blank>流水设计</a> <br /><a href=\"http://www.21yao.com/\" target=_blank>世纪医药网</a><br /><a href=\"http://www.fming.net/\" target=_blank>蜂鸣原创</a> <br /><a href=\"http://www.jnrx.net/\" target=_blank>胶南热线</a> <br /><a href=\"http://www.7mt.cn/\" target=_blank>骑摩托-中国第一摩托车互动媒体 </a><br /><a href=\"http://www.hnpolice.net/\" target=_blank>湖南公安高等专科学校校友会 </a><br /><a href=\"http://www.seo178.com/\" target=_blank>SEO培训选择--北京SEO培训中心</a> <br /><a href=\"http://www.51solo.net/\" target=_blank>品牌推广,SEO网站优化 </a><br /><a href=\"http://www.kljy.cn/\" target=_blank>致力于儿童教育 </a><br /><a href=\"http://www.eia8.com/job/\" target=_blank>中国环评吧招聘求职网</a> <br /><a href=\"http://www.wenzhang8.com/\" target=_blank>文章吧 打造最好经典文章网 </a>　 </div>\";}','0','0','0','0','0','0','0','1','/do/showsp.php?fid=1&id=23');
INSERT INTO `pp_admin_menu` VALUES ('12','0','内容管理','','','0','8','3','0');
INSERT INTO `pp_admin_menu` VALUES ('81','12','表单管理','index.php?lfj=module_admin&dirname=form&file=form_content&job=list','','0','11','3','0');
INSERT INTO `pp_admin_menu` VALUES ('82','12','留言本管理','index.php?lfj=module_admin&dirname=guestbook&file=content&job=list','','0','10','3','1');
INSERT INTO `pp_admin_menu` VALUES ('83','0','标签/风格模板/静态页','','','0','9','3','0');
INSERT INTO `pp_admin_menu` VALUES ('84','83','</a>\r\n<font color=\"#FF0000\">主页</font><img src=../images/default/article_elite.gif> <a href=\"../index.php?&ch=1&chtype=0&jobs=show\" target=\"main\">标签</a> <A HREF=\'../index.php?&ch=1&MakeIndex=1\' target=\'_blank\' onclick=\"return confirm(\'你确实要把首页生成静态吗?生成静态后,如有更改其它相关设置,需要重新点击生成一次静态.才可以看到效果.\');\">静态</a> <a href=\"index.php?lfj=channel&job=list_fid&onlyshow=style\" target=\"main\">风格</a><a> ','#','','0','4','3','0');
INSERT INTO `pp_admin_menu` VALUES ('85','83','</a>\r\n<a href=\'index.php?lfj=channel&job=list_fid&onlyshow=label\' target=\'main\'><font color=\"#FF0000\"><u>栏目</u></font></a><img src=../images/default/article_elite.gif> <a href=\"../do/job.php?job=jump&pagetype=list_label\" target=\"main\">标签</a> <A HREF=\'index.php?lfj=html&job=list\' target=\"main\">静态</a> <a href=\"index.php?lfj=channel&job=list_fid&onlyshow=style\" target=\"main\">风格</a><a> ','#','','0','3','3','0');
INSERT INTO `pp_admin_menu` VALUES ('86','83','</a>\r\n<font color=\"#FF0000\">专题</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=special&job=list&onlyshow=label\" target=\"main\">标签</a> <A HREF=\'index.php?lfj=html&job=listsp\' target=\"main\">静态</a> <a href=\"index.php?lfj=special&job=list&onlyshow=style\" target=\"main\">风格</a><a> ','#','','0','1','3','0');
INSERT INTO `pp_admin_menu` VALUES ('87','0','会员相关功能','','','0','7','3','0');
INSERT INTO `pp_admin_menu` VALUES ('88','87','会员资料管理','index.php?lfj=member&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('89','87','文章相关权限','index.php?lfj=article_group&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('90','87','基本权限','index.php?lfj=group&job=list','','0','0','3','1');
INSERT INTO `pp_admin_menu` VALUES ('91','87','管理员后台权限设置','index.php?lfj=group&job=list_admin','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('73','12','专题管理','index.php?lfj=special&job=list','','0','13','3','0');
INSERT INTO `pp_admin_menu` VALUES ('74','12','评论管理','index.php?lfj=comment&job=list','','0','12','3','1');
INSERT INTO `pp_admin_menu` VALUES ('75','12','</a>\r\n<font color=\"#FF0000\">文章</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=0\" target=\"main\">发表</a> <a href=\"index.php?lfj=artic&job=listartic&mid=0&only=1\" target=\"main\">管理</a> <a href=\"index.php?lfj=sort&job=listsort&mid=0&only=1\" target=\"main\">栏目</a><a> ','#','','0','20','3','0');
INSERT INTO `pp_admin_menu` VALUES ('76','12','</a>\r\n<font color=\"#FF0000\">图片</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=100\" target=\"main\">发表</a> <a href=\"index.php?lfj=artic&job=listartic&mid=100&only=1\" target=\"main\">管理</a> <a href=\"index.php?lfj=sort&job=listsort&mid=100&only=1\" target=\"main\">栏目</a><a> ','#','','0','19','3','0');
INSERT INTO `pp_admin_menu` VALUES ('77','12','</a>\r\n<font color=\"#FF0000\">软件</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=101\" target=\"main\">发表</a> <a href=\"index.php?lfj=artic&job=listartic&mid=101&only=1\" target=\"main\">管理</a> <a href=\"index.php?lfj=sort&job=listsort&mid=101&only=1\" target=\"main\">栏目</a><a> ','#','','0','18','3','0');
INSERT INTO `pp_admin_menu` VALUES ('78','12','</a>\r\n<font color=\"#FF0000\">视频</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=102\" target=\"main\">发表</a> <a href=\"index.php?lfj=artic&job=listartic&mid=102&only=1\" target=\"main\">管理</a> <a href=\"index.php?lfj=sort&job=listsort&mid=102&only=1\" target=\"main\">栏目</a><a> ','#','','0','17','3','0');
INSERT INTO `pp_admin_menu` VALUES ('79','12','</a>\r\n<font color=\"#FF0000\">商品</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=103\" target=\"main\">发表</a> <a href=\"index.php?lfj=artic&job=listartic&mid=103&only=1\" target=\"main\">管理</a> <a href=\"index.php?lfj=sort&job=listsort&mid=103&only=1\" target=\"main\">栏目</a><a> ','#','','0','16','3','0');
INSERT INTO `pp_admin_menu` VALUES ('80','12','</a>\r\n<font color=\"#FF0000\">产品</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=105\" target=\"main\">发表</a> <a href=\"index.php?lfj=artic&job=listartic&mid=105&only=1\" target=\"main\">管理</a> <a href=\"index.php?lfj=sort&job=listsort&mid=105&only=1\" target=\"main\">栏目</a><a> ','#','','0','15','3','0');
INSERT INTO `pp_admin_menu` VALUES ('92','0','系统功能设置','','','0','6','3','0');
INSERT INTO `pp_admin_menu` VALUES ('93','92','核心全局参数设置','index.php?lfj=center&job=config','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('94','92','网站导航菜单设置','index.php?lfj=guidemenu&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('95','92','网站内容模型管理','index.php?lfj=article_module&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('96','92','友情链接管理','index.php?lfj=friendlink&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('97','92','独立页面管理','index.php?lfj=alonepage&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('98','92','备份网站数据库','index.php?lfj=mysql&job=out','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('99','92','万能表单模型管理','index.php?lfj=module_admin&dirname=form&file=form_module&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('100','92','文章功能重要设置','index.php?lfj=article_more&job=config','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('101','83','</a>\r\n<font color=\"#FF0000\">内容</font><img src=../images/default/article_elite.gif> <a href=\"../do/job.php?job=jump&pagetype=bencandy_label\" target=\"main\">内容页标签</a>\r\n<a> ','#','','0','2','3','0');
INSERT INTO `pp_admin_menu` VALUES ('102','0','大菜单','','','0','0','-3','0');
INSERT INTO `pp_admin_menu` VALUES ('103','0','短信功能','','','0','9','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('104','103','简单发送','post_sms','','0','9','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('105','0','增值功能','','','0','8','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('106','0','账户管理','','','0','7','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('107','103','自定义导入发送','import_post','','0','8','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('108','103','客户通讯录发送','crm_post','','0','7','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('109','103','等待发送列表','wait_post','','0','6','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('110','105','客户通讯录管理','crm','','0','8','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('111','105','节日计划策略','holiday_plans','','0','7','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('112','105','历史发送记录','send_log','','0','9','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('113','105','数据统计分析','analysis','','0','6','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('114','106','在线充值及记录','pay','','0','9','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('115','106','余额查询','money','','0','8','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('116','106','发票申请','invoice','','0','7','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('118','106','身份验证','validate','','0','6','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('117','106','账户信息设置','account','','0','5','-8','0');
INSERT INTO `pp_alonepage` VALUES ('1','0','友情链接','友情链接','1229507597','0','','','','','','friendlink.htm','','','','<table cellSpacing=4 cellPadding=4 width=\"100%\" border=0>\r\n<tbody>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.mmcbbs.com/\" target=_blank>菁菁论坛</a></td>\r\n<td width=\"20%\"><a href=\"http://www.liuv.net/\" target=_blank>流水设计</a></td>\r\n<td width=\"20%\"><a href=\"http://pic.goodod.com/\" target=_blank>欧迪手机图片</a></td>\r\n<td width=\"20%\"><a href=\"http://www.tianyakezhan.com/\" target=_blank>天涯客栈</a></td>\r\n<td width=\"20%\"><a href=\"http://www.czin.cn/\" target=_blank>崇左热线</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.jneg.com.cn/\" target=_blank>金能家园</a></td>\r\n<td width=\"20%\"><a href=\"http://www.wyrj.com/\" target=_blank>屋檐人家</a></td>\r\n<td width=\"20%\"><a href=\"http://www.nenbei.com/\" target=_blank>嫩北网</a></td>\r\n<td width=\"20%\"><a href=\"http://www.photosbar.com/\" target=_blank>图吧</a></td>\r\n<td width=\"20%\"><a href=\"http://www.ok586.cn/\" target=_blank>视览供销</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.51solo.net/\" target=_blank>我爱搜罗娱乐</a></td>\r\n<td width=\"20%\"><a href=\"http://www.toopd.com/\" target=_blank>飞羽设计</a></td>\r\n<td width=\"20%\"><a href=\"http://www.qiqig.com/\" target=_blank>爱雅</a></td>\r\n<td width=\"20%\"><a href=\"http://www.jxsrjys.com.cn/\" target=_blank>上饶教研</a></td>\r\n<td width=\"20%\"><a href=\"http://www.unok.net/\" target=_blank>优盟网</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://mmm.pudou.com/\" target=_blank>扑豆中国</a></td>\r\n<td width=\"20%\"><a href=\"http://www.itzhan.com/\" target=_blank>IT中文</a></td>\r\n<td width=\"20%\"><a href=\"http://www.hkwtv.com/\" target=_blank>香港网视</a></td>\r\n<td width=\"20%\">&nbsp;</td>\r\n<td width=\"20%\">&nbsp;</td></tr></tbody></table>','54','0');
INSERT INTO `pp_area` VALUES ('1','0','北京市','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `pp_area` VALUES ('2','0','上海市','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `pp_area` VALUES ('3','0','天津市','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('4','0','重庆市','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('5','0','河北省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('6','0','山西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('7','0','内蒙古自治区','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('8','0','辽宁省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('9','0','吉林省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('10','0','黑龙江省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('11','0','江苏省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('12','0','浙江省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('13','0','安徽省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('14','0','福建省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('15','0','江西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('16','0','山东省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('17','0','河南省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('18','0','湖北省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('19','0','湖南省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('20','0','广东省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('21','0','广西壮族自治区','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('22','0','海南省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('23','0','四川省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('24','0','贵州省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('25','0','云南省','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('26','0','西藏自治区','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('27','0','陕西省','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('28','0','甘肃省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('29','0','青海省','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('30','0','宁夏回族自治区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('31','0','新疆维吾尔自治区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('32','0','台湾省','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('33','0','香港特别行政区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('34','0','澳门特别行政区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('35','1','东城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('36','1','西城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('37','1','崇文区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('38','1','宣武区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('39','1','朝阳区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('40','1','丰台区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('41','1','石景山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('42','1','海淀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('43','1','门头沟区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('44','1','房山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('45','1','通州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('46','1','顺义区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('47','1','昌平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('48','1','大兴区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('49','1','怀柔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('50','1','平谷区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('51','1','密云县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('52','1','延庆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('53','2','黄浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('54','2','卢湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('55','2','徐汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('56','2','长宁区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('57','2','静安区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('58','2','普陀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('59','2','闸北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('60','2','虹口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('61','2','杨浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('62','2','闵行区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('63','2','宝山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('64','2','嘉定区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('65','2','浦东新区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('66','2','金山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('67','2','松江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('68','2','青浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('69','2','南汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('70','2','奉贤区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('71','2','崇明县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('72','3','和平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('73','3','河东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('74','3','河西区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `pp_area` VALUES ('75','3','南开区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('76','3','河北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('77','3','红桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('78','3','塘沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('79','3','汉沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('80','3','大港区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('81','3','东丽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('82','3','西青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('83','3','津南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('84','3','北辰区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('85','3','武清区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('86','3','宝坻区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('87','3','宁河县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('88','3','静海县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('89','3','蓟县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('90','4','万州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('91','4','涪陵区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('92','4','渝中区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('93','4','大渡口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('94','4','江北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('95','4','沙坪坝区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('96','4','九龙坡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('97','4','南岸区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('98','4','北碚区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('99','4','万盛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('100','4','双桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('101','4','渝北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('102','4','巴南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('103','4','黔江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('104','4','长寿区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('105','4','綦江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('106','4','潼南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('107','4','铜梁县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('108','4','大足县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('109','4','荣昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('110','4','璧山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('111','4','梁平县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('112','4','城口县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('113','4','丰都县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('114','4','垫江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('115','4','武隆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('116','4','忠县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('117','4','开县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('118','4','云阳县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('119','4','奉节县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('120','4','巫山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('121','4','巫溪县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('122','4','石柱土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('123','4','秀山土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('124','4','酉阳土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('125','4','彭水苗族土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('126','4','江津市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('127','4','合川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('128','4','永川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('129','4','南川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('130','5','石家庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('131','5','唐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('132','5','秦皇岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('133','5','邯郸市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('134','5','邢台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('135','5','保定市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('136','5','张家口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('137','5','承德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('138','5','沧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('139','5','廊坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('140','5','衡水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('141','6','太原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('142','6','大同市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('143','6','阳泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('144','6','长治市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('145','6','晋城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('146','6','朔州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('147','6','晋中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('148','6','运城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('149','6','忻州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('150','6','临汾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('151','6','吕梁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('152','7','呼和浩特市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('153','7','包头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('154','7','乌海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('155','7','赤峰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('156','7','通辽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('157','7','鄂尔多斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('158','7','呼伦贝尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('159','7','巴彦淖尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('160','7','乌兰察布市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('161','7','兴安盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('162','7','锡林郭勒盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('163','7','阿拉善盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('164','8','沈阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('165','8','大连市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('166','8','鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('167','8','抚顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('168','8','本溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('169','8','丹东市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('170','8','锦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('171','8','营口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('172','8','阜新市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('173','8','辽阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('174','8','盘锦市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('175','8','铁岭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('176','8','朝阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('177','8','葫芦岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('178','9','长春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('179','9','吉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('180','9','四平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('181','9','辽源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('182','9','通化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('183','9','白山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('184','9','松原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('185','9','白城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('186','9','延边朝鲜族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('187','10','哈尔滨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('188','10','齐齐哈尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('189','10','鸡西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('190','10','鹤岗市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('191','10','双鸭山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('192','10','大庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('193','10','伊春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('194','10','佳木斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('195','10','七台河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('196','10','牡丹江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('197','10','黑河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('198','10','绥化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('199','10','大兴安岭地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('200','11','南京市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('201','11','无锡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('202','11','徐州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('203','11','常州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('204','11','苏州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('205','11','南通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('206','11','连云港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('207','11','淮安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('208','11','盐城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('209','11','扬州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('210','11','镇江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('211','11','泰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('212','11','宿迁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('213','12','杭州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('214','12','宁波市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('215','12','温州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('216','12','嘉兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('217','12','湖州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('218','12','绍兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('219','12','金华市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('220','12','衢州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('221','12','舟山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('222','12','台州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('223','12','丽水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('224','13','合肥市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('225','13','芜湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('226','13','蚌埠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('227','13','淮南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('228','13','马鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('229','13','淮北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('230','13','铜陵市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('231','13','安庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('232','13','黄山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('233','13','滁州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('234','13','阜阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('235','13','宿州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('236','13','巢湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('237','13','六安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('238','13','亳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('239','13','池州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('240','13','宣城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('241','14','福州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('242','14','厦门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('243','14','莆田市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('244','14','三明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('245','14','泉州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('246','14','漳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('247','14','南平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('248','14','龙岩市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('249','14','宁德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('250','15','南昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('251','15','景德镇市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('252','15','萍乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('253','15','九江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('254','15','新余市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('255','15','鹰潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('256','15','赣州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('257','15','吉安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('258','15','宜春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('259','15','抚州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('260','15','上饶市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('261','16','济南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('262','16','青岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('263','16','淄博市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('264','16','枣庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('265','16','东营市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('266','16','烟台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('267','16','潍坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('268','16','济宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('269','16','泰安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('270','16','威海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('271','16','日照市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('272','16','莱芜市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('273','16','临沂市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('274','16','德州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('275','16','聊城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('276','16','滨州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('277','16','荷泽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('278','17','郑州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('279','17','开封市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('280','17','洛阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('281','17','平顶山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('282','17','安阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('283','17','鹤壁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('284','17','新乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('285','17','焦作市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('286','17','濮阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('287','17','许昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('288','17','漯河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('289','17','三门峡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('290','17','南阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('291','17','商丘市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('292','17','信阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('293','17','周口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('294','17','驻马店市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('295','18','武汉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('296','18','黄石市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('297','18','十堰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('298','18','宜昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('299','18','襄樊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('300','18','鄂州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('301','18','荆门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('302','18','孝感市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('303','18','荆州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('304','18','黄冈市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('305','18','咸宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('306','18','随州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('307','18','恩施土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('308','18','仙桃市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('309','18','潜江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('310','18','天门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('311','18','神农架林区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('312','19','长沙市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('313','19','株洲市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('314','19','湘潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('315','19','衡阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('316','19','邵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('317','19','岳阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('318','19','常德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('319','19','张家界市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('320','19','益阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('321','19','郴州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('322','19','永州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('323','19','怀化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('324','19','娄底市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('325','19','湘西土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('326','20','广州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('327','20','韶关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('328','20','深圳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('329','20','珠海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('330','20','汕头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('331','20','佛山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('332','20','江门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('333','20','湛江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('334','20','茂名市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('335','20','肇庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('336','20','惠州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('337','20','梅州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('338','20','汕尾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('339','20','河源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('340','20','阳江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('341','20','清远市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('342','20','东莞市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('343','20','中山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('344','20','潮州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('345','20','揭阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('346','20','云浮市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('347','21','南宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('348','21','柳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('349','21','桂林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('350','21','梧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('351','21','北海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('352','21','防城港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('353','21','钦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('354','21','贵港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('355','21','玉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('356','21','百色市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('357','21','贺州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('358','21','河池市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('359','21','来宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('360','21','崇左市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('361','22','海口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('362','22','三亚市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('363','22','五指山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('364','22','琼海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('365','22','儋州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('366','22','文昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('367','22','万宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('368','22','东方市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('369','22','定安县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('370','22','屯昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('371','22','澄迈县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('372','22','临高县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('373','22','白沙黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('374','22','昌江黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('375','22','乐东黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('376','22','陵水黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('377','22','保亭黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('378','22','琼中黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('379','22','西沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('380','22','南沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('381','22','中沙群岛的岛礁及其海域','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('382','23','成都市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('383','23','自贡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('384','23','攀枝花市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('385','23','泸州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('386','23','德阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('387','23','绵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('388','23','广元市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('389','23','遂宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('390','23','内江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('391','23','乐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('392','23','南充市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('393','23','眉山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('394','23','宜宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('395','23','广安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('396','23','达州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('397','23','雅安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('398','23','巴中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('399','23','资阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('400','23','阿坝藏族羌族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('401','23','甘孜藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('402','23','凉山彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('403','24','贵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('404','24','六盘水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('405','24','遵义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('406','24','安顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('407','24','铜仁地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('408','24','黔西南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('409','24','毕节地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('410','24','黔东南苗族侗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('411','24','黔南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('412','25','昆明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('413','25','曲靖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('414','25','玉溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('415','25','保山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('416','25','昭通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('417','25','丽江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('418','25','思茅市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('419','25','临沧市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('420','25','楚雄彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('421','25','红河哈尼族彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('422','25','文山壮族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('423','25','西双版纳傣族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('424','25','大理白族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('425','25','德宏傣族景颇族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('426','25','怒江傈僳族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('427','25','迪庆藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('428','26','拉萨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('429','26','昌都地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('430','26','山南地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('431','26','日喀则地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('432','26','那曲地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('433','26','阿里地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('434','26','林芝地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('435','27','西安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('436','27','铜川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('437','27','宝鸡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('438','27','咸阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('439','27','渭南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('440','27','延安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('441','27','汉中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('442','27','榆林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('443','27','安康市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('444','27','商洛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('445','28','兰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('446','28','嘉峪关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('447','28','金昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('448','28','白银市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('449','28','天水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('450','28','武威市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('451','28','张掖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('452','28','平凉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('453','28','酒泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('454','28','庆阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('455','28','定西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('456','28','陇南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('457','28','临夏回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('458','28','甘南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('459','29','西宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('460','29','海东地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('461','29','海北藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('462','29','黄南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('463','29','海南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('464','29','果洛藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('465','29','玉树藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('466','29','海西蒙古族藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('467','30','银川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('468','30','石嘴山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('469','30','吴忠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('470','30','固原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('471','30','中卫市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('472','31','乌鲁木齐市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('473','31','克拉玛依市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('474','31','吐鲁番地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('475','31','哈密地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('476','31','昌吉回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('477','31','博尔塔拉蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('478','31','巴音郭楞蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('479','31','阿克苏地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('480','31','克孜勒苏柯尔克孜自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('481','31','喀什地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('482','31','和田地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('483','31','伊犁哈萨克自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('484','31','塔城地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('485','31','阿勒泰地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('486','31','石河子市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('487','31','阿拉尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('488','31','图木舒克市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('489','31','五家渠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('490','32','台北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('491','32','高雄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('492','32','基隆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('493','32','新竹市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('494','32','台中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('495','32','嘉义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('496','32','台南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('497','32','台北县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('498','32','桃园县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('499','32','新竹县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('500','32','苗栗县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('501','32','台中县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('502','32','彰化县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('503','32','南投县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('504','32','云林县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('505','32','嘉义县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('506','32','台南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('507','32','高雄县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('508','32','屏东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('509','32','宜兰县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('510','32','花莲县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('511','32','台东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('512','32','澎湖县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('513','32','金门县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('514','32','连江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('515','33','中西区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('516','33','东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('517','33','南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('518','33','湾仔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('519','33','九龙城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('520','33','观塘区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('521','33','深水埗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('522','33','黄大仙区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('523','33','油尖旺区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('524','33','离岛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('525','33','葵青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('526','33','北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('527','33','西贡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('528','33','沙田区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('529','33','大埔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('530','33','荃湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('531','33','屯门区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('532','33','元朗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('533','34','澳门市花地玛堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('534','34','澳门市圣安多尼堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('535','34','澳门市大堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('536','34','澳门市望德堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('537','34','澳门市风顺堂区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `pp_article_module` VALUES ('100','图片模型','图片','0','','','','a:3:{s:8:\"field_db\";a:1:{s:8:\"photourl\";a:15:{s:5:\"title\";s:8:\"图片地址\";s:10:\"field_name\";s:8:\"photourl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:9:\"upmorepic\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"0\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"图片\";s:10:\"title_name\";s:8:\"图片名称\";s:12:\"content_name\";s:4:\"介绍\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"200\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"1\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}}','photo','0','0');
INSERT INTO `pp_article_module` VALUES ('101','下载模型','软件','0','','','','a:4:{s:8:\"field_db\";a:8:{s:9:\"my_author\";a:13:{s:5:\"title\";s:8:\"软件作者\";s:10:\"field_name\";s:9:\"my_author\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:14:\"my_copyfromurl\";a:14:{s:5:\"title\";s:8:\"厂商主页\";s:10:\"field_name\";s:14:\"my_copyfromurl\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"50\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"my_demo\";a:14:{s:5:\"title\";s:8:\"演示网址\";s:10:\"field_name\";s:7:\"my_demo\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"50\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:15:\"operatingsystem\";a:14:{s:5:\"title\";s:8:\"运行环境\";s:10:\"field_name\";s:15:\"operatingsystem\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"60\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:902:\"<br>平台选择：<a href=\\\"javascript:ToSystem(\\\'Linux\\\')\\\">Linux</a>/<a href=\\\"javascript:ToSystem(\\\'DOS\\\')\\\">DOS</a>/<a href=\\\"javascript:ToSystem(\\\'9x\\\')\\\">9x</a>/<a href=\\\"javascript:ToSystem(\\\'NT\\\')\\\">NT</a>/<a href=\\\"javascript:ToSystem(\\\'2000\\\')\\\">2000</a>/<a href=\\\"javascript:ToSystem(\\\'2003\\\')\\\">2003</a>/<a href=\\\"javascript:ToSystem(\\\'XP\\\')\\\">XP</a>/<a href=\\\"javascript:ToSystem(\\\'.NET\\\')\\\">.NET</a>/<a href=\\\"javascript:ToSystem(\\\'ASP\\\')\\\">ASP</a>/<a href=\\\"javascript:ToSystem(\\\'PHP\\\')\\\">PHP</a>/<a href=\\\"javascript:ToSystem(\\\'JSP\\\')\\\">JSP</a>/<a href=\\\"javascript:ToSystem(\\\'CGI\\\')\\\">CGI</a>\r\n\r\n<SCRIPT LANGUAGE=\\\"JavaScript\\\">\r\nfunction ToSystem(va){\r\n	cc=document.getElementById(\\\"atc_operatingsystem\\\").value\r\n	if(cc==\\\'\\\'){\r\n		document.getElementById(\\\"atc_operatingsystem\\\").value=va;\r\n	}else{\r\n		document.getElementById(\\\"atc_operatingsystem\\\").value+=\\\"/\\\"+va;\r\n	}\r\n	\r\n}\r\n</SCRIPT>\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:12:\"softlanguage\";a:14:{s:5:\"title\";s:8:\"软件语言\";s:10:\"field_name\";s:12:\"softlanguage\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"简体中文\r\n繁体中文\r\n英文\r\n其他语言\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:4;s:9:\"allowview\";N;}s:9:\"copyright\";a:14:{s:5:\"title\";s:8:\"授权形式\";s:10:\"field_name\";s:9:\"copyright\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:30:\"免费版\r\n试用版\r\n破解版\r\n商业版\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:3;s:9:\"allowview\";N;}s:8:\"softsize\";a:14:{s:5:\"title\";s:8:\"文件大小\";s:10:\"field_name\";s:8:\"softsize\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:1:\"M\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:7:\"softurl\";a:15:{s:5:\"title\";s:8:\"软件地址\";s:10:\"field_name\";s:7:\"softurl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:10:\"upmorefile\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"1\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"软件\";s:10:\"title_name\";s:8:\"软件名称\";s:12:\"content_name\";s:8:\"软件介绍\";s:6:\"edit_w\";s:3:\"600\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','download','0','0');
INSERT INTO `pp_article_module` VALUES ('102','视频模型','视频','0','','','','a:4:{s:8:\"field_db\";a:3:{s:5:\"mvurl\";a:15:{s:5:\"title\";s:8:\"在线观看\";s:10:\"field_name\";s:5:\"mvurl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"upmoremv\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"3\";s:9:\"allowview\";N;}s:7:\"my_role\";a:14:{s:5:\"title\";s:8:\"领衔主演\";s:10:\"field_name\";s:7:\"my_role\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:100;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:7:\"my_lang\";a:14:{s:5:\"title\";s:4:\"语言\";s:10:\"field_name\";s:7:\"my_lang\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:26:\"国语\r\n粤语\r\n英语\r\n其它语言\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"视频\";s:10:\"title_name\";s:8:\"视频名称\";s:12:\"content_name\";s:8:\"视频介绍\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','mv','0','0');
INSERT INTO `pp_article_module` VALUES ('103','商城模型','商品','0','','','','a:4:{s:8:\"field_db\";a:6:{s:7:\"shop_id\";a:14:{s:5:\"title\";s:8:\"商品编号\";s:10:\"field_name\";s:7:\"shop_id\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:8:\"shoptype\";a:13:{s:5:\"title\";s:8:\"商品型号\";s:10:\"field_name\";s:8:\"shoptype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:9:\"shopmoney\";a:14:{s:5:\"title\";s:8:\"积分点数\";s:10:\"field_name\";s:9:\"shopmoney\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:7;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"7\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"点\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:9:\"martprice\";a:14:{s:5:\"title\";s:8:\"市面价格\";s:10:\"field_name\";s:9:\"martprice\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"元\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:8:\"nowprice\";a:14:{s:5:\"title\";s:8:\"现售价格\";s:10:\"field_name\";s:8:\"nowprice\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"元\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:7:\"shopnum\";a:14:{s:5:\"title\";s:6:\"库存量\";s:10:\"field_name\";s:7:\"shopnum\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:5;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"8\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:4:\"不限\";s:10:\"form_units\";s:2:\"个\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"商品\";s:10:\"title_name\";s:8:\"商品名称\";s:12:\"content_name\";s:8:\"商品介绍\";s:6:\"edit_w\";s:3:\"600\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','shop','0','0');
INSERT INTO `pp_article_module` VALUES ('104','FLASH模型','FLASH','0','','','','a:4:{s:8:\"field_db\";a:2:{s:11:\"flashauthor\";a:14:{s:5:\"title\";s:9:\"FLASH作者\";s:10:\"field_name\";s:11:\"flashauthor\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:8:\"flashurl\";a:13:{s:5:\"title\";s:9:\"FLASH地址\";s:10:\"field_name\";s:8:\"flashurl\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:6:\"upplay\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:5:\"FLASH\";s:10:\"title_name\";s:9:\"FLASH名称\";s:12:\"content_name\";s:9:\"FLASH介绍\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"1\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','flash','0','0');
INSERT INTO `pp_article_module` VALUES ('105','产品型模','产品','0','','','','a:5:{s:8:\"field_db\";a:1:{s:7:\"my_type\";a:13:{s:5:\"title\";s:8:\"产品型号\";s:10:\"field_name\";s:7:\"my_type\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:100;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"0\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"产品\";s:10:\"title_name\";s:8:\"产品名称\";s:12:\"content_name\";s:8:\"产品介绍\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"250\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:9:\"is_upfile\";a:0:{}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','','0','0');
INSERT INTO `pp_channel` VALUES ('1','0','0','网站首页','./','','index.htm','35,4,3,39','','default','','','','','','','','0','a:5:{s:4:\"line\";s:1:\"3\";s:4:\"rows\";s:1:\"8\";s:4:\"leng\";s:2:\"34\";s:5:\"order\";s:4:\"list\";s:8:\"fid_list\";N;}');
INSERT INTO `pp_config` VALUES ('yzImgComment','0','');
INSERT INTO `pp_config` VALUES ('flashtime','0','');
INSERT INTO `pp_config` VALUES ('showComment','1','');
INSERT INTO `pp_config` VALUES ('forbidComment','0','');
INSERT INTO `pp_config` VALUES ('showCommentRows','8','');
INSERT INTO `pp_config` VALUES ('viewNoPassGuestBook','1','');
INSERT INTO `pp_config` VALUES ('yzImgContribute','0','');
INSERT INTO `pp_config` VALUES ('groupPassContribute','3','');
INSERT INTO `pp_config` VALUES ('QQ_login','2','');
INSERT INTO `pp_config` VALUES ('MaxOnlineUser','1000','');
INSERT INTO `pp_config` VALUES ('groupPassShopYz','3,4','');
INSERT INTO `pp_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `pp_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `pp_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `pp_config` VALUES ('ContributeFid','2','');
INSERT INTO `pp_config` VALUES ('groupPassLogYz','3,4','');
INSERT INTO `pp_config` VALUES ('QQ_appkey','','');
INSERT INTO `pp_config` VALUES ('FtpPwd','admin','');
INSERT INTO `pp_config` VALUES ('PostSortStep','2','');
INSERT INTO `pp_config` VALUES ('ListSonline','2','');
INSERT INTO `pp_config` VALUES ('_Notice','29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=','');
INSERT INTO `pp_config` VALUES ('CommentTime','5','');
INSERT INTO `pp_config` VALUES ('weburl','/','');
INSERT INTO `pp_config` VALUES ('MailType','smtp','');
INSERT INTO `pp_config` VALUES ('yeepay_key','3L35o47Brm56Yj56F2Zbks9638938xw7fB0ah7U27n2eR3h3i8TqBgwM99SS','');
INSERT INTO `pp_config` VALUES ('allowMemberCommentPass','1','');
INSERT INTO `pp_config` VALUES ('AvoidGatherPre','','');
INSERT INTO `pp_config` VALUES ('AvoidCopy','0','');
INSERT INTO `pp_config` VALUES ('AvoidGather','0','');
INSERT INTO `pp_config` VALUES ('AvoidSave','0','');
INSERT INTO `pp_config` VALUES ('waterpos','7','');
INSERT INTO `pp_config` VALUES ('adminPostEditType','html','');
INSERT INTO `pp_config` VALUES ('article_show_step','0','');
INSERT INTO `pp_config` VALUES ('ifContribute','1','');
INSERT INTO `pp_config` VALUES ('allowGuestSearch','0','');
INSERT INTO `pp_config` VALUES ('kill_badword','0','');
INSERT INTO `pp_config` VALUES ('ShowKeywordColor','#F70968','');
INSERT INTO `pp_config` VALUES ('ifShowKeyword','1','');
INSERT INTO `pp_config` VALUES ('UseFtp','0','');
INSERT INTO `pp_config` VALUES ('FtpDir','111','');
INSERT INTO `pp_config` VALUES ('FtpWeb','','');
INSERT INTO `pp_config` VALUES ('FtpName','admin','');
INSERT INTO `pp_config` VALUES ('showsortlogo','0','');
INSERT INTO `pp_config` VALUES ('groupTime','180','');
INSERT INTO `pp_config` VALUES ('allowGuestCommentPass','1','');
INSERT INTO `pp_config` VALUES ('ShowMenu','0','');
INSERT INTO `pp_config` VALUES ('GuestBookNum','8','');
INSERT INTO `pp_config` VALUES ('ShopNormalSend','8','');
INSERT INTO `pp_config` VALUES ('ShopEmsSend','25','');
INSERT INTO `pp_config` VALUES ('groupUpType','1','');
INSERT INTO `pp_config` VALUES ('ListLeng','70','');
INSERT INTO `pp_config` VALUES ('waterimg','images/default/water.gif','');
INSERT INTO `pp_config` VALUES ('HideNopowerPost','1','');
INSERT INTO `pp_config` VALUES ('Listsortnameline','2','');
INSERT INTO `pp_config` VALUES ('allowGuestComment','1','');
INSERT INTO `pp_config` VALUES ('JsListRows','5','');
INSERT INTO `pp_config` VALUES ('JsListLeng','36','');
INSERT INTO `pp_config` VALUES ('ListSonRows','9','');
INSERT INTO `pp_config` VALUES ('ListSonLeng','34','');
INSERT INTO `pp_config` VALUES ('SideTitleStyle','side_tpl/2','');
INSERT INTO `pp_config` VALUES ('propagandize_jumpto','/','');
INSERT INTO `pp_config` VALUES ('propagandize_LogDay','5','');
INSERT INTO `pp_config` VALUES ('propagandize_close','0','');
INSERT INTO `pp_config` VALUES ('propagandize_Money','2','');
INSERT INTO `pp_config` VALUES ('YZ_MobMoney','60','');
INSERT INTO `pp_config` VALUES ('YZ_IdcardMoney','120','');
INSERT INTO `pp_config` VALUES ('YZ_EmailMoney','30','');
INSERT INTO `pp_config` VALUES ('MailServer','smtp.126.com','');
INSERT INTO `pp_config` VALUES ('sms_wi_pwd','wcb800321','');
INSERT INTO `pp_config` VALUES ('sms_ccell_id','82008','');
INSERT INTO `pp_config` VALUES ('SPlist_filename','html/4special{$fid}/list{$page}.htm','');
INSERT INTO `pp_config` VALUES ('SPbencandy_filename','html/5special{$fid}/show{$id}.htm','');
INSERT INTO `pp_config` VALUES ('close_count','0','');
INSERT INTO `pp_config` VALUES ('passport_TogetherLogin','1','');
INSERT INTO `pp_config` VALUES ('SideSortStyle','side_sort/2','');
INSERT INTO `pp_config` VALUES ('QQ_QBappkey','d12100d9366fbd6d92c9','');
INSERT INTO `pp_config` VALUES ('cache_time_js','-1','');
INSERT INTO `pp_config` VALUES ('list_filename','html/{$fid}/{$page}.htm','');
INSERT INTO `pp_config` VALUES ('bencandy_filename','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('cache_time_com','-1','');
INSERT INTO `pp_config` VALUES ('heart_time','30','');
INSERT INTO `pp_config` VALUES ('ArticleHeart','欠扁|1.gif\r\n支持|2.gif\r\n很棒|3.gif\r\n找骂|4.gif\r\n搞笑|5.gif\r\n软文|6.gif\r\n不解|7.gif\r\n吃惊|8.gif','');
INSERT INTO `pp_config` VALUES ('heart_noRecord','1','');
INSERT INTO `pp_config` VALUES ('UseArticleHeart','1','');
INSERT INTO `pp_config` VALUES ('UseArticleDigg','0','');
INSERT INTO `pp_config` VALUES ('QQ_appid','','');
INSERT INTO `pp_config` VALUES ('sortNUM','24','');
INSERT INTO `pp_config` VALUES ('FtpPort','21','');
INSERT INTO `pp_config` VALUES ('articleNUM','78','');
INSERT INTO `pp_config` VALUES ('cache_time_like','-1','');
INSERT INTO `pp_config` VALUES ('cache_time_new','-1','');
INSERT INTO `pp_config` VALUES ('is_waterimg','1','');
INSERT INTO `pp_config` VALUES ('passport_path','../pw7','');
INSERT INTO `pp_config` VALUES ('label_cache_time','-1','');
INSERT INTO `pp_config` VALUES ('RewriteUrl','0','');
INSERT INTO `pp_config` VALUES ('Del_MoreUpfile','1','');
INSERT INTO `pp_config` VALUES ('passport_type','','');
INSERT INTO `pp_config` VALUES ('passport_url','','');
INSERT INTO `pp_config` VALUES ('passport_pre','`dz7`.cdb_','');
INSERT INTO `pp_config` VALUES ('cache_time_pic','-1','');
INSERT INTO `pp_config` VALUES ('list_cache_time','0','');
INSERT INTO `pp_config` VALUES ('bencandy_cache_time','0','');
INSERT INTO `pp_config` VALUES ('showsp_cache_time','0','');
INSERT INTO `pp_config` VALUES ('cache_time_hot','-1','');
INSERT INTO `pp_config` VALUES ('emailOnly','1','');
INSERT INTO `pp_config` VALUES ('alipay_transport','http','');
INSERT INTO `pp_config` VALUES ('MoneyRatio','100','');
INSERT INTO `pp_config` VALUES ('Money2card','0','');
INSERT INTO `pp_config` VALUES ('index_cache_time','0','');
INSERT INTO `pp_config` VALUES ('waterAlpha','80','');
INSERT INTO `pp_config` VALUES ('if_gdimg','1','');
INSERT INTO `pp_config` VALUES ('QQ_QBappid','1','');
INSERT INTO `pp_config` VALUES ('DefaultIndexHtml','0','');
INSERT INTO `pp_config` VALUES ('AutoPassCompany','1','');
INSERT INTO `pp_config` VALUES ('regmoney','5','');
INSERT INTO `pp_config` VALUES ('ForceDel','0','');
INSERT INTO `pp_config` VALUES ('AutoTitleNum','1','');
INSERT INTO `pp_config` VALUES ('deleteArticleMoney','-1','');
INSERT INTO `pp_config` VALUES ('postArticleMoney','1','');
INSERT INTO `pp_config` VALUES ('comArticleMoney','3','');
INSERT INTO `pp_config` VALUES ('hotArticleNum','100','');
INSERT INTO `pp_config` VALUES ('newArticleTime','24','');
INSERT INTO `pp_config` VALUES ('ListShowIcon','0','');
INSERT INTO `pp_config` VALUES ('autoGetKeyword','0','');
INSERT INTO `pp_config` VALUES ('autoGetSmallPic','1','');
INSERT INTO `pp_config` VALUES ('autoCutSmallPic','1','');
INSERT INTO `pp_config` VALUES ('ForbidRepeatTitle','1','');
INSERT INTO `pp_config` VALUES ('viewNoPassArticle','0','');
INSERT INTO `pp_config` VALUES ('ArticlePicHeight','600','');
INSERT INTO `pp_config` VALUES ('ArticlePicWidth','800','');
INSERT INTO `pp_config` VALUES ('ArticleDownloadDirTime','0','');
INSERT INTO `pp_config` VALUES ('ArticleDownloadUseFtp','0','');
INSERT INTO `pp_config` VALUES ('SortUseOtherModule','0','');
INSERT INTO `pp_config` VALUES ('KeepTodayCount','1','');
INSERT INTO `pp_config` VALUES ('ShopOtherSend','18','');
INSERT INTO `pp_config` VALUES ('ForbidShowPhpPage','0','');
INSERT INTO `pp_config` VALUES ('bencandy_filename2','bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('MailPort','25','');
INSERT INTO `pp_config` VALUES ('alipay_scale','100','');
INSERT INTO `pp_config` VALUES ('guide_word','首页|/|0||51\r\n新闻|list.php?fid=1|0||9\r\n图片|list.php?fid=9|0||10\r\n下载|list.php?fid=11|0||11\r\n影视|list.php?fid=13|0||12\r\n商城|list.php?fid=15|0||13','');
INSERT INTO `pp_config` VALUES ('list_filename2','list.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('FtpHost','127.0.0.1','');
INSERT INTO `pp_config` VALUES ('RegYz','1','');
INSERT INTO `pp_config` VALUES ('YzImg_string','','');
INSERT INTO `pp_config` VALUES ('is_MathYZ','0','');
INSERT INTO `pp_config` VALUES ('upgrade_Record','v7','');
INSERT INTO `pp_config` VALUES ('alipay_partner','2088901156191908','');
INSERT INTO `pp_config` VALUES ('yeepay_id','10011205526','');
INSERT INTO `pp_config` VALUES ('SPlist_filename2','listsp.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('SPbencandy_filename2','showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('sms_wi_id','wcb800322','');
INSERT INTO `pp_config` VALUES ('pay99_id','','');
INSERT INTO `pp_config` VALUES ('pay99_key','','');
INSERT INTO `pp_config` VALUES ('sms_type','ccell','');
INSERT INTO `pp_config` VALUES ('sms_es_name','cb800322','');
INSERT INTO `pp_config` VALUES ('sms_es_key','cb800321','');
INSERT INTO `pp_config` VALUES ('MailId','wzcom@126.com','');
INSERT INTO `pp_config` VALUES ('alipay_service','create_direct_pay_by_user','');
INSERT INTO `pp_config` VALUES ('sms_ccell_pwd','celllxl','');
INSERT INTO `pp_config` VALUES ('PostNotice','<font face=SimSun>\r\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>','');
INSERT INTO `pp_config` VALUES ('photoShowType','0','');
INSERT INTO `pp_config` VALUES ('allowDownMv','0','');
INSERT INTO `pp_config` VALUES ('autoPlayFirstMv','1','');
INSERT INTO `pp_config` VALUES ('EditSystem','2','');
INSERT INTO `pp_config` VALUES ('XunLei_ID','08311','');
INSERT INTO `pp_config` VALUES ('FlashGet_ID','6370','');
INSERT INTO `pp_config` VALUES ('ListPageTitle_nojs','0','');
INSERT INTO `pp_config` VALUES ('view_sell_article','0','');
INSERT INTO `pp_config` VALUES ('YzImg_difficult','0','');
INSERT INTO `pp_config` VALUES ('YzImg_letter_differ','0','');
INSERT INTO `pp_config` VALUES ('is_chineseIMG','0','');
INSERT INTO `pp_config` VALUES ('reg_group','8','');
INSERT INTO `pp_config` VALUES ('forbidRegIp','','');
INSERT INTO `pp_config` VALUES ('forbidRegName','','');
INSERT INTO `pp_config` VALUES ('Reg_Field','a:1:{s:8:\"field_db\";a:3:{s:7:\"company\";a:13:{s:5:\"title\";s:8:\"公司名称\";s:10:\"field_name\";s:7:\"company\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:9:\"orderlist\";s:0:\"\";s:9:\"allowview\";N;}s:4:\"dept\";a:13:{s:5:\"title\";s:8:\"所属部门\";s:10:\"field_name\";s:4:\"dept\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:9:\"orderlist\";s:0:\"\";s:9:\"allowview\";N;}s:3:\"job\";a:13:{s:5:\"title\";s:8:\"职位名称\";s:10:\"field_name\";s:3:\"job\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:9:\"orderlist\";s:0:\"\";s:9:\"allowview\";N;}}}','');
INSERT INTO `pp_config` VALUES ('copyright','','');
INSERT INTO `pp_config` VALUES ('miibeian_gov_cn','沪ICP备000403号','');
INSERT INTO `pp_config` VALUES ('bokecc_id','','');
INSERT INTO `pp_config` VALUES ('cookiePre','','');
INSERT INTO `pp_config` VALUES ('cookieDomain','','');
INSERT INTO `pp_config` VALUES ('forbid_show_bug','1','');
INSERT INTO `pp_config` VALUES ('mirror','http://down.qibosoft.com/other/testv6/upload_files/','');
INSERT INTO `pp_config` VALUES ('updir','upload_files','');
INSERT INTO `pp_config` VALUES ('time','0','');
INSERT INTO `pp_config` VALUES ('totalSpace','100','');
INSERT INTO `pp_config` VALUES ('upfileMaxSize','','');
INSERT INTO `pp_config` VALUES ('upfileType','.rar .txt .jpg .gif .bmp .png .zip .mp3 .wma .wmv .mpeg .mpg .rm .ram .htm .doc .swf .avi .flv .sql .doc .ppt .xls .chm .pdf','');
INSERT INTO `pp_config` VALUES ('NewsMakeHtml','0','');
INSERT INTO `pp_config` VALUES ('MakeIndexHtmlTime','0','');
INSERT INTO `pp_config` VALUES ('admin_url','admin','');
INSERT INTO `pp_config` VALUES ('www_url','http://127.0.0.1/sms','');
INSERT INTO `pp_config` VALUES ('style_member','default','');
INSERT INTO `pp_config` VALUES ('QQ_logintime','24','');
INSERT INTO `pp_config` VALUES ('RegCompany','0','');
INSERT INTO `pp_config` VALUES ('yzImgReg','0','');
INSERT INTO `pp_config` VALUES ('YzImg_voice','0','');
INSERT INTO `pp_config` VALUES ('yzNumReg','0','');
INSERT INTO `pp_config` VALUES ('forbidReg','0','');
INSERT INTO `pp_config` VALUES ('limitRegTime','','');
INSERT INTO `pp_config` VALUES ('style','default','');
INSERT INTO `pp_config` VALUES ('friendlink_open','0','');
INSERT INTO `pp_config` VALUES ('close_why','网站维护当中,\r\n暂停访问.','');
INSERT INTO `pp_config` VALUES ('web_open','1','');
INSERT INTO `pp_config` VALUES ('MoneyDW','分','');
INSERT INTO `pp_config` VALUES ('MoneyName','余额','');
INSERT INTO `pp_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `pp_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `pp_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `pp_config` VALUES ('webmail','wzcom@126.com','');
INSERT INTO `pp_config` VALUES ('description','短信群发 在线发送 中国电信 上海移动 联通手机','');
INSERT INTO `pp_config` VALUES ('metakeywords','短信群发 在线发送 中国电信 上海移动 联通手机','');
INSERT INTO `pp_config` VALUES ('EditYzEmail','0','');
INSERT INTO `pp_config` VALUES ('EditYzMob','0','');
INSERT INTO `pp_config` VALUES ('MailPw','1235239523123','');
INSERT INTO `pp_config` VALUES ('EditYzIdcard','0','');
INSERT INTO `pp_config` VALUES ('alipay_key','rnszccvvly5bbwwyayua4zrgtpro518q','');
INSERT INTO `pp_config` VALUES ('alipay_id','service@ivtsoft.com','');
INSERT INTO `pp_config` VALUES ('tenpay_id','1900000109','');
INSERT INTO `pp_config` VALUES ('tenpay_key','8934e7d15453e97507ef794cf7b0519d','');
INSERT INTO `pp_config` VALUES ('webname','拍拍送 PPSMS.COM','');
INSERT INTO `pp_config` VALUES ('mymd5','78286966ppsms','');
INSERT INTO `pp_config` VALUES ('companyTrade','高新产业','');
INSERT INTO `pp_config` VALUES ('memberNotice','欢迎大家踊跃投稿,投稿可得积分奖励!!','');
INSERT INTO `pp_config` VALUES ('member_contact','','');
INSERT INTO `pp_config` VALUES ('AutoCutFace','0','');
INSERT INTO `pp_config` VALUES ('yzImgAdminLogin','0','');
INSERT INTO `pp_config` VALUES ('DownLoad_readfile','1','');
INSERT INTO `pp_config` VALUES ('path','','');
INSERT INTO `pp_config` VALUES ('hideFid','','');
INSERT INTO `pp_crm_group` VALUES ('1','金卡会员','7','0','admin3','1362646941');
INSERT INTO `pp_crm_group` VALUES ('2','钻石卡会员','9','0','admin3','1362648362');
INSERT INTO `pp_crm_group` VALUES ('6','白金卡会员','8','0','admin3','1362648486');
INSERT INTO `pp_crm_group` VALUES ('8','中国','6','0','admin3','1362659598');
INSERT INTO `pp_crm_group` VALUES ('9','美国','3','0','admin3','1362660080');
INSERT INTO `pp_crontab` VALUES ('1','主页静态','3','','0','1292402491','inc/crontab/make_index_html.php','','1');
INSERT INTO `pp_crontab` VALUES ('2','备份数据库','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `pp_crontab` VALUES ('3','清除CK编辑器多余的缩略图','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `pp_crontab` VALUES ('4','清空附件表','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `pp_crontab` VALUES ('6','定时发布文章','15','','0','0','inc/crontab/crontab_article.php','解禁定时发布的文章,到时自动发布','1');
INSERT INTO `pp_crontab` VALUES ('7','文章列表页静态','0','0300','0','1292492030','inc/crontab/list_html_crontab.php','','1');
INSERT INTO `pp_crontab` VALUES ('8','文章内容页静态','0','0330','0','1292492050','inc/crontab/bencandy_html_crontab.php','','1');
INSERT INTO `pp_form_config` VALUES ('module_id','21','');
INSERT INTO `pp_form_config` VALUES ('module_pre','form_','');
INSERT INTO `pp_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `pp_form_config` VALUES ('Info_webname','万能表单','');
INSERT INTO `pp_form_content` VALUES ('22','','7','0','1237208241','1237208241','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('26','','6','7','1237250809','1237250809','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('27','','3','1','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('30','','2','7','1237269830','1237269830','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('29','','2','2','1237268864','1237268864','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('24','','6','3','1237213169','1237213169','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('31','','2','6','1239780761','1239780761','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('19','','5','0','1236939584','1236939584','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('20','','6','0','1237174883','1237174883','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('23','','7','0','1237208253','1237208253','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content_2` VALUES ('29','1','JAVA程序员','5','独立开发程序','深圳','800元/月','2','高中','两年以上');
INSERT INTO `pp_form_content_2` VALUES ('30','1','市场总监','2','负责产品的销售.','广州','8000元/月','0','本科','三年以上');
INSERT INTO `pp_form_content_2` VALUES ('31','1','销售经理','8','负责我公司的产品销售.','广州市','3000','0','大专','一年以上');
INSERT INTO `pp_form_content_3` VALUES ('18','1','售后客服','','222223','65223@qq.com','133444444443');
INSERT INTO `pp_form_content_3` VALUES ('25','1','售后客服','hhhhhhhhhhhhhhhhhh','222223','65223@qq.com','13377777777');
INSERT INTO `pp_form_content_3` VALUES ('27','1','售后客服','192.168.0.99/55 all righ\nts reserved \n京ICP备05047353号 \nPowered by PHP168','222223','65223@qq.com','13377777777');
INSERT INTO `pp_form_content_5` VALUES ('19','1','555555555555555','0000-00-00','大专','三项式','','','','0','222223','444444','65223@qq.com','13355555555','3','一直在fgsgfd3','44444444444444443','');
INSERT INTO `pp_form_content_6` VALUES ('20','1','程序员','55555555555\nkkkkkkkkkkkkkkkkkkkkkk','5','222223','高中','56','','','','2','6767','面议','3','65223@qq.com','444444','');
INSERT INTO `pp_form_content_6` VALUES ('24','1','C语言工程师','4444444444444','4','222223','大专','4','','','','2','090-89766543','面议','3','65223@qq.com','444444','1周内');
INSERT INTO `pp_form_content_6` VALUES ('26','1','C语言工程师','rrrrrrrrrrrrrrrrrrrrrrrrrrr','4','222223','大专','4','','','','1','090-89766543','1000元-2000元','3','65223@qq.com','444444','1周内');
INSERT INTO `pp_form_content_7` VALUES ('6','1','整站系统(文章+核心)','6655','','网上转帐','','','222223','444444','3333333','13333333333','3trewtre');
INSERT INTO `pp_form_content_7` VALUES ('7','1','整站系统(文章+核心)','23','2009-03-03','在线支付','fff','eee','222223','444444','333','13344444444','3');
INSERT INTO `pp_form_content_7` VALUES ('8','1','整站系统(文章+核心)','5','','在线支付','','','222223','444444','一直在fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('9','1','整站系统(文章+核心)','0.01','2009-03-13','在线支付','e','s','222223','444444','一直在fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('10','1','整站系统(文章+核心)','1','2009-03-13','在线支付','e','s','222223','444444','一直在fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('11','1','整站系统(文章+核心)','0.01','2009-03-13','olpay','e','s','222223','444444','一直在fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('12','1','整站系统(文章+核心)/分类信息系统/商城系统','54','2009-03-03','网上转帐','t','t','222223','444444','一直在fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('13','1','1/2/商城系统','4','','olpay','','','222223','444444','一直在fgsgfd3','13344444444','3');
INSERT INTO `pp_form_content_7` VALUES ('22','1','1','78','','olpay','','','222223','444444','一直在fgsgfd3','13377777777','3');
INSERT INTO `pp_form_content_7` VALUES ('23','1','1','78','','网上转帐','','','222223','444444','一直在fgsgfd3','13377777777','3');
INSERT INTO `pp_form_module` VALUES ('1','版主申请','0','','a:3:{s:8:\"field_db\";a:8:{s:8:\"sortname\";a:14:{s:5:\"title\";s:18:\"申请哪个栏目的版主\";s:10:\"field_name\";s:8:\"sortname\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:8:\"checkbox\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:38:\"新闻频道\r\n下载频道\r\n图片频道\r\n视频频道\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:2:\"11\";s:9:\"allowview\";N;}s:7:\"webtime\";a:15:{s:5:\"title\";s:16:\"每天上网几个小时\";s:10:\"field_name\";s:7:\"webtime\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"4\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:4:\"小时\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"真实姓名\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"7\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"9\";s:9:\"allowview\";N;}s:3:\"sex\";a:15:{s:5:\"title\";s:4:\"性别\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|男\r\n2|女\r\n0|保密\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"联系QQ\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:8:\"手机号码\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:8:\"interest\";a:14:{s:5:\"title\";s:8:\"兴趣爱好\";s:10:\"field_name\";s:8:\"interest\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:9:\"introduce\";a:14:{s:5:\"title\";s:8:\"自我介绍\";s:10:\"field_name\";s:9:\"introduce\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:4;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"内容\";}s:11:\"listshow_db\";a:2:{s:8:\"truename\";s:8:\"真实姓名\";s:3:\"sex\";s:4:\"性别\";}}','3,4,8,9','0','<p><strong>如果你有激情,有梦想,就来申请做我们的版主吧!</strong></p>','0','0','审批','');
INSERT INTO `pp_form_module` VALUES ('2','招聘表单','0','','a:3:{s:8:\"field_db\";a:8:{s:9:\"workplace\";a:15:{s:5:\"title\";s:8:\"职位名称\";s:10:\"field_name\";s:9:\"workplace\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:100;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:4:\"nums\";a:15:{s:5:\"title\";s:8:\"招聘人数\";s:10:\"field_name\";s:4:\"nums\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"4\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"人\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"9\";s:9:\"allowview\";N;}s:10:\"jobrequire\";a:15:{s:5:\"title\";s:14:\"职位描述及要求\";s:10:\"field_name\";s:10:\"jobrequire\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:8:\"wageyear\";a:15:{s:5:\"title\";s:12:\"工作经验要求\";s:10:\"field_name\";s:8:\"wageyear\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:12;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:40:\"应届毕业生\r\n一年以上\r\n两年以上\r\n三年以上\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:9:\"workwhere\";a:15:{s:5:\"title\";s:8:\"工作地点\";s:10:\"field_name\";s:9:\"workwhere\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:4:\"wage\";a:15:{s:5:\"title\";s:8:\"薪水待遇\";s:10:\"field_name\";s:4:\"wage\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:6:\"asksex\";a:15:{s:5:\"title\";s:8:\"性别要求\";s:10:\"field_name\";s:6:\"asksex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:1:\"1\";s:8:\"form_set\";s:18:\"1|男\r\n2|女\r\n0|不限\";s:10:\"form_value\";s:1:\"0\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"4\";s:9:\"allowview\";N;}s:9:\"schoo_age\";a:15:{s:5:\"title\";s:8:\"学历要求\";s:10:\"field_name\";s:9:\"schoo_age\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:46:\"小学\r\n中学\r\n中专\r\n高中\r\n大专\r\n本科\r\n硕士\r\n博士\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:4:\"以上\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"3\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"内容\";}s:11:\"listshow_db\";a:5:{s:8:\"wageyear\";s:12:\"工作经验要求\";s:9:\"workplace\";s:8:\"职位名称\";s:4:\"nums\";s:8:\"招聘人数\";s:6:\"asksex\";s:8:\"性别要求\";s:9:\"schoo_age\";s:8:\"学历要求\";}}','','0','','0','1','审核','');
INSERT INTO `pp_form_module` VALUES ('3','投诉建议','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:15:{s:5:\"title\";s:8:\"投诉类型\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"售前客服\r\n售后客服\r\n产品质量\r\n其它\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"你的电话\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"你的邮箱\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:15:{s:5:\"title\";s:8:\"投诉内容\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"你的称呼\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:8:\"投诉类型\";s:8:\"truename\";s:8:\"你的称呼\";}}','','0','','0','1','处理','3,4');
INSERT INTO `pp_form_module` VALUES ('4','活动报名表','0','','a:3:{s:8:\"field_db\";a:6:{s:8:\"truename\";a:15:{s:5:\"title\";s:4:\"姓名\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:3:\"sex\";a:14:{s:5:\"title\";s:4:\"性别\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|男\r\n2|女\r\n0|保密\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:3:\"age\";a:15:{s:5:\"title\";s:4:\"年龄\";s:10:\"field_name\";s:3:\"age\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:2;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"岁\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:8:\"联系电话\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"my_song\";a:15:{s:5:\"title\";s:8:\"参赛歌曲\";s:10:\"field_name\";s:7:\"my_song\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:6:\"metier\";a:15:{s:5:\"title\";s:4:\"职业\";s:10:\"field_name\";s:6:\"metier\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:32:\"程序员\r\n销售\r\n文员\r\n工程师\r\n其它\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}}s:7:\"is_html\";a:2:{s:7:\"content\";s:4:\"内容\";s:5:\"my_88\";s:13:\"我的字段my_88\";}s:11:\"listshow_db\";a:4:{s:8:\"truename\";s:4:\"姓名\";s:3:\"age\";s:4:\"年龄\";s:6:\"metier\";s:4:\"职业\";s:7:\"my_song\";s:8:\"参赛歌曲\";}}','','0','<p>&nbsp;&nbsp; 为感谢广大会员对本网站的支持，特地举行第一届歌唱比赛，欢迎大家踊跃报名参加。具体事宜如下：</p>\r\n<p><strong>报名时间：</strong>从即日起——9月4号晚上8：00截止</p>\r\n<p><strong>节目时间：</strong>9月5号（星期一）晚上8：30——11：00</p>\r\n<p><strong>报名要求：</strong>须是注册会员，有语音设备能在聊天室说话。在比赛当天须用论坛注册名字登陆聊天室.</p>\r\n<p><strong>参赛曲目：</strong>自选。可清唱 可带音乐演唱</p>\r\n<p><strong>评委：</strong>人称鸡顺（召集评委两名，限有道者 有智者 智者 仁者 尊者或以上级别会员）</p>\r\n<p><strong>评选方式：</strong>在比赛结束后，由所有会员在此贴中投票，每人限投2票，投票时间限6天，既从9月5日11：01——9月11日晚8：00止。最后由评委统计票数后，评选出票数最多的前三名。</p>\r\n<p><strong>奖励：</strong>对于获得前三名的歌手，将给予不同程度的魅力和积分奖励。</p>\r\n<p>至于报名人数方面暂时不做要求，将根据大家报名顺序，和聊天室时间，为大家排演唱顺序，将于9月4日晚上10：00以前在该贴公布和发短信通知的形式参加此次比赛的选手名单，和演唱顺序。</p>\r\n<p><strong>主持：</strong>玉箫 嘉宾</p>','0','1','审核','');
INSERT INTO `pp_form_module` VALUES ('5','员工资料登记表','0','','a:3:{s:8:\"field_db\";a:16:{s:8:\"cp_title\";a:15:{s:5:\"title\";s:8:\"公司职位\";s:10:\"field_name\";s:8:\"cp_title\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:20;s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:4:\"姓名\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:19;s:9:\"allowview\";N;}s:4:\"bday\";a:14:{s:5:\"title\";s:8:\"出生日期\";s:10:\"field_name\";s:4:\"bday\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"time\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:18;s:9:\"allowview\";N;}s:6:\"height\";a:15:{s:5:\"title\";s:4:\"身高\";s:10:\"field_name\";s:6:\"height\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:3;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"3\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"CM\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:17;s:9:\"allowview\";N;}s:6:\"native\";a:15:{s:5:\"title\";s:4:\"籍贯\";s:10:\"field_name\";s:6:\"native\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:16;s:9:\"allowview\";N;}s:10:\"school_age\";a:14:{s:5:\"title\";s:4:\"学历\";s:10:\"field_name\";s:10:\"school_age\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:45:\"初中\r\n中专\r\n高中\r\n大专\r\n本科\r\n硕士\r\n博士\r\nMBA\";s:10:\"form_value\";s:4:\"大专\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:15;s:9:\"allowview\";N;}s:9:\"specialty\";a:15:{s:5:\"title\";s:4:\"专业\";s:10:\"field_name\";s:9:\"specialty\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:14;s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"QQ号码\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:13;s:9:\"allowview\";N;}s:5:\"email\";a:15:{s:5:\"title\";s:4:\"邮箱\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:12;s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"手机号码\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:11;s:9:\"allowview\";N;}s:5:\"skill\";a:15:{s:5:\"title\";s:4:\"特长\";s:10:\"field_name\";s:5:\"skill\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:6:\"idcard\";a:15:{s:5:\"title\";s:10:\"身份证号码\";s:10:\"field_name\";s:6:\"idcard\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:18;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"18\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:5:\"sport\";a:15:{s:5:\"title\";s:8:\"体育爱好\";s:10:\"field_name\";s:5:\"sport\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:80;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:9:\"telephone\";a:15:{s:5:\"title\";s:8:\"家庭电话\";s:10:\"field_name\";s:9:\"telephone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"address\";a:15:{s:5:\"title\";s:8:\"家庭地址\";s:10:\"field_name\";s:7:\"address\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:7:\"content\";a:15:{s:5:\"title\";s:8:\"自我评价\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:6:\"native\";s:4:\"籍贯\";s:8:\"truename\";s:4:\"姓名\";}}','','0','','0','0','审核','');
INSERT INTO `pp_form_module` VALUES ('6','求职表单','0','','a:3:{s:8:\"field_db\";a:16:{s:12:\"workposition\";a:15:{s:5:\"title\";s:8:\"求职岗位\";s:10:\"field_name\";s:12:\"workposition\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"21\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:4:\"姓名\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:20;s:9:\"allowview\";N;}s:3:\"sex\";a:15:{s:5:\"title\";s:4:\"性别\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|男\r\n2|女\r\n0|保密\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:19;s:9:\"allowview\";N;}s:5:\"myage\";a:15:{s:5:\"title\";s:4:\"年龄\";s:10:\"field_name\";s:5:\"myage\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:2;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"岁\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:18;s:9:\"allowview\";N;}s:9:\"schoo_age\";a:15:{s:5:\"title\";s:4:\"学历\";s:10:\"field_name\";s:9:\"schoo_age\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:45:\"初中\r\n中专\r\n高中\r\n大专\r\n本科\r\n硕士\r\n博士\r\nMBA\";s:10:\"form_value\";s:4:\"大专\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:17;s:9:\"allowview\";N;}s:14:\"graduateschool\";a:15:{s:5:\"title\";s:8:\"毕业学校\";s:10:\"field_name\";s:14:\"graduateschool\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:16;s:9:\"allowview\";N;}s:9:\"specialty\";a:15:{s:5:\"title\";s:4:\"专业\";s:10:\"field_name\";s:9:\"specialty\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:15;s:9:\"allowview\";N;}s:5:\"skill\";a:15:{s:5:\"title\";s:4:\"特长\";s:10:\"field_name\";s:5:\"skill\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:14;s:9:\"allowview\";N;}s:8:\"workyear\";a:15:{s:5:\"title\";s:8:\"工作年限\";s:10:\"field_name\";s:8:\"workyear\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:2;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"年\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:13;s:9:\"allowview\";N;}s:10:\"experience\";a:15:{s:5:\"title\";s:8:\"工作经验\";s:10:\"field_name\";s:10:\"experience\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:2;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:12;s:9:\"allowview\";N;}s:4:\"wage\";a:15:{s:5:\"title\";s:8:\"期望月薪\";s:10:\"field_name\";s:4:\"wage\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:73:\"面议\r\n1000元以下\r\n1000元-2000元\r\n2000元-3000元\r\n3000元-4000元\r\n4000元以上\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:11;s:9:\"allowview\";N;}s:7:\"address\";a:15:{s:5:\"title\";s:10:\"当前居住地\";s:10:\"field_name\";s:7:\"address\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:255;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"70\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:9:\"telephone\";a:15:{s:5:\"title\";s:8:\"联系电话\";s:10:\"field_name\";s:9:\"telephone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:5:\"email\";a:15:{s:5:\"title\";s:8:\"联系邮箱\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"QQ号码\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"9\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"worktime\";a:15:{s:5:\"title\";s:8:\"到岗日期\";s:10:\"field_name\";s:8:\"worktime\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"随时\r\n1周内\r\n2周内\r\n3周内\r\n1个月内\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"内容\";}s:11:\"listshow_db\";a:7:{s:6:\"my_537\";s:8:\"工作经验\";s:6:\"my_425\";s:8:\"工作年限\";s:8:\"truename\";s:4:\"姓名\";s:5:\"myage\";s:4:\"年龄\";s:8:\"workyear\";s:8:\"工作年限\";s:3:\"sex\";s:4:\"性别\";s:12:\"workposition\";s:8:\"求职岗位\";}}','','0','','0','1','录用','');
INSERT INTO `pp_form_module` VALUES ('7','产品订单','0','','a:3:{s:8:\"field_db\";a:11:{s:7:\"product\";a:15:{s:5:\"title\";s:8:\"产品名称\";s:10:\"field_name\";s:7:\"product\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"40\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"30\";s:9:\"allowview\";N;}s:7:\"paytype\";a:15:{s:5:\"title\";s:8:\"付款方式\";s:10:\"field_name\";s:7:\"paytype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:70:\"olpay|在线支付\r\n网上转帐\r\nATM机/银行柜台转帐汇款\r\n货到付款\r\n其它方式\r\n\";s:10:\"form_value\";s:5:\"olpay\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"29\";s:9:\"allowview\";N;}s:7:\"paytime\";a:14:{s:5:\"title\";s:8:\"付款日期\";s:10:\"field_name\";s:7:\"paytime\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"time\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:28;s:9:\"allowview\";N;}s:11:\"receivebank\";a:14:{s:5:\"title\";s:12:\"款项转入银行\";s:10:\"field_name\";s:11:\"receivebank\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:27;s:9:\"allowview\";N;}s:8:\"sendbank\";a:14:{s:5:\"title\";s:12:\"款项转出银行\";s:10:\"field_name\";s:8:\"sendbank\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:26;s:9:\"allowview\";N;}s:8:\"paymoney\";a:15:{s:5:\"title\";s:8:\"支付金额\";s:10:\"field_name\";s:8:\"paymoney\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"元\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"25\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:10:\"联系人姓名\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"24\";s:9:\"allowview\";N;}s:4:\"oicq\";a:14:{s:5:\"title\";s:8:\"联系人QQ\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"23\";s:9:\"allowview\";N;}s:9:\"telephone\";a:14:{s:5:\"title\";s:10:\"联系人电话\";s:10:\"field_name\";s:9:\"telephone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"22\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:10:\"联系人手机\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:21;s:9:\"allowview\";N;}s:7:\"address\";a:14:{s:5:\"title\";s:10:\"联系人地址\";s:10:\"field_name\";s:7:\"address\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"60\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"20\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"内容\";}s:11:\"listshow_db\";a:3:{s:7:\"paytype\";s:8:\"付款方式\";s:8:\"truename\";s:10:\"联系人姓名\";s:8:\"paymoney\";s:8:\"支付金额\";}}','','0','','0','1','付款','');
INSERT INTO `pp_form_module` VALUES ('8','酒店房间预定','0','','a:3:{s:8:\"field_db\";a:6:{s:8:\"roomtype\";a:15:{s:5:\"title\";s:12:\"预订房间类型\";s:10:\"field_name\";s:8:\"roomtype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:44:\"标准双人房\r\n标准单人房\r\n豪华单人房\r\n总统套房\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:7:\"roomnum\";a:15:{s:5:\"title\";s:8:\"预定间数\";s:10:\"field_name\";s:7:\"roomnum\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:3;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"间\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:6:\"numday\";a:15:{s:5:\"title\";s:8:\"入住几晚\";s:10:\"field_name\";s:6:\"numday\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:3;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"晚\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:8:\"intotime\";a:15:{s:5:\"title\";s:8:\"入住时间\";s:10:\"field_name\";s:8:\"intotime\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"time\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"顾客姓名\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:9:\"telephone\";a:15:{s:5:\"title\";s:8:\"联系电话\";s:10:\"field_name\";s:9:\"telephone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"内容\";}s:11:\"listshow_db\";a:3:{s:8:\"roomtype\";s:12:\"预订房间类型\";s:7:\"roomnum\";s:8:\"预定间数\";s:8:\"truename\";s:8:\"顾客姓名\";}}','','0','','0','1','审核','');
INSERT INTO `pp_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `pp_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `pp_friendlink` VALUES ('12','0','PHPWIND官方论坛','http://www.phpwind.net/','http://www.phpwind.net/logo.gif','PHPWIND官方论坛','32','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('5','0','齐博CMS','http://www.qibosoft.com','../images/default/friendlink.gif','国内著名的CMS建站系统提供商','40','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('39','3','华夏名网','http://www.sudu.cn/','','','0','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('25','2','站长网','http://admin5.com/','friendlink/1_20090418160400_wqpAk.gif','站长网','37','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('26','2','中国站长站','http://www.chinaz.com/','friendlink/1_20090418160432_JNCry.gif','中国站长站','38','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('27','2','WEB开发网','http://www.cncms.com.cn/','friendlink/1_20090418160451_64IKO.gif','WEB开发网','34','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('29','3','中电华通','http://www.chinaccnet.com/','','中电华通','0','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('34','2','CNZZ','http://www.cnzz.cn/','','CNZZ','26','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink_sort` VALUES ('2','友情链接','0');
INSERT INTO `pp_friendlink_sort` VALUES ('3','合作伙伴','0');
INSERT INTO `pp_fu_sort` VALUES ('1','0','0','444','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `pp_gather_rule` VALUES ('1','0','article','article','','腾讯人才激辩','','','0','0','1','0','http://edu.qq.com/job/jlgc_more.htm\r\nhttp://edu.qq.com/job/jlgc_more1.htm\r\nhttp://edu.qq.com/job/jlgc_more2.htm','','','','','','','','','0','','','','','','<table|<table style=\"display:none;\"','','','0','1172984270','1172984423','0','0','','0','0','','','','0','','<tr><td height=\"24\" class=\"font14px\"><div align=\"left\">·<a target=\"_blank\" class=\"blackul\" href=\"{url=NO\"}\">{title=NO<}</a> ','<div id=\"ArticleCnt\">{content=*}</div><div id=\"copyweb\">','','','0');
INSERT INTO `pp_gather_rule` VALUES ('2','0','article','article','','且听风吟原创文学空间----->散文 >> 心灵感悟','http://wind.yinsha.com/ashow.php?sid=10&%20size=20&page=[page]','','1','3','1','0','','','','','','','','','','0','','','','<tr><td><p class=s11>','</td></tr>','','','','0','1165498531','1165498610','0','0','','0','0','','','','0','','<img src=images/{NO\"} border=0>\r\n                    \r\n            <a href=\"{url=NO\"}\" target=_blank>{title=NO<}</a> ','','','','0');
INSERT INTO `pp_gather_rule` VALUES ('3','0','article','article','','碧海银纱-> 散文 >> 心灵感悟','http://wind.yinsha.com/ashow.php?sid=5&%20size=20&page=[page]','','1','8','1','0','','','','','','','','','','0','','','','','','','','','0','1166582291','1166582456','0','0','','0','0','','','','0','','<img src=images/{NO\"} border=0>\r\n                    \r\n            <a href=\"{url=NO }\" target=_blank>{title=NO<}</a> ','<div align=\"center\" class=\"s3\">作者: {author=NO\"}　</div>{*}<tr><td><p class=s11>&nbsp;&nbsp;{content=*}</td></tr>\r\n\r\n','','','0');
INSERT INTO `pp_group` VALUES ('2','1','游客组','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `pp_group` VALUES ('3','1','超级管理员','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:151:{s:13:\"center_config\";s:1:\"1\";s:17:\"set_comsort_index\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:12:\"center_cache\";s:1:\"1\";s:19:\"article_more_config\";s:1:\"1\";s:11:\"cache_cache\";s:1:\"1\";s:14:\"article_module\";s:1:\"1\";s:11:\"comment_set\";s:1:\"1\";s:18:\"setmakeALLhtml_set\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:12:\"channel_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:13:\"sort_listsort\";s:1:\"1\";s:15:\"artic_listartic\";s:1:\"1\";s:12:\"comment_list\";s:1:\"1\";s:13:\"artic_postnew\";s:1:\"1\";s:12:\"artic_addpic\";s:1:\"1\";s:18:\"makeindexhtml_make\";s:1:\"1\";s:13:\"makehtml_make\";s:1:\"1\";s:15:\"spmakehtml_make\";s:1:\"1\";s:15:\"setmakehtml_set\";s:1:\"1\";s:11:\"index_label\";s:1:\"1\";s:10:\"s_list_fid\";s:1:\"1\";s:13:\"up_splist_fid\";s:1:\"1\";s:12:\"special_list\";s:1:\"1\";s:15:\"spsort_listsort\";s:1:\"1\";s:13:\"fu_sort_power\";s:1:\"1\";s:14:\"fu_artic_power\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:12:\"company_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:20:\"article_group_config\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:9:\"shoporder\";s:1:\"1\";s:14:\"moneycard_make\";s:1:\"1\";s:7:\"js_list\";s:1:\"1\";s:12:\"propagandize\";s:1:\"1\";s:11:\"jfadmin_mod\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:14:\"limitword_list\";s:1:\"1\";s:11:\"report_list\";s:1:\"1\";s:13:\"copyfrom_list\";s:1:\"1\";s:17:\"limitword_replace\";s:1:\"1\";s:24:\"article_more_avoidgather\";s:1:\"1\";s:13:\"getkeyword_do\";s:1:\"1\";s:17:\"googlemap_makemap\";s:1:\"1\";s:15:\"gather_copysina\";s:1:\"1\";s:11:\"gather_list\";s:1:\"1\";s:16:\"gather_list_sort\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:9:\"code_code\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:4:\"oicq\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:8:\"adminmap\";s:1:\"1\";s:8:\"moneylog\";s:1:\"1\";s:6:\"search\";s:1:\"1\";s:6:\"webmsg\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:23:\"Module_hy_center_config\";s:1:\"1\";s:14:\"Module_hy_sort\";s:1:\"1\";s:17:\"Module_hy_company\";s:1:\"1\";s:17:\"Module_hy_comment\";s:1:\"1\";s:18:\"Module_hy_renzheng\";s:1:\"1\";s:22:\"Module_hy_center_label\";s:1:\"1\";s:21:\"Module_hy_companynews\";s:1:\"1\";s:20:\"Module_hy_companypic\";s:1:\"1\";s:25:\"Module_exam_center_config\";s:1:\"1\";s:21:\"Module_exam_exam_sort\";s:1:\"1\";s:22:\"Module_exam_exam_title\";s:1:\"1\";s:21:\"Module_exam_exam_form\";s:1:\"1\";s:21:\"Module_exam_exam_read\";s:1:\"1\";s:24:\"Module_exam_center_label\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:22:\"Module_count_count_set\";s:1:\"1\";s:17:\"Module_count_sort\";s:1:\"1\";s:23:\"Module_count_count_list\";s:1:\"1\";s:26:\"Module_count_count_listall\";s:1:\"1\";s:27:\"Module_count_count_listmore\";s:1:\"1\";s:18:\"Module_vote_center\";s:1:\"1\";s:20:\"Module_vote_vote_add\";s:1:\"1\";s:21:\"Module_vote_vote_list\";s:1:\"1\";s:16:\"Module_ad_center\";s:1:\"1\";s:21:\"Module_ad_norm_listad\";s:1:\"1\";s:25:\"Module_ad_norm_listuserad\";s:1:\"1\";s:24:\"Module_ad_compete_listad\";s:1:\"1\";s:26:\"Module_ad_compete_listuser\";s:1:\"1\";s:25:\"Module_blog_center_config\";s:1:\"1\";s:16:\"Module_blog_list\";s:1:\"1\";s:16:\"Module_blog_sort\";s:1:\"1\";s:19:\"Module_blog_loglist\";s:1:\"1\";s:19:\"Module_blog_logsort\";s:1:\"1\";s:18:\"Module_blog_member\";s:1:\"1\";s:19:\"Module_blog_comment\";s:1:\"1\";s:17:\"Module_blog_class\";s:1:\"1\";s:24:\"Module_blog_center_label\";s:1:\"1\";s:23:\"Module_wn_center_config\";s:1:\"1\";s:22:\"Module_wn_center_label\";s:1:\"1\";s:19:\"Module_wn_sort_post\";s:1:\"1\";s:14:\"Module_wn_post\";s:1:\"1\";s:14:\"Module_wn_list\";s:1:\"1\";s:17:\"Module_wn_comment\";s:1:\"1\";s:23:\"Module_wn_sort_listsort\";s:1:\"1\";s:16:\"Module_wn_spsort\";s:1:\"1\";s:17:\"Module_wn_special\";s:1:\"1\";s:16:\"Module_wn_gather\";s:1:\"1\";s:17:\"Module_wn_replace\";s:1:\"1\";s:16:\"Module_wn_module\";s:1:\"1\";s:20:\"Module_wn_getkeyword\";s:1:\"1\";s:16:\"Module_wn_repair\";s:1:\"1\";s:17:\"Module_wn_getdata\";s:1:\"1\";s:19:\"Module_wn_adminwork\";s:1:\"1\";s:18:\"Module_wn_keepdata\";s:1:\"1\";s:23:\"Module_w8_center_config\";s:1:\"1\";s:17:\"Module_w8_bankuai\";s:1:\"1\";s:15:\"Module_w8_huati\";s:1:\"1\";s:15:\"Module_w8_level\";s:1:\"1\";s:22:\"Module_w8_center_label\";s:1:\"1\";s:14:\"Module_w8_list\";s:1:\"1\";s:14:\"Module_w8_sort\";s:1:\"1\";s:20:\"Module_w8_sort_baike\";s:1:\"1\";s:20:\"Module_w8_list_baike\";s:1:\"1\";s:22:\"Module_w8_professional\";s:1:\"1\";s:6:\"mymenu\";a:2:{s:13:\"sort_listsort\";s:1:\"1\";s:12:\"comment_list\";s:1:\"1\";}}');
INSERT INTO `pp_group` VALUES ('4','1','前台管理员','0','0','0','a:6:{s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";}','0','a:1:{s:6:\"mymenu\";N;}');
INSERT INTO `pp_group` VALUES ('8','0','普通会员','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `pp_group` VALUES ('9','0','VIP会员','10000','0','0','a:54:{s:17:\"SearchArticleType\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:2:\"30\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:9:\"topmyinfo\";s:0:\"\";s:12:\"topmyinfoday\";s:0:\"\";s:13:\"topcompanyday\";s:0:\"\";s:13:\"post_sell_num\";s:2:\"50\";s:12:\"post_buy_num\";s:2:\"50\";s:13:\"post_news_num\";s:2:\"50\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:2:\"20\";s:17:\"post_zhanghui_num\";s:2:\"20\";s:12:\"post_ZLG_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:2:\"50\";s:19:\"post_xunjiadian_num\";s:2:\"50\";s:16:\"post_pingpai_num\";s:2:\"10\";s:24:\"post_info_collection_num\";s:3:\"100\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `pp_group` VALUES ('10','0','钻石会员','30000','0','0','a:50:{s:17:\"SearchArticleType\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:16:\"PassContributeSP\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"100\";s:12:\"post_buy_num\";s:3:\"100\";s:13:\"post_news_num\";s:3:\"100\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:3:\"100\";s:17:\"post_zhanghui_num\";s:3:\"100\";s:12:\"post_ZLG_num\";s:2:\"10\";s:16:\"post_pingpai_num\";s:2:\"10\";s:19:\"post_baojiadian_num\";s:3:\"100\";s:19:\"post_xunjiadian_num\";s:3:\"100\";s:24:\"post_info_collection_num\";s:3:\"300\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `pp_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `pp_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `pp_guestbook_config` VALUES ('groupPassPassGuestBook','3,4','');
INSERT INTO `pp_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `pp_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `pp_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `pp_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `pp_guestbook_config` VALUES ('Info_webname','留言本','');
INSERT INTO `pp_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `pp_guestbook_content` VALUES ('12','0','1','','','','','1','admin','192.168.0.99','忘记密码强制进入网站后台的方法是:修改/data/global.php文件,查找$ForceEnter=0;把0改成1即可,强制进入网站的后台.','1','1240206881','1240206881','','');
INSERT INTO `pp_guestbook_content` VALUES ('13','0','1','','','','','1','admin','192.168.0.99','普通管理员成为超级管理员的方法是,修改文件/data/admin.php,把里边的帐号更换一下即可','1','1240206958','1240206958','','');
INSERT INTO `pp_guestbook_content` VALUES ('14','0','1','','','','','1','admin','192.168.0.99','整站系统的数据库配置文件是/data/mysql_config.php','1','1240207079','1240207079','','');
INSERT INTO `pp_guestbook_content` VALUES ('15','0','1','','','','','1','admin','192.168.0.99','服务器默认限制上传文件大小为2M,你如果不修改服务器设置.而想在整站系统上传大于2M的文件.是不可以的.必须先修改服务器设置.一般来说服务器的PHP配置文件放在c:\\windows\\php.ini这里.','1','1240207216','1240207216','','');
INSERT INTO `pp_guestbook_content` VALUES ('16','0','1','','','','','1','admin','192.168.0.99','如果服务器做了限制.就无法使用采集程序.','1','1240207330','1240207330','','');
INSERT INTO `pp_guestbook_sort` VALUES ('1','0','发展建议','0','1','0','0','','0','0','','','','','','','0','','','','0','','','','','0','b:0;','0','0','','','0');
INSERT INTO `pp_guestbook_sort` VALUES ('2','0','意见投诉','0','1','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `pp_hack` VALUES ('adminmap','后台菜单','0','','','','','','index.php?lfj=adminmap&job=list','','other','插件大全','0','','0');
INSERT INTO `pp_hack` VALUES ('alipay_set','在线充值支付管理','0','','','','','','index.php?lfj=alipay&job=list','','other','电子商务管理','9','','0');
INSERT INTO `pp_hack` VALUES ('area_list','地区管理','0','','','','','','index.php?lfj=area&job=list','','other','其它功能','5','','0');
INSERT INTO `pp_hack` VALUES ('attachment_list','附件管理','0','','','','','','index.php?lfj=attachment&job=list','','other','其它功能','6','','0');
INSERT INTO `pp_hack` VALUES ('article_more_avoidgather','防采集设置','0','','','','','','index.php?lfj=article_more&job=avoidgather','','other','内容模型插件功能','5','','1');
INSERT INTO `pp_hack` VALUES ('cnzz_set','CNZZ流量统计','0','','','','','','index.php?lfj=cnzz&job=ask','','other','站外功能','3','','0');
INSERT INTO `pp_hack` VALUES ('code_code','PHPWIND营销插件','0','','','','','','index.php?lfj=code&job=code','','other','站外功能','2','','0');
INSERT INTO `pp_hack` VALUES ('copyfrom_list','来源地址管理','0','','','','','','index.php?lfj=copyfrom&job=list','','other','内容模型插件功能','7','','0');
INSERT INTO `pp_hack` VALUES ('crontab','定时任务','0','','','','','','index.php?lfj=crontab&job=list','','other','插件大全','0','','0');
INSERT INTO `pp_hack` VALUES ('dz_credit','DZ论坛积分兑换','0','','','','','','index.php?lfj=dz_credit&job=set','','other','','1','','0');
INSERT INTO `pp_hack` VALUES ('gather_list','采集规则管理','0','','','','','','index.php?lfj=gather&job=list','','other','数据采集器','2','','0');
INSERT INTO `pp_hack` VALUES ('gather_list_sort','采集规则分类管理','0','','','','','','index.php?lfj=gather&job=listsort','','other','数据采集器','1','','0');
INSERT INTO `pp_hack` VALUES ('getkeyword_do','关键字管理','0','','','','','','index.php?lfj=getkeyword&job=list','','other','内容模型插件功能','4','</a><A HREF=\'index.php?lfj=getkeyword&job=list\' target=\'main\'>关键字管理</A> | <A HREF=\'index.php?lfj=getkeyword&job=get\' target=\'main\'>提取关键字</A><a>','0');
INSERT INTO `pp_hack` VALUES ('googlemap_makemap','百度新闻协议/google协议','0','','','','','','index.php?lfj=googlemap&job=makemap','','other','内容模型插件功能','3','','0');
INSERT INTO `pp_hack` VALUES ('jfadmin_mod','积分介绍管理','0','','','','','','index.php?lfj=jfadmin&job=listjf','','other','其它功能','7','','0');
INSERT INTO `pp_hack` VALUES ('js_list','JS内容调用','0','','','','','','index.php?lfj=js&job=list','','other','其它功能','9','','0');
INSERT INTO `pp_hack` VALUES ('labelstyle','标签数据导入与导出','0','','','','','','index.php?lfj=labelstyle&job=label','','other','风格/模板设置','2','','0');
INSERT INTO `pp_hack` VALUES ('limitword_list','不良词语过滤','0','','','','','','index.php?lfj=limitword&job=list','','other','内容模型插件功能','9','','0');
INSERT INTO `pp_hack` VALUES ('limitword_replace','字符替换','0','','','','','','index.php?lfj=limitword&job=replace','','other','内容模型插件功能','6','','0');
INSERT INTO `pp_hack` VALUES ('login','用户登录插件','0','','a:3:{s:10:\"systemType\";s:6:\"php168\";s:9:\"guestcode\";s:0:\"\";}','','','','index.php?lfj=hack&hack=login&job=list','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('logs_login_logs','后台登录日志','0','','','','','','index.php?lfj=logs&job=login_logs','','other','日志管理','2','','0');
INSERT INTO `pp_hack` VALUES ('logs_admin_do_logs','后台操作日志','0','','','','','','index.php?lfj=logs&job=admin_logs','','other','日志管理','1','','0');
INSERT INTO `pp_hack` VALUES ('mail_send','邮件群发','0','','','','','','index.php?lfj=mail&job=send','','other','消息/邮件群发','2','','0');
INSERT INTO `pp_hack` VALUES ('message_send','站内消息群发','0','','','','','','index.php?lfj=message&job=send','','other','消息/邮件群发','3','','0');
INSERT INTO `pp_hack` VALUES ('moneycard_make','点卡充值管理','0','','','','','','index.php?lfj=moneycard&job=make','','other','电子商务管理','7','','1');
INSERT INTO `pp_hack` VALUES ('moneylog','用户消费积分记录','0','','','','','','index.php?lfj=moneylog&job=list','','other','插件大全','0','','0');
INSERT INTO `pp_hack` VALUES ('oicq','QQ在线聊天','0','','a:4:{s:8:\"qq_style\";s:2:\"11\";s:7:\"pic_alt\";s:10:\"有事点这里\";s:6:\"qq_num\";s:19:\"121727818\r\n37352529\";s:8:\"web_name\";s:10:\"PHP168整站\";}','<a target=blank href=\'tencent://message/?uin=121727818&Site=PHP168整站&Menu=yes\'><img border=\'0\' SRC=\'http://wpa.qq.com/pa?p=1:121727818:11\' alt=\'有事点这里\'></a><br><br><a target=blank href=\'tencent://message/?uin=37352529&Site=PHP168整站&Menu=yes\'><img border=\'0\' SRC=\'http://wpa.qq.com/pa?p=1:37352529:11\' alt=\'有事点这里\'></a><br><br>','','','index.php?lfj=hack&hack=oicq&job=edit','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('propagandize','推广赚取积分功能','0','','','','','','index.php?lfj=propagandize&job=list','','other','其它功能','8','','0');
INSERT INTO `pp_hack` VALUES ('report_list','内容好坏举报管理','0','','','','','','index.php?lfj=report&job=list','','other','内容模型插件功能','8','','0');
INSERT INTO `pp_hack` VALUES ('search','搜索','0','','a:2:{s:10:\"systemType\";s:6:\"web168\";s:10:\"searchcode\";s:456:\"<table width=\\\"100%\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" border=\\\"0\\\">\r\n  <form name=\\\"formsearch\\\" method=\\\"post\\\" action=\\\"$webdb[www_url]/search.php\\\">\r\n    <tr> \r\n      <td height=\\\"14\\\"> 关键字:<input type=\\\"text\\\" name=\\\"keyword\\\" size=\\\"10\\\">\r\n        <input type=\\\"submit\\\" name=\\\"Submit32\\\" value=\\\"搜索\\\">\r\n        <input type=\\\"hidden\\\" name=\\\"searchTable\\\" value=\\\"article\\\">\r\n      </td>\r\n    </tr>\r\n   \r\n  </form>\r\n</table>\r\n                \";}','','','','index.php?lfj=hack&hack=search&job=list','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('shoporder','商城订单管理','0','','','','','','index.php?lfj=shoporder&job=list','','other','电子商务管理','8','','0');
INSERT INTO `pp_hack` VALUES ('smallpic','提取缩略图','0','','','','','','index.php?lfj=smallpic&job=list','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('sms_send','手机短信群发','0','','','','','','index.php?lfj=sms&job=send','','other','消息/邮件群发','1','','0');
INSERT INTO `pp_hack` VALUES ('style_editstyle','风格管理','0','','','','','','index.php?lfj=style&job=edittpl','','other','风格/模板设置','2','','0');
INSERT INTO `pp_hack` VALUES ('template_list','模板设置','0','','','','','','index.php?lfj=template&job=list','','other','风格/模板设置','1','','0');
INSERT INTO `pp_hack` VALUES ('upgrade_ol','系统在线升级','0','','','','','','index.php?lfj=upgrade&job=get','','other','其它功能','4','','0');
INSERT INTO `pp_hack` VALUES ('webmsg','站点统计信息','0','PHP168团队','a:3:{s:7:\"tplcode\";s:491:\"<table width=\\\"100%\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" border=\\\"0\\\" id=\\\"webmsg\\\">\r\n     <tr> \r\n      <td height=\\\"14\\\">文章主题: {$article_num} 篇</td>\r\n    </tr>\r\n    <tr> \r\n      <td height=\\\"7\\\" >文章栏目: {$sort_num} 个</td>\r\n    </tr>\r\n    <tr> \r\n      <td height=\\\"7\\\" >文章评论: {$comment_num} 条</td>\r\n    </tr>\r\n	 <tr> \r\n      <td height=\\\"7\\\" >访客留言: {$guestbook_num} 条</td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\\"7\\\" >注册会员: {$member_num} 位</td>\r\n    </tr>\r\n</table>\";s:6:\"cktime\";s:2:\"60\";s:6:\"system\";a:3:{s:7:\"article\";s:1:\"1\";s:4:\"sort\";s:1:\"1\";s:10:\"memberdata\";s:1:\"1\";}}','','','','index.php?lfj=hack&hack=webmsg&job=list','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('webstat','数据统计表','0','','','','','','index.php?lfj=webstat&job=list','','','','0','','0');
INSERT INTO `pp_invoice` VALUES ('1','企业','上海创软信息科技有限公司','2000','12','','33030419871026X','移动信息服务费','苏良本','13636686104','上海市松江区九亭镇虬泾路900弄56号901','请使用顺丰快递，谢谢','','admin3','2147483647','等待处理');
INSERT INTO `pp_invoice` VALUES ('2','$个人','$苏良本','10000','0','','330304198710274516','信息服务费','苏良本','13636686104','上海市虬泾路900弄56号901','','','','1357912255','等待处理');
INSERT INTO `pp_invoice` VALUES ('3','个人','苏良本','20000','0','','330304198710264516','短信发送费用','苏良本','021-64250253','上海市宜山路900号漕河泾科技大楼A1505','','','admin3','1357912523','等待处理');
INSERT INTO `pp_jfabout` VALUES ('6','2','发表文章可得{$webdb[postArticleMoney]}个积分','只有审核后的文章才可得积分,没审核的文章不得积分.','0');
INSERT INTO `pp_jfabout` VALUES ('7','2','删除文章扣除{$webdb[deleteArticleMoney]}个积分','','0');
INSERT INTO `pp_jfabout` VALUES ('5','1','用户注册可得{$webdb[regmoney]}个积分','','0');
INSERT INTO `pp_jfabout` VALUES ('8','2','文章被设置为精华可得{$webdb[comArticleMoney]}个积分','','0');
INSERT INTO `pp_jfabout` VALUES ('9','1','每个点卡可兑换{$webdb[MoneyRatio]}个积分,点卡可以通过在线充值获得.','','0');
INSERT INTO `pp_jfsort` VALUES ('1','会员中心','0');
INSERT INTO `pp_jfsort` VALUES ('2','文章中心','0');
INSERT INTO `pp_label` VALUES ('298','','1','0','bodyad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090420140457_NOGYw.jpg\";s:7:\"imglink\";s:47:\"http://www.phpwind.net/read-htm-tid-761520.html\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240210319','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('299','','1','0','b2','comment','1','a:25:{s:9:\"tplpart_1\";s:579:\"<div>\r\n  <div style=\"float:left;\"><b><font color=\"#990000\">{$username}</font></b> 于 <font color=\"#990000\">{$time_m}-{$time_d} \r\n    {$time_H}:{$time_i}</font> 对 </div>\r\n  <a target=\'_blank\' href=\"$webdb[www_url]/do/comment.php?fid=$fid&id=$aid\" style=\"overflow:hidden;\r\n	text-overflow:ellipsis;\r\n	white-space:nowrap;width:230px;float:left;display:black;\"><font color=\"#0000FF\">{$article}</font></a><div style=\"float:left;\">发表如下评论</div></div>\r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:99%;\">　<font color=\"#666666\">{$title}</font></div>\";s:13:\"tplpart_1code\";s:579:\"<div>\r\n  <div style=\"float:left;\"><b><font color=\"#990000\">{$username}</font></b> 于 <font color=\"#990000\">{$time_m}-{$time_d} \r\n    {$time_H}:{$time_i}</font> 对 </div>\r\n  <a target=\'_blank\' href=\"$webdb[www_url]/do/comment.php?fid=$fid&id=$aid\" style=\"overflow:hidden;\r\n	text-overflow:ellipsis;\r\n	white-space:nowrap;width:230px;float:left;display:black;\"><font color=\"#0000FF\">{$article}</font></a><div style=\"float:left;\">发表如下评论</div></div>\r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:99%;\">　<font color=\"#666666\">{$title}</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"comment\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";N;s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:149:\" SELECT A.*,A.content AS title,B.title AS article FROM pp_comment A LEFT JOIN pp_article B ON A.aid=B.aid  WHERE A.yz=1  ORDER BY A.cid DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:8:\"titlenum\";s:2:\"80\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240996241','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('300','','1','0','listpic2','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"10\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:152:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (10)  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006574','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('301','','1','0','listpic3','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006730','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('152','','1','0','hotarticle','article','1','a:31:{s:13:\"tplpart_1code\";s:212:\"<div style=\"background:url($webdb[www_url]/images/default/i/$i.gif) no-repeat 0px 2px;height:23px;text-indent:1.3em;\"><A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:27:\"/common_title/2title_i2.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:97:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE 1  AND A.mid=\'0\'   ORDER BY A.hits DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"228\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239609179','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('163','','1','0','listpic','article','1','a:31:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:7px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:0;s:5:\"fiddb\";s:2:\"33\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:167:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.levels=1  AND A.fid IN (33)  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"3\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"459\";s:5:\"div_h\";s:3:\"254\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074794','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('472','','1','0','index_ad8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141128_eq3o1.jpg\";s:7:\"imglink\";s:26:\"http://www.chinaccnet.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"269\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642659','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('182','','1','0','Title1','code','0','web新闻','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"220\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240127514','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('183','','1','0','Title2','code','0','求职招聘','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"255\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239767486','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('184','','1','0','Title3','code','0','软件下载','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022710','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('185','','1','0','Title4','code','0','社会新闻','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022689','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('186','','1','0','Title5','code','0','文章评论','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"455\";s:5:\"div_h\";s:2:\"24\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022487','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('187','','1','0','Title6','code','0','优秀会员','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899624','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('188','','1','0','Title01','code','0','热门文章','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"24\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022429','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('189','','1','0','Title02','code','0','最受关注','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"234\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022631','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('630','','0','0','special_sport_2','code','0','<a href=\"#\">新闻中心</a> | <a href=\"#\">体育新闻</a> | <a href=\"#\">娱乐新闻</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('284','','1','0','Title_jinjaad','code','0','投票调查','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"215\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022512','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('285','','1','0','jinjaad','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=6\'></SCRIPT>','a:4:{s:6:\"voteid\";s:1:\"6\";s:5:\"div_w\";s:3:\"229\";s:5:\"div_h\";s:3:\"138\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239010747','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('302','','1','0','listpic4','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006655','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('303','','1','0','listpic5','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"104\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'104\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006692','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('287','','1','0','c2','article','1','a:31:{s:13:\"tplpart_1code\";s:147:\"<div style=\"padding-top:5px;color:#ccc;\">·<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:411:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:5px;\">\r\n  <tr>\r\n    <td align=\"left\"><a href=\"$url\" target=\"_blank\" style=\"font-weight:bold;color:#666;\" title=\"$full_title\">$title</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"left\" height=\"18\" valign=\"middle\" style=\"border-bottom:1px dotted #ccc;text-indent:2em;padding-bottom:5px;color:#929292;\">$content</td>\r\n  </tr>\r\n</table>\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:5:\"35,38\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:189:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (35,38)  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.posttime DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"68\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"34\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"222\";s:5:\"div_h\";s:3:\"159\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192238','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('288','','1','0','comarticle','article','1','a:31:{s:13:\"tplpart_1code\";s:1110:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:6px;\">\r\n  <tr> \r\n    <td align=\"left\" style=\"border-bottom:1px dotted #eee;padding-bottom:5px;\"> \r\n      <div style=\"background:url($webdb[www_url]/images/default/sdigg.gif) no-repeat;width:44px;height:36px;float:left;\">\r\n        <div style=\"font-size:13px;text-align:center;padding:0px;font-weight:bold;background:#eee;\" id=\"DiggNum_$id\">$digg_num</div>\r\n        <div style=\"text-align:center;font-size:12px;color:#FFF;width:44px;height:20px;overflow:hidden;background:#ccc;\" id=\"DiggDo_$id\"><a href=\"$webdb[www_url]/do/job.php?job=digg&type=vote&id=$id\" target=\"DiggIframe_$id\" style=\"font-size:12px;color:#FFF;\">顶一下</a></div>\r\n      </div>\r\n      <div style=\"margin-left:4px;float:left;width:195px;\"> \r\n        <a href=\"$url\" target=\"_blank\" style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a>\r\n      </div>\r\n      <div style=\"display:none;\"><iframe src=\"$webdb[www_url]/do/job.php?job=digg&type=getnum&id=$id\" width=0 height=0 name=\"DiggIframe_$id\" id=\"DiggIframe_$id\"></iframe></div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:22:\"/article/title_dig.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.digg_num\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.digg_num DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:2:\"55\";s:8:\"titlenum\";s:2:\"60\";s:9:\"titlenum2\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"246\";s:5:\"div_h\";s:3:\"243\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239193510','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('338','','1','0','bjsptitle','code','0','推荐专题','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('339','','1','0','bjspecial','specialsort','1','a:34:{s:9:\"tplpart_1\";s:442:\"<div style=\"float:left;margin:5px 0px 0px 5px;width:155px;text-align:center;\"> \r\n             <a href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" target=\"_blank\" style=\"display:block;width:120px;height:160px;border:1px #333 solid;margin-bottom:5px;\"><img width=\"120\" height=\"160\" src=\"$picurl\" border=\"0\"></a> \r\n               <A HREF=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">$title</A> \r\n</div>\";s:13:\"tplpart_1code\";s:442:\"<div style=\"float:left;margin:5px 0px 0px 5px;width:155px;text-align:center;\"> \r\n             <a href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" target=\"_blank\" style=\"display:block;width:120px;height:160px;border:1px #333 solid;margin-bottom:5px;\"><img width=\"120\" height=\"160\" src=\"$picurl\" border=\"0\"></a> \r\n               <A HREF=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">$title</A> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:11:\"specialsort\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";s:45:\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:3:\"fid\";s:0:\"\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:113:\" SELECT A.* FROM pp_special A  WHERE `ifbase`=0  AND A.levels=1  AND A.picurl!=\'\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"953\";s:5:\"div_h\";s:3:\"177\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899961','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('289','','1','0','a1','article','1','a:31:{s:13:\"tplpart_1code\";s:147:\"<div style=\"padding-top:6px;color:#ccc;\">·<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:558:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin:3px 0px 5px 0px;\">\r\n  <tr> \r\n    <td rowspan=\"2\" width=\"4%\" style=\"padding-right:3px;padding-bottom:7px;border-bottom:1px dotted #ccc;\"><a href=\"$url\"><img src=\"$picurl\" width=\"100\" height=\"70\" border=\"0\"></a></td>\r\n    <td width=\"96%\"> <a href=\"$url\" target=\"_blank\" style=\"color:#666;font-weight:bold;\">$title</a></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\"96%\" style=\"padding-bottom:7px;text-indent:1em;border-bottom:1px dotted #ccc;color:#929292;\">$content</td>\r\n  </tr>\r\n</table>\r\n\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:24:\"/common_zh_pic/zh_pc.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"39\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:171:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (39)   AND R.topic=1 ORDER BY A.posttime DESC LIMIT 6 \";s:4:\"sql2\";s:183:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.fid IN (39)  AND A.ispic=1 AND R.topic=1 ORDER BY A.posttime DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"60\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"221\";s:5:\"div_h\";s:3:\"186\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192058','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('366','','1','0','show_34','article','1','a:31:{s:13:\"tplpart_1code\";s:809:\"<table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"float:left;width:160px;margin-top:15px;\">\r\n  <tr>\r\n    <td align=\"center\"><a href=\"$url\" target=\"_blank\" style=\"border:1px solid #ccc;display:block;width:120px;height:90px;\"><img style=\"border:1px solid #fff;\" src=\'$picurl\' border=0 width=\"120\" height=\"90\"></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-top:5px;\"><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-top:3px;\"><strike><b>￥$martprice</b></strike> <b><font color=\"#FF0000\">￥$nowprice</font></b></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-bottom:18px;padding-top:3px;\"><a href=\"$url\" target=\"_blank\"><img src=\"$webdb[www_url]/images/default/order_button.gif\" border=\"0\"></a></td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"180\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid ASC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"450\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074246','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('293','','1','0','c1','article','1','a:31:{s:13:\"tplpart_1code\";s:254:\"<div style=\"line-height:130%;font-size:13px;color:#ccc;clear:both;\"><span style=\"float:left;\">·<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight\">$title </a></span><span style=\"float:right;padding-right:3px;color:#666;\">({$hits})</span></div>\";s:13:\"tplpart_2code\";s:302:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:4px;\">\r\n  <tr>\r\n    <td style=\"font-size:13px;font-weight:bold;\">[推荐]<A HREF=\"$url\" target=\"_blank\" style=\"font-size:15px;font-weight:bold;color:#990000;text-decoration: underline;\">$title</A></td>\r\n  </tr>\r\n</table>\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:8:\"12,26,27\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (12,26,27)  AND A.mid=\'101\'   ORDER BY A.posttime DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"226\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192810','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('304','','1','0','a2','member','1','a:19:{s:9:\"tplpart_1\";s:504:\"<div style=\"float:left;margin-right:5px;margin-top:7px;margin-bottom:3px;\"> <CENTER><a style=\"display:block;width:65px;height:65px;border:1px solid #ccc;\" href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img style=\"border:2px solid #fff;\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"65\" height=\"65\" src=\"$picurl\" border=\"0\"></a><A HREF=\"$webdb[www_url]/member/homepage.php?uid=$uid\" title=\'$full_title\' target=\"_blank\">$title</A></CENTER>\r\n            </div>\";s:13:\"tplpart_1code\";s:504:\"<div style=\"float:left;margin-right:5px;margin-top:7px;margin-bottom:3px;\"> <CENTER><a style=\"display:block;width:65px;height:65px;border:1px solid #ccc;\" href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img style=\"border:2px solid #fff;\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"65\" height=\"65\" src=\"$picurl\" border=\"0\"></a><A HREF=\"$webdb[www_url]/member/homepage.php?uid=$uid\" title=\'$full_title\' target=\"_blank\">$title</A></CENTER>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:7:\"group_1\";s:0:\"\";s:7:\"group_2\";s:0:\"\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"6\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"regdate\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:173:\" SELECT M.username AS title,D.*,D.icon AS picurl,D.introduce AS content FROM pp_members M LEFT JOIN pp_memberdata D ON M.uid=D.uid  WHERE 1  ORDER BY D.regdate DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240994881','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('305','','1','0','Title04','code','0','访客留言','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('306','','1','0','c02','guestbook','1','a:25:{s:9:\"tplpart_1\";s:384:\"<div> <b><font color=\"#990000\">{$username}</font></b> 于<font color=\"#990000\"> {$time_m}-{$time_d} \r\n    {$time_H}:{$time_i} </font>发表的留言:</div> \r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:98%;padding-bottom:6px;\">　<a href=\"$webdb[www_url]/do/guestbook.php?fid=$fid&id=$id#$id\" target=\"_blank\"><font color=\"#666666\">{$title}</font></a></div>\r\n\";s:13:\"tplpart_1code\";s:384:\"<div> <b><font color=\"#990000\">{$username}</font></b> 于<font color=\"#990000\"> {$time_m}-{$time_d} \r\n    {$time_H}:{$time_i} </font>发表的留言:</div> \r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:98%;padding-bottom:6px;\">　<a href=\"$webdb[www_url]/do/guestbook.php?fid=$fid&id=$id#$id\" target=\"_blank\"><font color=\"#666666\">{$title}</font></a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:9:\"guestbook\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";N;s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:86:\" SELECT A.*,content AS title FROM pp_guestbook A  WHERE 1  ORDER BY A.id DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:8:\"titlenum\";s:2:\"70\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"231\";s:5:\"div_h\";s:3:\"260\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240898314','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('470','','1','0','index_ad5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171021_fndoi.gif\";s:7:\"imglink\";s:26:\"http://www.chinaccnet.com/\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642651','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('471','','1','0','index_ad7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141121_uu6ot.gif\";s:7:\"imglink\";s:19:\"http://u.admin5.com\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"991\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291791530','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('296','','1','0','mainnews','article','1','a:31:{s:13:\"tplpart_1code\";s:630:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:8px;\">\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-bottom:5px;\"><a href=\"$url\" target=\"_blank\"><b><font color=\"#D50000\" style=\"font-size:16px;\">$title</font></b></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"left\" height=\"18\" valign=\"middle\" style=\"border-bottom:1px dotted #ccc;line-height:150%;text-indent:2em;color:#929292;padding-bottom:3px;\">{$content} 共<font color=\"#D50000\">{$hits}</font>人关注  评论<font color=\"#D50000\">{$comments}</font>条 \r\n      [<a href=\"$url\" style=\"color:#D50000;\" target=\"_blank\">详情</a>]</td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"31\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (31)   AND R.topic=1 ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"60\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"461\";s:5:\"div_h\";s:2:\"71\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240195933','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('364','','1','0','bb1','code','0','<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" bgcolor=\"#ffffff\">\r\n        <tr align=\"center\" bgcolor=\"#EBEBEB\"> \r\n          <td width=\"36%\">求职岗位</td>\r\n          <td width=\"13%\">学历</td>\r\n          <td width=\"14%\">性别</td>\r\n          <td width=\"13%\">工作年限</td>\r\n          <td width=\"13%\">年龄</td>\r\n          <td width=\"11%\">详情</td>\r\n        </tr> \r\n</table>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"475\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239768502','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('365','','1','0','bb2','form','1','a:31:{s:9:\"tplpart_1\";s:527:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\"> $workposition</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$sex</td>\r\n          <td width=\"13%\">{$workyear} 年</td>\r\n          <td width=\"13%\">{$myage} 岁</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">详情</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_1code\";s:527:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\"> $workposition</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$sex</td>\r\n          <td width=\"13%\">{$workyear} 年</td>\r\n          <td width=\"13%\">{$myage} 岁</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">详情</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"form\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"6\";s:7:\"tplpath\";s:16:\"/form/askjob.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:195:\" SELECT A.*,R.*,config AS M_config FROM pp_form_content A LEFT JOIN pp_form_content_6 R ON A.id=R.id LEFT JOIN pp_form_module F ON A.mid=F.id  WHERE 1  AND A.mid=\'6\'  ORDER BY A.id DESC  LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899424','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('318','','1','0','b02','code','0','<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" bgcolor=\"#ffffff\">\r\n        <tr align=\"center\" bgcolor=\"#EBEBEB\"> \r\n          <td width=\"36%\">招聘职位</td>\r\n          <td width=\"13%\">学历要求</td>\r\n          <td width=\"14%\">性别要求</td>\r\n          <td width=\"13%\">经验要求</td>\r\n          <td width=\"13%\">月薪待遇</td>\r\n          <td width=\"11%\">详情</td>\r\n        </tr> \r\n      </table>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"490\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022772','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('330','','1','0','mainnews2','article','1','a:31:{s:13:\"tplpart_1code\";s:397:\"<div style=\"clear:both;padding-top:2px;margin-bottom:4px;\"><span style=\"float:left;font-size:13px;color:#ccc;\">·<A HREF=\"$list_url\" style=\"font-size:13px;\">{$fname}</A>| <A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;font-size:13px;\">$title</a>$new$hot</span>                     \r\n    <span style=\"float:right;color:#993300;padding-right:3px;font-size:13px;\">[{$time_m}-{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:28:\"/common_fname/time_fname.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"32\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:141:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.levels=1  AND A.fid IN (32)  AND A.mid=\'0\'   ORDER BY A.posttime DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"48\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"467\";s:5:\"div_h\";s:3:\"126\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240280500','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('314','','0','0','1236087504','article','1','a:28:{s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";s:1:\"0\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"default\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:54:\" SELECT A.* FROM pp_article A  WHERE A.yz=1   LIMIT 5 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','1','');
INSERT INTO `pp_label` VALUES ('316','tretre','0','0','1236087539','article','1','a:28:{s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";s:1:\"0\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"default\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:54:\" SELECT A.* FROM pp_article A  WHERE A.yz=1   LIMIT 5 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','1','');
INSERT INTO `pp_label` VALUES ('317','','1','0','Title05','code','0','商城购物','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239778992','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('319','','1','0','b022','form','1','a:31:{s:9:\"tplpart_1\";s:521:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\">&nbsp;$workplace</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$asksex</td>\r\n          <td width=\"13%\">$wageyear</td>\r\n          <td width=\"13%\">$wage</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">详情</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_1code\";s:521:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\">&nbsp;$workplace</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$asksex</td>\r\n          <td width=\"13%\">$wageyear</td>\r\n          <td width=\"13%\">$wage</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">详情</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"form\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"2\";s:7:\"tplpath\";s:17:\"/form/givejob.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:195:\" SELECT A.*,R.*,config AS M_config FROM pp_form_content A LEFT JOIN pp_form_content_2 R ON A.id=R.id LEFT JOIN pp_form_module F ON A.mid=F.id  WHERE 1  AND A.mid=\'2\'  ORDER BY A.id DESC  LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"70\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899392','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('322','','1','0','bodyad2','pic','0','a:4:{s:6:\"imgurl\";s:11:\"ad/cnad.jpg\";s:7:\"imglink\";s:22:\"http://www.qibosoft.com/\";s:5:\"width\";s:3:\"742\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"742\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239759405','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('323','','1','0','Title4d','code','0','搜索引擎之PK战','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1237278157','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('324','','1','0','c2d','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=10\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"10\";s:5:\"div_w\";s:3:\"237\";s:5:\"div_h\";s:3:\"145\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239011013','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('325','','1','0','Title5d','code','0','2008年中国站长八大热门','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240113989','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('326','','1','0','b2d','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=11\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"11\";s:5:\"div_w\";s:3:\"480\";s:5:\"div_h\";s:3:\"238\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239011483','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('327','','1','0','c02d','article','1','a:31:{s:13:\"tplpart_1code\";s:476:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin:3px 0px 12px 0px;\">\r\n  <tr> \r\n    <td rowspan=\"2\" width=\"4%\" style=\"padding-right:3px;\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"100\" height=\"75\" border=\"0\"></a></td>\r\n    <td width=\"96%\"> <a href=\"$url\" target=\"_blank\" style=\"color:#666;font-weight:bold;\">$title</a></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\"96%\" style=\"color:#929292;text-indent:1em;\">$content</td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"34\";s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:211:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (34)  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.aid DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"58\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"238\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240060985','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('328','','1','0','Title04d','code','0','推荐图文','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"215\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239345594','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('329','','1','0','c2de','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090420130440_bWzOZ.jpg\";s:7:\"imglink\";s:19:\"http://www.371.com/\";s:5:\"width\";s:3:\"242\";s:6:\"height\";s:2:\"98\";}','a:3:{s:5:\"div_w\";s:3:\"233\";s:5:\"div_h\";s:2:\"87\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240205249','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('347','','0','0','show_right_top_picad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=show_right_top_picad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"110\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893892','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('469','','1','0','index_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171018_bzfar.gif\";s:7:\"imglink\";s:21:\"http://www.eydns.com/\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642613','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('348','','0','0','show_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=show_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893880','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('349','','0','0','list_page_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=list_page_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"130\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893815','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('350','','0','0','article_list','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=article_list\'> </SCRIPT>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"273\";s:5:\"div_h\";s:2:\"56\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292548963','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('351','','0','0','article_list_tag','code','0','广告位','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279418','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('356','','0','0','bbsifmark_tag','code','0','论坛优秀贴','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('354','','0','0','article_show','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=article_show\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893904','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('355','','0','0','article_show_tag','code','0','广告位','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279430','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('358','','0','0','view_article_bbs_tag','code','0','论坛推荐图文','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('360','','1','0','bodyad33','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090418150428_gPa47.jpg\";s:7:\"imglink\";s:22:\"http://www.yeepay.com/\";s:5:\"width\";s:3:\"243\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240041136','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('468','','1','0','index_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171006_q2b2q.gif\";s:7:\"imglink\";s:18:\"http://www.sudu.cn\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642635','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('465','','1','0','index_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141123_k355a.jpg\";s:7:\"imglink\";s:36:\"http://www.chinaccnet.com/hyperv.php\";s:5:\"width\";s:3:\"740\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"737\";s:5:\"div_h\";s:2:\"67\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291714552','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('466','','1','0','index_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141150_bnrt2.jpg\";s:7:\"imglink\";s:22:\"http://www.yeepay.com/\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289462758','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('467','','1','0','index_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"266\";s:6:\"height\";s:3:\"236\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101109141150_sfgyo.jpg\";i:2;s:32:\"label/1_20101109141154_f28xx.jpg\";}s:7:\"piclink\";a:2:{i:1;s:19:\"http://www.sudu.cn/\";i:2;s:26:\"http://www.chinaccnet.com/\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"265\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642100','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('373','','1','99','head_guides','code','0','      <div class=\"ico_guide bbs\"><a href=\"http://www_qibosoft_com/bbs/\" target=\'_blank\'>社区</a></div>\r\n	  <div class=\"ico_guide post\"><a href=\"http://www_qibosoft_com/do/post.php\">投稿</a></div>\r\n	  <div class=\"ico_guide sell\"><a href=\"http://www_qibosoft_com/do/buymoneycard.php?paytype=yeepay\">充值</a></div>\r\n	  <div class=\"ico_guide jf\"><a href=\"http://www_qibosoft_com/do/jf.php\">积分</a></div>\r\n	  <div class=\"ico_guide user\"><a href=\"http://www_qibosoft_com/do/list_form.php?mid=2\">招聘</a></div>\r\n	  <div class=\"ico_guide search\"><a href=\"http://www_qibosoft_com/do/search.php\">搜索</a></div>\r\n	  <div class=\"ico_guide book\"><a href=\"http://www_qibosoft_com/do/guestbook.php\">留言</a></div>\r\n	  <div class=\"ico_guide digg\"><a href=\"http://www_qibosoft_com/do/listsp.php?fid=1\">专题</a></div>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"700\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240898798','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('383','','0','0','list_page_mv','article','1','a:31:{s:13:\"tplpart_1code\";s:195:\"(mv,290,210,false)$mvurl(/mv)\r\n<div style=\"line-height:170%;text-align:center;padding-top:8px;\"><A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\" title=\'$full_title\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','1','0','default');
INSERT INTO `pp_label` VALUES ('375','','0','0','list_top_ad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=AD_list_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:2:\"51\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893857','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('376','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:149:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\">&nbsp;<A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:30:\"/common_title/1title_noico.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240201322','11','0','24','0','default');
INSERT INTO `pp_label` VALUES ('377','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','23','0','default');
INSERT INTO `pp_label` VALUES ('378','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('379','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('380','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('381','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('384','','0','0','list_page_mv','article','1','a:31:{s:13:\"tplpart_1code\";s:195:\"(mv,290,210,false)$mvurl(/mv)\r\n<div style=\"line-height:170%;text-align:center;padding-top:8px;\"><A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\" title=\'$full_title\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240292096','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('385','','1','0','showinfo','code','0','<SCRIPT LANGUAGE=\"JavaScript\">\r\n<!--\r\ndocument.write(\'<span id=\"num_info\"><img alt=\"内容加载中,请稍候...\" src=\"http://www_qibosoft_com/images/default/ico_loading3.gif\"></span>\');\r\ndocument.write(\'<div style=\"display:none;\"><iframe src=\"http://www_qibosoft_com/do/job.php?job=getinfo&iframeID=num_info\" width=0 height=0></iframe></div>\');\r\n//-->\r\n</SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:2:\"55\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074422','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('387','','0','0','blog_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"310\";s:6:\"height\";s:3:\"200\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101108091153_pfput.jpg\";i:2;s:32:\"label/1_20101108091131_uive7.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289180839','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('388','','0','0','blog_hot','blog_log','1','a:24:{s:9:\"tplpart_1\";s:234:\" <div class=\"list\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" class=\"t$i\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"user\" target=\"_blank\">$username</a></div>\r\n                \";s:13:\"tplpart_1code\";s:234:\" <div class=\"list\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" class=\"t$i\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"user\" target=\"_blank\">$username</a></div>\r\n                \";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:76:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289182107','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('389','','0','0','blog_topic','blog_log','1','a:24:{s:9:\"tplpart_1\";s:446:\"<div class=\"list$i\">\r\n            	<div class=\"title\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\'_blank\'>$title</a></div>\r\n                <div class=\"user\"><a href=\"$webdb[www_url]/blog/?uid=$uid\">$username</a></div>\r\n                <div class=\"content\">　{$content}...<a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\'_blank\'>[详细]</a>\r\n                </div>\r\n            </div>\";s:13:\"tplpart_1code\";s:446:\"<div class=\"list$i\">\r\n            	<div class=\"title\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\'_blank\'>$title</a></div>\r\n                <div class=\"user\"><a href=\"$webdb[www_url]/blog/?uid=$uid\">$username</a></div>\r\n                <div class=\"content\">　{$content}...<a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\'_blank\'>[详细]</a>\r\n                </div>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:3:\"110\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:76:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289186800','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('390','','0','0','blog_member1','Info_blog_','1','a:28:{s:13:\"tplpart_1code\";s:406:\"<div class=\"listblog\">\r\n                	<a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\" class=\"pic\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"45\" height=\"45\" /></a>\r\n                    <a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\" class=\"name\">$title</a>\r\n                    <span>浏览量:<em>$hits</em>次</span>\r\n                </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"blog\";s:6:\"wninfo\";s:5:\"blog_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:158:\"SELECT M.*,B.*,B.webname AS title,M.uid AS id,M.icon AS picurl FROM pp_blog_home B LEFT JOIN pp_memberdata M ON B.uid=M.uid  WHERE 1  ORDER BY 1 DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289186011','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('392','','0','0','blog_member2','Info_blog_','1','a:28:{s:13:\"tplpart_1code\";s:554:\"<div class=\"listReporter\">\r\n                	<a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\" class=\"pic\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"70\" height=\"70\" /></a>\r\n                	<a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\" class=\"name\">$title</a>\r\n                    <span>浏览量:<em>$hits</em>次</span>\r\n                    <span><a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\"><img src=\"$webdb[www_url]/images/v7/blog/view.gif\"/></a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"blog\";s:6:\"wninfo\";s:5:\"blog_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"B.uid\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:161:\"SELECT M.*,B.*,B.webname AS title,M.uid AS id,M.icon AS picurl FROM pp_blog_home B LEFT JOIN pp_memberdata M ON B.uid=M.uid  WHERE 1  ORDER BY B.uid ASC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289186087','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('393','','0','0','blog_title1','blog_log','1','a:24:{s:9:\"tplpart_1\";s:152:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\">$username</a></span></div>\";s:13:\"tplpart_1code\";s:207:\"<div class=\"list l$i\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\"_blank\">$title</a><span><a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\">$username</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:76:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('394','','0','0','blog_title2','blog_log','1','a:24:{s:9:\"tplpart_1\";s:146:\" <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"u\" target=\"_blank\">$username</a></div>\";s:13:\"tplpart_1code\";s:201:\" <div class=\"list\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"u\" target=\"_blank\">$username</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:75:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime ASC LIMIT 7 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('395','','0','0','blog_title3','blog_log','1','a:24:{s:9:\"tplpart_1\";s:146:\" <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"u\" target=\"_blank\">$username</a></div>\";s:13:\"tplpart_1code\";s:201:\" <div class=\"list\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"u\" target=\"_blank\">$username</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:76:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 7 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('396','','0','0','blog_photo1','blog_photo','1','a:24:{s:9:\"tplpart_1\";s:255:\"<div class=\"listpic\"> <a href=\"$url\" class=\"pic\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" /></a> \r\n              <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_1code\";s:369:\"<div class=\"listpic\"> <a href=\"$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id\" class=\"pic\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" /></a> \r\n              <a href=\"$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id\" class=\"title\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:61:\"$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:74:\" SELECT * FROM pp_blog_photo_pic  WHERE 1  ORDER BY posttime DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('397','','0','0','blog_t1','code','0','热门日志','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('398','','0','0','blog_t2','code','0','推荐图片','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('399','','0','0','blog_t3','code','0','推荐博客','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('400','','0','0','blog_t4','code','0','博文共欣','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('401','','0','0','blog_t5','code','0','<a href=\"log.php?fid=1\" class=\"F14\">健康</a> | <a href=\"log.php?fid=2\" class=\"F14\">美食</a> | <a href=\"log.php?fid=3\" class=\"F14\">旅游</a> <a href=\"log.php\" class=\"more\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"200\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190367','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('402','','0','0','blog_t6','code','0','精彩日志','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('403','','0','0','blog_t7','code','0','<a  href=\"log.php?fid=1\">社会民生</a> | <a href=\"log.php?fid=2\">情感生活</a> <a href=\"log.php\" class=\"more\" target=\"_blank\">更多...</a>\r\n\r\n','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"150\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190226','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('404','','0','0','blog_t8','code','0','最新博客','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('405','','0','0','blog_t9','code','0','<a href=\"photo.php\" target=\"_blank\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190131','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('406','','0','0','blog_t10','code','0','<a href=\"member.php\" target=\"_blank\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190119','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('407','','0','0','blog_t11','code','0','<a href=\"member.php\" target=\"_blank\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190100','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('408','','0','0','blog_b1','code','0','<span class=\"l FB\">健康</span><span class=\"r\"><a href=\"log.php?fid=1\">更多...</a></span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190307','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('409','','0','0','blog_b2','code','0','<span class=\"l FB\">美食</span><span class=\"r\"><a href=\"log.php?fid=2\">更多...</a></span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190336','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('410','','0','0','exam_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"160\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101108131113_7mfrt.jpg\";i:2;s:32:\"label/1_20101108131123_dyfe2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('411','','0','0','exam_top1','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:185:\"<div class=\"uu$i\"><span class=\"L\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a></span><span class=\"R\">{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:162:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"50\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"400\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366253','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('412','','0','0','exam_top2','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:113:\"<div class=\"lista$i\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:162:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 11 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"400\";s:5:\"div_h\";s:3:\"150\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366296','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('413','','0','0','exam_top3','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:134:\"<div class=\"list$i\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:162:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"28\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366305','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('414','','0','0','exam_a1','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:112:\"<div class=\"list$i\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366363','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('415','','0','0','exam_a2','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:112:\"<div class=\"list$i\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"112\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366375','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('416','','0','0','exam_a3','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:231:\"<div class=\"list\"><a href=\"$webdb[www_url]/exam/list.php?fid=$fid\" class=\"s\" target=\"_blank\">[{$fname}]</a><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366339','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('417','','0','0','exam_a4','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:231:\"<div class=\"list\"><a href=\"$webdb[www_url]/exam/list.php?fid=$fid\" class=\"s\" target=\"_blank\">[{$fname}]</a><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366351','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('418','','0','0','exam_a5','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:231:\"<div class=\"list\"><a href=\"$webdb[www_url]/exam/list.php?fid=$fid\" class=\"s\" target=\"_blank\">[{$fname}]</a><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366399','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('419','','0','0','exam_a6','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:231:\"<div class=\"list\"><a href=\"$webdb[www_url]/exam/list.php?fid=$fid\" class=\"s\" target=\"_blank\">[{$fname}]</a><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366390','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('420','','0','0','exam_q1','code','0','	<a href=\"#\">辅导</a> | <a href=\"#\">模拟考场</a> | <a href=\"#\">网校</a> | <a href=\"#\">真题</a> | <a href=\"#\">百科</a> | <a href=\"#\">招聘</a> | <a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('421','','0','0','exam_q2','code','0','	<a href=\"#\">辅导</a> | <a href=\"#\">模拟考场</a> | <a href=\"#\">网校</a> | <a href=\"#\">真题</a> | <a href=\"#\">百科</a> | <a href=\"#\">招聘</a> | <a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('422','','0','0','exam_q3','code','0','	<a href=\"#\">辅导</a> | <a href=\"#\">模拟考场</a> | <a href=\"#\">网校</a> | <a href=\"#\">真题</a> | <a href=\"#\">百科</a> | <a href=\"#\">招聘</a> | <a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('423','','0','0','exam_q4','code','0','<a href=\"#\">辅导</a> | <a href=\"#\">模拟考场</a> | <a href=\"#\">网校</a> | <a href=\"#\">真题</a> | <a href=\"#\">百科</a> | <a href=\"#\">招聘</a> | <a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('424','','0','0','exam_tt1','code','0','计算机1级考试','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('425','','0','0','exam_tt2','code','0','计算机2级考试','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('426','','0','0','exam_tt3','code','0','计算机3级考试','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('427','','0','0','exam_tt4','code','0','计算机4级考试','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('428','','0','0','exam_tt5','code','0','计算机等级考试','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('429','','0','0','exam_tt6','code','0','	<a href=\"#\">一级</a> | <a href=\"#\">二级</a> | <a href=\"#\">三级</a> | <a href=\"#\">四级</a> | <a href=\"#\">视频教程</a> | <a href=\"#\">试题辅导</a> | <a href=\"#\">复习资料</a> | <a href=\"#\">相关下载</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('430','','0','0','exam_tt7','code','0','推荐试题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('431','','0','0','exam_tt8','code','0','最近更新','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('432','','0','0','exam_tt9','code','0','<a href=\"#\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('433','','0','0','exam_tt10','code','0','试卷关注排行','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289280336','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('434','','0','0','exam_tt11','code','0','<a href=\"#\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('435','','0','0','exam_tt12','code','0','模拟试题一','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('436','','0','0','exam_tt13','code','0','<a href=\"#\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('437','','0','0','exam_tt14','code','0','模拟试题二','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('438','','0','0','exam_tt15','code','0','<a href=\"#\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('439','','0','0','exam_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101108161146_axggb.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('440','','0','0','exam_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101108161103_n32j4.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"490\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('441','','0','0','exam_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101108161125_s7nrb.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"490\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('442','','0','0','exam_top03','code','0','	<div class=\"list\"><a href=\"#\">2010会计证签约保</a></div>\r\n                        <div class=\"list\"><a href=\"#\">2010会计证签约保</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('443','','0','0','new_1','article','1','a:32:{s:13:\"tplpart_1code\";s:257:\"<div class=\"list$i\">\r\n            	\r\n          <div class=\"title\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                \r\n          <div class=\"content\">{$content}...<a href=\"$url\" target=\"_blank\">[详细]</a> \r\n          </div>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"110\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"390\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289208353','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('444','','0','0','new_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"310\";s:6:\"height\";s:3:\"260\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101108161159_zs6we.jpg\";i:2;s:32:\"label/1_20101108171103_f9fvv.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('445','','0','0','new_2','article','1','a:32:{s:13:\"tplpart_1code\";s:105:\"<div class=\"list\"><em>$i</em><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$hits}次</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"32\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289206999','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('446','','0','0','new_photo','article','1','a:32:{s:13:\"tplpart_1code\";s:274:\"<div class=\"listpic\">\r\n			 <a href=\"$url\" class=\"pic\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" /></a> \r\n              <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('447','','0','0','new_ps','article','1','a:32:{s:13:\"tplpart_1code\";s:536:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" align=\"center\" cellpadding=\"0\" class=\"listtable\">\r\n                  <tr>\r\n                    \r\n                <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"70\" height=\"70\" /></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" class=\"title\">$title</a>\r\n                        $content\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:192:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"56\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207490','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('448','','0','0','new_p1','article','1','a:32:{s:13:\"tplpart_1code\";s:110:\"<div class=\"list_t_c\"> <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n              $content </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207618','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('449','','0','0','new_u1','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207819','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('450','','0','0','new_p2','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207948','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('451','','0','0','new_p3','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('452','','0','0','new_tt2','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('453','','0','0','new_tt1','code','0','推荐阅读','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('454','','0','0','new_tt3','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('455','','0','0','new_tt4','code','0','今日推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('456','','0','0','new_tt6','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('457','','0','0','new_tt5','code','0','网友推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('458','','0','0','new_tt8','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('459','','0','0','new_tt7','code','0','民生话题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('460','','0','0','new_tt9','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('461','','0','0','new_tt10','code','0','图片主题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('462','','0','0','new_tt11','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('463','','0','0','new_tt12','code','0','社会聚焦','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('464','','0','0','new_tt13','code','0','点击排行','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('473','','1','0','index_hot1','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listb$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289464370','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('474','','1','0','index_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:249:\"<div class=\"lista$i\"> <span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                <span class=\"d\">[{$time_m}-{$time_d}]</span> <span class=\"c\">　{$content}<a href=\"$url\" target=\"_blank\">[详情]</a></span> \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"130\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"54\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"446\";s:5:\"div_h\";s:3:\"209\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291793386','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('475','','1','0','index_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:308:\"<div class=\"listpic\">\r\n        	\r\n        <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n            \r\n        <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"991\";s:5:\"div_h\";s:3:\"142\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289462842','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('476','','1','0','index_down','article','1','a:32:{s:13:\"tplpart_1code\";s:90:\"<div class=\"listc$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"254\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463083','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('477','','1','0','index_j1','article','1','a:32:{s:13:\"tplpart_1code\";s:219:\"<div class=\"list$i\">\r\n                    	<span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span>\r\n                        <span class=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;{$content}.</span>\r\n                    </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"94\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"271\";s:5:\"div_h\";s:3:\"237\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289462968','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('478','','1','0','index_j2','comment','1','a:25:{s:9:\"tplpart_1\";s:283:\"<div class=\"list\"> <span class=\"t\"><em>{$username}</em> 于 {$time_m}-{$time_d} \r\n                      00:54 对 <a href=\"#\" target=\"_blank\">$article</a></span> \r\n                      <span class=\"a\">发表如下评论</span> <span class=\"c\">{$title}...</span> \r\n                    </div>\";s:13:\"tplpart_1code\";s:283:\"<div class=\"list\"> <span class=\"t\"><em>{$username}</em> 于 {$time_m}-{$time_d} \r\n                      00:54 对 <a href=\"#\" target=\"_blank\">$article</a></span> \r\n                      <span class=\"a\">发表如下评论</span> <span class=\"c\">{$title}...</span> \r\n                    </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"comment\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";N;s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:149:\" SELECT A.*,A.content AS title,B.title AS article FROM pp_comment A LEFT JOIN pp_article B ON A.aid=B.aid  WHERE A.yz=1  ORDER BY A.cid DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:8:\"titlenum\";s:2:\"50\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"407\";s:5:\"div_h\";s:3:\"194\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463071','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('479','','1','0','index_j3','article','1','a:33:{s:13:\"tplpart_1code\";s:501:\"	<div class=\"listpic\">\r\n                    \r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\"><strike>市场价:￥{$martprice}</strike></div>\r\n                    <div class=\"p\"><em>现售价:￥{$nowprice}</em></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"739\";s:5:\"div_h\";s:3:\"180\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292549169','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('480','','1','0','index_member','member','1','a:20:{s:9:\"tplpart_1\";s:429:\"<div class=\"listuser\">\r\n                	\r\n                <div class=\"img\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nobody.gif\'\" width=\"50\" height=\"50\"/></a></div>\r\n                	\r\n                <div class=\"name\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_1code\";s:429:\"<div class=\"listuser\">\r\n                	\r\n                <div class=\"img\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nobody.gif\'\" width=\"50\" height=\"50\"/></a></div>\r\n                	\r\n                <div class=\"name\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:7:\"group_1\";s:0:\"\";s:7:\"group_2\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"regdate\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:134:\" SELECT D.*,D.username AS title,D.icon AS picurl,D.introduce AS content FROM pp_memberdata D  WHERE 1  ORDER BY D.regdate ASC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:3:\"252\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463337','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('481','','1','0','index_c1','article','1','a:32:{s:13:\"tplpart_1code\";s:101:\"  <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}/{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:741:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tr>\r\n                            \r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                            <td>\r\n                                \r\n                      <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                                \r\n                      <div class=\"m\">　　{$content}<a href=\"$url\" target=\"_blank\">[详细]</a></div>\r\n                            </td>\r\n                          </tr>\r\n                        </table>\r\n                        \r\n               \";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:175:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"341\";s:5:\"div_h\";s:3:\"220\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463102','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('482','','1','0','index_c2','article','1','a:32:{s:13:\"tplpart_1code\";s:101:\"  <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}/{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:738:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tr>                            \r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                            <td>\r\n                                \r\n                      <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                                \r\n                      <div class=\"m\">　　{$content}<a href=\"$url\" target=\"_blank\">[详细]</a></div>\r\n                            </td>\r\n                          </tr>\r\n                        </table>\r\n                        \r\n              \";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:162:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";s:174:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"346\";s:5:\"div_h\";s:3:\"229\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463328','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('483','','1','0','index_cc1','code','0','<span>IT业界</span><a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('484','','1','0','index_cc2','code','0','<span>社会民生</span><a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('485','','1','0','index_digg','article','1','a:32:{s:13:\"tplpart_1code\";s:587:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listConcern\">\r\n                  <tr>\r\n                    <td class=\"L\"><div class=\"n\" id=\"DiggNum_$id\">$digg_num</div><div class=\"d\"><a href=\"$webdb[www_url]/do/job.php?job=digg&type=vote&id=$id\" target=\"DiggIframe_$id\">顶一下</a></div></td>\r\n                    <td class=\"R\"><a href=\"$url\" class=\"a$i\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\r\n<div style=\"display:none;\"><iframe src=\"about:blank\" width=0 height=0 name=\"DiggIframe_$id\" id=\"DiggIframe_$id\"></iframe></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:22:\"/article/title_dig.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463372','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('487','','1','0','index_pk','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/vote/vote.php?job=js&cid=10\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"10\";s:5:\"div_w\";s:3:\"253\";s:5:\"div_h\";s:3:\"163\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463349','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('486','','1','0','index_tr1','specialsort','1','a:35:{s:9:\"tplpart_1\";s:370:\"<div class=\"listzt\">\r\n        	<div class=\"img\"><a target=\"_blank\" href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"160\"/></a></div>\r\n            <div class=\"t\"><a target=\"_blank\" href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_1code\";s:370:\"<div class=\"listzt\">\r\n        	<div class=\"img\"><a target=\"_blank\" href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"160\"/></a></div>\r\n            <div class=\"t\"><a target=\"_blank\" href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:11:\"specialsort\";s:13:\"RollStyleType\";s:0:\"\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";s:45:\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:3:\"fid\";s:0:\"\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";N;s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:106:\" SELECT A.* FROM pp_special A  WHERE `ifbase`=0 AND yz=1  AND A.picurl!=\'\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"985\";s:5:\"div_h\";s:3:\"208\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289867209','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('488','','1','0','index_tr01','code','0','<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td class=\"choose\"><a href=\"#\" class=\"nbor\">文章</a></td>\r\n            <td><a href=\"#\" class=\"nbor\">图片</a></td>\r\n            <td><a href=\"#\">影视</a></td>\r\n            <td><a href=\"#\">商场</a></td>\r\n            <td><a href=\"#\">flash</a></td>\r\n          </tr>\r\n        </table> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"670\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289292242','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('489','','1','0','index_vote2','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/vote/vote.php?job=js&cid=12\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"12\";s:5:\"div_w\";s:3:\"444\";s:5:\"div_h\";s:3:\"227\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463384','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('490','','0','0','wn_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"280\";s:6:\"height\";s:3:\"190\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101109181105_gzaok.jpg\";i:2;s:32:\"label/1_20101109181113_fwdej.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('491','','0','0','wn_topic1','Info_wn_','1','a:29:{s:13:\"tplpart_1code\";s:128:\"<div class=\"list\"><a href=\"$list_url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:73:\" SELECT A.* FROM pp_wn_content A   WHERE 1  ORDER BY A.list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289303057','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('492','','0','0','wn_tg1','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:262:\"<div class=\"list$i\"> <span class=\"d\">{$time_y}/{$time_m}/{$time_d}</span> <span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                <span class=\"c\">　　{$content}<a href=\"$url\" target=\"_blank\">[查看全文]</a></span> \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:3:\"190\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289305481','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('493','','0','0','wn_tg2','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:83:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>09-14</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('494','','0','0','wn_tg3','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list ASC LIMIT 12 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289305655','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('495','','0','0','wn_tg4','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:328:\"<div class=\"listpic\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:141:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE A.ispic=1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('496','','0','0','wn_tg01','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:235:\"<div class=\"list$i\">\r\n                	\r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">点击:<span>$hits</span> 评论:<span>$comments</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('497','','0','0','wn_tgh1','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:196:\"<div class=\"listtc\">\r\n                	\r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"c\">　　$content</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"66\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289306541','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('498','','0','0','wn_tgh2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109201135_eoslv.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('499','','0','0','wn_ptg4','Info_wn_','1','a:32:{s:13:\"tplpart_1code\";s:156:\" <div class=\"list\"><a href=\"$url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:682:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"pic_word\">\r\n                      <tr>\r\n                        \r\n                  <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                        <td class=\"word\">\r\n                        	\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    		\r\n                    <div class=\"c\">　$content<a href=\"$url\" target=\"_blank\">[查看全文]</a></div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:147:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289308003','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('500','','0','0','wn_ptg5','Info_wn_','1','a:32:{s:13:\"tplpart_1code\";s:156:\" <div class=\"list\"><a href=\"$url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:682:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"pic_word\">\r\n                      <tr>\r\n                        \r\n                  <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                        <td class=\"word\">\r\n                        	\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    		\r\n                    <div class=\"c\">　$content<a href=\"$url\" target=\"_blank\">[查看全文]</a></div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:132:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";s:146:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  AND A.ispic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('501','','0','0','wn_tsf','code','0','<a href=\"#\">经典文章</a> | <a href=\"#\">伤感文章</a> | <a href=\"#\">情感文章</a> &nbsp;&nbsp; <a href=\"#\">>>更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"250\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289308157','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('502','','0','0','wn_tp5','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('503','','0','0','wn_tp3','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('504','','0','0','wn_tp4','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('505','','0','0','wn_tp2','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('506','','0','0','wn_tp1','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('507','','0','0','wn_g1','code','0','热门话题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('508','','0','0','wn_g3','code','0','最近更新','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('509','','0','0','wn_g2','code','0','社会焦点','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('510','','0','0','wn_g4','code','0','今日关注','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('511','','0','0','wn_g6','code','0','民生话题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('512','','0','0','wn_g5','code','0','图片主题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('513','','0','0','photo_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"298\";s:6:\"height\";s:3:\"238\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101110141134_yuvgy.jpg\";i:2;s:32:\"label/1_20101110141112_eb6bm.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('514','','0','0','photo_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:313:\"	<div class=\"listpic\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"125\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('515','','0','0','photo_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:312:\"<div class=\"listpic\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('516','','0','0','photo_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"lista$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'100\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289374054','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('517','','0','0','photo_t4','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listb$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'100\'   ORDER BY A.list ASC LIMIT 11 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('518','','0','0','photo_t6','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('519','','0','0','photo_t5','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('520','','0','0','photo_t7','code','0','热门图片','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('521','','0','0','photo_t9','code','0','推荐图片','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('522','','0','0','photo_t8','code','0','最近更新','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('523','','0','0','photo_t10','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('524','','0','0','photo_t11','code','0','<a href=\"#\" class=\"sort choose\"><span>国内</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>国际</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>女性</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>娱乐时尚</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>军事</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>社会</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>文化</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>奇趣</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('525','','0','0','video_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"318\";s:6:\"height\";s:3:\"248\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101111111131_dupyp.jpg\";i:2;s:32:\"label/1_20101111111135_0n6tg.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('526','','0','0','video_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:443:\"<div class=\"listvideo\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"150\" height=\"100\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">评论:<span>$comments</span> 播放:<span>$hits</span>次</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289446391','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('527','','0','0','video_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:148:\"<div class=\"list\"><a href=\"$list_url\" class=\"sort\">[{$fname}]</a><a href=\"$url\" class=\"title\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289449013','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('528','','0','0','video_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div class=\"lista$i\"><a href=\"$url\" target=\"_blank\">$title</a>\r\n\r\n<span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289448993','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('529','','0','0','video_h1','article','1','a:32:{s:13:\"tplpart_1code\";s:673:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtable\">\r\n                  <tr>\r\n                    \r\n                <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a></td>\r\n                    <td class=\"word\">\r\n                       \r\n                  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                       <div class=\"m\">播放:<span>$hits</span></div>\r\n                       <div class=\"m\">评论:<span>$comments</span></div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('530','','0','0','video_h2','article','1','a:32:{s:13:\"tplpart_1code\";s:415:\"	<div class=\"listvideo\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">播放:<span>$hits</span>次</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289449096','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('531','','0','0','video_c1','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('532','','0','0','video_c2','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('533','','0','0','video_c3','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('534','','0','0','video_c5','code','0','影视热播','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('535','','0','0','video_c7','code','0','精选视频','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('536','','0','0','video_c9','code','0',' <a href=\"#\" class=\"sort choose\"><span>国内</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>国际</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>女性</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>娱乐时尚</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>军事</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>社会</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>文化</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>奇趣</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('537','','0','0','video_c10','code','0','视频排行','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('538','','0','0','video_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111121107_nd3ch.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"720\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('539','','0','0','video_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111121116_80r2g.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"260\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('540','','0','0','shops_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"530\";s:6:\"height\";s:3:\"210\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101111141159_txw13.jpg\";i:2;s:32:\"label/1_20101111141105_k2yzk.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('541','','0','0','shops_sort','code','0','	<dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n						\r\n                    </dd>\r\n                </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('542','','0','0','shops_p1','article','1','a:32:{s:13:\"tplpart_1code\";s:504:\"<div class=\"listshop\">\r\n                	\r\n              		<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n             		 <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\">市场价<strike>￥{$martprice}</strike></div>\r\n                    <div class=\"p\">现售价<span>￥{$nowprice}</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('543','','0','0','shops_p2','article','1','a:32:{s:13:\"tplpart_1code\";s:386:\"<div class=\"listshop\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\">售价<span>￥{$nowprice}</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('544','','0','0','shops_p3','article','1','a:32:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('545','','0','0','shops_p4','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div class=\"list l1\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}人关注</span></div>\";s:13:\"tplpart_2code\";s:688:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listt\">\r\n                  <tr>\r\n                    \r\n                <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	\r\n                  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                        <div class=\"p\">市场价<strike>￥{$martprice}</strike></div>\r\n                        <div class=\"p\">现售价<span> ￥{$nowprice}</span></div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";s:117:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289457230','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('546','','0','0','shops_v1','article','1','a:32:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289457356','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('547','','0','0','shops_f1','code','0','<dl>\r\n                <dt><a href=\"#\">会员中心</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">忘记密码</a></div>\r\n                    <div><a href=\"#\">我要买</a></div>\r\n                    <div><a href=\"#\">查看已购买商品</a></div>\r\n                    <div><a href=\"#\">如何搜索</a></div>\r\n                    <div><a href=\"#\">如何注册成为...</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('548','','0','0','shops_f2','code','0','<dl>\r\n                <dt><a href=\"#\">商铺之家</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">如何申请开店</a></div>\r\n                    <div><a href=\"#\">如何管理店铺</a></div>\r\n                    <div><a href=\"#\">查看售出商品</a></div>\r\n                    <div><a href=\"#\">如何发货</a></div>\r\n                    <div><a href=\"#\">商城商品推荐</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('549','','0','0','shops_f3','code','0','<dl>\r\n                <dt><a href=\"#\">支付方式</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">在线支付</a></div>\r\n                    <div><a href=\"#\">如何注册财付通</a></div>\r\n                    <div><a href=\"#\">如何注册贝宝</a></div>\r\n                    <div><a href=\"#\">使用预付款购物</a></div>\r\n                    <div><a href=\"#\">如何注册支付宝</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('550','','0','0','shops_f4','code','0','<dl>\r\n                <dt><a href=\"#\">今后服务</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">如何购物评价</a></div>\r\n                    <div><a href=\"#\">举报店主或商家</a></div>\r\n                    <div><a href=\"#\">投诉店铺</a></div>\r\n                    <div><a href=\"#\">如何联系卖家</a></div>\r\n                    <div><a href=\"#\">举报申诉</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('551','','0','0','shops_f5','code','0','<dl>\r\n                <dt><a href=\"#\">客服中心</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">会员修改密码</a></div>\r\n                    <div><a href=\"#\">修改收货地址</a></div>\r\n                    <div><a href=\"#\">商品发布规则</a></div>\r\n                    <div><a href=\"#\">会员修改个人信息</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('552','','0','0','shops_f6','code','0','<dl>\r\n                <dt><a href=\"#\">关于我们</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">关于我们</a></div>\r\n                    <div><a href=\"#\">消费者信赖同盟消费者信赖同盟消费者信赖同盟</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('553','','0','0','shops_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141108_fefgd.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('554','','0','0','shops_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141125_iaj1l.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('555','','0','0','shops_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141143_r4drz.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('556','','0','0','shops_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141103_rpuaq.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('557','','0','0','shops_ad5','code','0','	<div class=\"list\"><a href=\"#\">好宝宝幼儿园开始招生了</a><span>报名优惠</span></div>\r\n                <div class=\"list\"><a href=\"#\">您想找个好家教吗:</a><em>010:88888888</em></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('558','','0','0','shops_ad6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141126_b9tqw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:2:\"55\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('559','','0','0','shops_a_d1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141115_ci14j.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289458738','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('560','','0','0','shops_a_d2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141129_5prhy.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('561','','0','0','shops_a_d3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141110_oqdpu.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('562','','0','0','shops_a_d4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141131_k3xih.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('563','','0','0','shops_a_d5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141151_9lauy.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('564','','0','0','shops_a_d6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151112_vin0e.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('565','','0','0','shops_a_d7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151133_53hvd.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('566','','0','0','shops_a_d8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151150_avkih.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('567','','0','0','shops_a_d9','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151107_s9khw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('568','','0','0','shops_a_d10','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151123_lxocu.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('569','','0','0','shops_pp2','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('570','','0','0','shops_pp1','code','0','<a href=\"#\" class=\"sort choose\"><span>家居生活</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>电器产品</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>服装鞋帽</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>数码电子</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('571','','0','0','shops_pp0','code','0','商城产品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('572','','0','0','shops_pv3','code','0','商城公告','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('573','','0','0','shops_pv4','code','0','热销商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('574','','0','0','shops_pcv2','code','0','经商之道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('575','','0','0','shops_pcv3','code','0','推荐商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('576','','0','0','down_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191127_zgile.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"707\";s:5:\"div_h\";s:2:\"69\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475404','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('577','','0','0','down_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191154_ykdyp.jpg\";s:7:\"imglink\";s:21:\"http://www.1gftp.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"267\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292643191','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('578','','0','0','down_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191142_bnynf.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"708\";s:5:\"div_h\";s:2:\"88\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475569','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('579','','0','0','down_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191109_shrig.gif\";s:7:\"imglink\";s:21:\"http://www.zwidc.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"268\";s:5:\"div_h\";s:2:\"89\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292643722','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('580','','0','0','down_ad5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191153_sdera.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"85\";}','a:3:{s:5:\"div_w\";s:3:\"270\";s:5:\"div_h\";s:2:\"84\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475675','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('581','','0','0','down_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289479954','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('582','','0','0','down_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:181:\"<div class=\"list l$i\"><a href=\"$list_url\" class=\"sort\" target=\"_blank\" >[{$fname}]</a><a href=\"$url\" class=\"title\" target=\"_blank\" >$title</a><span>{$time_m}-{$time_d} </span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 11 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480150','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('583','','0','0','down_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480275','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('584','','0','0','down_t4','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480863','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('585','','0','0','down_t5','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('586','','0','0','down_b1','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"12\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (12)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481170','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('587','','0','0','down_b2','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"26\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (26)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481175','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('588','','0','0','down_b3','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"27\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (27)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481159','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('589','','0','0','down_b4','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"40\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (40)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('590','','0','0','down_c4','code','0','<a href=\"list.php?fid=40\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('591','','0','0','down_c3','code','0','<a href=\"list.php?fid=27\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('592','','0','0','down_c2','code','0','<a href=\"list.php?fid=26\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('593','','0','0','down_c1','code','0','<a href=\"list.php?fid=12\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('594','','0','0','down_bv1','code','0','建站软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('595','','0','0','down_bv2','code','0','装机软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('596','','0','0','down_bv3','code','0','办公软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('597','','0','0','down_bv4','code','0','杀毒软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('598','','0','0','down_a4','code','0','最新更新','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('599','','0','0','down_a3','code','0','今日榜单','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481643','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('600','','0','0','down_a2','code','0','网友推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('601','','0','0','down_a1','code','0','装机推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('602','','0','0','down_d2','code','0','热门推荐软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('603','','0','0','down_dp2','code','0','<a href=\"#\">最新源码</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('604','','0','0','down_t3v','code','0','<div>今日更新软件:<span>5</span>款 驱动更新:<span>1</span>款</div>\r\n                <div>软件总下载量:<em>651</em>次 今日下载量:<em>103</em>次</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481879','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('605','','0','0','w8_ad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111211144_j117r.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"987\";s:5:\"div_h\";s:2:\"67\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289482282','0','27','0','0','default');
INSERT INTO `pp_label` VALUES ('606','','1','99','head_search','code','0','<a href=\"http://www_qibosoft_com/do/search.php?keyword=齐博CMS\" class=\"b\">齐博CMS</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=注册域名\" target=\"_blank\">注册域名</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=CEO\" target=\"_blank\">CEO</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=源码下载\" target=\"_blank\">源码下载</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=IT资讯\" target=\"_blank\">IT资讯</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=主机空间\" target=\"_blank\">主机空间</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=建站手册\" class=\"b\" target=\"_blank\">建站手册</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=论坛程序\" target=\"_blank\">论坛程序</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=健康咨询\" class=\"b\" target=\"_blank\">健康咨询</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"617\";s:5:\"div_h\";s:2:\"32\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291859716','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('607','','0','0','special_sport_1','code','0','<a href=\"#\">加入收藏</a> | <a href=\"#\">设为首页</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"113\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290131646','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('608','','0','0','special_sport_2','code','0','<a href=\"#\">新闻中心</a> | <a href=\"#\">体育新闻</a> | <a href=\"#\">娱乐新闻</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"191\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290131639','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('609','','0','0','special_sport_3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119091126_q0kjm.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"160\";}','a:3:{s:5:\"div_w\";s:3:\"961\";s:5:\"div_h\";s:3:\"159\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290137907','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('610','','0','0','special_sport_4','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"306\";s:6:\"height\";s:3:\"262\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101119101151_gvdry.jpg\";i:2;s:32:\"label/1_20101119101155_mqgga.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"262\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132179','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('611','','0','0','special_sport_5','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XOTk1OTE2NjQ=/v.swf\";s:5:\"width\";s:3:\"305\";s:6:\"height\";s:3:\"275\";}','a:3:{s:5:\"div_w\";s:3:\"302\";s:5:\"div_h\";s:3:\"271\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132344','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('612','','0','0','special_sport_6','code','0','希金斯简介','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('613','','0','0','special_sport_7','code','0','<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1\">\r\n					  <tr>\r\n						<td width=\"45%\"><img src=\"http://www_qibosoft_com/images/special/sports/tiyu_photo3.gif\" width=\"100\" height=\"80\" /></td>\r\n					    <td width=\"55%\">希金斯被认为是最出色的比赛型选手，超常的技术使他得到查过20项排名赛冠军...[<a href=\"#\">详细</a>]</td>\r\n					  </tr>\r\n					 </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132645','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('614','','0','0','special_sport_8','code','0','爆料媒体','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('615','','0','0','special_sport_9','code','0','<img src=\"http://www_qibosoft_com/images/special/sports/tiyu_photo4.gif\" width=\"166\" height=\"78\" /><br />上海起火楼工程多次','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"187\";s:5:\"div_h\";s:3:\"104\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132805','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('616','','0','0','special_sport_10','code','0','网友调查','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('617','','0','0','special_sport_11','code','0','<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1 tiyu_top\">\r\n					  <tr>\r\n						<td id=\"vote_title\">你对希金斯被爆打假球这件事怎么看?</td>\r\n				      </tr>\r\n					  <tr>\r\n						<td class=\"vote_cont\">\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 很伤心,希金斯怎能如此道德败坏</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 很郁闷,斯诺克赛场也不是干净的土</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 不可以,希金斯不可能这么做</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 无奈,球员确实光靠打球难养活自己</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 说不清，看事态进展吧</span>\r\n						</td>\r\n				      </tr>\r\n				  </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"245\";s:5:\"div_h\";s:3:\"210\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132887','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('618','','0','0','special_sport_12','code','0','<font face=\"黑体\"><a href=\"#\" >希金斯洗脱赌球罪</a> <a href=\"#\">禁赛6个月罚75000英镑</a></font>\r\n\r\n\r\n ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"367\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133123','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('619','','0','0','special_sport_13','code','0','<font face=\"黑体\"><a href=\"#\" >希金斯赌球丑闻后露面</a> <a href=\"#\">颁奖礼当救场嘉宾</a></font>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"366\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133184','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('620','','0','0','special_sport_14','code','0','<font face=\"黑体\"><a href=\"#\" >英媒曝希金斯收贿赂故输球</a> <a href=\"#\">已遭台联禁赛</a></font> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133258','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('621','','0','0','special_sport_15','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">·<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"375\";s:5:\"div_h\";s:3:\"160\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133428','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('622','','0','0','special_sport_16','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">·<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"373\";s:5:\"div_h\";s:3:\"163\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133420','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('623','','0','0','special_sport_17','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">·<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"375\";s:5:\"div_h\";s:3:\"108\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133507','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('624','','0','0','special_sport_18','article','1','a:32:{s:13:\"tplpart_1code\";s:235:\"<div class=\"photo_list\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"160\" height=\"110\" border=\"0\" /></a><br />\r\n  <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"925\";s:5:\"div_h\";s:3:\"134\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133716','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('625','','0','0','special_sport_19','code','0','希金斯陷赌球丑闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"127\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133781','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('626','','0','0','special_sport_20','code','0','最新进展','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('627','','0','0','special_sport_21','code','0','各方声音','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('628','','0','0','special_sport_22','article','1','a:32:{s:13:\"tplpart_1code\";s:194:\"<div class=\"content_list\"><span>·[<a href=\"$list_url\" target=\"_blank\">$fname</a>]<a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                    <font>{$time_m}月{$time_d}日</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"466\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290134230','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('629','','0','0','special_sport_23','article','1','a:32:{s:13:\"tplpart_1code\";s:194:\"<div class=\"content_list\"><span>·[<a href=\"$list_url\" target=\"_blank\">$fname</a>]<a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                    <font>{$time_m}月{$time_d}日</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"450\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290134248','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('631','','0','0','special_car_1','code','0','加入收藏 | 设为主页','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"147\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150121','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('632','','0','0','special_car_2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119151121_pnoj5.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:4:\"1014\";s:6:\"height\";s:3:\"166\";}','a:3:{s:5:\"div_w\";s:4:\"1008\";s:5:\"div_h\";s:3:\"153\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150338','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('633','','0','0','special_car_3','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"346\";s:6:\"height\";s:3:\"250\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101119151138_usu7n.jpg\";i:2;s:32:\"label/1_20101119151145_ysl0g.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"180\";s:5:\"div_h\";s:3:\"253\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150658','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('634','','0','0','special_car_4','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XMjE3NjczMDQ0/v.swf\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"256\";}','a:3:{s:5:\"div_w\";s:3:\"172\";s:5:\"div_h\";s:3:\"257\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150893','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('635','','0','0','special_car_5','code','0','奥迪A3亮相北京车展','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"154\";s:5:\"div_h\";s:2:\"17\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150943','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('636','','0','0','special_car_6','code','0','<a href=\"#\"><span class=\"STYLE1\">[奥迪A3频道]</span></a> <a href=\"#\"><span class=\"STYLE1\">[实际车展]</span></a> \r\n                  <a href=\"#\"><span class=\"STYLE1\">[奥迪车友会]</span></a> <a href=\"#\"><span class=\"STYLE1\">[微博讨论奥迪A3]</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"339\";s:5:\"div_h\";s:2:\"16\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290152789','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('637','','0','0','special_car_7','article','1','a:32:{s:13:\"tplpart_1code\";s:300:\"<div class=\"Calign\"> \r\n                <div class=\"Text\"> <span><a href=\"$url\" target=\"_blank\">$title</a></span></div>\r\n                <div class=\"line_ys\"> <span style=\"text-indent:20px;\">$content<a href=\"$url\" style=\"color:#98122A;\">[全文]</a></span></div>\r\n                 \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"160\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:3:\"207\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290152800','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('638','','0','0','special_car_8','article','1','a:32:{s:13:\"tplpart_1code\";s:55:\" <div><a href=\"$url\" target=\"_blank\">$title</a> </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"347\";s:5:\"div_h\";s:3:\"139\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153186','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('639','','0','0','special_car_9','code','0','试驾奥迪A3','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('640','','0','0','special_car_10','article','1','a:32:{s:13:\"tplpart_1code\";s:653:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr> \r\n                    <td class=\"Czhouju\"> \r\n                      <div class=\"L left_tu\"><a href=\"$url\" target=\"_blank\"><img width=\'95\' height=\'64\' src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n                      <div class=\"L right_zi\"> <a href=\"$url\" style=\"color:#004276;\" target=\"_blank\">$title</a><br>\r\n                        $content<span href=\"$url\" style=\"color:#98122A;\">[详细]</span><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:193:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"363\";s:5:\"div_h\";s:3:\"248\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153177','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('641','','0','0','special_car_11','code','0','奥迪A3点评','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('642','','0','0','special_car_12','article','1','a:32:{s:13:\"tplpart_1code\";s:56:\"<div><a href=\"$url\" target=\"_blank\">$title</a> </div>   \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"352\";s:5:\"div_h\";s:3:\"137\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153283','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('643','','0','0','special_car_13','article','1','a:32:{s:13:\"tplpart_1code\";s:595:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr> \r\n                    <td class=\"Czhouju\"> \r\n                      <div class=\"L left_tu\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\" /></div>\r\n                      <div class=\"L right_zi\"> <a href=\"$url\" target=\"_blank\" style=\"color:#004276;\">$title</a><br>　　$content<a href=\"$url\" target=\"_blank\" style=\"color:#98122A;\">[全文]</a><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:192:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"70\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"355\";s:5:\"div_h\";s:3:\"174\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153735','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('644','','0','0','special_car_14','code','0','奥迪A3厂家指标价','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('645','','0','0','special_car_15','code','0','<li>\r\n                            <div class=\"PA10\">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"CALIGN_C2\">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"PA10\">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"CALIGN_C2\">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li class=\"CANSHU\">点击进入更多车型参数配置>></li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"207\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153727','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('646','','0','0','special_car_16','code','0','推荐指数<span>4</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"118\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153782','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('647','','0','0','special_car_17','code','0','<img src=\"http://www_qibosoft_com/images/special/car/c5.gif\" /> <img src=\"http://www_qibosoft_com/images/special/car/c5.gif\" /> \r\n                        <img src=\"http://www_qibosoft_com/images/special/car/c5.gif\" /> <img src=\"http://www_qibosoft_com/images/special/car/c5.gif\" /> \r\n                        <img src=\"http://www_qibosoft_com/images/special/car/c6.gif\" />','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"212\";s:5:\"div_h\";s:2:\"34\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153844','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('648','','0','0','special_car_18','code','0','微博热议','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('649','','0','0','special_car_19','code','0','高调上市的精品小车奥迪A3<br>\r\n                        能否赢得中国市场消费者的认可？<br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"178\";s:5:\"div_h\";s:2:\"48\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153966','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('650','','0','0','special_car_20','code','0','调查','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('651','','0','0','special_car_21','code','0','1.你如何看到奥迪A3？<br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        高品质时尚下车</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        又一款一炮车来袭</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        与高尔夫同平台，售价较高</label><br>\r\n                        <div style=\"margin-top:5px;\">2.你认为奥迪的最大竞争对手是？</div>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        MINI Cper</label> <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        沃尔沃C30</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        高尔夫 GTI</label> <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        宝马1系</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        奔驰B级</label><br />\r\n                        <div style=\"margin:7px;\"> \r\n                          <input type=\"button\" value=\"提交\" />\r\n                          <input type=\"button\" value=\"查看\" />\r\n                        </div>\r\n                      ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:3:\"197\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154073','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('652','','0','0','special_car_22','code','0','车友会','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('653','','0','0','special_car_23','article','1','a:32:{s:13:\"tplpart_1code\";s:49:\"·<A HREF=\"$url\" target=\'_blank\'  >$title</a><br>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154543','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('654','','0','0','special_car_24','article','1','a:32:{s:13:\"tplpart_1code\";s:304:\"<div class=\"hpic\">\r\n          <div class=\"auto_08\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\'150\' height=\'99\' onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n          <div class=\"SHIPAI\"><a href=\"$ur\" target=\"_blank\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"988\";s:5:\"div_h\";s:3:\"325\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154534','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('655','','0','0','special_car_25','article','1','a:32:{s:13:\"tplpart_1code\";s:298:\"<div class=\"spic\">\r\n        <div class=\"auto_08\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\'150\' height=\'99\' onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n        <div class=\"SHIPAI\"><a href=\"$ur\" target=\"_blank\">$title</a></div>\r\n      </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"350\";s:5:\"div_h\";s:3:\"320\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154525','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('656','','0','0','special_car_26','code','0','奥迪A3实拍图','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('657','','0','0','special_car_27','code','0','奥迪在售车型的（部分）','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('658','','0','0','special_car_28','code','0','竞争车型新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('659','','0','0','special_car_29','article','1','a:32:{s:13:\"tplpart_1code\";s:53:\"<div><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"13\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 13 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"326\";s:5:\"div_h\";s:3:\"312\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154677','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('660','','0','0','special_car_30','code','0','近期上市车型','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('661','','0','0','special_car_31','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119161159_20k4y.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:3:\"130\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"127\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154756','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('662','','0','0','special_car_32','article','1','a:32:{s:13:\"tplpart_1code\";s:48:\" ·<a href=\"$url\" target=\"_blank\">$title</a><br>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:3:\"175\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154845','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('663','','0','0','special_finance_1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122151143_g4zey.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"150\";}','a:3:{s:5:\"div_w\";s:3:\"958\";s:5:\"div_h\";s:3:\"149\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290409679','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('664','','0','0','special_finance_2','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"298\";s:6:\"height\";s:3:\"261\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101122151110_kzqtx.jpg\";i:2;s:32:\"label/1_20101122151126_jorrb.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"294\";s:5:\"div_h\";s:3:\"257\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290411221','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('665','','0','0','special_finance_3','article','1','a:32:{s:13:\"tplpart_1code\";s:153:\"<div class=\"diao_bt\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n            <div class=\"yy\">$content<a href=\"$url\" target=\"_blank\">[详细]</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"358\";s:5:\"div_h\";s:2:\"85\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290411923','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('666','','0','0','special_finance_4','article','1','a:32:{s:13:\"tplpart_1code\";s:129:\"<p><a href=\"$url\" target=\"_blank\">．{$title}</a> <span style=\"color:#727171;padding-left:10px;\">({$time_m}-{$time_d})</span> </p>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"380\";s:5:\"div_h\";s:3:\"218\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414223','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('667','','0','0','special_finance_5','article','1','a:32:{s:13:\"tplpart_1code\";s:129:\"<p><a href=\"$url\" target=\"_blank\">．{$title}</a> <span style=\"color:#727171;padding-left:10px;\">({$time_m}-{$time_d})</span> </p>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"385\";s:5:\"div_h\";s:3:\"234\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414238','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('668','','0','0','special_finance_6','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div><b><a href=\"$url\" target=\"_blank\">$title</a></b><br>\r\n　$content</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"205\";s:5:\"div_h\";s:3:\"405\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414247','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('669','','0','0','special_finance_7','article','1','a:32:{s:13:\"tplpart_1code\";s:67:\" <div class=\"al1\"><a href=\"$url\" target=\"_blank\">．$title</a></div>\";s:13:\"tplpart_2code\";s:421:\"<div style=\"width:100%;margin:7px\"> \r\n              <div class=\"al\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"65\" border=\"0\" /></a></div>\r\n              <div  class=\"sm\"> \r\n                <p><span style=\"font-weight:bold;\">$title</span></p>\r\n                <p>　$content</p>\r\n              </div>\r\n            </div> \r\n           \";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:24:\"/common_zh_pic/zh_pc.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";s:175:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"60\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"304\";s:5:\"div_h\";s:3:\"303\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414230','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('670','','0','0','special_finance_8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161156_ehzhv.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"354\";s:6:\"height\";s:3:\"120\";}','a:3:{s:5:\"div_w\";s:3:\"354\";s:5:\"div_h\";s:3:\"119\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414265','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('671','','0','0','special_finance_9','article','1','a:32:{s:13:\"tplpart_1code\";s:424:\"<div class=\"ren_h\">\r\n                <div class=\"at\"><img src=\"$webdb[www_url]/images/special/finance/finace_3.jpg\" width=\"15\" height=\"16\" /></div>\r\n                <div class=\"ab\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n              </div>\r\n              <div class=\"ren_by\"> \r\n                \r\n  <p>{$content} <a href=\"$url\" target=\"_blank\"><font color=\"#990000\">[更多]</font></a> \r\n  </p>\r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"270\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"553\";s:5:\"div_h\";s:3:\"144\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414255','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('672','','0','0','special_finance_10','article','1','a:32:{s:13:\"tplpart_1code\";s:165:\"  <div><span style=\"float:left;\"><a href=\"$url\" target=\"_blank\">．$title</a></span><span style=\"float:right;\">({$time_m} -{$time_d})</span><br />\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"459\";s:5:\"div_h\";s:3:\"320\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290413983','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('673','','0','0','special_finance_11','article','1','a:32:{s:13:\"tplpart_1code\";s:165:\"  <div><span style=\"float:left;\"><a href=\"$url\" target=\"_blank\">．$title</a></span><span style=\"float:right;\">({$time_m} -{$time_d})</span><br />\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"371\";s:5:\"div_h\";s:3:\"306\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290413975','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('674','','0','0','special_finance_12','code','0','滚动报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('675','','0','0','special_finance_19','code','0','法案的主要条例','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('676','','0','0','special_finance_20','code','0','相关报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('677','','0','0','special_finance_21','code','0','最新报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('678','','0','0','special_finance_22','code','0','追踪报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('679','','0','0','special_finance_23','code','0','汇改大事记','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('680','','0','0','special_finance_24','code','0','美元对人民币走势','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('681','','0','0','special_finance_25','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161134_anvod.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"211\";s:6:\"height\";s:3:\"133\";}','a:3:{s:5:\"div_w\";s:3:\"213\";s:5:\"div_h\";s:3:\"129\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414346','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('682','','0','0','special_finance_28','code','0','admin@qibosoft.com','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('683','','0','0','special_sp1_1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161145_th99u.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"950\";s:6:\"height\";s:3:\"150\";}','a:3:{s:5:\"div_w\";s:3:\"948\";s:5:\"div_h\";s:3:\"149\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416100','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('684','','0','0','special_sp1_2','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"220\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101122161104_gaaxz.jpg\";i:2;s:32:\"label/1_20101122161110_yoshc.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"147\";s:5:\"div_h\";s:3:\"219\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416339','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('685','','0','0','special_sp1_3','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XMjIxMTM5MTMy/v.swf\";s:5:\"width\";s:3:\"301\";s:6:\"height\";s:3:\"261\";}','a:3:{s:5:\"div_w\";s:3:\"164\";s:5:\"div_h\";s:3:\"268\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416435','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('686','','0','0','special_sp1_4','code','0','<table width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:23px;\">\r\n					  <tr>\r\n						\r\n                      <td width=\"39%\"><img src=\"http://i1.sinaimg.cn/dy/2010/0512/S11612T1273624471182.jpg\" width=82 height=98/></td>\r\n					    <td width=\"61%\">\r\n							<div class=\"Cor3\"><a href=\"#\">从差生到唐宁街主人</a></div>\r\n							<div class=\"TEXT\">贵族后裔：身为威廉四世后裔卡梅伦沿循贵族轨迹：著名私立小学—伊顿公学—牛津大学。\r\n</div>\r\n						</td>\r\n					  </tr>\r\n				  </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"237\";s:5:\"div_h\";s:3:\"106\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416780','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('687','','0','0','special_sp1_5','code','0','<div class=\"TANGBIAOT\">\r\n					   <a href=\"#\" style=\"font-weight:bold;\">政坛新星：</a>\r\n					 <a href=\"#\">2005年卡梅伦在几乎无人看好的情况下，以出色的况下，以出色的况下，以出色的成功当选保况下，以出色况下，以出色的的守党党首。</a></div>\r\n					<div class=\"TANGBIAOT\">\r\n					  <a href=\"#\" style=\"font-weight:bold;\">力主变革：</a>\r\n				  <a href=\"#\">卡梅伦以“变革”的口号打动了选民，在工党领导内忧外患之下，民众最想看到的无疑就是“变革”。</a> </div>\r\n					<div class=\"TANGBIAOT\">\r\n					  <a href=\"#\" style=\"font-weight:bold;\">面临破题：</a>\r\n				  <a href=\"#\">卡梅伦称将重建民众对政治的信任，但如何实现目重建民众对政治的信任，但如何实标依然有待观察。</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"248\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416775','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('688','','0','0','special_sp1_9','article','1','a:32:{s:13:\"tplpart_1code\";s:237:\"<div class=\"photo_list\">    \r\n<a href=\"$url\" target=\"_blank\">\r\n<img width=\"164\" height=\"123\" src=\"$picurl\" border=0 onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" /></a>\r\n\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"904\";s:5:\"div_h\";s:3:\"153\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476968','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('689','','0','0','special_sp1_10','article','1','a:32:{s:13:\"tplpart_1code\";s:571:\"<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1\">\r\n					  <tr>\r\n						\r\n                <td width=\"37%\"><a href=\"$url\" target=\"_blank\">\r\n				<img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" width=\"100\" height=\"68\" /></a></td>\r\n					    \r\n                <td width=\"63%\"><a href=\"$url\" style=\"color:#1F4363;\" target=\"_blank\">$title</a> \r\n                  <div style=\"color:#6A6A6A;\">　$content  [<a href=\"$url\" target=\"_blank\">详细</a>]</div></td>\r\n					  </tr>\r\n					 </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:193:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"229\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476975','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('690','','0','0','special_sp1_11','article','1','a:32:{s:13:\"tplpart_1code\";s:71:\"<div class=\"Lianjie\">· <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"351\";s:5:\"div_h\";s:3:\"326\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476984','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('691','','0','0','special_sp1_12','article','1','a:32:{s:13:\"tplpart_1code\";s:176:\"<div class=\"Tbiaoti\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n		\r\n<div class=\"xwzi\">{$content} <a href=\"$url\" target=\"_blank\" style=\"color:#990000;\">  [详情] </a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:162:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list ASC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"100\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476992','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('692','','0','0','special_sp1_13','article','1','a:32:{s:13:\"tplpart_1code\";s:72:\" <div class=\"Lianjie\">· <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"360\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476960','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('693','','0','0','special_sp1_14','article','1','a:32:{s:13:\"tplpart_1code\";s:72:\" <div class=\"Lianjie\">· <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"359\";s:5:\"div_h\";s:3:\"162\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476946','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('694','','0','0','special_sp1_15','article','1','a:32:{s:13:\"tplpart_1code\";s:72:\"<div class=\"BJ_ljie\">· <a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:73:\"<div class=\"BIAOTI\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n				\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"354\";s:5:\"div_h\";s:3:\"196\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476932','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('695','','0','0','special_sp1_16','code','0',' 应国务院总理温家宝邀请，大不列颠及北爱尔兰联合王国首相戴维·卡梅伦将于11月9日至10日对中国进行正式访问。 ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"330\";s:5:\"div_h\";s:2:\"43\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476395','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('696','','0','0','special_sp1_17','article','1','a:32:{s:13:\"tplpart_1code\";s:102:\"<a href=\"$url\" target=\"blank\" class=\"t\" style=\"color:#013979;\">$title</a> \r\n						<div>$content </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:3:\"186\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476939','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('697','','0','0','special_sp1_18','article','1','a:32:{s:13:\"tplpart_1code\";s:72:\"<div class=\"BJ_ljie\">· <a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"108\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476954','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('698','','0','0','special_sp1_19','code','0','访华行程','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('699','','0','0','special_sp1_20','code','0','聚焦英国首相卡梅伦','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('700','','0','0','special_sp1_21','code','0','图片报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('701','','0','0','special_sp1_22','code','0','图文报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('702','','0','0','special_sp1_23','code','0','时事追踪','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('703','','0','0','special_sp1_24','code','0','大会议程','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('704','','0','0','special_sp1_25','code','0','最新消息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('705','','0','0','special_sp1_26','code','0','编辑推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('706','','0','0','hy_1','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"470\";s:6:\"height\";s:3:\"185\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101205111206_kttht.jpg\";i:2;s:32:\"label/1_20101205111212_fjnu8.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"467\";s:5:\"div_h\";s:3:\"185\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291518928','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('707','','0','0','hy_2','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:64:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"139\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709105','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('708','','0','0','hy_3','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:93:\"<div class=\"list\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"18\";s:3:\"sql\";s:65:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 18 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"720\";s:5:\"div_h\";s:3:\"141\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709113','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('709','','0','0','hy_4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101205111241_4shk3.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"732\";s:5:\"div_h\";s:2:\"70\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291519747','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('710','','0','0','hy_5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101205111239_s46xf.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"249\";s:5:\"div_h\";s:2:\"69\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291519795','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('711','','0','0','hy_6','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:99:\"	<div class=\"listmun$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:65:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709135','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('712','','0','0','hy_7','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:99:\"	<div class=\"listmun$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:65:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"241\";s:5:\"div_h\";s:3:\"249\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709124','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('713','','0','0','hy_10','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:330:\"<div class=\"list$i\">\r\n                	<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"35\" /></a>\r\n                <a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:64:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"18\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"244\";s:5:\"div_h\";s:3:\"141\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709129','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('714','','0','0','hy_a5','code','0','<a href=\"#\" target=\"_blank\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('715','','0','0','hy_a3','code','0','<a href=\"#\" target=\"_blank\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('716','','0','0','hy_a2','code','0','<a href=\"#\" target=\"_blank\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('717','','0','0','hy_a1','code','0','<a href=\"#\" target=\"_blank\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('718','','0','0','hy_a4','code','0','<a href=\"#\" target=\"_blank\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('719','','0','0','hy_b4','code','0','最新加入','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('720','','0','0','hy_b3','code','0','新进企业','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('721','','0','0','hy_b1','code','0','推荐企业','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"78\";s:5:\"div_h\";s:2:\"32\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291520936','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('722','','0','0','hy_b7','code','0','热门公司','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('723','','0','0','hy_c1','code','0','	<div class=\"h\"><a href=\"#\" target=\"_blank\">为什么要申请金牌会员?</a></div>\r\n                    <div class=\"l\">| <a href=\"#\" target=\"_blank\">金牌会员开通流程</a></div>\r\n                    <div class=\"l\">| <a href=\"#\" target=\"_blank\">在线申请开通金牌会员</a></div>\r\n                    <div class=\"l\">| <a href=\"#\" target=\"_blank\">金牌会员服务介绍</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"239\";s:5:\"div_h\";s:2:\"97\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291520874','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('724','','0','0','hy_c2','code','0','<a href=\"#\" target=\"_blank\">怎么成为旺铺?</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"81\";s:5:\"div_h\";s:2:\"34\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291520901','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('725','','0','0','hy_c3','code','0','公司旺铺','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"82\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291520931','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('726','','1','0','index_t22','code','0','<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('727','','1','0','index_t23','code','0','<br><br>2 这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('728','','1','0','index_t24','code','0','<br><br>33这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('729','','1','0','index_t25','code','0','<br><br>44这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('730','','1','0','index_j32','code','0','dd<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>dd','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293084023','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('731','','1','0','index_j33','code','0','<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('732','','1','0','index_j34','code','0','d<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('733','','1','0','index_tr12','code','0','1<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('734','','1','0','index_tr13','code','0','2<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>2','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('735','','1','0','index_tr14','code','0','3<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>3','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('736','','1','0','index_tr15','code','0','4<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>6','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('737','','1','0','index_trrr1','code','0','<span id=\"Span6\" onmouseover=\"ShowTab(6,6,11)\">文章</span>\r\n            <span id=\"Span7\" onmouseover=\"ShowTab(7,6,11)\">图片</span>\r\n            <span id=\"Span8\" onmouseover=\"ShowTab(8,6,11)\">影视</span>\r\n            <span id=\"Span9\" onmouseover=\"ShowTab(9,6,11)\">商场</span>\r\n            <span id=\"Span10\" onmouseover=\"ShowTab(10,6,11)\">flash</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('738','','1','0','index_bfj3','code','0','<span id=\"Span11\" onmouseover=\"ShowTab(11,11,15)\">服装</span>\r\n                    <span id=\"Span12\" onmouseover=\"ShowTab(12,11,15)\">数码</span>\r\n                    <span id=\"Span13\" onmouseover=\"ShowTab(13,11,15)\">食品</span>\r\n                    <span id=\"Span14\" onmouseover=\"ShowTab(14,11,15)\">美容</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('739','','1','0','index_5t2','code','0','	<span id=\"Span1\" onmouseover=\"ShowTab(1,1,6)\">文章</span>\r\n            <span id=\"Span2\" onmouseover=\"ShowTab(2,1,6)\">图片</span>\r\n            <span id=\"Span3\" onmouseover=\"ShowTab(3,1,6)\">影视</span>\r\n            <span id=\"Span4\" onmouseover=\"ShowTab(4,1,6)\">商场</span>\r\n            <span id=\"Span5\" onmouseover=\"ShowTab(5,1,6)\">flash</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_limitword` VALUES ('1','造反','造**');
INSERT INTO `pp_limitword` VALUES ('2','法轮功','法**功');
INSERT INTO `pp_memberdata` VALUES ('1','admin','','3','0','','1','0','','9999','999999','0','15285','1363578725','127.0.0.1','1353940733','127.0.0.1','0','0000-00-00','','','3','1354195510','','','','','0','0','','','','','','','','0','0','0','0','','','');
INSERT INTO `pp_memberdata` VALUES ('2','admi@','','8','0','','1','0','','0','0','0','2827','1354112020','127.0.0.1','1354109091','127.0.0.1','0','0000-00-00','','','0','0','','','','','0','0','','','','','','','a:1:{s:7:\"endtime\";s:0:\"\";}','0','0','0','0','','','');
INSERT INTO `pp_memberdata` VALUES ('3','admin3','','8','0','','1','0','','206','0','318820','186002','1363578695','127.0.0.1','1354113894','127.0.0.1','1','0000-00-00','','','3','1357194889','28829724','wzcom@126.com','','wzcom@126.com','0','0','上海市虬泾路900弄56号901室','201615','','021-64250253','330304198710264516','苏良本','a:1:{s:7:\"endtime\";s:0:\"\";}','0','1','0','1','a','b','c');
INSERT INTO `pp_memberdata` VALUES ('4','admin4','','8','0','','1','0','','0','0','15153','158','1357224945','127.0.0.1','1354113935','127.0.0.1','0','0000-00-00','','','0','0','','','','','0','0','','','','','330304198703224210','季禾','','0','0','0','-1','','','');
INSERT INTO `pp_memberdata` VALUES ('5','admin5','','8','0','','1','0','','300','0','256109','9727','1362378159','127.0.0.1','1354114434','127.0.0.1','1','0000-00-00','','','0','0','28829724','wz_boy@msn.com','','','0','0','上海市松江区虬泾路900弄56-901','201615','','021-64250253','330304198710264516','苏良本','','0','0','0','-1','上海创软信息科技有限公司','研发一部','软件设计工程师');
INSERT INTO `pp_memberdata` VALUES ('6','admin6','','8','0','','1','0','','0','0','0','73','1354114581','127.0.0.1','1354114507','127.0.0.1','0','0000-00-00','','','0','0','','','','','0','0','','','','','','','','0','0','0','0','','','');
INSERT INTO `pp_memberdata` VALUES ('7','admin7','','8','0','','1','0','','2','0','0','0','1354114588','127.0.0.1','1354114588','127.0.0.1','0','0000-00-00','','','0','0','','','','','0','0','','','','','','','a:1:{s:7:\"endtime\";s:0:\"\";}','0','0','0','0','','','');
INSERT INTO `pp_members` VALUES ('1','admin','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('2','admi@','96e79218965eb72c92a549dd5a330112');
INSERT INTO `pp_members` VALUES ('3','admin3','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('4','admin4','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('5','admin5','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('6','admin6','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('7','admin7','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_menu` VALUES ('9','0','新闻','list.php?fid=1','','0','0','0','0','18','');
INSERT INTO `pp_menu` VALUES ('10','0','图片','list.php?fid=9','','0','0','0','0','16','');
INSERT INTO `pp_menu` VALUES ('11','0','下载','list.php?fid=11','','0','0','0','0','14','');
INSERT INTO `pp_menu` VALUES ('12','0','影视','list.php?fid=13','','0','0','0','0','12','');
INSERT INTO `pp_menu` VALUES ('13','0','商城','list.php?fid=15','','0','0','0','0','10','');
INSERT INTO `pp_menu` VALUES ('51','0','首页','/','','0','0','0','0','20','');
INSERT INTO `pp_module` VALUES ('24','2','广告系统','ad_','a_d','','','','0','','','0','0');
INSERT INTO `pp_module` VALUES ('21','2','万能表单','form_','form','','','','0','','','0','0');
INSERT INTO `pp_module` VALUES ('18','2','留言本','guestbook_','guestbook','','','','0','','','0','0');
INSERT INTO `pp_module` VALUES ('23','2','投票系统','vote_','vote','','','','0','','','0','0');
INSERT INTO `pp_moneylog` VALUES ('1','7','2','管理员操作','1355404020');
INSERT INTO `pp_moneylog` VALUES ('2','3','500','管理员操作','1356097645');
INSERT INTO `pp_moneylog` VALUES ('3','3','-6','发送1条短信','1356098231');
INSERT INTO `pp_moneylog` VALUES ('4','3','-4','管理员操作','1356098284');
INSERT INTO `pp_moneylog` VALUES ('5','3','-60','发送1条短信','1356155808');
INSERT INTO `pp_moneylog` VALUES ('6','3','-42','发送1条短信','1356157426');
INSERT INTO `pp_moneylog` VALUES ('7','3','-90','发送3条短信','1356158280');
INSERT INTO `pp_moneylog` VALUES ('8','3','-90','发送3条短信','1356158605');
INSERT INTO `pp_moneylog` VALUES ('9','3','-36','发送3条短信','1356158721');
INSERT INTO `pp_moneylog` VALUES ('10','3','-60','发送2条短信','1356161115');
INSERT INTO `pp_moneylog` VALUES ('11','3','-18','发送3条短信','1356265484');
INSERT INTO `pp_moneylog` VALUES ('12','3','-18','发送3条短信','1356265532');
INSERT INTO `pp_moneylog` VALUES ('13','3','30','邮箱审核奖分','1357216001');
INSERT INTO `pp_moneylog` VALUES ('14','5','100','pay_finish','1362295330');
INSERT INTO `pp_moneylog` VALUES ('15','5','100','在线充值','1362301707');
INSERT INTO `pp_moneylog` VALUES ('16','5','100','支付宝在线充值','1362302092');
INSERT INTO `pp_moneylog` VALUES ('17','3','100','支付宝在线充值','1362378334');
INSERT INTO `pp_olpay` VALUES ('1','0','itlhsi6ed8','1','0','1362294880','5','admin5','1','0','0','alipay','0');
INSERT INTO `pp_olpay` VALUES ('2','0','xqm3jlgedb','1','1','1362295266','5','admin5','1','0','0','alipay','0');
INSERT INTO `pp_olpay` VALUES ('3','0','r4lj4padyt','1','1','1362301664','5','admin5','1','0','0','alipay','0');
INSERT INTO `pp_olpay` VALUES ('4','0','z2elomeszw','1','1','1362302054','5','admin5','1','0','0','alipay','0');
INSERT INTO `pp_olpay` VALUES ('5','0','skfia9rbdf','1','1','1362378273','3','admin3','1','0','0','alipay','0');
INSERT INTO `pp_sms_list` VALUES ('10','13636686104,13636686103,13636686102,13636686101,13636686100,','5','新年快乐～！happy new year.新年快乐～！happy new year.新年快乐～！happy new year.新年快乐～！happy new year.新年快乐～！happy new year.108','108','2','1356161115','1355973000','1356161115','取消发送','admin3','127.0.0.1','10','60','112','');
INSERT INTO `pp_sms_list` VALUES ('11','13636686104,13636686105,13636686106,','3','定时到元旦快乐～@','9','1','1356265484','1385827200','1356265484','取消发送','admin3','127.0.0.1','3','18','94','');
INSERT INTO `pp_sms_list` VALUES ('12','13636686104,13636686105,13636686106,','3','更新到1月1日，元旦快乐～！','14','1','1356265532','1356969600','1356265532','取消发送','admin3','127.0.0.1','3','18','76','');
INSERT INTO `pp_sort` VALUES ('1','0','0','新闻中心','1','8','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:25:\"template/default/news.htm\";}','','0','','','0','','','','','0','a:11:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:14:\"label_bencandy\";s:0:\"\";s:10:\"channelDir\";s:4:\"nnew\";s:13:\"channelDomain\";s:0:\"\";s:10:\"label_list\";s:0:\"\";s:15:\"ListShowBigType\";s:13:\"bigsort_tpl/0\";}','','','','');
INSERT INTO `pp_sort` VALUES ('3','1','0','社会新闻','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:9:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/6\";s:15:\"ListShowBigType\";N;s:10:\"label_list\";s:0:\"\";s:14:\"label_bencandy\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('4','1','0','IT业界','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','31','','','1','3','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:11:\"list_tpl/10\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('29','0','105','产品库','1','1','1','','0','0','','','','','','','0','','','1','','','','','0','a:1:{s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('30','29','105','晾衣机','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;s:14:\"label_bencandy\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('9','0','100','图片中心','1','1','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:26:\"template/default/photo.htm\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:1:\"0\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('10','9','100','美女欣赏','2','0','0','','0','0','','','22','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','11','','1','8','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('11','0','101','下载中心','1','4','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:29:\"template/default/download.htm\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:1:\"0\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('12','11','101','建站软件','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:6:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";}','','','','');
INSERT INTO `pp_sort` VALUES ('13','0','102','影视频道','1','1','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:26:\"template/default/video.htm\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('14','13','102','网友视频','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:14:\"label_bencandy\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('15','0','103','商城频道','1','1','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:25:\"template/default/shop.htm\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('16','15','103','数码产品','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:6:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";}','','','','');
INSERT INTO `pp_sort` VALUES ('17','0','104','FLASH频道','1','1','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:1:\"0\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('18','17','104','MTV类','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','3','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('26','11','101','装机软件','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `pp_sort` VALUES ('27','11','101','办公软件','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('31','1','0','新闻头条','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/3\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('32','1','0','推荐新闻','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('33','1','0','图片新闻','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('34','1','0','热点事件','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/2\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('38','1','0','一语惊人','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/4\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('39','1','0','web新闻','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/8\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('40','11','101','杀毒软件','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','0','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_template` VALUES ('5','头部白板','7','template/default/none.htm','','0');
INSERT INTO `pp_template` VALUES ('6','底部白板','8','template/default/none.htm','','0');
INSERT INTO `pp_template` VALUES ('23','文章列表页(左宽右窄)','2','template/default/list.htm','','0');
INSERT INTO `pp_template` VALUES ('22','内容页(左宽右窄)','3','template/default/bencandy.htm','','0');
INSERT INTO `pp_template` VALUES ('24','主页(左宽右窄)','1','template/default/index.htm','','0');
INSERT INTO `pp_template` VALUES ('20','内容页(上下型)','3','template/default/bencandy_tpl_2.htm','','0');
INSERT INTO `pp_template` VALUES ('21','独立页','9','template/default/alonepage.htm','','0');
INSERT INTO `pp_template` VALUES ('25','专题模板一(头与底要白板)','11','template/special/showsp2.htm','','0');
INSERT INTO `pp_template` VALUES ('26','专题模板二(头与底要白板)','11','template/special/special_sport.htm','','0');
INSERT INTO `pp_template` VALUES ('27','专题模板三(头与底要白板)','11','template/special/special_car.htm','','0');
INSERT INTO `pp_template` VALUES ('28','专题模板四(头与底要白板)','11','template/special/special_finance.htm','','0');
INSERT INTO `pp_template` VALUES ('29','专题模板五(头与底要白板)','11','template/special/sp1.htm','','0');
INSERT INTO `pp_upfile` VALUES ('1','0','0','0','3','1357193970','3_20130103140130_qtaec.jpg','3','0','0');
INSERT INTO `pp_upfile` VALUES ('2','0','0','0','3','1357214409','3_20130103200109_gk2a9.jpg','3','0','0');
INSERT INTO `pp_upfile` VALUES ('3','0','0','0','3','1357222058','3_20130103220138_kjfhk.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('4','0','0','0','3','1357222275','3_20130103220115_3epa5.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('5','0','0','0','3','1357223850','3_20130103220130_1rgiu.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('6','0','0','0','3','1357224041','3_20130103220141_0vztn.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('7','0','0','0','3','1357224109','3_20130103220149_ajmrq.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('8','0','0','0','3','1357224144','3_20130103220124_tljgp.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('9','0','0','0','3','1357224359','3_20130103220159_01nfw.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('10','0','0','0','3','1357224470','3_20130103220150_diqd0.jpg','4','0','0');
INSERT INTO `pp_upfile` VALUES ('11','0','0','0','3','1357224564','3_20130103220124_nb9oo.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('12','0','0','0','4','1357224881','4_20130103220141_ezyda.png','优意小logo','0','0');
INSERT INTO `pp_upfile` VALUES ('13','0','0','0','5','1362301636','5_20130303170316_7uo3p.jpg','反面','0','0');
INSERT INTO `pp_vote_comment` VALUES ('11','10','0','1','admin','1237279209','rrrrrrrrrrrrrrr','192.168.0.99','0','1');
INSERT INTO `pp_vote_comment` VALUES ('12','10','0','1','admin','1237279223','dddddddddddddddd','192.168.0.99','0','1');
INSERT INTO `pp_vote_comment` VALUES ('14','6','0','1','admin','1239025849','&nbsp;证&nbsp;码:','127.0.0.1','0','1');
INSERT INTO `pp_vote_comment` VALUES ('22','6','0','1','admin','1283825218','fdsadf','127.0.0.1','0','1');
INSERT INTO `pp_vote_comment` VALUES ('19','11','0','1','admin','1240210890','不错呀','192.168.0.99','0','1');
INSERT INTO `pp_vote_comment` VALUES ('20','11','0','1','admin','1255082863','fdsa','127.0.0.1','0','1');
INSERT INTO `pp_vote_comment` VALUES ('21','11','0','1','admin','1283823884','ll','127.0.0.1','0','1');
INSERT INTO `pp_vote_config` VALUES ('module_id','23','');
INSERT INTO `pp_vote_config` VALUES ('Info_webOpen','1','');
INSERT INTO `pp_vote_config` VALUES ('Info_webname','投票系统','');
INSERT INTO `pp_vote_config` VALUES ('module_pre','vote_','');
INSERT INTO `pp_vote_element` VALUES ('37','6','熊晓鸽','4','10','','','');
INSERT INTO `pp_vote_element` VALUES ('38','6','马化腾','4','7','','','');
INSERT INTO `pp_vote_element` VALUES ('39','6','马云','2','5','','','');
INSERT INTO `pp_vote_element` VALUES ('41','6','李彦宏','6','6','','','');
INSERT INTO `pp_vote_element` VALUES ('81','11','阿里妈妈和淘宝合并','0','4','vote/1_20090418220434_DSazk.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('80','11','Chinaz之CNIDC主机网上线','0','9','vote/1_20090419090435_51j39.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('68','6','丁磊','12','9','','','');
INSERT INTO `pp_vote_element` VALUES ('70','10','百度粉丝团','6','0','vote/1_20090317160304_1cyPh.gif','我是百度粉丝团','http://www.baidu.com');
INSERT INTO `pp_vote_element` VALUES ('71','10','谷歌粉丝团','2','0','vote/1_20090317160317_NO50S.gif','我是谷歌粉丝团','http://www.google.cn');
INSERT INTO `pp_vote_element` VALUES ('72','11','博客已死，SNS当立','1','8','vote/1_20090419090425_nkqeB.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('73','11','CN域名白菜到猪肉','2','10','vote/1_20090419090455_L5Iz8.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('74','11','九九音乐网倒闭','1','3','vote/1_20090419090414_BVe9o.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('75','11','番茄花园被告','2','6','vote/1_20090419090445_qQiaW.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('76','11','红火的全国站长大会','2','5','vote/1_20090419090445_QVf6M.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('77','11','丁磊养猪','0','7','vote/1_20090419090459_1MkWx.jpg','','http://bbs.chinaz.com/Shuiba/thread-1240750-1-1.html');
INSERT INTO `pp_vote_element` VALUES ('82','12','中电云集','11','0','vote/1_20101109161100_eooqn.jpg','','http://www.chinaccnet.com/');
INSERT INTO `pp_vote_element` VALUES ('83','12','华夏名网','11','0','vote/1_20101109161103_nulvn.jpg','','http://www.sudu.cn/');
INSERT INTO `pp_vote_element` VALUES ('84','12','群英网络','11','0','vote/1_20101109161108_q5bre.jpg','','http://www.qy.com.cn/');
INSERT INTO `pp_vote_element` VALUES ('85','12','371数据','12','0','vote/1_20101109161112_omvjo.jpg','','http://www.371.com/');
INSERT INTO `pp_vote_element` VALUES ('86','12','中网互联','11','0','vote/1_20101109161116_zlkqh.jpg','','http://www.zwidc.com/');
INSERT INTO `pp_vote_element` VALUES ('87','12','星辉互联','11','0','vote/1_20101109161120_ylaj7.jpg','','http://www.eydns.com/');
INSERT INTO `pp_vote_topic` VALUES ('6','互联网哪些前辈是你支持的','互联网哪些前辈是你支持和影响到你的？','2','600','0','','1164793927','','1233749543','1265256743','0','1','<div class=\"voteid\" title=\"$describes\">{$button}{$title}({$votenum})</div>','0','0','0');
INSERT INTO `pp_vote_topic` VALUES ('11','2008年中国站长十大热门事件投票','-------请为你觉得2008年最热门的站长事件投上一票.','2','500','0','','1237281523','','1233749543','1580789543','0','1','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:118px;float:left;margin-top:4px;\" class=\"voteid\">\r\n  <tr> \r\n    <td align=\"center\"><A HREF=\"$url\" target=\"_blank\" style=\"border:1px solid #ccc;display:block;width:100px;height:75px;\"><img alt=\"{$title}\" style=\"border:1px solid #fff;\" src=\"$img\" border=\"0\" width=\"100\" height=\"75\"></A></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\">\r\n      <div  style=\"width:110px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;\">{$button}(<b><font color=\"#FF0000\" >{$votenum}</font></b>)<a HREF=\"$url\" target=\"_blank\" title=\"{$title}\">{$title}</a></div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td>{$describes}</td>\r\n  </tr>\r\n  <tr> \r\n    <td></td>\r\n  </tr>\r\n</table>\r\n\r\n','1','0','0');
INSERT INTO `pp_vote_topic` VALUES ('10','哪个搜索引擎好?','你喜欢使用哪个搜索引擎呢,请投上一票?','1','15','0','','1237275830','','0','0','0','1','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:90px;float:left;\">\r\n  <tr> \r\n    <td align=\"center\" valign=\"middle\" style=\"line-height:40px;\"> <a href=\"$url\" target=_blank> \r\n      <b>$title</b></a> </td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\"><a href=\"$url\" target=\"_blank\"><img alt=\"$describes\" src=\"$img\" width=\"80\" height=\"30\" border=\"0\"></a></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\" style=\"line-height:20px;\"> <font color=\"#990000\">共 <b><font color=\"#FF0000\">$votenum</font> 票 \r\n      </b></font></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\" style=\"line-height:40px;\"><a href=\"$webdb[www_url]/do/vote.php?action=vote&voteId=$id\" target=\"_blank\"><u>投一票</u></a> \r\n      <a href=\"$webdb[www_url]/do/vote.php?job=show&cid=$cid#postcomment\" target=\"_blank\"><u>评一评</u></a></td>\r\n  </tr>\r\n</table>','2','0','0');
INSERT INTO `pp_vote_topic` VALUES ('12','请为你最喜欢的IDC投上宝贵的一票','','2','0','0','','1289292937','','0','0','0','0','<div class=\"listVote\" title=\"{$describes}\">\r\n                    	<div class=\"img\"><A HREF=\"$url\" target=\"_blank\"><img src=\"$img\" width=\"120\" height=\"60\"/></A></div>\r\n                        <div class=\"word\">{$button} (<span>{$votenum}</span>)$title</div>\r\n                    </div>','1','0','0');
