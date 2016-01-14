/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.25a : Database - kyjszj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kyjszj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kyjszj`;

/*Table structure for table `sys_andorra` */

DROP TABLE IF EXISTS `sys_andorra`;

CREATE TABLE `sys_andorra` (
  `id` double DEFAULT NULL,
  `title` varchar(600) DEFAULT NULL,
  `content` varchar(600) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  `adurl` varchar(600) DEFAULT NULL,
  `publisher` varchar(150) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `uptime` datetime DEFAULT NULL,
  `starttime` varchar(150) DEFAULT NULL,
  `endtime` varchar(150) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `tourl` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_andorra` */

insert  into `sys_andorra`(`id`,`title`,`content`,`type`,`adurl`,`publisher`,`addtime`,`uptime`,`starttime`,`endtime`,`status`,`tourl`) values (2,'dddd','<p>dddd</p>','1','286787ecf43449518b92fb3f04361cab.jpg','ssss','2015-04-19 02:58:21','2015-04-19 02:58:21','2015-04-01','2015-03-31','1','dddd');

/*Table structure for table `sys_app_user` */

DROP TABLE IF EXISTS `sys_app_user`;

CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(300) DEFAULT NULL,
  `USERNAME` varchar(765) DEFAULT NULL,
  `PASSWORD` varchar(765) DEFAULT NULL,
  `NAME` varchar(765) DEFAULT NULL,
  `RIGHTS` varchar(765) DEFAULT NULL,
  `ROLE_ID` varchar(300) DEFAULT NULL,
  `LAST_LOGIN` varchar(765) DEFAULT NULL,
  `IP` varchar(300) DEFAULT NULL,
  `STATUS` varchar(96) DEFAULT NULL,
  `BZ` varchar(765) DEFAULT NULL,
  `PHONE` varchar(300) DEFAULT NULL,
  `SFID` varchar(300) DEFAULT NULL,
  `START_TIME` varchar(300) DEFAULT NULL,
  `END_TIME` varchar(300) DEFAULT NULL,
  `YEARS` double DEFAULT NULL,
  `NUMBER` varchar(300) DEFAULT NULL,
  `EMAIL` varchar(96) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_app_user` */

insert  into `sys_app_user`(`USER_ID`,`USERNAME`,`PASSWORD`,`NAME`,`RIGHTS`,`ROLE_ID`,`LAST_LOGIN`,`IP`,`STATUS`,`BZ`,`PHONE`,`SFID`,`START_TIME`,`END_TIME`,`YEARS`,`NUMBER`,`EMAIL`) values ('04762c0b28b643939455c7800c2e2412','dsfsd','f1290186a5d0b1ceab27f4e77c0c5d68','w','','55896f5ce3c0494fa6850775a4e29ff6','','','0','','18766666666','','2016-01-01','2016-01-13',2,'001','18766666666@qq.com'),('3faac8fe5c0241e593e0f9ea6f2d5870','dsfsdf','f1290186a5d0b1ceab27f4e77c0c5d68','wewe','','68f23fc0caee475bae8d52244dea8444','','','1','','18767676767','','','',0,'wqwe','qweqwe@qq.com');

/*Table structure for table `sys_dictionaries` */

DROP TABLE IF EXISTS `sys_dictionaries`;

CREATE TABLE `sys_dictionaries` (
  `ZD_ID` varchar(300) DEFAULT NULL,
  `NAME` varchar(300) DEFAULT NULL,
  `BIANMA` varchar(300) DEFAULT NULL,
  `ORDY_BY` double DEFAULT NULL,
  `PARENT_ID` varchar(300) DEFAULT NULL,
  `JB` double DEFAULT NULL,
  `P_BM` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dictionaries` */

