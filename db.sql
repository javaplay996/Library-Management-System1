/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tushuguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tushuguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tushuguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (18,'shuji_types','书籍类型',1,'书籍类型1',NULL,NULL,'2023-04-10 15:16:31'),(19,'shuji_types','书籍类型',2,'书籍类型2',NULL,NULL,'2023-04-10 15:16:31'),(20,'shuji_types','书籍类型',3,'书籍类型3',NULL,NULL,'2023-04-10 15:16:31'),(21,'shujia_types','所在书架',1,'所在书架1',NULL,NULL,'2023-04-10 15:16:31'),(22,'shujia_types','所在书架',2,'所在书架2',NULL,NULL,'2023-04-10 15:16:31'),(23,'shujia_types','所在书架',3,'所在书架3',NULL,NULL,'2023-04-10 15:16:31'),(24,'shuji_yuyue_types','借阅状态',101,'借阅中',NULL,NULL,'2023-04-10 15:16:31'),(25,'shuji_yuyue_types','借阅状态',102,'提前还书',NULL,NULL,'2023-04-10 15:16:31'),(26,'shuji_yuyue_types','借阅状态',103,'已到期',NULL,NULL,'2023-04-10 15:16:31'),(27,'shuji_yuyue_types','借阅状态',104,'已还书',NULL,NULL,'2023-04-10 15:16:31'),(28,'shuji_yuyue_types','订单类型',105,'已评价',NULL,NULL,'2023-04-10 15:16:31'),(29,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-10 15:16:31'),(30,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-10 15:16:31'),(31,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-10 15:16:31'),(32,'sex_types','性别',1,'男',NULL,NULL,'2023-04-10 15:16:31'),(33,'sex_types','性别',2,'女',NULL,NULL,'2023-04-10 15:16:31'),(34,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-10 15:16:31'),(35,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-10 15:16:31'),(36,'shuji_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-10 15:16:31'),(37,'shuji_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2023-04-10 15:16:31'),(38,'shuji_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2023-04-10 15:16:31');

/*Table structure for table `fajin` */

DROP TABLE IF EXISTS `fajin`;

CREATE TABLE `fajin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fajin_price` decimal(10,2) DEFAULT NULL COMMENT '缴纳金额',
  `fajin_content` text COMMENT '缴纳原因 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='罚金信息';

/*Data for the table `fajin` */

insert  into `fajin`(`id`,`yonghu_id`,`fajin_price`,`fajin_content`,`insert_time`,`create_time`) values (1,3,'693.07','缴纳原因1','2023-04-10 15:17:49','2023-04-10 15:17:49'),(2,1,'567.86','缴纳原因2','2023-04-10 15:17:49','2023-04-10 15:17:49'),(3,1,'159.66','缴纳原因3','2023-04-10 15:17:49','2023-04-10 15:17:49'),(4,1,'684.68','缴纳原因4','2023-04-10 15:17:49','2023-04-10 15:17:49'),(5,2,'573.62','缴纳原因5','2023-04-10 15:17:49','2023-04-10 15:17:49'),(6,1,'90.57','缴纳原因6','2023-04-10 15:17:49','2023-04-10 15:17:49'),(7,1,'621.96','缴纳原因7','2023-04-10 15:17:49','2023-04-10 15:17:49'),(9,2,'652.89','缴纳原因9','2023-04-10 15:17:49','2023-04-10 15:17:49'),(11,2,'527.99','缴纳原因11','2023-04-10 15:17:49','2023-04-10 15:17:49'),(13,3,'373.48','缴纳原因13','2023-04-10 15:17:49','2023-04-10 15:17:49'),(14,3,'20.87','缴纳原因14','2023-04-10 15:17:49','2023-04-10 15:17:49');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',135,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(2,'帖子标题2',1,NULL,'发布内容2',435,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(3,'帖子标题3',3,NULL,'发布内容3',172,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(4,'帖子标题4',1,NULL,'发布内容4',184,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(5,'帖子标题5',3,NULL,'发布内容5',471,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(6,'帖子标题6',1,NULL,'发布内容6',189,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(7,'帖子标题7',2,NULL,'发布内容7',388,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(8,'帖子标题8',1,NULL,'发布内容8',185,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(9,'帖子标题9',3,NULL,'发布内容9',377,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(10,'帖子标题10',1,NULL,'发布内容10',464,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(11,'帖子标题11',1,NULL,'发布内容11',328,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(13,'帖子标题13',3,NULL,'发布内容13',33,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(14,'帖子标题14',3,NULL,'发布内容14',166,1,'2023-04-10 15:17:49','2023-04-10 15:17:49','2023-04-10 15:17:49'),(21,NULL,1,NULL,'可以删除自己上传的帖子和评论',14,2,'2023-04-10 15:55:41',NULL,'2023-04-10 15:55:41'),(22,NULL,NULL,1,'22222222222222222',14,2,'2023-04-10 15:58:05',NULL,'2023-04-10 15:58:05');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-04-10 15:17:49','公告详情1','2023-04-10 15:17:49'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-10 15:17:49','公告详情2','2023-04-10 15:17:49'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-10 15:17:49','公告详情3','2023-04-10 15:17:49'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-10 15:17:49','公告详情4','2023-04-10 15:17:49'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-10 15:17:49','公告详情5','2023-04-10 15:17:49'),(6,'公告标题6',1,'upload/news6.jpg','2023-04-10 15:17:49','公告详情6','2023-04-10 15:17:49'),(7,'公告标题7',1,'upload/news7.jpg','2023-04-10 15:17:49','公告详情7','2023-04-10 15:17:49'),(8,'公告标题8',3,'upload/news8.jpg','2023-04-10 15:17:49','公告详情8','2023-04-10 15:17:49'),(9,'公告标题9',2,'upload/news9.jpg','2023-04-10 15:17:49','公告详情9','2023-04-10 15:17:49'),(10,'公告标题10',3,'upload/news10.jpg','2023-04-10 15:17:49','公告详情10','2023-04-10 15:17:49'),(11,'公告标题11',3,'upload/news11.jpg','2023-04-10 15:17:49','公告详情11','2023-04-10 15:17:49'),(12,'公告标题12',1,'upload/news12.jpg','2023-04-10 15:17:49','公告详情12','2023-04-10 15:17:49'),(13,'公告标题13',3,'upload/news13.jpg','2023-04-10 15:17:49','公告详情13','2023-04-10 15:17:49'),(14,'公告标题14',2,'upload/news14.jpg','2023-04-10 15:17:49','公告详情14','2023-04-10 15:17:49');

