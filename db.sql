/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot4691l
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot4691l` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot4691l`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384628505 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-04-14 15:05:26',1,1,'提问1','回复1',1),(82,'2021-04-14 15:05:26',2,2,'提问2','回复2',2),(83,'2021-04-14 15:05:26',3,3,'提问3','回复3',3),(84,'2021-04-14 15:05:26',4,4,'提问4','回复4',4),(85,'2021-04-14 15:05:26',5,5,'提问5','回复5',5),(86,'2021-04-14 15:05:26',6,6,'提问6','回复6',6),(1618384424282,'2021-04-14 15:13:43',1618384306796,NULL,'测试',NULL,0),(1618384628504,'2021-04-14 15:17:07',1618384306796,1,NULL,'你好',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot4691l/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot4691l/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot4691l/upload/picture3.jpg'),(6,'picture4','http://localhost:8080/springboot4691l/upload/1618384141577.jpg');

/*Table structure for table `dianjia` */

DROP TABLE IF EXISTS `dianjia`;

CREATE TABLE `dianjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianjiazhanghao` varchar(200) NOT NULL COMMENT '店家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianjiazhanghao` (`dianjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384173936 DEFAULT CHARSET=utf8 COMMENT='店家';

/*Data for the table `dianjia` */

insert  into `dianjia`(`id`,`addtime`,`dianjiazhanghao`,`mima`,`dianjiaxingming`,`xingbie`,`shoujihaoma`,`gerenzhaopian`,`sfsh`,`shhf`) values (21,'2021-04-14 15:05:25','店家1','123456','店家姓名1','男','13823888881','http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian1.jpg','是',''),(22,'2021-04-14 15:05:25','店家2','123456','店家姓名2','男','13823888882','http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian2.jpg','是',''),(23,'2021-04-14 15:05:25','店家3','123456','店家姓名3','男','13823888883','http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian3.jpg','是',''),(24,'2021-04-14 15:05:25','店家4','123456','店家姓名4','男','13823888884','http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian4.jpg','是',''),(25,'2021-04-14 15:05:25','店家5','123456','店家姓名5','男','13823888885','http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian5.jpg','是',''),(26,'2021-04-14 15:05:25','店家6','123456','店家姓名6','男','13823888886','http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian6.jpg','是',''),(1618384173935,'2021-04-14 15:09:33','12','12','12','女','12345678909','http://localhost:8080/springboot4691l/upload/1618384217250.jpg','是',NULL);

/*Table structure for table `dianpuxinxi` */

DROP TABLE IF EXISTS `dianpuxinxi`;

CREATE TABLE `dianpuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpuzhaopian` varchar(200) DEFAULT NULL COMMENT '店铺照片',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `dianpujieshao` longtext COMMENT '店铺介绍',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384274747 DEFAULT CHARSET=utf8 COMMENT='店铺信息';

/*Data for the table `dianpuxinxi` */