insert  into `sys_dictionaries`(`ZD_ID`,`NAME`,`BIANMA`,`ORDY_BY`,`PARENT_ID`,`JB`,`P_BM`) values ('212a6765fddc4430941469e1ec8c8e6c','人事部','001',8,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_001'),('3cec73a7cc8a4cb79e3f6ccc7fc8858c','行政部','002',2,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_002'),('48724375640341deb5ef01ac51a89c34','北京','dq001',1,'cdba0b5ef20e4fc0a5231fa3e9ae246a',2,'DQ_dq001'),('5a1547632cca449db378fbb9a042b336','研发部','004',4,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_004'),('6f859a1cdb1549558e8d0c6fe73463ed','综合部','BM_005',5,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_BM_005'),('7f9cd74e60a140b0aea5095faa95cda3','财务部','003',3,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_003'),('b861bd1c3aba4934acdb5054dd0d0c6e','科技不','kj',7,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_kj'),('c067fdaf51a141aeaa56ed26b70de863','部门','BM',1,'0',1,'BM'),('c25158acc1ad4d44a366435659145578','11','11',11,'3cec73a7cc8a4cb79e3f6ccc7fc8858c',3,'002_11'),('cdba0b5ef20e4fc0a5231fa3e9ae246a','地区','DQ',2,'0',1,'DQ'),('f184bff5081d452489271a1bd57599ed','上海','SH',2,'cdba0b5ef20e4fc0a5231fa3e9ae246a',2,'DQ_SH'),('f30bf95e216d4ebb8169ff0c86330b8f','客服部','006',6,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_006');

/*Table structure for table `sys_featured` */

DROP TABLE IF EXISTS `sys_featured`;

CREATE TABLE `sys_featured` (
  `id` double DEFAULT NULL,
  `title` varchar(600) DEFAULT NULL,
  `content` varchar(900) DEFAULT NULL,
  `url` varchar(900) DEFAULT NULL,
  `heat` varchar(6) DEFAULT NULL,
  `stars` varchar(6) DEFAULT NULL,
  `sequence` double DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `uptime` datetime DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_featured` */

insert  into `sys_featured`(`id`,`title`,`content`,`url`,`heat`,`stars`,`sequence`,`addtime`,`uptime`,`status`) values (1,'ssss','<p>ssss</p>','ssss','1','1',22323,'2015-04-19 02:59:11','2015-04-19 02:59:11','0');

/*Table structure for table `sys_gl_qx` */

DROP TABLE IF EXISTS `sys_gl_qx`;

CREATE TABLE `sys_gl_qx` (
  `GL_ID` varchar(300) DEFAULT NULL,
  `ROLE_ID` varchar(300) DEFAULT NULL,
  `FX_QX` double DEFAULT NULL,
  `FW_QX` double DEFAULT NULL,
  `QX1` double DEFAULT NULL,
  `QX2` double DEFAULT NULL,
  `QX3` double DEFAULT NULL,
  `QX4` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_gl_qx` */

insert  into `sys_gl_qx`(`GL_ID`,`ROLE_ID`,`FX_QX`,`FW_QX`,`QX1`,`QX2`,`QX3`,`QX4`) values ('1','2',1,1,1,1,1,1),('2','1',0,0,1,0,1,1),('55896f5ce3c0494fa6850775a4e29ff6','7',0,0,1,0,0,0),('68f23fc0caee475bae8d52244dea8444','7',0,0,1,0,0,0),('7dfd8d1f7b6245d283217b7e63eec9b2','1',0,0,0,1,0,0),('ac66961adaa2426da4470c72ffeec117','1',1,0,0,1,0,0),('b0c77c29dfa140dc9b14a29c056f824f','7',1,0,1,0,0,0),('e74f713314154c35bd7fc98897859fe3','6',1,1,1,1,0,0),('f944a9df72634249bbcb8cb73b0c9b86','7',1,1,1,0,0,0);

/*Table structure for table `sys_link` */

DROP TABLE IF EXISTS `sys_link`;

CREATE TABLE `sys_link` (
  `id` double DEFAULT NULL,
  `stiename` varchar(300) DEFAULT NULL,
  `sitecontent` varchar(600) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  `stieurl` varchar(600) DEFAULT NULL,
  `addtime` varchar(150) DEFAULT NULL,
  `uptime` varchar(150) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `sequence` double DEFAULT NULL,
  `tourl` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_link` */

insert  into `sys_link`(`id`,`stiename`,`sitecontent`,`type`,`stieurl`,`addtime`,`uptime`,`status`,`sequence`,`tourl`) values (1,'sdfsd2222','<p>sdfsd222</p>','1','acf1784d058149d3a1b6349f5c89d208.png','2014-12-02 13:49:59','2014-12-02 13:53:55','0',3,'sdf222'),(2,'sdfs','<p>sdfsdf</p>','0','438994ecc7fe42539db7daa2b9b0a9d0.png','2015-04-19 03:00:49','2015-04-19 03:00:49','0',2,'sdfsdf');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`MENU_ID`,`MENU_NAME`,`MENU_URL`,`PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`) values (1,'系统管理','#','0','1','icon-desktop','2'),(2,'角色管理','role.do','1','2',NULL,'2'),(4,'会员管理','happuser/listUsers.do','1','4',NULL,'2'),(5,'系统用户','user/listUsers.do','1','3',NULL,'2'),(6,'信息管理','#','0','2','icon-list-alt','2'),(7,'图片管理','pictures/list.do','6','1',NULL,'2'),(8,'性能监控','druid/index.html','9','1',NULL,'2'),(9,'系统工具','#','0','3','icon-th','2'),(10,'接口测试','tool/interfaceTest.do','9','2',NULL,'2'),(11,'发送邮件','tool/goSendEmail.do','9','3',NULL,'2'),(12,'置二维码','tool/goTwoDimensionCode.do','9','4',NULL,'2'),(13,'多级别树','tool/ztree.do','9','5',NULL,'2'),(14,'地图工具','tool/map.do','9','6',NULL,'2'),(15,'微信管理','#','0','2','icon-comments','2'),(16,'文本回复','textmsg/list.do','15','2',NULL,'2'),(17,'应用命令','command/list.do','15','4',NULL,'2'),(18,'图文回复','imgmsg/list.do','15','3',NULL,'2'),(19,'关注回复','textmsg/goSubscribe.do','15','1',NULL,'2'),(20,'在线管理','onlinemanager/list.do','1','5',NULL,'2'),(21,'打印测试','tool/printTest.do','9','7',NULL,'2'),(22,'特别推荐','featured/list.do','6','3',NULL,'2'),(23,'线路管理','line/list.do','6','4',NULL,'2'),(24,'友情链接','link/list.do','6','6',NULL,'2'),(25,'新闻管理','news/list.do','6','7',NULL,'2'),(26,'公告管理','notice/list.do','6','8',NULL,'2'),(27,'广告管理','andorra/list.do','6','2',NULL,'2');

/*Table structure for table `sys_news` */

DROP TABLE IF EXISTS `sys_news`;

CREATE TABLE `sys_news` (
  `id` double DEFAULT NULL,
  `title` varchar(450) DEFAULT NULL,
  `content` blob,
  `publisher` varchar(150) DEFAULT NULL,
  `addtime` varchar(150) DEFAULT NULL,
  `uptime` varchar(150) DEFAULT NULL,
  `pip` varchar(150) DEFAULT NULL,
  `hits` double DEFAULT NULL,
  `sequence` double DEFAULT NULL,
  `recommand` varchar(6) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_news` */

insert  into `sys_news`(`id`,`title`,`content`,`publisher`,`addtime`,`uptime`,`pip`,`hits`,`sequence`,`recommand`,`status`) values (2,'测试3','<p>[B@16f05e8</p>','me','2014-12-01 20:59:33','2016-01-13 17:41:05','0:0:0:0:0:0:0:1',0,2,'1','1'),(3,'测试4','<p>[B@fa2270</p>','fdgf','2014-12-02 01:07:41','2016-01-13 17:40:50','0:0:0:0:0:0:0:1',0,0,'0','1'),(5,'测试1','<p>[B@18daf73</p>','456465','2014-12-15 11:38:59','2016-01-13 17:40:33','0:0:0:0:0:0:0:1',0,4564,'0','1'),(6,'测试5','<p>[B@1e95ddb</p>','ddddd','2014-12-24 10:55:34','2016-01-13 17:40:56','0:0:0:0:0:0:0:1',0,0,'0','1'),(7,'测试2','<p>[B@e3f393</p>','sdf','2015-04-19 03:01:06','2016-01-13 17:40:38','0:0:0:0:0:0:0:1',0,3,'0','0');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `id` double DEFAULT NULL,
  `title` varchar(600) DEFAULT NULL,
  `content` varchar(1500) DEFAULT NULL,
  `publisher` varchar(150) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `uptime` datetime DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `sequence` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`id`,`title`,`content`,`publisher`,`addtime`,`uptime`,`status`,`sequence`) values (2,'ww1','www2','www3','2014-12-01 21:39:13','2014-12-01 21:39:20','1',1),(3,'sdf','<p>sdfs</p>','dfsd','2015-04-19 03:01:15','2015-04-19 03:01:15','0',44);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`ROLE_ID`,`ROLE_NAME`,`RIGHTS`,`PARENT_ID`,`ADD_QX`,`DEL_QX`,`EDIT_QX`,`CHA_QX`,`QX_ID`) values ('1','系统管理员','268435446','0','1','1','1','1','1'),('2','超级管理员','268435446','1','268435446','268435446','268435446','268435446','2'),('4','用户组','118','0','0','0','0','0',NULL),('55896f5ce3c0494fa6850775a4e29ff6','特级会员','498','7','1048630','0','0','0','55896f5ce3c0494fa6850775a4e29ff6'),('6','客户组','18','0','1','1','1','1',NULL),('68f23fc0caee475bae8d52244dea8444','中级会员','498','7','0','0','0','0','68f23fc0caee475bae8d52244dea8444'),('7','会员组','498','0','0','0','0','1',NULL),('7dfd8d1f7b6245d283217b7e63eec9b2','管理员B','268435446','1','246','0','0','0','7dfd8d1f7b6245d283217b7e63eec9b2'),('ac66961adaa2426da4470c72ffeec117','管理员A','268435446','1','54','54','0','246','ac66961adaa2426da4470c72ffeec117'),('b0c77c29dfa140dc9b14a29c056f824f','高级会员','498','7','0','0','0','0','b0c77c29dfa140dc9b14a29c056f824f'),('e74f713314154c35bd7fc98897859fe3','黄金客户','18','6','1','1','1','1','e74f713314154c35bd7fc98897859fe3'),('f944a9df72634249bbcb8cb73b0c9b86','初级会员','498','7','1','1','1','1','f944a9df72634249bbcb8cb73b0c9b86');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`USER_ID`,`USERNAME`,`PASSWORD`,`NAME`,`RIGHTS`,`ROLE_ID`,`LAST_LOGIN`,`IP`,`STATUS`,`BZ`,`SKIN`,`EMAIL`,`NUMBER`,`PHONE`) values ('089d664844f8441499955b3701696fc0','fushide','67bc304642856b709dfeb907b92cc7e10e0b02f2','富师德','','2','','','0','18629359','default','asdadf@qq.com','1231','18766666666'),('0b3f2ab1896b47c097a81d322697446a','zhangsan','f1665429dbb3e6c2af7a461a4f547b82ee9ab233','张三','','2','2016-01-08 10:09:15','0:0:0:0:0:0:0:1','0','小张','default','wwwwq@qq.com','1101','18788888888'),('0e2da7c372e147a0b67afdf4cdd444a3','dfsdf','c49639f0b2c5dda506b777a1e518990e9a88a221','wqeqw','','e74f713314154c35bd7fc98897859fe3','','','0','ff','default','q324@qq.com','dsfsdddd','18767676767'),('1','admin','de41b7fb99201d8334c23c014db35ecd92df81bc','系统管理员','1133671055321055258374707980945218933803269864762743594642571294','1','2016-01-14 13:58:34','0:0:0:0:0:0:0:1','0','最高统治者','default','admin@main.com','001','18788888888'),('3d3bacf7535444cda51f23711e32c0b2','sss','6d606b5972e69fd5173faff05a28aa38e2b38d38','中丧生','','ac66961adaa2426da4470c72ffeec117','','','0','cess','default','12312315@qq.com','223','18777777878'),('79d9e8d227d14902871e162950d17356','xinyonghu','527e060c0c42db870b0d83cf97d28fa0111cf2f9','新用户22','','2','','','0','新用户22','default','zhangsassn@www.com','121121','18765656556'),('8009132b158748a5a84510f91a291119','asdasd','26be4dd18f543d7002b4d8aa525f90a33c0faefb','sdsdf','','7dfd8d1f7b6245d283217b7e63eec9b2','','','0','','default','12312312@qq.com','2312','18765810587'),('b825f152368549069be79e1d34184afa','san','47c4a8dc64ac2f0bb46bbd8813b037c9718f9349','三','','2','2015-08-03 14:18:14','127.0.0.1','0','sdfsdgf','default','sdfsdf@qq.com','sdsaw22','18765656565'),('be025a79502e433e820fac37ddb1cfc2','zhangsan570256','42f7554cb9c00e11ef16543a2c86ade815b79faa','张三','','2','','','0','小张','default','zhangsan@www.com','21101','2147483647');