/*Table structure for table `pandian` */

DROP TABLE IF EXISTS `pandian`;

CREATE TABLE `pandian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `pandian_num` int(11) DEFAULT NULL COMMENT '盘点数量',
  `pandian_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='每日盘点';

/*Data for the table `pandian` */

insert  into `pandian`(`id`,`shuji_id`,`pandian_num`,`pandian_content`,`insert_time`,`create_time`) values (1,1,5,'备注1','2023-04-10 15:17:49','2023-04-10 15:17:49'),(2,2,276,'备注2','2023-04-10 15:17:49','2023-04-10 15:17:49'),(3,3,38,'备注3','2023-04-10 15:17:49','2023-04-10 15:17:49'),(4,4,169,'备注4','2023-04-10 15:17:49','2023-04-10 15:17:49'),(5,5,328,'备注5','2023-04-10 15:17:49','2023-04-10 15:17:49'),(6,6,316,'备注6','2023-04-10 15:17:49','2023-04-10 15:17:49'),(7,7,153,'备注7','2023-04-10 15:17:49','2023-04-10 15:17:49'),(8,8,13,'备注8','2023-04-10 15:17:49','2023-04-10 15:17:49'),(9,9,280,'备注9','2023-04-10 15:17:49','2023-04-10 15:17:49'),(10,10,370,'备注10','2023-04-10 15:17:49','2023-04-10 15:17:49'),(11,11,231,'备注11','2023-04-10 15:17:49','2023-04-10 15:17:49'),(12,12,231,'备注12','2023-04-10 15:17:49','2023-04-10 15:17:49'),(13,13,440,'备注13','2023-04-10 15:17:49','2023-04-10 15:17:49'),(14,14,487,'备注14','2023-04-10 15:17:49','2023-04-10 15:17:49');

/*Table structure for table `shuji` */

DROP TABLE IF EXISTS `shuji`;

