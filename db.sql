/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot9qw88
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot9qw88` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot9qw88`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot9qw88/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot9qw88/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot9qw88/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`bianhao`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (21,'2021-05-07 11:01:56','教师1','123456','姓名1','编号1','男',1,'13823888881','440300199101010001','http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`bianhao`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (22,'2021-05-07 11:01:56','教师2','123456','姓名2','编号2','男',2,'13823888882','440300199202020002','http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`bianhao`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (23,'2021-05-07 11:01:56','教师3','123456','姓名3','编号3','男',3,'13823888883','440300199303030003','http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`bianhao`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (24,'2021-05-07 11:01:56','教师4','123456','姓名4','编号4','男',4,'13823888884','440300199404040004','http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`bianhao`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (25,'2021-05-07 11:01:56','教师5','123456','姓名5','编号5','男',5,'13823888885','440300199505050005','http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`bianhao`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (26,'2021-05-07 11:01:56','教师6','123456','姓名6','编号6','男',6,'13823888886','440300199606060006','http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `jiaoxuexinxi` */

DROP TABLE IF EXISTS `jiaoxuexinxi`;

CREATE TABLE `jiaoxuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechenghao` varchar(200) DEFAULT NULL COMMENT '课程号',
  `kechengming` varchar(200) DEFAULT NULL COMMENT '课程名',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `kechengshizhang` int(11) DEFAULT NULL COMMENT '课程时长',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='教学信息';

/*Data for the table `jiaoxuexinxi` */

insert  into `jiaoxuexinxi`(`id`,`addtime`,`kechenghao`,`kechengming`,`kechengxiangqing`,`kechengshizhang`,`jiaoshixingming`,`zhaopian`) values (31,'2021-05-07 11:01:56','课程号1','课程名1','课程详情1',1,'教师姓名1','http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian1.jpg');
insert  into `jiaoxuexinxi`(`id`,`addtime`,`kechenghao`,`kechengming`,`kechengxiangqing`,`kechengshizhang`,`jiaoshixingming`,`zhaopian`) values (32,'2021-05-07 11:01:56','课程号2','课程名2','课程详情2',2,'教师姓名2','http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian2.jpg');
insert  into `jiaoxuexinxi`(`id`,`addtime`,`kechenghao`,`kechengming`,`kechengxiangqing`,`kechengshizhang`,`jiaoshixingming`,`zhaopian`) values (33,'2021-05-07 11:01:56','课程号3','课程名3','课程详情3',3,'教师姓名3','http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian3.jpg');
insert  into `jiaoxuexinxi`(`id`,`addtime`,`kechenghao`,`kechengming`,`kechengxiangqing`,`kechengshizhang`,`jiaoshixingming`,`zhaopian`) values (34,'2021-05-07 11:01:56','课程号4','课程名4','课程详情4',4,'教师姓名4','http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian4.jpg');
insert  into `jiaoxuexinxi`(`id`,`addtime`,`kechenghao`,`kechengming`,`kechengxiangqing`,`kechengshizhang`,`jiaoshixingming`,`zhaopian`) values (35,'2021-05-07 11:01:56','课程号5','课程名5','课程详情5',5,'教师姓名5','http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian5.jpg');
insert  into `jiaoxuexinxi`(`id`,`addtime`,`kechenghao`,`kechengming`,`kechengxiangqing`,`kechengshizhang`,`jiaoshixingming`,`zhaopian`) values (36,'2021-05-07 11:01:56','课程号6','课程名6','课程详情6',6,'教师姓名6','http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian6.jpg');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (61,'2021-05-07 11:01:56',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (62,'2021-05-07 11:01:56',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (63,'2021-05-07 11:01:56',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (64,'2021-05-07 11:01:56',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (65,'2021-05-07 11:01:56',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (66,'2021-05-07 11:01:56',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学校公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (51,'2021-05-07 11:01:56','标题1','简介1','http://localhost:8080/springboot9qw88/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (52,'2021-05-07 11:01:56','标题2','简介2','http://localhost:8080/springboot9qw88/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (53,'2021-05-07 11:01:56','标题3','简介3','http://localhost:8080/springboot9qw88/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (54,'2021-05-07 11:01:56','标题4','简介4','http://localhost:8080/springboot9qw88/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (55,'2021-05-07 11:01:56','标题5','简介5','http://localhost:8080/springboot9qw88/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (56,'2021-05-07 11:01:56','标题6','简介6','http://localhost:8080/springboot9qw88/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ncfuo0c67oo85a098rgbro1v4xtwpdcg','2021-05-07 11:02:56','2021-05-07 12:02:57');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-07 11:01:56');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (11,'2021-05-07 11:01:56','学生1','123456','姓名1','男',1,'13823888881','440300199101010001','http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (12,'2021-05-07 11:01:56','学生2','123456','姓名2','男',2,'13823888882','440300199202020002','http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (13,'2021-05-07 11:01:56','学生3','123456','姓名3','男',3,'13823888883','440300199303030003','http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (14,'2021-05-07 11:01:56','学生4','123456','姓名4','男',4,'13823888884','440300199404040004','http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (15,'2021-05-07 11:01:56','学生5','123456','姓名5','男',5,'13823888885','440300199505050005','http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`zhaopian`) values (16,'2021-05-07 11:01:56','学生6','123456','姓名6','男',6,'13823888886','440300199606060006','http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian6.jpg');

/*Table structure for table `xueshengchengji` */

DROP TABLE IF EXISTS `xueshengchengji`;

CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `kemu1chengji` int(11) DEFAULT NULL COMMENT '科目1成绩',
  `kemu2chengji` int(11) DEFAULT NULL COMMENT '科目2成绩',
  `kemu3chengji` int(11) DEFAULT NULL COMMENT '科目3成绩',
  `kemu4chengji` int(11) DEFAULT NULL COMMENT '科目4成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `xueshengchengji` */

insert  into `xueshengchengji`(`id`,`addtime`,`xuehao`,`xingming`,`kemu1chengji`,`kemu2chengji`,`kemu3chengji`,`kemu4chengji`) values (41,'2021-05-07 11:01:56','学号1','姓名1',1,1,1,1);
insert  into `xueshengchengji`(`id`,`addtime`,`xuehao`,`xingming`,`kemu1chengji`,`kemu2chengji`,`kemu3chengji`,`kemu4chengji`) values (42,'2021-05-07 11:01:56','学号2','姓名2',2,2,2,2);
insert  into `xueshengchengji`(`id`,`addtime`,`xuehao`,`xingming`,`kemu1chengji`,`kemu2chengji`,`kemu3chengji`,`kemu4chengji`) values (43,'2021-05-07 11:01:56','学号3','姓名3',3,3,3,3);
insert  into `xueshengchengji`(`id`,`addtime`,`xuehao`,`xingming`,`kemu1chengji`,`kemu2chengji`,`kemu3chengji`,`kemu4chengji`) values (44,'2021-05-07 11:01:56','学号4','姓名4',4,4,4,4);
insert  into `xueshengchengji`(`id`,`addtime`,`xuehao`,`xingming`,`kemu1chengji`,`kemu2chengji`,`kemu3chengji`,`kemu4chengji`) values (45,'2021-05-07 11:01:56','学号5','姓名5',5,5,5,5);
insert  into `xueshengchengji`(`id`,`addtime`,`xuehao`,`xingming`,`kemu1chengji`,`kemu2chengji`,`kemu3chengji`,`kemu4chengji`) values (46,'2021-05-07 11:01:56','学号6','姓名6',6,6,6,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