/*Table structure for table `sys_user_qx` */

DROP TABLE IF EXISTS `sys_user_qx`;

CREATE TABLE `sys_user_qx` (
  `U_ID` varchar(100) NOT NULL,
  `C1` int(10) DEFAULT NULL,
  `C2` int(10) DEFAULT NULL,
  `C3` int(10) DEFAULT NULL,
  `C4` int(10) DEFAULT NULL,
  `Q1` int(10) DEFAULT NULL,
  `Q2` int(10) DEFAULT NULL,
  `Q3` int(10) DEFAULT NULL,
  `Q4` int(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_qx` */

insert  into `sys_user_qx`(`U_ID`,`C1`,`C2`,`C3`,`C4`,`Q1`,`Q2`,`Q3`,`Q4`) values ('1',1,0,0,0,0,0,0,0),('2',1,1,1,1,1,1,1,1),('55896f5ce3c0494fa6850775a4e29ff6',0,0,0,0,0,0,0,0),('68f23fc0caee475bae8d52244dea8444',0,0,0,0,0,0,0,0),('7dfd8d1f7b6245d283217b7e63eec9b2',0,0,0,0,0,0,0,0),('ac66961adaa2426da4470c72ffeec117',0,0,0,0,0,0,0,0),('b0c77c29dfa140dc9b14a29c056f824f',0,0,0,0,0,0,0,0),('e74f713314154c35bd7fc98897859fe3',0,0,0,0,0,0,0,0),('f944a9df72634249bbcb8cb73b0c9b86',0,0,0,0,0,0,0,0);

/*Table structure for table `tb_line` */

DROP TABLE IF EXISTS `tb_line`;

CREATE TABLE `tb_line` (
  `LINE_ID` varchar(300) DEFAULT NULL,
  `TITLE` varchar(765) DEFAULT NULL,
  `LINE_URL` varchar(765) DEFAULT NULL,
  `LINE_ROAD` varchar(765) DEFAULT NULL,
  `TYPE` varchar(765) DEFAULT NULL,
  `LINE_ORDER` double DEFAULT NULL,
  `PARENT_ID` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_line` */

insert  into `tb_line`(`LINE_ID`,`TITLE`,`LINE_URL`,`LINE_ROAD`,`TYPE`,`LINE_ORDER`,`PARENT_ID`) values ('079c63d4fdcd479b9a84e2af9745e430','你','http://www.baidu.com','1','公交',2,'0'),('36fc89101f2b4792985f92bc35d1cbba','é—®é—®','http://www.1b23.com','ä¸€å·çº¿','å°ç±»',1,'079c63d4fdcd479b9a84e2af9745e430'),('4bd68dbe76e44d1d8f9a5a012712793e','çº¿è·¯1å·','http://www.163.com','é“é€š','å°ç±»',1,'b79ebcb13f2042ffb6132f004c8ff46c'),('6c15bc3c06c64b2392085e72c88bbba5','çº¿è·¯2å·','http://www.qq.com','ç½‘é€š','å°ç±»',2,'b79ebcb13f2042ffb6132f004c8ff46c');

/*Table structure for table `tb_pictures` */

DROP TABLE IF EXISTS `tb_pictures`;

CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(300) DEFAULT NULL,
  `TITLE` varchar(765) DEFAULT NULL,
  `NAME` varchar(765) DEFAULT NULL,
  `PATH` varchar(765) DEFAULT NULL,
  `CREATETIME` varchar(765) DEFAULT NULL,
  `MASTER_ID` varchar(765) DEFAULT NULL,
  `BZ` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_pictures` */

insert  into `tb_pictures`(`PICTURES_ID`,`TITLE`,`NAME`,`PATH`,`CREATETIME`,`MASTER_ID`,`BZ`) values ('e1e30504ed7e4b1abb6b093d4151da66','图片','83fec586665d49f6a2e0b1070b8c7eba.jpg','20160114/83fec586665d49f6a2e0b1070b8c7eba.jpg','2016-01-11 15:00:03','1','图片管理处上传'),('9ca1d429fbd742b2a7e2f70e70f0e65c','图片','ab95e64dbe454f7488d296704061fd1a.jpg','20160114/ab95e64dbe454f7488d296704061fd1a.jpg','2016-01-14 11:25:35','1','图片管理处上传'),('485d05d920b5487b91ef800cae1079d3','图片','e9cd3821f53d4469bcf00e71a198ef4d.jpg','20160114/e9cd3821f53d4469bcf00e71a198ef4d.jpg','2016-01-14 11:44:09','1','图片管理处上传'),('6a8d35ef1650415d89788400987b7a2e','图片','65592910ac874458bd4ad3caefa5022e.jpg','20160114/65592910ac874458bd4ad3caefa5022e.jpg','2016-01-14 11:48:15','1','图片管理处上传'),('4267588047564da2832f641c2fad4115','图片','ab7f204373104c7da45d26ae3fdcaca3.jpg','20160114/ab7f204373104c7da45d26ae3fdcaca3.jpg','2016-01-14 11:50:03','1','图片管理处上传'),('0ff86bbb222046338ecd966bcbbb567a','图片','374babc477e84929b96b4cc83fc6eb0a.jpg','20160114/374babc477e84929b96b4cc83fc6eb0a.jpg','2016-01-14 11:50:15','1','图片管理处上传'),('e2a2a884e45f42ea83bd9583881423fd','图片','2ab344f58164400180f4e63e5eadf7c5.png','20160114/2ab344f58164400180f4e63e5eadf7c5.png','2016-01-14 11:50:16','1','图片管理处上传'),('b083418587a640b7ad18f9650e928f47','图片','4db66d26f3854b13bcfdf821d3d3bb69.jpg','20160114/4db66d26f3854b13bcfdf821d3d3bb69.jpg','2016-01-14 11:52:55','1','图片管理处上传');

/*Table structure for table `weixin_command` */

DROP TABLE IF EXISTS `weixin_command`;

CREATE TABLE `weixin_command` (
  `COMMAND_ID` varchar(300) DEFAULT NULL,
  `KEYWORD` varchar(765) DEFAULT NULL,
  `COMMANDCODE` varchar(765) DEFAULT NULL,
  `CREATETIME` varchar(765) DEFAULT NULL,
  `STATUS` double DEFAULT NULL,
  `BZ` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `weixin_command` */

insert  into `weixin_command`(`COMMAND_ID`,`KEYWORD`,`COMMANDCODE`,`CREATETIME`,`STATUS`,`BZ`) values ('2636750f6978451b8330874c9be042c2','锁定服务器','rundll32.exe user32.dll,LockWorkStation','2015-05-10 21:25:06',1,'锁定计算机'),('46217c6d44354010823241ef484f7214','打开浏览器','C:/Program Files/Internet Explorer/iexplore.exe','2015-05-09 02:43:02',1,'打开浏览器操作'),('576adcecce504bf3bb34c6b4da79a177','关闭浏览器','taskkill /f /im iexplore.exe','2015-05-09 02:36:48',1,'关闭浏览器操作'),('854a157c6d99499493f4cc303674c01f','关闭QQ','taskkill /f /im qq.exe','2015-05-10 21:25:46',1,'关闭QQ'),('ab3a8c6310ca4dc8b803ecc547e55ae7','打开QQ','D:/SOFT/QQ/QQ/Bin/qq.exe','2015-05-10 21:25:25',1,'打开QQ');

/*Table structure for table `weixin_imgmsg` */

DROP TABLE IF EXISTS `weixin_imgmsg`;

CREATE TABLE `weixin_imgmsg` (
  `IMGMSG_ID` varchar(255) DEFAULT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL,
  `CREATETIME` varchar(255) DEFAULT NULL,
  `STATUS` double DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `TITLE1` varchar(255) DEFAULT NULL,
  `DESCRIPTION1` varchar(255) DEFAULT NULL,
  `IMGURL1` varchar(255) DEFAULT NULL,
  `TOURL1` varchar(255) DEFAULT NULL,
  `TITLE2` varchar(255) DEFAULT NULL,
  `DESCRIPTION2` varchar(255) DEFAULT NULL,
  `IMGURL2` varchar(255) DEFAULT NULL,
  `TOURL2` varchar(255) DEFAULT NULL,
  `TITLE3` varchar(255) DEFAULT NULL,
  `DESCRIPTION3` varchar(255) DEFAULT NULL,
  `IMGURL3` varchar(255) DEFAULT NULL,
  `TOURL3` varchar(255) DEFAULT NULL,
  `TITLE4` varchar(255) DEFAULT NULL,
  `DESCRIPTION4` varchar(255) DEFAULT NULL,
  `IMGURL4` varchar(255) DEFAULT NULL,
  `TOURL4` varchar(255) DEFAULT NULL,
  `TITLE5` varchar(255) DEFAULT NULL,
  `DESCRIPTION5` varchar(255) DEFAULT NULL,
  `IMGURL5` varchar(255) DEFAULT NULL,
  `TOURL5` varchar(255) DEFAULT NULL,
  `TITLE6` varchar(255) DEFAULT NULL,
  `DESCRIPTION6` varchar(255) DEFAULT NULL,
  `IMGURL6` varchar(255) DEFAULT NULL,
  `TOURL6` varchar(255) DEFAULT NULL,
  `TITLE7` varchar(255) DEFAULT NULL,
  `DESCRIPTION7` varchar(255) DEFAULT NULL,
  `IMGURL7` varchar(255) DEFAULT NULL,
  `TOURL7` varchar(255) DEFAULT NULL,
  `TITLE8` varchar(255) DEFAULT NULL,
  `DESCRIPTION8` varchar(255) DEFAULT NULL,
  `IMGURL8` varchar(255) DEFAULT NULL,
  `TOURL8` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `weixin_imgmsg` */

/*Table structure for table `weixin_textmsg` */

DROP TABLE IF EXISTS `weixin_textmsg`;

CREATE TABLE `weixin_textmsg` (
  `TEXTMSG_ID` varchar(300) DEFAULT NULL,
  `KEYWORD` varchar(765) DEFAULT NULL,
  `CONTENT` varchar(765) DEFAULT NULL,
  `CREATETIME` varchar(765) DEFAULT NULL,
  `STATUS` double DEFAULT NULL,
  `BZ` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `weixin_textmsg` */

insert  into `weixin_textmsg`(`TEXTMSG_ID`,`KEYWORD`,`CONTENT`,`CREATETIME`,`STATUS`,`BZ`) values ('303c190498a045bdbba4c940c2f0d9f9','1ss','1ssddd','2015-05-18 20:17:02',1,'1ssdddsd'),('63681adbe7144f10b66d6863e07f23c2','你好','你也好','2015-05-09 02:39:23',1,'文本回复'),('695cd74779734231928a253107ab0eeb','吃饭','吃了噢噢噢噢','2015-05-10 22:52:27',1,'文本回复'),('d4738af7aea74a6ca1a5fb25a98f9acb','关注','关注','2015-05-11 02:12:36',1,'关注回复');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