CREATE TABLE `shuji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shuji_uuid_number` varchar(200) DEFAULT NULL COMMENT '书籍编号  Search111 ',
  `shuji_name` varchar(200) DEFAULT NULL COMMENT '书籍名称  Search111 ',
  `shuji_zuozhe` varchar(200) DEFAULT NULL COMMENT '书籍作者',
  `shuji_chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuji_photo` varchar(200) DEFAULT NULL COMMENT '书籍照片',
  `shuji_types` int(11) DEFAULT NULL COMMENT '书籍类型 Search111',
  `shujia_types` int(11) DEFAULT NULL COMMENT '所在书架 Search111',
  `shujia_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `shuji_kucun_number` int(11) DEFAULT NULL COMMENT '书籍库存',
  `shuji_clicknum` int(11) DEFAULT NULL COMMENT '热度 ',
  `shuji_content` text COMMENT '书籍介绍 ',
  `shuji_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='书籍';

/*Data for the table `shuji` */

insert  into `shuji`(`id`,`shuji_uuid_number`,`shuji_name`,`shuji_zuozhe`,`shuji_chubanshe`,`shuji_photo`,`shuji_types`,`shujia_types`,`shujia_address`,`shuji_kucun_number`,`shuji_clicknum`,`shuji_content`,`shuji_delete`,`create_time`) values (1,'1681111070041','书籍名称1','书籍作者1','出版社1','upload/shuji1.jpg',1,1,'详细地址1',91,40,'书籍介绍1',1,'2023-04-10 15:17:49'),(2,'1681111070029','书籍名称2','书籍作者2','出版社2','upload/shuji2.jpg',3,2,'详细地址2',92,345,'书籍介绍2',1,'2023-04-10 15:17:49'),(3,'1681111070010','书籍名称3','书籍作者3','出版社3','upload/shuji3.jpg',1,1,'详细地址3',93,277,'书籍介绍3',1,'2023-04-10 15:17:49'),(4,'1681111070029','书籍名称4','书籍作者4','出版社4','upload/shuji4.jpg',2,2,'详细地址4',105,45,'书籍介绍4',1,'2023-04-10 15:17:49'),(5,'1681111070044','书籍名称5','书籍作者5','出版社5','upload/shuji5.jpg',2,1,'详细地址5',105,78,'书籍介绍5',1,'2023-04-10 15:17:49'),(6,'1681111070008','书籍名称6','书籍作者6','出版社6','upload/shuji6.jpg',2,1,'详细地址6',106,305,'书籍介绍6',1,'2023-04-10 15:17:49'),(7,'1681111069992','书籍名称7','书籍作者7','出版社7','upload/shuji7.jpg',1,3,'详细地址7',107,236,'书籍介绍7',1,'2023-04-10 15:17:49'),(8,'1681111069962','书籍名称8','书籍作者8','出版社8','upload/shuji8.jpg',1,3,'详细地址8',108,477,'书籍介绍8',1,'2023-04-10 15:17:49'),(9,'1681111070047','书籍名称9','书籍作者9','出版社9','upload/shuji9.jpg',1,2,'详细地址9',110,47,'书籍介绍9',1,'2023-04-10 15:17:49'),(10,'1681111070022','书籍名称10','书籍作者10','出版社10','upload/shuji10.jpg',3,3,'详细地址10',1010,464,'书籍介绍10',1,'2023-04-10 15:17:49'),(11,'1681111070014','书籍名称11','书籍作者11','出版社11','upload/shuji11.jpg',2,2,'详细地址11',1011,154,'书籍介绍11',1,'2023-04-10 15:17:49'),(12,'1681111069996','书籍名称12','书籍作者12','出版社12','upload/shuji12.jpg',1,3,'详细地址12',1012,134,'书籍介绍12',1,'2023-04-10 15:17:49'),(13,'1681111069976','书籍名称13','书籍作者13','出版社13','upload/shuji13.jpg',3,2,'详细地址13',1013,436,'书籍介绍13',1,'2023-04-10 15:17:49'),(14,'1681111070027','书籍名称14','书籍作者14','出版社14','upload/shuji14.jpg',1,2,'详细地址14',1014,469,'书籍介绍14',1,'2023-04-10 15:17:49');

/*Table structure for table `shuji_churu_inout` */

DROP TABLE IF EXISTS `shuji_churu_inout`;

CREATE TABLE `shuji_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `shuji_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `shuji_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型  Search111 ',
  `shuji_churu_inout_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `shuji_churu_inout` */

