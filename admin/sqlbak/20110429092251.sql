-- MySQL dump 10.11
--
-- Host: localhost    Database: db_blog
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `db_blog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_blog` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_blog`;

--
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL auto_increment,
  `manager` varchar(20) character set gb2312 NOT NULL,
  `password` varchar(50) character set gb2312 NOT NULL,
  `lastIP` varchar(20) character set gb2312 NOT NULL,
  `lasttime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `freeze` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_admin`
--

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` VALUES (65,'mr','fdb390e945559e74475ed8c8bbb48ca5','127.0.0.1','2011-04-29 01:21:18',0);
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_article`
--

DROP TABLE IF EXISTS `tb_article`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_article` (
  `id` int(11) NOT NULL auto_increment,
  `typename` varchar(20) character set gb2312 NOT NULL,
  `title` varchar(50) character set gb2312 NOT NULL,
  `content` mediumtext character set gb2312 NOT NULL,
  `author` varchar(50) character set gb2312 NOT NULL,
  `firsttime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `artquote` varchar(300) character set gb2312 NOT NULL,
  `hitnum` int(4) NOT NULL,
  `renum` int(4) NOT NULL,
  `examine` int(1) NOT NULL,
  `isnominate` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_article`
--

LOCK TABLES `tb_article` WRITE;
/*!40000 ALTER TABLE `tb_article` DISABLE KEYS */;
INSERT INTO `tb_article` VALUES (12,'死亡新闻','中年夭折','刚刚长大成人的小莫，不幸因心脏病突发死亡。。。。。。。','I LOVE YOU','2011-01-21 08:44:00','',3,0,1,0),(13,'爱人','都绢花的故事','  这是一个久远的事了，在一个天堂，曾经发生一件令人震撼的事》》》》','my BLOG','2011-01-22 01:47:28','',1,0,1,0),(11,'言情笔记','不朽的爱情','  在一个偏远的小山村住着一对白发夫妻，他们曾将起他们年轻时的故事。  男的叫肖建，女的叫西施。两家住在富饶的黄金城市。。。。。。。。','I LOVE YOU','2011-01-22 01:47:14','',1,1,1,0),(19,'日记','人人广告','雷克萨减肥卡萨地方撒旦刘副将萨都剌开房间萨拉肯定福建省里卡多','a还珠格格','2011-04-28 01:01:49','',1,1,1,0),(33,'日记','心情爽啊','<font color=#ff00ff>明天就放假了我干什么都来劲，心情也是格外的好！</font>','wode','2011-04-28 02:41:25','',0,0,1,1),(32,'寻人启示','李老汉','<font color=#0000ff>于今日早上，身穿蓝色外衣，灰色裤子的80岁的李老汉走失，身高1.75米左右、、、、</font>','wode','2011-04-28 01:11:28','',0,0,1,1),(24,'新闻','死亡新闻','<font color=#990000>刚刚长大成人的小莫，不幸因心脏病突发死亡。。。。。。。</font>','wode','2011-04-28 01:11:33','',0,0,1,1),(25,'日记','人生','<font color=#009999>人生就像一场戏，我们都是其中的一员，并扮演着不同的角色！</font>','wode','2011-04-28 01:01:41','',0,0,1,1),(26,'人生感悟','人生短暂','<font color=#999900>人的生命是短暂的，请珍惜它！</font><font color=9900ff>只要我们努力一切都可以的。</font>','wode','2011-04-28 01:01:40','',0,0,1,1);
/*!40000 ALTER TABLE `tb_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_frd`
--

DROP TABLE IF EXISTS `tb_frd`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_frd` (
  `id` int(11) NOT NULL auto_increment,
  `frdname` varchar(100) character set gb2312 NOT NULL,
  `frdmem` varchar(100) character set gb2312 NOT NULL,
  `frdlevel` int(11) NOT NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_frd`
--

LOCK TABLES `tb_frd` WRITE;
/*!40000 ALTER TABLE `tb_frd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_frd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_log`
--

DROP TABLE IF EXISTS `tb_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_log` (
  `id` int(11) NOT NULL auto_increment,
  `content` varchar(200) character set gb2312 NOT NULL,
  `operator` varchar(50) character set gb2312 NOT NULL,
  `uptime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=359 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_log`
--

LOCK TABLES `tb_log` WRITE;
/*!40000 ALTER TABLE `tb_log` DISABLE KEYS */;
INSERT INTO `tb_log` VALUES (271,'删除操作。删除日志id：270 ','111','2011-01-24 02:08:36'),(272,'推荐文章操作，账号：14','111','2011-01-24 02:12:27'),(273,'推荐用户操作，账号：19','111','2011-01-24 02:13:13'),(274,'推荐用户操作，账号：19','111','2011-01-24 02:13:26'),(275,'冻结(解冻)操作，管理员账号：64','111','2011-01-24 02:19:15'),(276,'冻结(解冻)操作，管理员账号：64','111','2011-01-24 02:19:36'),(277,'冻结(解冻)操作，账号：19','111','2011-01-24 02:23:55'),(278,'冻结(解冻)操作，账号：19','111','2011-01-24 02:24:23'),(279,'冻结(解冻)操作，账号：22','111','2011-01-24 02:27:15'),(280,'审核操作，文章id：19','111','2011-01-24 02:29:11'),(281,'冻结(解冻)操作，账号：22','111','2011-01-24 02:29:15'),(282,'冻结(解冻)操作，管理员账号：62','','2011-01-24 03:41:00'),(283,'冻结(解冻)操作，管理员账号：62','','2011-01-24 03:41:01'),(284,'用户admin访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','admin','2011-01-24 06:10:38'),(285,'用户tsoft访问后台管理系统，用户名或密码错误。','tsoft','2011-01-29 07:39:18'),(286,'用户admin访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','admin','2011-01-29 07:39:28'),(287,'冻结(解冻)操作，管理员账号：64','','2011-01-29 08:23:56'),(288,'用户admin访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','admin','2011-01-30 01:21:55'),(289,'添加管理员，添加账号：111','admin','2011-01-30 01:33:37'),(290,'删除操作，删除了管理员：66 61 62 63 64 ','admin','2011-01-30 01:35:10'),(291,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-01-30 01:45:02'),(292,'冻结(解冻)操作，管理员账号：65','mr','2011-01-30 02:30:02'),(293,'冻结(解冻)操作，管理员账号：65','mr','2011-01-30 02:30:03'),(294,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-02-09 01:45:06'),(295,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-02-09 03:05:17'),(296,'删除操作，删除了管理员：60 ','mr','2011-02-09 03:07:48'),(297,'冻结(解冻)操作，管理员账号：65','mr','2011-02-09 03:07:52'),(298,'冻结(解冻)操作，管理员账号：65','mr','2011-02-09 03:07:53'),(299,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-02-14 03:22:48'),(300,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-02-15 02:04:09'),(301,'审核操作，文章id：20','mr','2011-02-15 02:04:36'),(302,'审核操作，文章id：21','mr','2011-02-15 02:04:37'),(303,'审核操作，文章id：22','mr','2011-02-15 02:04:38'),(304,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-02-18 06:35:29'),(305,'用户mr访问后台管理系统，用户名或密码错误。','mr','2011-04-28 01:00:22'),(306,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-28 01:00:32'),(307,'推荐文章操作，账号：18','mr','2011-04-28 01:01:24'),(308,'推荐文章操作，账号：17','mr','2011-04-28 01:01:25'),(309,'推荐文章操作，账号：26','mr','2011-04-28 01:01:28'),(310,'推荐文章操作，账号：25','mr','2011-04-28 01:01:36'),(311,'审核操作，文章id：26','mr','2011-04-28 01:01:40'),(312,'审核操作，文章id：25','mr','2011-04-28 01:01:41'),(313,'审核操作，文章id：24','mr','2011-04-28 01:01:42'),(314,'审核操作，文章id：23','mr','2011-04-28 01:01:43'),(315,'审核操作，文章id：19','mr','2011-04-28 01:01:48'),(316,'审核操作，文章id：19','mr','2011-04-28 01:01:49'),(317,'删除操作。删除文章id：31 30 ','mr','2011-04-28 01:04:20'),(318,'审核操作，文章id：32','mr','2011-04-28 01:10:08'),(319,'审核操作，文章id：33','mr','2011-04-28 01:10:10'),(320,'推荐用户操作，账号：21','mr','2011-04-28 01:10:57'),(321,'推荐用户操作，账号：26','mr','2011-04-28 01:11:00'),(322,'推荐文章操作，账号：32','mr','2011-04-28 01:11:28'),(323,'推荐文章操作，账号：33','mr','2011-04-28 01:11:31'),(324,'推荐文章操作，账号：24','mr','2011-04-28 01:11:33'),(325,'删除操作。删除文章id：18 17 15 ','mr','2011-04-28 01:11:50'),(326,'删除操作，删除了账号：21 ','mr','2011-04-28 01:11:57'),(327,'删除操作，删除了图片：41 40 ','mr','2011-04-28 01:12:10'),(328,'添加管理员，添加账号：adnin','mr','2011-04-28 01:12:44'),(329,'用户admin访问后台管理系统，用户名或密码错误。','admin','2011-04-28 01:13:21'),(330,'用户admin访问后台管理系统，用户名或密码错误。','admin','2011-04-28 01:13:29'),(331,'用户admin访问后台管理系统，用户名或密码错误。','admin','2011-04-28 01:13:36'),(332,'用户admin访问后台管理系统，用户名或密码错误。','admin','2011-04-28 01:13:48'),(333,'用户admin访问后台管理系统，用户名或密码错误。','admin','2011-04-28 01:13:54'),(334,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-28 01:14:03'),(335,'删除操作，删除了管理员：67 ','mr','2011-04-28 01:14:15'),(336,'添加管理员，添加账号：admin','mr','2011-04-28 01:14:33'),(337,'用户admin访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','admin','2011-04-28 01:15:00'),(338,'用户admin访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','admin','2011-04-28 01:15:34'),(339,'添加管理员，添加账号：111','admin','2011-04-28 01:15:48'),(340,'删除操作，删除了管理员：68 69 ','admin','2011-04-28 01:15:51'),(341,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-28 01:16:22'),(342,'添加管理员，添加账号：111','mr','2011-04-28 01:16:37'),(343,'冻结(解冻)操作，管理员账号：70','mr','2011-04-28 01:16:39'),(344,'用户111访问后台管理系统，用户输入正确，登录被拒绝。原因：该用户被冻结','111','2011-04-28 01:17:02'),(345,'冻结(解冻)操作，管理员账号：70','mr','2011-04-28 01:17:07'),(346,'用户111访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','111','2011-04-28 01:17:27'),(347,'删除操作，删除了管理员：70 ','mr','2011-04-28 01:17:38'),(348,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-28 02:40:08'),(349,'审核操作，文章id：33','mr','2011-04-28 02:40:59'),(350,'审核操作，文章id：33','mr','2011-04-28 02:41:25'),(351,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-28 02:47:54'),(352,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-28 05:14:15'),(353,'用户mr访问后台管理系统，用户名或密码错误。','mr','2011-04-28 08:05:38'),(354,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-28 08:05:48'),(355,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-28 08:18:58'),(356,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-29 00:33:50'),(357,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-29 01:10:24'),(358,'用户mr访问后台管理系统，用户输入正确，，用户登录ip：127.0.0.1','mr','2011-04-29 01:21:18');
/*!40000 ALTER TABLE `tb_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_member`
--

DROP TABLE IF EXISTS `tb_member`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_member` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) character set gb2312 NOT NULL,
  `pwd` varchar(50) character set gb2312 NOT NULL,
  `question` varchar(50) character set gb2312 NOT NULL,
  `answer` varchar(50) character set gb2312 NOT NULL,
  `email` varchar(50) character set gb2312 NOT NULL,
  `realname` varchar(50) character set gb2312 NOT NULL,
  `sex` varchar(1) character set gb2312 NOT NULL,
  `birthday` date NOT NULL default '2008-06-12',
  `tel` varchar(20) character set gb2312 NOT NULL,
  `address` varchar(200) character set gb2312 NOT NULL,
  `homepage` varchar(200) character set gb2312 NOT NULL,
  `qq` varchar(10) character set gb2312 NOT NULL,
  `unwrite` varchar(200) character set gb2312 NOT NULL,
  `headgif` varchar(200) character set gb2312 NOT NULL,
  `hitnum` int(4) NOT NULL,
  `upfile` int(4) NOT NULL,
  `uppics` int(4) NOT NULL,
  `lasttime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `freeze` int(1) NOT NULL,
  `blogname` varchar(100) character set gb2312 NOT NULL,
  `blogurl` varchar(200) character set gb2312 NOT NULL,
  `arttype` varchar(300) character set gb2312 NOT NULL,
  `pictype` varchar(300) character set gb2312 NOT NULL,
  `isnew` int(1) NOT NULL default '0',
  `isnominate` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_member`
--

LOCK TABLES `tb_member` WRITE;
/*!40000 ALTER TABLE `tb_member` DISABLE KEYS */;
INSERT INTO `tb_member` VALUES (22,'a还珠格格','25f9e794323b453885f5181f1b624d0b','123','123','222222@qq.com','晓丽','女','2011-01-01','','','http://','222222','一人做事，一人当。','14.gif',3,1,2,'2011-04-29 00:49:17',0,'a还珠格格的博客','http://localhost/php_vu1.0/center/center.php?uid=a还珠格格','日记','我的相册',0,0),(20,'my BLOG','25f9e794323b453885f5181f1b624d0b','123','123','55555555QQ@.com','小丽','男','1925-10-30','18745698712','长春','http://','55555555','sdafdsaf sadfsda sdafsd','13.gif',5,2,1,'2011-04-28 01:36:37',0,'my BLOG的博客','http://localhost/php_vu1.0/center/center.php?uid=my BLOG','日记,爱人,寻人启事','我的相册',0,0),(23,'lx111','e271cbad5492ed29a5244fa9e7e372d5','','','','','男','2011-01-01','','','http://','','','null.jpg',0,0,0,'2011-01-30 03:21:08',0,'lx111的博客','http://127.0.0.1/TM/06/center/center.php?uid=lx111','日记','我的相册',0,0),(24,'mrlx','96e79218965eb72c92a549dd5a330112','','','','','男','2011-01-01','','','http://','','','4.gif',0,3,0,'2011-02-18 07:35:04',0,'mrlx的博客','http://127.0.0.1/TM/06/center/center.php?uid=mrlx','日记','我的相册',0,0),(25,'leonsk','e10adc3949ba59abbe56e057f20f883e','','','','','男','2011-01-01','','','http://','','','null.jpg',0,0,0,'2011-02-14 02:18:12',0,'leonsk的博客','http://192.168.1.189/TM/06/center/center.php?uid=leonsk','日记','我的相册',0,0),(19,'I LOVE YOU','fcea920f7412b5da7be0cf42b8c93759','123','123','11111111qq@.COM','123','女','2000-01-07','','','http://','11111111','SADFFASDSA','2.gif',5,2,3,'2011-04-28 01:35:39',0,'I LOVE YOU的博客','http://localhost/php_vu1.0/center/center.php?uid=I LOVE YOU','日记,言情笔记,死亡新闻','我的相册',0,0),(26,'wode','96e79218965eb72c92a549dd5a330112','','','111.com','小王','女','1901-01-01','11111111111','长春','http://','111','走自己的路让别人说去吧！','2.gif',0,10,12,'2011-04-28 01:11:00',0,'wode的博客','http://localhost/TM/06/center/center.php?uid=wode','日记,寻人启示,新闻,搞笑篇,人生感悟','我的相册,风景,个人写真',0,1);
/*!40000 ALTER TABLE `tb_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mess`
--

DROP TABLE IF EXISTS `tb_mess`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_mess` (
  `id` int(11) NOT NULL auto_increment,
  `messer` varchar(100) character set gb2312 NOT NULL,
  `content` varchar(300) character set gb2312 NOT NULL,
  `messered` varchar(100) character set gb2312 NOT NULL,
  `messtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_mess`
--

LOCK TABLES `tb_mess` WRITE;
/*!40000 ALTER TABLE `tb_mess` DISABLE KEYS */;
INSERT INTO `tb_mess` VALUES (1,'I LOVE YOU','你好，是真的吗？我是记者想去访问，可以吗？','I LOVE YOU','2011-01-20 03:47:27'),(2,'I LOVE YOU','人情味','I','2011-01-20 05:11:31'),(3,'博客皇帝','123','my BLOG','2011-01-24 02:13:49'),(4,'匿名','12121','I LOVE YOU','2011-01-29 06:31:49'),(5,'匿名','2332231','my BLOG','2011-01-29 07:35:32'),(6,'匿名','32321231','博客皇帝','2011-02-10 00:25:48'),(7,'匿名','32231','博客皇帝','2011-02-14 02:14:23'),(8,'匿名','this is a test','','2011-02-14 02:15:11'),(9,'匿名','hello','','2011-02-14 02:15:23'),(10,'匿名','111','','2011-02-14 02:15:47'),(11,'匿名','13232','博客皇帝','2011-02-14 02:16:56'),(12,'匿名','111','','2011-02-14 02:18:20'),(13,'匿名','13213','I LOVE YOU','2011-02-14 02:22:40'),(14,'匿名','111','leonsk','2011-02-14 03:42:21'),(15,'匿名','111','leonsk','2011-02-14 05:12:29'),(16,'匿名','3','博客皇帝','2011-02-14 07:34:10'),(17,'匿名','3','a还珠格格','2011-02-15 00:22:05');
/*!40000 ALTER TABLE `tb_mess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_review`
--

DROP TABLE IF EXISTS `tb_review`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_review` (
  `id` int(11) NOT NULL auto_increment,
  `artid` int(4) NOT NULL,
  `content` varchar(300) character set gb2312 NOT NULL,
  `man` varchar(100) character set gb2312 NOT NULL,
  `firsttime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_review`
--

LOCK TABLES `tb_review` WRITE;
/*!40000 ALTER TABLE `tb_review` DISABLE KEYS */;
INSERT INTO `tb_review` VALUES (1,6,'按时打算','123','2011-01-19 08:21:52'),(2,0,'阿什顿','I LOVE YOU','2011-01-20 05:05:26'),(3,0,'12','I LOVE YOU','2011-01-20 05:20:41'),(4,11,'撒旦法','匿名','2011-01-20 05:56:37'),(5,19,'132','匿名','2011-01-29 08:50:54'),(6,16,'22121','mrlx','2011-02-14 02:22:31'),(7,22,'dfdfg','mrlx','2011-02-15 02:08:18'),(8,22,'dfdfg','mrlx','2011-02-15 02:09:07');
/*!40000 ALTER TABLE `tb_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_script`
--

DROP TABLE IF EXISTS `tb_script`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_script` (
  `id` int(11) NOT NULL auto_increment,
  `accept` varchar(100) character set gb2312 NOT NULL,
  `sender` varchar(100) character set gb2312 NOT NULL,
  `content` varchar(300) character set gb2312 NOT NULL,
  `isnew` int(1) NOT NULL,
  `sendtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_script`
--

LOCK TABLES `tb_script` WRITE;
/*!40000 ALTER TABLE `tb_script` DISABLE KEYS */;
INSERT INTO `tb_script` VALUES (2,'my BLOG','I LOVE YOU','你好啊1',0,'2011-01-20 06:20:44'),(3,'I LOVE YOU','my BLOG','嗯 你好  我们可以称为好朋友吗？',1,'2011-01-24 06:04:34'),(4,'I LOVE YOU','博客皇帝','你好啊 可以认识一下吗？',0,'2011-01-24 06:02:17');
/*!40000 ALTER TABLE `tb_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_uppics`
--

DROP TABLE IF EXISTS `tb_uppics`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tb_uppics` (
  `id` int(11) NOT NULL auto_increment,
  `picname` varchar(50) character set gb2312 NOT NULL,
  `picpath` varchar(100) character set gb2312 NOT NULL,
  `upauthor` varchar(100) character set gb2312 NOT NULL,
  `pictype` varchar(50) character set gb2312 NOT NULL,
  `hitnum` int(4) NOT NULL,
  `examine` int(1) NOT NULL,
  `uptime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tb_uppics`
--

LOCK TABLES `tb_uppics` WRITE;
/*!40000 ALTER TABLE `tb_uppics` DISABLE KEYS */;
INSERT INTO `tb_uppics` VALUES (21,'后天','1295504854.JPG','I LOVE YOU','我的相册',0,0,'2011-01-20 06:27:35'),(19,'明天','1295503833.jpg','I LOVE YOU','我的相册',0,0,'2011-01-20 06:10:34'),(20,'花好月圆','1295504325.jpg','my BLOG','我的相册',0,0,'2011-01-20 06:18:45'),(18,'今天','1295503818.jpg','I LOVE YOU','我的相册',0,0,'2011-01-20 06:10:19'),(28,'你好','1295836016.jpg','a还珠格格','我的相册',0,0,'2011-01-24 02:26:57'),(29,'不好','1295836090.jpg','a还珠格格','我的相册',0,0,'2011-01-24 02:28:11'),(32,'风景2','1303951167.JPG','wode','风景',0,0,'2011-04-28 00:39:27'),(31,'风景2','1303951140.jpg','wode','风景',0,0,'2011-04-28 00:39:00'),(33,'风景3','1303951196.jpg','wode','风景',0,0,'2011-04-28 00:39:57'),(34,'风景4','1303951216.jpg','wode','我的相册',0,0,'2011-04-28 00:40:17'),(35,'风景5','1303951246.jpg','wode','我的相册',0,0,'2011-04-28 00:40:46'),(36,'苹果','1303951913.jpg','wode','个人写真',0,0,'2011-04-28 00:51:54'),(37,'鸭梨','1303951961.jpg','wode','我的相册',0,0,'2011-04-28 00:52:42'),(38,'葡萄','1303951979.jpg','wode','我的相册',0,0,'2011-04-28 00:53:00'),(39,'草莓','1303952012.jpg','wode','我的相册',0,0,'2011-04-28 00:53:32');
/*!40000 ALTER TABLE `tb_uppics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-04-29  1:22:56
