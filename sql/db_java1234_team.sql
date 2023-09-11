/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.18-log : Database - self_student_teams
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`self_student_teams` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `self_student_teams`;

/*Table structure for table `active_logs` */

DROP TABLE IF EXISTS `active_logs`;

CREATE TABLE `active_logs` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `create_time` char(19) NOT NULL COMMENT '报名时间',
  `active_id` char(13) NOT NULL COMMENT '活动编号',
  `user_id` char(13) NOT NULL COMMENT '报名用户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `active_id` (`active_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `active_logs_ibfk_1` FOREIGN KEY (`active_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `active_logs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='报名记录';

/*Data for the table `active_logs` */

insert  into `active_logs`(`id`,`create_time`,`active_id`,`user_id`) values ('1679549264068','2023-03-23 13:27:44','1679549264062','1642422100001');

/*Table structure for table `activities` */

DROP TABLE IF EXISTS `activities`;

CREATE TABLE `activities` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `name` varchar(20) NOT NULL COMMENT '活动名称',
  `comm` varchar(60) NOT NULL COMMENT '活动概述',
  `detail` varchar(256) NOT NULL COMMENT '活动详情',
  `ask` varchar(125) NOT NULL COMMENT '活动要求',
  `total` int(11) NOT NULL COMMENT '报名人数',
  `active_time` char(19) NOT NULL COMMENT '活动时间',
  `team_id` char(13) NOT NULL COMMENT '发布社团',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `team_id` (`team_id`) USING BTREE,
  CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动信息';

/*Data for the table `activities` */

insert  into `activities`(`id`,`name`,`comm`,`detail`,`ask`,`total`,`active_time`,`team_id`) values ('1679549264062','测试活动','11','11','11',1,'2023-03-24 00:00:00','1642422100000');

/*Table structure for table `apply_logs` */

DROP TABLE IF EXISTS `apply_logs`;

CREATE TABLE `apply_logs` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `status` int(11) NOT NULL COMMENT '处理状态',
  `create_time` char(19) NOT NULL COMMENT '申请时间',
  `team_id` char(13) NOT NULL COMMENT '申请社团',
  `user_id` char(13) NOT NULL COMMENT '申请用户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `team_id` (`team_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `apply_logs_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `apply_logs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='申请记录';

/*Data for the table `apply_logs` */

insert  into `apply_logs`(`id`,`status`,`create_time`,`team_id`,`user_id`) values ('1672148640042',1,'2022-12-27 21:44:00','1642422100000','1672148602348'),('1679549203332',1,'2023-03-23 13:26:43','1672148926602','1679549174356');

/*Table structure for table `members` */

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `create_time` char(19) NOT NULL COMMENT '入团时间',
  `team_id` char(13) NOT NULL COMMENT '加入社团',
  `user_id` char(13) NOT NULL COMMENT '申请用户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `team_id` (`team_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `members_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='成员信息';

/*Data for the table `members` */

insert  into `members`(`id`,`create_time`,`team_id`,`user_id`) values ('1642422100000','2022-01-17 20:00:00','1642422100000','1642422100001'),('1672148926606','2022-12-27 21:48:46','1672148926602','1672148602348'),('1672148941775','2022-12-27 21:49:01','1642422100000','1672148602348'),('1679549239565','2023-03-23 13:27:19','1672148926602','1679549174356');

/*Table structure for table `notices` */

DROP TABLE IF EXISTS `notices`;

CREATE TABLE `notices` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `title` varchar(20) NOT NULL COMMENT '通知标题',
  `detail` varchar(125) NOT NULL COMMENT '通知详情',
  `create_time` char(10) NOT NULL COMMENT '发布时间',
  `team_id` char(13) DEFAULT NULL COMMENT '发布社团',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知记录';

/*Data for the table `notices` */

insert  into `notices`(`id`,`title`,`detail`,`create_time`,`team_id`) values ('1672148823844','test','测试','2022-12-27',NULL);

/*Table structure for table `pay_logs` */

DROP TABLE IF EXISTS `pay_logs`;

CREATE TABLE `pay_logs` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `create_time` char(19) NOT NULL COMMENT '缴费时间',
  `total` double NOT NULL COMMENT '缴纳费用',
  `team_id` char(13) NOT NULL COMMENT '收费社团',
  `user_id` char(13) NOT NULL COMMENT '缴费用户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `team_id` (`team_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `pay_logs_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `pay_logs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='缴费记录';

/*Data for the table `pay_logs` */

insert  into `pay_logs`(`id`,`create_time`,`total`,`team_id`,`user_id`) values ('1679549016873','2023-03-23 13:23:36',100,'1672148926602','1672148602348');

/*Table structure for table `team_types` */

DROP TABLE IF EXISTS `team_types`;

CREATE TABLE `team_types` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `name` varchar(20) NOT NULL COMMENT '类型名称',
  `create_time` char(19) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='社团类型';

/*Data for the table `team_types` */

insert  into `team_types`(`id`,`name`,`create_time`) values ('1642422100000','科技创新','2022-01-17 20:00:00'),('1642422100001','户外运动','2022-01-17 20:00:00'),('1642422100002','语言文学','2022-01-17 20:00:00'),('1642422100003','志愿服务','2022-01-17 20:00:00');

/*Table structure for table `teams` */

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `name` varchar(20) NOT NULL COMMENT '社团名称',
  `create_time` char(10) NOT NULL COMMENT '建立时间',
  `total` int(11) NOT NULL COMMENT '社团人数',
  `manager` char(13) NOT NULL COMMENT '社团团长',
  `type_id` char(13) NOT NULL COMMENT '社团编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type_id` (`type_id`) USING BTREE,
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `team_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='社团信息';

/*Data for the table `teams` */

insert  into `teams`(`id`,`name`,`create_time`,`total`,`manager`,`type_id`) values ('1642422100000','网络攻防','2022-01-17',2,'1642422100001','1642422100000'),('1672148926602','星空漫画','2022-12-27',2,'1642422100001','1642422100002');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` char(13) NOT NULL COMMENT '记录ID',
  `user_name` varchar(32) NOT NULL COMMENT '用户账号',
  `pass_word` varchar(32) NOT NULL COMMENT '用户密码',
  `name` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `gender` char(2) DEFAULT NULL COMMENT '用户性别',
  `age` int(11) DEFAULT NULL COMMENT '用户年龄',
  `phone` char(11) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(64) DEFAULT NULL COMMENT '联系地址',
  `status` int(11) NOT NULL COMMENT '信息状态',
  `create_time` char(19) NOT NULL COMMENT '添加时间',
  `type` int(11) NOT NULL COMMENT '用户身份',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统用户';

/*Data for the table `users` */

insert  into `users`(`id`,`user_name`,`pass_word`,`name`,`gender`,`age`,`phone`,`address`,`status`,`create_time`,`type`) values ('1642422100000','java1234','123456','张三','男',45,'90989192','武当十八号2',1,'2022-01-17 20:00:00',0),('1642422100001','123','123','李华','男',28,'90989193','武当十九号',1,'2022-01-17 20:00:00',1),('1672148602348','222','123','哈哈哈哈','男',12,'1111','dd',1,'2022-12-27 21:43:22',1),('1679549174356','cf','123','张老三','男',20,'415522365','111',1,'2023-03-23 13:26:14',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