insert  into `shuji_churu_inout`(`id`,`shuji_churu_inout_uuid_number`,`shuji_churu_inout_name`,`shuji_churu_inout_types`,`shuji_churu_inout_content`,`insert_time`,`create_time`) values (1,'1681111069982','出入库名称1',2,'备注1','2023-04-10 15:17:49','2023-04-10 15:17:49'),(2,'1681111070056','出入库名称2',1,'备注2','2023-04-10 15:17:49','2023-04-10 15:17:49'),(3,'1681111069974','出入库名称3',1,'备注3','2023-04-10 15:17:49','2023-04-10 15:17:49'),(4,'1681111070003','出入库名称4',2,'备注4','2023-04-10 15:17:49','2023-04-10 15:17:49'),(5,'1681111069978','出入库名称5',1,'备注5','2023-04-10 15:17:49','2023-04-10 15:17:49'),(6,'1681111070058','出入库名称6',1,'备注6','2023-04-10 15:17:49','2023-04-10 15:17:49'),(7,'1681111070016','出入库名称7',1,'备注7','2023-04-10 15:17:49','2023-04-10 15:17:49'),(8,'1681111070027','出入库名称8',2,'备注8','2023-04-10 15:17:49','2023-04-10 15:17:49'),(9,'1681111070048','出入库名称9',1,'备注9','2023-04-10 15:17:49','2023-04-10 15:17:49'),(10,'1681111070007','出入库名称10',2,'备注10','2023-04-10 15:17:49','2023-04-10 15:17:49'),(11,'1681111070018','出入库名称11',1,'备注11','2023-04-10 15:17:49','2023-04-10 15:17:49'),(12,'1681111070045','出入库名称12',2,'备注12','2023-04-10 15:17:49','2023-04-10 15:17:49'),(13,'1681111070033','出入库名称13',1,'备注13','2023-04-10 15:17:49','2023-04-10 15:17:49'),(14,'1681111070065','出入库名称14',1,'备注14','2023-04-10 15:17:49','2023-04-10 15:17:49'),(15,'1681113432890','出库书籍1 、2、3 各10本',1,'','2023-04-10 15:57:13','2023-04-10 15:57:13');

/*Table structure for table `shuji_churu_inout_list` */

DROP TABLE IF EXISTS `shuji_churu_inout_list`;

CREATE TABLE `shuji_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `shuji_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `shuji_churu_inout_list` */