insert  into `dianpuxinxi`(`id`,`addtime`,`dianpumingcheng`,`dianpuzhaopian`,`kaifangshijian`,`jingyingfanwei`,`dianpujieshao`,`dianjiazhanghao`,`dianjiaxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-04-14 15:05:25','店铺名称1','http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian1.jpg','开放时间1','经营范围1','店铺介绍1','店家账号1','店家姓名1','是','',1,1,'2021-04-14 15:05:25',1),(32,'2021-04-14 15:05:25','店铺名称2','http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian2.jpg','开放时间2','经营范围2','店铺介绍2','店家账号2','店家姓名2','是','',2,2,'2021-04-14 15:05:25',2),(33,'2021-04-14 15:05:25','店铺名称3','http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian3.jpg','开放时间3','经营范围3','店铺介绍3','店家账号3','店家姓名3','是','',3,3,'2021-04-14 15:05:25',3),(34,'2021-04-14 15:05:25','店铺名称4','http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian4.jpg','开放时间4','经营范围4','店铺介绍4','店家账号4','店家姓名4','是','',4,4,'2021-04-14 15:05:25',4),(35,'2021-04-14 15:05:25','店铺名称5','http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian5.jpg','开放时间5','经营范围5','店铺介绍5','店家账号5','店家姓名5','是','',5,5,'2021-04-14 15:05:25',5),(36,'2021-04-14 15:05:25','店铺名称6','http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian6.jpg','开放时间6','经营范围6','店铺介绍6','店家账号6','店家姓名6','是','',6,6,'2021-04-14 15:07:43',7),(1618384274746,'2021-04-14 15:11:13','测试店面','http://localhost:8080/springboot4691l/upload/1618384228689.jpg','6:00~24:00','儿童衣服、名牌衣服等','<p><img src=\"http://localhost:8080/springboot4691l/upload/1618384268674.jpg\">1222</p>','12','12','是',NULL,1,0,'2021-04-14 15:14:17',4);

/*Table structure for table `dingdanjindu` */

DROP TABLE IF EXISTS `dingdanjindu`;

CREATE TABLE `dingdanjindu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
  `yifushuliang` varchar(200) DEFAULT NULL COMMENT '衣服数量',
  `dangqianjindu` varchar(200) DEFAULT NULL COMMENT '当前进度',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384591982 DEFAULT CHARSET=utf8 COMMENT='订单进度';

/*Data for the table `dingdanjindu` */

insert  into `dingdanjindu`(`id`,`addtime`,`yifuleixing`,`yifushuliang`,`dangqianjindu`,`dianjiazhanghao`,`dianjiaxingming`,`shoujihaoma`,`gukezhanghao`,`gukexingming`,`gengxinshijian`,`beizhu`) values (71,'2021-04-14 15:05:26','衣服类型1','衣服数量1','未完成','店家账号1','店家姓名1','手机号码1','顾客账号1','顾客姓名1','2021-04-14 15:05:26','备注1'),(72,'2021-04-14 15:05:26','衣服类型2','衣服数量2','未完成','店家账号2','店家姓名2','手机号码2','顾客账号2','顾客姓名2','2021-04-14 15:05:26','备注2'),(73,'2021-04-14 15:05:26','衣服类型3','衣服数量3','未完成','店家账号3','店家姓名3','手机号码3','顾客账号3','顾客姓名3','2021-04-14 15:05:26','备注3'),(74,'2021-04-14 15:05:26','衣服类型4','衣服数量4','未完成','店家账号4','店家姓名4','手机号码4','顾客账号4','顾客姓名4','2021-04-14 15:05:26','备注4'),(75,'2021-04-14 15:05:26','衣服类型5','衣服数量5','未完成','店家账号5','店家姓名5','手机号码5','顾客账号5','顾客姓名5','2021-04-14 15:05:26','备注5'),(76,'2021-04-14 15:05:26','衣服类型6','衣服数量6','未完成','店家账号6','店家姓名6','手机号码6','顾客账号6','顾客姓名6','2021-04-14 15:05:26','备注6'),(1618384591981,'2021-04-14 15:16:31','测试类型','122','进行中','12','12','12345678909','121','121','2021-04-14 15:16:24','1221');

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
  `yifushuliang` varchar(200) DEFAULT NULL COMMENT '衣服数量',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `zhifupingzheng` varchar(200) DEFAULT NULL COMMENT '支付凭证',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384538121 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`yifuleixing`,`yifushuliang`,`dianjiazhanghao`,`dianjiaxingming`,`gukezhanghao`,`gukexingming`,`jiatingdizhi`,`zhifupingzheng`,`beizhu`,`sfsh`,`shhf`) values (61,'2021-04-14 15:05:25','衣服类型1','衣服数量1','店家账号1','店家姓名1','顾客账号1','顾客姓名1','家庭地址1','http://localhost:8080/springboot4691l/upload/dingdanxinxi_zhifupingzheng1.jpg','备注1','是',''),(62,'2021-04-14 15:05:25','衣服类型2','衣服数量2','店家账号2','店家姓名2','顾客账号2','顾客姓名2','家庭地址2','http://localhost:8080/springboot4691l/upload/dingdanxinxi_zhifupingzheng2.jpg','备注2','是',''),(63,'2021-04-14 15:05:25','衣服类型3','衣服数量3','店家账号3','店家姓名3','顾客账号3','顾客姓名3','家庭地址3','http://localhost:8080/springboot4691l/upload/dingdanxinxi_zhifupingzheng3.jpg','备注3','是',''),(64,'2021-04-14 15:05:25','衣服类型4','衣服数量4','店家账号4','店家姓名4','顾客账号4','顾客姓名4','家庭地址4','http://localhost:8080/springboot4691l/upload/dingdanxinxi_zhifupingzheng4.jpg','备注4','是',''),(65,'2021-04-14 15:05:25','衣服类型5','衣服数量5','店家账号5','店家姓名5','顾客账号5','顾客姓名5','家庭地址5','http://localhost:8080/springboot4691l/upload/dingdanxinxi_zhifupingzheng5.jpg','备注5','是',''),(66,'2021-04-14 15:05:26','衣服类型6','衣服数量6','店家账号6','店家姓名6','顾客账号6','顾客姓名6','家庭地址6','http://localhost:8080/springboot4691l/upload/dingdanxinxi_zhifupingzheng6.jpg','备注6','是',''),(1618384538120,'2021-04-14 15:15:37','测试类型','122','12','12','121','121','123','http://localhost:8080/springboot4691l/upload/1618384534654.jpg','1212','是','会实时上传进度');