insert  into `shuji_churu_inout_list`(`id`,`shuji_churu_inout_id`,`shuji_id`,`shuji_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,106,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(2,2,2,157,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(3,3,3,479,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(4,4,4,396,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(5,5,5,471,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(6,6,6,47,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(7,7,7,430,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(8,8,8,322,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(9,9,9,380,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(10,10,10,79,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(11,11,11,10,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(12,12,12,167,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(13,13,13,250,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(14,14,14,116,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(15,15,1,10,'2023-04-10 15:57:13','2023-04-10 15:57:13'),(16,15,2,10,'2023-04-10 15:57:13','2023-04-10 15:57:13'),(17,15,3,10,'2023-04-10 15:57:13','2023-04-10 15:57:13');

/*Table structure for table `shuji_collection` */

DROP TABLE IF EXISTS `shuji_collection`;

CREATE TABLE `shuji_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuji_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='书籍收藏';

/*Data for the table `shuji_collection` */

insert  into `shuji_collection`(`id`,`shuji_id`,`yonghu_id`,`shuji_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(4,4,2,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(5,5,3,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(6,6,1,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(7,7,1,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(8,8,2,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(9,9,1,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(10,10,1,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(11,11,3,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(12,12,2,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(13,13,3,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(14,14,2,1,'2023-04-10 15:17:49','2023-04-10 15:17:49');

/*Table structure for table `shuji_commentback` */

DROP TABLE IF EXISTS `shuji_commentback`;

CREATE TABLE `shuji_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuji_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='书籍评价';

/*Data for the table `shuji_commentback` */

insert  into `shuji_commentback`(`id`,`shuji_id`,`yonghu_id`,`shuji_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-04-10 15:17:49','回复信息1','2023-04-10 15:17:49','2023-04-10 15:17:49'),(2,2,3,'评价内容2','2023-04-10 15:17:49','回复信息2','2023-04-10 15:17:49','2023-04-10 15:17:49'),(3,3,1,'评价内容3','2023-04-10 15:17:49','回复信息3','2023-04-10 15:17:49','2023-04-10 15:17:49'),(4,4,3,'评价内容4','2023-04-10 15:17:49','回复信息4','2023-04-10 15:17:49','2023-04-10 15:17:49'),(5,5,3,'评价内容5','2023-04-10 15:17:49','回复信息5','2023-04-10 15:17:49','2023-04-10 15:17:49'),(6,6,3,'评价内容6','2023-04-10 15:17:49','回复信息6','2023-04-10 15:17:49','2023-04-10 15:17:49'),(7,7,2,'评价内容7','2023-04-10 15:17:49','回复信息7','2023-04-10 15:17:49','2023-04-10 15:17:49'),(8,8,3,'评价内容8','2023-04-10 15:17:49','回复信息8','2023-04-10 15:17:49','2023-04-10 15:17:49'),(9,9,2,'评价内容9','2023-04-10 15:17:49','回复信息9','2023-04-10 15:17:49','2023-04-10 15:17:49'),(10,10,1,'评价内容10','2023-04-10 15:17:49','回复信息10','2023-04-10 15:17:49','2023-04-10 15:17:49'),(11,11,1,'评价内容11','2023-04-10 15:17:49','回复信息11','2023-04-10 15:17:49','2023-04-10 15:17:49'),(12,12,3,'评价内容12','2023-04-10 15:17:49','回复信息12','2023-04-10 15:17:49','2023-04-10 15:17:49'),(13,13,2,'评价内容13','2023-04-10 15:17:49','回复信息13','2023-04-10 15:17:49','2023-04-10 15:17:49'),(14,14,1,'评价内容14','2023-04-10 15:17:49','回复信息14','2023-04-10 15:17:49','2023-04-10 15:17:49'),(15,12,1,'登录后才可以进入数据详情页进行收藏评论借阅等操作','2023-04-10 15:55:00','回复1111111111111111111111111111111111111','2023-04-10 15:56:38','2023-04-10 15:55:00');

/*Table structure for table `shuji_yuyue` */

DROP TABLE IF EXISTS `shuji_yuyue`;

CREATE TABLE `shuji_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuji_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '借阅时间',
  `shuji_yuyue_num` int(11) DEFAULT NULL COMMENT '借阅天数',
  `shuji_yuyue_types` int(11) DEFAULT NULL COMMENT '借阅状态 Search111',
  `shuji_yuyue_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='书籍借阅';

/*Data for the table `shuji_yuyue` */

insert  into `shuji_yuyue`(`id`,`shuji_id`,`yonghu_id`,`shuji_yuyue_time`,`shuji_yuyue_num`,`shuji_yuyue_types`,`shuji_yuyue_delete`,`insert_time`,`create_time`) values (1,1,3,'2023-04-10 15:17:49',394,105,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(2,2,3,'2023-04-10 15:17:49',349,104,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(3,3,2,'2023-04-10 15:17:49',296,103,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(4,4,1,'2023-04-10 15:17:49',201,104,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(5,5,2,'2023-04-10 15:17:49',274,105,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(6,6,2,'2023-04-10 15:17:49',36,102,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(7,7,2,'2023-04-10 15:17:49',369,103,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(8,8,3,'2023-04-10 15:17:49',242,102,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(9,9,1,'2023-04-10 15:17:49',35,102,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(10,10,2,'2023-04-10 15:17:49',364,104,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(11,11,3,'2023-04-10 15:17:49',74,102,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(12,12,1,'2023-04-10 15:17:49',381,105,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(13,13,1,'2023-04-10 15:17:49',6,105,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(14,14,2,'2023-04-10 15:17:49',203,103,1,'2023-04-10 15:17:49','2023-04-10 15:17:49'),(18,7,1,'2023-04-10 15:53:36',3,103,1,'2023-04-10 15:53:42','2023-04-10 15:53:42');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (7,1,'a1','yonghu','用户','08y40onpde488bud1rwnvpx9a8ozknmi','2023-04-10 15:23:55','2023-04-10 16:53:37'),(8,1,'admin','users','管理员','s6a1s8w44knjehzej4918osfxsc4xls2','2023-04-10 15:34:46','2023-04-10 16:59:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-14 16:36:44');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',1,1,'2023-04-10 15:17:49'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-04-10 15:17:49'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',2,1,'2023-04-10 15:17:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