/*Table structure for table `discussdianpuxinxi` */

DROP TABLE IF EXISTS `discussdianpuxinxi`;

CREATE TABLE `discussdianpuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='店铺信息评论表';

/*Data for the table `discussdianpuxinxi` */

insert  into `discussdianpuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-14 15:05:26',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-14 15:05:26',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-14 15:05:26',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-14 15:05:26',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-14 15:05:26',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-14 15:05:26',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384385386 DEFAULT CHARSET=utf8 COMMENT='交流区';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (91,'2021-04-14 15:05:26','测试帖子','<p><img src=\"http://localhost:8080/springboot4691l/upload/1618384101964.jpg\">帖子内容1</p>',1,1,'用户名1','开放'),(92,'2021-04-14 15:05:26','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-04-14 15:05:26','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-04-14 15:05:26','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-04-14 15:05:26','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-04-14 15:05:26','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1618384357033,'2021-04-14 15:12:36',NULL,'1221',91,1618384306796,'121',NULL),(1618384385385,'2021-04-14 15:13:04','测试','<p>请输入内容12<img src=\"../../../upload/1618384380851.jpg\" alt=\"\" width=\"1077\" height=\"1077\" /></p>',0,1618384306796,'121','开放');

/*Table structure for table `guke` */

DROP TABLE IF EXISTS `guke`;

CREATE TABLE `guke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gukezhanghao` varchar(200) NOT NULL COMMENT '顾客账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gukezhanghao` (`gukezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384306797 DEFAULT CHARSET=utf8 COMMENT='顾客';

/*Data for the table `guke` */

insert  into `guke`(`id`,`addtime`,`gukezhanghao`,`mima`,`gukexingming`,`xingbie`,`shoujihaoma`,`jiatingdizhi`,`gerenzhaopian`) values (11,'2021-04-14 15:05:25','顾客1','123456','顾客姓名1','男','13823888881','家庭地址1','http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian1.jpg'),(12,'2021-04-14 15:05:25','顾客2','123456','顾客姓名2','男','13823888882','家庭地址2','http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian2.jpg'),(13,'2021-04-14 15:05:25','顾客3','123456','顾客姓名3','男','13823888883','家庭地址3','http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian3.jpg'),(14,'2021-04-14 15:05:25','顾客4','123456','顾客姓名4','男','13823888884','家庭地址4','http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian4.jpg'),(15,'2021-04-14 15:05:25','顾客5','123456','顾客姓名5','男','13823888885','家庭地址5','http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian5.jpg'),(16,'2021-04-14 15:05:25','顾客6','123456','顾客姓名6','男','13823888886','家庭地址6','http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian6.jpg'),(1618384306796,'2021-04-14 15:11:46','121','121','121','男','12345678908','123','http://localhost:8080/springboot4691l/upload/1618384334763.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384162546 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-14 15:05:26','标题1','简介1','http://localhost:8080/springboot4691l/upload/news_picture1.jpg','内容1'),(112,'2021-04-14 15:05:26','标题2','简介2','http://localhost:8080/springboot4691l/upload/news_picture2.jpg','内容2'),(113,'2021-04-14 15:05:26','标题3','简介3','http://localhost:8080/springboot4691l/upload/news_picture3.jpg','内容3'),(114,'2021-04-14 15:05:26','标题4','简介4','http://localhost:8080/springboot4691l/upload/news_picture4.jpg','内容4'),(115,'2021-04-14 15:05:26','标题5','简介5','http://localhost:8080/springboot4691l/upload/news_picture5.jpg','内容5'),(116,'2021-04-14 15:05:26','标题6','简介6','http://localhost:8080/springboot4691l/upload/news_picture6.jpg','内容6'),(1618384162545,'2021-04-14 15:09:22','测试公告','12','http://localhost:8080/springboot4691l/upload/1618384155260.jpg','<p>12<img src=\"http://localhost:8080/springboot4691l/upload/1618384160209.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384433776 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618384433775,'2021-04-14 15:13:53',1618384306796,1618384274746,'dianpuxinxi','测试店面','http://localhost:8080/springboot4691l/upload/1618384228689.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','trs2ke79st8r5pd3nwv40979bft1s8cd','2021-04-14 15:07:11','2021-04-14 16:16:52'),(2,1618384173935,'12','dianjia','店家','20ldbelo3sigbmnxh3hhl266t2cunes2','2021-04-14 15:10:01','2021-04-14 16:15:52'),(3,1618384306796,'121','guke','顾客','y9969owuubksi5g91o0ceee353msaoyg','2021-04-14 15:11:54','2021-04-14 16:17:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-14 15:05:26');

/*Table structure for table `xiyixinxi` */

DROP TABLE IF EXISTS `xiyixinxi`;

CREATE TABLE `xiyixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpuzhaopian` varchar(200) DEFAULT NULL COMMENT '店铺照片',
  `yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
  `yifushuliang` int(11) DEFAULT NULL COMMENT '衣服数量',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384454809 DEFAULT CHARSET=utf8 COMMENT='洗衣信息';

/*Data for the table `xiyixinxi` */

insert  into `xiyixinxi`(`id`,`addtime`,`dianpumingcheng`,`dianpuzhaopian`,`yifuleixing`,`yifushuliang`,`dianjiazhanghao`,`dianjiaxingming`,`gukezhanghao`,`gukexingming`,`beizhu`,`sfsh`,`shhf`) values (51,'2021-04-14 15:05:25','店铺名称1','http://localhost:8080/springboot4691l/upload/xiyixinxi_dianpuzhaopian1.jpg','衣服类型1',1,'店家账号1','店家姓名1','顾客账号1','顾客姓名1','备注1','是',''),(52,'2021-04-14 15:05:25','店铺名称2','http://localhost:8080/springboot4691l/upload/xiyixinxi_dianpuzhaopian2.jpg','衣服类型2',2,'店家账号2','店家姓名2','顾客账号2','顾客姓名2','备注2','是',''),(53,'2021-04-14 15:05:25','店铺名称3','http://localhost:8080/springboot4691l/upload/xiyixinxi_dianpuzhaopian3.jpg','衣服类型3',3,'店家账号3','店家姓名3','顾客账号3','顾客姓名3','备注3','是',''),(54,'2021-04-14 15:05:25','店铺名称4','http://localhost:8080/springboot4691l/upload/xiyixinxi_dianpuzhaopian4.jpg','衣服类型4',4,'店家账号4','店家姓名4','顾客账号4','顾客姓名4','备注4','是',''),(55,'2021-04-14 15:05:25','店铺名称5','http://localhost:8080/springboot4691l/upload/xiyixinxi_dianpuzhaopian5.jpg','衣服类型5',5,'店家账号5','店家姓名5','顾客账号5','顾客姓名5','备注5','是',''),(56,'2021-04-14 15:05:25','店铺名称6','http://localhost:8080/springboot4691l/upload/xiyixinxi_dianpuzhaopian6.jpg','衣服类型6',6,'店家账号6','店家姓名6','顾客账号6','顾客姓名6','备注6','是',''),(1618384454808,'2021-04-14 15:14:14','测试店面','http://localhost:8080/springboot4691l/upload/1618384228689.jpg','测试类型',122,'12','12','121','121','洗的好些','是','好的，请先支付订金，完成后再支付尾款');

/*Table structure for table `yifuleixing` */

DROP TABLE IF EXISTS `yifuleixing`;

CREATE TABLE `yifuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384075030 DEFAULT CHARSET=utf8 COMMENT='衣服类型';

/*Data for the table `yifuleixing` */

insert  into `yifuleixing`(`id`,`addtime`,`yifuleixing`) values (41,'2021-04-14 15:05:25','衣服类型1'),(42,'2021-04-14 15:05:25','衣服类型2'),(43,'2021-04-14 15:05:25','衣服类型3'),(44,'2021-04-14 15:05:25','衣服类型4'),(45,'2021-04-14 15:05:25','衣服类型5'),(46,'2021-04-14 15:05:25','衣服类型6'),(1618384075029,'2021-04-14 15:07:54','测试类型');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
