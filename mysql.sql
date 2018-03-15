/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.7.18-20170830-log : Database - nideshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nideshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `nideshop`;

/*Table structure for table `nideshop_ad` */

DROP TABLE IF EXISTS `nideshop_ad`;

CREATE TABLE `nideshop_ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ad_position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `image_url` text NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `position_id` (`ad_position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_ad` */

insert  into `nideshop_ad`(`id`,`ad_position_id`,`media_type`,`name`,`link`,`image_url`,`content`,`end_time`,`enabled`) values 
(1,1,1,'合作 谁是你的菜','','https://shop.htmlk.cn/static/home/banner/banner_01.jpg','合作 谁是你的菜',0,1),
(2,1,1,'活动 美食节','','https://shop.htmlk.cn/static/home/banner/banner_02.jpg','活动 美食节',0,1),
(3,1,1,'活动 母亲节','','https://shop.htmlk.cn/static/home/banner/banner_03.jpg','活动 母亲节',0,1);

/*Table structure for table `nideshop_ad_position` */

DROP TABLE IF EXISTS `nideshop_ad_position`;

CREATE TABLE `nideshop_ad_position` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_ad_position` */

insert  into `nideshop_ad_position`(`id`,`name`,`width`,`height`,`desc`) values 
(1,'移动端首页轮播广告',750,200,'');

/*Table structure for table `nideshop_address` */

DROP TABLE IF EXISTS `nideshop_address`;

CREATE TABLE `nideshop_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `country_id` smallint(5) NOT NULL DEFAULT '0',
  `province_id` smallint(5) NOT NULL DEFAULT '0',
  `city_id` smallint(5) NOT NULL DEFAULT '0',
  `district_id` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_address` */

insert  into `nideshop_address`(`id`,`name`,`user_id`,`country_id`,`province_id`,`city_id`,`district_id`,`address`,`mobile`,`is_default`) values 
(3,'小明',1,1,20,233,2414,'民族大道1号','13800008888',1),
(12,'123123',14,0,2,37,403,'123123123','23123123',0),
(13,'你，nim',14,0,3,38,422,'柠檬','m',0),
(14,'您你',15,0,3,38,422,'logo 好','16496767',0),
(15,'杨军',16,0,2,37,404,'汉卡','18025356872',1),
(16,'2131231',14,0,3,38,422,'23123123','321312312',0),
(17,'13213',14,0,3,38,422,'123123','123123123',1);

/*Table structure for table `nideshop_admin` */

DROP TABLE IF EXISTS `nideshop_admin`;

CREATE TABLE `nideshop_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '''''',
  `password` varchar(255) NOT NULL DEFAULT '''''',
  `password_salt` varchar(255) NOT NULL DEFAULT '''''',
  `last_login_ip` varchar(60) NOT NULL DEFAULT '''''',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '''''',
  `admin_role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_admin` */

insert  into `nideshop_admin`(`id`,`username`,`password`,`password_salt`,`last_login_ip`,`last_login_time`,`add_time`,`update_time`,`avatar`,`admin_role_id`) values 
(1,'admin','bb87bf23d14b27de74530dec20e234f3','ABCDEF','::ffff:127.0.0.1',1505484711,0,0,'\'\'',0);

/*Table structure for table `nideshop_attribute` */

DROP TABLE IF EXISTS `nideshop_attribute`;

CREATE TABLE `nideshop_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `values` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`attribute_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_attribute` */

insert  into `nideshop_attribute`(`id`,`attribute_category_id`,`name`,`input_type`,`values`,`sort_order`) values 
(1,1008009,'材质',1,'',0),
(2,1008009,'适用床尺寸',1,'',0),
(3,1008009,'件数',1,'',0),
(4,1008009,'工艺',1,'',0),
(5,1008009,'执行标准',1,'',0),
(6,1008009,'产地',1,'',0),
(7,1008009,'温馨提示',1,'',0),
(8,1008008,'填充物重量',1,'',0),
(9,1008008,'尺寸',1,'',0),
(10,1008008,'面料',1,'',0),
(11,1008008,'填充物',1,'',0),
(12,1008008,'填充成分',1,'',0),
(13,1008008,'面料成分',1,'',0),
(14,1008008,'含绒量',1,'',0),
(15,1008008,'重量',1,'',0),
(16,1008002,'规格',1,'',0),
(17,1008002,'外套材质',1,'',0),
(18,1008002,'内胆材质',1,'',0),
(19,1008002,'*温馨提示',1,'',0),
(20,1036000,'安全技术',1,'',0),
(21,1036000,'产品等级',1,'',0),
(22,1008002,'面料成份',1,'',0),
(23,1008002,'内芯面料',1,'',0),
(24,1008008,'颜色',1,'',0),
(25,1008008,'适用人数',1,'',0),
(26,1008009,'安全类别',1,'',0),
(27,1008009,'根数',1,'',0),
(28,1036000,'安全技术类别',1,'',0),
(29,1036000,'克重',1,'',0),
(30,1008008,'外层面料',1,'',0),
(31,1008008,'里层面料',1,'',0),
(32,1008008,'内芯',1,'',0),
(33,1008008,'外用面料',1,'',0),
(34,1008008,'商品重量',1,'',0),
(35,1008002,'坐垫外层面料',1,'',0),
(36,1008002,'坐垫内芯材料',1,'',0),
(37,1008002,'方形尺寸',1,'',0),
(38,1008002,'圆形尺寸',1,'',0),
(39,1008002,'坐垫套面料',1,'',0),
(40,1008009,'安全及时',1,'',0),
(41,1008002,'填充克重',1,'',0),
(42,1017000,'产品标准',1,'',0),
(43,1008016,'额定电压',1,'',0),
(44,1008016,'型号',1,'',0),
(45,1008008,'厚度',1,'',0),
(46,1036000,'印染工艺',1,'',0),
(47,1017000,'配色',1,'',0),
(48,1017000,'材料',1,'',0),
(49,1008008,'面料参数',1,'',0),
(50,1011004,'鲜花',1,'',0),
(51,1011004,'朵数',1,'',0),
(52,1011004,'花材种植地',1,'',0),
(53,1011004,'鲜花主材',1,'',0),
(54,1011004,'鲜花辅材',1,'',0),
(55,1017000,'搭扣',1,'',0),
(56,1017000,'拉带规格',1,'',0),
(57,1017000,'颈圈规格',1,'',0),
(58,1017000,'颈圈',1,'',0),
(59,1017000,'拉带',1,'',0),
(60,1017000,'颈圈尺寸',1,'',0),
(61,1017000,'拉带尺寸',1,'',0),
(62,1008008,'外套',1,'',0),
(63,1011004,'长度',1,'',0),
(64,1011004,'花草种类',1,'',0),
(65,1011004,'数量',1,'',0),
(66,1015000,'涂漆',1,'',0),
(67,1015000,'产品尺寸',1,'',0),
(68,1015000,'安装方式',1,'',0),
(69,1017000,'规格尺寸',1,'',0),
(70,1011004,'机芯',1,'',0),
(71,1011004,'能源',1,'',0),
(72,1011004,'机芯类型',1,'',0),
(73,1015000,'框架材质',1,'',0),
(74,1015000,'是否组装',1,'',0),
(75,1011004,'USB线长',1,'',0),
(76,1017000,'承重范围',1,'',0),
(77,1011004,'花材',1,'',0),
(78,1011004,'附加功能',1,'',0),
(79,1015000,'主体材质',1,'',0),
(80,1015000,'躺椅尺寸',1,'',0),
(81,1015000,'脚蹬尺寸',1,'',0),
(82,1015000,'*特别提醒',1,'',0),
(83,1015000,'椅身材质',1,'',0),
(84,1015000,'扶手材质',1,'',0),
(85,1015000,'椅轮',1,'',0),
(86,1015000,'气杆',1,'',0),
(87,1011004,'摆件类型',1,'',0),
(88,1008008,'弹簧结构特征',1,'',0),
(89,1008008,'使用场所',1,'',0),
(90,1008008,'主要原材料',1,'',0),
(91,1008008,'辅料',1,'',0),
(92,1008008,'高度',1,'',0),
(93,1008008,'配送范围',1,'',0),
(94,1008002,'填充物克重',1,'',0),
(95,1008002,'备注',1,'',0),
(96,1036000,'鞣制方式',1,'',0),
(97,1017000,'产品材质',1,'',0),
(98,1017000,'产品净重',1,'',0),
(99,1017000,'产品毛重',1,'',0),
(100,1008002,'物理遮光率',1,'',0),
(101,1008002,'物理遮光性',1,'',0),
(102,1008008,'重要提醒',1,'',0);

/*Table structure for table `nideshop_attribute_category` */

DROP TABLE IF EXISTS `nideshop_attribute_category`;

CREATE TABLE `nideshop_attribute_category` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_attribute_category` */

insert  into `nideshop_attribute_category`(`id`,`name`,`enabled`) values 
(1008002,'布艺软装',1),
(1008008,'被枕',1),
(1008009,'床品件套',1),
(1008016,'灯具',1),
(1011004,'家饰',1),
(1015000,'家具',1),
(1017000,'宠物',1),
(1036000,'夏凉',1);

/*Table structure for table `nideshop_brand` */

DROP TABLE IF EXISTS `nideshop_brand`;

CREATE TABLE `nideshop_brand` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `list_pic_url` varchar(255) NOT NULL DEFAULT '',
  `simple_desc` varchar(255) NOT NULL DEFAULT '',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `floor_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `app_list_pic_url` varchar(255) NOT NULL DEFAULT '',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `new_pic_url` varchar(255) NOT NULL DEFAULT '',
  `new_sort_order` tinyint(2) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`),
  KEY `is_show` (`is_show`)
) ENGINE=InnoDB AUTO_INCREMENT=1046012 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_brand` */

insert  into `nideshop_brand`(`id`,`name`,`list_pic_url`,`simple_desc`,`pic_url`,`sort_order`,`is_show`,`floor_price`,`app_list_pic_url`,`is_new`,`new_pic_url`,`new_sort_order`) values 
(2001000,'摄影展','http://yanxuan.nosdn.127.net/1541445967645114dd75f6b0edc4762d.png','严选精选了MUJI制造商和生产原料，\n用几乎零利润的价格，剔除品牌溢价，\n让用户享受原品牌的品质生活。','http://yanxuan.nosdn.127.net/4ea3f1e60dd77c45c218e503d721a1ed.jpg',2,1,12.90,'http://yanxuan.nosdn.127.net/1541445967645114dd75f6b0edc4762d.png',1,'https://shop.htmlk.cn/static/home/activity/photo.jpg',2),
(2002000,'书籍展览','http://yanxuan.nosdn.127.net/1b1cc16135fd8467d40983f75f644127.png','严选为制作高品质高颜值皮具配件，\n由Coach、MK等品牌制造商生产，\n由严选360度全程监制，给你带来优质皮具。','http://yanxuan.nosdn.127.net/c933a662bb79b2a47280363e35ab994b.png',3,1,49.00,'http://yanxuan.nosdn.127.net/1b1cc16135fd8467d40983f75f644127.png',1,'https://shop.htmlk.cn/static/home/activity/books.jpg',10),
(2003000,'科技展','http://yanxuan.nosdn.127.net/2018e9ac91ec37d9aaf437a1fd5d7070.png','严选找寻德国百年高端厨具WMF的制造商，\n选择拥有14年经验的不锈钢生产工厂，\n为你甄选事半功倍的优质厨具。','http://yanxuan.nosdn.127.net/2a2ae0d49043e525db8d0d8d84460ac8.png',8,1,9.90,'http://yanxuan.nosdn.127.net/2018e9ac91ec37d9aaf437a1fd5d7070.png',1,'https://shop.htmlk.cn/static/home/activity/technology.jpg',3),
(2004000,'美食节','http://yanxuan.nosdn.127.net/658f09b7ec522d31742b47b914d64338.png','严选寻访Calvin Klein品牌的制造商，\n深入世界领带第一生产地，设计与品质并重，\n致力于给消费者带来优质典雅的服饰用品。','http://yanxuan.nosdn.127.net/fb139c9f11a10deb41beeb42aaad488e.png',1,1,39.00,'http://yanxuan.nosdn.127.net/658f09b7ec522d31742b47b914d64338.png',1,'https://shop.htmlk.cn/static/home/activity/foods.jpg',1);

/*Table structure for table `nideshop_cart` */

DROP TABLE IF EXISTS `nideshop_cart`;

CREATE TABLE `nideshop_cart` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `retail_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `number` smallint(5) NOT NULL DEFAULT '0',
  `goods_specifition_name_value` text NOT NULL COMMENT '规格属性组成的字符串，用来显示用',
  `goods_specifition_ids` varchar(60) NOT NULL DEFAULT '' COMMENT 'product表对应的goods_specifition_ids',
  `checked` tinyint(1) NOT NULL DEFAULT '1',
  `list_pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_cart` */

insert  into `nideshop_cart`(`id`,`user_id`,`session_id`,`goods_id`,`goods_sn`,`product_id`,`goods_name`,`market_price`,`retail_price`,`number`,`goods_specifition_name_value`,`goods_specifition_ids`,`checked`,`list_pic_url`) values 
(166,31,'1',1003001001,'1003001001',246,'拉菲奥希耶徽纹红葡萄酒',0.01,0.01,1,'','',1,'https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_01.jpg'),
(167,33,'1',1001001001,'1001001001',7,'记忆枕头单人慢回弹太空记忆枕头',0.01,0.01,1,'','',1,'https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_02.jpg');

/*Table structure for table `nideshop_category` */

DROP TABLE IF EXISTS `nideshop_category`;

CREATE TABLE `nideshop_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `front_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `show_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `banner_url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `wap_banner_url` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `front_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1036012 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_category` */

insert  into `nideshop_category`(`id`,`name`,`keywords`,`front_desc`,`parent_id`,`sort_order`,`show_index`,`is_show`,`banner_url`,`icon_url`,`img_url`,`wap_banner_url`,`level`,`type`,`front_name`) values 
(1001000,'家居家纺','','家居家纺desc',0,2,1,1,'','','','https://shop.htmlk.cn/static/goods/hometextile/poster.jpg','L1',0,'回家，放松身心'),
(1001001,'枕头','','枕头desc',1001000,6,6,1,'','','','https://shop.htmlk.cn/static/goods/hometextile/pillow.png','L2',0,'洁净才能带来清爽心情'),
(1001002,'毛巾','','毛巾desc',1001000,5,4,1,'','','','https://shop.htmlk.cn/static/goods/hometextile/towel.png','L1',0,'贴身的，要亲肤'),
(1002000,'小吃饮品','','小吃饮品desc',0,3,2,1,'','','','https://shop.htmlk.cn/static/goods/snacks/poster.jpg','L1',0,'爱，囿于厨房'),
(1002001,'方便面','','方便面desc',1002000,7,6,1,'','','','https://shop.htmlk.cn/static/goods/snacks/instantnoodles.png','L1',0,'爱，从心开始'),
(1002002,'茶π','','茶πdesc',1002000,5,5,1,'','','','https://shop.htmlk.cn/static/goods/snacks/teaπ.png','L2',0,'经典的温暖'),
(1003000,'土特产','','土特产desc',0,4,3,1,'','','','https://shop.htmlk.cn/static/goods/specialty/poster.jpg','L1',0,'配角，亦是主角'),
(1003001,'红酒','','红酒desc',1003000,50,0,1,'','','','https://shop.htmlk.cn/static/goods/specialty/redwine.png','',0,''),
(1003002,'月饼','','月饼desc',1003000,50,0,1,'','','','https://shop.htmlk.cn/static/goods/specialty/mooncake.png','',0,''),
(1004000,'旅游门票','','旅游门票desc',0,9,8,1,'','','','https://shop.htmlk.cn/static/goods/touristtickets/poster.jpg','L1',0,'好吃，高颜值美食'),
(1004001,'桂林','','桂林desc',1004000,50,0,1,'','','','https://shop.htmlk.cn/static/goods/touristtickets/guilin.png','',0,''),
(1004002,'乌镇','','乌镇desc',1004000,50,0,1,'','','','https://shop.htmlk.cn/static/goods/touristtickets/wuzhen.png','',0,''),
(1005000,'酒店服务','','酒店服务desc',0,50,0,1,'','','','https://shop.htmlk.cn/static/goods/hotelticket/poster.jpg','',0,''),
(1005001,'洗衣服','','洗衣服desc',1005000,50,0,1,'','','','https://shop.htmlk.cn/static/goods/hotelticket/buffet.png','',0,'');

/*Table structure for table `nideshop_channel` */

DROP TABLE IF EXISTS `nideshop_channel`;

CREATE TABLE `nideshop_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(4) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_channel` */

insert  into `nideshop_channel`(`id`,`name`,`url`,`icon_url`,`sort_order`) values 
(1,'家居家纺','/pages/category/category?id=1001000','https://shop.htmlk.cn/static/home/icon/hometextile.jpg',1),
(2,'小吃饮品','/pages/category/category?id=1002000','https://shop.htmlk.cn/static/home/icon/snacks.jpg',2),
(3,'土特产','/pages/category/category?id=1003000','https://shop.htmlk.cn/static/home/icon/specialties.jpg',3),
(4,'旅游门票','/pages/category/category?id=1004000','https://shop.htmlk.cn/static/home/icon/tickets.jpg',4),
(5,'酒店服务','/pages/category/category?id=1005000','https://shop.htmlk.cn/static/home/icon/service.jpg',5);

/*Table structure for table `nideshop_collect` */

DROP TABLE IF EXISTS `nideshop_collect`;

CREATE TABLE `nideshop_collect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是关注',
  `type_id` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`value_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_collect` */

insert  into `nideshop_collect`(`id`,`user_id`,`value_id`,`add_time`,`is_attention`,`type_id`) values 
(17,1,1181000,1495381237,0,0),
(18,1,1015007,1495466325,0,0),
(19,1,1152161,1495970357,0,0),
(21,1,1156006,1497685421,0,0),
(31,11,1011004,1500822827,0,0),
(33,11,1015007,1500823262,0,0),
(44,11,1134030,1500987695,0,0),
(47,11,1009012,1500987979,0,0),
(55,20,1009024,1520868199,0,0),
(58,33,16777215,1521021289,0,0),
(59,33,16777215,1521021291,0,0),
(60,33,16777215,1521021292,0,0),
(61,33,16777215,1521021294,0,0),
(62,31,16777215,1521095398,0,0),
(63,31,16777215,1521095415,0,0),
(64,31,1001002001,1521096153,0,0);

/*Table structure for table `nideshop_comment` */

DROP TABLE IF EXISTS `nideshop_comment`;

CREATE TABLE `nideshop_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `content` varchar(6550) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '储存为base64编码',
  `add_time` bigint(12) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `new_content` varchar(6550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_value` (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `nideshop_comment` */

insert  into `nideshop_comment`(`id`,`type_id`,`value_id`,`content`,`add_time`,`status`,`user_id`,`new_content`) values 
(1,0,1181000,'5biD5paZ5b6I5Y6a5a6e77yM6Kem5oSf5LiN6ZSZ77yM5rSX6L+H5LmL5ZCO5LiN57yp5rC05LiN5o6J6Imy',1493964099,0,1,''),
(2,0,1181000,'5paZ5a2Q5b6I6IiS5pyN77yM5YeJ5YeJ55qE77yM6YWN5ZCI6JqV5Lid6KKr77yM5aSP5aSp5b6I5YeJ5b+rfg==',1494347561,0,1,''),
(3,0,1181000,'5LiA55u05Zac5qyi57KX5biD55qE5bqK5LiK55So5ZOB44CC5Yas5pqW5aSP5YeJ44CC6L+Z5aWX55yL6LW35p2l6Z2e5bi45ryC5Lqu44CC5a6e6ZmF5oSf6KeJ5pyJ54K557KX5biD55qE5oSf6KeJ44CC5b6I5aW977yB',1484961416,0,1,''),
(4,0,1006002,'Mzg5OeW6iu+8jDIzOTnnmb3puYXnu5LooqvvvIw4OTnlm5vku7blpZfjgILnvZHmmJPkuKXpgInmiJHopoHnlq/kuobvvIE=',1483867801,0,1,''),
(5,0,1006002,'5ryC5Lqu',1478839204,0,1,''),
(6,0,1006002,'5Zub5Lu25aWX5bey57uP5pS25YiwIOi/mOayoeS9v+eUqCDkuI3ov4fmiYvmhJ/lvojlpb0g5Lmf5rKh5byC5ZGzIOebuOS/oeS4pemAieeahOecvOWFiSAg5bqU6K+l5LiN5Lya6K6p5oiR5aSx5pyb55qE',1494383192,0,1,''),
(7,0,1006002,'6L+Z5Liq5b6I5rKJ77yM5L2G5piv5ZCM5LiA5aWX5pei5pyJ55m96Imy5Y+I5pyJ5rex6JOd6Imy77yM5oiR55So5LqG5ZC46Imy5biD77yM5omN6YG/5YWN5p+T6Imy77yM5qC55pys5LiN5pWi5LiA6LW35rSX77yM77yM77yM77yM',1487744838,0,1,''),
(8,0,1006002,'54m55Yir5Zac5qyi55qE5bqK5ZOB44CC5ryC5Lqu',1494548350,0,1,''),
(9,0,1006002,'6L+Y5rKh5pyJ5L2/55So77yM55yL6LW35p2l6L+Y5LiN6ZSZ',1494510472,0,1,''),
(10,0,1006002,'5LiN6ZSZ6LSo6YeP5b6I5aW9',1494474238,0,1,''),
(11,0,1006002,'5b6I5aW955yL77yM6LSo6YeP5Lmf5b6I5aW9',1494386492,0,1,''),
(12,0,1006002,'6LaF576O77yM54m55Yir5Zac5qyi',1493791214,0,1,''),
(13,0,1006002,'5oOK6Imz77yB',1493737798,0,1,''),
(14,0,1006002,'6L+Y5rKh5omT5byA77yM57uj6Iqx5LiN6ZSZ44CC',1493609747,0,1,''),
(15,0,1006002,'8J+MuA==',1493425027,0,1,''),
(16,0,1006002,'5p2Q6LSo5aW977yM5peg5ZGz77yM6LWe',1493273915,0,1,''),
(17,0,1006002,'546w5Zyo6YO96L+Y5Zyo55uW552A',1493143721,0,1,''),
(18,0,1006002,'5aSq5Y6a5LqG77yM6LSo6YeP5b6I5aW977yM5Y+q6YCC5ZCI5Yas5aSp',1492825378,0,1,''),
(19,0,1006002,'5a+56L+Z5aWX5bqK5ZOB5Z6C5raO5bey5LmF77yM5L2G5a+55LqO5Lu35qC85Y+I5pyJ54K554qv5ZiA5ZKV77yM6L+Z5qyh6ZmN5Lu377yM5L2/5oiR5LiL5Yaz5b+D5LiL5LqG5Y2V44CC5ou/5Zyo5omL6YeM5rKJ55S455S455qE77yM56WI5oS/5Yir6L6c6LSf6IGK5oiR5a+55Lil6YCJ55qE5pyf5pyb',1492144961,0,1,''),
(20,0,1006002,'56ys5LqM5qyh5Lmw5LqG',1492836768,0,1,''),
(21,0,1006002,'6LSo6YeP5b6I5aW977yM5bCx5piv5aSq55m95LqG77yM5oCq5oCq55qE',1492750732,0,1,''),
(22,0,1006002,'44CC44CC44CC44CC44CC44CC44CC',1492761421,0,1,''),
(23,0,1006002,'5Lil6YCJ6byT5Yqx6K+E5Lu35q+P5LiA5Lu25ZWG5ZOB77yM5oiR5Zac5qyi5Lil6YCJ55qE5Lic6KW/77yM5LiA5aaC5pei5b6A55qE5pSv5oyB77yB',1491237985,0,1,''),
(24,0,1006002,'57Sg6ZuF77yM5Y+q5piv56Gs5Lqb',1492357791,0,1,''),
(25,0,1006002,'576O77yM6Z2i5paZ6IiS5pyN44CC',1492091712,0,1,''),
(26,0,1006002,'5Yi657uj5b6I5ryC5Lqu77yM6Z2e5bi46Z2e5bi45YC844CC',1492008661,0,1,''),
(27,0,1006002,'6LaF57qn5aW955So',1491712584,0,1,''),
(28,0,1006002,'5pyJ54K557Sg77yM5Yi657uj5LiN6ZSZ',1491524014,0,1,''),
(29,0,1006002,'6auY56uv5aSn5rCU5LiK5qGj5qyh44CC5L2O6LCD5aWi5Y2O5pyJ5YaF5ra144CCICDlvojljpog5b6I6YeN',1491045576,0,1,''),
(30,0,1006002,'6Z2e5bi45aW977yM6LSo6YeP77yM',1490172279,0,1,''),
(31,0,1006007,'5b6I5qOS772e5b6I5pyJ6LSo5oSf77yM5Lqn5ZOB5oOz5piv5biC6Z2i5LiK5Y2D5YWD5Lul5LiK55qE5Lqn5ZOB6KeE5qC877yb6KKr5a2Q5L6n6Z2i6L+Y5pyJ5b+D55qE6K6+6K6h5LqG5LiA5q615bCP5ouJ6ZO+5omj5Y+v5Lul55yf5a6e55qE6Kem5pG45Yiw6KKr5a2Q6YeM6Z2i55qE5aGr5YWF54mpLeaYr+e+iuavm++8iOe+iua',1492447876,0,1,''),
(32,0,1006007,'6KGo6Z2i5pG46LW35p2l5b6I6IiS5pyN77yM57q/6YO95aSE55CG5b6X5b6I5aW977yM6YeM6Z2i5pyJ5Lqb5Zyw5pa55aGr5YWF54mp5LiN5aSq5Z2H5YyA',1478958022,0,1,''),
(33,0,1006007,'5YGa5bel55yf55qE5LiN6ZSZ77yM5oiR5amG5amG6K+05pyJ54K556Gs77yM5Y+v6IO95a+55q+U6JqV5Lid6KKr77yM6L+Y5piv5pyJ54K55LiN5LiA5qC344CC5Liq5Lq66KeJ5b6X6L+Y5piv5YC85b6X5Lmw55qE',1490678816,0,1,''),
(34,0,1006007,'6KKr5a2Q5b6I6L275b6I6JaE77yM5LiN5piv5b6I5pqW77yM5Y2X5pa5546w5Zyo5pil5aSpMTjluqblt6blj7PnmoTmsJTmuKnvvIznm5bnnYDmr5TovoPlkIjpgILvvIzlhqzlpKnlho3lhrfngrnogq/lrprlsLHkuI3ooYzkuobjgII=',1490445729,0,1,''),
(35,0,1006007,'6YWN5LiK6ZKI57uH5bi977yM5aal5aal55qE44CC5LiN5Y6a5LiN6JaE5peg5byC5ZGz77yM5Lmf5b6I5Lqy6IKk77yM5ruh5oSP44CC',1493164402,0,1,''),
(36,0,1006007,'6LaF5aSn5LiA5Liq5YyF6KO577yM5qOJ6KKr5pG46LW35p2l5LiN6ZSZ77yM562J5b6F55uW',1492909481,0,1,''),
(37,0,1006007,'5b6I6IiS5pyN55qE56eL5Yas576K5q+b6KKr77yM5LiN5Y6a5LiN6JaE77yM5Lmw5LqG5LiA54K56YO95LiN5ZCO5oKU77yB',1490836875,0,1,''),
(38,0,1006007,'55yL552A5aW977yM5pG4552A5aW977yM6YeN6YeP5oSf6KeJ5Lmf5q2j5aW977yM6L+Y5rKh55uW77yM5bey57uP5aWX5LiK6KKr5aWX77yMNOW5tOWJjeeahOWwj+iiq+WtkOe7iOS6juWPr+S7pemAgOW9ueS6huOAglBTIOmCo+S4gOWdqOaYr+WPquWWte+9ng==',1491105286,0,1,''),
(39,0,1006007,'55uW5LiK5LqGIOi/mOaIkA==',1492603679,0,1,''),
(40,0,1006007,'5aW95aSn5LiA566x5ZWKIOiiq+WtkOWwuuWvuOi/mOaMuuWHhiDlh4blpIfmmZLkuIsg5Y+v5Lul55So5LiA55SoIOS4gOebtOWGrOWkqeebljQrNueahOWQiOiiqyDov5nkuKo15pak55qE5qC35a2QIOS4jeefpemBk+WGrOWkqeWNleebluaYr+S4jeaYr+WlveWGtyDov5jmsqHmnInnm5bov4fnvormr5vooqsg5LyaNeaWpOe+iuavm+i',1492149347,0,1,''),
(41,0,1006007,'6KKr5a2Q5rKh5pyJ5ZGz6YGTIOWMhei+ueW+iOWlvSDlh4nkuobkuKTlpKkg5pio5pmaMTXluqYg552h552A5Y+R54OtIOW+iOi9u+W+iOiIkumAgiDphY3kuIrmsLTmtJfmo4nlm5vku7blpZflkozkuJ3nu5LmnpXlpLQg5a6M576O77yB77yB',1484640065,0,1,''),
(42,0,1006007,'5rKh5pyJ57y654K544CC',1491546414,0,1,''),
(43,0,1006007,'5pW05L2T5ruh5oSP',1491441655,0,1,''),
(44,0,1006007,'55m95aSp5pmS6L+H77yM5LuK5pma5bey55uW5LiK77yM6L+Z5LmF55uW5Yia5aW95ZCI6YCC',1490798537,0,1,''),
(45,0,1006007,'5LiL5Y2V5ZCO56ys5LqM5aSp5pep5LiK6aG65Liw5Yiw6LSn77yM5YWI6LWe5b+r6YCS77yB5YaN6K+06KKr5a2Q77yM5LiA5Y+j5rCU5Lmw5LqGM+W6iuiiq+WtkO+8jOWSjOiAgeWFrOWVhumHj+edgOS4jeWlveWwsemAgOaOie+8jOW8gOeuseWQjuaLv+i1t+adpemDveW+iOayieeahOW+iOacieWIhumHj++8jOWMhei+uei1sOe6v+e',1491008257,0,1,''),
(46,0,1006007,'5YyF6KOF5b6I5aW977yM6KKr5a2Q5b6I5aW977yM5bm/5Lic55qE5Yas5aSp5aSf5LqG',1490807814,0,1,''),
(47,0,1006007,'5LuK5aSp5omN5o2i5LiK77yM5aW95pqW5ZKM44CC6LSo6YeP5q+U5oiR5oOz6LGh5Lit55qE5aW944CC5aW96K+E44CC5biM5pyb5pma5LiK552h6KeJ5pe25LiN6KaB5aSq54Ot5ZWK77yB',1483152323,0,1,''),
(48,0,1006007,'56ef5p2l55qE5oi/IOi/meagt+WwseWkn+S6hg==',1489457106,0,1,''),
(49,0,1006007,'55u45b2T5LiN6ZSZ55qE6KKr5a2Q77yM5Y2X5pa55pil56eL55uW5q2j5aW977yM5Yas5aSp6ZyA6KaB5Yqg5LiA5bqK5q+b5q+v5LiN54S25aSq5Ya344CC',1487314625,0,1,''),
(50,0,1006007,'5p+U6L2v77yM5Y6a5a6e77yM5rKh5pyJ5byC5ZGz77yM5LiN6LeR5q+b77yM5LuO55WZ55qE5bCP5Y+j6IO95riF5qWa55yL5Yiw6YeM6Z2i576K5q+b5ZOB6LSo5b6I5LiN6ZSZ77yM55uW552A5b6I5pqW5ZKM44CC546v5omj5pyJ5YWr5Liq77yM5aWX6KKr5aWX5Lmf5b6I5pa55L6/77yM5LiN55So5ouF5b+D6KKr5aWX6ZSZ5L2N44C',1488335090,0,1,''),
(51,0,1006007,'5YyF6KOd5b6I5aW977yB5omT6ZaL5b6M5pG46JGX6LOq6YeP5Lmf6Z2e5bi45LiN6Yyv77yB5ru/5oSP55qE5LiA5qyh6LO854mp6auU6amXLg==',1481222099,0,1,''),
(52,0,1006007,'55yL5LiK5Y675LiN6ZSZ77yM5aqz5aaH6KaB6L+H5p2l5LqG77yM5Lmw5LqG5Zub5Lu25aWX5ZKM6KKr6Iqv77yM6YO96KaB5o2i5paw55qE57uZ5aW55LiA5Liq5oOK5Zac77yB',1481765389,0,1,''),
(53,0,1006007,'572R5piT5Lmw5LqGMjIww5cyNDDooqvlpZfvvIznu5Pmnpzlm57lrrblj5HnjrDlpKfkuoblj4jmnaXkubDkuobooqvoiq/vvIzlj5HnjrDnvZHmmJPkuKXpgInotKjph4/nnJ/kuI3plJnvvIzlpJrmjqjlh7rnsr7lk4E=',1481993564,0,1,''),
(54,0,1006007,'5LiN6ZSZ5LiN6ZSZ5LiN6ZSZ55qE77yM5Zac5qyi5LiK5Lil6YCJ',1488416326,0,1,''),
(55,0,1006007,'5beo5aSn5peg5q+U55qE566x5a2Q77yM5YGa5bel77yM6LSo5oSf6YO96LaF6LWe77yM5bey57uP6KOF5aW96KKr5aWX77yM55uW5Zyo6Lqr5LiK77yM5YW35L2T5pWI5p6c5aaC5L2V77yM5Zue5aS06L+96K+E',1481287755,0,1,''),
(56,0,1006007,'5oiQ6YO95LqM5pyI5bqV77yM56m66LCD5byAMjXluqbvvIzlpojlpojor7TooqvlrZDlvojmmpblkow=',1488013807,0,1,''),
(57,0,1006007,'5YyF6KOF5b6I57uT5a6e77yM6YeM5LiA5bGC5aSW5LiA5bGC44CC5Lic6KW/5Lmf5b6I5aW95ZOf8J+YhA==',1487683645,0,1,''),
(58,0,1006007,'5Zac5qyi',1487651942,0,1,''),
(59,0,1006007,'6Z2i5paZ5pG46LW35p2l5b6I6IiS5pyN77yM5rKh5pyJ576K5q+b5ZGz77yM5L2G5piv5pyJ54K55paw5biD5paZ55qE5ZGz6YGT44CC6KKr5a2Q5rKh5pyJ576957uS6KKr6L2777yM5L2G5Lmf5LiN566X5Y6a6YeN44CC5aW96K+E77yB',1479986158,0,1,''),
(60,0,1006007,'6Z2e5bi45aW977yM5b6I5pqW5ZKM',1487495005,0,1,''),
(61,0,1006010,'6KKr5a2Q5pS25Yiw5YWI5pm+5pmS5Lik5aSp44CC5rKh5pyJ5byC5ZGz77yM5YGa5bel57K+57uG77yM5omL5oSf5LiN6ZSZ77yM5ou/5LqG5LiA5pKu54On5piv57qv576K5q+b55qE44CC55u45L+h5Lil6YCJ55qE5ZOB6LSo44CC',1488945838,0,1,''),
(62,0,1006010,'6LSo6YeP5b6I5aW977yM6L+Y5rKh55So77yM55yL552A5bCx6Z2e5bi45Zac5qyi77yB',1493541884,0,1,''),
(63,0,1006010,'',1493099124,0,1,''),
(64,0,1006010,'5bC65a+46Juu5aW977yB6LSo5oSf5aW977yB6Z2e5bi45qOS77yB',1492076696,0,1,''),
(65,0,1006010,'5oiR56Gu5a6e5rKh5pyJ5Y+R546w5pyJ5LuA5LmI5byC5ZGz77yM576K5q+b6KKr6Z2e5bi46IiS5pyN77yM57qv5paw576K5q+b5ZOB6LSo6Z2e5bi45aW977yM6L+Z5Liq5Lu35qC85ZWG5Zy66YeM6Z2i5piv5Lmw5LiN5Yiw55qE77yM5o+Q6Iqx5YGa5bel5Lmf6Z2e5bi457K+57uG44CC6YWN5LiK5Y675bm05Lmw55qE5bqK5Y2V77y',1491134002,0,1,''),
(66,0,1006010,'5pS25Yiw5LqG77yM6L+Y5rKh55So',1489546020,0,1,''),
(67,0,1006010,'5YyF6KOF55uS5a2Q5b6I5aSn44CCCuWSjOWbm+S7tuWll+S4gOi1t+S5sOeahO+8jOWFiOaZkuaZkuWGjeWll+S4iuOAgg==',1486770266,0,1,''),
(68,0,1006010,'5Y+R6LSn5b6I5b+r77yM5pyN5Yqh5b6I5aW977yB',1488252963,0,1,''),
(69,0,1006010,'6LaF5Zac5qyi77yM5pmS5LiA5pmS77yM5bCx5YeG5aSH5o2i5LiK55So5LqG77yB',1487582754,0,1,''),
(70,0,1006010,'5b6I5qOS5ZWKIOi2hee6p+WlvSDlv6Dlrp7nsonkuJ0=',1486657739,0,1,''),
(71,0,1006010,'5ZCT5q275Liq5Lq677yM5YyF6KOF5aSq5aSn5LqG44CC5Li65b+r6YCS6KGM5Lia5bqf54mp5ouF5b+n77yB6KKr5a2Q6L+Y5rKh55So55qE77yM5Y6a6JaE5Y+v5Lul',1482212842,0,1,''),
(72,0,1006010,'6Z2e5bi45aW955qE5ZWG5ZOB77yM5oy65Y6a5a6e77yM5aWX5Zyo5Lil6YCJ6KKr572p6YeM5q2j5aW944CC5b6I6IiS6YCC55qE5oSf6KeJ77yM5LuK5pma6K+V6K+V5YaN6Lef6K+E44CC',1479985934,0,1,''),
(73,0,1006010,'57uG576K5q+b5q+U576K5q+b5Y+I5pu05p+U6L2v6IiS5pyN77yM5YyF6KOF5L6d5pen5by65aSn77yM56ys5LqM5bqK5LqG77yM562J552A5YaN5Zui56ys5LiJ5bqK57uZ5bCP5a2p44CC',1480162560,0,1,''),
(74,0,1006010,'5b6I5aW98J+Rje+8jOWWnOasog==',1484123401,0,1,''),
(75,0,1006010,'5LiN6ZSZ77yM5oy65aW955qE77yM5omT566X5pmS5LiA5aSp77yM5YaN55So',1483153641,0,1,''),
(76,0,1006010,'6LSo6YeP5omL5oSf5b6I5aW977yM5YC85b6X6LSt5Lmw44CC5Zi/5Zi/44CC5oSf6LCi5oiR5Lit55qE5LyY5oOg5Yi45Lmw5ruhNTk55bCRMTA177yB5YiS566X',1480040474,0,1,''),
(77,0,1006010,'5Lic6KW/6L+Y5LiN6ZSZ77yM5a626YeMMjDluqbnm5bnnYDnqI3lvq7mnInngrnng63jgII=',1482657469,0,1,''),
(78,0,1006010,'5rKh5pyJ5ZGz6YGT5ZGA77yM5pG46LW35p2l5omL5oSf5LiN6ZSZ55qE4oCm4oCm5Lil6YCJ6ISR5q6L57KJ77yM5LiN5aSa6K+05LqG77yM6LWe8J+RjQ==',1479793442,0,1,''),
(79,0,1006010,'5omL5oSf5aSq5qOS5LqG77yM5pS25Yiw5pmS5LqG5LiA5aSp5bCx55So5LiK5LqG77yM6LaF5pqW5ZKM77yB6LWe',1481767112,0,1,''),
(80,0,1006010,'566A57qm77yM5bmy5YeA77yB5Zub5Lu25aWX77yM6KKr5a2Q77yM5bqK5Z6r5YWo6YO95o2i5oiQ5Lil6YCJ55qE8J+RjfCfj7s=',1481438158,0,1,''),
(81,0,1006010,'6KKr5a2Q5p+U6L2v5omL5oSf5b6I5aW9',1481246941,0,1,''),
(82,0,1006010,'54KS6bih5aSn55qE5YyF6KOF55uS77yM6L+Z5Yeg5aSp5aSp5rCU5LiN57uZ5Yqb77yM6L+Y5rKh5pyJ5pmS77yM5ZCO57ut6L+96K+E44CC',1479303106,0,1,''),
(83,0,1006010,'5pS25Yiw6KKr5YyF6KOF566x5ZCT5LqG5LiA6Lez77yM566x5Lit566x5aW95a6J5YWo77yM6KKr5a2Q576K5q+b5YiG5Li65LiA5qC85qC857yd5aW977yM5LiN6LWw5L2N77yM5aW95p+U6L2v77yM5aaI5aaI5Y+v5Lul6L+H5Liq5pqW5pqW55qE5Yas5aSp5LqG44CC',1478929762,0,1,''),
(84,0,1006010,'5Lil6YCJ55qE6LSo6YeP5rKh5pyJ6K6p5Lq65aSx5pyb77yM5ZOB6LSo55yf5b+D5aW977yB5YGa5bel6K6p5oiR5rKh5pyJ5LuA5LmI5Y+v5oyR5YmU55qE77yM5Y+C5Yqg5LqG5oSf5oGp6IqC55qE5rS75Yqo77yM5oSf6KeJ6LWa5Yiw5LqG5a6e5oOg77yBIOW4jOacm+S4pemAiee7p+e7reaOqOWHuumrmOWTgei0qO+8jOaAp+S7t+a',1480481711,0,1,''),
(85,0,1006010,'5b6I5aSn5b6I5rip5pqW77yM5aWz55uG5Y+L5b6I5Zac5qyi',1480128167,0,1,''),
(86,0,1006010,'5LiA5qyh5Lmw5LqG5Yeg5aWX77yM5b6I5LiN6ZSZ',1480062322,0,1,''),
(87,0,1006010,'5b6I5aW977yM5b6I6IiS5pyN44CC5bey57uP5aWX5LiK5LqG6KKr5aWX77yI5Lmf5piv572R5piT5Lil6YCJ55qE77yJ44CC',1479090471,0,1,''),
(88,0,1006010,'5Lik5bGC5L+d5oqk77yM5aWX5LqG5Liq5aSn566x5a2Q77yM5Z+65LqO5a+55Lil6YCJ55qE5L+h5Lu777yM5Lq655Sf56ys5LiA5qyh572R5LiK5Lmw6KKr5a2Q77yM6ICM5LiU5piv5oiR5rKh55uW6L+H55qE576K5q+b6KKr77yM55m955m955qE77yM6L2v6L2v55qE77yM56uL6ams6Lef5LiA6LW35Yiw55qE6KKr5aWX57uT5ZCI5Lq',1479913690,0,1,''),
(89,0,1006010,'6LSo6YeP5b6I5aW977yM6L+Y5rKh55So77yM5biM5pyb5piv5Liq5aW95Lic6KW/44CC',1479309588,0,1,''),
(90,0,1006010,'5q+U5oOz6LGh5Lit55qE5aW95aW95aSa77yB5Lul6Iez5LqO5oiR56ys5LiA5qyh5oS/5oSP5Y+R5Lmw5a6256eA77yB',1479044359,0,1,''),
(91,0,1006013,'5pm+5LqG5Lik5aSpIOeOsOWcqOebluS6hiDlpb3oiJLmnI3llYrvvIHlt7Lnu4/niLHkuIrnvZHmmJPkuobkuKXpgInkuoYg6KaB5YmB5omL5LqG',1492605044,0,1,''),
(92,0,1006013,'6KKr5a2Q6LSo6YeP5b6I5aW977yM5q+U5a6e5L2T5bqX55qE5L6/5a6c6LSo6YeP5Y+I5aW977yM5YC85LqG77yB',1493042422,0,1,''),
(93,0,1006013,'6aG65Liw5b+r6YCS77yM54mp5rWB5b6I5b+r77yB5a6d6LSd5omL5oSf5b6I6IiS5pyN77yB',1492355576,0,1,''),
(94,0,1006013,'5b+r6YCS6LaF57qn5b+rIOS4gOWkqeS4jeWIsOWwsemAgeadpeS6hiDlr7nkuKXpgInnmoTotKjph4/ku47mnaXmsqHmnInmi4Xlv4Pov4cg6L+Z5qyh5pu05piv5Ye65LmO5oSP5paZ55qE5aW9IOi1ng==',1492835186,0,1,''),
(95,0,1006013,'5b6I5qOS55qE5LiA5Liq5Lqn5ZOB77yB6Z2e5bi45ruh5oSP77yB55uW6LW35p2l6L276JaE5Y+I6YCP5rCU77yM5Zyo5Ya35rCU5oi/55qE5L+d5pqW5bqm5Lmf6Laz5aSf44CC5b6I5Zac5qyi572R5piT55qE6JqV5Lid57O75YiX5Lqn5ZOB44CC',1492739498,0,1,''),
(96,0,1006013,'5a+56JqV5Lid6KKr6Z2e5bi45oyR5YmU55qE5oiR6KGo56S65a+55Lil6YCJ55qE5ZOB6LSo6Z2e5bi45ruh5oSP77yM6LSn5ZOB55qE56Gu5pivMTAwJeahkeialeS4ne+8jOWBmuW3peeyvue7hu+8jOmdouaWmeWOmuWunu+8jOS7t+agvOecn+W/g+WIkueul++8jOecn+aYr+WkquaDiuiJs+S6hu+8jOW3sue7j+aOqOiNkOe7mei6q+i',1493247462,0,1,''),
(97,0,1006013,'6JqV5Lid55So55qE5b6I5aW977yM6L276JaE6IiS6YCC77yM5oCn5Lu35q+U5b6I6auY44CC5YeG5aSH5Zue6LSt44CC',1492596021,0,1,''),
(98,0,1006013,'5oiR5Zyo572X6I6x5a6e5L2T5bqX55yL5Yiw5pivNDAwZ+imgeWFq+eZvuWkmu+8jOaYr+ahkeialemVv+S4neOAguS4pemAiei/meS4quaUtuWIsOWQjuaEn+inieS5n+S4jemUme+8jOaciea3oea3oeeahOmCo+enjeialeS4nemmmeWRs++8jOinpuaEn+S5n+W+iOWlve+8jOi/mOayoeeblu+8jOW6lOivpeS8muW+iOWlve+8gQ==',1492781458,0,1,''),
(99,0,1006013,'5Lil6YCJ5Zyw55CD5pel5rS75Yqo5Lmw55qE77yM5Lik5p2h5Lmf5beu5LiN5aSa5YWr5oqY77yM5q2j5aW95ZKM6ICB5aaI5LiA5Lq65LiA5p2h77yM5aSP5aSp5b+r5Yiw5ZWm77yM5oSf6KeJ5LiA5pak5Lmf5LiN5piv5b6I6JaE77yM6JqV5Lid55yL552A5Lmf5LiN6ZSZ77yM5rKh5LuA5LmI5ZGz6YGT77yM56iN5b6u6YCa6aOO5ZC',1492921360,0,1,''),
(100,0,1006013,'55yf55qE5LiN6ZSZ77yM5pS25Yiw5LmL5ZCO6ams5LiK5L2T6aqM5LqG44CC5pW05L2T5oSf6KeJ6Z2e5bi45p+U5ZKM6IiS6YCC77yM5b6I5pyJ6LSo5oSf44CC5oSf6KeJ5L2/55So5rip5bqm6ZyA6KaBMjDluqbliLAyNeW6puOAgumdnuW4uOWWnOasouOAgg==',1494116792,0,1,''),
(101,0,1006013,'5aSq6IiS5pyN5ZWm77yB5Y+I6L275Y+I6IiS5pyN77yB566A55u05aSq5YC85LqG44CC6L+Y5oOz5Lmw5LiA5aWX44CC552h6KeJ6YO95oiQ5LqG5LiA56eN5Lqr5Y+X5ZWm77yB',1493616659,0,1,''),
(102,0,1006013,'5pG4552A5ruR5ruR55qE77yM5rKh5pyJ5ZGz6YGT77yM5Y2X5Lqs6L+Z5Liq5aSp55uW56iN5b6u5pyJ54K55YeJ77yM562J5YGH5pel5rip5bqm5LiK5p2l5bCx6IO955So5LqG44CC',1493303753,0,1,''),
(103,0,1006013,'5YyF6KOF55yf5piv5aSq5Lil5a6e5LqG77yM6LSo6YeP5b6I5aW977yMMC415YWs5pak55qE55uW552A5LiN5rKJ77yM5b6I6LS06Lqr77yM5rKh5pyJ5byC5ZGz',1494552525,0,1,''),
(104,0,1006013,'5omL5oSf6LaF57qn5qOS77yM5pys5p2l5Lmw5LqGMuW6iu+8jOi/mOaLheW/g+S4jeWQiOaEj+mAgOi0p+m6u+eDpu+8jOeOsOWcqOeci+adpeaLheW/g+WujOWFqOaYr+WkmuS9meeahOWVpuOAgg==',1491823245,0,1,''),
(105,0,1006013,'5omL5oSf6LaF57qn5qOS77yM5pys5p2l5Lmw5LqGMuW6iu+8jOi/mOaLheW/g+S4jeWQiOaEj+mAgOi0p+m6u+eDpu+8jOeOsOWcqOeci+adpeaLheW/g+WujOWFqOaYr+WkmuS9meeahOWVpuOAgg==',1491823242,0,1,''),
(106,0,1006013,'5Yiw5LqG5bCx5omT5byA6KOF5aW95LqG77yM6L+Z5Liq5aSp55uW552A5q2j5ZCI6YCC44CC5p+U6L2v5Lqy6IKk44CC5Lu35qC8576O5Li944CC55yf5b+D5LiN6ZSZ44CC',1492151942,0,1,''),
(107,0,1006013,'6LaF57qn6LaF57qn6IiS5pyN44CC55So5Yi45Lul5ZCO5oSf6KeJ5Lmf5oy65YiS566X55qE44CC5biM5pyb6IO95o6o5Ye65YaN5Y6a5LiA54K555qE44CC',1494143857,0,1,''),
(108,0,1006013,'5LiB56OK55yf5piv5Liq5pyA5pyJ5oOF5oCA55qEQ0VP77yM5Lmf5piv5YW754yq5LiT5Lia5oi36YeM5pyA5pyJ5oOF5oCA55qE77yB5Lit5q+S5Lil6YCJ77yB',1490421316,0,1,''),
(109,0,1006013,'5oy65pyN5biW55qE77yM5aSp5rCU54Ot5LqG5Yia5aW9572R5LiK77yM5bCx5piv5pyJ6IKh5ZGz6YGT77yM5b6X5pm+5pm+',1492265524,0,1,''),
(110,0,1006013,'5L+d6K+B5Lil5a6e77yM6LSo6YeP5p2g5p2g55qE',1493911040,0,1,''),
(111,0,1006013,'5LiA6LW35Lmw55qE77yM5b6I5aW9',1493897875,0,1,''),
(112,0,1006013,'55yf5b+D5aW977yB6LWe5LiA5Liq77yB5pSv5oyB5Zu96LSn',1493811346,0,1,''),
(113,0,1006013,'5LiN6ZSZ',1493781488,0,1,''),
(114,0,1006013,'6LSo6YeP5b6I5aW977yM5b6I6IiS5pyN',1493694973,0,1,''),
(115,0,1006013,'5aWX6L+b5Y675LqG5b6I6IiS5pyN5ZWK44CC5bCx5piv5oOz6KaB6L+Z56eN6JaE54K555qE77yM5a626YeM55qE6YO95aSq5Y6a',1489419740,0,1,''),
(116,0,1006013,'5YyF6KOF5b6I5LuU57uG77yM57yd5ZCI5YGa5bel5aW977yM5aGr5YWF5p+U6L2v6L276JaE44CC562J5aSp5rCU5pqW5ZKM5ZCO5bCx55So',1491927029,0,1,''),
(117,0,1006013,'5pyJ54K56JaE77yM5L2G5piv5p+U6L2v6JOs5p2+44CC6YCC5ZCI6L+Z5Liq5a2j6IqC44CC',1492774857,0,1,''),
(118,0,1006013,'5oSf6KeJ6L+Y6KGM77yM6KaB55So6L+H5omN55+l6YGT5aW95LiN5aW9',1492350307,0,1,''),
(119,0,1006013,'5b6I6IiS5pyN77yM6YCC5ZCI5aSP5aSp5ZC556m66LCD5pe255uW',1492263748,0,1,''),
(120,0,1006013,'5LiJ5bGC5YyF6KOF77yM5pS25Yiw5ZCO5Yia5aW95pm05aSp5pq05pmS5LqG77yB5LiN6ZSZ',1492009133,0,1,''),
(121,0,1006014,'6LaF57qn5Zac5qyi6L+Z5Liq6KKr5a2Q77yM6L+Z5Liq57uE5ZCI5bm/5Lic5bey57uP5aSf55So5LqG77yM55yf5aW977yM5aW95YOP5LiA5py15LqR55uW5Zyo6Lqr5LiK77yM5q+U5Lul5YmN5Lmw55qE6JqV5Lid6KKr6YO95aW9772e',1492690358,0,1,''),
(122,0,1006014,'5aaI5aaI6K+06Z2e5bi45aW977yM5a2X5q+N6KKr6K6+6K6h6Z2e5bi45aW955So77yM6Z2i5paZ5b6I5aW96auY5qGj77yM5q+U5p+Q5Lqb5aSn54mM5YiS566X5aSa5LqG77yM6JqV5Lid6KKr5piv5aSp54S255qE5b6I5YW755qu6IKk',1493472093,0,1,''),
(123,0,1006014,'5oCn5Lu35q+U6LaF6auY77yM5a2Q5q+N6KKr5Zub5a2j6YCC55So77yM5a6d5a6d552h6KeJ5a655piT5Ye65rGX77yM6JqV5Lid6KKr6YCP5rCU5L+d5pqW5pyA5ZCI6YCC44CC',1492933337,0,1,''),
(124,0,1006014,'6KKr5a2Q5pS25Yiw5LqG77yM5YeJ5LqG5Lik5aSp5ZCO5bCx5byA5aeL55So5q+N6KKr77yM5q2j5ZCI6YCC77yM5b6I6IiS5pyN44CC',1492611426,0,1,''),
(125,0,1006014,'6KKr5a2Q6LSo6YeP5b6I5aW977yM6Z2e5bi46IiS5pyN77yM5q+N6KKr5q2j6YCC5ZCI5pil56eL77yM5a2Q6KKr6YCC5ZCI5aSP5aSp77yM5Yas5aSp5a2Q5q+N5ZCI5L2T77yM56ys5LiA5qyh5Zyo5Lil6YCJ77yM5b6I5qOS55qE6LSt54mp5L2T6aqM77yM5Y+I5o6l6L+e5LiL5LqG5Yeg5Y2V77yM5pyf5b6F5Lit44CC',1492483018,0,1,''),
(126,0,1006014,'5pS25Yiw5ZCO5pm+5ZGz5Lik5aSp77yM5Y6a55qE5pS26LW35p2l562J5aSp5Ya35LqG55uW77yM6JaE55qE5bey57uP55uW5LiK5LqG77yM5omL5oSf6Z2e5bi45aW977yM5Lid5ruR77yM55uW6LW35p2l5Lmf5b6I6IiS6YCC77yM5Lqy6IKk77yM6YCP5rCU77yM5qGR6JqV5Lid55qE6KKr5a2Q5a+55Lq66Lqr5L2T5aW977yM5oC75Lm',1493285797,0,1,''),
(127,0,1006014,'6LaF6IiS5pyN77yM5Lmw55qE5piv5a2X5q+N6KKr77yMMS414p6VMC4155qE77yM5Yas5aSp6IKv5a6a5b6I6IiS5pyN77yM6L+Z5Liq5a2j6IqC55So55qE5pivMS4155qE56iN5b6u5pyJ54K554Ot77yM6L+H5Yeg5aSp5bCx55SoMC4155qE5ZWm44CC5omT566X5ZCO5pyf5YaN5YWl5LiA5bqKMeWFrOaWpOeahO+8jOaEn+inieS8mum',1492821519,0,1,''),
(128,0,1006014,'6IiS5pyN77yM5p+U6L2v77yM5Y+M5bGC77yM5Yas5aSP5Lik55So77yM5aW9',1492535167,0,1,''),
(129,0,1006014,'6L+Y5piv5pyJ6YKj5LmI6YeN6YKj5LmI5rKJ772e5Y6f5pys6L+Y5Zyo5ouF5b+D5Lya5LiN5Lya5Yas5aSp55uW5LqG5bCR5LqG772e6ZO65LiK5Lul5ZCO6KeJ5b6X5bqU6K+l5Lmf5b6I5beu5LiN5aSa5LqG77yB',1493826260,0,1,''),
(130,0,1006014,'5YyF6KOF55qE5b6I55So5b+D77yM6ams5LiK5pm+5pmS6LW35p2l77yM5a2Q5q+N6KKr5Y+g5Zyo5LiA6LW35Yas5aSp5bqU6K+l5LiN5Ya35LqG77yM5pil56eL6KKr5q2j5aW955So5LiK44CC',1491096090,0,1,''),
(131,0,1006014,'5Yia5Lmw5bCx5pyJ5rS75Yqo5LqG77yM55So552A5oy65aW95YaN57uZ54i25q+N5Lmw5LiA5aWX77yM5q+U6Ieq5bex6YKj5aWX5YiS566X5aSa5LqGfn4=',1491709155,0,1,''),
(132,0,1006014,'5b6I6IiS5pyN77yM5a+55q+U5LqG572X6I6x5a6257q677yM6L+Y5piv6YCJ5oup5LqG5Lil6YCJ77yM5rKh5pyJ5Luk5Lq65aSx5pyb44CC',1494259096,0,1,''),
(133,0,1006014,'5bC65a+46Juu5aW977yB6LSo5oSf5Lmf5aW977yB6Juu5Zac5qyi77yM5Lul5ZCO5pyJ6ZyA6KaB6L+Y5Lya5YWJ6aG+55qE77yB',1492076644,0,1,''),
(134,0,1006014,'5aW96YeN5LiA5aSn5YyF77yM6LSo6YeP5bqU6K+l5LiN6ZSZ77yM55u45L+h5Lil6YCJ',1492399493,0,1,''),
(135,0,1006014,'6JqV5Lid6KKr6Z2e5bi45aW96Z2e5bi45aW96Z2e5bi45aW977yM5o2i5LiL576957uS6KKr5q2j5aW955So5a6D77yM6LaF57qn5Lid5ruR77yM5aSW6Z2i55qE6Z2i5paZ5Lmf6auY5aSn5LiK77yM5aSq5a+55b6X6LW35a6D55qE5Lu35qC85LqG77yM6ZqU552A6KKr572p6YO96IO95oSf5Yiw5Lid5ruR77yM5b+F6aG76LWe5LiA5Li',1492317293,0,1,''),
(136,0,1006014,'5rip6aao56aP6KKL5o+t56eY',1491909085,0,1,''),
(137,0,1006014,'5LiN6ZSZ5LiN6ZSZ',1491711852,0,1,''),
(138,0,1006014,'5pil5aSp5Yiw5LqG77yM5LiA55u05rKh5pyJ55So6LW35p2l77yM6KKr5oiR5aGe5Yiw5LqG5p+c5a2Q6KeS6JC96YeM77yM55yf5piv5LiN5aW95oSP5oCd77yB5a2Q5q+N6KKr5Y+v5Lul5LiA5bm05Zub5a2j6YO955So5LiK77yM5aSP5aSp55SoMC415YWs5pak55qE77yM5pil56eL55SoMS415YWs5pak55qE77yM5Yas5aSp5Lik5Li',1490278747,0,1,''),
(139,0,1006014,'6JqV5Lid6KKr5piv5Zyo55yL6L+H6K+E5Lu35ZCO5Lmw55qE77yM5omA5Lul6L+Y5piv5b6I5ruh5oSP55qE44CC5Liq5Lq66KeJ5b6X5pyJ5reh5reh55qE5b6I5q2j5bi455qE5ZGz6YGT44CC5YW25a6e5YyF6KOF5bm25LiN5piv5pyA6YeN6KaB55qE77yM6YeN6KaB55qE5piv5ZWG5ZOB55qE5ZOB6LSo44CC',1487906241,0,1,''),
(140,0,1006014,'6IO955yL5Yiw6JqV5Lid5ZGi77yM5Lik5bqK6KKr5a2Q5pyJ5ouJ5omj6IO96ZSB5L2P77yM5rKh5LuA5LmI5ZGz6YGT77yM5aSW6Z2i55qE6KKr5aWX5b6I6IiS5pyN77yM5LiN5rKJ5b6I5pqW5ZKM77yM5Lic5YyX55qE5Yas5aSp5LiA5bqK5bCx5aSf5aSf55qE5LqG77yM5o6o6I2Q77yB',1481506673,0,1,''),
(141,0,1006014,'5ZOB6LSo55yf55qE5aSq5aW95LqG77yM5pyJ5Zu+5pyJ55yf55u477yM5b+F6aG757uZ5Lil6YCJ5Y2B5LqM5YiG5aW96K+E',1480733661,0,1,''),
(142,0,1006014,'5b6I6YeN5LiA5aSn6KKL77yM5bqU6K+l5piv5LiN6ZSZ',1482036249,0,1,''),
(143,0,1006014,'',1482070624,0,1,''),
(144,0,1006014,'5Lic6KW/55yf5b6X5b6I5LiN6ZSZ77yM5Lu96YeP6Laz77yM5q+U6aKE5pyf55qE6YeN5LiA5Lqb44CC5YyF6KOF5pyJ5LiJ5bGC77yM5aSf57uT5a6e55qE44CC',1479258044,0,1,''),
(145,0,1006014,'56ys5LiA5qyh55So6JqV5Lid6KKrIOWOn+adpei/meS5iOiWhCDkvYbmmK/kv53mmpbmgKfog73nm7jlvZPlpb0g55Wl5b6u5pyJ5LiA54K55rCU5ZGzIOWPr+S7peW/veeVpQ==',1479087303,0,1,''),
(146,0,1006014,'5Lil6YCJ5Lmw6JqV5Lid6KKr5pS+5b+D',1481552248,0,1,''),
(147,0,1006014,'',1481444515,0,1,''),
(148,0,1006014,'5L2/55So5ZCO5YaN6L+95Yqg6K+E5Lu34pi6',1479694811,0,1,''),
(149,0,1006014,'6JqV5Lid6KKr6LSo6YeP55yf55qE5aW9ICDlhqzlpKnkuZ/otrPlpJ/llaY=',1479384862,0,1,''),
(150,0,1006014,'5YyF6KOF5LiN6ZSZ6LSo6YeP5bqU6K+l6L+Y6KGM5ZKM5bCP5a6d6KKr5a2Q55qE5ZGz6YGT5LiA5qC3',1479002307,0,1,''),
(151,0,1009009,'55u45L+h6L+Z5Liq5piv6auY5ZOB6LSo55qE6bmF57uS5YGa5oiQ55qE77yM5q+P5qyh5pmS5a6M6KKr5a2Q6JOs5p2+5b6X5LiN5b6X5LqG77yM5pW055CG5bqK6KKr5Lmf5pa55L6/77yM5Y+q6KaB6L276L275LiA5o6A77yM6KKr5a2Q5bCx5bmz5pW05pyN5biW5LqG77yb55uW5Zyo6Lqr5LiK5pei6L275Y+I6LS06Lqr77yM5p+U54S',1493791323,0,1,''),
(152,0,1009009,'576957uS6KKr55yf55qE5aSq5qOS5LqG77yM5b6I5pqW5b6I6L2777yM5rS75Yqo5Lu35qC8MTMwMCvlvojnu5nlipvvvIzogIzkuJTnm5bnnYDkuZ/kuI3kvJrmnInlpKrlpKflk43lo7DvvIzkubDkuobkuKTlpZfvvIzkuIDlpZfnu5nniLjlpojvvIzkuIDlpZfoh6rlt7HnlKjjgII=',1492349980,0,1,''),
(153,0,1009009,'5Yiw6LSn5pCt5Yiw6Ziz5Y+w5pmS5LqG5Yeg5aSp77yM5rKh5pyJ5byC5ZGz77yB6IiS5pyN55qE5oqx552A5LiN5oOz6LW35p2l77yB5Y675aSn5ZWG5Zy655yL5LqG77yM5ZCM5qy+6bmF57uS6YO96KaBMuWNg+Wkmu+8geafkOWuneWPiOaAleWBh+i0p++8geWPquimgeS4pemAieayoeaciei+nOi0n+aIkeeahOWFs+azqO+8geecn+W',1493036606,0,1,''),
(154,0,1009009,'5aSW5YyF6KOF5piv5aW955qE77yM5Y+v6KKr5a2Q55qE566x5a2Q5Li65ZWl54Gw6L6j5LmI5aSa6ICM5LiU56C056C054OC54OC55qE77yM6L+Y5rKh5omT5byA55yL77yM5L2G5LuT5YKo5beu6K+E5beu6K+E77yB8J+Ygg==',1488516621,0,1,''),
(155,0,1009009,'6KKr5a2Q5LiN6ZSZ77yM5LiA5aSn566x77yM5L2G5piv6L+Z5Liq566x5a2Q6IO96K6+6K6h5Liq5o+Q5omL5LmI77yM6L+Z5LmI5aSn55qE566x5a2Q5oOz6K6p5Lq65oCO5LmI5ou/5ZWK',1481472976,0,1,''),
(156,0,1009009,'5Y+M5Y2B5LiAMTI3OeS5sOeahO+8jOe7k+aenOWPkeeOsOacieS4gOWkhOmSu+e7kuOAgue9keaYk+ern+eEtuayoeacieaNoui0p+acjeWKoe+8jOaQnueskeOAguWcqOiAg+iZkeimgeS4jeimgemAgOi0pw==',1479120463,0,1,''),
(157,0,1009009,'5b6I6L275b6I5Y6a77yM546w5Zyo55So5LiN5LqG5LqG5Zuk552A5Yas5aSp55So44CC6ZmQ5pe26LStMTM1Oe+8jOS7t+agvOWunuaDoOOAgg==',1493709436,0,1,''),
(158,0,1009009,'6LaF57qn5pqW77yM5bmz5pe25b6I5oCV5Ya355qE44CC55uW6L+Z5Liq57ud5a+55aSf5LqG77yM5Y+v5Lul5oq15b6h6Zu25LiL5aW95Yeg5bqm44CC5Yqg5LiKNjBz5pqW57uS6KKr5aWX6IiS5pyN',1484446876,0,1,''),
(159,0,1009009,'',1492959754,0,1,''),
(160,0,1009009,'55u46KeB5oGo5pma55qE5oSf6KeJ44CC5L2/55So5ZCO5omN5p2l6K+E5Lu344CC5aSq5pqW5ZKM5aSq6IiS5pyN5LqG77yM5aSn5aSn5pS55ZaE5LqG5oiR6ZW/5pyf5aSx55yg55qE54q25oCB44CC6Z2e5bi46LWe77yB',1484142992,0,1,''),
(161,0,1009009,'5Y+I6L275Y+I5pqW77yM5bCx5piv6KeJ5b6X55+t5LqG54K577yf5Lil6YCJ55qE5YyF6KOF55yf5piv5p2g5p2g55qE77yM55uS5a2Q6LSo6YeP5LiN6KaB5aSq5aW95ZWK77yB',1483580259,0,1,''),
(162,0,1009009,'6LWe77yM5b6I5L+d5pqW5b6I6IiS6YCC77yM6Zmq5Ly05bqm6L+H5LqG5LiA5Liq576O5aW955qE5Yas5aSp',1491923922,0,1,''),
(163,0,1009009,'5aW95aSn55qE566x5a2Q5ZWK77yM5LiA5a6a6KaB55u05o6l5a+E5Zue5a6244CC5oiR5oOz5b2T54S255qE5a+E5Yiw5Y2V5L2N5LqG77yM5b+r6YCS5biu5oiR5b6A5LiK5pCs55qE5pe25YCZ5ZCM5LqL5Lus5Lul5Li65Y+R5Lic6KW/5LqG5ZGi44CC5b+r6YCS5bCP5ZOl5Lq655yf5aW977yM5by654OI6KaB5rGC5biu5oiR6YCB5Yi',1491182627,0,1,''),
(164,0,1009009,'5rS75Yqo5piv5Lmw55qEIOi/meS4que+vee7kuiiq+i2heWAvO+8gemdnuW4uOaaluWSjO+8geW+iOWOmiDlvojok6zmnb7vvIzmr5Tljp/mnaXnm5bnmoTms6Llj7jnmbvov5jopoHlpb3vvIznu53lr7nnianotoXmiYDlgLzvvIE=',1482065798,0,1,''),
(165,0,1009009,'6KKr5a2Q5b6I6L275p+U77yM6IiS5pyN77yM5YyF5biD6LSo6YeP5a+G5a6e77yM5Lik5Y2D5Z2X6ZKx5YC85b6X44CC',1489180200,0,1,''),
(166,0,1009009,'5Lic6KW/5b6I5aW977yM57uZ5aiD5Lmw55qE77yM5b6I6JOs5p2+77yM6ZmN5rip5Lmf5LiN5oCV5LqG77yM5o2i5LiK5paw6KKr5aWX77yM5pu05qOS77yB',1484393613,0,1,''),
(167,0,1009009,'6ICB5aaI6KGo56S66LaF57qn5pqW5ZKM77yM5ruh5oSP44CC',1488362260,0,1,''),
(168,0,1009009,'5Zac5qyi77yM6L2v6L2v55qE77yM6L+Y5rKh55So77yM5YWI5pmS5pmS6Ziz6Ziz5biM5pyb5pu06JOs5p2+',1487350609,0,1,''),
(169,0,1009009,'552h5LqG5Lik5aSp77yM6KKr5a2Q5b6I6L2777yM5L2G5piv6Z2e5bi45pqW5ZKM',1487669793,0,1,''),
(170,0,1009009,'',1487659549,0,1,''),
(171,0,1009009,'5YyF6KOF5LiA5aaC5pei5b6A55qE6auY56uv5aSn5rCU5LiK5qGj5qyh77yM576957uS6KKr5LiA5ou/5Ye65p2l5bCx5a6M5YWo6JOs5p2+5LqG77yM5omL5oSf6LaF57qn6IiS5pyN77yM55yf55qE5pyJ552h5Zyo5LqR5py16YeM55qE5oSf6KeJ5ZOf',1481248818,0,1,''),
(172,0,1009009,'6Z2e5bi45pqW5ZKM77yM5Lmf5pe25b6I5Y6a55qE5oSf6KeJ77yM5pCt6YWN5pyJ5Z6C5Z2g6LSo5oSf55qE6KKr5aWX77yM6L+Z5qC35bCx5a6M576O5LqG44CC',1482064667,0,1,''),
(173,0,1009009,'6KKr5a2Q5aSq5qOS77yM5b6I5Y6a5a6e5b6I6JOs44CC5bCx5piv5rKh5pyJ5Y+j5a2Q5omT5byA55yL5Yiw5bqV5piv5LuA5LmI57uS77yM5LiN6L+H5peg5omA6LCT5ZWm77yM55u45L+h5Lil6YCJ44CC',1480387738,0,1,''),
(174,0,1009009,'5YWr5oqY5Lmw55qEIOminOiJsuibruWlveeciyDkuZ/lvojok6zmnb4g6YCP6YCP5rCUIOi/mOayoeacieS9v+eUqCDkuI3nn6XpgZPmlYjmnpzmgI7moLcg55u45L+h572R5piT5Lil6YCJ55qE5ZOB6LSo',1479182182,0,1,''),
(175,0,1009009,'54m55Yir5Y6aIOaAgOeWkeS5sOWOmuS6hiDok6zmnb7luqblvojlpb0g5rKh5pyJ5byC5ZGzIOiZveeEtuS4jeaYr+aXoOWjsOeahCDkvYbmmK/nu53lr7nlj6/ku6XmjqXlj5cg5rKh5aSa5aSn5aOw',1479045067,0,1,''),
(176,0,1009009,'6KKr5a2Q6L+Y5rKh55So77yM5omL5pG45LqG5LiL77yM5omL5oSf5LiN6ZSZ77yM6ICM5LiU5Lmf5q+U6L6D6L276JaE77yM5pyf5b6F5pqW5pqW55qE6KKr56qd5pWI5p6c44CC57q45be+5b6I5YiS566X44CC5Lmw5LqG5Yeg5qyh5LqG77yM5oSf6KeJ5Lil6YCJ5Lqn5ZOB6LSo6YeP55yf5b+D5LiN6ZSZ8J+RjQ==',1483926903,0,1,''),
(177,0,1009009,'5rS75Yqo6YCB5LqGMjk555qE5rOh5rOh57qx5Y+v5rC05rSX56m66LCD6KKrIOeUqOS4jeS4iiDlhajmlrAyNTDovawg57KJ6Imy',1483153385,0,1,''),
(178,0,1009009,'6Z2e5bi46IiS5pyN5YOP552h5Zyo5LqR5py16YeM77yM5ou/5Ye65YyF6KOF5b6I5b+r5bCx6Iao6IOA6LW35p2l77yM5Y6a5Y6a55qE5Yas5aSp5LiN5oCV5Ya35LqG44CC',1480906130,0,1,''),
(179,0,1009009,'6KKr5a2Q5pW05L2T57qm6YeNN+aWpCDkvZPph43np7DmirHnjKvph4/ms5Ug5pG46LW35p2l5LiN6ZSZIOe7kuavlOi+g+e7hiDmr5vmnYblrZDkuI3mmI7mmL4=',1479049429,0,1,''),
(180,0,1009009,'5b6I6IiS5pyN44CC5b2T54S25Zub5Lu25aWX5Lmf5piv5Zyo5Lil6YCJ5Lmw55qE44CC55uW5Zyo6Lqr5LiK5b6I6L275Y205b6I5pqW44CC5Y2K5aSc6YO95Lya6KeJ5b6X54Ot5Ye65LqG5rGX77yM5L2G55yf55qE6KeJ5b6X5b6I5pqW5ZKM44CC5LmL5YmN5Lmw5LqG5Lil6YCJ55qE576K57uS6KKr77yM6LSo6YeP5Lmf6Juu5aW944C',1484277030,0,1,''),
(181,0,1009012,'5p6V5aS056Gu5a6e5aW977yM5omT5Y2h5YyF6KOF5ZCO77yM5b6I5b+r5a6M5oiQ5YWF5rCU77yM6JOs5p2+5p+U6L2v44CC6auY5bqm5Lmf5ZCI6YCC77yM552h6KeJ5Y+Y5b6X5b6I5Lqr5Y+X44CC',1493262654,0,1,''),
(182,0,1009012,'55yf56m65YyF6KOF5ZOm77yB5ouG5byA5ZCO5bCx5Lya6Iao6IOA6LW35p2l77yM6Kem5pG45oSf5b6I5aW977yM5bC65a+45pyJ54K55aSn77yM5p6V5aS05aWX5Yia5aW96IO96KOF6L+b5Y6744CC5piO5aSp5rSX5LqG55yL5pWI5p6c5oCO5LmI5qC377yM5b6I5a6e5oOg5ZOm77yB',1492860090,0,1,''),
(183,0,1009012,'6LaF57qn6IiS5pyN77yM6Lef5oiR5Y675L2P5LqU5pif57qn6YWS5bqX55qE5p6V5aS05LiA5qC377yM56m65rCU5oSf6LaF5by6',1493178752,0,1,''),
(184,0,1009012,'5oqx552A6K+V6K+V55yL5oOz5rOV5Lmw5LqG5LiA5Y+q77yM57uT5p6c5b6I6JOs5b6I5by577yM552h552A6Z2e5bi46IiS5pyN77yM572R5piT5p6c54S25rKh6K6p5oiR5aSx5pyb77yB5pio5aSp5Y+I5LiL5Y2V5Lmw5LqG5LiA5Y+q5ZGi77yB',1492395434,0,1,''),
(185,0,1009012,'5p6V5aS05b6I6IiS5pyN77yM6JOs6JOs55qE5L2G552h5LiL5Y675bCx5Lya5Yiw5ZCI6YCC55qE6auY5bqm77yM5piv5Zyo5b6I6IiS5pyN',1492867322,0,1,''),
(186,0,1009012,'5p6V5aS05piv5b6I5YiS566X77yM5b2T5pe25YGa5rS75Yqo5Lmf5bCx5LiJ5Y2B5p2l5Z2X6ZKx77yM55So5LqG5aSn5Y2K5bm077yM6L+Y5piv5b6I6IiS5pyN55qE77yM5Y+v5rC05rSX77yM5o+J5o+J6L2v6L2v55qE77yM5Zac5qyi5L2O5p6V55qE5Y+v5Lul6K+V6K+V',1492480774,0,1,''),
(187,0,1009012,'5LiA5Y+j5rCU5Lmw5LqG5aW95Yeg5Liq77yM6L2v57u157u155qE77yM6IiS5pyN5b6X6IiN5LiN5b6X56a75byA6Ieq5bex55qE56qd5LqG',1492876307,0,1,''),
(188,0,1009012,'5p6V5aS05b6I6IiS5pyN77yM5by55Yqb5b6I5aW977yM5pyJ5Yqp552h55yg44CC',1492350027,0,1,''),
(189,0,1009012,'5p6V5aS06LSo6YeP6Z2e5bi477yM5YGa5bel57K+5Yi277yM5Zac5qyi44CC',1492350662,0,1,''),
(190,0,1009012,'5p6V5aS05YWF5rCU5b6I5b+rIOWqsue+juWklumdouS4gOS4pOeZvueahOaeleWktA==',1492254742,0,1,''),
(191,0,1009012,'56ys5LiA5qyh5Zyo5Lil6YCJ5LiL5Y2V77yM5bCx6KKr5Lil6YCJ55qE6K6k55yf5oCB5bqm5ZyI57KJ5LqG77yB5Lil6YCJ55qE5YyF6KOF5b6I57uG6Ie077yM5p6V5aS05piv55yf56m65YyF6KOF77yM5omT5byA6KKL5a2Q5ZCO6Ieq5Yqo6byT6LW35p2l44CC5pW05L2T6L2v56Gs6YCC5Lit77yM5p6V5LiK5Y675Y+q5Lya5Y6L5Li',1492269231,0,1,''),
(192,0,1009012,'5pS25Yiw5pio5pma5bCx6K+V5LqG44CC5oSf6KeJ5aW96IiS5pyN44CCCuWlveivhO+8jOi/mOS8muWGjeasoei0reS5sOeahOOAggrkuIDotbfkubDkuoblpb3lh6DmoLfjgILmsqHmnInljZXni6zmi43mnpXlpLTjgII=',1493864383,0,1,''),
(193,0,1009012,'5YyF6KOF57K+576O77yM5L6/5a6c5Y+I5aW955qE5p6V6Iqv5aKD5YaF77yM5Lul5ZCO5bCx5Lil6YCJ5LqG44CC5b+r6YCS5ZGY5oCB5bqm5Lmf5b6I5aW98J+RjQ==',1494162742,0,1,''),
(194,0,1009012,'5aW95Zac5qyi77yB5aW96JOs5p2+77yB5aW96L2v77yB5omv5Ye65YyF6KOF6KKL56uL6ams6JOs5p2+6LW35p2l77yM5bCP5LyZ5Ly05LiN6KaB55yL54Wn54mH5Lul5Li65b6I5L2O77yM5oC75b2S5b6I6LaF5YC877yB',1492167602,0,1,''),
(195,0,1009012,'5p6V5aS05b6I5qOS77yM5p6V552A54m55Yir6IiS5pyN77yM5Lmf5rKh5pyJ5byC5ZGz77yM6aG65Liw5Y+R6LSn5Lmf5b+r55qE5rKh6K+d6K+077yM5YyF6KOF5aW977yM6YO95ruh5oSP77yM5aW96K+EfuaUr+aMgee9keaYk+S4pemAie+8gQ==',1492757185,0,1,''),
(196,0,1009012,'6LSo6YeP5oy65aW955qE77yM5bCx5piv56iN5b6u5pyJ54K55aSn77yM5omT566X5YaN57uZ54i25q+N5Lmw5Lik5Liq77yM5b2T5pe25Lmw55qE5piv6ZmQ5pe25aSf77yM546w5Zyo6LS15LqG5Y2B5Yeg5Z2X5ZGi',1494463236,0,1,''),
(197,0,1009012,'5Yir55qE6YO95oy65aW955qE77yM5bCx5piv5LiK6Z2i55qE5rSX5rak6K+05piO55yL6LW35p2l5YOP5pS+5LqG5Yeg55m+5bm055qE5biD5LiA5qC34oCm4oCm5biM5pyb5o2i5LiA56eN5biD5paZ77yM5LiN54S25oC75oSf6KeJ5oCq5oCq55qE',1493545637,0,1,''),
(198,0,1009012,'5pyA5p+U6L2v55qE576957uS5p6V77yM5b6I6L2v5p6V5LiK5Y675rKh5pyJ6auY5bqm77yM5piv5oiR6ISW5a2Q5Zac5qyi55qE6auY5bqm77yM5LuO5q2k5LiN5YaN6JC95p6V77yM5aWX5LiK5p6V5aWX576O576O5ZOS772e',1490536354,0,1,''),
(199,0,1009012,'5oiR55qE5aSp55yf55qE5aW977yM55So572R5piT5paw6Ze76YeR5biB5o2i55qE5rKh5pyJ6Iqx6ZKx77yM55yf55qE5biF5rCU44CC5o6o6I2Q5o6o6I2Q77yM6IiS5pyN6IiS5pyN44CC',1490319673,0,1,''),
(200,0,1009012,'5LiN6ZSZ77yM5b6I6JOs5p2+77yM5Lmf5oy65Y6a5a6e77yM552h552A5pyJ5pSv5pKR5oSf77yM5bCx5piv5LiN55+l6YGT77yM6L+Z5Liq6JOs5p2+5bqm5Y+v5Lul5L+d5oyB5aSa5LmF77yM5biM5pyb5Y+v5Lul6ICQ55So54K55ZCn77yB',1489245790,0,1,''),
(201,0,1009012,'5YWI5YmN5Lmw5LqG5Lik5Liq77yM5Y+I5Lmw5LqG5Lik5Liq77yM6L+Y5o6o6I2Q5pyL5Y+L5Lmw5LqG44CC5Lil6YCJ5Lic6KW/5bCx5piv5aW944CC',1492516835,0,1,''),
(202,0,1009012,'55yL6K+E5Lu35aW95aSa5Lq66K+055+uIOaIkeaeleedgOato+WlvSDkuZ/lvojmnInlvLnmgKcg6Z2e5bi45Zac5qyiIOi/mOS4jei0tQ==',1492325334,0,1,''),
(203,0,1009012,'5p6V5aS05b6I5qOS44CC5L2G5piv5Zac5qyi552h55+u5LiA54K555qE5Lq677yM6L+Z5Liq5p6V5aS05oiW6K645aSq6auY44CC5LiN6L+H6LSo6YeP5YyF6KOF6YO95piv5rKh5b6X6K+055qE44CC5Lil6YCJ5b6I5qOS44CC57un57ut5Yqg5rK55ZCn44CC',1492419183,0,1,''),
(204,0,1009012,'5Lqs5LiccGx1c+S8muWRmO+8jOeOsOWcqOWvueS4pemAieS5n+W+iOWWnOasou+8jOiKguecgeS6huaMkemAieS4nOilv+eahOaXtumXtO+8jOWWnOasoueahOivneWPr+S7peaUvuW/g+S4i+WNleOAguWlveeahOeUn+a0u++8jOayoemCo+S5iOi0teOAgg==',1491032284,0,1,''),
(205,0,1009012,'5ZKM5aW955qE5Lic5Lic77yM55yL552A5b6I5pyJ6LSo5oSf77yM5LiA5LiL5Lmw5LqGNOWPqu+8jOW3sue7j+eUqOS4iuS6hu+8jOaflOi9r+iIkuacje+8jA==',1489843338,0,1,''),
(206,0,1009012,'5p6V5aS05pyJ54K555+u77yM5LiN5bu66K6u5Lmg5oOv6auY5p6V5aS055qE5pyL5Y+L5Lmw77yM5Y+m5aSW5LiK6Z2i5rKh5pyJ5ouJ6ZO+77yM5Lul5ZCO5riF5rSX55qE5pe25YCZ5pyJ5Lqb6bq754Om44CC6LSo6YeP6Juu5aW955qE77yM572R5piT5Lil6YCJ5Yqg5rK5',1488169878,0,1,''),
(207,0,1009012,'6Z2e5bi45p+U6L2v6IiS5pyN77yB6L2v6L2v55qE77yM5L2G5piv552h6KeJ55qE5pe25YCZ5Y+I6IO95aSf5pSv5pKR6LW35p2l77yM5LiN6ZSZ5ZOm77yB',1494207349,0,1,''),
(208,0,1009012,'5YyF6KOF5aSq5aW95LqG77yM54mp5rWB5Lmf5b6I5b+r77yM5p6V5aS05b6I5aW955So77yM6auY5bqm5ZCI6YCC77yM5aW96K+E77yB',1493286330,0,1,''),
(209,0,1009012,'5p6V5aS05LiN6ZSZ77yM5b6I6L2v44CC',1494506989,0,1,''),
(210,0,1009012,'5b6I6L2v77yM5b6I6IiS5pyN',1494325584,0,1,''),
(211,0,1009013,'5p6V5aS05b6I5qOS77yM6JOs6LW35p2l5pyJMTfjgIE45Y6Y57Gz6auY77yM5p6V5LiL5Y675pyJNy04Y23pq5jvvIzlvojova/lj4jkuI3kvJrlvojkvY7vvIzoiJLmnI3vvIE=',1493479889,0,1,''),
(212,0,1009013,'5YyF6KOF5b6I57uT5a6eIOeuseWtkOS5n+W+iOacieeJueiJsiDlv6vpgJLov4fmnaXkuIDngrnpg73msqHmnInljovlnY8g5p6V5aS05piv5Y6L57yp6YKj56eN55qEIOS4gOaJk+W8gOWwseWPmOW+l+WlveWkpyDlvojova/lvojoiJLmnI0g55u45L+h5Lil6YCJIOS7peWQjuiCr+WumumVv+WJgeaJiw==',1493035193,0,1,''),
(213,0,1009013,'6Z2e5bi45LiN6ZSZ77yM5omT5byA5ZCO56uL5Y2z6Iao6IOA6LW35p2l5LqG77yM6Z2i5paZ5oy654m55q6K55qE77yM552h6LW35p2l5Lmf5b6I6IiS5pyN77yM6ISW5a2Q5LiN5Lya55eb5LqG77yB5qOS5qOS5ZOS77yB',1492567274,0,1,''),
(214,0,1009013,'55u05o6l5pS+5rSX6KGj5py65LqG44CC5rKh6Zeu6aKY44CC56iN56iN5LiA5ouN5omT5bCx5oGi5aSN5Y6f5Z6L5LqG44CC5b6I5Zac5qyi77yM5YWz6ZSu5piv6ZqP5oSP5rSX5LiN5Y+Y5b2i',1493035350,0,1,''),
(215,0,1009013,'6LSo6YeP5b6I5aW95ZWK77yM5LiA5qyh5Lmw5LqG5Lik5Liq77yM55So5LqG5aW95LmF5LqG5omN5p2l6K+E5Lu377yM5piv5aW95Lic6KW/5ZOm77yM5L+h6LWW5Lil6YCJ77yM5Y+R6LSn5b+r77yM6aG65Liw5b+r6YCS5Lmf5piv6ZqU5aSp5Yiw77yM5qOS5qOS5ZOS77yM5ruh5YiG',1493042555,0,1,''),
(216,0,1009013,'5Liq5Lq65LiN5Zac5qyi5p6V6auY5p6V5aS077yM6L+Z5Liq5p6V5aS05aSn5bCP55Wl5aSn77yM5L2G6KeJ5b6X5b6I5aW977yM5p6V5LiK5Y675Lya5Ye56Zm35Ye65ZCI6YCC55qE5aSn5bCP5rex5bqm77yM5b6I6IiS5pyN44CC5pep6LW35ouN5LiA5ouN5bCx5Y+Y5Zue6byT6byT6aWx5ruh55qE5b2i54q25LqG77yB5aSn6LWe',1492914882,0,1,''),
(217,0,1009013,'5p6V5aS06LaK55So6LaK6JOs5p2+77yM6Kem5oSf6Z2e5bi45aW977yM5b6I5ruh5oSP5LqU5YiG',1492338024,0,1,''),
(218,0,1009013,'5rKh5pyJ5rCU5ZGz77yM5Y6a5a6e44CB6JOs5p2+44CC5YWI5pS26LW35p2l77yM5Yas5aSp55So44CC',1492482932,0,1,''),
(219,0,1009013,'6L+Z5Liq55yf55qE5b6I5oOK5ZacIOW+iOiIkuacjeS5n+W+iOi9ryDourrnnYDmirHnnYDpg73lvojoiJLmnI0g5o6o6I2QIOWMheijhei0qOmHj+aEn+inieS5n+W+iOajkg==',1493877604,0,1,''),
(220,0,1009013,'6YWN5ZCI5a6c5a6255qE5p6V5aS05aWX77yM55yf55qE5b6I6IiS5pyN77yM5Zue5by55b+r77yM5YaF6Zm35rex5bqm5Lmf5Yia5aW95Y+v5Lul5om/5omY6aKI6YOo',1493651405,0,1,''),
(221,0,1009013,'5p6V5aS05b6I5p+U6L2v77yM5p6V5LiK5b6I5pSv5pKR5Yqb5b6I5aW95b6I6IiS5pyN44CC5Y+v5Lul55u05o6l5rC05rSX5b6I5pa55L6/77yM56Gu5a6e5piv5qy+5aW954mp77yB',1493620758,0,1,''),
(222,0,1009013,'5Lil6YCJ56ys5LiA5Y2V77yM54mp5rWB5p6B6YCf77yM5a+55q+U5Lul5ZCO5oiR5omN55+l6YGT6L+Z5piv5Lil6YCJ77yM5aW955qE55Sf5rS75LiN55So5aSq6LS1',1493616824,0,1,''),
(223,0,1009013,'566A55u05LiN6IO95YaN5ruh5oSP77yB5p6V5aS05aSq6IiS5pyN5LqG77yB5Lul5YmN55qE5p6V5aS0552h552A5YGa5Zmp5qKm77yM6L+Z5Liq5p6V5aS05q+P5aSp552h55qE6LiP5a6e5LiN5oOz6LW38J+YgeeCkum4oeWWnOasou+8gQ==',1488931877,0,1,''),
(224,0,1009013,'6Juu5aW955qE44CB55u45L+h5Lit5Zu98J+HqPCfh7Pkurroh6rlt7HkuZ/lj6/ku6XlgZrlh7rpq5jlk4HotKjnmoTkuqflk4HjgIHlm73kuqflk4HniYzliqDmsrk=',1490876447,0,1,''),
(225,0,1009013,'56ys5LqM5Liq5p6V5aS05LqGIOecn+eahOW+iOiIkuacjSDmr5Q1OeWFg+mCo+asvuimgei9r+W+iOWkmiDoiJLmnI0=',1493631246,0,1,''),
(226,0,1009013,'5p6V5aS05b6I5aSn5b6I5aSn44CC44CC6L+Y5rKh5p6V77yM5bqU6K+l5LiN6ZSZ44CC',1494337826,0,1,''),
(227,0,1009013,'6LaF57qn6L2v6LaF57qn5qOS5ZWKIOesrOS6jOasoeS5sOaeleWktOS6hiDkuYvliY3pgqPmrL7lsLHlvojova/lvojoiJLmnI0g6L+Z5qyh5Lmf5LiN6ZSZIOWvuee9keaYk+eahOWlveaEn+W6puaYr+S7juWQjOWtpuWunuS5oOmjn+WgguW3qOWlveWQg+W8gOWni+eahCDlk4jlk4jnvZHmmJPnmoTkuJzopb/pg73pnaDosLHvvIHvvIE',1494252281,0,1,''),
(228,0,1009013,'5oCO5LmI6K+05ZGi77yM5p6V5aS05a6e5Zyo5piv5aSq5aSn5LqG77yM5Y+v6IO95Zyo5oiR55qE5Y2V5Lq65bqK5LiK5qC85qC85LiN5YWl77yM6IO95YGa5Yiw55yf56m65YyF6KOF77yM5Lmf566X5piv6YWN55qE6LW36L+Z5LmI6LS155qE5Lu35qC877yB6aG65Liw5YyF6YKu77yM5Y2z5L2/6LS177yM5pyJ6L+Z5LmI5aW955qE5ZO',1494219821,0,1,''),
(229,0,1009013,'6L+Z5piv5oiR55So6L+H5pyA5aSn55qE5p6V5aS08J+Ytg==',1493958937,0,1,''),
(230,0,1009013,'6LaF57qn5Zac5qyi77yM5p6V5aS05b6I6L2v77yM5bCx5piv5oiR5oOz5Lmw55qE6L+Z56eN772e5LuO5q2k56eN6I2J572R5piT5Lil6YCJ772e',1491921439,0,1,''),
(231,0,1009013,'5p6V5LiK5Y675oSf6KeJ5LiN6ZSZ77yM5piv5LiA5L2T55qE5LiN6IO95ouG77yM5YyF6KOF5b6I5aW977yM54mp5rWB5b6I5b+r',1491882644,0,1,''),
(232,0,1009013,'5p6V5aS06auY5bqm5q2j5aW977yM6L2v6L2v55qE',1493862927,0,1,''),
(233,0,1009013,'5b6I6IiS5pyN77yM56m65rCU5oSf77yM5Zac5qyi55+u5LiA54K554K55p6V5aS055qE6YCJ6L+Z5Liq',1493655305,0,1,''),
(234,0,1009013,'6LSn5pS25Yiw5LqG77yM55yL552A5LiN6ZSZ77yM5Yay552A5oqX6I+M6Ziy6J6o5Lmw55qE77yM5pyf5b6F5LiN5LiA5qC355qE5pWI5p6c',1487315172,0,1,''),
(235,0,1009013,'5b6I6JOs5p2+77yM5qOS5qOS5ZOS',1493672550,0,1,''),
(236,0,1009013,'5b6I5p+U6L2v',1493731746,0,1,''),
(237,0,1009013,'6L2v55qE5LiN6KGM77yM552h552A5oy66IiS5pyN77yM5Zac5qyi56Gs55qE5LiN6KaB5Lmw',1493103572,0,1,''),
(238,0,1009013,'6IiS5pyN',1493537698,0,1,''),
(239,0,1009013,'6LaF57qn5qOS77yM5pio5aSp5Yia5Yiw5bCx55u05o6l55So5LqG77yM552h55qE5b6I6L275p2+77yM55u05o6l5YGa5LqG5LiA5Liq576O5qKm77yB',1489447015,0,1,''),
(240,0,1009013,'5b6I6IiS5pyN77yM5q+U6L6D6L2v55qE77yM5ZOI5ZOI5ZOI',1493271917,0,1,''),
(241,0,1009024,'5aW96IiS5pyN77yB5Y+v5Lul5Y+Y5o2i5ZCE56eN5b2i54q277yB5q+U5oiR5LmL5YmN5Zyo5pyL5Y+L5a6255yL5Yiw55qE5oeS5Lq65rKZ5Y+R5aW95b6I5aSa5ZWK77yB',1493254802,0,1,''),
(242,0,1009024,'5ZKMTVVKSeeahOS4gOavm+S4gOagt++8jOaAp+S7t+avlOWkn+mrmO+8jOeMq+WSquS6sua1i+iIkuacjeOAgg==',1493032215,0,1,''),
(243,0,1009024,'5a626YeM5Lik5Liq5oeS5Zyo5Zyw5LiK55qE5rKZ5Y+R77yM6Jm954S25YW25Lit5LiA5Liq5piv54uX5rKZ5Y+R44CC5oSf6KeJ6LefTVVKSSDnmoTlvojlg4/vvIzmsqHmnInpgqPkuYjova/mm7TmnInlnovkuIDkupvvvIzoiJLpgILmhJ/kuI3plJnvvIzogIHlhazlrozlhajpmbflnKjov5nkuKTkuKrmspnlj5Hph4zotbfkuI3mnaX',1493132558,0,1,''),
(244,0,1009024,'54mp5rWB5b6I5b+r77yM5YyF6KOF566A5Y2V77yM5L2G5piv5a6e54mp6LSo6YeP5b6I5LiN6ZSZ77yM5Ye65LmO5oiR55qE5oSP5paZ77yM5Z2Q5LiK5Y675q+U5oOz6LGh55qE6IiS6YCC77yM5qC55o2u5L2g55qE5Z2Q5ae/6LCD5pW05b2i54q277yM5pSv5pKR6L2v56Gs5bqm5Lmf5b6I5ZCI6YCC77yM6Lqr5L2T5o6l6Kem6Z2i55q',1492795376,0,1,''),
(245,0,1009024,'6L+Z5Liq5rKZ5Y+R55yf5piv5aSq5aW955So5LqG77yM5Y+v5aGR5oCn5p6B5by677yM6ZqP5L6/55So5LuA5LmI5ae/5Yq/5Z2Q5LiK5Y676YO95b6I6IiS5pyNfg==',1492362101,0,1,''),
(246,0,1009024,'6L+Z5Liq5ZKMTVVKSSDnmoTmsqHku4DkuYjlt67liKvvvIzlnZDlnKjkuIrpnaLlvojoiJLmnI3vvIzlrrbph4zmlL7kuIDkuKrlvojotZ4=',1492773294,0,1,''),
(247,0,1009024,'5LiA55u05b6I5Zac5qyi6L+Z5Liq5qC35byP55qE5oeS5Lq65rKZ5Y+R77yM6LaF57qn5Zac44CC5pys5p2l5omT566X562J5paw5oi/5a2Q6KOF5aW95LqG77yM5Lmw5Lik5Liq5oeS5Lq65rKZ5Y+R77yM5Y+v5Lul5ZKM5aW55LiA5Lq65LiA5Liq55ir5Zyo5oi/6Ze06YeM55yL55S16KeG77yM5ZCs6Z+z5LmQ77yM5oiW6ICF5LuA5Lm',1492479050,0,1,''),
(248,0,1009024,'5aSq5qOS5LqG77yM5ZOI5ZOI77yM6Lq65LiK5Y675b6I6IiS5pyN77yM5LyR6Zey55So',1492385282,0,1,''),
(249,0,1009024,'5b6I5ruh5oSP77yM5pS+5Zyo5a6i5Y6F5rKZ5Y+R5peB6L6577yM6aKc6Imy5b6I5pCt77yM6Ieq5bex6KeJ5b6X5q+U5peg5Y2w6Imv5ZOB55qE5oeS5Lq65rKZ5Y+R5LiN5beu5ZOm77yM5YC85b6X5o6o6I2Q772e',1494400553,0,1,''),
(250,0,1009024,'6LSo6YeP6Z2e5bi455qE5aW977yM56ys5LiA5qyh55So5Lil6YCJ77yM5pWI5p6c6LaF5LmO5oOz6LGh55qE5aW944CC6YCB55qE6Zuo5Lye5Lmf5LiN5piv57OK5byE55qE44CC6LSo6YeP6LaF57qn5aW9',1493475496,0,1,''),
(251,0,1009024,'5Lic6KW/5LiN6ZSZ77yM5oSf6KeJ5ZKMTVVKSeeahOW3rui3neS4jeWkp++8jOiAjOS4lOebuOWvueW+iOS+v+WunOOAgumdnuW4uOespuWQiOS6uuS9k+W3peeoi+WtpuOAguW4jOacm+iDveWHuuabtOWkmuS8mOengOS6p+WTgeOAgg==',1493723728,0,1,''),
(252,0,1009024,'5Z2Q5LiK5Y676IiS6YCC77yM5q+UTVVKSeeahOeojeacieW3ruWIq++8jOavlOi+g+S7t+agvOacieWlveWkp+W3ruW8gu+8jOWBmua0u+WKqOS4gOasoeS5sOS6hjLkuKrvvIzlgLzvvIE=',1494039192,0,1,''),
(253,0,1009024,'5Lmw5p2l5b6I5LmF5LqG4oCm4oCm6Z2e5bi46IiS5pyN77yM6Lq65LiL5bCx5LiN5oOz6LW35p2l77yM57KJ6Imy5Lmf5q+U6L6D6ICQ6ISP77yM5Lik5Liq5Lq65Lmf5Y+v5Lul6Z2g',1493098450,0,1,''),
(254,0,1009024,'6Z2e5bi45ruh5oSP77yM55yL5LiKbXVqaeW6l+mHjOeahOS4gOebtOS4i+S4jeWOu+aJi++8jOi/measoeS4pemAieWBmua0u+WKqOWwseS5sOS6huOAguayoeWRs+mBk++8jOW+iOiIkuacjQ==',1492225435,0,1,''),
(255,0,1009024,'5omT5byA5Z2Q5LqG5LiA5LiL5Y2I77yM5Z2Q552A6IWw6Z2e5bi46IiS5pyN77yM5L2G5pW05L2T6IiS6YCC5bqm6IKv5a6a5LiN5aaC5aSn5rKZ5Y+R77yM6IOc5Zyo54G15rS76L275L6/5Y+v6ZqP5oSP5oqY6IW+44CC',1492244960,0,1,''),
(256,0,1009024,'5LiA5aSn5Z2o77yM5Y2V54us5pS+5Zyw5LiK5b2T5Yez5a2Q5rKh5pyJ5L6d6Z2g77yM5LiN6IiS5pyN44CC5L2G5pS+5rKZ5Y+R5LiK5YGa5Z6r6IOM5b6I6IiS5pyN77yM5L2G5pyJ5Lqb5Y2g5Zyw44CC',1491993856,0,1,''),
(257,0,1009024,'55ir5LiK5Y675bCx5Ye65LiN5p2l5LqG77yM5b6I6IiS5pyN77yM6LefbXVqaeW3rui3neS4jeWkp++8jOWbnuWktOS5sOS4quWll+aNouaNouminOiJsuWPiOaYr+WPpuS4gOS4qumjjuagvOOAgg==',1491824929,0,1,''),
(258,0,1009024,'5ZKMTVVKSeavq+aXoOW3ruWIq++8jOi0qOmHj+ajkuS7t+agvOWNtOWPquacieS4gOWNiu+8jOaOqOiNkOW+iOWkmuaci+WPi+S5sOS6huOAguecn+aYr+i2heiIkuacje+8jOWutumHjOWWteS5n+WWnOasoui6uuS4iumdog==',1491557209,0,1,''),
(259,0,1009024,'5b6I6IiS5pyN77yM6L+Z5Liq5Lu35L2N6L+Y5piv5q+U6L6D5YC855qE77yM6LefbXVqaeWcqOWdkOaEn+S4iui/mOaYr+acieS6m+W3ruW8gu+8jOiDnOWcqOaAp+S7t+avlA==',1490613198,0,1,''),
(260,0,1009024,'5q+U6Imv5ZOB55qE5aGr5YWF54mp5aSa5pG45LiK5Y676LSo5oSf5beu5LiN5aSa77yM6IiS6YCC5bqm5q+U6Imv5ZOB5beu5Lqb77yM5a2p5a2Q55qE5Y6f6K+d5bCx5piv5rKh5pyJ6Imv5ZOB55qE6IiS5pyN44CC',1492641810,0,1,''),
(261,0,1009024,'5rKZ5Y+R5oiR5b6I5Zac5qyi77yM5Yia5Yia5pS25Yiw5bCx5L2T6aqM5LqG5LiA5LiL77yM56Gu5a6e57uZ5Lq65LiA5Liq5oOK5Zac77yM5oCO5LmI5Z2Q6YO95b6I6IiS5pyN44CC',1493952897,0,1,''),
(262,0,1009024,'5oSf6KeJ6LefbXVqaeeahOi/mOaYr+S4jeS4gOagt+OAguayoeaciW11amnnmoTmn5Tova/jgILkuI3ov4flvojlpb3kuobvvIzku7fmoLzkvr/lrpzvvIzlvojliJLnrpc=',1492090264,0,1,''),
(263,0,1009024,'5b6I5aW977yM6Jm954S25rKh5pyJbXVqaeeahOeIve+8jOS9huaYr+S7t+agvOW3rui/meS5iOWkmueahOaDheWGteS4i+i/mOaYr+mdnuW4uOa7oeaEj+eahA==',1492773446,0,1,''),
(264,0,1009024,'5YGa5bel56Gu5a6e5q+U5reY5a6d55qE5aW977yM5L2G5piv5q+U5peg5Y2w6KaB56Gs54K577yM6IiS6YCC5bqm5beu54K577yM5aWX5a2Q5paZ5a2Q5b6I5aW977yM5oC75b6X5p2l6K+05LiN6ZSZ55qE44CC',1490143338,0,1,''),
(265,0,1009024,'5b6I6IiS5pyN55qE5oeS5Lq65rKZ5Y+R77yM5pS+5Zyo5a6i5Y6F5bCP6Ziz5Y+w77yM5b+N5LiN5L2P5bm75oOz5pCs5a625ZCO5Z2Q552A6K+75LiA5pys5Lmm5Zad5LiA5p2v5ZKW5ZWh5pmS5LiA5pmS5aSq6Ziz55qE5bm456aP55Sf5rS75ZWK77yB',1490782651,0,1,''),
(266,0,1009024,'56Gu5a6e5YGP56Gs77yM5rKh5pyJ5LiN5oOz6LW35p2l55qE5oSf6KeJ44CC5ou/5o6J5aSW5aWX5oSf6KeJ5bCx5p2l5LqG44CC6K+35Zyo5YGa5aSn54K577yM5aSW5aWX5YaN5aSn54K577yM5L2T6aqM5LiA5a6a5Lya5o+Q5Y2H5LiN5bCR44CC',1491892905,0,1,''),
(267,0,1009024,'5aSW5aS055qE6L2v5aWX6L+Y5qyg5aSn77yM6Lef5peg5Y2w6Imv5ZOB5q+U5Z2Q6L+b5Y6755qE5oSf6KeJ77yM6L+Y5piv6YKj5Liq6Zm35YWl5oSf5aW977yM6L+Z5Liq55Wl56Gs77yM6Z2i55qu5LiK55qE6L2v6Z2i5aSa54K55Lya5aW944CC',1493299670,0,1,''),
(268,0,1009024,'6IiS5pyNIOaDrOaEjyDkuI3ov4fouqvkuLrkuKTnmb7mlqTnmoTog5blrZDmsqHkurrmi4nkuIDmiornlK3mg7PkvJjpm4XnmoTotbfmnaUuLg==',1493873569,0,1,''),
(269,0,1009024,'5b6I6IiS5pyN77yM5Z2Q5LiL5ZCO5LiN5oOz6LW35p2l4oCm6aKc6Imy5LiN5piv5b6I5aW955yL77yM5YaN5Lmw5LiA5Liq5aWX5o2i552A55Sofg==',1490680208,0,1,''),
(270,0,1009024,'5pys5p2l5Lul5Li66L+Z5Liq6aKc6Imy6ICQ6ISP77yM57uT5p6c5q+b5q+b57KY5LiK5Y675b6I5piO5pi+77yM5Z2Q552A6L+Y566X6IiS5pyN5L2G5piv5rKh5pyJbXVqaeeahOmZt+eahOa3sQ==',1486653730,0,1,''),
(271,0,1010000,'5aSp54S25LmL54mpLuminOiJsue6r+atoy7miYvmhJ/mn5Tmu5Eu57qv576K5q+bLue7neWvueebuOS/oeS4pemAiS4uLi7kuKXmoLznrZvpgIk=',1493264302,0,1,''),
(272,0,1010000,'5Yqg5Y6a5qy+5bm25LiN5Y6a77yM5LiN6L+H5L+d5pqW5pWI5p6c6L+Y5piv5LiN6ZSZ55qE77yM5pG46LW35p2l5omL5oSf5Lmf5b6I6IiS5pyN77yM5q+v5a2Q5aSn5bCP5Lmf5ZCI6YCC44CC',1492328000,0,1,''),
(273,0,1010000,'6LaF5Zac5qyi6L+Z5qy+576K5q+b5q+v77yM5q+P5aSp6Lq65rKZ5Y+R5pe26YO955uW5Zyo6Lqr5LiK77yM6Z2e5bi45L+d5pqW44CC54yr5Lmf5b6I5Zac5qyi44CC',1490855290,0,1,''),
(274,0,1010000,'6aKc6Imy5qy+5byP5p2Q6LSo6YO95piv5oiR5Zac5qyi55qE44CC',1491538162,0,1,''),
(275,0,1010000,'6aOO5LiA6Iis55qE54mp5rWB6YCf5bqm77yM57uZ6LWe77yB5Lqn5ZOB5Lmf5b6I5aW977yM56Gu5a6e5b6I5pqW5ZKM77yB',1488939699,0,1,''),
(276,0,1010000,'5omL5oSf5b6I5aW977yM5LuK5aSp5ou/5Y675bmy5rSX5LiA5LiL5bCx5Y+v5Lul6YCB57uZ5amG5amG5LqG4pyM77iP',1489373962,0,1,''),
(277,0,1010000,'6LSo5oSf5LiN6ZSZ77yM6LaF5aSn77yM6LaF5pqW77yM5pyJ6IKh576K5ZGz8J+YgfCfmIE=',1489244715,0,1,''),
(278,0,1010000,'5YyF6KOF5b6I57KX57OZ5ZWK77yM5oSf6KeJ6YO95LiN5YOP5Lil6YCJ55qE5LqG44CC5qy+5Z6L5b6I6Z2T77yM5pGp5pOm55qu6IKk5Lmf5LiN55eS77yM5aSf5Y6a5Y+v5Lul5ou/5p2l5Z6r5bqK5Y2V5LiL6Z2i44CC',1481717857,0,1,''),
(279,0,1010000,'6Z2e5bi45LiN6ZSZ55qE5LiA5qy+576K5q+b5q+v77yM5Yas5aSp56qd5Zyo5rKZ5Y+R6L+95Ymn5b+F5aSH77yM5YC85b6X5YaN5YWl5omL',1486201275,0,1,''),
(280,0,1010000,'5Lil6YCJ6LSo5LyY77yM5YC855qE5oul5pyJ44CC',1487499290,0,1,''),
(281,0,1010000,'5oy65Y6a5a6e55qE77yM5LiN6ZSZ',1486468112,0,1,''),
(282,0,1010000,'5b6I6IiS5pyNIOi0qOmHj+S4jemUmQ==',1485352584,0,1,''),
(283,0,1010000,'6L+Z5piv5Zyo5Lil6YCJ5LiK5Lmw55qE5pyA6LS155qE5LiA5qyh5Y2V5Lu355qE5Lqn5ZOBIOebruWJjeS4uuatou+8jOeci+S4iuWOu+i/mOS4jemUmeOAguiZveeEtuivtOW3sue7j+efpemBk+S7lueahOWwuuWvuOS6hu+8jOS9huaYr+eci+WIsOS7luacrOWwiueahOaXtuWAme+8jOi/mOaYr+inieW+l+W+iOWkp+OAgg==',1484460066,0,1,''),
(284,0,1010000,'6ZOy5a2Q5oiR5b6I5Zac5qyi77yM55uW5q+v5oiR6ICB5amG5Zac5qyi77yM5LiN6L+H5rKh5oOz6LGh55qE5Y6a',1482801530,0,1,''),
(285,0,1010000,'5q+v5a2Q5b6I5LiN6ZSZ77yB5YyF6KOF56iN5pi+566A6ZmL',1482920966,0,1,''),
(286,0,1010000,'5q2j5aW95Zyo5LiL6Zuo5aSp5Yiw5LqG',1482284542,0,1,''),
(287,0,1010000,'5ruh5oSP77yB77yB77yB',1482155125,0,1,''),
(288,0,1010000,'5b6I5Y6a',1481617889,0,1,''),
(289,0,1010000,'6YO96Z2e5bi45Zac5qyi77yB5p+U6L2v6IiS6YCC77yB5YWo576K5q+b55qE',1479437783,0,1,''),
(290,0,1010000,'5aW977yM5a6M576O',1476664910,0,1,''),
(291,0,1010000,'5oSf6KeJ6L+Y5Y+v5Lul77yM5bCx5piv5rKh5pyJ56S855uS5YyF6KOF77yM5bCx566A5Y2V5LiA5Liq5aGR5paZ6KKL6KOF55qE44CC',1473062843,0,1,''),
(292,0,1010000,'6LWg5ZOB5LiN57uZ6KGl5a+E77yM5Z6D5Zy+5pyN5Yqh77yM5Lul5ZCO5oOz6L2s5Y675b+F6KaB5Lmw5LqG',1483165820,0,1,''),
(293,0,1010000,'6Z2e5bi45pyJ5Lu96YeP44CB5pyJ6LOq5oSf55qE5LiA5qy+576K5q+b55uW5q+v44CC6IiS6YGp5bqm5Lmf5b6I5aW977yM56qp5Zyo5rKZ55m86YeM55qE6aaW6YG455uW5q+v44CC5YC85b6X5o6o6Jam77yB',1494079798,0,1,''),
(294,0,1010000,'6Z2e5bi45Y6a5a6e77yM55yf5p2Q5a6e5paZ44CCCuWkqeawlOa4kOeDre+8jOi/mOayoeeUqOS4iu+8jOS9huaEn+inieaYr+mdnuW4uOWlveeahOi0qOmHjw==',1494217839,0,1,''),
(295,0,1010000,'6L+Z5qy+6Jm954S25rKh5pyJ5YW25LuW55qE57K+6Ie077yM5L2G5piv5Y+I5Y6a5Y+I6L2v77yM5b6I6IiS5pyN77yM6ZmQ6LSt5pe25Lmw6L+Y5piv6Juu5a6e5oOg55qE',1491135028,0,1,''),
(296,0,1010000,'5b6I5aW977yM5oCn5Lu35q+U6LaF6auY77yM5ZKM5oiR5YmN5Lik5bm05Lmw55qE6KW/54+t54mZ5Lqn5q+b5q+v566A55u05LiA5qih5LiA5qC377yM5aSq6LWe',1492306311,0,1,''),
(297,0,1010000,'5b6I5Y6a5a6e77yM5b6I5aSn44CC5a626YeM5pyJ5pqW5rCU55qE5pe25YCZ55uW552A5bCP552h5LiA5Lya5Y2I6KeJ6Z2e5bi46IiS5pyN44CC5bCx5piv5LiN55+l6YGT6K+l5oCO5LmI5riF5rSX44CC',1487820751,0,1,''),
(298,0,1010000,'5Lmw57uZ6ICB5aaI5Yas5aSp5Z2Q5Zyo5bqK5LiK55yL55S16KeG5oqr6IKp6IaA5L+d5pqW55So55qE44CC6ICB5aaI55So5LqG5b6I5byA5b+D44CC',1488553119,0,1,''),
(299,0,1010000,'5oy65Y6a5a6e55qE576K5q+b5q+v77yM6aKc6Imy55yL6LW35p2l5Lmf6Z2e5bi455qE6Ieq54S277yM5rKh5pyJ6L+H5bqm5p+T6Imy77yM6YCC5ZCI6YWN5ZCI6KKr5a2Q5LiA6LW35L2/55So',1490273895,0,1,''),
(300,0,1010000,'5YyF6KOF57K+6Ie077yM5YGa5bel6Z2e5bi45aW977yM6aKc6Imy5Lmf5q2j44CC572R5piT5Lil6YCJ5aW96LWe77yM5Lul5ZCO6L+Y5Lya57un57ut5YWz5rOo44CC8J+RjfCfkY3wn5GN5pyA5Li76KaB5aaI5aaI5b6I5Zac5qyi44CC',1487325119,0,1,''),
(301,0,1010001,'5b6I5LiN6ZSZIOavlOi+g+aflOi9r+aaluWSjCDmmKXnp4vnlKjliJrlpb0g6L+Z5Liq5Lu35L2N566X5piv54mp5pyJ5omA5YC8',1490318622,0,1,''),
(302,0,1010001,'6LaF5Ye65oOz6LGh55qE5aW977yB5Y+I5aSn5Y+I5pqW77yM5Yas5aSp5a6i5Y6F55yL55S16KeG55qE5pyA5L2z6KOF5aSH',1488289502,0,1,''),
(303,0,1010001,'5LuK5aSp5pS25Yiw5LqG77yM6ICB5amG5b6I5Zac5qyi8J+YmA==',1486012448,0,1,''),
(304,0,1010001,'6L+Z5LiL55yL55S16KeG5LiN55So5ouF5b+D5Ya76IW/5LqG',1481717033,0,1,''),
(305,0,1010001,'5oiR5b6I5Zac5qyi77yM54yr5pu05Zac5qyi44CC44CC',1479967251,0,1,''),
(306,0,1010001,'5q+U5Zu+54mH55m95LiA54K5IOacieeCueaAleiEjyDlpb3lpKcg5pqW5ZKM',1476619836,0,1,''),
(307,0,1010001,'5Y+v6IO95piv5Yia5byA5aeLIOeahOe8mOaVhe+8jOacieeCueaOieavm++8jOW4jOacm+W+gOWQjuS8muWlveeCuSDov5jmmK/lpKflipvmlK/mjIHkuKXpgIkg5biM5pyb5LiN5b+Y5Yid5b+DIOaJvuWvu+WIsOabtOWkmuWlveS6p+WTgQ==',1490071917,0,1,''),
(308,0,1010001,'5oy66L2v77yM5bCx5piv57q555CG5LiN5aSq5piO5pi+77yM6LSo5oSf55yL6LW35p2l5pyJ54K55pen5pen55qE',1490421674,0,1,''),
(309,0,1010001,'5pG46LW35p2l5b6I6IiS5pyN77yM5LiN6ZSZ5LiN6ZSZ4oCm',1465954303,0,1,''),
(310,0,1010001,'6YCB57uZ6Ze65a+G55qE57uT5ama56S854mp77yM5aW56Z2e5bi45Zac5qyi44CC6K+05aW95aSn55qE5LiA5Liq5q+v5a2Q77yM5oiR5omT566X6Ieq5bex5YaN5Lmw5LiA5Liq',1494122174,0,1,''),
(311,0,1010001,'5Yas5aSp5Z2Q5Zyo5Yqe5YWs5a6k6YeM55qE5L+d5pqW56We5Zmo5ZWK77yM5Y+I6L2v5Y+I6IiS5pyN77yM5LiA5pG45bCx55+l6YGT5piv57qv576K5q+b55qE',1490328258,0,1,''),
(312,0,1010001,'5pS25Yiw5b6I5oOK5Zac77yM5Y6a5a6e44CB5p+U6L2v44CB6aKc6Imy6LaF576O77yM5LiN5b+F5r6z5rSy5bim5Zue5p2l55qE5beu77yB6LaF57qn6IiS5pyN5ZKM5pi+5qGj5qyh44CC',1493893053,0,1,''),
(313,0,1010001,'5Yas5aSp5Lmw55qEIOi2heeIsee+iuavm+avryDomb3nhLblpJrlsJHkvJrmiY4g5L2G55yL552A6YO95rip5pqW',1493871236,0,1,''),
(314,0,1010001,'5Zac5qyi',1494481175,0,1,''),
(315,0,1010001,'5oSf6KeJ5b6I5Y6a5a6e77yM5bCx5piv5pyJ54K55o6J5q+b',1494405394,0,1,''),
(316,0,1010001,'6Z2e5bi45p+U6L2v',1494291239,0,1,''),
(317,0,1010001,'5b6I5aSn77yM5Lmf5b6I5pqW5ZKM44CC5L2G5piv5Lmf5a2Y5Zyo5YW25LuW6K+E6K666YeM5o+Q5Yiw55qE77yM5pyJ54K55o6J5q+b44CC5Y+v6IO96ZyA6KaB5YWI5bmy5rSX5LiA5qyh5omN6KGM44CC',1484530815,0,1,''),
(318,0,1010001,'5LiN6ZSZ',1493905842,0,1,''),
(319,0,1010001,'5pyJ5qGj5qyh',1493624081,0,1,''),
(320,0,1010001,'5Y2B5YiG5p+U6L2v5Lqy6IKk77yM6ZO65Zyo5rKZ5Y+R5LiK5YGa55uW5q+v5LqG44CC',1493275430,0,1,''),
(321,0,1010001,'5pS25Yiw6L+r5LiN5Y+K5b6F5omT5byA77yM5piv5oiR5oOz6KaB55qE77yM5q+U5oOz6LGh55qE6KaB5aW977yM6LSo6YeP44CB5omL5oSf77yM6aKc6Imy6LaF5Zac5qyi',1490522354,0,1,''),
(322,0,1010001,'5omL5oSf5b6I5aW977yB',1493027776,0,1,''),
(323,0,1010001,'6L+Y5rKh55So77yM55yL552A6L+Y6KGM77yM5peg5byC5ZGz44CC',1492836124,0,1,''),
(324,0,1010001,'6Z2e5bi45aW955qE5Lqn5ZOB77yM5Lil6YCJ56ys5LiA6YCJ5oup',1492767350,0,1,''),
(325,0,1010001,'5L+d5pqW5pWI5p6c5LiN6ZSZ77yM5bCx5piv5o6J5q+b55qE5a6e5Zyo5piv5Y6J5a6z77yM5Z+65pys5LiK55uW5a6M5Lul5ZCO77yM6Lqr5LiK5bCx6Lef6YeR5q+b546p5LqG5LiA5aSp5LiA5qC344CC',1484642778,0,1,''),
(326,0,1010001,'5aW95Lic6KW/',1492669037,0,1,''),
(327,0,1010001,'5bey6YCA6LSn5pu05o2i',1492513727,0,1,''),
(328,0,1010001,'5YCS5pil5a+S5q2j5aW955So5LiK77yM5Y+v5Lul5b2T5oqr6IKp5Y+I55So5L2c55uW6KKr77yM5a6e55So44CC',1491950158,0,1,''),
(329,0,1010001,'5aW9',1492442013,0,1,''),
(330,0,1010001,'5b6I5aW9',1492356955,0,1,''),
(331,0,1011004,'6L+Z5qy+5q+b5be+6KKr54m55Yir5Y6a5a6e77yM5YGa5bel6Z2e5bi457K+6Ie077yM6LSo5Zyw5p+U6L2v5oy65aal77yM6IO95ruh6Laz5pil5a2j5ZKM5aSP5aSp56m66LCD6Ze05L2/55So77yM6YCC5ZCI5oiR55So5p2l5Y2I552h4pyM',1493439535,0,1,''),
(332,0,1011004,'5Y6a5a6e77yM6IiS6YCC77yM5rSX5rC055qE5pe25YCZ5q2j5bi45o6J57uS77yM5rSX6L+H5ZCO5LiN5o6J5q+b77yM5LiN57yp5rC077yM5LiN5o6J6Imy44CC5YC877yB5Y+I5Lmw5LqG5bqK57qi6Imy5a+E57uZ5a625Lq655So44CC',1494074599,0,1,''),
(333,0,1011004,'6LSo6YeP5Y+v5Lul77yM6aKc6Imy5oy65Zac5qyi55qE77yM55uW5LqG5LiA5LiL77yM5oy65pqW5ZKM55qE77yM55WZ552A5aSP5aSp5p2l5bCx5Y+v5Lul55So5LqG77yM5aW96K+E77yB',1489189556,0,1,''),
(334,0,1011004,'5Zyo5a+d5a6k55So5LiN6ZSZ5ZOm',1493882401,0,1,''),
(335,0,1011004,'',1493825245,0,1,''),
(336,0,1011004,'6LSo6YeP54m55Yir5aW977yM54mp6LaF5omA5YC877yB',1493728710,0,1,''),
(337,0,1011004,'6LSo6YeP5aW977yM55uW552A5b6I6IiS5pyN77yM5aW96K+E44CC',1493720321,0,1,''),
(338,0,1011004,'5YiG6YeP6Laz77yM5omL5oSf5aW944CCCiheX14p',1493549148,0,1,''),
(339,0,1011004,'6L+Y5piv5oSf6KeJ5pyJ5Lqb6JaE5ZWK4oCm4oCm4oCm4oCm',1489916486,0,1,''),
(340,0,1011004,'54mp5rWB6YWN6YCB5b6I5b+r77yM6LSo6YeP6Z2e5bi45LiN6ZSZ44CC',1489678188,0,1,''),
(341,0,1011004,'5LmL5YmN5Lmw5LqG5LiA5p2h5aW95aW94oCm4oCm5p6c5pat5Y+I5Lmw5LqGM+adoQ==',1489362280,0,1,''),
(342,0,1011004,'5LmL5YmN5Lmw5LqG5LiA5p2h5aW95aW94oCm4oCm5p6c5pat5Y+I5Lmw5LqGM+adoQ==',1489362259,0,1,''),
(343,0,1011004,'',1489362268,0,1,''),
(344,0,1011004,'',1489291127,0,1,''),
(345,0,1011004,'6LSo6YeP6Z2e5bi45aW977yM5Y+I5a+G5Y+I57uG77yM5Y6a5a6e',1488961565,0,1,''),
(346,0,1011004,'5LiN6ZSZ5b6I5Y6a5a6e',1488931265,0,1,''),
(347,0,1011004,'6KKr5a2Q55yf5b+D5b6I5LiN6ZSZICAg5b6I6YeN5b6I5omO5a6e77yM5Zyo5Y6m6Zeo5LiA5bqK6L+Z5Liq6KKr5a2Q5LiA5bqK56m66LCD6KKr5bCx5Y+v5Lul6L+H5Yas5aSp5LqGICAg5Zac5qyi77yB77yB77yB',1481731276,0,1,''),
(348,0,1011004,'5ZCs566A5rSB5aSn5rCU55qE77yM6aKc6Imy5oy65aW955yL55qE',1488896250,0,1,''),
(349,0,1011004,'5a6e54mp6Z2e5bi45aW977yM56m66LCD6KKr5b6I5Y6a5a6e77yM5ou/5Yiw5omL5ruh5ruh55qE5bm456aP5oSf772e',1488464592,0,1,''),
(350,0,1011004,'6aaW5YWI5a+55b+r6YCS6KGo56S65LiA5LiL6IKv5a6a77yM5pio5aSp5Yia5LiL55qE5Y2V5LuK5aSp5bCx5pS25Yiw5LqG44CC55yf55qE5b6I5aSn5b6I6IiS5pyN77yM5paZ5a2Q5piv56iN5b6u5pyJ5LiA5Lqb56Gs55qE77yM5LiN6L+H5rSX6L+H5bqU6K+l5bCx5Lya5aW95LiA5Lqb5LqG44CC5oiR5Lmw55qE6JOd6Imy55qE77y',1488684593,0,1,''),
(351,0,1011004,'5b6I5aW977yM5Zac5qyi77yM5ruh5oSP77yM5aW96K+E77yMNeWIhu+8gQ==',1488114774,0,1,''),
(352,0,1011004,'5b6I5aW977yM5Zac5qyi77yM5ruh5oSP77yM5aW96K+E77yMNeWIhu+8gQ==',1488114637,0,1,''),
(353,0,1011004,'5LiO5oOz6LGh5Lit55qE5rKh5beu5Yir77yM5aW95Zac5qyi77yB',1488013532,0,1,''),
(354,0,1011004,'6LSo6YeP5aW977yM55uW552A54m55Yir6IiS5pyN77yM5b6I6L2v5ZKM77yM6L+Z5piv5Lmw55qE56ys5LqM5Yib5LqG44CC',1485051290,0,1,''),
(355,0,1011004,'5rKh5ZGz6YGT77yM6LSo5Zyw5omL5oSf6YO95b6I5aW977yMQULpnaLkuI3plJnigKbigKbnm7jkv6HkuKXpgIk=',1485060528,0,1,''),
(356,0,1011004,'5b6I5aW977yM6LaF5Ye65LqG5oOz6LGh77yM5pG4552A5omL5oSf5LiN6ZSZ77yM5pyJ5b6I5Y6a5a6e5b6I6YeN55qE5oSf6KeJ77yM56iN5b6u5pyJ5Lqb5ZGz6YGT77yI5ZWG5ZOB5LuL57uN6YeM6K+05LqG77yJ77yM546w5Zyo5q2j5Zyo5oyJ54Wn5ZWG5a6255qE5LuL57uN5pS+5Zyo5rSX6KGj5py66YeM5rSX44CC',1484532187,0,1,''),
(357,0,1011004,'5oy65rKJ55qE5q+b5be+6KKr',1485161108,0,1,''),
(358,0,1011004,'5Y+I5aSn5Y+I6IiS5pyN77yM6LSo6YeP5Y+v6Z2g77yM6L+Y5Lmw5LiA5Lu2',1484825380,0,1,''),
(359,0,1011004,'6L+Z5Liq6Z2e5bi45ruh5oSP77yM5b6I6IiS5pyN44CC',1484720882,0,1,''),
(360,0,1011004,'5Y6a5a6e6Zi/77yM5b6I6IiS5pyN44CC56ul5bm0552h6KeJ55qE5oSf6KeJ44CC6ICB54i46ICB5aaI6YO95Zac5qyi44CC5Lmw5LqG5Lik5byg77yM6L+Y5oOz5YaN5Lmw',1479013952,0,1,''),
(361,0,1015007,'5Lil6YCJ55qE5ZWG5ZOB5LiN6K665piv5Y+R6LSn77yM54mp5rWB77yM5Yiw5ZOB6LSo6YO95piv5peg5Y+v5oyR5YmU55qE77yB5LuO5b+D6YeM6K+056Gu5a6e5aW95Luk5Lq65ruh5oSP77yB',1492673654,0,1,''),
(362,0,1015007,'5LiA6KeB6ZKf5oOF55qE5oqx5p6V77yM6ZOD5YWw55qE5Zu+5qGI576O5b6X5LiN6KGM77yM6LSo6YeP6LaF5aW955qE77yM5oCn5Lu35q+U6auY44CC',1492860874,0,1,''),
(363,0,1015007,'5pS+5Zyo5b+D55CG5ZKo6K+i5bel5L2c5a6k55qE77yM5Zu+5qGI5pyJ55qE6K+05YOP6Iqx5YS/77yM5pyJ55qE6K+05YOP5aSq6Ziz77yM5YWF5YiG5Y+R5oyl6Ieq55Sx6IGU5oOz77yM5pyJ55qE5p2l6K6/6ICF5LuO5aS05Yiw5bC+5LiA55u05oqx552A77yM5b6I5pyJ5a6J5YWo5oSf44CC6IOM6Z2i5piv55m96Imy77yM57Sg6Zu',1492829699,0,1,''),
(364,0,1015007,'5b+F6aG75aW96K+E77yB6LSo6YeP5q+U5oOz6LGh55qE6L+Y6KaB5aW977yM5YGa5bel57K+57uG77yM6aKc6Imy5ZKM5Zu+5qGI6YO95b6I5ryC5Lqu77yM5Zac5qyi77yB',1492529269,0,1,''),
(365,0,1015007,'57uj6Iqx576O576O5ZOS77yM5biD55qE5p2Q6LSo5Lmf5LiN6ZSZ77yB6Z2g5Z6r5by55oCn5Lmf5LiN6ZSZ',1493466407,0,1,''),
(366,0,1015007,'5b6I5aW955yL77yM5b6I576O5byP77yM5YeG5aSH5rS75Yqo55qE5pe25YCZ5YaN5Lmw5LiA5Liq',1492880943,0,1,''),
(367,0,1015007,'55yf56m65YyF6KOF77yM5pS25Yiw55qE5pe25YCZ5omB5omB55qE77yM5omT5byA5ouN5Yeg5LiL5bCx5b6I6JOs5p2+5b6I6IiS5pyN77yM5YGa5bel57K+57uG77yM54mp6LaF5omA5YC8',1492342540,0,1,''),
(368,0,1015007,'56ys5LiA5qyh5Zyo5Lil6YCJ6LSt54mp77yM5pS25Yiw55qE5oqx5p6V6K6p5Lq65oOK5Zac77yB54mp576O5Lu35qC86L+Y5LiN6LS177yB5YC877yB',1492870273,0,1,''),
(369,0,1015007,'54m55Yir5Zac5qyi77yM6Lef5a626YeM55qE5rKZ5Y+R5b6I6YWN44CC5omA5pyJ6Iqx6Imy6YO95Lmw5LqG77yM5Zac5qyi44CC44CC44CC',1492862780,0,1,''),
(370,0,1015007,'6LSo6YeP5b6I5aW977yM6Iqx6Imy5piv5oiR5Zac5qyi55qE57G75Z6L77yM5Yi657uj5b6I57K+6Ie0',1492781857,0,1,''),
(371,0,1015007,'6Iqx6Imy5ryC5Lqu77yM5Yi657uj57K+6Ie077yM6Z2e5bi45Zac5qyi77yM5Lil6YCJ6LSo6YeP5b6I5aW9',1492781980,0,1,''),
(372,0,1015007,'5Lic6KW/6LSo6YeP5aW95ryC5Lqu5aW95Zac5qyi8J+Sk/CfkpXwn5iY',1492346571,0,1,''),
(373,0,1015007,'5YGa5bel57K+57uG77yM5rKh5byC5ZGz77yM5Zue5by55oCn6IO95aW977yM5oqx552A5b6I6IiS5pyN44CC5bCx5piv5Lik5Liq5qy+5byP5Y6a5bqm5pyJ54K55beu5byC44CC',1490085659,0,1,''),
(374,0,1015007,'5YGa5bel57K+57uG77yM5rKh5byC5ZGz77yM5Zue5by55oCn6IO95aW977yM5oqx552A5b6I6IiS5pyN44CC5bCx5piv5Lik5Liq5qy+5byP5Y6a5bqm5pyJ54K55beu5byC44CC',1490085640,0,1,''),
(375,0,1015007,'5YWo5LqU5pif77yB5YyF6KOF55So5b+D5Lic6KW/5Y+I5aW977yB5oqx552A5b6I6IiS5pyN77yM5Lmf5rKh5pyJ5LuA5LmI5ZGz6YGT77yM6YeN54K55piv6aKc6Imy5ZKM6Iqx57q55b6I6auY57qn5b6I5aW955yL44CC',1494343344,0,1,''),
(376,0,1015007,'5YyF6KOF55So5b+D5Lic6KW/5Y+I5aW977yB5oqx552A5b6I6IiS5pyN77yM5Lmf5rKh5pyJ5LuA5LmI5ZGz6YGT77yM6YeN54K55piv6aKc6Imy5ZKM6Iqx57q55b6I6auY57qn5b6I5aW955yL44CC',1494343338,0,1,''),
(377,0,1015007,'57uj6Iqx55qE57q/5p2Q5ZKM6aKE5pyf5LiN5LiA5qC377yM6L+Z56eN57q/5p2Q57G75Ly85LqO5q+b6KGj57q/77yM5Zu+5qGI6K6+6K6h6L+Y5LiN6ZSZ77yM57q/5aS055qE57uG6IqC5aSE55CG5pyJ5b6F5o+Q6auY44CC',1494212036,0,1,''),
(378,0,1015007,'6ICB5amG5Z+L5oCo5Lmw5bCR5LqG77yM6auY56uv5aSn5rCU5LiK5qGj5qyh77yM5L2O6LCD5aWi5Y2O5pyJ5YaF5ra155qE5LiA5a+55oqx5p6V77yM5Lmw5Yiw5bCx5piv6LWa5Yiw77yM5Lil6YCJ5aSE5aWz6K+E44CC',1494425792,0,1,''),
(379,0,1015007,'5Yi657uj5Zu+5qC35b6I5ryC5Lqu77yM5ZKM5Zu+54mH5LiA5qih5LiA5qC377yM5L2G5piv5oCO5LmI5Y+q5pyJ5LiA6Z2i5pyJ6Iqx5qC377yM6L+Z5LiN5ZCI55CG5ZWK44CC5ZKM5Lil6YCJ55qE5p6V5aS05LiA5qC35aW944CC',1492695980,0,1,''),
(380,0,1015007,'M+enjeminOiJsumDveS5sOS6hu+8jOmDveWlveeci++8jOi0qOmHj+S5n+i2hee6p+ajku+8jOaUvui9puS4iuaUvuaymeWPkemDveW+iOiIrOmFje+8geWkluWjs+WPr+S7peiEseWNuOa4hea0l++8jOaLiemTvuS5n+W+iOmhuua7kQ==',1494085740,0,1,''),
(381,0,1015007,'M+enjeminOiJsumDveS5sOS6hu+8jOmDveWlveeci++8jOi0qOmHj+S5n+i2hee6p+ajku+8jOaUvui9puS4iuaUvuaymeWPkemDveW+iOiIrOmFje+8geWkluWjs+WPr+S7peiEseWNuOa4hea0l++8jOaLiemTvuS5n+W+iOmhuua7kQ==',1494085726,0,1,''),
(382,0,1015007,'M+enjeminOiJsumDveS5sOS6hu+8jOmDveWlveeci++8jOi0qOmHj+S5n+i2hee6p+ajku+8jOaUvui9puS4iuaUvuaymeWPkemDveW+iOiIrOmFje+8geWkluWjs+WPr+S7peiEseWNuOa4hea0l++8jOaLiemTvuS5n+W+iOmhuua7kQ==',1494085707,0,1,''),
(383,0,1015007,'5ZCM5LiK77yM6L+Z5qy+5piv576O5byP55qE77yM6YWN55qu5rKZ5Y+R5b6I5pCt44CC5LiN6L+H5q+U5oOz6LGh5Lit55qE6Iqx5LiA5Lqb',1494032299,0,1,''),
(384,0,1015007,'5pys5p2l5oOz6KaB5Lmw6ZOD5YWw77yM5Y+v5Lul5rKh6LSn5LqG77yM6L+Z5qy+6Iqx57q555Wl5pi+5YeM5Lmx77yM5p2Q6LSo6L+Y5LiN6ZSZ',1494296099,0,1,''),
(385,0,1015007,'5LiA5YWx5Lmw5LqGNOS4qu+8jOi0qOmHj+W3peiJuumDveibruWlveeahO+8jOmFjeS4iua3seajleiJsueahOaymeWPke+8jOW+iOa8guS6ru+8jOWlveivhCE=',1490873146,0,1,''),
(386,0,1015007,'6Z2e5bi45ruh5oSP6Z2e5bi45ruh5oSP6Z2e5bi45ruh5oSP6Z2e5bi45ruh5oSP6Z2e5bi45ruh5oSP6Z2e5bi45ruh5oSP',1494344160,0,1,''),
(387,0,1015007,'5b6I5ryC5Lqu77yM57uG55yL56iN5b6u5pyJ5Lqb57q/5aS077yM5LiN5b2x5ZON5pW05L2T576O6KeC44CC56iN5b6u5pyJ54K55ZGz6YGT77yM5pS+5LqG5Lik5aSp5rKh5ZGz6YGT5LqG44CC5ouJ6ZO+5q+U6L6D6aG65ruR77yM6L+Y5rKh5ouG5rSX6L+H77yM5biM5pyb5LiN5Lya57yp5rC044CC',1489708105,0,1,''),
(388,0,1015007,'55yf55qE5piv5Lu35buJ54mp576O77yM6LSo5oSf54m55Yir5aW977yM5b6I57K+6Ie0',1494461940,0,1,''),
(389,0,1015007,'55yf55qE5piv5Lu35buJ54mp576O77yM6LSo5oSf54m55Yir5aW977yM5b6I57K+6Ie0',1494461867,0,1,''),
(390,0,1015007,'6L+Z5qy+5b6I5ryC5Lqu77yM5Zu+5qGI6YWN6Imy6YO95b6I57uP5YW4',1494296096,0,1,''),
(391,0,1019000,'56ys5LiA5qyh5Zyo6L+Z5Lmw5Lic6KW/77yM5oSf6KeJ5Y+v5Lul77yM6auY5aSn5LiK55qE5qC35a2Qfn4=',1492865945,0,1,''),
(392,0,1019000,'5rKh5pyJ5ZGz6YGT77yM55So5LqG5LiA5q615pe26Ze05LqG77yM5oSf6KeJ5oy66IiS5pyN55qE77yM5Li65a626YeM5Lq65Lmf5Lmw5LqG5Yeg5Liq',1492787188,0,1,''),
(393,0,1019000,'6ZmQ5pe26LSt5oqi5Yiw55qE77yM5q2j5aW95Lmw5LqG5paw55qE5bqK5pCt6YWN5LiK6L+Z5qy+6K6w5b+G5p6V77yM5b6I5p+U6L2v77yM5Zue5by55Lmf5LiN6ZSZ77yM5YaN5Lmf5LiN5oCV6JC95p6V5LqG772e772e',1494036896,0,1,''),
(394,0,1019000,'5p6V5aS06Z2e5bi46IiS6YCC77yM5oGi5aSN6YCf5bqm5Lmf5b6I5b+r77yM5Z+65pys5rKh5pyJ5Lu75L2V5byC5ZGz77yM572R5piT5Lil6YCJ5YC85b6X5L+h6LWW77yM5YC85b6X5o6o6I2Q77yB',1494038739,0,1,''),
(395,0,1019000,'5YyF6KOF6auY5aSn5LiK77yM55yL6LW35p2l5LiN5piv5b6I6auY77yM5ZGz6YGT5Lmf5LiN5aSn77yM5LiN6L+H6L+Y5b6X5pS+5Yeg5aSp5YaN55So77yM56ys5LiA5qyh5bCd6K+V5oqk6aKI6K6w5b+G5p6V77yM5bqU6K+l5oy65aW955qE77yB',1491825279,0,1,''),
(396,0,1019000,'5omL5oSf5LiN6ZSZ77yM562J5pma5LiK55So5LqG5YaN5p2l6K+E5Lu344CC5LiN6L+H54mp5rWB55yf5b+D5b+r77yM5pio5aSp5LiL5Y2I5LiL55qE6K6i5Y2V77yM5LuK5aSp5pep5LiK5bCx6YCB5Yiw5a625LqG44CC57uZ5Liq6LWe',1489301595,0,1,''),
(397,0,1019000,'54m55Yir5aW954m55Yir6IiS5pyN77yM5Y6f5p2l55So6I2e6bqm55qE5p6V5aS077yM546w5Zyo5YaN5Lmf5LiN55So6Ieq5bex56C45Liq5Z2R5LqG',1492938509,0,1,''),
(398,0,1019000,'5oSf6KeJ5oy65aW977yB5YW25a6e5aSW6Z2i55qE5bqU6K+l5piv5Liq5p6V5aWX5ZCn44CC55m96Imy5LiN6ICQ6ISP77yM5LiK5reY5a6d5Lmw5LqG5Liq5rex6Imy5p6V5aWX77yM6LCB5Y+r5L2g5Lus5rKh5pyJ44CC',1488018846,0,1,''),
(399,0,1019000,'6L+Y6KGM5ZCn77yM5a+55oiR5p2l6K+06auY5LqG77yM6Jm954S25Lya6L2v5LiL5Y6777yM5YW25a6e5Lmf5rKh5pyJ6Z2e5bi46L2v77yM56ys5LiA5qyh55So6L+Z56eN5p6V5aS077yM6L+Y5rKh5Yqe5rOV5a6i6KeC6K+E5Lu344CC5Lit6Ze05pyJ54K55bCP55GV55a177yM5oC75L2T5LiA6Iis44CC',1493608496,0,1,''),
(400,0,1019000,'5p6V5aS05pyJ54K55ZGz6YGT77yM5Y+v6IO95Yia6YCB6L+H5p2l55qE5Y6f5Zug5ZCn44CC5LiN6L+H6ZyH6LW35p2l56Gu5a6e5b6I6IiS5pyN44CC',1494233329,0,1,''),
(401,0,1019000,'6ZKI5aS05LiN6ZSZ77yM5L6n552h5q+U5pmu6YCa6ZKI5aS06IiS5pyN5b6I5aSa77yM5YeP6L275LqG6aKI6YOo6IKp6YOo55qE5Yqb6YeP77yM5bu66K6u5Zac5qyi5L6n552h55qE5Lq66YO95YWl5omL5LiA5Liq77yM5LiN54S25b6I5a655piT5Y+Y5oiQ5Lmg5oOv5oCn6IC46IKp',1492497319,0,1,''),
(402,0,1019000,'5p6V5aS055qE5byn5b2i5bm25rKh5pyJ5oOz6LGh55qE6auY77yM6L+Y5LiN6ZSZ77yM5Lmw5LqG5Zub5Liq77yM5pyq5p2l5amG5amG5YWs5YWs55S35pyL5Y+L5oiR5ZCE5LiA5Liq77yM5oy65aW955qE4oCm4oCm5b6I5riF54i977yM5amG5amG57uZ5YGa5LqG5p6V5aWX77yM5ZOI5ZOI5ZWK5ZOI5ZOI5ZOI5ZOI',1493505026,0,1,''),
(403,0,1019000,'5pS+5a6/6IiN55So55qE77yM5bmz5bi455qE5p6V5aWX5Lmf5Y+v5Lul55So77yM5Lmf5LiN5Lya6K+05bCP5b6I5aSa44CC5Zac5qyi5Luw552h55qE5pyA5aW96L+Y5piv5p6V5L2O5LiA54K5772e5LmL5YmN6ISW5a2Q5LiN6IiS5pyN5p6V5LqG6L+Z5Liq5p6V5aS05aW95aSa5LqG77yM6LaF57qn5byA5b+D77yB',1494433835,0,1,''),
(404,0,1019000,'56ys5LiA5qyh5Lmw44CC5q+U5oOz6LGh5Lit6L2v44CC5b6I55m944CC552h6L+H5LmL5ZCO5omN55+l6YGT44CC',1494162517,0,1,''),
(405,0,1019000,'5Lic6KW/5LiN6ZSZ77yM5b6I5bCR5Lmw5Yiw5ZKM5o+P6L+w5LiA5qC355qE5ZWG5ZOB77yB77yB77yB',1494507022,0,1,''),
(406,0,1019000,'5Lic6KW/5LiN6ZSZ77yM55So5LqG5LmL5ZCO552h6KeJ55qE56ev5p6B5oCn6YO96auY5LqG44CC',1494418047,0,1,''),
(407,0,1019000,'5Lic6KW/5LiN6ZSZ',1494418071,0,1,''),
(408,0,1019000,'5b6I6IiS5pyN55qE5p6V5aS077yM5YC85b6X6LSt5Lmw',1494252414,0,1,''),
(409,0,1019000,'',1494165055,0,1,''),
(410,0,1019000,'5Lmw57uZ5amG5amG55So55qE77yM6K+E5Lu36Z2e5bi45aW9',1494023581,0,1,''),
(411,0,1019000,'5rKh5ZGz6YGT77yM5LiN6L+H5rKh5oOz6LGh5Lit6L2v77yM55So5LiA5q615pe26Ze05YaN55yL44CC',1493682348,0,1,''),
(412,0,1019000,'5Zue5by55LiN6ZSZ77yM5omL5oSf5b6I5aW977yM5p+U6L2v5Y6a5a6e',1493898982,0,1,''),
(413,0,1019000,'6Z2e5bi45aW977yM5p6V552A5b6I6IiS5pyN',1493803443,0,1,''),
(414,0,1019000,'54mp576O5Lu35buJ77yM5oCn5Lu35q+U5p2g5p2g55qE44CC5YW25a6e5oiR5piv6ZmQ5pe25oqi6LSt55qE8J+YhA==',1493300821,0,1,''),
(415,0,1019000,'',1493731004,0,1,''),
(416,0,1019000,'5pyJ5LiA54K554K55ZGz6YGT77yM6KaB5pmS5Yeg5aSp5ZCn77yM5LiN5pWi55u05o6l5p6V',1493472002,0,1,''),
(417,0,1019000,'5Lmw5LqG5LiA5a+577yM5Yi25L2c5b6X5q+U6L6D57K+6Imv44CC',1493340937,0,1,''),
(418,0,1019000,'',1493207930,0,1,''),
(419,0,1019000,'5L2/55So5LqG5Yeg54K55bey57uP6YCC5bqU5LqG77yM5by55Yqb6YCC5Lit77yM5b+r6YCf5Zue5by544CC',1492957731,0,1,''),
(420,0,1019000,'5LiA55u05YaN5Zyo55So5b6I5qOS',1492935781,0,1,''),
(421,0,1019001,'54m55oSP55So5LqG5b6I6ZW/5pe26Ze05omN5p2l6K+E5Lu355qE77yM5p6V5aS05LiN6ZSZ77yM5Yia5byA5aeL5LiN5aSq5Lmg5oOv77yM55So5LqG5LiA5q615pe26Ze077yM5oSf6KeJ5oy65LiN6ZSZ77yM5YaN5Lmf5rKh5pyJ6JC95p6V6L+H77yM6ISW5a2Q5Lmf5oy66IiS5pyN55qE44CC',1492598944,0,1,''),
(422,0,1019001,'5LiN6ZSZ77yM5b6I6IiS5pyN77yM5pio5aSp5pma5LiK5byA5aeL6K+V55So77yM552h55qE5oy65aW955qE',1492391670,0,1,''),
(423,0,1019001,'5Lmw5Zue5p2l5bCx6L+r5LiN5Y+K5b6F6K+V5LqG6K+V77yM5p6c54S26LaF57qn6IiS5pyN44CC5bCx5piv56iN56iN5pyJ54K55ZGz6YGT44CC5oC75L2T5p2l6K+06L+Y5piv5b6I5aW955qE',1494320182,0,1,''),
(424,0,1019001,'6Ieq5LuO5Lmw5LqG6K6w5b+G5p6V77yM552h6KeJ5YaN5Lmf5LiN5Lya6JC95p6V5LqG8J+RjeWwseaYr+efreS6huS6m++8jOWmguaenOiDveWBmuaIkOS4gOiIrOaeleWktOeahOmVv+W6puWwseWlveS6hvCfmIo=',1491264467,0,1,''),
(425,0,1019001,'6L+Z5Liq5Lu35L2N55qE5ZOB6LSo5q+U5Y2W5Zy655qE5aW95aSa5LqG77yM5omL5oSf5ZKM5Zue5by556Gu5a6e55CG5oOz77yM6LW2552A6ZmQ5pe26LSt5oqi5LqG5Lik5Liq44CC',1488720198,0,1,''),
(426,0,1019001,'5oy66IiS5pyN55qE77yM6Jm954S25a+55oiR5p2l6K+05pyJ54K554K56auY77yM5L2G5piv5Zug5Li65by55Yqb5aW977yM5bm25rKh5pyJ5LiN6YCC55qE5oSf6KeJ44CC5LmL5YmN5oC75piv6JC95p6V77yM6L+Z5qyh6YaS5p2l77yM6aKI6YOo6L+Y5oy66IiS5pyN44CC',1493692705,0,1,''),
(427,0,1019001,'57u/6Iy255yf55qE5piv5LiN6ZSZ77yM5ZGz6YGT5b6I5q2j44CCCuaeleWktOW+iOiIkuacje+8jOWwseaYr+eZveiJsuS4jeiAkOiEj++8jOWll+S4quaeleWll+OAgg==',1491285864,0,1,''),
(428,0,1019001,'55Wl5b6u5pyJ54K556Gs77yM5LiN6L+H552h552A5oy66IiS5pyN77yM5L6n5Y2n5b6I54i977yM6KaB5piv5YaN5pyJ5p6V5aWX5bCx5aW95LqG',1492964343,0,1,''),
(429,0,1019001,'56ys5LqM5qyh5Lmw5LqG77yM5LmL5YmN5Lmw5LqG5LiA5Liq5b6I6IiS5pyN44CC5LiN6L+H5LiK5qyh5piv5Y6L57yp5YyF6KOF55qE77yM6L+Z5qyh5rKh5Y6L57yp44CC',1491648538,0,1,''),
(430,0,1019001,'5oy65aW955qE772e5pS25Yiw6LSn5LqG77yM5ouG5byA5Lmf5rKh5Y+R546w5pyJ5ZGz6YGT77yM5Y+v6IO95piv5Liq5Yir55qE5ZCn77yM5oy66IiS5pyN55qE',1488815480,0,1,''),
(431,0,1019001,'5L2/55So5LiJ5pma77yM552h55yg5ZOB6LOq5piO6aGv5pS55ZaE77yM6aCt6aC4542y5b6X5b6I5aW955qE5pSv5pKQ77yM5bem5Y+z6K236aC45pyJ5pWI5Yqg5YiG77yM5pyD5o6o6Jam57Wm5pyL5Y+L',1488017116,0,1,''),
(432,0,1019001,'',1494132154,0,1,''),
(433,0,1019001,'6auY6aKc5YC85p6V5aS077yM5b6I6IiS5pyN77yM6K6p5oiR5q+P5aSp552h5aW96KeJ',1493535935,0,1,''),
(434,0,1019001,'5oiR5b6I5ruh5oSPIOaeleWktOW+iOadvui9ryDllpzmrKLkuKXpgInnmoTnroDnuqblkozpq5jotKjph48=',1493008538,0,1,''),
(435,0,1019001,'6Z2e5bi45LiN6ZSZ55qE5Lic6KW/77yM5Lul5ZCO6LSt54mp5bCx5Lil6YCJ5LqG77yM5aSn5a625b+r54K55Lmw5ZCn77yB',1492060299,0,1,''),
(436,0,1019001,'5p6V5aS055qE6L2v56Gs56iL5bqm5Yia5aW95piv5oiR5Zac5qyi55qE77yM5byA5aeL5p6V55qE5pe25YCZ6KeJ5b6X6auY5LqG54K577yM546w5Zyo5Lmg5oOv5LqG5Lmf5oy65aW977yM552h5Zyo5LiK6Z2i6ISW5a2Q5b6I6IiS5pyN44CC',1487137937,0,1,''),
(437,0,1019001,'',1492485543,0,1,''),
(438,0,1019001,'6LaF57qn5aW977yM6L+Y5Y+v5Lul5ZGA77yM77yM54i45aaI5b6I5Zac5qyi',1492090466,0,1,''),
(439,0,1019001,'57uZ54i45aaI5Lmw55qE44CC5b6I5qOS',1491537332,0,1,''),
(440,0,1019001,'56ym5ZCI5Lq65L2T5bel5a2m77yM5p+U6L2v5Zue5by55aW977yM552h55yg5aW95Ly05L6j',1491110573,0,1,''),
(441,0,1019001,'5pma5LiK6K+V6K+V',1491156312,0,1,''),
(442,0,1019001,'5aW955So77yM5ZKM6ICB5YWs5LiA5Lq65LiA5Liq44CC',1490704561,0,1,''),
(443,0,1019001,'5omL5oSf5LiN6ZSZ77yM5ZCO57ut6L+96K+E',1490323050,0,1,''),
(444,0,1019001,'5byA5aeL6KeJ5b6X5oy66auY55qE44CC5p6V5LiK5Y675Y+R546w5Yia5aW944CC5Zue5by55q+U6L6D5b+rIOOAguayoeacieWRs+mBk+OAguWMheijheaMuuWlveOAguWUr+S4gOeahOe8uueCueWwseaYr+aIkeinieW+l+WkquWwj+S6hiDmhJ/op4nkuIDovazlsLHmnpXkuI3liLDkuoY=',1489536137,0,1,''),
(445,0,1019001,'5oiR5a+55Lqn5ZOB55qE6KaB5rGC5piv5b6I6auYLOeahO+8jOaeleWktOaJi+aEn+W+iOWlvQ==',1488788147,0,1,''),
(446,0,1019001,'5Lil6YCJ5aS45byg55qE5YyF6KOF77yM5oiR5bCx5LiN5LiK5Zu+5LqG77yM5oC75LmL5bCx5piv6auY56uv5aSn5rCU5LiK5qGj5qyh77yB6K+06K+05oSf5Y+XMS7ova/noazpgILkuK3vvIzmr5RtZW5namll55qE5LiA5qy+MTAw5aSa55qE5p6V5aS056Gs5LiA5Lqb77yM5ZKMbHVvbGFp55qE5LiA5qy+5p6V5aS05beu5LiN5aSa44C',1488963870,0,1,''),
(447,0,1019001,'5pS+5ZyoMS4157Gz5bqK5LiK5q2j5ZCI6YCC77yMMS4455qE5bqK5p6V5aS05Lya5pi+5bCP77yM5L2G5p6V552A5piv6Juu6IiS5pyN55qE44CC',1481362070,0,1,''),
(448,0,1019001,'5rKh5oSf6KeJ5b6I5L+d5oqk6aKI5qSOLCDlj43ogIznnaHkuYXkuobkvJrphbjnlrwu',1487577082,0,1,''),
(449,0,1019001,'5omL5oSf5b6I5aW977yM6K6w5b+G6IO95Yqb5Lmf5b6I5by644CC5ZGz6YGT5piv5pyJ5LiA54K577yM5L2G5LiN6Ie05LqO5b6I5rWT54OI77yM5ou/5Yiw6Ziz5Y+w5LiK5pmS5LiA5LiL77yM55yL55yL5Lya5LiN5Lya5aW95b6I5aSa44CC',1481865717,0,1,''),
(450,0,1019001,'55yL552A6L+Y5LiN6ZSZ77yM5rKh5pyJ5LuA5LmI5ZGz6YGT44CC5LiJ5pif5Y2K44CC',1487222012,0,1,''),
(451,0,1019002,'5b6I6IiS6YCC77yM5b6I5a695aSn77yM5Zue5by55pWI5p6c566X5piv6L+H5b6X5Y675ZCn44CC',1492354508,0,1,''),
(452,0,1019002,'5Lqs5LiccGx1c+S8muWRmO+8jOeOsOWcqOWvueS4pemAieS5n+W+iOWWnOasou+8jOiKguecgeS6huaMkemAieS4nOilv+eahOaXtumXtO+8jOWWnOasoueahOivneWPr+S7peaUvuW/g+S4i+WNleOAguWlveeahOeUn+a0u++8jOayoemCo+S5iOi0teOAgg==',1491032295,0,1,''),
(453,0,1019002,'5YyF6KOF5aSq5aW95LqG77yM54mp5rWB5Lmf5b6I5b+r77yM5p6V5aS05b6I5aW955So77yM6auY5bqm5ZCI6YCC77yM5aW96K+E77yB',1493286316,0,1,''),
(454,0,1019002,'6Z2e5bi455qE6IiS6YCC77yM55S355uG5Y+L5LiA55u06K6p5oiR5LiK5reY5a6d5Lmw5Y+M5Lq65p6V5aS077yM5Yia5aW95Zyo5Lil6YCJ5LiK55yL5Yiw77yMMTk56KeJ5b6X5aW96LS177yB5L2G5piv5LiA55yL5reY5a6d5Lmf5piv6L+Z5Liq5Lu35qC877yB5L2G5piv5Lil6YCJ5pyJNS4x5YeP5Lu35Yi45Zi75Zi75Zi75Zi7',1493899081,0,1,''),
(455,0,1019002,'5Y+M5Lq65p6V5aS077yM5pS25ou+5pa55L6/5LiA54K55ZOI77yB5p6V552A5Lmf6IiS5pyN5ZOI77yB',1493381262,0,1,''),
(456,0,1019002,'54m55Yir5aW9',1493442516,0,1,''),
(457,0,1019002,'5pio5aSp5Lit5Y2I5LiL55qE5Y2V77yM5LuK5aSp5pep5LiK5bCx5Yiw5LqG77yM5p6V5aS06LSo6YeP5b6I5aW977yM6LWeXl9e',1491614790,0,1,''),
(458,0,1019002,'5oCn5Lu35q+U6auY77yB6IiS5pyN77yB',1492047977,0,1,''),
(459,0,1019002,'5Lic6KW/6LSo5oSf5LiN6ZSZ',1492052435,0,1,''),
(460,0,1019002,'55yL552A5b6I5aW977yM6aG65Liw5Lmf5b6I5b+r',1491987587,0,1,''),
(461,0,1019002,'5pWj5pWj5ZGz',1491715730,0,1,''),
(462,0,1019002,'5YyF6KOF5aW977yM54mp5rWB5aW977yM5ZGz6YGT5aSn77yM5b6X5pS+5Yeg5aSp44CC6LSo6YeP5aW944CC5aSW6Z2i5b6X5aWX5Liq5p6V5aWX44CC6LWg6YCB55qE6L+e6KOk6KKc5Lik5Y+M44CC',1485324053,0,1,''),
(463,0,1019002,'5p6V5aS05LiN6ZSZ77yM5b6I6IiS5pyN',1490535391,0,1,''),
(464,0,1019002,'5b6I5ruh5oSP',1489838001,0,1,''),
(465,0,1019002,'5aaI5aaI5b6I5ruh5oSPfg==',1488725223,0,1,''),
(466,0,1019002,'6Z2e5bi46IiS5pyN77yM6Z2e5bi45aW977yM5YaN5Lmw5LiA5Liq77yM5ZOI5ZOI5ZOI',1487472901,0,1,''),
(467,0,1019002,'5oSf5oGp6IqC57uZ6ICB54i46ICB5aaI5Lmw55qE77yM55yL552A5b6I5aW977yM5pG4552A5Lmf6IiS5pyN77yM5biM5pyb5LuW5Lus552h5Liq5aW96KeJ44CC',1480305731,0,1,''),
(468,0,1019002,'6L+Z5qy+5p6V5aS056Gu5a6e5Lmf5piv5oiR5Lmw6L+H552h55qE5q+U6L6D6IiS5pyN55qE5LiA5qy+77yB5aSn5bCP6auY5L2O5ZCI6YCC77yM6ISW5a2Q5LiN57Sv77yB5by55oCn5aW977yB54m55Yir6YCC5ZCI5Y+M5Lq677yB',1479749083,0,1,''),
(469,0,1019002,'5oWi5oWi55qE6K+a5oSP77yM5aW95pen5rKh55yL5Yiw6L+Z5qC355qE5Y+M5bGC5YyF6KOF77yM5bey57uP5oqKYXBw5o6o6I2Q57uZ5pyL5Y+L',1484360158,0,1,''),
(470,0,1019002,'5b6I5aW9',1486724618,0,1,''),
(471,0,1019002,'6K665YyF6KOF5oiR5Y+q5pyN5Lil6YCJ44CC6K665b+r6YCS5oiR5Y+q5pyN6aG65Liw77yB8J+Yi+eci+WVhuWTge+8jOeptuern+aYr+aeleWktOWkqumVv+i/mOaYr+S6uuWkquefruWRou+8gei1tue0p+WFpeaJi+mqjOivgeWQp+S6suS7rOOAguOAguOAgg==',1484444607,0,1,''),
(472,0,1019002,'572R5piT55qE5YyF6KOF5aSq5aW95LqG77yM5oiR6KeJ5b6X5a6M5YWo5Y+v5Lul5Zue5pS277yM5aaC5p6c5Lqn5ZOB5YaN5Liw5a+M54K55bCx5aW95LqG77yM5p6V5aS06L+Y5Y+v5Lul77yM5oiR5Zac5qyi552h5L2O77yM',1479969596,0,1,''),
(473,0,1019002,'5Lil6YCJ5ZOB6LSo5rKh55qE6K+077yM54mp5rWB5Lmf5b+r',1484444993,0,1,''),
(474,0,1019002,'5LiN6ZSZ5b6I5qOS77yB552h552A5b6I6IiS5pyN77yB',1484237808,0,1,''),
(475,0,1019002,'6aOe5py655uSK+ekvOWTgeebku+8jOWMheijheW+iOWIsOS9je+8jOW/q+mAkuaYr+mhuuS4sOOAgueci+ivhOiuuuivtOaeleedgOiIkuacjeS5sOadpeivleivle+8jOaelemrmOeahOS4gOWktOWImuWImuWlvQ==',1477354347,0,1,''),
(476,0,1019002,'',1483150723,0,1,''),
(477,0,1019002,'5p6V5aS05LiN6ZSZ77yM5a626YeM5Lq66YO96K+06LSo6YeP5Y+v5Lul5Lu35qC85L6/5a6c44CC5pyA5aW95pyJ6ZmE5bim5p6V5aS05aWX5Y2W5pyA5aW944CC',1480118951,0,1,''),
(478,0,1019002,'5aaI5aaI57uZ5aW96K+E77yB5aW56aKI5qSO5LiN5aW977yM6K+055So5LqG6L+Z5qy+5p6V5aS06Z2e5bi46IiS5pyN',1482290694,0,1,''),
(479,0,1019002,'5b6I5LiN6ZSZ',1482403286,0,1,''),
(480,0,1019002,'5b6I5aW977yM5b6I5ruh5oSP',1481359805,0,1,''),
(481,0,1019006,'5aW955So77yB54m55Yir6IiS5pyN77yB',1493963374,0,1,''),
(482,0,1019006,'6L+Y5LiN6ZSZ5ZOmfn5+5b6I6IiS5pyN77yM5b6I5aSn',1492405217,0,1,''),
(483,0,1019006,'5LiL5Y2V5ZCO5Yiw6LSn5Y+K5pe277yM5oSf6LCi77yBCuWwmuacquS9v+eUqO+8jOS9v+eUqOWQjuWGjei/veWKoOivhOS7t+KcuuKXnyjiiJfinZvguLHhtJfinZvguLHiiJcp4pee4py6',1489018110,0,1,''),
(484,0,1019006,'5Yiw6LSn6YCf5bqm5b6I5b+r77yM5omL5oSf5Lmf5b6I5aW977yM6Z2e5bi45LiN6ZSZ77yM5rCU5ZGz6Zeu6LW35p2l5YOP5Lit6I2v77yM5oSf6KeJ5b6I5aW977yB55So5LiA5q615pe26Ze05ZCO5YaN5p2l6K+E5Lu34oCm',1481620040,0,1,''),
(485,0,1019006,'5b+r6YCS5oy66L+F6YCf55qEIOS4nOilv+S5n+W+iOa7oeaEjyDnlKjkuIDmrrXml7bpl7Tlho3mnaXor4Tku7fmlYjmnpzlkKc=',1482742019,0,1,''),
(486,0,1019006,'6L+Y5rKh55So77yM5LiN6L+H5omL5bel5LiN6ZSZ77yM5bqU6K+l5b6I5aW955So44CC',1484055647,0,1,''),
(487,0,1019006,'56ys5LiA5qyh5Zyo5Lil6YCJ6LSt54mp77yM5b6I5ruh5oSP44CC8J+YhA==',1481782104,0,1,''),
(488,0,1019006,'5b6I5b+r5Yiw5LqG77yM6L+Y5rKh55So',1481424419,0,1,''),
(489,0,1019006,'5p6V5aS05b6I5aSn77yM552h6LW35p2l5Lmf5b6I6IiS5pyN77yM5piv5Liq5aW95Lic6KW/44CC5aSW6KeC5Lmf5b6I576O44CC',1479957441,0,1,''),
(490,0,1019006,'55yL5Yiw5a6e54mp5oSf6KeJ5LiN6ZSZ77yM54mp5rWB5oy65b+r55qE77yM6L+Y5rKh5pyJ5L2/55So77yM5pyf5b6F5pWI5p6c77yM55u45L+h572R5piT6YC85qC86auY44CC',1475922654,0,1,''),
(491,0,1019006,'5bey57uP5p6V5LiK5LqG77yM6L+Y5LiN6ZSZ77yM5q2j5aW96YCC5ZCI5oiR55qE6auY5bqm77yM5aSq6LWe5LqG',1477789109,0,1,''),
(492,0,1019006,'5YGa5bel57K+576O77yM5Yqf6IO95oCn5L2z77yM5pS56L+b552h55yg5ZOB6LSo77yM55yf5piv54mp5pyJ5omA5YC8',1476674413,0,1,''),
(493,0,1019006,'5bCP5p6V5aS05b6I5aW98J+RjQ==',1476067335,0,1,''),
(494,0,1019006,'552h55yg5pWI5p6c5LiN6ZSZ77yM5L2GIOWPkeelqOWvhOmAgeW+iOaFou+8jOS4jea7oeaEjw==',1475073511,0,1,''),
(495,0,1019006,'5pys5p2l5Lmw5Y675a6/6IiN55So55qEIOiwgeefpemBk+WvueS6juS4gOexs+S6lOeahOW6iuW3sue7j+i/meS5iOWkp+S6hiDmiJHku6zlrrblsYXnhLbmsqHmnInlkIjpgILnmoTmnpXlpLTlpZcg5pyA5ZCO6L+Y5piv5oqK6L+Z5Liq5p6V5aS05aWX55qE6L6557yY5ouG5LqG5omN5ZCI6YCCIOaAu+eahOadpeivtOW+iOa7oeaEjyB',1472973223,0,1,''),
(496,0,1019006,'5YyF6KOF5Lil5a+GIOaeleWktOS4jemUmSDmmK/mnIDmu6HmhI/nmoQ=',1472793765,0,1,''),
(497,0,1019006,'5p6c54S25rKh5pyJ6K6p5oiR5aSx5pyb44CC572R5piT55qE5Lic6KW/6YO95piv5oiR5LiA55u05b6I5Zac5qyi55qE77yM6Imv5b+D5Lqn5ZOB44CC5p6V5aS05b6I6IiS5pyN44CB6L2v56Gs5bqm5ZKM5Y6a5bqm6YO95b6I5ZCI6YCC44CC',1466687818,0,1,''),
(498,0,1019006,'5LiN6ZSZ77yM5aW95L2O5ZCI6YCC6L+Y5Y+v5Lul6LCD6IqC44CC6LSo5LyY5Lu35buJ',1468978838,0,1,''),
(499,0,1019006,'6L+Y5rKh55yf5a6e5L2/55So77yM55yL6LW35p2l5oy65aSn44CC',1468931823,0,1,''),
(500,0,1019006,'5p6c54S25rKh5pyJ6K6p5oiR5aSx5pyb44CC572R5piT55qE5Lic6KW/6YO95piv5oiR5LiA55u05b6I5Zac5qyi55qE77yM6Imv5b+D5Lqn5ZOB44CC5p6V5aS05b6I6IiS5pyN44CB6L2v56Gs5bqm5ZKM5Y6a5bqm6YO95b6I5ZCI6YCC44CC5pSv5oyB5Lil6YCJ44CC',1466687686,0,1,''),
(501,0,1019006,'5pyL5Y+L5o6o6I2Q55qEQVBQIOS7t+mSseS4jei0tSDnnaHnnYDkuZ/lvojoiJLmnI0g5Lul5ZCO5Lya5bi45p2l5Lil6YCJ',1466743332,0,1,''),
(502,0,1019006,'5Lic6KW/5b6I5aW977yM5b6I5aSn77yM54mp5rWB55Wl5oWi77yM57uZ5aaI5aaI5Lmw55qE5p6V5aS077yM5biM5pyb5aaI5aaI5p6V552A6L+Z5Liq5p6V5aS05q+P5pma6YO96IO9552h5aW96KeJ77yM5pSv5oyB572R5piT5Lil6YCJ77yM6L+Y5Lya5YaN5p2l6LSt54mp55qE77yM5Lya5o6o6I2Q57uZ5pyL5Y+L5Lus5aW955qE5Li',1467211760,0,1,''),
(503,0,1019006,'5p6V5aS06auY5bqm5q2j5aW9IOmdnuW4uOiIkuacjSDkuIDop4nliLDlpKnkuq4=',1466494354,0,1,''),
(504,0,1019006,'5p6V5aS06Z2e5bi45aW977yM5Lik5bm05Lmw5LqG5peg5pWw55qE5p6V5aS077yM6L+Z5piv5ZSv5LiA5LiA5Liq55So55qE6KeJ5b6X54m55Yir5aW955qE77yM6KaB5o2i5p6V5aS055qE5pe25YCZ6IKv5a6a5Lya5Zue6LSt',1492104328,0,1,''),
(505,0,1019006,'6L2v6L2v55qE552h552A5oy66IiS5pyN77yM5Lil6YCJ6LSo6YeP5LiN55So6K+077yM5bCx5piv5Lit6Ze05pyJ54K55bCP77yM5rua5p2l5rua5Y675oC75p6V5LiN5Yiw44CC',1489884849,0,1,''),
(506,0,1019006,'5Lmw5LqG5LiA5aCG5Lic6KW/77yM5omL5bel55qC5piv6YCB55qE77yM54S25ZCO5Li65LqG6L+Z5Liq5omL5bel55qC77yM5oiR5Y+I5Lmw5LqG55qC5omY77yM5Lmw55qC5omY55qE5pe25YCZ6aG65L6/5Lmw5LqG6KKc5a2Q44CC',1492530556,0,1,''),
(507,0,1019006,'5oiR5oSf6KeJ5LiA6Iis77yM5rKh6KeJ5b6X552h5LqG5ZKM5LiA6Iis6YCa5L+X55qE5p6V5aS05pyJ5LuA5LmI5Yy65Yir44CC5oqk6aKI5rKh5aSa5aW977yM5Y+N6ICM6L+Y5rKh5bmz5bi455qE6YKj56eN6IiS5pyN44CC',1489763692,0,1,''),
(508,0,1019006,'5oq95LqG5LiA5Liq5Z6r5a2Q5Ye65p2l55So552A5b6I6IiS5pyN77yM5Lil6YCJ55qE5Lic6KW/77yM5Lmw552A5pyJ55i+44CC5ZOB6LSo5aW977yM55yf55qE5LiN6ZSZ44CC',1491892233,0,1,''),
(509,0,1019006,'6auY5bqm5ZCI6YCC77yM6ICM5LiU6LSo6YeP6LaF57qn5qOS77yM5a+55LqO5oiR6L+Z5LmI54ix56KO6KeJ5LiU5oyR5YmU5p6V5aS055qE5Lq65p2l6K+077yM55yf55qE5aW95qOSfg==',1490599006,0,1,''),
(510,0,1019006,'5oiR5ZKM5Lil6YCJ55qE5pWF5LqL77yM5LuO5LiA5Liq5b6I5aW955qE5p6V5aS05byA5aeL77yM5q+P5Liq55ay5oOr55qE5aSc77yM5oiR5Lus5LiA6LW355u45Ly05bqm6L+H4oCm4oCm',1491741787,0,1,''),
(511,0,1020000,'6Z2g5Z6r5b6I6LWe44CC5oiR5Zyo5rKZ5Y+R5ou/5p2l5b2T5p6V5aS077yM5Lmf5oy66IiS5pyN55qE44CCaGho',1493174280,0,1,''),
(512,0,1020000,'6YCJ5oup572R5piT5Lil6YCJ5rKh6YCJ5oup6ZSZ77yM5Lic6KW/5b6I6L2v77yM5pyJ5Zue5by577yM6Z2g552A5b6I6IiS5pyN77yM5oiR5Liq5Lq65YGP5ZCR5Zac5qyi56Gs5LiA5Lqb55qE77yM6L+Z5Liq5YGP6L2v77yM5L2G5piv5Lmf5b6I5aW95ZWm44CC5YyF6KOF6L+Y5pyJ5b+r6YCS6YO95rKh5b6X6K+077yM5b+F6aG75aW',1493461839,0,1,''),
(513,0,1020000,'5q2j5ZCI6YCC77yM5b6I6IiS5pyN77yM5LiK54+t57uI5LqO5LiN5YaN6Zq+54as',1493081867,0,1,''),
(514,0,1020000,'6Z2g5Zyo6IWw6Ze077yM6IiS5pyN77yM5LiK54+t5LmF5Z2Q5LiN6YW444CC546w5Zyo5oOz5Lmw5YaZ5Y+v6Z2g5pyJ5ZOB6LSo55qE5Lic6KW/6YO95LiK5Lil6YCJ',1493518820,0,1,''),
(515,0,1020000,'57ud5a+56IiS5pyN77yM5Yqe5YWs5a6k6IWw6Z2g44CC6LS05b+D55qE6K6w5b+G5Yqb44CC',1492836401,0,1,''),
(516,0,1020000,'5aW955So77yM5pyJ57yT6Kej5LiA54K56IWw6YW4',1492841601,0,1,''),
(517,0,1020000,'566A55u05LiN6IO95aSq6IiS5pyN77yM5byA6L2m5aSq5a6e55So5LqG',1492338425,0,1,''),
(518,0,1020000,'6L+Z5Liq55yf55qE6LaF57qn5aW955So77yB5a6M576O6Kej5Yaz5LqG5byA6L2m5pe26IWw6YOo6YW455eb55qE6Zeu6aKY77yM5aW96K+E77yB5Lul5ZCO5YeG5aSH5YaN5Lmw5p2l5Yqe5YWs55qE5pe25YCZ55So772e',1492010978,0,1,''),
(519,0,1020000,'5YyF6KOF55qE5b6I57K+6Ie077yM5oiR5b6I5Zac5qyi77yM5rKh5pyJ5oOz6LGh5Lit55qE5aSn77yM5L2G5Lic6KW/5oSf6KeJ5b6I5aW944CC5piO5aSp5bim5Yiw5Yqe5YWs5a6k6K+V5LiA5LiL44CC5bqU6K+l5Lya5LiN6ZSZ44CC',1493120077,0,1,''),
(520,0,1020000,'5ZKM5o+P6L+w6K+055qE5LiA5qC355qE56Gu5pyJ54K55rCU5ZGz77yM5b6X5pm+5Yeg5aSp44CC5rKh5pyJ5oOz6LGh5Lit55qE56Gs77yM6KeJ5b6X5YGP6L2v77yM5YOP5p6V5aS05LiA5qC3',1491719171,0,1,''),
(521,0,1020000,'5LiA55u05oOz5Lmw5Liq6IWw6Z2g77yM57uI5LqO5Zyo5Lil6YCJ5LiL5omL5LqG77yM5aSn5bCP5ZCI6YCC77yM6L2v56Gs5Lmf6YCC5Lit77yM5YyF6KOF6KKL5bCk5YW25oOK5Zac77yM6L2v6L2v55qE77yM6L+Y5Y+v5Lul5ou/5p2l6KOF6KOF5Yir55qE5Lic6KW/',1494206153,0,1,''),
(522,0,1020000,'5L2T6aqM5LqG5LiA5LiK5Y2I77yM5ZKL6K+05ZGi77yM5aaC5p6c5YaN5aSn5LiA54K55YS/5bCx5aW95LqG77yM5Y+v5Lul54Wn6aG+5Yiw6IWw6YOo5Lul5LiK55qE5L2N572u77yM5LiN6L+H6L+Y5piv5oy66L2v5LmO55qE44CC',1492151368,0,1,''),
(523,0,1020000,'5pS+5Yqe5YWs5a6k5qSF5a2Q5LiK77yM5LiA55u05Zyo55So77yM5oy65aW977yM5YGa5bel6LSo6YeP5LiN6ZSZ77yM5Lu35qC85ZCI6YCC44CC6L+Y5rKh5b2i5oiQ5Lmg5oOv77yM6L+H5LqG6L+Z5LmI5LmF5YaN5qyh5p2l5YWz5rOo5Lil6YCJ77yM5biM5pyb5aSa5aSa5pyJ5rS75Yqo44CC',1493182602,0,1,''),
(524,0,1020000,'6L+Y5LiN6ZSZICAg5oWi5Zue5by555qE6YKj56eNICAg5p2Q6LSo5b6I6IiS5pyN6aKc6Imy54m55Yir5ruh5oSPICAg5reh57KJ5LiN6aqa',1493741202,0,1,''),
(525,0,1020000,'55yf55qE54m55Yir5aW955So77yB5Lmw55qE56ys5LqM5Liq6IWw6Z2g77yM5LmL5YmN5Lmw55qE5pS+5Zyo6L2m5LiK77yM5ZCO5p2l5Y+I5Lmw5LqG5LiA5Liq5omT566X5pS+5Zyo5Yqe5YWs5a6k55So772e5YGa5bel5b6I5aW977yM6IO95a6M576O55qE5pSv5pKR6LW36IWw6YOo772e',1493303269,0,1,''),
(526,0,1020000,'5q+U6L6D6L2vIOS9huaYr+aUvuWcqOakheWtkOS4iui/mOaYr+inieW+l+S4gOS4quS4jeWknyDov5nkuKrmhJ/op4nku7fmoLzov5jmmK/mnInngrnotLU=',1491124299,0,1,''),
(527,0,1020000,'5b6I6L2vICDmlL7lnKjmpIXlrZDkuIrlvojoiJLpgIIgIOWwseaYr+WuueaYk+WOi+eahOW+iOaJgeKApg==',1494217837,0,1,''),
(528,0,1020000,'6LaF57qn5qOS5ZWKIOWKnuWFrOWupOW/heWkh+KApiDlj6/osIPoioLluKblrZDkvLjnvKnmgKflvojlvLog5Zyo5Lil6YCJ5Lmw5Lic6KW/5LuO5rKh5aSx5pyb6L+H',1490768320,0,1,''),
(529,0,1020000,'6Juu5aW955qE77yM5biM5pyb5pe26Ze05LmF5LqG5LiN5Lya5Y6L5LiL5Y675bCx5LiN6IO95oGi5aSN5LqG4oCm4oCm',1493269171,0,1,''),
(530,0,1020000,'6L+Z5Liq57uE5ZCI5LiN6ZSZ5ZCn77yM5Z2Q5Z6r5q+U6Z2g5Z6r57yT6YeK6KaB5aW944CC',1494551433,0,1,''),
(531,0,1020000,'5Z6r5LqG5LmL5ZCO5b6I6IiS5pyN77yM5by55oCn5Lmf5LiN6ZSZ',1494476934,0,1,''),
(532,0,1020000,'5oy66L2v5LmO55qE77yM5LiN6ZSZ44CC5piv6K6w5b+G5qOJ77yM5Y+v5Lul5oGi5aSN44CC',1494248386,0,1,''),
(533,0,1020000,'5YWs5Y+455qE5oSP5oCd5b6I6Zq+5Y+XIOaUvuS6huWug+iFsOiIkuacjeW+iOWkmg==',1493696210,0,1,''),
(534,0,1020000,'5aW955qE55Sf5rS777yM5rKh6YKj5LmI6LS1',1493977214,0,1,''),
(535,0,1020000,'5biM5pyb5pS+5pS+5bCx5rKh5rCU5ZGz5LqG',1493894754,0,1,''),
(536,0,1020000,'5aSn5bCP5q2j5aW977yM5pS+5Yqe5YWs5a6k55So44CC',1493895166,0,1,''),
(537,0,1020000,'6Z2e5bi46IiS5pyNIOi/mOaYr+W+iOS4jemUmeeahA==',1493800372,0,1,''),
(538,0,1020000,'5bey57uP5Lmw5LqG5Lik5Liq77yM5Yqe5YWs5a6k5b+F5aSH',1493607440,0,1,''),
(539,0,1020000,'5Zu65a6a55qE5bim5a2Q5aaC5p6c5Zu65a6a6LW35p2l5bCx5Lya57+Y77yM5omA5Lul5rKh5Zu65a6a77yM6L+Z5Liq5pSv5pKR6KeS5bqm5bqU6K+l5Y+v5Lul55qE',1489572149,0,1,''),
(540,0,1020000,'5b6I6IiS5pyN77yM5Z2Q552A57uI5LqO5LiN5YaN5piv5LiA56eN54WO54as',1493461093,0,1,''),
(541,0,1021004,'6LaF5Zac5qyiIOaRuOedgOaflOaflOi9r+i9r+eahOi1tuiEmiDov5nkuKrlraPoioLpqazkuIrlsLHlj6/ku6XljZXni6zmlLnkuoYg5p+U6IKk5ruR6IW7',1493131621,0,1,''),
(542,0,1021004,'5YyF6KOF5a6M5pW0772e5q+v5a2Q5b6I6JaE772e6Kem5oSf5b6I5qOS5LiN5omO5Lq6772e5LiA5Liq5Lq65b6I5aSf55So',1492600690,0,1,''),
(543,0,1021004,'57uG6IW777yM5omL5oSf5aW944CC5LiN6ZSZ',1493380602,0,1,''),
(544,0,1021004,'5pG46LW35p2l5omL5oSf5LiN6ZSZ77yM5p+U6L2v77yM55uW552A5Lmf6IiS6YCC44CC5L2G5piv5p+T6Imy5Zyo6L655LiK5rKh5p+T5Yiw77yM5pyJ5LiA5p2h6L6544CC5Lil6YCJ6L+Y5Y+356ew6LSo6YeP5oqK5YWz5ZGi77yM5pyJ54K55oCA55aR44CC',1484111875,0,1,''),
(545,0,1021004,'55uW5q+v5b6I5aSn5LiA5Z2X77yM5pG46LW35p2l5Lmf5b6I6IiS5pyN77yM5q+U5oOz6LGh5Lit55qE5aW95aSa5LqG77yM6LWe6LWe6LWe77yM5aW95byA5b+D',1482726602,0,1,''),
(546,0,1021004,'5Lil6YCJ6YeM6Z2i77yM6K6k5Li65pyA6LWe55qE6LSn5ZOB77yM54m55Yir6YCC5ZCI5aWz55Sf77yM55m95aSp5Y+v5Lul5b2T5oqr6IKp77yM5pma5LiK5Y+v5Lul5pCt6KKr5a2Q5LiK5pu05pqW5ZKM77yM56m/6KOZ5a2Q552h6KGj5pe25YCZ5Y+v5Lul5pCt5LiA5LiL5L+d5pqW77yM6LSo6YeP5oSf6KeJ5Lmf5b6I5qOS77yM5Lm',1489711735,0,1,''),
(547,0,1021004,'6L275p+U6IiS6YCC5omL5oSf5L2z77yM5rKZ5Y+R5LiK5b6F552A5bCx6Z2g5a6D',1489578493,0,1,''),
(548,0,1021004,'6Z2e5bi45qOS55qE5q+b5q+v8J+Rje+8jOaJi+aEn+e7huiFu+aflOi9r++8jOWWnOasovCfmIQ=',1488633558,0,1,''),
(549,0,1021004,'5pyJ54K56JaE77yM5LiN6L+H5b6I6L2v5pG4552A5oy66IiS5pyN77yM5Zug5Li6576K5q+b57Wu57Wu5pyJ54K55aSa',1486883975,0,1,''),
(550,0,1021004,'6L+Z5Liq5q+v5a2Q5b6I6LWeIOW+iOiIkuacjeS5n+W+iOS/neaaliDlj4jlhaXkuobkuIDmnaHlp5zpu4ToibIg576K5q+b5q+v6Zq+5YWN5pyJ5Lqb5omOIOS4jei0tOi6q+WwseWlveS6hg==',1479115839,0,1,''),
(551,0,1021004,'5paZ5a2Q5b6I5LiN6ZSZ77yM5omL5oSf5b6I5aW977yM5oy66IiS5pyN55qE77yM5bCx5piv5oSf6KeJ5pyJ54K56JaE44CC',1483862822,0,1,''),
(552,0,1021004,'5a6d6LSd6LSo6YeP5aW977yM6LSn5q2j5Lu35a6e77yB',1484536892,0,1,''),
(553,0,1021004,'5a6d6LSd6LSo6YeP5LyY6LSo77yM5LiO5o+P6L+w5a6M5YWo5LiA6Ie077yM5YC85b6X6LSt5Lmw77yB',1484279525,0,1,''),
(554,0,1021004,'5aW95Zac5qyi',1482583292,0,1,''),
(555,0,1021004,'5a655piT6LW355CD77yM6L6D6JaE',1481641260,0,1,''),
(556,0,1021004,'6Z2e5bi45ruh5oSP6L+Z5p2h55uW5q+v77yM5Yeg5LmO5Y+v5Lul5b2T5L2c5q+b5q+v5p2l55So77yM5Zug5Li66aaW5YWI55yf55qE5aW95aSn5byg77yM56ys5LqM5b6I5Y6a5a6e77yM5oqY6LW35p2l55u45b2T6YeN77yM5pys5p2l5oOz5b2T5oqr6IKp77yM6K+V5LqG5LiL5Y+v5Lul5oqK5pW05Liq5Lq66KO56LW35p2l5LqG77y',1481636521,0,1,''),
(557,0,1021004,'5omL5oSf5LiN6ZSZ77yM5b6I5Zac5qyi77yB',1481149303,0,1,''),
(558,0,1021004,'6LaF57qn5qOSIOaciei0qOaEn++9nuaPkOWNh+W6iuWTgemAvOagvOeahOWIqeWZqA==',1480840326,0,1,''),
(559,0,1021004,'5p+U6L2v57uG6IW777yM5piv56ys5LiA5Y+N5bqU77yM6ZmN5rip5ZCO55uW5Zyo6IW/5LiK77yM6Z2e5bi46IiS5pyN',1479027257,0,1,''),
(560,0,1021004,'5Yia5pS25Yiw6LSn77yM5YyF6KOF6K6y56m277yM55yL5LiK5Y675LiN6ZSZ77yM5Y+M5Y2B5LiA5LiJ5aSp5Yiw55qE6LSn44CC',1479192636,0,1,''),
(561,0,1021004,'55So5p2l6YCB56S877yM5YGa55Sf5pel56S854mp77yM6YO95b6I54ix',1479028183,0,1,''),
(562,0,1021004,'5omL5oSf5LiN6ZSZIOminOiJsuW+iOmAguWQiOWGrOWkqQ==',1478781859,0,1,''),
(563,0,1021004,'5ruh5oSP77yM55u45L+h5Lil6YCJ77yM6LSo6YeP6Z2e5bi45aW944CC',1476784331,0,1,''),
(564,0,1021004,'6LSo6YeP5b6I5aW977yB5ou/5Yiw5a625pyA5aW95YaN6YCP6YCP6aOO',1464628594,0,1,''),
(565,0,1021004,'5pS25Yiw6ams5LiK5bCx55So5LqG77yM56ys5LiA5qyh55So572R5piT57K+6YCJ77yM5ZOB6LSo5LiN6ZSZ',1463926629,0,1,''),
(566,0,1021004,'5b6I5p+U6L2v5pqW5ZKM55qE5q+v5a2Q77yM5aaC6KKr5a2Q5LiA5qC35aSn77yM6Z2g5Zyo5rKZ5Y+R5LiK55So5Lmf5b6I5ZCI6YCC44CC5bmz5pe26L+Y5Y+v5Lul5b2T5oqr6IKp77yM6aKc6Imy55m+5pCt44CC',1490077408,0,1,''),
(567,0,1021004,'6YCB57uZ55S35pyL5Y+L55qE5aW25aW277yM5oSf6KeJ5Y6a5a6e5Y+I5aSn5pa577yM6Ieq5bex5Lmf5oOz5YaN5Lmw5LiA5p2h',1493999325,0,1,''),
(568,0,1021004,'57uZ54i454i45Lmw55qE77yM5Yas5aSp55uW552A5Zyo5rKZ5Y+R5LiK55yL55S16KeG5LiN6ZSZ',1494472518,0,1,''),
(569,0,1021004,'5YWs5Y+45bm057uI5aWW5ZOB77yM6YO95b6I5ruh5oSP',1494405576,0,1,''),
(570,0,1021004,'5YWs5Y+45bm057uI5aWW5ZOB77yM6YO95b6I5ruh5oSP',1494405572,0,1,''),
(571,0,1021010,'5b6I5Y6a5a6e44CC54Gv5YWJ6Zeu6aKY44CC5a6e54mp5ZKM54Wn54mH5LiA5qC36aKc6Imy77yM5rKh5pyJ6Imy5beu44CC6LSo6YeP5b6I5aW977yB5aSn54ix5ZWK77yB',1493042852,0,1,''),
(572,0,1021010,'6aKc6Imy5aW955yL77yM6Kem5oSf6IiS5pyN77yM5Yia5aW95ZKM56qX5biY5b6I6YWN77yM5Zac5qyi77yM54ix5LiK572R5piT5Lil6YCJfg==',1492943416,0,1,''),
(573,0,1021010,'5Y+R6LSn5aW95b+r5ZGA77yM5pio5aSp5LiL5Y2I6K6i6LSn5LuK5aSp5bCx5pS25Yiw5LqG44CC5oSf6KeJ6aKc6Imy6L+Y5LiN6ZSZ77yM5YOP5rC05rSX54mb5LuU5biD44CC',1492772321,0,1,''),
(574,0,1021010,'5bC65a+45ZCI6YCC77yM6K6+6K6h5b6I5aW977yM55uW5Zyo6Lqr5LiK5b6I6IiS5pyN77yM5b6I5Zac5qyi5Zub5Liq6KeS55qE6K6+6K6h',1492670354,0,1,''),
(575,0,1021010,'6KKr5a2Q5b6I5LiN6ZSZ77yM5p2Q6LSo5b6I6IiS5pyN77yB5pCt6YWN5LmL5YmN5Lmw55qE6Iql6bqm5p6V5aS055yf55qE552h6KeJ5LiN6KaB5aSq6LWe5LqG77yB5Lu35qC85Lmf5b6I5ZCI6YCC77yM5b+r6YCS5Lil6YCJ5LiA55u05piv6aG65Liw77yM6YCf5bqm5aSn5a626YO95oeC77yB5YC85b6X5oul5pyJ77yB',1492759938,0,1,''),
(576,0,1021010,'6aKc6Imy5b6I5riF54i977yM5pyJ54K55YS/54mb5LuU5rC05rSX5biD55qE5oSf6KeJ77yM5oCn5Lu35q+U6auY44CC',1492877813,0,1,''),
(577,0,1021010,'6aKc6Imy6LaF57qn6LWe77yM6ZO65LiK5Lmf5b6I6IiS5pyN77yM6YCC5ZCI5aSP5aSp772e',1492525085,0,1,''),
(578,0,1021010,'5pS25Yiw6LSn5bCx5rSX5LqG77yM5Zac5qyi55qE6aKc6Imy77yM5LiN5pqX5Lmf5LiN5Lqu77yM5Lul5ZCO55qE5Zub5Lu25aWX5bCx5piv5Lil6YCJ5LqG44CC',1492321265,0,1,''),
(579,0,1021010,'MS4157Gz55qE5bqK77yM5Lmw5LqGMS4457Gz55qE5bC65a+477yM5LiN6L+H6LSo6YeP5b6I5aW977yM5oCn5Lu35q+U5b6I6auY77yB',1494086432,0,1,''),
(580,0,1021010,'5pS25Yiw5LqG5bCx5LiL5rC05riF5rSX5Yqz5Yqo6IqC5pmS5aW95LqG5bCx5YeG5aSH57uZ5YS/5a2Q5o2i5LiK55So55qEKOKRicKw0LfCsCkt4pmh',1493533283,0,1,''),
(581,0,1021010,'5oCO5LmI5rua77yM5oCO5LmI5omU4oCm6YO95piv5aW95ae/5oCB4oCm6ZqP5oSP6ZqP5oCn77yM6Ieq54S277yB5bqK5ZOB5bqU6K+l6L+Z5qC35a2Q77yB5rKh5pyJ5pa55ZCR77yM5q2j5Y+N77yM5rKh5pyJ5Lu75L2V5p2h5qGG4oCm',1487561567,0,1,''),
(582,0,1021010,'5Zug5Li66L+r5LiN5Y+K5b6F5bCx6KaB5ouG5byA5rSX44CC5omA5Lul5b+Y6K6w5ouN54Wn44CC5piv5oiR5Zac5qyi55qE6aKc6Imy44CC55Sx5LqO5YWJ57q/5Y6f5Zug77yM5ouN55qE5pyJ55qE5Y+Y6Imy44CC5b6I6IiS6YCC44CC54ix44CC54ix44CC54ix44CC',1487481920,0,1,''),
(583,0,1021010,'5peg6Imy5beu77yM57qv5qOJ44CC54Gw5pqX6YKj56eN57Sr77yM5q+r5LiN5byg5oms77yM5rSX5ZCO5Zyo55So77yM5b6I5aW977yB6YKj5Liq5ZCM5p2Q5paZ55qE5bCP6KKL77yM5b6I5Y+v54ix44CC',1487668628,0,1,''),
(584,0,1021010,'54Wn5Ye65p2l5pyJ6Imy5beu77yM5a6e54mp5q+U5Zu+54mH55Wl5rex44CC5LiN5b6X5LiN6K+055qE5piv6LSo6YeP55yf55qE5b6I5LiN6ZSZ77yM5b6I5Lqy6IKk77yM6Lq65Zyo5LiK6Z2i55yf55qE5b6I6IiS5pyN44CC5Lit5LqG5Lil6YCJ55qE5q+S5LqG',1493350655,0,1,''),
(585,0,1021010,'6Z2e5bi45aW977yB5ryC5Lqu5aSn5rCU6LSo6YeP5aW977yB5LiL5Zue5pyJ5LyY5oOg5pe25YaN5p2l5Lmw5Y+m5LiA56eN6aKc6Imy44CC',1492840066,0,1,''),
(586,0,1021010,'6L+Y5LiN6ZSZ77yM5oCn5Ya35reh55qE54Gw57Sr6Imy77yM5Y+R5p2l55qE5pe25YCZ5pyJ5LiA5bCP5Z2X5rGh5riN77yM5rSX5o6J5LqG44CC',1488725742,0,1,''),
(587,0,1021010,'6LaF5qOSLOaZmuS4iuijuOedoeWVpg==',1493649075,0,1,''),
(588,0,1021010,'5Lil6YCJ5ZOB5ruh5oSP77yB',1493610756,0,1,''),
(589,0,1021010,'6aKc6Imy5aW955yL44CC5oy66IiS5pyN55qE44CC',1493534014,0,1,''),
(590,0,1021010,'6KKr5aWX6LSo6YeP5rKh5b6X6K+077yM55u45b2T5aW977yM5Y+q5piv6aKc6Imy56iN56iN54Gw54K577yM6auY57qn54Gw5omN5pyA5ryC5Lqu5Zib',1489158782,0,1,''),
(591,0,1021010,'5aSq6IiS5pyN5LqG77yM5q+U5reY5a6dNTAw55m+5aSa55qE6L+Y5aW977yB77yB77yB',1491483985,0,1,''),
(592,0,1021010,'MDjlubTogIPkuIrljr/ph4znmoTkuozpq5jvvIzlpojlpojluKbnnYDmiJHlnKjplYfkuIrkubDkuobkuIDlpZfluorljZXooqvnvanvvIzmsqHmnInmnpXlpLTnvanvvIzlpKnok53oibLnmoTvvIzkuIrpnaLmmK/lj7Lliqrmr5TvvIzkuIDlhbHlm5vljYHlpJrvvIzotKjph4/kuI3mgI7kuYjlpb3vvIzkuIDnm7TnlKjliLDlpKflrab',1491490561,0,1,''),
(593,0,1021010,'6L+Z6aKc6Imy5b6I5Zac5qyiIOavj+WkqemDveS8muacieWlveeahOW/g+aDhSDotKjph4/kuZ/lpb3lvpfkuI3opoHkuI3opoFE',1486560524,0,1,''),
(594,0,1021010,'5pma5LiK5Yqg5LiK5a626YeM55qE54Gv5YWJ77yM5oSf6KeJ5pu05YOP54mb5LuU6Imy',1490274948,0,1,''),
(595,0,1021010,'6LSo6YeP5LiN6ZSZ77yM57qv6Imy55yL6LW35p2l5bCx5Lya5b6I6IiS5pyN77yM6L+Y54m55oSP57uZ5a626YeM55qE6KKr5a2Q5Zub6KeS57yd5LiK5LqG5LiA5q6157uz77yM5Li65LqG5LiO6KKr572p6YeM55qE57uz5a2Q57O75LiK4oCm4oCm6Iet5bCP5a2Q6Z2e6KaB5LiK5p2l5b2T5qih54m58J+YhQ==',1489049651,0,1,''),
(596,0,1021010,'56Gu5a6e5rKh5pyJ5LuL57uN5Lit6YKj56eN57Sr5aW955yL77yM5a6e54mp5pu05YGP54Gw6Imy77yM5L2G6LSo6YeP6L+Y5piv5oy65aW955qE77yM5omA5Lul5bCx55WZ5LiL55So5LqG',1481346460,0,1,''),
(597,0,1021010,'5b6I6YeN77yM6aKc6Imy5oy65aW955yL77yM5L2G5piv5ouN5LiN5Ye65p2l77yM6L+Y5Lya5YaN5YWz5rOo55qE',1487556822,0,1,''),
(598,0,1021010,'',1488446833,0,1,''),
(599,0,1021010,'6KOF5Zyo5LiA5Liq5bCP5biD6KKL5a2Q77yM5aW96JCM77yM54Gw57Sr6aKc6Imy5b6I5Zac5qyi77yM6JOd6Imy55qE5pyJ6Imy5beu',1486728115,0,1,''),
(600,0,1021010,'5pio5aSp5omN5LiL55qE5Y2V77yM5LuK5aSp5bCx5Yiw5LqG77yM5LiA55yL5Yiw5bCx5aW95Zac5qyi',1486458298,0,1,''),
(601,0,1022000,'6LaF576OIOi2heWWnOasoiDkuIDnm7TllpzmrKLnmoTosIM=',1492793148,0,1,''),
(602,0,1022000,'5ou/5Yiw5omL6ams5LiK5bCx5rSX5LqG77yM5b+r6YCS6LaF57qn57uZ5Yqb77yM5YyF6KOF5Lmf5b6I57K+6Ie077yM5piv5oiR5Zac5qyi55qE5qC35a2Q',1490925760,0,1,''),
(603,0,1022000,'6LaF57qn54ix77yB',1493885704,0,1,''),
(604,0,1022000,'55yf55qE6Z2e5bi45aW955yL5ZOO77yM5rSX5LqG5LiA5LiL5q+b55CD6YO95rKh5pyJ5o6J44CC5omj5a2Q5ZKM6LWw57q/6YO96Z2e5bi45aW944CC5ZSv5LiA55qE57y654K55piv5pSv5pWw5aSq5L2O77yM5bCx5piv6JaE6Zyy6YCP44CC5aaC5p6c6KKr5a2Q5ZKM6KSl5a2Q5piv6Iqx55qE77yM6ZO66L+Z5aWX5bCx5b6I5bC05bC',1492855766,0,1,''),
(605,0,1022000,'5rSX6YGO5LmL5b6M5L2/55So55m854++5pW05aWX5bqK5Zau55qE5bC65a+45YGP5aSn54S25b6M55yL6LW35L6G5bCx5pyJ6bue5oCq5oCq55qE5L2G5piv5Z+65pys5LiK5a2Y5qOJ55qE6LOq5oSf6YKE5piv5LiN6Yyv',1490368736,0,1,''),
(606,0,1022000,'5pW05L2T5b6I5aW944CC5LiN6L+H5rSX5LqG5LiA5qyh44CB6L+Y5piv5pS+572R5YWc6YeM5rSX55qEIOavm+eQg+WwseaOieS6huS4gOS4qiDnlaXlvq7lpLHmnJsg5oeS5b6X6YCA5o2i5LqG44CC55u45L+h5Lil6YCJ77yM5LiN6L+H6L+Z5Lqb57uG6IqC55qE6LSo6YeP6L+Y5piv5biM5pyb57un57ut5Yqq5Yqb44CC',1486695923,0,1,''),
(607,0,1022000,'5LiN6KaB5Lmw77yM5rSX5a6M55CD5o6J5LqG5aW95aSa',1486829322,0,1,''),
(608,0,1022000,'5ZOB6LSo5LyY6Imv77yM5Yi25L2c57K+6Imv77yM5p2Q6LSo6ICD56m277yM5ruh5oSP5bqmNeaYn++8gQ==',1486262100,0,1,''),
(609,0,1022000,'55yf55qE5LiN6ZSZ77yM5omL5oSf5Lmf5b6I5aW944CC5bCx5piv5oiR55qE54yr5pyJ5by66L+r55eH77yM5Lyw6K6h6L655LiK55qE5q+b55CD5LiN5LmF5bCx5Lya54m654my77yB5ruh5oSP77yB',1474190603,0,1,''),
(610,0,1022000,'6LSo6YeP5b6I5aW977yB5aSn6YeH6LSt',1475560090,0,1,''),
(611,0,1022000,'6Z2e5bi45aW955yL5ZOm77yB57qv5qOJ55qE77yM5YGa5bel5aW977yM5rKh5pyJ5b6I5p+U6L2v77yM55CD55CD6LaF57qn6JCM77yM5b6I5Zac5qyi',1473484924,0,1,''),
(612,0,1022000,'6L+Y6KGM5ZCn',1474547544,0,1,''),
(613,0,1022000,'6Z2e5bi45aW955qE6LSo6YeP77yM6aKc6Imy55m955m955qE5rKh6Imy5beu77yM5Lu35qC85b6I5a6e5oOg77yM5piv57qv5qOJ55qE77yM5pyJ5LqU5pif57qn6YWS5bqX5bqK5Y2V55qE5oSf6KeJ77yM5bey57uP5Lit5LqG5Lil6YCJ55qE5q+S',1494387992,0,1,''),
(614,0,1022000,'55CD55CD552h6KeJ55qE5pe25YCZ5LiN55+l5LiN6KeJ5Lya5ou95o6JIOS4jei/h+i/mOiDveWGjee7keS4iuWOu+eci+S4jeWkquWHuuadpSDlrp7nianlvojmnInotKjmhJ8=',1489824439,0,1,''),
(615,0,1022000,'6ZO65Zyo5bqK5LiK5LmL5ZCO55yf55qE6LaF5Y+v54ix77yM5pyA5Zac5qyi55m96Imy55qE55CD55CD5Lus77yM552h6LW35p2l5Lmf5b6I6IiS5pyN',1491556070,0,1,''),
(616,0,1022000,'5b6I5aW977yM5L2G5pivLuaIkeWutjEuOOeahFzmmZrlronnmoTnvr3nu5LooqvlpZfov5vljrvmnInngrnmjKTvvIzooqvlpZfov5jmmK/pgILlkIgxLjXnmoTooqvlrZA=',1490143213,0,1,''),
(617,0,1022000,'6Z2i5paZ5omL5oSf5LiN6ZSZ77yM5bCx5piv57uS55CD5LiA5rSX5bCx5o6J5LqG77yM552h6KeJ55qE5pe25YCZ5Lmf5pyJ54K556KN5LqL',1493720857,0,1,''),
(618,0,1022000,'54Gw5bi46YCP5piO77yM5Y+q6IO955So55m96Imy55qE6KKr57Wu77yM6L655LiK55qE55CD56eA5bm25LiN54mi5Zu6',1493969645,0,1,''),
(619,0,1022000,'5q+b55CD6KaB5o6J5q+b77yM56ys5LqM5qyh5rSX55qE5pe25YCZ5o6J5LqG5Liq5q+b55CD77yM5b+D55eb44CC55m96Imy5aSq5LiN57uP6ISP5LqG77yM5ZOt',1486453606,0,1,''),
(620,0,1022000,'5qy+5byP6Z2e5bi45aW955yL77yM5L2G5piv6Z2i5paZ5aSq6JaE77yM5Lya6YCP5Ye65YaF6KSl55qE6aKc6Imy',1493459752,0,1,''),
(621,0,1022000,'6Z2e5bi45qOSIOWlveeciyDlj4jmn5TmmpY=',1494428613,0,1,''),
(622,0,1022000,'5aW95aW95aW95aW95aW95aW95aW9',1494429201,0,1,''),
(623,0,1022000,'5aW955yL5Y6a5a6e77yM5bCx5piv5a655piT57KY5q+b',1494209081,0,1,''),
(624,0,1022000,'6L+Y5rKh5omT5byA55So77yM6LSo6YeP5LiN6ZSZ77yM5q+U6L6D6YeN',1494127477,0,1,''),
(625,0,1022000,'5b6I5Zac5qyi',1493766778,0,1,''),
(626,0,1022000,'5aW95aW95aW9',1493721734,0,1,''),
(627,0,1022000,'6KeJ5b6X5aW955yL5Lmw55qEIOW4g+aWmeS4jemUmSDpmLLlsJjooovmlLbnurPlvojotLTlv4Mg5ZSv5LiA55qE5LiN6Laz5bCx5piv5py65rSX5ZCOIOavm+eQg+aOieS6huS4jeWwkQ==',1487401965,0,1,''),
(628,0,1022000,'6LSo6YeP55yf5b+D5LiN6ZSZ77yM5Lil6YCJ5LiK55i+5LqG',1493285528,0,1,''),
(629,0,1022000,'5b6I5aW977yM5Y+v5Lul5Y+N6L+H5p2l5rSX77yM55CD55CD5LiN5Lya5o6J',1493121333,0,1,''),
(630,0,1022000,'55uW552A6IiS5pyN',1492873679,0,1,''),
(631,0,1022001,'5Zac5qyi5Lil6YCJ55qE6L+Z5Liq5Zub5Lu25aWX77yMCuecn+eahOeCkum4oeWlveeci++8gQromb3nhLbmtJflrozmnInngrnnmrHvvIwK5L2G5LiA54K55YS/5Lmf5LiN5b2x5ZON5ZGA77yMCumFjeS4iuWunOWutueahOm4reavm+mdoOaeleabtOmFjeWWlO+8gQ==',1492341154,0,1,''),
(632,0,1022001,'5Zyo5pil5aSp5a2j6IqC5pS25Yiw5aaC5q2k576O5aW955qE5Lic5Lic77yM5b+D5oOF5Lmf5Y+Y5b6X5oSJ5oKm5LqG6LW35p2l5ZGi77yB',1492526131,0,1,''),
(633,0,1022001,'5YyF6KOF5b6I57K+5Yi277yM6YeM6Z2i5YyF6KOF6KKL5b6I5aW955So77yM5Y+v5Lul5Ye65beu5rS+5LiK55So5Zy65LqG',1492836297,0,1,''),
(634,0,1022001,'5b+r6YCS5b6I5b+r5bCx5Yiw5LqG77yM55yL552A5Lmf5b6I5aW955yL77yM6LSo6YeP5Lmf5b6I5aW977yM572R5piT5Lic6KW/6YO95b6I6LWe',1492644782,0,1,''),
(635,0,1022001,'6Z2e5bi45p+U6L2v6IiS5pyN77yM55So5YyF6KOF55qE6KKL5a2Q6Ieq5bex5omL5bel57yd5LqG5Liq5biD6KKL77yM6L+Y5oy65ryC5Lqu55qE44CC5ruh5YiG8J+Srw==',1493131940,0,1,''),
(636,0,1022001,'5oy65aW955yL55qE77yM5bCx5piv5bqK5Y2V5piv57qv55m955qE77yM5aW95LiN6ICQ6ISP77yM5pyJ54K55Y+X5LiN6bif',1494142582,0,1,''),
(637,0,1022001,'6L+Z5Liq55Wl6JaE77yM6YeM6Z2i55qE6aKc6Imy6IO96YCP5Ye65p2l77yM54S25ZCO57qv55m96Imy5bqK5Y2V5LiN5piv5b6I6IO95o6l5Y+X44CC5oC75L2T5LiA6Iis5ZCn8J+Ygg==',1486383981,0,1,''),
(638,0,1022001,'5b6I5aW944CC5Y+q5LiN6L+H5Yia6ZO65LiK5bCx6KKr5aiD5bC/5LqG8J+Ygg==',1494413188,0,1,''),
(639,0,1022001,'5ryC5Lqu5ZOm77yB5aSn54ix',1494416567,0,1,''),
(640,0,1022001,'5bey57uP5rSX5rSX6ZO65LiK5LqG77yM5piv57qv5qOJ55qE77yM5pyJ5LiA6IKh5reh5reh55qE5qOJ6Iqx5ZGz77yM6ZmQ5pe26LSt5Lmw55qE5Lu35qC85YiS566X77yM5aW955qE55Sf5rS75rKh6YKj5LmI6LS177yM5biM5pyb57un57ut5Yqg5by65ZOB5o6n77yM5o6o5Ye65pu05aW955qE5Lqn5ZOB44CC',1492759137,0,1,''),
(641,0,1022001,'5pG4552A5oy66IiS5pyN55qE77yM5L2G5piv5Lmw5a6256eA5oCO5LmI5ZKM5pWI5p6c5Zu+5LiN5ZCM44CC44CC44CC',1493296400,0,1,''),
(642,0,1022001,'5b6I5ryC5Lqu44CC',1493608385,0,1,''),
(643,0,1022001,'6Z2e5bi45Zac5qyi44CC5bCx5piv5bC65a+45bCP5LqG5biM5pyb5Ye6MjIwKjI0MOeahA==',1492874155,0,1,''),
(644,0,1022001,'5Yia5rSX5ZKv77yM6L+Y5rKh5pyJ6ZO677yM6KeJ5b6X5bqU6K+l6L+Y5piv6Juu5ryC5Lqu55qE',1492436711,0,1,''),
(645,0,1022001,'6LSo6YeP54m55Yir5aW9',1492831772,0,1,''),
(646,0,1022001,'5b6I6LSo5oSf77yM5b6I5Zac5qyi77yM5ZOH5ZKU5ZKU',1492002564,0,1,''),
(647,0,1022001,'5pS25Yiw5b6I5oOK5Zac77yM5Lmw5LmL5YmN5rKh5LuU57uG55yL77yM5bCx55yL5LqG6K+E6K665Lul5Li65LiK6Z2i55qE6Iqx6Imy5piv5Y2w5p+T55qE6L+Y55Wl5b6u5pyJ5Lqb5bCG5bCx77yM5pS25Yiw5omT5byA5LiA55yL5Y6f5p2l5piv55So57q/57uH5Ye65p2l55qE77yM6ICM5LiU5biD6L+Y5aS55p2C552A5Lid54q255q',1491703672,0,1,''),
(648,0,1022001,'5aSq5qOS5LqG',1489587901,0,1,''),
(649,0,1022001,'',1489243888,0,1,''),
(650,0,1022001,'5LiN6ZSZ5LiN6ZSZ44CC44CC44CC5bCx5piv54yr5Zac5qyi5oyg44CC44CC44CC',1488355133,0,1,''),
(651,0,1022001,'5Zac5qyi77yM5Lmw5LqG5aW95Yeg5aWX6L+Y5rKh55So77yM5L2G5b6I5Zac5qyi8J+YmA==',1487861778,0,1,''),
(652,0,1022001,'5YyF6KOF57K+576O77yM5YGa5bel57K+57uG77yM5Zue5Y675bCx5rSX5LqG44CC5aSW6Z2i55qE5YyF6KOF6KKL5Lmf5piv6Lef5bqK5Y2V5LiA5Liq5p2Q6LSo55qE5qOJ5biD6KKL5a2Q77yM5Y+v5Lul55WZ552A5b2T5peF6KGM5pS257qz6KKL55So77yM5b6I5aW944CC',1482717340,0,1,''),
(653,0,1022001,'6LSo6YeP6Z2e5bi45qOS77yM5Lu35qC86Jm95pyJ54K55bCP6LS177yM5L2G5b6I5Zac5qyiIO+8jOW+iOWAvOW+l+i0reS5sO+8jOi1ng==',1482641728,0,1,''),
(654,0,1022001,'56ys5LiA5qyh55SoIOa0l+WujOWPmOaIkOi/meagt+S6hg==',1483320292,0,1,''),
(655,0,1022001,'6Z2e5bi46IiS6YCC77yM5ryC5Lqu',1482374301,0,1,''),
(656,0,1022001,'6YO95piv5b6I5a6e55So77yM5ryC5Lqu77yM6LSo6YeP5aW955qE5Lic6KW/77yM5aSn54ix77yB',1481722695,0,1,''),
(657,0,1022001,'5rKh5pyJ54ao54Or77yM5rSX5LqG5bCx55So5LiK5LqG77yM55m96Imy5o+Q5Lqu5pW05Liq5oi/6Ze077yM6LSo5oSf5Lmf5b6I5aW977yM5Zac5qyi4p2k77iP8J+YmA==',1477803832,0,1,''),
(658,0,1022001,'5b6I5ryC5Lqu77yB6YWN5LiK5a6c5a6255qE5rWB6IuP6Z2g5Z6r77yM5pu0576O5LqG772e5ZSv5LiA55qE57y66Zm35piv77yM5Y+q6IO96KOF5LqU5bC655qE6KKr5a2Q77yM5Yas5aSp55So5LiN5LqG5LqG44CC',1474647983,0,1,''),
(659,0,1022001,'5YyF6KOF5bCa5Y+v77yM6L+Y5rKh5p2l5b6X5Y+K6Kem56Kw',1479176306,0,1,''),
(660,0,1022001,'5b6I5qOS77yB6L+Y5rKh5L2/55So',1479008815,0,1,''),
(661,0,1023012,'5omL5oSf5b6I6IiS5pyN55qE5p2h5q+b5be+6KKr77yM5pyJ5LiA54K55rWu5q+b77yM5LiN6L+H5rSX6L+H5bmy5LqG5LmL5ZCO5oqW5LiA5oqW5bCx5aW95LqG44CC6aKc6Imy6Z2e5bi45Zac5qyi44CC',1492696953,0,1,''),
(662,0,1023012,'5pG46LW35p2l5b6I6IiS5pyN77yM5pqC5pe26L+Y5pyq5L2/55So77yM5Yiw5omL56ys5LiA5Lu25LqL5YWI5riF5rSX5LqG5LiA6YGN77yM5LuU57uG5qOA5p+l6L+H77yM5rKh5pyJ6LSo6YeP6Zeu6aKY77yM5LyY56eA',1493717800,0,1,''),
(663,0,1023012,'54Wn54mH5YGP54GwIOWunumZheimgeaZruiTneiJsuS4gOS6m+eahCDvvIzmiZPlvIDljIXoo4Ug5omL5oSf5LiN6ZSZ77yB5Y6a5bqm5bCx55u45b2T5LqO5Y6a5a6e55qE5q+b5be+5beu5LiN5aSa',1493302912,0,1,''),
(664,0,1023012,'5pyJ5bCR5bm05o+Q5Yiw55qE5o6J57Wu77yM5Yu+57q/546w6LGh77yM57Wu57Wu5Lyw6K6h5piv6ZyA6KaB5aSa5rSX5Yeg5qyh77yM5Yu+57q/55So6ZKI5LiA54K554K577yM5LiA6IqC6IqC55qE5oyR5Lmf6IO96KGM44CC5Lic6KW/5LiN6ZSZ44CC',1494300272,0,1,''),
(665,0,1023012,'5bey57uP5piv5Lmw55qE56ys5LqM5bqK5LqG77yM5Y+m5LiA5bqK5piv6JOd6Imy77yM5o6J57Wu5Lil6YeN77yM5Lmf6K645piv55m96Imy55qE5LiN5a655piT55yL6KeB77yM5aSa5rSX5Yeg5qyh5Y+v6IO95aW954K577yM5LyY54K577yM55uW552A5Lqy6IKk44CC',1494299943,0,1,''),
(666,0,1023012,'55yf5b+D6KeJ5b6X5LiN6ZSZ55qE5Lqn5ZOBIOaUtuWIsOWQjuW+iOa7oeaEjyDlpJ/liIbph48g562J5pe25py66YCC5a6c55qE5pe25YCZ5YaN55So',1492484792,0,1,''),
(667,0,1023012,'5Lik6Imy5ZCE5YWl5LiA5bqK77yM5Lik5Liq6aKc6Imy6YO95Zac5qyi77yM5b6I5p+U6L2v44CC6ZmQ5pe26LSt5q+U6L6D5LyY5oOg44CC',1493456131,0,1,''),
(668,0,1023012,'5YeJ5b+r5ZWK',1494241125,0,1,''),
(669,0,1023012,'6LSo6YeP5LiN6ZSZ77yM5bCx5piv5Lul5Li66L+Y6IO95Zyo6ZmQ5pe26LSt55qE5oqY5omj5LiL5YaN5YWr5oqY',1491909241,0,1,''),
(670,0,1023012,'5Lik6Imy5ZCE5YWl5LiA5bqK77yM5Zac5qyi77yM5b6I5p+U6L2v44CC6ZmQ5pe26LSt5q+U6L6D5LyY5oOg44CC',1493456145,0,1,''),
(671,0,1023012,'6Z2i5paZ5LiN6ZSZ77yM55uW552A5b6I6IiS5pyN77yM5Lit5LqG5Lil6YCJ55qE5q+S5LqG5ZOI5ZOI5ZOI',1493389596,0,1,''),
(672,0,1023012,'5b275bqV54ix5LiK572R5piT5Lil6YCJ77yM5oOz5oqK5omA5pyJ5Lic6KW/5L2g5Zue5a62',1493614311,0,1,''),
(673,0,1023012,'6KKr5a2Q5LiN6ZSZ77yM5pG455qE5Lmf6IiS5pyN',1493528010,0,1,''),
(674,0,1023012,'6aKc6Imy5b6I5Zac5qyi77yM5Yid5aSP5Yid56eL55uW552A6YO95b6I6IiS5pyN44CC',1493217209,0,1,''),
(675,0,1023012,'5b6I5Zac5qyiICDoiJLmnI0gIOminOWAvOS5n+mrmCAgIOWImuWlveeisOS4iua0u+WKqCDlvojliJI=',1493089260,0,1,''),
(676,0,1023012,'5biD5paZ5b6I6IiS5pyN77yM55yf55qE6IiS5b+D',1493041262,0,1,''),
(677,0,1023012,'5pG45LiK5Y675b6I6IiS5pyN77yM5Zac5qyi5q+b5be+6KKr',1492857743,0,1,''),
(678,0,1023012,'5aW95aW95aW9',1492870595,0,1,''),
(679,0,1023012,'5LiN6ZSZ',1492432140,0,1,''),
(680,0,1023012,'5omL5oSf5LiN6ZSZ77yM6L+Y5pyJ6K+V55uW77yM5bqU6K+l5LiN6ZSZ55qE',1492141094,0,1,''),
(681,0,1023012,'5omL5oSf5LiN6ZSZ77yM5bey5Lii5rSX6KGj5py6',1491823622,0,1,''),
(682,0,1023012,'5omL5oSf5b6I5aW977yM5pyf5b6F55uW55qE5pWI5p6c77yB',1491726059,0,1,''),
(683,0,1023012,'6KKr5a2Q77yM5b6I5aW977yM5rip5pqW6YCC5Lit',1491644151,0,1,''),
(684,0,1023012,'6LSo6YeP5b6I5aW977yM5p+U6L2v6IiS5pyN77yM6Z2e5bi45Zac5qyi44CC',1491140923,0,1,''),
(685,0,1023012,'6Z2e5bi45ruh5oSPIOS7juminOiJsuWIsOi0qOWcsCDkvb/nlKjku6XlkI7lho3mnaXov73or4Q=',1490846807,0,1,''),
(686,0,1023012,'56m66LCD6KKr6LSo6YeP6LWP5Y+vIOe6v+e6seaOieavm+S4jeS8muWkquWkmiDlrp7nianpopzoibLmnInkuIDlrproibLlt64=',1486827737,0,1,''),
(687,0,1023012,'5LiN6ZSZ77yM5oiR5Zac5qyi6JaE6JaE55qE',1489722852,0,1,''),
(688,0,1023012,'5Zac5qyi',1487765794,0,1,''),
(689,0,1023012,'',1485927551,0,1,''),
(690,0,1023012,'5LiN6ZSZ',1484526547,0,1,''),
(691,0,1023032,'6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6au',1494419917,0,1,''),
(692,0,1023032,'6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6auY6LSo6YeP55qE6K+E5Lu377yM6au',1494419993,0,1,''),
(693,0,1023032,'5omL5oSf6L6D5p+U6L2v77yM6LS06Lqr5b6I6IiS6YCC77yM5Lmf5LiN5YOP5LmL5YmN5Lmw55qE5LiA5aWX6L2v55qE5pKR5LiN6LW35b2i44CC6LSo6YeP5rKh5b6X6K+077yM5ZSv5LiA5LiN6Laz55qE5aaC5aSn5a625omA6K+077yM5omj5a2Q5LiN5aSq5pyJ6LSo5oSf44CC',1492265874,0,1,''),
(694,0,1023032,'6LS06IKk5b6I6IiS5pyN5ZGi',1491622210,0,1,''),
(695,0,1023032,'5LiN6ZSZIOW+iOiIkumAguW+iOWlveeci++8gQ==',1491371792,0,1,''),
(696,0,1023032,'5oiR5LiA55u05Lul5Li65piv6KKr5a2Q55qE5Zub5Lu25aWX77yM5pS25Yiw5LiA55yL5YyF6KOF5b+D6YeM5oOz6IKv5a6a5LiN5piv6KKr5a2Q77yM5bCP5b+D57+857+855qE5ouG5byA77yM5p6c54S24oCm4oCm5oCq5oiR6Ieq5bex5rKh55yL5aW977yM5Y+q6IO95YaN6YeN5paw5Lmw6KKr5a2Q5LqG77yM5L2G5Lic6KW/6L+Y5pi',1489998959,0,1,''),
(697,0,1023032,'5pS25Yiw56uL5Yi75rSX5LqG77yM5LiN57yp5rC077yM5p+U6L2v6IiS6YCC77yM6LS06Lqr5b6I6IiS5pyN8J+RjQ==',1488770392,0,1,''),
(698,0,1023032,'6aKc6Imy5ZKM5Zu+54mH5beu6Led5aSn77yM6Z2i5paZ5b6I6IiS5pyN',1488249812,0,1,''),
(699,0,1023032,'5b6I5ryC5LquIOmdnuW4uOWWnOasoiDkuI3ov4fph5HlsZ7miaPlnKjmnpXlpLTkuIrmhJ/op4nmnInngrnljbHpmak=',1486300068,0,1,''),
(700,0,1023032,'552h6LW35p2l5oy66IiS5pyN55qE77yM5b6I5p+U6L2v44CC',1486440486,0,1,''),
(701,0,1023032,'5b6I5aW977yB5rSX5LqG55So5LiK5LqG44CC',1485329277,0,1,''),
(702,0,1023032,'5Lic6KW/5b6I5LiN6ZSZIOWMheijheebuOW9k+S6juS4gOS4quWQjOadkOi0qOeahOaUtue6s+iiiyDmiaPlrZDkvLzkuY7lj6rmmK/oo4XppbAg5oy65Zac5qyi55qE',1479620057,0,1,''),
(703,0,1023032,'5omL5oSf5piv5LiN6ZSZIOS9huW4puiNp+WFieWJgiDomb3or7Tov5nmmK/lm73lhoXlpKflpJrmlbDnurrnu4fnsbvkuqflk4HnmoTpgJrnl4XvvIzkvYbluIzmnJvkuKXpgInog73lnKjov5nmlrnpnaLmm7TliqDkuKXmoLzmiormjqfjgII=',1479349285,0,1,''),
(704,0,1023032,'5YyF6KOF6auY5aSn5LiK77yM5oSf6KeJ6L+Y5piv5YGP6JaE77yM5Lmw5LqG5Y+m5aSW5LiA56eN56Oo5q+b55qE5Zub5Lu25aWX77yM5Lu35qC85Lik5YCN5bem5Y+z77yM5beu5LiN5aSa55qE5oSf6KeJ77yM6LSo5oSf5b6I5aW977yM5Lyw6K6h55So6LW35p2l6IKv5a6a5LiN6ZSZ',1479874738,0,1,''),
(705,0,1023032,'5LiA5aaC5pei5b6A55qE5aW977yM5YyF6KOF6YO957uZ5Lq66YKj5LmI6IiS5pyN55qE5oSf6KeJ77yM5Lil6YCJ5LiA5aaC5pei5b6A55qE6YKj5LmI55So5b+D77yM57uG5b+D44CC',1480211103,0,1,''),
(706,0,1023032,'6LSo5oSf5b6I5aW977yB',1482931599,0,1,''),
(707,0,1023032,'6L+Z5qy+6L+Y5rKh5pyJ55So77yM5pG46LW35p2l5oy66IiS5pyN55qE77yM5oSf6KeJ5piv6LS06IKk57G755qE77yM6Ieq5Yqo5Z6C5bmz5oSf5bqU6K+l5q+U6L6D5aW944CC',1476580957,0,1,''),
(708,0,1023032,'',1482144201,0,1,''),
(709,0,1023032,'5LiN5aaC6YKj5Yeg5aWX56Oo5q+b55qE5aW944CC5L2G5Lmf6LSo5Zyw5LiN6ZSZ44CC',1480864739,0,1,''),
(710,0,1023032,'5Lu35qC855yf55qE5rKh55qE6K+044CC6LSo6YeP55yf55qE5rKh55qE6K+044CC6YCf5bqm5Lmf5rKh55qE6K+044CC5Lic6KW/5LiA5Yiw6ams5LiK5YWI5oqK6KKr5aWX5aWX5LiK5LqG44CC5LiA5YiH6YO95Yia5Yia5aW944CC44CC44CC',1475895123,0,1,''),
(711,0,1023032,'6Z2i5paZ5p+U6L2v6IiS6YCC77yM5L2G5aSq6JaE5LqG',1480420761,0,1,''),
(712,0,1023032,'5pS26LSn5b+r77yM5YaF5aSW5YyF6KOF5b6I57uG5b+D77yM5Lqn5ZOB5omL5oSf6L2v5ruR57uG6IW777yM6aKc6Imy5LiO5a6j5Lyg54Wn5o6l6L+R77yM5rex54Gw5pCt5rWF54Gw5b6I6ICQ55yL77yM5ZGz6YGT5LiN5aSnLOWmguaenOa0l+WQjuS4jeiEseiJsuWwsXBlcmZlY3Qg5LqG44CC5oC75L2T5oSf6KeJZ29vZCAh',1479861812,0,1,''),
(713,0,1023032,'',1479909502,0,1,''),
(714,0,1023032,'5Lil6YCJ77yM6LSo6YeP6LaF5aW977yM5b6I5pyJ5qC86LCD44CC',1479827075,0,1,''),
(715,0,1023032,'5rKh5pyJ5oOz6LGh5Lit55qE6YKj5LmI5aW977yM5q+U6LW356ys5LiA5qyh5Lmw552h6KGj6KKr5oOK6Imz5Yiw77yM6L+Z5qyh5pyJ54K55bCP5aSx5pyb44CC5Li76KaB5piv6L+Z5Liq5qOJ5paZ5pyJ54K56JaE77yM5a+55LqO6L+Z5Liq5Lu35L2N5p2l6K+057uH5b6X5LiN5aSf5a+G77yM6ICM5LiU6L+Y5pyJ54K55ZGz6YGT77y',1479480209,0,1,''),
(716,0,1023032,'6aKc6Imy57Sg5YeA77yM6IiS5pyN77yM5omL5oSf5Lmf5piv5rKh55qE6K+0',1479102385,0,1,''),
(717,0,1023032,'5b6I5qOSIOi/mOayoeS9v+eUqA==',1479008834,0,1,''),
(718,0,1023032,'5Lic6KW/5LiN6ZSZ55qE77yM5LiA5YiH5Yia5Yia5aW944CC5YGa5bel5piv5q+U6L6D57K+57uG44CC5bCx5piv5YWt5qC55Zu65a6a57uR5bim57O75LiK5Lul5ZCO77yM6KKr5aWX6ZO65bmz5pyJ54K55omv5b6X5LiN5pW06b2Q77yM5Lyw6K6h6L+Y5piv57O75b6X5aSq57Sn5LqG5ZCn44CC54ao54Or5LiA5LiL5Lya6IiS5pyN54K',1478758574,0,1,''),
(719,0,1023032,'6Z2e5bi46IiS5pyN5ZWK77yB5paZ5a2Q5b6I5aW977yM6L+Z5Liq5Lu35L2N5Lmw5Yiw55yf5piv6KeJ5b6X5o2h5LqG5Liq5L6/5a6c77yM6L+Z5aWX6KKr5a2Q5q+U6L6D5aSn77yM5b6I6Zq+5Lmw5Yiw5ZCI6YCC5Y+I5aW955yL5paZ5a2Q5Y+I6IiS5pyN55qE6KKr5aWX77yM5ZCO57ut6L+Y5Lya5YaN5Zyo5Lil6YCJ5Lmw5LiA5aW',1478694204,0,1,''),
(720,0,1023032,'5p2v5a2Q5b6I6IiS5pyN77yM5b6I5p+U6L2v77yM5oy65Zac5qyi',1476896393,0,1,''),
(721,0,1023034,'55uW552A5b6I6IiS5pyN77yM5b6I5Lqy6IKk77yM5Lmf5oy65pqW5ZKM77yB5rKh5pyJ6Imy5beu77yM5pSv5oyB5Lil6YCJ77yB77yB77yB5Lil6YCJ5pyJ5q+S',1492864267,0,1,''),
(722,0,1023034,'56m66LCD6KKr77yM6aKc6Imy5peg6Imy5beu77yM5bC65a+45ZCI6YCC77yM6LS06Lqr5L2/55So5peg5LiN6YCC5oSf44CC5YyF6KOF57K+576O77yM5Y+R6LSn6YCf5bqm5b+r77yB6LWe77yB',1493584869,0,1,''),
(723,0,1023034,'5pil5aSp5b6I6YCC5ZCI55uW77yM5pyJ6bit57uS5b6I6L2777yM5L+d5pqW5pWI5p6c6L+Y5piv5LiN6ZSZ55qE77yM5LiN55So55uW5aSn5Y6a5qOJ6KKr',1492434960,0,1,''),
(724,0,1023034,'55yf5b+D5aW955qE6KKr5a2Q77yM5aSP5aSp55uW5LiA54K55Lmf5LiN54Ot77yM5YeJ5YeJ55qE6Kem5oSf77yM5b6I6IiS5pyN44CC',1492395535,0,1,''),
(725,0,1023034,'5pW05L2T6LSo5Zyw5Y+K5YGa5bel5ruh5oSP77yM5q2j5Y+N5Y+M6Z2i5paZ6K6+6K6h5b6I55So5b+D77yM5bCk5YW25LiA5L6n55qE5aSW57+75YyF6L655b6I5Lq65oCn5L2T6aqMLvCfkY3wn4+8',1494241211,0,1,''),
(726,0,1023034,'5aSP5YeJ6KKr5b6I5p+U6L2v44CB5omL5oSf5b6I5bCP77yM6L+Z5qyh5Lmw5LqG5rC057KJ77yM5Ymb5Ymb5Y+I5Lmw5LqG5rC06JOd77yM5aaC5p6c5pyJ5YW25a6D6aKc6Imy6L+Y5Lya5YaN5Lmw',1491923898,0,1,''),
(727,0,1023034,'6KKr5a2Q5piv5Lmw57uZ5aWz5YS/55So55qE77yM5Y2V5Lq65bqK77yMMS4157Gz5Yia5aW977yM6Ieq6Lqr5pyJ5Liq5bCP6KKL5a2Q77yM5pS257qz5Lmf5b6I5pa55L6/44CC',1494507636,0,1,''),
(728,0,1023034,'5oy65b+r55qE77yM6aG65Liw5pyN5Yqh5aW944CC6KKr5a2Q5Yia5omT5byA77yM6L+Y5rKh55uW77yM55yL5LiK5Y676L+Y6KGM77yM8J+RjfCfkY3wn5GN77yM5LiL5qyh6L+Y5Zyo5Lil6YCJ5Lmw77yM6K6p5Lq65pS+5b+D44CC',1490063698,0,1,''),
(729,0,1023034,'5aSn5a626K+E6K665aW977yM6LaB6ZmQ5pe26LSt5p6c5pat5Lmw5LqG5LqM5bqK77yM6L276JaE5rip5pqW77yM5rKh5pyJ5byC5ZGz77yM5Zac5qyi44CC5Y+q5piv5Zyo5ZSv5ZOB5Lya5Lmw55qEMTUwKjIxMOeahOiiq+Wll+S4jeWQu+WSjOOAgg==',1491395347,0,1,''),
(730,0,1023034,'6LSo6YeP5b6I5aW977yM576957uS6KKr77yM5rGf6IuP5rGf5Y2X5Zyw5Yy677yMNOaciOS4i+aXrOWIsOS6lOaciOS4reaXrO+8jOebluW+l+W6lOivpeato+Wlve+8jOS4jeWGt+S4jeeDrQ==',1493021871,0,1,''),
(731,0,1023034,'5aW95ZCn44CCIOS4jeaYr+aIkeaDs+imgeeahOaEn+inieOAguS9hui0qOmHj+W+iOWlveOAgiDnlZnkuIvmnaXkuoY=',1494235109,0,1,''),
(732,0,1023034,'6ZmQ5pe26LSt5LqG5LqM5bqK77yM6aKc6Imy6Z2e5bi45Zac54ix77yM6LSo6YeP5Lmf5aW977yM5LiN5Zac5qyi5Y6a6YeN6KKr55qE5pyL5Y+L5Y+v5Lul6ICD6JmR44CC',1491395352,0,1,''),
(733,0,1023034,'5Ye65LmO5oSP5paZ55qE5aW977yM6L+Y5pyJ5Liq6KKL5a2Q6KOF6LW35p2l77yM5byA5aeL6L+Y5Lul5Li65piv552h6KKL5ZGi77yM5ZOI5ZOI5ZOI77yM5pyA6L+R5Lit5LqG5Lil6YCJ55qE5q+S77yM6L+Y5pyJ5LiJ5Liq5YyF6KO55piO5aSp5Yiw772e',1488464653,0,1,''),
(734,0,1023034,'56ys5LiJ5qyh5Lmw5LqG77yM5YWo5a625LiA5Lq65LiA5Liq44CC5Y6a6JaE5aSn5bCP6YO95b6I5ZCI6YCC44CC5pyJ5LiA5bGC6JaE6JaE55qE576957uS77yM5o6o6I2Q44CC',1493088844,0,1,''),
(735,0,1023034,'6KKr5a2Q55qE6LSo6YeP6LaF57qn5aW977yM5oiR54m55Yir5Zac5qyi77yB5oiR5bey57uP5piv5Lil6YCJ55qE6ZOB57KJ5Za977yB',1492392698,0,1,''),
(736,0,1023034,'5YyF6KOF5b6I5aW977yM5ou/5Zyo5omL6YeM5Lmf5b6I5pyJ5YiG6YeP77yM5pG4552A5oy66IiS5pyN55qE44CC5Yia5ouG5byA5pyJ5LiA6IKh6bit5q+b55qE5ZGz6YGT77yM5rSX5LiA5qyh5bCx5rKh5pyJ5LqG44CC5rSX5LqG5LiN5o6J6Imy77yM5LiN6KS255qx77yM5aW96K+E44CC',1493460093,0,1,''),
(737,0,1023034,'6KKr5a2Q5Y+I6L275Y+I6L2vIOi/meS4quWto+iKguebluato+WQiOmAgg==',1494251494,0,1,''),
(738,0,1023034,'5aSq5aW955So5LqG77yM6Jm96JaE5L2G5oy65pqW5ZKM55qE77yM546w5Zyo55So5oy65aW9',1493398135,0,1,''),
(739,0,1023034,'5b6I6IiS5pyN5ZOm77yM5aSP5aSp55So5q2j5aW9',1494166932,0,1,''),
(740,0,1023034,'5pio5aSp5LiL5Y2I5pS25Yiw77yM6L+Y5rKh5omT5byA55yL77yM5pma5LiK5Zue5a625ZCO5YaN6aqM5pS244CC',1493857260,0,1,''),
(741,0,1023034,'5pG46LW35p2l5b6I6IiS5pyN77yM6L276JaE77yM6aKc6Imy5Lmf5Zac5qyi',1494058886,0,1,''),
(742,0,1023034,'5b6I6IiS5pyN5b6I5Y+v54ix5ZGA',1494003112,0,1,''),
(743,0,1023034,'6L+Y5rKh5ouGIOeci+edgOi/mOS4jemUme+8jOetieeUqOS6huWGjeadpeWbnuivhA==',1493345321,0,1,''),
(744,0,1023034,'5pG45LqG5pG46L+Y5piv5b6I5p+U6L2v55qE',1493811711,0,1,''),
(745,0,1023034,'5YyF6KOF5b6I5aW944CC6ZqU5aSp5bCx5Yiw5LqG77yM6LSo6YeP5rKh5b6X6K+077yM6ICM5LiU5b6I6IiS5pyN77yM5bCx5piv5q+U5oOz6LGh5Lit5bCP5LqG54K577yM5b2i54q25pyJ54K55aWH5oCq77yM5LiN5YOP5Y+M5Lq66KKr77yM5Lmf5LiN5YOP5Y2V5Lq66KKr77yM5LuA5LmI6ay85ZOI5ZOI',1493169282,0,1,''),
(746,0,1023034,'55uW552A5b6I6IiS5pyNICDnvZHmmJPkuJzopb/mjLrlpb3nmoQ=',1493397949,0,1,''),
(747,0,1023034,'6LSo5oSf5LiN6ZSZ77yM5Lmw5Liq5aWX77yM6L+Z5Liq5aSP5aSp5LiN5oCV54Ot5q275Lmf5LiN5oCV552A5YeJ5ZWm5ZOI5ZOI',1492163363,0,1,''),
(748,0,1023034,'6L275L6/77yM5a6e54mp6aKc6Imy5pu05aW95Lqb',1493214045,0,1,''),
(749,0,1023034,'6LSo5Zyw5LyY6Imv77yM5rC06JOd6Imy54m55Yir6YCC5ZCI5Y6m6Zeo55qE5aSp5rCU77yB',1493031833,0,1,''),
(750,0,1023034,'5pS25YiwIOWMheijheWlveWlvSDlpKfniLE=',1492842014,0,1,''),
(751,0,1027004,'5aSq5Zac5qyi6L+Z5Liq6aKc6Imy5LqG77yM57qx5biD6LSo5Zyw5p+U6IKk6YCP5rCU77yM5Lit5LqG5Lil6YCJ55qE5q+S77yM5Lmw5Lmw5Lmw5LiN5YGc44CC',1493190558,0,1,''),
(752,0,1027004,'5LiN6ZSZ77yM6aKc5YC86auY77yM5ou/6LW35p2l5Lmf5pyJ5LiA5a6a55qE6YeN6YeP77yM5YeG5aSH57uZ5YS/5a2Q55So',1492870490,0,1,''),
(753,0,1027004,'5aSn5Lq65bCP5a2p6YO96IO955So55qE56m66LCD6KKr77yM5p+U6L2v77yM54m55Yir6YCC5ZCI6L+H5pWP5L2T6LSo',1492791527,0,1,''),
(754,0,1027004,'NuWxgue6seW4g++8jOiWhOWOmuW+iOWQiOmAgu+8jOinpuaEn+iIkuacje+8jOmAj+awlOW+iOWlveOAgg==',1492564878,0,1,''),
(755,0,1027004,'5YGa5bel5LiN6ZSZ77yM6aKc6Imy6L+Y5b6I5ryC5Lqu77yM5aSn54ix5ZWK',1492423315,0,1,''),
(756,0,1027004,'5b6I5p+U6L2v77yM5Lmf5q+U6L6D5L+d5pqW77yM5oy65aW955qE',1492385956,0,1,''),
(757,0,1027004,'5YyF6KOF5b6I5aal5biWIOmAgei0p+W+iOW/q++8geiiq+WtkOi9r+i9r+eahOW+iOiIkuacjSDmsqHmnInku4DkuYjlkbPpgZMg5bey57uP5rSX5LqGIOaZvuW5suS6huWwseiDveeUqOS6hiDop4nlvpfmjLrpgILlkIjlpI/lpKkg6YCP5rCU5p+U6L2v6IiS6YCC77yB',1492664795,0,1,''),
(758,0,1027004,'5b6I5aW95b6I5Zac5qyi77yM5Zue6ICB5a625LqG77yM5YWI55Sf6K+05b6I5aW95b6I6IiS5pyN5Y+R5LqG5Lik5byg54Wn57uZ5oiR77yM55u45L+h5Lil6YCJ6ZmQ5pe25oqi6LSt5Lmw55qE5b6I5aW977yM5rS75Yqo5b6I5aSa5b6I5Zac5qyi',1491716838,0,1,''),
(759,0,1027004,'5LiN5Y6a55qE5YeJ6KKr77yM5pyJ54K55Lu96YeP44CC5omL5oSf5LiN6ZSZ77yM57Sg6ZuF55qE6aOO5qC877yM6L+Z5qC35a2Q5oy65Zac5qyi55qE77yB',1492962841,0,1,''),
(760,0,1027004,'5LuK5bm054ix5LiK57qx5biD77yM6aKc6Imy5reh6ZuF5a6c5Lq677yM5p+U6L2v5Y+I6YCP5rCU44CC5aaC5p6c5pyJ5a6d5a6d54mI5bCx5pu05aW95LqG44CC',1491661750,0,1,''),
(761,0,1027004,'5LuK5bm054ix5LiK57qx5biD77yM6aKc6Imy5reh6ZuF5a6c5Lq677yM5p+U6L2v5Y+I6YCP5rCU44CC5aaC5p6c5pyJ5a6d5a6d54mI5bCx5pu05aW95LqG44CC',1491661748,0,1,''),
(762,0,1027004,'6LSo6YeP5b6I5aW977yM57uG6IqC5Lmf5peg5Y+v5oyR5YmU77yM5omL5oSf6aKc6Imy6YO95b6I5ruh5oSP77yM5piv5oiR5ZKM6ICB5YWs5Zac5qyi55qE6LCD6LCD77yM5Lil6YCJ55qE5Lic6KW/5q+P5qC36YO95oOK5Zac77yM55yf5piv5aW955qE55Sf5rS75rKh6YKj5LmI6LS177yB',1492585943,0,1,''),
(763,0,1027004,'5b6I5aW977yM5ou/5Ye65p2l5pyJ54K55ZGz6IO955So5LmL5YmN57uG57uG5Lyw6K6h5Lya5aW977yM5q+U5oOz6LGh5Lit5Y6a',1491790361,0,1,''),
(764,0,1027004,'56ys5LiA5qyh55+l6YGT5pyJ57qx5biD6KKr77yM5Lmf5piv56ys5LiA5qyh5Lmw77yM6KKr5a2Q5b6I5ryC5Lqu77yM5omL5oSf5Lmf5b6I5aW977yM5biM5pyb5Yiw5aSP5aSp57uZ5bCP5pyL5Y+L5aW955So44CC5Y+q5piv6L+Z5Liq6aKc6Imy5bqU6K+l5Y+r57Sr55m95qC85pu05ZCI6YCC',1491904467,0,1,''),
(765,0,1027004,'5b6I5p+U6L2v',1494309490,0,1,''),
(766,0,1027004,'5pG4552A5b6I6IiS5pyN77yM5aWz5YS/6LaF5Zac5qyi',1494246628,0,1,''),
(767,0,1027004,'56ys5LiA5qyh5Lmw5Lil6YCJ55qE5bqK5ZOBIOe6r+e6seW4g+eahOiiq+WtkA==',1494127324,0,1,''),
(768,0,1027004,'5Lmw5LqG5Lik5bqK6KKr5a2QIOmDveWlveWWnOasoiDmnInmlLbnurPlvojmlrnkvr8=',1493811806,0,1,''),
(769,0,1027004,'5oy65Y6a5a6e55qE57qx5biD5YeJ6KKrIOS4jemUmS4uLi4uLg==',1493352119,0,1,''),
(770,0,1027004,'6LSo6YeP5b6I5aW977yM6ICM5LiU5qOJ57qx5b6I6L2v77yM6YCP5rCU5oCn5b6I5aW9',1493088712,0,1,''),
(771,0,1027004,'5rSX6L+H6L+Y5rKh55So77yM562J5aSp54Ot5LiA5Lqb5YaN6K+V6K+V55yL',1492932343,0,1,''),
(772,0,1027004,'5YyF6KOF5b6I5Lil5a6e77yM5omT5byA5pyJ5Lqb5rCU5ZGz77yM5rSX5rSX5bqU6K+l5bCx5aW95LqG77yM6LSo6YeP5b6I5aW977yM5Zac5qyi',1491830515,0,1,''),
(773,0,1027004,'6aKc6Imy57Sg6ZuF77yM57qv5qOJ57qx5biD5pG46LW35p2l5b6I6IiS5pyN77yM5LiN6L+H55yf55qE6Juu6JaE55qE77yM6ICM5LiU5aSq5bCP5LqG77yM5Y+q6YCC5ZCI5Y2V5Liq5oiQ5Lq655So77yM5omA5Lul5omT566X5a+55oqY6LW35p2l57uZ5a6d5a6d5aSP5aSp55So77yINuaciOWInemihOS6p+acn++8ieOAgg==',1491965839,0,1,''),
(774,0,1027004,'57KJ5aup55qE6aKc6Imy5b6I5aW955yL77yM5pG4552A5Lmf5p+U6L2v77yM5LiN55+l5LiL5rC05Lya5oCO5qC3',1491817770,0,1,''),
(775,0,1027004,'6LaF54ix5ZOS',1492522059,0,1,''),
(776,0,1027004,'6L+Y5rKh5byA5aeL55So77yM5bqU6K+l5LiN6ZSZ55qE55u45L+h572R5piT5Lil6YCJ44CC',1492410724,0,1,''),
(777,0,1027004,'54m55Lu35YWl55qE77yM6Z2i5paZ5omL5oSf5oy65aW977yM5aSP5aSp5Yiw5LqG5q2j5aW95Y+v5Lul55So5LqG44CC',1491542039,0,1,''),
(778,0,1027004,'5rKh5ouG77yM5bqU6K+l5LiN6ZSZ44CC6aKc6Imy5YGP5rex',1492251271,0,1,''),
(779,0,1027004,'5L2G5oS/5Y+v5Lul5rC05rSX',1492260095,0,1,''),
(780,0,1027004,'5Lmw57uZ5aWz5YS/55So55qE77yM5bqU6K+l6L+Y5LiN6ZSZ5ZCn',1492068419,0,1,''),
(781,0,1029005,'6Z2e5bi45Zac5qyi8J+SleW+iOS4jemUmQ==',1493864921,0,1,''),
(782,0,1029005,'5LiN6ZSZ',1493564510,0,1,''),
(783,0,1029005,'6ICB5amG6K+06L+Y6KGM77yM5q+U6L6D5Yaw77yM6aKc6Imy5Zac5qyi',1493391875,0,1,''),
(784,0,1029005,'6Z2e5bi45pyJ6LSo5oSf77yM5ouO552A5b6I6YeN77yM6ICM5LiU6Z2e5bi46IiS5pyN77yM5aSn54ix77yM6LWe576O5LmL6K+N5peg5Lul6KiA6KGo44CC',1485683237,0,1,''),
(785,0,1029005,'6L+Y5piv5LiN6ZSZ55qEIOW+iOa8guS6riDkuI3ov4fku7fmoLzkuZ/nnJ/nmoTom67otLXnmoQ=',1478602175,0,1,''),
(786,0,1029005,'5oiR6KeJ5b6X6Lef54Wn54mH5LiA5qC377yM5rKh5pyJ6Imy5beu77yM5b6I5ryC5Lqu77yM5b6I6IiS5pyN',1476022444,0,1,''),
(787,0,1029005,'5b6I5aW955qE5bqK5ZOB44CC5oSf6KeJ5ZKM57qv5qOJ55qE5rKh5pyJ5b6I5aSn55qE5Yy65Yir44CC6aKc6Imy5LiN6ZSZ77yM5b6I5Zac5qyi44CC',1471747927,0,1,''),
(788,0,1029005,'6Z2e5bi45LiN6ZSZ77yM5aSq6IiS5pyN5LqG',1470409389,0,1,''),
(789,0,1029005,'5q+U5LmL5YmN5Yir5Lq66K+E5Lu355qE6aKc6Imy5pu05ZKM572R5LiK5Zu+54mH5o6l6L+R5LiA5Lqb',1469542918,0,1,''),
(790,0,1029005,'5Zu+54mH6L+Y5piv5q+U6L6D5ryC5Lqu77yM5L2T5oSf6L+Y5Y+v5Lul5ZCn77yB',1468892056,0,1,''),
(791,0,1029005,'6Z2i5paZ6IiS5pyN77yM5omL5oSf5p+U5ZKM77yM5YGa5bel57K+57uG77yM5aW9IeW4jOacm+S4pemAiee7p+e7reS4pemAie+8jOaPkOS+m+abtOWkmui0qOS8mOS7t+WunueahOi0p+WTgee7meS5sOWutuOAgg==',1490233167,0,1,''),
(792,0,1029005,'6L+Y5rKh5pyJ5byA5aeL55So5ZGiXl9e',1494431087,0,1,''),
(793,0,1029005,'6LSo6YeP55yf55qE5b6I5aW9',1494417971,0,1,''),
(794,0,1029005,'6aKc6Imy5aSn54ixICAgICDotKjmhJ/kuZ/kuI3plJkgICAg5bCx5piv5oSf6KeJ5aW96LS144CC44CC44CC',1494114133,0,1,''),
(795,0,1029005,'5q+U6aKE5oOz5aW944CC6L+Y5Y+v5Lul55qE44CC',1494028890,0,1,''),
(796,0,1029005,'5rC05aKo55S755qE5oSf6KeJ77yM5oy65ryC5Lqu55qE77yM6LSo5Zyw5Lmf6IiS5pyN',1493994413,0,1,''),
(797,0,1029005,'5omL5oSf5LiA5rWB',1493991258,0,1,''),
(798,0,1029005,'6LSo5oSf6L+Y5piv5b6I5LiN6ZSZ55qE77yM6aKc6Imy5rKh5pyJ5Zu+54mH5LiK55qE6bKc6Imz772e5oC75L2T5LiN6ZSZ',1493085826,0,1,''),
(799,0,1029005,'5aW977yM5q+U5L6/5a6c55qE5ruR5LiA54K5',1493875005,0,1,''),
(800,0,1029005,'6Z2e5bi46IiS5pyN',1493652452,0,1,''),
(801,0,1029005,'5aW9',1493488028,0,1,''),
(802,0,1029005,'5b6I5aW9',1493310470,0,1,''),
(803,0,1029005,'6aKc6Imy5b6I5ryC5LquIOaRuOS4iuWOu+WHieWHieeahA==',1493182402,0,1,''),
(804,0,1029005,'5LiN6ZSZ',1493180221,0,1,''),
(805,0,1029005,'5aW9',1493080254,0,1,''),
(806,0,1029005,'5b6I5LiN6ZSZ77yM5aSP5aSp54m55Yir5ZCI6YCC77yM6Z2e5bi46IiS5pyN',1492942984,0,1,''),
(807,0,1029005,'6aKc6Imy5ZKM5omL5oSf6YO95LiN6ZSZ',1492952800,0,1,''),
(808,0,1029005,'5aW9',1492847043,0,1,''),
(809,0,1029005,'5LuK5aSp5byA5aeL5L2/55So77yM5ruR44CB6L2v77yM5LiN6K665piv6Lqr5L2T5o6l6Kem6L+Y5piv6aKc6Imy77yM6YO95Zac5qyi',1492357643,0,1,''),
(810,0,1029005,'5Yaw5Yaw55qEIOW+iOS4nea7kSDpgILlkIjlpI/lpKnnlKg=',1492699877,0,1,''),
(811,0,1030001,'6Jm954S25b6I6ZW/77yM5YyF6KOF5b6I5LuU57uG44CC5a6M5YWo5LiN55So5ouF5b+D5b+r6YCS6YCU5Lit5o2f5Z2P77yM6auY56uv5aSn5rCU44CC576K5q+b55qE5b6I5pyJ6LSo5oSf44CC',1489713145,0,1,''),
(812,0,1030001,'6L+Y5LiN6ZSZ44CC5aSa5ouN5LqG5LiA5Z2X6YCA6LSn5Lmf5oy656ev5p6B55qE772e',1494261972,0,1,''),
(813,0,1030001,'6L+Y5LiN6ZSZ44CC',1494261922,0,1,''),
(814,0,1030001,'6L+Y5Y+v5Lul77yM5Zac5qyi',1492175823,0,1,''),
(815,0,1030001,'5Zyw5q+v5LiN6ZSZ77yM5Y6a5a6e77yM5rKh5ZWl5byC5ZGz77yM5LiN6YCC5ZCI5YWJ6ISa44CC',1491986796,0,1,''),
(816,0,1030001,'6L+Y5pyq5L2/55So77yM5L2G5bey5bGv6LSn44CC',1491531253,0,1,''),
(817,0,1030001,'5q2j5ZCI6YCC77yM6LSo6YeP5LiN6ZSZ',1491013835,0,1,''),
(818,0,1030001,'5Lmm5oi/55So77yM5rKh5pyJ54m55oSP5ouN54Wn54mH44CC',1490795158,0,1,''),
(819,0,1030001,'5aW955yL77yM5LiU6Z2e5bi45Y6a5a6e77yM5ruh5oSP44CC',1489417616,0,1,''),
(820,0,1030001,'5Zyw5q+v5Y6a5bqm57qm5LiA5YWs5YiGIOaLhuWwgeaXtuacieeCuea3oea3oeeahOe+iuiGu+WRsyDotaTohJrouKnkuIrljrvmhJ/op4nmnInngrnns5kg5b6I5ruh5oSP',1482659721,0,1,''),
(821,0,1030001,'5qOV6Imy5LiN5piO5pi+5ZWK',1487829454,0,1,''),
(822,0,1030001,'5omL5oSf5LiN6ZSZ77yM6Iqx57q56Lef55yL6LW35p2l5LiN5LiA5qC377yM5piv5qC857q555qE',1485839741,0,1,''),
(823,0,1030001,'6Z2e5bi45YiS566X77yM5b6I6YeN77yM5LiN5piv54m55Yir5Y6a55qE5qy+5byP77yM56iN5b6u5pyJ54K55ZGz6YGT77yM5pm+5LqG5Lik5aSp5bCx5aW95LqG77yM6Z2e5bi45ruh5oSP77yB',1479139002,0,1,''),
(824,0,1030001,'6Z2e5bi45Zac5qyi77yM566A5Y2V5py057Sg77yM5bmz5pe25omr5Zyw5py65Zmo5Lq65bCx6IO95aSf5omT55CG',1482984918,0,1,''),
(825,0,1030001,'5b6I5aW977yM6LaF5YC8',1482755794,0,1,''),
(826,0,1030001,'562J5oiR5oqK55S75LiA5oyC77yM5pyJ5pyo5pyJ5b6I5a6M576O77yM5ZOI5ZOI77yB5oOz5YWl5omL5aW95LmF55qE5Zyw5q+v77yM5LiA55u05rKh6IiN5b6X77yM6LaB552A5rS75Yqo5YWl5omL77yM5oSf6KeJ6L+Y5piv5Lmw6LS15LqG4oCm6ICD5ouJ5omNNzg177yM5omT5oqY5L6/5a6c5pyJNTYw5Lmw55qE77yM5oiR6Iqx5Lq',1481438498,0,1,''),
(827,0,1030001,'5LiN6ZSZ77yM5b6I5Y6a5a6e77yM5rKh5pyJ5oOz6LGh5Lit6YKj5LmI5omO77yM6ZO65Zyo5Y2n5a6k556s6Ze05bm456aP5oSf5o+Q5Y2H',1480688797,0,1,''),
(828,0,1030001,'5aW9IOacgOWlveacieabtOWkp+eahA==',1481099451,0,1,''),
(829,0,1030001,'6L+Y55So6K+05LmI77yf55yL5Zu+4oCm4oCm5Lil6YCJ6ISR5q6L57KJ77yM5LiN5aSa6K+05LqG77yM6LWe8J+RjQ==',1479793564,0,1,''),
(830,0,1030001,'5LiN6ZSZfuaMuuWOmueahH7mgKfku7fmr5Tpq5h+5pyJ54K55YS/5ZGz5YS/77yM5biM5pyb6L+H5Yeg5aSp5bCx5aW95LqGfg==',1479119993,0,1,''),
(831,0,1030001,'5Lik5Z2X5a+55o6l77yM6ZO65Zyo5LqG5a6i5Y6F5b6I5ZCI6YCC44CC5ZKM5Zu+54mH5LiN5ZCM77yM5L2G5piv5b6I5aW955yL44CC',1479090471,0,1,''),
(832,0,1030001,'5oC75L2T5pWI5p6c6L+Y5Y+v5Lul77yM5LuU57uG55yL5bqU6K+l5LiN5piv5YWo576K5q+b55qE77yM5biM5pyb5LiN6KaB5o6J5rij',1478948879,0,1,''),
(833,0,1030001,'57Gz6Imy55qE77yB5oiR55qE5Zyw56CW5piv57Gz6Imy55qE77yB5Yia5aW96YWN57Gz6Imy5Zyw5q+v77yB6JaE77yB5Lik6Z2i6YO95piv5LiA5qC355qE',1476061259,0,1,''),
(834,0,1030001,'5a626YeM55qE54yr6KGo56S65ruh5oSP',1479915035,0,1,''),
(835,0,1030001,'6Lef5rKZ5Y+R5b6I5pCt',1479724275,0,1,''),
(836,0,1030001,'6L+Y5oiQ',1479538095,0,1,''),
(837,0,1030001,'6LSo5Zyw5LiN6ZSZ44CC6aKc6Imy5pCt6YWN5Zyw5p2/5Zyo5Lmf5Y+v5Lul77yM5LiN6L+H5Y+v6IO955Wl5rex5LqG',1479105852,0,1,''),
(838,0,1030001,'5Yia5pS25Yiw6LSn77yM5YyF6KOF5aW977yM55yL5LiK5Y675LiN6ZSZ77yM5Y+M5Y2B5LiA5LiJ5aSp5Yiw55qE6LSn44CC',1479192636,0,1,''),
(839,0,1030001,'5Zyw5q+v5LiN6ZSZ77yM6LW25Zyo5Y+M5Y2B5LiA5pyf6Ze05Lmw55qE77yM5pSv5oyB572R5piT5Lil6YCJ77yB',1479126971,0,1,''),
(840,0,1030001,'5Zyw5q+v5rKh5pyJ5omT5byA77yM55yL5LiK5Y675b6I5LiN6ZSZ44CC5oiR5bey57uP54ix5LiK572R5piT5LqG',1478945160,0,1,''),
(841,0,1030002,'5LiN6ZSZ5ZGm',1494118723,0,1,''),
(842,0,1030002,'5aal5aal55qE55So5LiK5LqG77yM6L+Y5ouN5LqG54Wn54mH77yM57ud576O6IOM5pmv5aKZ44CC',1492094403,0,1,''),
(843,0,1030002,'6ISa5oSf5b6I5Y6a77yM5pWI5p6c5LiN6ZSZ44CC',1491208975,0,1,''),
(844,0,1030002,'5a6i5Y6F55So77yM5rKh5pyJ54m55oSP5ouN54Wn54mH44CC',1490795155,0,1,''),
(845,0,1030002,'5Lmw5LqG5Lik5Z2X77yM5oqK6Ieq5bex55qE5oi/6Ze06KOF6aWw5oiQ6L+Z5qC355qE5qC35a2Q77yM5b6I5ruh5oSPXl9e',1487825718,0,1,''),
(846,0,1030002,'6LKM576O',1487313889,0,1,''),
(847,0,1030002,'5Zyw5q+v6LSo6YeP5q+U5oOz6LGh5Lit55qE6L+Y6KaB5aW977yM5b6I5Y6a5a6e77yM5q+U5oiR5LmL5YmN5reY5a6d6YeM5Lmw55qE5aW95aSq5aSa5LqG77yM6L+Y6YCB5LqG5Liq5pS257qz5p6244CC',1480920370,0,1,''),
(848,0,1030002,'5Y6a5a6e77yM5Zac5qyi77yM5reY5a6d55qE5Lik5LiJ55m+6Lef6L+Z5Liq5a6M5YWo5peg5rOV5q+U',1486535728,0,1,''),
(849,0,1030002,'6L+Z5Liq5b6I576O77yM5pys5p2l5oOz5Lmw5oqY5omj5aSn55qE6YKj5qy+77yM5Y+v5piv55yL6K+E5Lu35oCV5pyt6ISa6L+Y5piv6YCJ5LqG6L+Z5Liq77yM5aSn54ix5ZWK77yB',1478777170,0,1,''),
(850,0,1030002,'5qOJ6LSo5bqV55qE576K5q+b5q+v55Sf5oCB5YC85b6I6auY5ZOm77yB5oSf6LCi5Y2w5bqm77yB5oSf6LCi5Lil6YCJ77yB',1480913286,0,1,''),
(851,0,1030002,'6L+Y5LiN6ZSZ77yM55Sx5LqO5aKZ6Z2i5piv5byn5b2i6ZO65LiN5Yiw5L2N5a6e5Zyo5piv5rKh5rOV',1480328437,0,1,''),
(852,0,1030002,'5b6I5aW9',1480175427,0,1,''),
(853,0,1030002,'5YWJ6ISa6Lip552A5rKh5pyJ5b6I5omO6L+Y5piv6Juu6IiS5pyN55qE',1479019245,0,1,''),
(854,0,1030002,'6LSo6YeP5b6I5aW9',1479118202,0,1,''),
(855,0,1030002,'5oSf6KeJ5LiN6ZSZ77yM5aW955yL5Lmf6ICQ6ISP',1479022213,0,1,''),
(856,0,1030002,'6Z2e5bi45aW955yL',1478594696,0,1,''),
(857,0,1030002,'5Zyw5q+v5Y6a5bqm5ZCI6YCCIO+8jOminOiJsuWWnOasoiDvvIzmsqHmnInmjonmr5vnmoTmg4XlhrXogIzkuJTmsqHmnInlvILlkbPvvIzmlbTkvZPlvojmu6HmhI8=',1476875822,0,1,''),
(858,0,1030002,'5b6I5LiN6ZSZ77yM5a625Lq66YO95b6I5Zac5qyi77yB',1477495336,0,1,''),
(859,0,1030002,'56Gu5a6e5b6I5aSn6aqa5ZGz77yM5aaC5p6c6Lq65Zyo5LiK6Z2i44CC6Lqr6auY6LaF6L+H5LiA57Gz55qE56uZ6LW35p2l6Ze75LiN5Yiw44CC54yr54uX55Wl5pyJ5LiN54ix',1491796725,0,1,''),
(860,0,1030002,'6L+Z5Liq55yf55qE5LiN6IO95pu06LWe5LqG77yB77yB77yB6aKc6Imy5ZKM5oiR5a625rKZ5Y+R6LaF57qn6YWN77yM5Lmf5rKh5pyJ5Ye6546w6K+E6K666YeM5o6J5q+b56We6ams55qE546w6LGh77yM6ICB5YWs54m55Yir54m55Yir5Zac5qyi77yB',1493534992,0,1,''),
(861,0,1030002,'54m55Yir6IiS5pyN77yM576O77yM6Lip5Zyo5LiK6Z2i6L2v6L2v55qE77yM6ZmQ5pe254m55oOg5Lmw5LiL5p2l55qE77yM5Lu35qC85Lmf5aW957uZ5Yqb77yM5byA5b+D5Zac5qyi5YC85b6X5YWl5omL',1494032083,0,1,''),
(862,0,1030002,'5Yia5byA5aeL6KeJ5b6X576K5q+b55qE5ZGz6YGT5aSq6YeN5LqGIOWQjuadpeWkmumAmumAmumjjuWwseWlveS6hiDpopzoibLku4DkuYjnmoTpg73mjLrlpb3nnIvnmoQ=',1488550202,0,1,''),
(863,0,1030002,'5byA5aeL5pyJ5LiA54K554K55o6J5q+b77yM5LiN6L+H5Zyw5q+v5b6I5Y6a6YeN5Yeg5LmO5Lmf5rKh5LuA5LmI5ZGz6YGT77yM5oC755qE5p2l6K+077yM5Lil6YCJ6L+Z5qyh5rKh5pyJ6K6p5oiR5aSx5pyb44CC',1488113294,0,1,''),
(864,0,1030002,'6L+Y6KGMIOWwseaYr+eMq+WtkOeIseWcqOS4iumdouaKk+adpeaKk+WOu+W9k+eMq+aKk+advw==',1492582907,0,1,''),
(865,0,1030002,'6L+Y5aW977yM5Yay552A5Y2w5bqm5omL5bel55Sf5Lqn5Y6777yM',1494491223,0,1,''),
(866,0,1030002,'5aW9',1494433412,0,1,''),
(867,0,1030002,'5aW9',1494433405,0,1,''),
(868,0,1030002,'6Z2e5bi45aW977yB',1494244154,0,1,''),
(869,0,1030002,'5oy65aW955qE77yM5rKh5pyJ5aSa5bCR5rCU5ZGz77yM5piv55yf576K5q+b44CC',1494148568,0,1,''),
(870,0,1030002,'5LiN6ZSZ',1494139098,0,1,''),
(871,0,1030003,'54m55Yir54m55Yir5aW955yL77yB77yB77yB5Lu35qC855yf55qE5b6I5YiS566X',1492863791,0,1,''),
(872,0,1030003,'5aSn54ix5ZWK77yB5Y+R6LSn5b6I5b+r77yB5a6d6LSd5oOK6Imz5LqG77yB5Zac5qyi55qE6aKc6Imy5ZKM6Iqx6Imy77yM56uL5L2T5oSf5by677yB5pyJ5LiA54K55YS/576K5q+b55qE5ZGz5YS/77yM5bqU6K+l5YeJ5YeJ5bCx5aW95LqG',1490795899,0,1,''),
(873,0,1030003,'54mp5rWB5Zyo6L+H5bm05pyf6Ze05Lmf6aG65Yip6L6+5Yiw77yB54K56LWe77yB5a6e54mp6aKc6Imy5peg5YGP5beu77yB5bCx5piv6L+Z56eN57qv576K5Zyw5q+v5omL5oSf5q+b5Lya5pyJ5Lqb5omO',1485831716,0,1,''),
(874,0,1030003,'6LaF5Zac5qyi77yB5reY5a6d5ZCM5qy+6KaB6LS15aW95Yeg55m+5ZGi77yB5Y+m5aSW57uZ5b+r6YCS5bCP5ZOl54K56LWe77yM5pil6IqC5pyf6Ze06L+Y57uZ5oiR6YCB6LSn77yB',1485760579,0,1,''),
(875,0,1030003,'5paw5oi/5a2Q6L+Y5rKh5ou/5Ye65p2l55So77yM5Zuk552A55qE77yM5bCx5piv5L+h6LWW5Lil6YCJ44CC',1494055015,0,1,''),
(876,0,1030003,'6LSo5oSf6Z2e5bi45aW977yM6YCB57uZ54i45aaI55qE5bCP56S854mp77yM5ruh5oSP77yB',1493986298,0,1,''),
(877,0,1030003,'5a6M576O5aWR5ZCI5a626YeM55qE6YWN6Imy77yM6Lip5LiK5Y675Lmf5LiN5piv5b6I5omO5Lq677yM5LiA5a625Lq65YyF5ous54yr5Li75a2Q6YO95b6I5Zac5qyi44CC',1485215620,0,1,''),
(878,0,1030003,'5LiN6ZSZ',1492230904,0,1,''),
(879,0,1030003,'5pCs5paw5a625YeG5aSH55qE77yM5Lil6YCJ55qE6LaF57qn57KJ5Lid5LqG77yM6KaB5YmB5omL55qE6IqC5aWP',1489974503,0,1,''),
(880,0,1030003,'5aW955yL77yB',1489409211,0,1,''),
(881,0,1030003,'5a6i5Y6F5rKZ5Y+R5pCt6YWN5Lit77yM6Z2g5Zyw5q+v5p2l6KGl5pWR77yM5Y2P6LCD5LqG5LiA5LiL44CC5oy65aW977yB6K+V6ZO65LqG5LiA5LiL77yM5LiN5ruR44CC',1483367615,0,1,''),
(882,0,1030003,'5pWI5p6c5LiN6ZSZ',1486707684,0,1,''),
(883,0,1030003,'6L+Y5rKh6JKy77yM5omT566X5Yiw5LqG5aSp5rCU6L2s5pqW5pe277yM5oqK5a625byE5bmy5YeA5aal5aal5ru06ZO65LiK5L+d6bKc6Iac77yM5YaN6ZO65Zyw5q+v44CC',1479299240,0,1,''),
(884,0,1030003,'6L+Y6KGM77yM5Lu35qC85pu0576O5Li95bCx5aW95LqG77yM5bCx5piv5LiN55+l6YGT5pel5ZCO5ZKL5riF5rSX44CC',1484745632,0,1,''),
(885,0,1030003,'6aKc6Imy5YGP5pqX77yM55yL6LW35p2l6ISP6ISP55qE5oSf6KeJ',1485268418,0,1,''),
(886,0,1030003,'6L+Z5Liq5piv5oiR5Zac5qyi55qE5qy+5byP77yM6Z2e5bi45ruh5oSP',1484717223,0,1,''),
(887,0,1030003,'5LiN6ZSZ',1484194696,0,1,''),
(888,0,1030003,'5Zyw5q+v5b6I6LWe5Zmi77yM6Lip552A5oSf6KeJ5LiN5piv5b6I5rij77yM5pyJ5rKh5pyJ5LuA5LmI5ZGz6YGT77yM5LiO5a626YeM55qE55O356CW5ZKM5a625YW35Lmf5b6I5pCt77yM5oC75L2T5LiK6Z2e5bi45Zac5qyi77yM5aaC5p6c5bC65a+46IO95YaN5aSn54K55bCx5pu05aW95LqG44CC',1483615849,0,1,''),
(889,0,1030003,'5aW955yL77yM6Lef5a626YeM5b6I5pCt5ZGi77yM5ZCO5oKU5b2T5pe26ICM5LiU6LW25LiK5LqG54m55Lu35b6I5YiS566X',1481510810,0,1,''),
(890,0,1030003,'5ryC5Lqu77yM6L+Y5rKh5pS+5rKZ5Y+R77yM5omA5Lul5pi+5b6X5pyJ54K55bCP77yM5YW25a6e6L+Y5aW977yM5b2T5LiK5rKZ5Y+R5bqU6K+l5q2j5aW95ZCn',1478436886,0,1,''),
(891,0,1030003,'5qOS5qOS5ZOSIOmFjeeZveiJsuWcsOadv+i2heacieaEn+iniSDoloToloTnmoQg5pG45LiK5pyJ54K55rijIOS9huiEmui4qeS4iuWOu+S4jeinieW+lyDovrnop5LkvJrmnInngrnlsI/mu5Eg5aaC5p6c5Y+N6Z2i6IO96Ziy5ruR6YKj5bCx5pu05a6M576O5ZWm',1480502993,0,1,''),
(892,0,1030003,'',1479783440,0,1,''),
(893,0,1030003,'5LiN5piv54m55Yir5omO77yM6aKc6Imy5aaC5Zu+77yM6YWN54Gw6Imy5Zyw56CW5b6I5aW955yLfn7kuKXpgInnmoTkuJzopb/omb3nhLbnqI3lvq7otLXkuIDngrnngrnvvIzkvYbmmK/mlLbliLDlkI7ku47kuI3kvJrlpLHmnJvvvIzkuI3lg4/mn5DkupvigKbigKbnsr7mjJHnu4bpgInmgLvmmK/lkozmj4/ov7Dlt67liKvlpKrlpJr',1479650016,0,1,''),
(894,0,1030003,'5Y+M5Y2B5LiA5Lmw5LiL5LqG5LiA5Liq5a6277yM5Zu+5Lit5Zyw5q+v5bCa5pyq5omT5byA',1479296344,0,1,''),
(895,0,1030003,'56iN5b6u6JaE5LqG54K577yM5LiN6L+H5oC75L2T5b6I5qOS',1478952708,0,1,''),
(896,0,1030003,'5qOS5qOS5qOS',1478921711,0,1,''),
(897,0,1030003,'6aKc6Imy56iN5pqX77yM5YGa5pen5oSf77yM5oC75L2T5LiN6ZSZ',1478577781,0,1,''),
(898,0,1030003,'5LiN6ZSZ77yM5aW955yL77yM5YGa6L+H57K+57uG772e5pSv5oyB572R5piT5Lil6YCJ',1476355398,0,1,''),
(899,0,1030003,'54Wn54mH5LiA5ouN6YO95b6I6Imz5Li977yM5L2G5piv5a6e54mp5b6I54Gw6buv77yM5Zyw5q+v5Y6a5a6e',1473350768,0,1,''),
(900,0,1030003,'5pyJ54K55omO44CC5L2G5b6I5aW95ZWm5b6I5Zac5qyiXl9e',1471666789,0,1,''),
(901,0,1181000,'5aSq5aW95LqG77yM6IiS5pyN55qE5LiN5b6X5LqG77yM6IWw77yM6IW/77yM6ISK5p+x77yM5aS077yM6aKI5qSO77yBCuaXoOS4gOWkhOS4jeiIkuacje+8jOecn+ayoeaDs+WIsOi/meS5iOS8mOaDoO+8gQrmkKzkuobmlrDlrrbov5jopoHkubDvvIE=',1495197865,0,1,''),
(902,0,1181000,'5oqx552A6K+V6K+V55qE5oCB5bqmIOWFiOS5sOS6huWwj+eahCDmnpznhLbmhJ/op4nlvojoiJLmnI0g5rex6Zm35YW25LitIOaKiuiHquW3seWFqOi6q+W/g+mDvee7meS6huWugyDnrKzkuozkuKrluorlnqvlt7Lnu4/lnKjot6/kuIo=',1494335686,0,1,''),
(903,0,1181000,'6L+Z5Liq5bqK5Z6r546w5Zyo5Z6r5LiK5Y675LmL5ZCO6IiS5pyN5aSa5LqG77yM6L2v6L2v55qE77yM5by55oCn5LiN6ZSZ77yM5L2g5Lus552h56Gs5bqK5p2/55qE6ICD6JmR5LiA5LiL5ZGX77yf',1490279403,0,1,''),
(904,0,1181000,'5by55oCn5oy65aW977yB6L2v56Gs6YCC5Lit77yM5rCU5ZGz5LiN5aSn77yB5YWr5LqU5oqY6L+Y5piv5oy65LyY5oOg55qE77yB5Li76KaB5piv5Lit5q+S5Lil6YCJ5LqG77yB',1490083547,0,1,''),
(905,0,1181000,'5aSn5bCP5ZCI6YCC77yM5Y6a5bqm5Lmf5q2j5aW944CC5b6I6YCC5ZCI5pS+6LiP6LiP57Gz5L2/55So77yM5bqK5Z6r5b6I6L2v5q+U5LiA6Iis55qE5bqK5Z6r5aW95aSq5aSa5LqG77yM5LiN55+l6YGT5aSP5aSp552h6KeJ5Lya5LiN5Lya54Ot',1490935875,0,1,''),
(906,0,1181000,'5bC65a+45Yia5aW977yM5b6I6IiS5pyN77yM5ZGz6YGT5LiN566X5aSq6YeN77yM6ZyA6KaB5ZC55ZC56aOO',1495119953,0,1,''),
(907,0,1181000,'5pm+5ZGz5Lit77yM6LSo5oSf5LiN6ZSZ44CC6L2v77yM5L2G5piv5pSv5pKR5aSf44CC',1495018060,0,1,''),
(908,0,1181000,'6Z2e5bi45LiN6ZSZ55qE5bqK5Z6r77yM56ys5LqM5Liq5LqG',1494731977,0,1,''),
(909,0,1181000,'5b6I6IiS5pyN55qE5bqK5Z6rIOmdnuW4uOa7oeaEjyDlr7nmr5Tkuoblpb3lpJrlrrbov5jmmK/pgInkuobov5nkuIDmrL4=',1489677729,0,1,''),
(910,0,1181000,'5Yia5Yia5Lmw5LiqMS4155qE552h6KeJ5oy66IiS5pyN77yB5YaN5YWl5omL5LiA5LiqMS4455qE77yM5oWi5Zue5by55b6I5LiN6ZSZ77yB6Lq65Zyo5LiK6Z2i5pyJ5Lqb5ryC5rWu55qE5oSf6KeJ77yM6IWw5LiL5LiN5oSf6KeJ56m677yM5YC85b6X5oul5pyJ77yB',1490451740,0,1,''),
(911,0,1181000,'',1490716471,0,1,''),
(912,0,1181000,'5pyA5byA5aeL5oiR6ICB5amG6L+Y5b6I5LiN55CG6Kej77yM5a626YeM5pyJ5bqK5Z6r5Li65LuA5LmI6L+Y6KaB5Lmw77yM5L2T6aqM5a6M55qE56ys5LiA5aSp5bCx6KeJ5b6X5b6I6IiS5pyN44CC6L+Y6K6p5oiR57uZ5aW554i45Lmf5Lmw5LiA5Liq4oCm',1494762510,0,1,''),
(913,0,1181000,'6IiS5pyN55qE5LiN6KGM',1490265190,0,1,''),
(914,0,1181000,'5Lil6YCJ57KJ',1489656258,0,1,''),
(915,0,1181000,'5oy66IiS5pyN77yM6ZyA6KaB5pS+5pS+5ZGz77yM5Lul5Li65YyF6KO55b6I6L2777yM5rKh5oOz5Yiw6YKj5LmI5rKJ',1486988534,0,1,''),
(916,0,1181000,'5rKh5LuA5LmI5ZGz6YGT77yM5pm+5LqG5Lik5aSp77yM5bCx6L+r5LiN5Y+K5b6F5Zyw6ZO65LiK5LqG44CC6L2v6L2v55qE77yM5b6I6IiS5pyN77yM5oCn5Lu35q+U6LaF6auY77yM5ZWG5Zy66YeM6KaB5LiA5LiH5aSa5ZGi',1479033397,0,1,''),
(917,0,1181000,'5b6I5Zac5qyi',1486089583,0,1,''),
(918,0,1181000,'5Lil6YCJ5bqK5Z6r55yf5b+D5LiN6ZSZ77yM5b6I5Y6a5a6e77yM6L+Y5bim5LqG6LSo6YeP6LaF6LWe55qE5aWX5a2Q77yM5Y+M5Y2B5LiA5YWr5oqY55yf5b+D6LWe',1478925845,0,1,''),
(919,0,1181000,'5pep5LiK5LiN5oOz6LW35bqK5pyJ5pyo5pyJ',1478865506,0,1,''),
(920,0,1181000,'6Z2e5bi45aW977yM5pWj5LqG5LiA5LiL5ZGz5bCx552h5LiK5LqG44CC56ys5LqM5aSp552h5a6M5ZCO6IWw5b6I6IiS5pyN77yM5L2G5piv6KeJ5b6X6Ieq5bex5Y+v6IO96ZyA6KaB5o2i5Liq5p6V5aS0',1472555657,0,1,''),
(921,0,1181000,'5LiN6ZSZ77yM5rKh5LuA5LmI5ZGz6YGT6Lq65LqG6K+V5LqG5LiL5b6I6IiS5pyN77yM5Yaz5a6a5YaN6Lef5a2p5a2Q5Lmw5LiA5Liq77yM5aW96K+E77yB',1475817889,0,1,''),
(922,0,1181000,'5Yia5pS25YiwIOaciemHjemHj++8gQ==',1476237478,0,1,''),
(923,0,1181000,'6L+Y5rKh55So5ZGi77yM5LiN6L+H5oiR55u45L+h572R5piT5Lil6YCJ55qE6LSo6YeP',1475290940,0,1,''),
(924,0,1181000,'55yf5b+D5LiN6ZSZ77yM5q+U6L6D6IiS6YCC55qE6YCJ5oup',1475327360,0,1,''),
(925,0,1181000,'5q2j5Zyo5pm+5ZGz77yM6Juu5Y6a6YeN77yM5oSf6KeJ5LiN6ZSZ',1474421144,0,1,''),
(926,0,1181000,'6LaF57qn6IiS5pyN',1474375608,0,1,''),
(927,0,1181000,'6Ieq5bex5Y675b+r6YCS54K55Y+W5b6XIOe0r+Wwv+S6huOAgg==',1472698477,0,1,''),
(928,0,1181000,'5b6I6IiS5pyNIOaIv+S4nOe7meS6huaIkeS4gOegtOW6iuWeq++8jOWGjeWKoOS4iui/meS4qu+8jOi6uuedgOWwseiIkuacjeS6hu+8jOmdnuW4uOa7oeaEj++8gQ==',1470107215,0,1,''),
(929,0,1181000,'5aW96YeN55qE5Lu96YeP77yM5Zue5by55b+r44CC5omT5byA5pe25pyJ54K55ZGz77yM6YCa6aOOMuWkqeWwseWlveS6hg==',1470553603,0,1,''),
(930,0,1181000,'6Z2e5bi46Z2e5bi46IiS5pyN77yM56ys5LiA5qyh5Zyo5Lil6YCJ5Lmw5Lic6KW/77yM55yf55qE5b6I5aW977yB77yB77yB552h5LiK5Y675b6I6IiS5pyN77yB',1470465187,0,1,''),
(931,0,1181000,'5oy65Y6a55qE77yM5Yia5omT5byA5Lya5pyJ54K55ZGz77yM5pS+5Lik5aSp5bCx5aW95LqG77yM6Lq65Zyo5LiK6Z2i5b6I6L2v5b6I6IiS5pyN77yM5oCn5Lu35q+U6auY',1481808949,0,1,''),
(932,0,1181000,'5oy65Y6a55qE77yM5Yia5omT5byA5Lya5pyJ54K55ZGz77yM5pS+5Lik5aSp5bCx5aW95LqG77yM6Lq65Zyo5LiK6Z2i5b6I6L2v5b6I6IiS5pyN',1481809509,0,1,''),
(933,0,1181000,'5ZCM5LqL57uZ5o6o6I2Q55qE5Lil6YCJ77yM56ys5LiA5qyh6LSt54mp6LKM5Ly86L+Y5LiN6ZSZ77yB562J5paw5a625pS25ou+5aW95YaN5omT5byA55So5ZCn8J+YhPCfmIQ=',1494247975,0,1,''),
(934,0,1181000,'5b6I5p+U6L2v77yM5pyJ5ryC5rWu5oSf77yM5aSq5aW9552h5LqG77yM5bCx5piv5pyJ54K554Ot54Ot55qE77yM6LSo6YeP5b6I5qOS77yM5YyF55qE5aWX6YO95b6I6YeN',1492567052,0,1,''),
(935,0,1181000,'5oSf6KeJ54m55Yir5aW977yM54mp576O5Lu35buJ77yM5Yiw6LSn5b2T5aSp5LiL5Y2I5pWj5LqG5pWj5ZGz6YGT77yM5pma5LiK5bCx55So5LqG44CC5oSf6KeJ5ZGz6YGT5LiN5aSn77yM5b6I6IiS5pyN77yM54m55Yir5piv6IWw6YOo5pSv5pKR5aW944CC',1492392888,0,1,''),
(936,0,1181000,'6YCB6LSn5oy65Y+K5pe277yM5bqK5Z6r5piv5pyL5Y+L5o6o6I2Q55qE6K+05b6I5aW95oiR5bCx5Lmw5LqG77yM55yL5LiK5Y675LiN6ZSZ77yM5LiL5Y676ZO65LiK6K+V6K+V55yL44CC',1493535240,0,1,''),
(937,0,1181000,'5bey57uP55So5LqG5Lik5Liq5pyI5LqG77yM6LS05ZCI6Lqr5L2T5puy57q/77yM5Zue5by55b6I5aW977yM5pep5LiK6LW35p2l5LiN5YaN6IWw6YW46IOM55a85LqG77yB5b6I5qOS55qE5bqK5Z6r77yM5by65o6o77yB',1494286067,0,1,''),
(938,0,1181000,'6auY5ZOB6LSo55qE572R5piT5Lil6YCJ6KGo546w77yM6auY6YC85qC855qE5YyF6KOF77yM5paH6Im66IyD55qE6KGo546w77yM5a6e5Zyo6ICQ55So55qE5L2/55So5oCn6LSo77yM5o6o6I2Q77yM5o6o6I2Q5ZOm',1494340426,0,1,''),
(939,0,1181000,'5LiN6ZSZ5ZWK77yM56iN5b6u5pyJ54K55ZGz6YGT77yM5pS+5LqG5Lik5aSp5bCxT0vkuobvvIzourrkuIrljrvlvojoiJLmnI3vvIznrKzkuIDmrKHlnKjnvZHmmJPotK3nianvvIzpgIHotKflvojlv6vvvIzmgKfku7fmr5Tlvojpq5g=',1493718683,0,1,''),
(940,0,1181000,'552h5Zyo5LiK6Z2i54m55Yir5a6e5Zyo77yM6Lqr5L2T55qE5q+P5Liq6YOo5L2N6YO96KKr5omY552A44CC6ICB5YWs6K+0552h6YaS5ZCO6Lqr5LiK5YaN5LiN5Lya5pyJ6YW455eb5LqG44CC5LqO5piv5YaN5qyh5Zue6LSt44CC',1493351209,0,1,''),
(941,0,1181000,'5oiR5LiA5Liq5aWz5a2p5a2Q77yM6K+05a6e6K+d77yM5aWX5aWX5a2Q55qE5pe25YCZ5pyJ54K56LS55Yqy77yM5bqK5Z6r5oy65rKJ55qE77yM5LiN6L+H552h552A5piv55yf6IiS5pyN77yM5Lmf5rKh5LuA5LmI5byC5ZGz77yM5LiN5oOz6LW35bqK',1491099520,0,1,''),
(942,0,1181000,'6L+Z5Liq6K6w5b+G5qOJ5bqK5Z6r5oiR6KeJ5b6X6L+Y5LiN6ZSZ77yM5q+U5LiA6Iis55qE5bqK5Z6r6IiS5pyN77yM5q+U6L6D6LS05ZCI6Lqr5L2T6IO95aSf57uZ5LqI6Laz5aSf55qE5pSv5pKR44CC',1492156024,0,1,''),
(943,0,1181000,'5ZGz6YGT5pS+5LqG5LiA5ZGo77yM5LiN6ZSZ5LqG',1481598002,0,1,''),
(944,0,1181000,'5pio5pma6ZO65LiK5bqK77yM6K+V552h5LqG5LiA5LiL77yM55yf55qE5aSq6IiS5pyN5LqG77yM5Lil6YCJ55qE5Lic6KW/55yf55qE5piv54mp576O5Lu35buJ77yB',1495164494,0,1,''),
(945,0,1181000,'6L+Z5Liq5bqK5Y2V5by654OI5o6o6I2Q77yM5Y2B5ZGo5bm0ODAw5YWD44CCCuedoeedgOmdnuW4uOiIkuacje+8jOWutumHjOacieamu+amu+exs+eahOWPr+S7peiAg+iZkeS4i+OAgg==',1494416556,0,1,''),
(946,0,1181000,'5LiN6ZSZ77yM6L+Z56eN5oWi5oCn5Zue5by55Yia6Lq65LiK5Y675LiN5Lmg5oOv77yM5L2G6YaS5p2l5ZCO5LiN5Lya5pyJ6IWw6IOM6YW455eb44CC',1492953947,0,1,''),
(947,0,1181000,'5LiN5aW95oSP5oCd77yM5pep5bCx5pS25Yiw6LSn5LqG77yM5LiA55u05b+Y5LqG56Gu6K6k77yB6Iy26aaZ5b6I5q2j77yB552h5pe26Ze06ZW/6IWw55a8fuaAu+S9k+S4jemUme+8gQ==',1492937507,0,1,''),
(948,0,1181000,'5oqx5q2J77yM56ys5LiA5qyh6KKr5Lil6YCJ5Lyk5a6z5Yiw44CC5pS25Yiw5bqK5Z6r5b6I5b+r6L+Y6Juu5byA5b+D55qE55qE77yM55yL5LqG6K+05piO5Lmm6K+05pWj5pWj5ZGz5YaN55So77yM5pS+5LqG5Lik5aSp5Y+v6IO95q2j5aW96YGH5Yiw6Zi06Zuo5aSp5ZCn77yM5Lmf5rKh5pyJ5pq05pmS44CC5Lmf5Y+v6IO95oi/6Ze05bCP77yM5LiN5aSf6YCa6aOO44CC5LuK5pep6YaS5p2l5aS05pmV55uu55yp77yM5LiK5ZCQ5LiL5rO777yM5L+o54S25LiA5Ymv5Lit5q+S55qE6L+56LGh44CC55yf5b+D56ys5LiA5qyh6KKr572R5piT55qE5Lqn5ZOB57uZ5Lyk5a6z77yM5piv5LiN5piv56Kw5LiK5pCe5rS75Yqo77yM5Lqn5ZOB6LSo6YeP5oqK5YWz5LiN5Lil5LqG8J+YrfCfmK3wn5it',1493938017,0,1,''),
(949,0,1181000,'5LiN6ZSZIOWwseaYr+WRs+WEv+Wkpw==',1480561784,0,1,''),
(950,0,1181000,'5pS25Yiw6LSn54mp5pe25byA566x5LiA55yL77yM5bGF54S25piv6L+Z5qC344CC6KKr5Yiu5byA5LqG5LiA5Liq5Y+j5a2Q44CC5b+D55a844CC5oOz6KaB6YCA6LSn77yM6IGU57O75a6i5pyN6L+Y5rKh5Lq655CG44CC44CC44CCCui/meenjeS9k+mqjOecn+eahOS4jeWlvQ==',1494223496,0,1,''),
(951,0,1181000,'5pm+5ZKv5Lik5aSp5omN5rKh5pyJ5ZGz6YGT77yM55yf55qE5b6I6IiS5pyN77yM5oSf6KeJ5pW05Liq6Lqr5L2T6YO95Lya6KKr6LS05ZCI55qE5b6I5aW977yM5Lmw55qE5b6I5YC877yM56ys5LiA5qyh5Lmw5Lil6YCJ5b6I5YC877yB77yB77yB77yB77yB77yB',1493649679,0,1,''),
(952,0,1181000,'5LiA5byA5aeL5pyJ5ZGz6YGT77yM5pS+5LqG5LiA5Liq56S85ouc5bCx5aW95LqG77yM5oy66IiS5pyN55qE77yM5oCn5Lu35q+U5LiN6ZSZ44CC',1493964303,0,1,''),
(953,0,1181000,'6L+Y5rKh5omT5byA5L2/55So77yM5L2G5piv55yL6IO95Y236LW35p2l5bCP5bCP55qE5LiA55uS77yM5bCx5b6I5Zac5qyi77yM5pa55L6/5pC65bim',1491878387,0,1,''),
(954,0,1181000,'5q+U6aKE5oOz55qE6L+Y6KaB5aW977yM6ZO65Zyo5qa75qa757Gz5Z6r5LiK552h6KeJ6IiS6YCC5oSf5o+Q5Y2H',1493961855,0,1,''),
(955,0,1181000,'5bCx5piv5ZGz6YGT5b6I5aSnICDlvojoiJLmnI0=',1494168878,0,1,''),
(956,0,1181000,'6Z2e5bi45qOS77yM55So5LqG5Yeg5Liq5pyI5p2l6K+E5Lu355qE44CC572R5piT55qE5pW05L2T5YyF6KOF5p2g5p2g55qE77yM6L+Z5Liq5Z6r5a2Q552h55qE5Lmf6IiS5pyN44CC5q+U6L6D6LS06Lqr77yM5LiN5Lya5pyJ5oSf6KeJ6YW46YW455qE5Zyw5pa544CC',1492012013,0,1,''),
(957,0,1181000,'5Yia5Yiw77yB5YeJ5Yeg5aSp5YaN6K+077yB5ZGz6YGT5pyJ54K56YeN77yB',1491851265,0,1,''),
(958,0,1181000,'5b6I5aW977yM5b6I6IiS5pyN77yM5LiN55+l6YGT5pe26Ze06ZW/5LqG5Lya5LiN5Lya552h6JaE77yB',1495014503,0,1,''),
(959,0,1181000,'6L+Y5LiN6ZSZ77yM5LiN5piv5b6I6L2v5b6I6L2v55qE6YKj56eN77yM5om/5omY5oCn5oy65aW9',1494420283,0,1,''),
(960,0,1181000,'552h6LW35p2l5b6I6IiS5pyN77yM5pS+5Zyo5bit5qKm5oCd5bqK5Z6r5LiK77yM6IWw6YOo5pyJ5pSv5pKR77yM5Y+q5piv5ZGz6YGT55yf55qE5b6I5aSn77yB5oiR5Zyo5Lmm5oi/5YeJ5LqG5LiJ5Liq5Y2K5pif5pyf77yB552h5LiK5Y675LmL5ZCO6L+Y6IO96ZqQ6ZqQ6Ze75Yiw5ZGz6YGT77yB5biM5pyb5rKh5q+S77yB',1494464137,0,1,''),
(961,0,1181000,'5Lmw57uZ54i454i455qE77yM5Lit5Y2I6Ieq5bex5L2T6aqM5LqG5LiA5LiL77yM6Z2e5bi46IiS5pyN77yM5by55oCn6YCC5Lit77yM',1495169917,0,1,''),
(962,0,1181000,'6Z2e5bi45aW977yM6L+Y5piv5rS75Yqo55qE5pe25YCZ5Lmw55qE44CC5oCn5Lu35q+U5LiK5aSp5LqG77yB',1493951762,0,1,''),
(963,0,1181000,'5pyJ54K56L2v77yM5Y+q6IO95pS26LW35p2l5LqG',1487499568,0,1,''),
(964,0,1181000,'6L+Y5LiN6ZSZ77yM5pyJ54K55ZGz6YGT77yM5pS+6Ziz5Y+w5ZC55LiL5bCx5aW944CC',1493798792,0,1,''),
(965,0,1181000,'5q+U5oOz6LGh5Lit5aW977yM5aSf6L2v5Y+v5piv5om/5omY5Yqb5aW977yM5LiN5Lya552h5Yiw6IWw55eb',1480835396,0,1,''),
(966,0,1181000,'6L+Y5rKh55So5oSf6KeJ5LiN6ZSZ77yB',1495352771,0,1,''),
(967,0,1181000,'5q2j5ZOB77yM5rKh5ZGz6YGT77yM6LSo6YeP5LiN6ZSZ',1495330332,0,1,''),
(968,0,1181000,'5b6I6IiS6YCC55qE5Z6r5a2Q',1495295831,0,1,''),
(969,0,1181000,'6LSo6YeP54Gw5bi45aW9',1495245579,0,1,''),
(970,0,1181000,'5oy65aW955qE',1495252187,0,1,''),
(971,0,1181000,'5LiN6ZSZ',1495261581,0,1,''),
(972,0,1181000,'5LiN6ZSZ4oCm4oCm4oCm4oCm',1495256561,0,1,''),
(973,0,1181000,'5LiN6IiS6YCC77yM5beu6K+E',1481340030,0,1,''),
(974,0,1181000,'55So5ZCO6K+E5Lu377yM5Yia5omT5byA5ZGz5YS/56Gu5a6e5LiN5bCP77yM5pm+5LqG5LiA5ZGo5bem5Y+z5ZCn77yM5ZGz5YS/5bCx5pWj5LqG77yM6IWw6YOo6LS05ZCI55qE5b6I5aW977yM5b6I6IiS5pyN77yM5LiN6ZSZ44CC',1493004908,0,1,''),
(975,0,1181000,'5b6I6IiS5pyN77yM5bCx5piv5aSP5aSp5pyJ54K554Ot',1495160660,0,1,''),
(976,0,1181000,'5omT566X5YaN5Zue6LStMuW6ig==',1495170252,0,1,''),
(977,0,1181000,'6L+Y5rKh5ouG5bqU6K+l5LiN6ZSZ',1495146191,0,1,''),
(978,0,1181000,'5pS25Yiw6LSn5Yiw546w5Zyo5pyJ5Y2B5aSp5LqG77yM5oCO5LmI6L+Y5rKh5Zue5by55ZWK44CC',1494933995,0,1,''),
(979,0,1181000,'6YCa6aOO5Yeg5aSp77yM5bey57uP5rKh5ZGz6YGT5LqG77yM6L+Y5LiN6ZSZ',1495070880,0,1,''),
(980,0,1181000,'6Z2e5bi46IiS5pyN77yM55So5LiK6ams5LiK5oSf6KeJ5aW95aSa5LqG77yM6L2v5L2G5pyJ5pSv5pKR44CC6Z2e5bi45qOS44CC',1492921330,0,1,''),
(981,0,1181000,'5b6I5aW95Lmw55qE56ys5LiJ5Liq',1495110489,0,1,''),
(982,0,1181000,'552h552A6L+Y5LiN6ZSZ',1495069451,0,1,''),
(983,0,1181000,'56ys5LqM5qyh5Lmw5LqG77yM5b6I5aW977yM552h552A6IiS5pyN',1495002619,0,1,''),
(984,0,1181000,'5oCn5Lu35q+U5b6I6auY',1494950426,0,1,''),
(985,0,1181000,'5bC65a+45Yia5Yia5aW9',1495029657,0,1,''),
(986,0,1181000,'5aW9',1495004472,0,1,''),
(987,0,1181000,'5LiA54K554K55ZGz6YGT77yM6L+Y6KGM77yM5pG4552A5omL5oSf5LiN6ZSZ77yM562J552h6L+H5ZCO5YaN5p2l6L+96K+E',1492867272,0,1,''),
(988,0,1181000,'5LiA5byA5aeL5pyJ5Lqb5ZGz6YGT77yM6ZyA6KaB5aSa5pm+5LiA6Zi144CC552h6LW35p2l6L+Y5LiN6ZSZ77yM6Juu6IiS5pyN55qE',1493539897,0,1,''),
(989,0,1181000,'5aSW5aWX5LiN6ZSZ77yM5pG46LW35p2l5oy65aW9',1494923791,0,1,''),
(990,0,1181000,'5b6I6IiS6YCCIOWAvOW+l+i/meS4quS7t+agvA==',1494922926,0,1,''),
(991,0,1181000,'54m55Yir5aW944CC5b6I6IiS6YCC',1494938569,0,1,''),
(992,0,1181000,'6L+Y5rKh55So',1494945754,0,1,''),
(993,0,1181000,'5bqK5Z6r5LiN6ZSZ77yM55u45L+h572R5piT',1494863310,0,1,''),
(994,1,314,'5piv6K6w5b+G5qOJIOW+iOa7oeaEjw==',1494813961,0,1,''),
(995,1,314,'5b6I5aW955qE5Lic6KW/',1494863788,0,1,''),
(996,1,314,'5b6I6IiS5pyN77yM5pyJ5rKh5pyJ6YKj5LmI55qE6L2v77yM5LiN6ZSZ77yB',1492312366,0,1,''),
(997,1,314,'56Gu5a6e6IiS5pyN77yM5LiN6L+H5aSP5aSp5Lya5LiN5Lya54Ot5ZWK77yf',1494717836,0,1,''),
(998,1,314,'5pyJ54K56L+H6L2v44CC562J5Yiw5aSP5a2j77yM5LiK6Z2i55u05o6l6ZO65YeJ5bit55qE6K+d77yM5LiN55+l6YGT6YCP5rCU5oCn5Lya5oCO5qC377yf',1480586334,0,1,''),
(999,1,314,'5YyF6KOF5a6M5aW9CuaXoOW8guWRswrljprluqbpgILkuK0K5oWi5Zue5by5CgrmiJHnm7TmjqXmlL7nva7lnKjlnLDmnb/kuIrvvIzlvZPlgZrlranlrZDnmoTniKzniKzlnqvkvb/nlKjvvIzkuIrpnaLpk7rluorljZXvvIzkvr/kuo7mtJfmtqTjgILkvZzkuLrnm7TmjqXpk7rlnLDmnb/nmoTvvIzmnInkuIDkuKrpl67popjlsLHmmK/mmK/lkKbpgI/msJTvvIzlkKbliJnnlKjkuoYx5Liq5pyI77yM5Y+N6Z2i6IKv5a6a5piv5Y+R6ZyJ55qE54q25oCB77yM562J5a6e6ZmF5pWI5p6c',1492225893,0,1,''),
(1000,1,314,'5Lic6KW/5oy65aW977yM5Li65LqG6ISK5p+x6ICM5Lmw',1494767679,0,1,''),
(1003,1,314,'5LiT6aKY6K+E6K665Yqf6IO95pyJ5LqGLi4u',1501339099,0,11,''),
(1004,1,314,'6L+Z5Liq5LiN6ZSZ',1501339226,0,11,''),
(1005,1,313,'5b6I5LiN6ZSZ',1501343252,0,1,'');

/*Table structure for table `nideshop_comment_picture` */

DROP TABLE IF EXISTS `nideshop_comment_picture`;

CREATE TABLE `nideshop_comment_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1121 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_comment_picture` */

insert  into `nideshop_comment_picture`(`id`,`comment_id`,`pic_url`,`sort_order`) values 
(1,1,'https://yanxuan.nosdn.127.net/218783173f303ec6d8766810951d0790.jpg',5),
(2,2,'https://yanxuan.nosdn.127.net/33978a0d6f56d94c45e4fc594b4b8606.jpg',5),
(3,3,'https://yanxuan.nosdn.127.net/d3975d1b6d88e9f9d762cd9a879d1a14.jpg',5),
(4,4,'https://yanxuan.nosdn.127.net/7215309e93c48cca08ca6910194eb3b0.jpg',5),
(5,5,'http://yanxuan.nosdn.127.net/d85a556893919038b56a95b71c9a1228.jpg',5),
(6,32,'http://yanxuan.nosdn.127.net/1637021a44433992f403a4b925401a3b.jpg',5),
(7,32,'http://yanxuan.nosdn.127.net/5fd615a8f21050ac8f20a542f8e688a1.jpg',5),
(8,32,'http://yanxuan.nosdn.127.net/968836b81e80750944ca350808763281.jpg',5),
(9,33,'http://yanxuan.nosdn.127.net/1943a9a6a203fa2ff56bc0800ed5cbfd.png',5),
(10,34,'https://yanxuan.nosdn.127.net/b8b063c9b0199ed290f4b3ca49bf4b6c.jpg',5),
(11,35,'https://yanxuan.nosdn.127.net/f0ec4c28b64d4b676ba629c1fb006429.jpg',5),
(12,36,'https://yanxuan.nosdn.127.net/4eff94aed684b2d8255e73686f570be8.jpg',5),
(13,37,'https://yanxuan.nosdn.127.net/2ef5ee9903685928d7d1e1bf2fd5c1de.jpg',5),
(14,38,'https://yanxuan.nosdn.127.net/01c3db0f9bfb16e969c4e968fe8a68f4.jpg',5),
(15,39,'https://yanxuan.nosdn.127.net/5bf789025ccc72802ce58561e494c3aa.jpg',5),
(16,40,'https://yanxuan.nosdn.127.net/20dfd145606fc60d914b2b7833e92c01.jpg',5),
(17,40,'https://yanxuan.nosdn.127.net/1dcc038f9e39998a43f2d3fd9315469e.jpg',5),
(18,41,'https://yanxuan.nosdn.127.net/a70b34d03da3d280d0fd79181d56589c.jpg',5),
(19,41,'https://yanxuan.nosdn.127.net/4f07e2b6d807ff345a473d5da3c26968.jpg',5),
(20,42,'https://yanxuan.nosdn.127.net/c82b3ab3d224aa76740b9e3255adf3fb.jpg',5),
(21,43,'https://yanxuan.nosdn.127.net/c35d48dcada22ec1c44294f6b0a428e1.jpg',5),
(22,44,'https://yanxuan.nosdn.127.net/1f8547923b6ffcba581239611f693ac2.jpg',5),
(23,45,'https://yanxuan.nosdn.127.net/90b284e3610a519a46aaa2f68eda2c48.jpg',5),
(24,45,'https://yanxuan.nosdn.127.net/cc6273be455c3316dce5cf704401df43.jpg',5),
(25,46,'https://yanxuan.nosdn.127.net/7609fb3c38f9bd7dd9af11f5818f0be5.jpg',5),
(26,46,'https://yanxuan.nosdn.127.net/c4061c4d985e27d323bb0129b86ec55a.jpg',5),
(27,46,'https://yanxuan.nosdn.127.net/2161ee60cc43edcff1e31a2bdf86a903.jpg',5),
(28,47,'https://yanxuan.nosdn.127.net/91ec809b19884e57c0d109b4412ee030.jpg',5),
(29,48,'https://yanxuan.nosdn.127.net/a2a7cc43bfab52175f6b8c12703f87d9.jpg',5),
(30,49,'https://yanxuan.nosdn.127.net/7d7199ef7682089c9c7b45d3d2c4fed9.jpg',5),
(31,50,'https://yanxuan.nosdn.127.net/0e10cb5879b7559415a9f8271b0d8fb0.jpg',5),
(32,50,'https://yanxuan.nosdn.127.net/31dd362b4c47ba25994cec82020a466a.jpg',5),
(33,50,'https://yanxuan.nosdn.127.net/33c360c34b5fd14fbd51ab7f96a23f93.jpg',5),
(34,51,'http://yanxuan.nosdn.127.net/76735794dcee4fc7763c9e5387e0c2ce.jpg',5),
(35,52,'https://yanxuan.nosdn.127.net/5043098d243e80629ab3d45efbc46f2a.jpg',5),
(36,52,'https://yanxuan.nosdn.127.net/a599a3df10cb2ae5f8d4aa293f6f7ef5.jpg',5),
(37,53,'https://yanxuan.nosdn.127.net/940ba0e376afe987fffbf0174151980b.jpg',5),
(38,53,'https://yanxuan.nosdn.127.net/91730445ae6b47e989fb112cd13df259.jpg',5),
(39,53,'https://yanxuan.nosdn.127.net/bbd62a0f2f60443812c1dc51ee61e55f.jpg',5),
(40,53,'https://yanxuan.nosdn.127.net/55dc0ff04281a0a3ccc3bf58b86d080d.jpg',5),
(41,54,'https://yanxuan.nosdn.127.net/1d3b96140cd0cd9da2781aed350f65ca.jpg',5),
(42,54,'https://yanxuan.nosdn.127.net/c98e86e420c3c50f377054ad465663b6.jpg',5),
(43,55,'https://yanxuan.nosdn.127.net/4b36085027dfa17f41ae18a8a59866bf.jpg',5),
(44,55,'https://yanxuan.nosdn.127.net/e7f5b357910d79b6da7ab159500ed112.jpg',5),
(45,55,'https://yanxuan.nosdn.127.net/bf3a081b3859ff62c21249c2b5443857.jpg',5),
(46,55,'https://yanxuan.nosdn.127.net/442180cdbc773cd453447acbe18076a4.jpg',5),
(47,56,'https://yanxuan.nosdn.127.net/5995203d941cd9ec29d72f88e2068470.jpg',5),
(48,57,'https://yanxuan.nosdn.127.net/e952e01ca4cc9a6e98ac1b94c22897c1.jpg',5),
(49,58,'https://yanxuan.nosdn.127.net/ef9baeb4716e707430504c85a31bf23d.jpg',5),
(50,59,'http://yanxuan.nosdn.127.net/3be9a5226968a712d0f070ad68f64dec.jpg',5),
(51,59,'http://yanxuan.nosdn.127.net/8fdc01147eb50e9087aa00a2f62fac2d.jpg',5),
(52,59,'http://yanxuan.nosdn.127.net/4235a53cf606ae4bc0fea7a30af393bd.jpg',5),
(53,60,'https://yanxuan.nosdn.127.net/3369a66fb9df9b7d5b6ae2978d36610f.jpg',5),
(54,61,'https://yanxuan.nosdn.127.net/709c587f5f7d92f48332d06eb18e7126.jpg',5),
(55,61,'https://yanxuan.nosdn.127.net/6e1774068ce6b020c50c3c5d4a8e7dfc.jpg',5),
(56,62,'https://yanxuan.nosdn.127.net/5e10bd6ac6cb217268b4483a10bea56f.jpg',5),
(57,63,'https://yanxuan.nosdn.127.net/a3078f1431a1aca14caa560a6ff908a5.jpg',5),
(58,64,'https://yanxuan.nosdn.127.net/62c0b62ad5eb0c20337eabbf367e4278.jpg',5),
(59,65,'https://yanxuan.nosdn.127.net/681b2327038b1c2c10af89b2527d7eda.jpg',5),
(60,65,'https://yanxuan.nosdn.127.net/71ccaffde9e79a89ad185ff9bdab40d7.jpg',5),
(61,65,'https://yanxuan.nosdn.127.net/e7742118d188ea3173ad5112a8a6f061.jpg',5),
(62,65,'https://yanxuan.nosdn.127.net/3d77a201cbff3fae0c2d35c8dbe7ce30.jpg',5),
(63,66,'https://yanxuan.nosdn.127.net/e44577b3101696c64196ca2ac6aed4d0.jpg',5),
(64,66,'https://yanxuan.nosdn.127.net/19dc77eb45ad562080ae3f1b26220ecb.jpg',5),
(65,67,'https://yanxuan.nosdn.127.net/c7ddd8ce4d2588f88bee2bdc325b16e8.jpg',5),
(66,67,'https://yanxuan.nosdn.127.net/63917d8d98648a1f6780113b81eaf49d.jpg',5),
(67,67,'https://yanxuan.nosdn.127.net/3cb128218eb997e9f3b9e2b3f977bb42.jpg',5),
(68,68,'https://yanxuan.nosdn.127.net/d9c4a183033024979794f5d125718c36.jpg',5),
(69,69,'https://yanxuan.nosdn.127.net/a9f9168ce83e7d73345aec85d3a58a48.jpg',5),
(70,69,'https://yanxuan.nosdn.127.net/683e47e56d8a123ef101d64afb22b293.jpg',5),
(71,70,'https://yanxuan.nosdn.127.net/2edff0244918811c38ce88eccd67d979.jpg',5),
(72,70,'https://yanxuan.nosdn.127.net/ee205358200c2834f6fe1457e6b8cc0c.jpg',5),
(73,71,'https://yanxuan.nosdn.127.net/874a5450cc4a013fafbb699d1be8f7e6.jpg',5),
(74,72,'http://yanxuan.nosdn.127.net/6086f9c60725981a62bcb7cb9b16f96d.jpg',5),
(75,73,'http://yanxuan.nosdn.127.net/a80a47d1da70aecda367c8346f6c4b28.jpg',5),
(76,73,'http://yanxuan.nosdn.127.net/c03e0d833114a274c14e78078e209f23.jpg',5),
(77,74,'https://yanxuan.nosdn.127.net/d604e96c8fd278287b0b5938a6329d91.jpg',5),
(78,75,'https://yanxuan.nosdn.127.net/d1a19fc34300d9777fa461e429953f47.jpg',5),
(79,76,'http://yanxuan.nosdn.127.net/f66f5867db18972a129da330db4c1a62.jpg',5),
(80,77,'https://yanxuan.nosdn.127.net/a74a0afeb7565c6e4faaa6eb9cf4749f.jpg',5),
(81,78,'http://yanxuan.nosdn.127.net/d0ba5d4d2e3749630dea1e22f5cea279.jpg',5),
(82,78,'http://yanxuan.nosdn.127.net/47cfc56cbe26aab5c357b8f202d0e1ff.jpg',5),
(83,79,'https://yanxuan.nosdn.127.net/a6efb53eb88e7a64d2684e40f7a52d3f.jpg',5),
(84,80,'https://yanxuan.nosdn.127.net/011740faaf3a95b9199098814e36e385.jpg',5),
(85,81,'http://yanxuan.nosdn.127.net/998e430d04f8bb8b1d884bac1a02e313.jpg',5),
(86,82,'http://yanxuan.nosdn.127.net/9e81c34c4ff7c22bc349c6d268307dd2.jpg',5),
(87,82,'http://yanxuan.nosdn.127.net/44e4a90615bece2401be24a2bf93ee69.jpg',5),
(88,83,'http://yanxuan.nosdn.127.net/3afa633ff158ed7739e99f242e6217d0.jpg',5),
(89,83,'http://yanxuan.nosdn.127.net/ab1c13bd41274a8c42d58cfd9c905aa1.jpg',5),
(90,84,'http://yanxuan.nosdn.127.net/1ddafd57c3cc4c7fd3cd605ce6e5fdff.JPG',5),
(91,84,'http://yanxuan.nosdn.127.net/a7d5e47ef16d5a6cadec4a62846e28e1.JPG',5),
(92,85,'http://yanxuan.nosdn.127.net/49ce7f46d4978157321812d2ca8e4846.jpg',5),
(93,86,'http://yanxuan.nosdn.127.net/8bb54ef41cc46ebd96577c38eb87715d.jpg',5),
(94,87,'http://yanxuan.nosdn.127.net/2b52a8a6e59e8b2124cf2739af13910f.jpg',5),
(95,87,'http://yanxuan.nosdn.127.net/96c5f2780a71c0b24ab6741f531a5711.jpg',5),
(96,88,'http://yanxuan.nosdn.127.net/20553ede4645fed898754f06a3bd9d9c.jpg',5),
(97,88,'http://yanxuan.nosdn.127.net/0213cae3ef5a865bb6dd8db6015cfc86.jpg',5),
(98,88,'http://yanxuan.nosdn.127.net/aa4f3ead32776fc29f6d065ce3292c08.jpg',5),
(99,88,'http://yanxuan.nosdn.127.net/d437f107e112d9b6dd944efadbb9f451.jpg',5),
(100,89,'http://yanxuan.nosdn.127.net/b0b43ef8aee2a518e256904ed9fd09fc.jpg',5),
(101,90,'http://yanxuan.nosdn.127.net/1de092f2aad814487558f41b3de008cf.jpg',5),
(102,90,'http://yanxuan.nosdn.127.net/3172ec3dd5de21b03310dcffdcc218c6.jpg',5),
(103,90,'http://yanxuan.nosdn.127.net/490ea866acd1e3ee81515bbe5b2b6825.jpg',5),
(104,90,'http://yanxuan.nosdn.127.net/7a4dd625b8189905b263d23e5ecc0e23.jpg',5),
(105,91,'https://yanxuan.nosdn.127.net/5779110874e03e1364ae2d3e74e78cee.jpg',5),
(106,91,'https://yanxuan.nosdn.127.net/06f11a4b428f316dbab2b664c2838faa.jpg',5),
(107,92,'https://yanxuan.nosdn.127.net/501c14b56ed0d7a6fb6a5f47ca90f51d.jpg',5),
(108,92,'https://yanxuan.nosdn.127.net/488c125fb54f8a6ee5f66cc3849a6b55.jpg',5),
(109,93,'https://yanxuan.nosdn.127.net/2c0edd6951c4ccdc6816a6654ae153ea.jpg',5),
(110,93,'https://yanxuan.nosdn.127.net/d2cf24a8b7e98fdc14e55213f7a12f1f.jpg',5),
(111,93,'https://yanxuan.nosdn.127.net/044ad064291fdd00fdb7222634ea1c00.jpg',5),
(112,100,'https://yanxuan.nosdn.127.net/692898a037906863f4130cc28aa96f54.jpg',5),
(113,100,'https://yanxuan.nosdn.127.net/daea9059182226688f60b1c7ee943b1a.jpg',5),
(114,100,'https://yanxuan.nosdn.127.net/13026a745b1269591968eb5774beea93.jpg',5),
(115,101,'https://yanxuan.nosdn.127.net/a5e70db6cb702cdb15c25410240da4e0.jpg',5),
(116,102,'https://yanxuan.nosdn.127.net/0eaedb093836fc19b44c9762ec4245f9.jpg',5),
(117,102,'https://yanxuan.nosdn.127.net/64b07866551aca5ab545b6945c3aa238.jpg',5),
(118,103,'https://yanxuan.nosdn.127.net/31d573ea8e20c70c46f3e2a981201587.jpg',5),
(119,104,'https://yanxuan.nosdn.127.net/f48b64fc44e30b9353699d75cae4d38d.jpg',5),
(120,104,'https://yanxuan.nosdn.127.net/8be7358f3367af5f9b4607bb5904185a.jpg',5),
(121,105,'https://yanxuan.nosdn.127.net/ed462bd77a20e2442c2d56d98d32ee8d.jpg',5),
(122,105,'https://yanxuan.nosdn.127.net/31388ad9b235215a4f0974a66e748575.jpg',5),
(123,106,'https://yanxuan.nosdn.127.net/19876c8e3661289f0b9a07a3948ad2b1.jpg',5),
(124,107,'https://yanxuan.nosdn.127.net/d6d444376770e922138b1d12c18c020a.jpg',5),
(125,108,'https://yanxuan.nosdn.127.net/9285abeba996f87ffb126d761a7bea29.jpg',5),
(126,109,'https://yanxuan.nosdn.127.net/b38e68c198d8b1d41be27c9e8c4ee73d.jpg',5),
(127,110,'https://yanxuan.nosdn.127.net/01ce532366fb5dc49eb88e490d5d3984.jpg',5),
(128,110,'https://yanxuan.nosdn.127.net/c509586b0e728860a8d14870f06112fb.jpg',5),
(129,111,'https://yanxuan.nosdn.127.net/6b6a073e6d7caad43f5e8cf9833da01e.jpg',5),
(130,112,'https://yanxuan.nosdn.127.net/3853600951a35647609c6844dcdd6c86.jpg',5),
(131,112,'https://yanxuan.nosdn.127.net/b1638f9674d1d8e9ca1872b12312f68f.jpg',5),
(132,113,'https://yanxuan.nosdn.127.net/4c5dfff639bc36a67ee8a35892f8d200.jpg',5),
(133,114,'https://yanxuan.nosdn.127.net/0ed20445542ab57b134ac1c7d3a0faea.jpg',5),
(134,115,'https://yanxuan.nosdn.127.net/c5f4909c19090e6e61157fa9eda1d0de.jpg',5),
(135,116,'https://yanxuan.nosdn.127.net/e94d6adaec4edf5702d3210b3d6ebe58.jpg',5),
(136,116,'https://yanxuan.nosdn.127.net/42369e5b147025746542231936d63ac5.jpg',5),
(137,116,'https://yanxuan.nosdn.127.net/03a66e35f55d08c2de10834ce415bf89.jpg',5),
(138,116,'https://yanxuan.nosdn.127.net/2bd45812d820f727c2e7f3fa3988dbce.jpg',5),
(139,117,'https://yanxuan.nosdn.127.net/66f272393658392a6f023898dccb9e90.jpg',5),
(140,118,'https://yanxuan.nosdn.127.net/84b6457d734c73414da6ba6247ac18af.jpg',5),
(141,119,'https://yanxuan.nosdn.127.net/a27659551c60008c31b1b48a2fa62c88.jpg',5),
(142,120,'https://yanxuan.nosdn.127.net/6b06e92c9783ebbdda81346912296b58.jpg',5),
(143,120,'https://yanxuan.nosdn.127.net/2b4c5c819f6af06e79d57ea098a39a56.jpg',5),
(144,129,'https://yanxuan.nosdn.127.net/8736be0264f1d722cef01939836973e0.jpg',5),
(145,129,'https://yanxuan.nosdn.127.net/d0a72092ca8ca6077215e9f23efa31e2.jpg',5),
(146,130,'https://yanxuan.nosdn.127.net/6364c9dd6affe4796937326445ecc064.jpg',5),
(147,131,'https://yanxuan.nosdn.127.net/eba8499ab70da5138d0d5511a79a8e35.jpg',5),
(148,132,'https://yanxuan.nosdn.127.net/c2fa7ba74c8b80fb36a5224931570be0.jpg',5),
(149,133,'https://yanxuan.nosdn.127.net/f997931b3715affcb7546ca70010d558.jpg',5),
(150,134,'https://yanxuan.nosdn.127.net/e871c512e6183395b40eea65033633ec.jpg',5),
(151,134,'https://yanxuan.nosdn.127.net/3abc075b9a60c6b99507636a96dd001f.jpg',5),
(152,135,'https://yanxuan.nosdn.127.net/52d48f5df17c94de6efc03220e808f60.jpg',5),
(153,135,'https://yanxuan.nosdn.127.net/4caaf0a13a70f801f62efdcc0b12c69e.jpg',5),
(154,136,'https://yanxuan.nosdn.127.net/27bd18e109bfec677acb114f0df15049.jpg',5),
(155,137,'https://yanxuan.nosdn.127.net/97b8b982e976f2b7e3fd8f453378212d.jpg',5),
(156,138,'https://yanxuan.nosdn.127.net/7b0bc93f9eaa88ea9354d6e33afa514d.jpg',5),
(157,139,'https://yanxuan.nosdn.127.net/0fcae1110d09b0c7ef44778781c39a5d.jpg',5),
(158,139,'https://yanxuan.nosdn.127.net/505f58c738ca26fc35a5f58e2e5d2db7.jpg',5),
(159,139,'https://yanxuan.nosdn.127.net/cb6db0c1f24151323f0bd8e40e6c63db.jpg',5),
(160,139,'https://yanxuan.nosdn.127.net/a4d3db8aec4933a24b031b3c331829da.jpg',5),
(161,140,'https://yanxuan.nosdn.127.net/e1466fdabc2df0ec42261139858eac99.jpg',5),
(162,140,'https://yanxuan.nosdn.127.net/64a7d1ed37be1b9f5f45552cf0c59eb7.jpg',5),
(163,140,'https://yanxuan.nosdn.127.net/5a4dfa6ffe661f52705fa01b3db10217.jpg',5),
(164,140,'https://yanxuan.nosdn.127.net/8dd061631aca0194517f2e17826c4571.jpg',5),
(165,141,'http://yanxuan.nosdn.127.net/b536d19af6299dfbea2362954e7b3ba2.jpg',5),
(166,141,'http://yanxuan.nosdn.127.net/3629cb676c071af26023f2cae21520e6.jpg',5),
(167,141,'http://yanxuan.nosdn.127.net/57e702c6068668e6a025ff799162dcb4.jpg',5),
(168,141,'http://yanxuan.nosdn.127.net/1e7a50c0866931982f64ebc4dcf1dd07.jpg',5),
(169,142,'https://yanxuan.nosdn.127.net/01671ffc2f8f533dc10b9fae5e888b02.jpg',5),
(170,143,'https://yanxuan.nosdn.127.net/0551f86464a85f7bef8636e82d2a16c1.jpg',5),
(171,144,'http://yanxuan.nosdn.127.net/8bae8bc13f53b8d77e3da8a339a826b8.jpg',5),
(172,144,'http://yanxuan.nosdn.127.net/6eadf3d5235e875a13fb9e094c25d3ca.jpg',5),
(173,145,'http://yanxuan.nosdn.127.net/0203d4a921a735a03a9ec2509a4ca5f9.jpg',5),
(174,146,'https://yanxuan.nosdn.127.net/ccd0091d097f9da975848aeedf729da3.jpg',5),
(175,147,'https://yanxuan.nosdn.127.net/117da716695d4cd0666b4a4f1614a00d.jpg',5),
(176,148,'http://yanxuan.nosdn.127.net/0d9bd7d05a75234ac5fb56569fa3afbf.jpg',5),
(177,149,'http://yanxuan.nosdn.127.net/161eaf989138d13499c4b0ec83f4a4fb.jpg',5),
(178,149,'http://yanxuan.nosdn.127.net/8e4a2ecdf1b4586ad54a666f6c9ddb6b.jpg',5),
(179,149,'http://yanxuan.nosdn.127.net/cd0efbf8cd0c2aacb6e3a4de8aee0f0c.jpg',5),
(180,150,'http://yanxuan.nosdn.127.net/37741286381028ce1db15966140ad90c.jpg',5),
(181,154,'https://yanxuan.nosdn.127.net/0b698871fee771050538f9e98d6cc1bf.jpg',5),
(182,154,'https://yanxuan.nosdn.127.net/243c459a1195839cf45084f35540c2dc.jpg',5),
(183,155,'https://yanxuan.nosdn.127.net/e3573ec3d123bde7311edd874ff9e3b2.jpg',5),
(184,155,'https://yanxuan.nosdn.127.net/9b2308745635c95764a32e122d52e2dd.jpg',5),
(185,156,'http://yanxuan.nosdn.127.net/0eaea152d968cb88ba8a6082f49254c9.jpg',5),
(186,156,'http://yanxuan.nosdn.127.net/4a13a803fc6993845c98754a7dd714cd.jpg',5),
(187,157,'https://yanxuan.nosdn.127.net/163aa25c63783f245b2903f7230db795.jpg',5),
(188,158,'https://yanxuan.nosdn.127.net/6815e6e715e469f9e0498a84c248f3b7.jpg',5),
(189,159,'https://yanxuan.nosdn.127.net/3c86f256e559dfcb5c6ac12ee6f0957e.jpg',5),
(190,160,'https://yanxuan.nosdn.127.net/0d35feb8182002ce0efa39dd04c8e188.jpg',5),
(191,160,'https://yanxuan.nosdn.127.net/15802fa58be1a8c9ee114f526ee88337.jpg',5),
(192,161,'https://yanxuan.nosdn.127.net/5f996396607421ab20f91d12fbd84f97.jpg',5),
(193,162,'https://yanxuan.nosdn.127.net/ba6c27952db325c72f5b1f2ad76c2acd.jpg',5),
(194,163,'https://yanxuan.nosdn.127.net/357dfd5e73d3c7b8d93b598dc5cfa3c2.jpg',5),
(195,163,'https://yanxuan.nosdn.127.net/d80005eeb4a494fe820a2a993d8c10bf.jpg',5),
(196,164,'https://yanxuan.nosdn.127.net/3aa16a41e998d7cb01646612a085d74e.jpg',5),
(197,165,'http://yanxuan.nosdn.127.net/71fd5f70b7da24c755370aff3767d0e2.JPG',5),
(198,166,'https://yanxuan.nosdn.127.net/1f8379242fa0dfe2be0b63299a92de8a.jpg',5),
(199,167,'https://yanxuan.nosdn.127.net/303f07460c563b2809e8a28c42ec2974.jpg',5),
(200,168,'https://yanxuan.nosdn.127.net/5f9179e49cd6f301d933a20b9ea15ff7.jpg',5),
(201,168,'https://yanxuan.nosdn.127.net/e3598c1c76af2977f8e47657e79073d8.jpg',5),
(202,168,'https://yanxuan.nosdn.127.net/cd2a1ce5f8c8c6462873cbc883064cab.jpg',5),
(203,168,'https://yanxuan.nosdn.127.net/b0e5cc9f65ce8c473bb60e33d702c174.jpg',5),
(204,169,'https://yanxuan.nosdn.127.net/ca5f41ddb4e996752eaee88c603f89db.jpg',5),
(205,169,'https://yanxuan.nosdn.127.net/ccc7e1ced6ae6653d27db2d2a5dad2bc.jpg',5),
(206,169,'https://yanxuan.nosdn.127.net/a676fec8d311b18352041938eb47f2fa.jpg',5),
(207,170,'https://yanxuan.nosdn.127.net/510daeeeb0d7ab374d19118b56907d03.jpg',5),
(208,171,'http://yanxuan.nosdn.127.net/acf4545e5f5155610a9920639554eaca.jpg',5),
(209,172,'https://yanxuan.nosdn.127.net/32867c025eda5d3fdceb6106420cfff3.jpg',5),
(210,173,'http://yanxuan.nosdn.127.net/2ac89fe52540efd8343791fc1fd2b155.jpg',5),
(211,174,'http://yanxuan.nosdn.127.net/d78ca7784908b91c720ec735c5a804c8.jpg',5),
(212,174,'http://yanxuan.nosdn.127.net/a00bd908f3cb0e5a20e1a47574d1c243.jpg',5),
(213,175,'http://yanxuan.nosdn.127.net/d83c8a7bea22d11b5c87f90eac4dc39a.jpg',5),
(214,176,'https://yanxuan.nosdn.127.net/9abf716e255f1436439559a9792d0741.jpg',5),
(215,176,'https://yanxuan.nosdn.127.net/5c4ceaa303be30f8dea7e6d797fb48c7.jpg',5),
(216,177,'https://yanxuan.nosdn.127.net/789eabd8acb8033a645d657761d664b2.jpg',5),
(217,178,'http://yanxuan.nosdn.127.net/b31f1ba01ad55a1c5c211fc78c9151ce.jpg',5),
(218,179,'http://yanxuan.nosdn.127.net/081d8d7ba1363e567f1a4ba3a510746f.jpg',5),
(219,180,'https://yanxuan.nosdn.127.net/38efadd5eee61fb44488062a4cb13f50.jpg',5),
(220,181,'https://yanxuan.nosdn.127.net/827017ba882ecc73bbc84b158ce52f58.jpg',5),
(221,182,'https://yanxuan.nosdn.127.net/642f783d1a82bcddca5c8b6d60a50587.jpg',5),
(222,183,'https://yanxuan.nosdn.127.net/490b249734045af43acec2bd059a9e17.jpg',5),
(223,192,'https://yanxuan.nosdn.127.net/a411c758836a8e5f785f9c887c9eade7.jpg',5),
(224,193,'https://yanxuan.nosdn.127.net/510bdb612db9dc0afcf521ecfab0d544.jpg',5),
(225,194,'https://yanxuan.nosdn.127.net/ec18a1d6f7570d91ffcb00522992a7b9.jpg',5),
(226,194,'https://yanxuan.nosdn.127.net/f5ca9301a37bfc4ffb9159b7a0dc9058.jpg',5),
(227,195,'https://yanxuan.nosdn.127.net/59df349a01837ab721218fb7809871d2.jpg',5),
(228,195,'https://yanxuan.nosdn.127.net/5148b82159c373293feda182407596c8.jpg',5),
(229,196,'https://yanxuan.nosdn.127.net/5d775bd76f04920099a642ba183ac9cf.jpg',5),
(230,197,'https://yanxuan.nosdn.127.net/49030becc853b68b813089a0ac1a6c4e.jpg',5),
(231,198,'https://yanxuan.nosdn.127.net/f1a26f246acd80b93a3ffd3b71be93ce.jpg',5),
(232,199,'https://yanxuan.nosdn.127.net/b4f1e58479a242366bea4d6dbf2ff4ec.jpg',5),
(233,199,'https://yanxuan.nosdn.127.net/fe732c746cccc711667b0cd337ccfba3.jpg',5),
(234,199,'https://yanxuan.nosdn.127.net/756d3468dab3c5a5de9685d8faa6dd18.jpg',5),
(235,200,'https://yanxuan.nosdn.127.net/0cea9a7b366b8e3fcef5269137294359.jpg',5),
(236,200,'https://yanxuan.nosdn.127.net/051786f7e3eb36cabb458779c5fae9fe.jpg',5),
(237,201,'https://yanxuan.nosdn.127.net/3161beb18ccf054115315cf09557ed59.jpg',5),
(238,202,'https://yanxuan.nosdn.127.net/bc547322ad5a8164a388d56508fc93eb.jpg',5),
(239,202,'https://yanxuan.nosdn.127.net/5894aad819e9c15ecffe88e9445884ae.jpg',5),
(240,203,'https://yanxuan.nosdn.127.net/1c62d0c41cebccd9e06dc23fe6ed111e.jpg',5),
(241,203,'https://yanxuan.nosdn.127.net/47a2b22b14723f79eb1e89cd26606fcb.jpg',5),
(242,203,'https://yanxuan.nosdn.127.net/a2991ed5eac58e80a356dc784307490d.jpg',5),
(243,203,'https://yanxuan.nosdn.127.net/546c5ed73a242dc0f11949d1e8607519.jpg',5),
(244,204,'https://yanxuan.nosdn.127.net/d29440e326ad54261947b202a3f26f8b.jpg',5),
(245,205,'https://yanxuan.nosdn.127.net/fb163c8f9605e606ecab378434cc8587.jpg',5),
(246,206,'https://yanxuan.nosdn.127.net/ed6084e670a4ea08448305f4fb6e5a81.jpg',5),
(247,207,'https://yanxuan.nosdn.127.net/3b789d855d6db896392a71364356b927.jpg',5),
(248,208,'https://yanxuan.nosdn.127.net/78060b1c3cb24079d7a771536019f990.jpg',5),
(249,208,'https://yanxuan.nosdn.127.net/ae1d9d70310386d7acae2e7b74e03fd2.jpg',5),
(250,208,'https://yanxuan.nosdn.127.net/d4e20b69d45c2b1cac898146b53e758e.jpg',5),
(251,208,'https://yanxuan.nosdn.127.net/25da72ece123bb0a092c183c5eac342c.jpg',5),
(252,209,'https://yanxuan.nosdn.127.net/30d544de9c2596371557c9309c843eb1.jpg',5),
(253,210,'https://yanxuan.nosdn.127.net/debd2800a3e746d420e450eb05ad4125.jpg',5),
(254,211,'https://yanxuan.nosdn.127.net/b007ab3de1c4c9fbea625db5615d49aa.jpg',5),
(255,212,'https://yanxuan.nosdn.127.net/b255ead740392bd237ef95a676342833.jpg',5),
(256,212,'https://yanxuan.nosdn.127.net/79b7fc5c13193a2ab5f4d816fd01f91a.jpg',5),
(257,219,'https://yanxuan.nosdn.127.net/7fb1a52e793f738cb9db3660e88756b7.jpg',5),
(258,220,'https://yanxuan.nosdn.127.net/44668cb4f55f120a5fe9ebda02e4b3a8.jpg',5),
(259,220,'https://yanxuan.nosdn.127.net/1e2647e8db48c19aec29a9b43c30d4a3.jpg',5),
(260,221,'https://yanxuan.nosdn.127.net/859dbc341a909ba142c907ff4adb3ae9.jpg',5),
(261,221,'https://yanxuan.nosdn.127.net/36c37e008facb551c60398e61244499b.jpg',5),
(262,221,'https://yanxuan.nosdn.127.net/21430602d5024448e6928d2c28a9c0aa.jpg',5),
(263,221,'https://yanxuan.nosdn.127.net/66a07ac23e1b31f040af1db1c26e9db3.jpg',5),
(264,222,'https://yanxuan.nosdn.127.net/b3f1dff629e4552bd48dc7bc448c87cc.jpg',5),
(265,223,'https://yanxuan.nosdn.127.net/2c8ea07e47fd634985763f7542edb147.jpg',5),
(266,223,'https://yanxuan.nosdn.127.net/255aa07962209d5efc43db25b9fc420d.jpg',5),
(267,223,'https://yanxuan.nosdn.127.net/a0dee9b14a716c912ce7b129ed659943.jpg',5),
(268,224,'https://yanxuan.nosdn.127.net/1493e2f39572135d26d7d44e2ee8a17d.jpg',5),
(269,225,'https://yanxuan.nosdn.127.net/d27341b40f9dded7af6d48b17b3900b0.jpg',5),
(270,225,'https://yanxuan.nosdn.127.net/3311e083d8a6e2600a8efd6767141940.jpg',5),
(271,226,'https://yanxuan.nosdn.127.net/ab40216e0e13bd43e6ce05cb70bf70ed.jpg',5),
(272,227,'https://yanxuan.nosdn.127.net/28c3fe99d7c0845d2159821c775daa53.jpg',5),
(273,228,'https://yanxuan.nosdn.127.net/bff1a43f24ffe812cc66906199515076.jpg',5),
(274,228,'https://yanxuan.nosdn.127.net/ef5442e53f8e7af08a883bd63b14288d.jpg',5),
(275,229,'https://yanxuan.nosdn.127.net/0f8e9999e678270f398508fe2b2410ed.jpg',5),
(276,230,'https://yanxuan.nosdn.127.net/67987297b5cbf94ab90d7b2170fb3296.jpg',5),
(277,230,'https://yanxuan.nosdn.127.net/e94869548ec9f377051f2e1d18341885.jpg',5),
(278,231,'https://yanxuan.nosdn.127.net/24ca01952605584b0290ccbaa9a6f199.jpg',5),
(279,231,'https://yanxuan.nosdn.127.net/113358276be0129a8057b095220d308d.jpg',5),
(280,232,'https://yanxuan.nosdn.127.net/4a5bbc43ce53d987ab8e6348ea85dd2f.jpg',5),
(281,233,'https://yanxuan.nosdn.127.net/2bb50e6bfe365614f6ae5aa1155703b2.jpg',5),
(282,234,'https://yanxuan.nosdn.127.net/c8eaaf0aae9f2ede1f9d33744ba7f8ff.jpg',5),
(283,235,'https://yanxuan.nosdn.127.net/0094a3508a0b37d8759597d183c85222.jpg',5),
(284,236,'https://yanxuan.nosdn.127.net/b8bab304cbf3c2991d0bb367c05298da.jpg',5),
(285,237,'https://yanxuan.nosdn.127.net/2f9c157a74efe18716c367c83eb05cd7.jpg',5),
(286,238,'https://yanxuan.nosdn.127.net/4a474f7688de05eab8f015132cef432c.jpg',5),
(287,239,'https://yanxuan.nosdn.127.net/969eb7f65ab6aa69e7f242d11a29c32d.jpg',5),
(288,240,'https://yanxuan.nosdn.127.net/a8cd41200248e7b36e90482e9caa7e94.jpg',5),
(289,241,'https://yanxuan.nosdn.127.net/a3bd6f130fe3ee340037a37b6c721d16.jpg',5),
(290,242,'https://yanxuan.nosdn.127.net/6a10b3f27172cba92c05cd0530655aff.jpg',5),
(291,242,'https://yanxuan.nosdn.127.net/85e5548a59543b56e668cc0e4dfc45fc.jpg',5),
(292,243,'https://yanxuan.nosdn.127.net/932ce1df5850a70e25c997ae74682ae4.jpg',5),
(293,244,'https://yanxuan.nosdn.127.net/7215aa51acd444921885a6df839c4c97.jpg',5),
(294,244,'https://yanxuan.nosdn.127.net/8ca6c7d1609b2cf9a6da9cf9d28946e8.jpg',5),
(295,244,'https://yanxuan.nosdn.127.net/742cb4d878399dbc16ee016bdcc8a1fc.jpg',5),
(296,249,'https://yanxuan.nosdn.127.net/0ecf956ee0cfe4b660e5dc435d6cf6e8.jpg',5),
(297,250,'https://yanxuan.nosdn.127.net/988d68ce481b4e1425bb12489787900a.jpg',5),
(298,251,'https://yanxuan.nosdn.127.net/3e1738e13e6dbfc758906ba604738fab.jpg',5),
(299,251,'https://yanxuan.nosdn.127.net/11847bb011f62259378b0a6ba94e04a1.jpg',5),
(300,251,'https://yanxuan.nosdn.127.net/b3eebbdb1e5fdaf2afd91141284c53d0.jpg',5),
(301,252,'https://yanxuan.nosdn.127.net/ccc0fd11392c2880ba9958da9c9d7e2b.jpg',5),
(302,253,'https://yanxuan.nosdn.127.net/6c96022a4cfaa246baecd50076eb9f42.jpg',5),
(303,254,'https://yanxuan.nosdn.127.net/b020d52ddc614fdcf9ec816482bbb464.jpg',5),
(304,255,'https://yanxuan.nosdn.127.net/e337cf4321f2e318fcd703c13a073b19.jpg',5),
(305,256,'https://yanxuan.nosdn.127.net/5789a2ddfc467d218e6a85cb842833f3.jpg',5),
(306,257,'https://yanxuan.nosdn.127.net/1811203fecc7b720d3d00cd33acfdbfd.jpg',5),
(307,258,'https://yanxuan.nosdn.127.net/71ada136cdd64373601825214011af22.jpg',5),
(308,258,'https://yanxuan.nosdn.127.net/07cad4eb2ac9535220388f0614518be0.jpg',5),
(309,258,'https://yanxuan.nosdn.127.net/ab01443acbffa84c8a979f61086e2feb.jpg',5),
(310,259,'https://yanxuan.nosdn.127.net/47161cc3669b3a91e3a7c95aced21815.jpg',5),
(311,260,'https://yanxuan.nosdn.127.net/9e7936d8eae4f7a45a5bbe37879b298c.jpg',5),
(312,261,'https://yanxuan.nosdn.127.net/a07e1324bca05e5c2198c7fdcdbbfef5.jpg',5),
(313,262,'https://yanxuan.nosdn.127.net/d74f0faab980d50255486c550b920e23.jpg',5),
(314,263,'https://yanxuan.nosdn.127.net/9d9ecac6a61f7b1c0fcdfe332426fa75.jpg',5),
(315,264,'https://yanxuan.nosdn.127.net/5946e8e602b1e00ed1a96c9c878b7c73.jpg',5),
(316,265,'https://yanxuan.nosdn.127.net/0f451fb2b42e6437c158cd7bebc42b7c.jpg',5),
(317,266,'https://yanxuan.nosdn.127.net/633602f256da4e2c6d42b3fe3cf9b2cd.jpg',5),
(318,266,'https://yanxuan.nosdn.127.net/d0c54709e1e2cfe4e4e5a088941dc65b.jpg',5),
(319,267,'https://yanxuan.nosdn.127.net/56d816049828593feba466b2726f261a.jpg',5),
(320,268,'https://yanxuan.nosdn.127.net/7bc086b44be7d9b817e12241a88b6220.jpg',5),
(321,269,'https://yanxuan.nosdn.127.net/431be25b6a30a2ed03ac47cf8300b03b.jpg',5),
(322,269,'https://yanxuan.nosdn.127.net/2a0ade4dd55807a40cc4f1fd0d94c68b.jpg',5),
(323,270,'https://yanxuan.nosdn.127.net/02cb14b2e29256273d8c29a0dea86f1f.jpg',5),
(324,271,'https://yanxuan.nosdn.127.net/3fcd5c4831a8c6ae297d2df19194843c.jpg',5),
(325,272,'https://yanxuan.nosdn.127.net/156aa67d25e08d2bb0e07c36f3949b38.jpg',5),
(326,272,'https://yanxuan.nosdn.127.net/662f6f65414bf0b96deaed9032c72378.jpg',5),
(327,273,'https://yanxuan.nosdn.127.net/7f986d83a287bce0544c34a52361d862.jpg',5),
(328,274,'https://yanxuan.nosdn.127.net/014108f56d8cfa0a789b2630ea657a83.jpg',5),
(329,275,'https://yanxuan.nosdn.127.net/7ecd64239acdbf3d880e3c0d89ddc954.jpg',5),
(330,276,'https://yanxuan.nosdn.127.net/cd8cffb16f9dbd42d26c2467c3b82363.jpg',5),
(331,277,'https://yanxuan.nosdn.127.net/d19829938e1089c751b4bec660b302e8.jpg',5),
(332,278,'https://yanxuan.nosdn.127.net/647c6245bb7a41323c3ce2cff9bb639e.jpg',5),
(333,278,'https://yanxuan.nosdn.127.net/1da70ad5d263120bbe8a309c9d87eb10.jpg',5),
(334,278,'https://yanxuan.nosdn.127.net/096ee1bcd1e8143916c89d0b756bf0b6.jpg',5),
(335,278,'https://yanxuan.nosdn.127.net/cd60d3af53d09fed72352c310457bd98.jpg',5),
(336,279,'https://yanxuan.nosdn.127.net/e682cb83a0f6c72b6a7bab66e310c093.jpg',5),
(337,279,'https://yanxuan.nosdn.127.net/ebc6cbf55475566f7a383a04acbfef5d.jpg',5),
(338,280,'https://yanxuan.nosdn.127.net/7638d404f13588d32f32989767e58b4f.jpg',5),
(339,281,'https://yanxuan.nosdn.127.net/f086163bcb8ba408a5862f275e6067a9.jpg',5),
(340,282,'https://yanxuan.nosdn.127.net/9d1baa05053cbdbd89149d9fd3cdc448.jpg',5),
(341,283,'https://yanxuan.nosdn.127.net/afd45ceb55bc6bddc44cf50a5325401d.jpg',5),
(342,283,'https://yanxuan.nosdn.127.net/27b45e94dd7a987829c32dd7422819f0.jpg',5),
(343,284,'https://yanxuan.nosdn.127.net/771bef5ae8b66de0852e6e1a7a40319b.jpg',5),
(344,285,'https://yanxuan.nosdn.127.net/c5e2f6adb442afda75887456a2c7842b.jpg',5),
(345,286,'https://yanxuan.nosdn.127.net/caf4a75974f6d2ef220b47c7f0df0738.jpg',5),
(346,287,'https://yanxuan.nosdn.127.net/dd181bbf2b271c1c66eff6068de50dc8.jpg',5),
(347,287,'https://yanxuan.nosdn.127.net/4ca7b2d4e1b193e378de57645e0338ec.jpg',5),
(348,288,'https://yanxuan.nosdn.127.net/d14c3df3856e42532ca3627243b56e5c.jpg',5),
(349,289,'http://yanxuan.nosdn.127.net/01dfbe2416893d0429da5516cdd9502d.jpg',5),
(350,290,'http://yanxuan.nosdn.127.net/e969eaebf84ce032638940d4a99cf842.jpg',5),
(351,291,'http://yanxuan.nosdn.127.net/0b4748f99e520ce931291fa92b98a723.jpg',5),
(352,301,'https://yanxuan.nosdn.127.net/3057506509b4cc0e612516375fde2408.jpg',5),
(353,301,'https://yanxuan.nosdn.127.net/32ed6eab4918d9bc749e8083111bf180.jpg',5),
(354,302,'https://yanxuan.nosdn.127.net/052e2518fae1f5d772ca0d1352e9bc25.jpg',5),
(355,303,'https://yanxuan.nosdn.127.net/839197bb4193cadec20c7a668f164abb.jpg',5),
(356,304,'https://yanxuan.nosdn.127.net/38f5c1f70a9c9c5e45f2fcb0b5184641.jpg',5),
(357,305,'http://yanxuan.nosdn.127.net/1c2bcd3005dbf06b98518524afb04f4e.jpg',5),
(358,306,'http://yanxuan.nosdn.127.net/f1f1e1333d1274e0787f1d805767cc2d.jpg',5),
(359,309,'http://yanxuan.nosdn.127.net/4c965af8feecdff00f8ef2083041d211.jpg',5),
(360,309,'http://yanxuan.nosdn.127.net/5db2ec27fe5f4da0ad15e745fb190703.jpg',5),
(361,331,'https://yanxuan.nosdn.127.net/635170b308fb7488adcc916c50513998.jpg',5),
(362,331,'https://yanxuan.nosdn.127.net/f53167e6e44205599d358e88fc1d0b27.jpg',5),
(363,331,'https://yanxuan.nosdn.127.net/e7b57b47db189cc8b9dba730953048f0.jpg',5),
(364,332,'https://yanxuan.nosdn.127.net/a4930439358a64cd1ae391ac021a1267.jpg',5),
(365,332,'https://yanxuan.nosdn.127.net/6bfc27e44113c231c809ecbbe8fc30b0.jpg',5),
(366,333,'https://yanxuan.nosdn.127.net/21ba531d3d76877f426de429d57f1f91.jpg',5),
(367,333,'https://yanxuan.nosdn.127.net/999578493838a59218230b19fc57f91d.jpg',5),
(368,333,'https://yanxuan.nosdn.127.net/0e49046b0ab483c0b4935ae6da13c1af.jpg',5),
(369,334,'https://yanxuan.nosdn.127.net/fd0a27fd1d0753fda7b3b51aca10048a.jpg',5),
(370,335,'https://yanxuan.nosdn.127.net/a7f4a05abc17737d47e1d87d4803de86.jpg',5),
(371,336,'https://yanxuan.nosdn.127.net/ddb730d6b3a0405ba62da7e1015d9058.jpg',5),
(372,337,'https://yanxuan.nosdn.127.net/07367c480302a7536edf39eb66927f22.jpg',5),
(373,337,'https://yanxuan.nosdn.127.net/adf211d67143b56433a5949131b2376d.jpg',5),
(374,338,'https://yanxuan.nosdn.127.net/37f07aeff1f2ca0f266c3b63ed14ddb6.jpg',5),
(375,339,'https://yanxuan.nosdn.127.net/d7f22f2bab32a044d649b1c73f2b9a95.jpg',5),
(376,339,'https://yanxuan.nosdn.127.net/8d074111cbe37a96b4c5bde64eda7747.jpg',5),
(377,340,'https://yanxuan.nosdn.127.net/1cc9dbaf08d59f1e8e20ceacf37b528f.jpg',5),
(378,340,'https://yanxuan.nosdn.127.net/2a34ee756c626188683150636e5a97cd.jpg',5),
(379,340,'https://yanxuan.nosdn.127.net/d15b196d104468b9af5336460d668ac9.jpg',5),
(380,341,'https://yanxuan.nosdn.127.net/5db4b968c03ca319772f5f8fc19fb499.jpg',5),
(381,341,'https://yanxuan.nosdn.127.net/b29e848512311c2ae3b41c281dfdd7c3.jpg',5),
(382,342,'https://yanxuan.nosdn.127.net/28c2258831b97c2ee2d023c903b2e479.jpg',5),
(383,342,'https://yanxuan.nosdn.127.net/c6ed25afdd223e407ff5e4c5ba1a36a8.jpg',5),
(384,343,'https://yanxuan.nosdn.127.net/0eab994ad4bce67a91a31c8b8ba6b779.jpg',5),
(385,343,'https://yanxuan.nosdn.127.net/f1a6a066ce0870e42251b8de39a8dadd.jpg',5),
(386,344,'https://yanxuan.nosdn.127.net/3e03a9d133ca322c436215aa31ce9560.jpg',5),
(387,345,'https://yanxuan.nosdn.127.net/34c2152720a488a7f15986a693c8c9bc.jpg',5),
(388,345,'https://yanxuan.nosdn.127.net/9e20d4848260f11b14966a96b13ccdca.jpg',5),
(389,346,'https://yanxuan.nosdn.127.net/0c9c3aaad0ee1db23010f2882fbe1b33.jpg',5),
(390,347,'https://yanxuan.nosdn.127.net/b53073ebee0024459ee2fe0e4d3c5fc5.jpg',5),
(391,348,'https://yanxuan.nosdn.127.net/6a7825a1ddf67d61c7433df105a6baba.jpg',5),
(392,349,'https://yanxuan.nosdn.127.net/8459e0a6e239c46942de324a55e2c99e.jpg',5),
(393,349,'https://yanxuan.nosdn.127.net/fe615d5dad609e8221b4667243fbd5d4.jpg',5),
(394,350,'https://yanxuan.nosdn.127.net/377394ea763cf519a56d8f0dd0d8f7db.jpg',5),
(395,350,'https://yanxuan.nosdn.127.net/52991510bc74fad033e7b249d7b9be13.jpg',5),
(396,351,'https://yanxuan.nosdn.127.net/1d132318eb02ffe326361b49106885cf.jpg',5),
(397,351,'https://yanxuan.nosdn.127.net/6129ceaf1df0a28270c8ac3f14e0bbce.jpg',5),
(398,352,'https://yanxuan.nosdn.127.net/415967bab62b55d5bd253a5b26784d06.jpg',5),
(399,352,'https://yanxuan.nosdn.127.net/71504a1c7520729d501dec2430f834c2.jpg',5),
(400,353,'https://yanxuan.nosdn.127.net/9ea5e29bc21bd9ec70fe7842183c2489.jpg',5),
(401,353,'https://yanxuan.nosdn.127.net/540d6c43e5158695e99d7d4b3ace78bd.jpg',5),
(402,354,'https://yanxuan.nosdn.127.net/1f9dec128763bd92305fb76adf6e7371.jpg',5),
(403,355,'https://yanxuan.nosdn.127.net/0a2dabac03704e85b7b61b224aa69832.jpg',5),
(404,356,'https://yanxuan.nosdn.127.net/990daee00e22c42b1b79eeae9981c673.jpg',5),
(405,356,'https://yanxuan.nosdn.127.net/dc071c856d9fffd31b53eec17e274a67.jpg',5),
(406,357,'https://yanxuan.nosdn.127.net/0e5afb723baf9d1e863ae0d97337aefe.jpg',5),
(407,358,'https://yanxuan.nosdn.127.net/662393c53e638f08d81035f611b1e4fc.jpg',5),
(408,359,'https://yanxuan.nosdn.127.net/b6459dfc4274559982b0389884dd30d1.jpg',5),
(409,360,'http://yanxuan.nosdn.127.net/8108f53f41effcb7581cc1c03b3191de.jpg',5),
(410,361,'https://yanxuan.nosdn.127.net/4c3d137c1e299e5502fd0537281e5d04.jpg',5),
(411,362,'https://yanxuan.nosdn.127.net/b54ed26bd3fa54e53e7b7c50ae514751.jpg',5),
(412,363,'https://yanxuan.nosdn.127.net/f019d4ff0e4fdaf4c4123167870c28b7.jpg',5),
(413,364,'https://yanxuan.nosdn.127.net/75bab0a63713b6a37b83ff6e900c10d0.jpg',5),
(414,364,'https://yanxuan.nosdn.127.net/f0246ffca30bd97a32cf47da0d1b42e1.jpg',5),
(415,365,'https://yanxuan.nosdn.127.net/6b32775ff2d3b7a4c8b81d78161209fc.jpg',5),
(416,366,'https://yanxuan.nosdn.127.net/90f664150dd6a28f4ea74ad7e9ec4a28.jpg',5),
(417,366,'https://yanxuan.nosdn.127.net/8774ba9d9239f3e39877f555acaf15b8.jpg',5),
(418,373,'https://yanxuan.nosdn.127.net/45573a8d626928fefcb8fb7c7bcdc6b7.jpg',5),
(419,373,'https://yanxuan.nosdn.127.net/0307884c4b73c2e6b0a5fd70ecb6235a.jpg',5),
(420,374,'https://yanxuan.nosdn.127.net/65084b80fa3a0a5c40c6af4f4574e257.jpg',5),
(421,374,'https://yanxuan.nosdn.127.net/ba42c4196b5e35820e3876edfa271d10.jpg',5),
(422,375,'https://yanxuan.nosdn.127.net/b57c8ed5c06023a9602e181d0616ca47.jpg',5),
(423,376,'https://yanxuan.nosdn.127.net/59e2113b257f591aac6cd05fe01bb34f.jpg',5),
(424,377,'https://yanxuan.nosdn.127.net/6f872a084f469dbf1d2071e1502b7265.jpg',5),
(425,378,'https://yanxuan.nosdn.127.net/1709ad9668080f5d68e4d99af71e2715.jpg',5),
(426,379,'https://yanxuan.nosdn.127.net/d31116d0a2308816f7132058cf65996b.jpg',5),
(427,379,'https://yanxuan.nosdn.127.net/476d82da9638aa3c078a85fe86f33455.jpg',5),
(428,380,'https://yanxuan.nosdn.127.net/4fe031edec3f8274be884cf3ecc179de.jpg',5),
(429,381,'https://yanxuan.nosdn.127.net/107d05282780754c9caa389cbc675931.jpg',5),
(430,382,'https://yanxuan.nosdn.127.net/771d79c61b79683b575d6896945626b9.jpg',5),
(431,383,'https://yanxuan.nosdn.127.net/78ddc578bc98934b2afc1235d04a2ce8.jpg',5),
(432,384,'https://yanxuan.nosdn.127.net/82d0bb3c13ebb8c12759a604ebfecf46.jpg',5),
(433,384,'https://yanxuan.nosdn.127.net/8830ef8eed5b08626e5d63bd18ca2511.jpg',5),
(434,385,'https://yanxuan.nosdn.127.net/1939b8c48f5fa5c7bd421399bb47195a.jpg',5),
(435,386,'https://yanxuan.nosdn.127.net/afcadcb617c6fbe9296333f34e84a910.jpg',5),
(436,387,'https://yanxuan.nosdn.127.net/3c427d485030de309dbb05082833485e.jpg',5),
(437,387,'https://yanxuan.nosdn.127.net/7de21d869a06cec111430043e9476807.jpg',5),
(438,388,'https://yanxuan.nosdn.127.net/0b6dacaa8a042d32aba41eba382831fe.jpg',5),
(439,389,'https://yanxuan.nosdn.127.net/d848bb60aebae7cad32bf1b3ad20eec5.jpg',5),
(440,390,'https://yanxuan.nosdn.127.net/82d0bb3c13ebb8c12759a604ebfecf46.jpg',5),
(441,390,'https://yanxuan.nosdn.127.net/8830ef8eed5b08626e5d63bd18ca2511.jpg',5),
(442,391,'https://yanxuan.nosdn.127.net/977b2150ba8d0eb116fe28d5007be2b7.jpg',5),
(443,391,'https://yanxuan.nosdn.127.net/e146d5dd0edcede5bc6e34ad4fb7705d.jpg',5),
(444,393,'https://yanxuan.nosdn.127.net/fbfd0741f4296cd6ef8494703f2012a4.jpg',5),
(445,394,'https://yanxuan.nosdn.127.net/af231880521c66710957202477b0d00b.jpg',5),
(446,395,'https://yanxuan.nosdn.127.net/34ab034f68d41a1c929e05616f17c5e5.jpg',5),
(447,395,'https://yanxuan.nosdn.127.net/fb330041a2215d63a6dda00d0d1f74f7.jpg',5),
(448,395,'https://yanxuan.nosdn.127.net/0e05c2b6991b08e0c57df46588a93392.jpg',5),
(449,395,'https://yanxuan.nosdn.127.net/d941f8ca89634db5b8b32ab435b5034a.jpg',5),
(450,396,'https://yanxuan.nosdn.127.net/e7be56d46a0076091e873413d5b7f630.jpg',5),
(451,396,'https://yanxuan.nosdn.127.net/72bf1ac2cab80221b79cf4d49d2deae3.jpg',5),
(452,396,'https://yanxuan.nosdn.127.net/f9fb4f6cf50bd3097004f4bd2cbcb91f.jpg',5),
(453,397,'https://yanxuan.nosdn.127.net/3efd90c51ccb43ff93d23d96b156ab7a.jpg',5),
(454,398,'https://yanxuan.nosdn.127.net/db5f2acb16b53aa0ee0dacd9ebf7a572.jpg',5),
(455,399,'https://yanxuan.nosdn.127.net/d276cf117e469d6f594889a517536d8d.jpg',5),
(456,399,'https://yanxuan.nosdn.127.net/9e5ab36536442c1cf5d908151c8ef658.jpg',5),
(457,399,'https://yanxuan.nosdn.127.net/e280fe74f962b7cc9efbb07fa10050d2.jpg',5),
(458,399,'https://yanxuan.nosdn.127.net/39ba6fa7d9e810104bc050b59b293cae.jpg',5),
(459,400,'https://yanxuan.nosdn.127.net/9acc2457fae7b44f46cbf38dfc46a207.jpg',5),
(460,401,'https://yanxuan.nosdn.127.net/00fb73c8a948f8079217a24c80d43ca2.jpg',5),
(461,402,'https://yanxuan.nosdn.127.net/bff23e525e949e872b930e710d08ccc8.jpg',5),
(462,402,'https://yanxuan.nosdn.127.net/e838d02a8dbe90a22e3d552dcc873118.jpg',5),
(463,403,'https://yanxuan.nosdn.127.net/22b0065c003aa2e567870cef17292b2f.jpg',5),
(464,404,'https://yanxuan.nosdn.127.net/7a729ed5625387171597be75d99d82b7.jpg',5),
(465,405,'http://yanxuan.nosdn.127.net/4a066e86af7fae026b8bfc1d4acd26d3.png',5),
(466,406,'https://yanxuan.nosdn.127.net/034359a1d899f2e3de6666a987284704.jpg',5),
(467,407,'https://yanxuan.nosdn.127.net/f2ff354d8d573ef7265a04b3213b0657.jpg',5),
(468,408,'https://yanxuan.nosdn.127.net/9e0e131d1c9ac1694a4a21d95f10d13c.jpg',5),
(469,409,'https://yanxuan.nosdn.127.net/f878ae2a2c8950d11d35fcf93115968d.jpg',5),
(470,409,'https://yanxuan.nosdn.127.net/bc5fd9cf526fd74cec4ac931369dc9b4.jpg',5),
(471,410,'https://yanxuan.nosdn.127.net/110d61a1bb10ab2c1273859589e06aaa.jpg',5),
(472,411,'https://yanxuan.nosdn.127.net/a76de192aa1df77f12336275abc705a9.jpg',5),
(473,412,'https://yanxuan.nosdn.127.net/0fbb7573e64ebf5db125401fb129403d.jpg',5),
(474,412,'https://yanxuan.nosdn.127.net/f56dcadfa362b6e53239ebc91753aba8.jpg',5),
(475,412,'https://yanxuan.nosdn.127.net/bed16cde08d5035a14bc2cb2fab9376b.jpg',5),
(476,413,'https://yanxuan.nosdn.127.net/c634bca55395e106ed9d9e73f15e2b23.jpg',5),
(477,414,'https://yanxuan.nosdn.127.net/4d74146663ff6bf900ad47f1843bf451.jpg',5),
(478,415,'https://yanxuan.nosdn.127.net/04ede9f5591458715b3cf4013edf5239.jpg',5),
(479,416,'https://yanxuan.nosdn.127.net/20842408304e34045e2c5c95d98657da.jpg',5),
(480,417,'https://yanxuan.nosdn.127.net/efa79ae21d5235c277d6e2b14eb67d76.jpg',5),
(481,418,'https://yanxuan.nosdn.127.net/70318a0f18f00cc63294f4d0f865c1a0.jpg',5),
(482,419,'https://yanxuan.nosdn.127.net/154652fd3dfbe7ad2d1414f280518be9.jpg',5),
(483,420,'https://yanxuan.nosdn.127.net/143711134f3cb97409ddcd1e19d67956.jpg',5),
(484,423,'https://yanxuan.nosdn.127.net/40e4859453a6cfaa129fbb740f335cc7.jpg',5),
(485,424,'https://yanxuan.nosdn.127.net/46e9a8a98f52712c49871e60d706d79c.jpg',5),
(486,425,'https://yanxuan.nosdn.127.net/d6c2b3a13609142f36bb8f58984e82e6.jpg',5),
(487,425,'https://yanxuan.nosdn.127.net/e343c8d89cea3e513b0335e8adcddb65.jpg',5),
(488,426,'https://yanxuan.nosdn.127.net/c9da1feb565f8d0aa7c7fb2804b700f1.jpg',5),
(489,427,'https://yanxuan.nosdn.127.net/de21e4f108b4802ae9c0c29fe93ef606.jpg',5),
(490,427,'https://yanxuan.nosdn.127.net/1e5877efb64d03264d86fd7cecf5a16b.jpg',5),
(491,427,'https://yanxuan.nosdn.127.net/433a70e334bcc9b42aa9dd6e37ae5223.jpg',5),
(492,428,'https://yanxuan.nosdn.127.net/d6f4939f66356b71139914724d99378d.jpg',5),
(493,428,'https://yanxuan.nosdn.127.net/1fff5064bd1c6a9663a2e78e49e0b2fa.jpg',5),
(494,429,'https://yanxuan.nosdn.127.net/deaac3830cc1b39f4036aad11481911d.jpg',5),
(495,430,'https://yanxuan.nosdn.127.net/fabdf1c9e3502a4a7880ab62234c4b08.jpg',5),
(496,431,'https://yanxuan.nosdn.127.net/b88cfd6f084f637f3c384282b377693f.jpg',5),
(497,432,'https://yanxuan.nosdn.127.net/39827391676935a0b5b438063217e650.jpg',5),
(498,433,'https://yanxuan.nosdn.127.net/2def98a9ebeb2ab21928ef22de8969e9.jpg',5),
(499,434,'https://yanxuan.nosdn.127.net/dc4abe070c7d90fa1567b5a102259445.jpg',5),
(500,435,'https://yanxuan.nosdn.127.net/46de2bb73159a6d39e2486aba890b43e.jpg',5),
(501,436,'https://yanxuan.nosdn.127.net/38519811d2a30ef63cd9a5347ec1d21f.jpg',5),
(502,436,'https://yanxuan.nosdn.127.net/d01f3c7c39febd471ce3051097ddffed.jpg',5),
(503,437,'https://yanxuan.nosdn.127.net/6b8f525cf1190b213c75b3c041724f98.jpg',5),
(504,438,'https://yanxuan.nosdn.127.net/1be7ecf2c80c3e1d5ed273fc4a6b1d05.jpg',5),
(505,438,'https://yanxuan.nosdn.127.net/3781e0e8f999e6ffaebd116a63b092e4.jpg',5),
(506,439,'https://yanxuan.nosdn.127.net/89b164312caa1ab479d4d4776754d64f.jpg',5),
(507,440,'https://yanxuan.nosdn.127.net/8387a4c36cf221875e442ff79ee8e2d7.jpg',5),
(508,440,'https://yanxuan.nosdn.127.net/668a9e7d80a55d6182b1fa831bd7ca10.jpg',5),
(509,440,'https://yanxuan.nosdn.127.net/a244df8022193c5dcf240c509349af39.jpg',5),
(510,441,'https://yanxuan.nosdn.127.net/9fa9b008ee0cd8ca7d0cb8d5a374a3f9.jpg',5),
(511,441,'https://yanxuan.nosdn.127.net/a740874a93fb86758e9bfc6ce5edcc07.jpg',5),
(512,442,'https://yanxuan.nosdn.127.net/2fc64ae459ba627b350058cd2a9fcd9a.jpg',5),
(513,443,'https://yanxuan.nosdn.127.net/d5c64c787daf196c781ce89c212161de.jpg',5),
(514,444,'https://yanxuan.nosdn.127.net/f88dc1f34457cd746bf69d56f9007864.jpg',5),
(515,444,'https://yanxuan.nosdn.127.net/d1869783fac3c7ba1eb25cbd79c7d8fb.jpg',5),
(516,444,'https://yanxuan.nosdn.127.net/5ba061e6048ff7cf3ffc86c736b73fe7.jpg',5),
(517,445,'https://yanxuan.nosdn.127.net/351d16f83bbc87c7e95a730d5a939f0b.jpg',5),
(518,446,'http://yanxuan.nosdn.127.net/8c57c950d9ffb76b895b80a7fe1acab7.jpg',5),
(519,446,'http://yanxuan.nosdn.127.net/ab9303135e7a016c4d06129e44075d37.jpg',5),
(520,446,'http://yanxuan.nosdn.127.net/b4c0519875ccf2927f53027b603644a8.jpg',5),
(521,447,'http://yanxuan.nosdn.127.net/c47fef50da78c59ae95e40c4a602e5fc.jpg',5),
(522,448,'http://yanxuan.nosdn.127.net/eab951dd532a3f2e05fb707e2e9895c7.jpg',5),
(523,448,'http://yanxuan.nosdn.127.net/efb925c430e3983e289a6b93cb41e0df.jpg',5),
(524,448,'http://yanxuan.nosdn.127.net/c417161df96586b583f99958cb572a42.jpg',5),
(525,449,'https://yanxuan.nosdn.127.net/19e929005c199443ee3a16c011941670.jpg',5),
(526,449,'https://yanxuan.nosdn.127.net/431da993fcc0eb5b4f769b1fe732d7e1.jpg',5),
(527,450,'https://yanxuan.nosdn.127.net/3809b558a500ff7f003dae2bf1c24d01.jpg',5),
(528,450,'https://yanxuan.nosdn.127.net/f8d0f0c1d7d06cbb6eb4186ae4e01ac8.jpg',5),
(529,452,'https://yanxuan.nosdn.127.net/920e65862ada7abdc90a557bb52bb5a9.jpg',5),
(530,453,'https://yanxuan.nosdn.127.net/2b605f9207ed20a204657239b7e3aa54.jpg',5),
(531,453,'https://yanxuan.nosdn.127.net/0537d635b0681d808a49c938eb1e5bd0.jpg',5),
(532,453,'https://yanxuan.nosdn.127.net/3fc181758d5f01eec774fee18eb504cf.jpg',5),
(533,453,'https://yanxuan.nosdn.127.net/f49797d3383f97f5943e625c1f0f1d91.jpg',5),
(534,454,'https://yanxuan.nosdn.127.net/df6d961b8b7fb26fae2e88535de262c6.jpg',5),
(535,454,'https://yanxuan.nosdn.127.net/89fb73ced773b39fab4082c11ab58673.jpg',5),
(536,455,'https://yanxuan.nosdn.127.net/7498e2940b28af120cd0ec92a0c66638.jpg',5),
(537,456,'https://yanxuan.nosdn.127.net/dd77d62b07a89101bc5a0a1ebc6957cc.jpg',5),
(538,457,'https://yanxuan.nosdn.127.net/376436f6099e0fa98a7f9ec27af993cb.jpg',5),
(539,457,'https://yanxuan.nosdn.127.net/e0986515721ad7aba8a4788c1eed0a02.jpg',5),
(540,458,'https://yanxuan.nosdn.127.net/f407f00c3a782907f3bd947597f1ea4b.jpg',5),
(541,459,'https://yanxuan.nosdn.127.net/3cfd42b6bbb132b7c28b169711bd4a18.jpg',5),
(542,460,'https://yanxuan.nosdn.127.net/e00891ae79fe658b8e3de2917205015f.jpg',5),
(543,461,'https://yanxuan.nosdn.127.net/1e22290cbe14a2e98441939baab3cf58.jpg',5),
(544,462,'https://yanxuan.nosdn.127.net/2a68e9bbc4d675c1bd723a5338a82528.jpg',5),
(545,462,'https://yanxuan.nosdn.127.net/a0cb6796e54659385946120e430dae59.jpg',5),
(546,462,'https://yanxuan.nosdn.127.net/4392e767d216022e5359b7709a5ae3b9.jpg',5),
(547,463,'https://yanxuan.nosdn.127.net/05d02da308e3989c9fca0d5f4896a72b.jpg',5),
(548,464,'https://yanxuan.nosdn.127.net/0c5620ccad56f071205697e37885fd62.jpg',5),
(549,465,'https://yanxuan.nosdn.127.net/061ae0703caf5ebadccc08eea088fdf8.jpg',5),
(550,466,'https://yanxuan.nosdn.127.net/bd13195748611dd22bba00b6a194f980.jpg',5),
(551,467,'http://yanxuan.nosdn.127.net/d51d8ca125798583b4c317d4918b8e0a.jpg',5),
(552,467,'http://yanxuan.nosdn.127.net/635d93871385e2fc2c6fc6eee1f8c383.jpg',5),
(553,467,'http://yanxuan.nosdn.127.net/5cc284cb123784f42d8ffeb342ac0e08.jpg',5),
(554,467,'http://yanxuan.nosdn.127.net/9c4ecd1c979ea4c518dd013bee05b711.jpg',5),
(555,468,'http://yanxuan.nosdn.127.net/bfa855a97f4c260766d2d949f5a4623f.jpg',5),
(556,469,'https://yanxuan.nosdn.127.net/adeb8c4ce257ce5ed8b42ad926bf2f39.jpg',5),
(557,469,'https://yanxuan.nosdn.127.net/f3cbccb526b8bfe70f19fd8dc6474cac.jpg',5),
(558,469,'https://yanxuan.nosdn.127.net/edfe4f2f59733f47420044ec803d3511.jpg',5),
(559,470,'https://yanxuan.nosdn.127.net/9c5d81d2e894be9a2edf15e4ffce5c86.jpg',5),
(560,471,'https://yanxuan.nosdn.127.net/55eda2d46e781602fe1732ab087dd6ec.jpg',5),
(561,472,'http://yanxuan.nosdn.127.net/ac7f99a0d6ed0630595896754d22ecaa.jpg',5),
(562,472,'http://yanxuan.nosdn.127.net/6c2c98716fc61299d19be8d1484f95e2.jpg',5),
(563,472,'http://yanxuan.nosdn.127.net/a755022c0d6fe33716aea91aad8eb752.jpg',5),
(564,472,'http://yanxuan.nosdn.127.net/729e5d7f1424d8b43873f7fa33d1ad6d.jpg',5),
(565,473,'https://yanxuan.nosdn.127.net/aca9c69d3b7c13312dbd3a37509b51c3.jpg',5),
(566,474,'https://yanxuan.nosdn.127.net/84d494d5b7f0c28a326c8092ee1a55ea.jpg',5),
(567,475,'http://yanxuan.nosdn.127.net/f54ba5cceada35bd0afc275760ebbac0.jpg',5),
(568,476,'https://yanxuan.nosdn.127.net/f2bded32842321014e42237e44e354f8.jpg',5),
(569,477,'http://yanxuan.nosdn.127.net/e6ba6f9d97f304ca62d417fec4a3fbde.jpg',5),
(570,478,'https://yanxuan.nosdn.127.net/ba5d1d8c134420dc12044b34f5124f7b.jpg',5),
(571,479,'https://yanxuan.nosdn.127.net/c5af0a8d29ab91608dc382026cf28b7f.jpg',5),
(572,480,'https://yanxuan.nosdn.127.net/3248f4e4255c42604a0434417c086831.jpg',5),
(573,481,'https://yanxuan.nosdn.127.net/3743c2d0fb230661399466105afb5d7a.jpg',5),
(574,482,'http://yanxuan.nosdn.127.net/62c27ea54e33932e563afeec1c476241.jpg',5),
(575,483,'https://yanxuan.nosdn.127.net/1754d66ddacaa93156bfe018a46d3762.jpg',5),
(576,484,'https://yanxuan.nosdn.127.net/244f35238f3e8a49444d51f71faf6e62.jpg',5),
(577,485,'https://yanxuan.nosdn.127.net/c57a8dc16113bd7c01a3d707cb97f7db.jpg',5),
(578,485,'https://yanxuan.nosdn.127.net/d5afdb995c94d703f890237c92e7c2bc.jpg',5),
(579,486,'https://yanxuan.nosdn.127.net/7b4d2e62598b06a44588bd522f3da4d8.jpg',5),
(580,487,'https://yanxuan.nosdn.127.net/2ea24ad589d12d7ad7764069000436f9.jpg',5),
(581,488,'https://yanxuan.nosdn.127.net/cffd147b1f0565d02b985f79ccf25636.jpg',5),
(582,489,'http://yanxuan.nosdn.127.net/cd1ae96536d55fcafb5d3707c0a3479e.jpg',5),
(583,490,'http://yanxuan.nosdn.127.net/8a339c4213d38c26e7434d904b7ef44e.jpg',5),
(584,490,'http://yanxuan.nosdn.127.net/0987c789450e8578e8771182cc4f8b74.jpg',5),
(585,491,'http://yanxuan.nosdn.127.net/e121edd11baa997bf99ce28ecd9c57d1.jpg',5),
(586,491,'http://yanxuan.nosdn.127.net/73a22cd09dcce6c143bf13ed2d87f411.jpg',5),
(587,491,'http://yanxuan.nosdn.127.net/666d89f0b2f8082b853bcc85b05f80f8.jpg',5),
(588,492,'http://yanxuan.nosdn.127.net/3295e86831e58a547c9d02af398ebdf2.jpg',5),
(589,493,'http://yanxuan.nosdn.127.net/d501148d4be2683fc216f4820587aa19.jpg',5),
(590,494,'http://yanxuan.nosdn.127.net/38173cfe72e6a3c7399fd9bce2b1a508.jpg',5),
(591,494,'http://yanxuan.nosdn.127.net/6c1c7dcdcb8a3d67c46859b81fcd54fb.jpg',5),
(592,494,'http://yanxuan.nosdn.127.net/4975a8cd6eaeccb64104190cebe83fef.jpg',5),
(593,495,'http://yanxuan.nosdn.127.net/849ce52f9c5eb124a4e309b04f8ad455.jpg',5),
(594,496,'http://yanxuan.nosdn.127.net/720c372249378c53e24d952c8e4b371d.jpg',5),
(595,496,'http://yanxuan.nosdn.127.net/ce7617ebaca5705074401054626025e1.jpg',5),
(596,497,'http://yanxuan.nosdn.127.net/faea0a3bdf26a4976b9944979a0aac5e.jpg',5),
(597,498,'http://yanxuan.nosdn.127.net/2208450720dd7bf51abacc8ac5d751ff.jpg',5),
(598,499,'http://yanxuan.nosdn.127.net/e6c3665c5b5cf77f306ad470473f63f9.jpg',5),
(599,500,'http://yanxuan.nosdn.127.net/3d30bd75af0cf2e5bca67650c85dc72c.jpg',5),
(600,501,'http://yanxuan.nosdn.127.net/e424bc35c6e4eb4d31b58e06c4ff95f8.jpg',5),
(601,502,'http://yanxuan.nosdn.127.net/b12ac1dea50b7293bfbd23957508fb17.jpg',5),
(602,502,'http://yanxuan.nosdn.127.net/1ce39f5f3618a0298ddbb8a02eda63ef.jpg',5),
(603,502,'http://yanxuan.nosdn.127.net/319bb56d8b76ed9dac75a0264b7332b4.jpg',5),
(604,503,'http://yanxuan.nosdn.127.net/1ee3507c19892c726bf817fdf4d808a8.jpg',5),
(605,511,'https://yanxuan.nosdn.127.net/c9c5b3f9928980e9c9005e90fa569efb.jpg',5),
(606,512,'https://yanxuan.nosdn.127.net/06d74a02957e20cedca8c809a42d7114.jpg',5),
(607,512,'https://yanxuan.nosdn.127.net/373992f52f275ffc7eafcc7104a2b310.jpg',5),
(608,512,'https://yanxuan.nosdn.127.net/2bb835d88a0869ab3ef71eb823c0ca6f.jpg',5),
(609,512,'https://yanxuan.nosdn.127.net/2524c9e01b537f6f47f775d6aef36af4.jpg',5),
(610,513,'https://yanxuan.nosdn.127.net/809fa35edcaae9a3c0b603e4f4418bef.jpg',5),
(611,518,'https://yanxuan.nosdn.127.net/ce1c368ebff8ab2c7b8bc93cb04942ef.jpg',5),
(612,519,'https://yanxuan.nosdn.127.net/7c750b62d6fb0c0f0783b5b87b346c4c.jpg',5),
(613,520,'https://yanxuan.nosdn.127.net/f121df81266b5ead7cebc1631877ace6.jpg',5),
(614,520,'https://yanxuan.nosdn.127.net/5a22c27871fad83331c162755d0d1470.jpg',5),
(615,521,'https://yanxuan.nosdn.127.net/550e8928c05388e5b2a5b01283702fd8.jpg',5),
(616,522,'https://yanxuan.nosdn.127.net/4fffdb82fa6ab43a6365c2029f6df519.jpg',5),
(617,523,'https://yanxuan.nosdn.127.net/34cdf7cb9c69a64fde058e68ca7982d2.jpg',5),
(618,524,'https://yanxuan.nosdn.127.net/8bf5549a93222415180503e0016cdded.jpg',5),
(619,525,'https://yanxuan.nosdn.127.net/8dc64013c5f2415d552975293b7ec31f.jpg',5),
(620,526,'https://yanxuan.nosdn.127.net/1356367de183000f92789cb0cc1bd242.jpg',5),
(621,526,'https://yanxuan.nosdn.127.net/1e7a72baa7fee3723c0fb489161eda58.jpg',5),
(622,526,'https://yanxuan.nosdn.127.net/49678012c43a0c3537c4cd35b35471d1.jpg',5),
(623,527,'https://yanxuan.nosdn.127.net/94ec44fd7daea95d46f184ad3bb8a68a.jpg',5),
(624,528,'https://yanxuan.nosdn.127.net/28d2de003efe4566a9bd1de3cd45b4f5.jpg',5),
(625,528,'https://yanxuan.nosdn.127.net/82c3cab9b69f61bcd50e5fbab3aa5baf.jpg',5),
(626,529,'https://yanxuan.nosdn.127.net/62fc3fa5cb0a0185277a1e0b53fb0b34.jpg',5),
(627,530,'https://yanxuan.nosdn.127.net/9fe8daa5581acff11096306b9607bb82.jpg',5),
(628,531,'https://yanxuan.nosdn.127.net/fb29b948cae39766c37fa3aa4f164d58.jpg',5),
(629,532,'https://yanxuan.nosdn.127.net/dabf8a152140604c8c033549f408e324.jpg',5),
(630,532,'https://yanxuan.nosdn.127.net/d404e0e3edf0eae7e80f12c6372bce94.jpg',5),
(631,533,'https://yanxuan.nosdn.127.net/49fbf82054a53d7a6176fc793ff57917.jpg',5),
(632,534,'http://yanxuan.nosdn.127.net/37334e62e1c8b53562768522bcbcc13f.png',5),
(633,535,'https://yanxuan.nosdn.127.net/f1d1f25800dd4e7a1406f18708c56950.jpg',5),
(634,535,'https://yanxuan.nosdn.127.net/162c475af76421c5bd4848cbbd29efaa.jpg',5),
(635,535,'https://yanxuan.nosdn.127.net/5498420b755644f1bd275152dd6716cf.jpg',5),
(636,536,'https://yanxuan.nosdn.127.net/4a354c99b743c91063f8f6cbc213220e.jpg',5),
(637,536,'https://yanxuan.nosdn.127.net/f4d1aae3a27fc895fbdfe2598451e06f.jpg',5),
(638,537,'https://yanxuan.nosdn.127.net/fc6844a7331ac8b7b07ae78e803a7d45.jpg',5),
(639,538,'https://yanxuan.nosdn.127.net/b56a20b9a282747a1047933e25ed94e9.jpg',5),
(640,538,'https://yanxuan.nosdn.127.net/e81787ee465b0804e1f320899d9bea6c.jpg',5),
(641,539,'https://yanxuan.nosdn.127.net/bc8ccb8692e92a75c6dfe71664510830.jpg',5),
(642,540,'https://yanxuan.nosdn.127.net/9919d565b801e84addd8f68f44b61050.jpg',5),
(643,543,'https://yanxuan.nosdn.127.net/95c04489fe537931d46712efe33150b2.jpg',5),
(644,544,'https://yanxuan.nosdn.127.net/a161e2f52440acf5a3020b18b46cc8b1.jpg',5),
(645,544,'https://yanxuan.nosdn.127.net/ec0a51ff14b0a8643868f98e10c5fa4c.jpg',5),
(646,545,'https://yanxuan.nosdn.127.net/d62c8e52b81ad641e840be162c4deeb4.jpg',5),
(647,545,'https://yanxuan.nosdn.127.net/3cf1977b037354dd9135b2924f01807e.jpg',5),
(648,546,'https://yanxuan.nosdn.127.net/458788add98d177564744c1e64805aa6.jpg',5),
(649,546,'https://yanxuan.nosdn.127.net/ec32609a76df38733f1352b8279c19e1.jpg',5),
(650,547,'https://yanxuan.nosdn.127.net/09e6f7935abe6919fbb85c045453d649.jpg',5),
(651,548,'https://yanxuan.nosdn.127.net/97f82258d18ecb3bf33e13c8d1264522.jpg',5),
(652,548,'https://yanxuan.nosdn.127.net/9b1c323751b77840d8e01f82f10c7a3f.jpg',5),
(653,549,'https://yanxuan.nosdn.127.net/dd235ed4c86af50dfffb08a11ee1b6d3.jpg',5),
(654,550,'http://yanxuan.nosdn.127.net/e5bad28ebdf9a355d38fbc5e55865b55.jpg',5),
(655,550,'http://yanxuan.nosdn.127.net/0dfcd3a55f00b6dcdce1e4bbb28b5981.jpg',5),
(656,551,'https://yanxuan.nosdn.127.net/a8d700cb145afb5238c59fadb917ecf2.jpg',5),
(657,551,'https://yanxuan.nosdn.127.net/1c07b35ae6d1211045289944c9062b1f.jpg',5),
(658,552,'http://yanxuan.nosdn.127.net/171da27ecbbc4ad321f94d6e08a6cd9e.png',5),
(659,553,'http://yanxuan.nosdn.127.net/7b08d1772f9a8bf6b69e0d360c562396.png',5),
(660,554,'https://yanxuan.nosdn.127.net/99501eb64c85b80f8441bb29c7e0404d.jpg',5),
(661,554,'https://yanxuan.nosdn.127.net/611b91b36cdf83550e8ff51519b70b71.jpg',5),
(662,554,'https://yanxuan.nosdn.127.net/3b5f7c7979f28313a9ed0b4c2e9d0935.jpg',5),
(663,555,'https://yanxuan.nosdn.127.net/1680a1a0d0f15461b45c7c7ddb0e286e.jpg',5),
(664,556,'https://yanxuan.nosdn.127.net/58a4c9453b58c42961f84c668571a7ed.jpg',5),
(665,557,'http://yanxuan.nosdn.127.net/b7350262c6e28c90629e62c94371c35b.jpg',5),
(666,558,'http://yanxuan.nosdn.127.net/8547f26652a6c2059b4e0a246a16209b.jpg',5),
(667,559,'http://yanxuan.nosdn.127.net/c98335cc4cb2411d90e7a0b806412383.jpg',5),
(668,560,'http://yanxuan.nosdn.127.net/35e36e81f65499831b278b57909c23a5.jpg',5),
(669,561,'http://yanxuan.nosdn.127.net/1d269667e4726de78e50ab31eadb6195.jpg',5),
(670,562,'http://yanxuan.nosdn.127.net/2165d24376b3601a69fa527363ead10e.jpg',5),
(671,563,'http://yanxuan.nosdn.127.net/e8fd89a7508fc53b83b7fba07e809a48.jpg',5),
(672,563,'http://yanxuan.nosdn.127.net/3794b5a39646825076be8ca906dd68f1.jpg',5),
(673,564,'http://yanxuan.nosdn.127.net/d10f75cea70f3c9deece05f45d5182cd.jpg',5),
(674,565,'http://yanxuan.nosdn.127.net/e4e1354ce6559657aea7262fe64c23be.jpg',5),
(675,571,'https://yanxuan.nosdn.127.net/a8a0454723859c92af1dc6a10272b535.jpg',5),
(676,572,'https://yanxuan.nosdn.127.net/b7e3e6d54808e7bc296699e41d597543.jpg',5),
(677,572,'https://yanxuan.nosdn.127.net/65e0859c700533fcc37ce691978ea68e.jpg',5),
(678,578,'https://yanxuan.nosdn.127.net/c55679696d860ec563e18b366982d09e.jpg',5),
(679,578,'https://yanxuan.nosdn.127.net/bd1fd4276a9bb4e770397ec227512225.jpg',5),
(680,579,'https://yanxuan.nosdn.127.net/abd45ff67391e8e176f7e503e75c4283.jpg',5),
(681,580,'https://yanxuan.nosdn.127.net/f3daf5ae597a91cbfe0ab36a603a716b.jpg',5),
(682,580,'https://yanxuan.nosdn.127.net/d407a299c050a00bb3f8c19c1bbe5ce9.jpg',5),
(683,580,'https://yanxuan.nosdn.127.net/39584183f2fcaad576f84949ec7b6cfc.jpg',5),
(684,581,'https://yanxuan.nosdn.127.net/62571b423e27cd69ffb391457a5916de.jpg',5),
(685,581,'https://yanxuan.nosdn.127.net/e99535c6492b6c01bfc85b72872b2304.jpg',5),
(686,581,'https://yanxuan.nosdn.127.net/2c6c6a59044bed5367533b478d145430.jpg',5),
(687,581,'https://yanxuan.nosdn.127.net/b6e369f36cf152ebd7147644f7f70fd5.jpg',5),
(688,582,'https://yanxuan.nosdn.127.net/46e48ab353bddccec633f12b5a521121.jpg',5),
(689,583,'https://yanxuan.nosdn.127.net/94fb9d130db489471b7706e7156b9a21.jpg',5),
(690,583,'https://yanxuan.nosdn.127.net/1f1d98dc5095455b2689ca61c624057f.jpg',5),
(691,584,'https://yanxuan.nosdn.127.net/06cc1e8d844bac13f1a86665200d7e06.jpg',5),
(692,585,'https://yanxuan.nosdn.127.net/62a25ab3e6125a6ffb4b805300025dbc.jpg',5),
(693,585,'https://yanxuan.nosdn.127.net/efc8416ff62cbdaaa1aff5a8554b2ebe.jpg',5),
(694,585,'https://yanxuan.nosdn.127.net/53f6044d48b5f83be9d35b23d738dd94.jpg',5),
(695,586,'https://yanxuan.nosdn.127.net/f2d4bf919bf85438207094e34f8ebffa.jpg',5),
(696,586,'https://yanxuan.nosdn.127.net/98968a2e332cba9ac0a6f80503fc4f6e.jpg',5),
(697,587,'https://yanxuan.nosdn.127.net/08040bdcfc774498e07e0b13c4a6723d.jpg',5),
(698,588,'https://yanxuan.nosdn.127.net/f110b82871829aac038e1fb510511c91.jpg',5),
(699,589,'https://yanxuan.nosdn.127.net/dda9a1c41db0001848bcbc2819af17ca.jpg',5),
(700,590,'https://yanxuan.nosdn.127.net/a3e192773af517323ee0ac09ef79ee84.jpg',5),
(701,591,'https://yanxuan.nosdn.127.net/a674065cd6ea8d9708e2105304fb95ca.jpg',5),
(702,591,'https://yanxuan.nosdn.127.net/b20a0f0e4722f7833d63c94c27ae7a11.jpg',5),
(703,591,'https://yanxuan.nosdn.127.net/2b5ae81d7182072323d4fd9bf4a5c6b4.jpg',5),
(704,591,'https://yanxuan.nosdn.127.net/04db196793abaf5b197abfafe4f5e702.jpg',5),
(705,592,'https://yanxuan.nosdn.127.net/7f1d3d8f3630374566ce945bcc5aed04.jpg',5),
(706,593,'https://yanxuan.nosdn.127.net/17fb23e441621e775c772c5c912023f0.jpg',5),
(707,594,'https://yanxuan.nosdn.127.net/237be23e775e718b5807c2e7821db508.jpg',5),
(708,595,'https://yanxuan.nosdn.127.net/262e60c88bb8c311ac2fe899e91d38a4.jpg',5),
(709,595,'https://yanxuan.nosdn.127.net/8d4e1d65263bcf6f9f9959a9be217bb8.jpg',5),
(710,596,'https://yanxuan.nosdn.127.net/f86d9c02d903cda604d1b9d9fc76d8ef.jpg',5),
(711,596,'https://yanxuan.nosdn.127.net/787926f1b714f6f6b35c3da615b3a788.jpg',5),
(712,597,'https://yanxuan.nosdn.127.net/cfea23e4f65e5492d3f833e29559811c.jpg',5),
(713,598,'https://yanxuan.nosdn.127.net/fe4048e0ab7956f7f09726705f972078.jpg',5),
(714,599,'https://yanxuan.nosdn.127.net/c29a35eff0c1f0c778c03d56d5ceb488.jpg',5),
(715,600,'https://yanxuan.nosdn.127.net/c1737ac2361f9e2aeda91382d35ca20e.jpg',5),
(716,601,'https://yanxuan.nosdn.127.net/6d3a49740677455d0fb899267765e7dc.jpg',5),
(717,601,'https://yanxuan.nosdn.127.net/4982866d44171c1d1f376cad111d55f5.jpg',5),
(718,602,'https://yanxuan.nosdn.127.net/db0917423ddfc7d51127f3a4bfa67305.jpg',5),
(719,603,'https://yanxuan.nosdn.127.net/5d0b6d9aeac3e29dfe427792dd5fcd22.jpg',5),
(720,604,'https://yanxuan.nosdn.127.net/a56dfe21a69ad1f9f3bbccaa8ded7799.jpg',5),
(721,604,'https://yanxuan.nosdn.127.net/7aa1d24c5e2c5a8624d0390a6d170a31.jpg',5),
(722,604,'https://yanxuan.nosdn.127.net/96ee70bdf77d62f82b1ddc9989f10ad9.jpg',5),
(723,604,'https://yanxuan.nosdn.127.net/1f0398106b3e75f3e8fe0b85a051d937.jpg',5),
(724,605,'https://yanxuan.nosdn.127.net/f2754cd849fc7202daff2643bf2d8783.jpg',5),
(725,606,'https://yanxuan.nosdn.127.net/1b14d8c62aab87e8897e8534e8d08d30.jpg',5),
(726,607,'https://yanxuan.nosdn.127.net/5cd0ebe5edaab4fe0dd5a20beab9973f.jpg',5),
(727,608,'https://yanxuan.nosdn.127.net/e02ca8a637c311e2d8a7c93a683e9d20.jpg',5),
(728,608,'https://yanxuan.nosdn.127.net/ea78ba8241e4e0bf8bbe5038da19a72a.jpg',5),
(729,608,'https://yanxuan.nosdn.127.net/ad662ac8a06d7ef7a3c66a0317cb6ccf.jpg',5),
(730,609,'http://yanxuan.nosdn.127.net/5cc5f18c584d773fae633b6563b8713e.jpg',5),
(731,609,'http://yanxuan.nosdn.127.net/4afc42f76816931ea4bd6bac28625289.jpg',5),
(732,610,'http://yanxuan.nosdn.127.net/74493d3423183023fc617aa2b14345d5.jpg',5),
(733,610,'http://yanxuan.nosdn.127.net/14e196fbca9e656ffd2456e636221d51.jpg',5),
(734,611,'http://yanxuan.nosdn.127.net/b3463ea8bc10368ee81b829fe11bd487.jpg',5),
(735,612,'http://yanxuan.nosdn.127.net/1281ddf340551bcdd484388fe46be141.jpg',5),
(736,627,'https://yanxuan.nosdn.127.net/4f82acbd3717611306137018282047fe.jpg',5),
(737,631,'https://yanxuan.nosdn.127.net/60ea9abdc146361d85c23d25502d63b6.jpg',5),
(738,631,'https://yanxuan.nosdn.127.net/052f9f4432392c7c218a1534902acefa.jpg',5),
(739,634,'https://yanxuan.nosdn.127.net/a8d21e18d3902010ddf5d01bfa546e78.jpg',5),
(740,634,'https://yanxuan.nosdn.127.net/9ba7a9fbb56fa85a94bfbbf3540c6c96.jpg',5),
(741,634,'https://yanxuan.nosdn.127.net/976c474e5bbc687467b8b27a5b9a0796.jpg',5),
(742,634,'https://yanxuan.nosdn.127.net/4f517fd870b2fa0b0d0577baf9b951a3.jpg',5),
(743,635,'https://yanxuan.nosdn.127.net/9cdaf0bda6c875f8ba9e1baf17b4df2f.jpg',5),
(744,636,'https://yanxuan.nosdn.127.net/5638b05b2f7f0c3c4605878bbe8d5dff.jpg',5),
(745,636,'https://yanxuan.nosdn.127.net/2b628823d155af9a6e2cb27f1dbc057b.jpg',5),
(746,637,'https://yanxuan.nosdn.127.net/9d41ed14d278a29f3284135b5eaaab1c.jpg',5),
(747,638,'https://yanxuan.nosdn.127.net/dbfb7913eb778363595004e18765e5c8.jpg',5),
(748,639,'https://yanxuan.nosdn.127.net/a6a5a04bbcf72df70a24e8d13eca060c.jpg',5),
(749,640,'https://yanxuan.nosdn.127.net/ece318e743ceaa23149f772ba6031b03.jpg',5),
(750,641,'https://yanxuan.nosdn.127.net/134049bd13f120c24450b268f02b08ec.jpg',5),
(751,642,'https://yanxuan.nosdn.127.net/5494f065d611215430847bcd2c463057.jpg',5),
(752,643,'https://yanxuan.nosdn.127.net/16f8f015384610efe99154e7643a83b6.jpg',5),
(753,644,'https://yanxuan.nosdn.127.net/0ea2b71863166f483e0b7210229caa9f.jpg',5),
(754,644,'https://yanxuan.nosdn.127.net/3ec26a344972521786d0bbc531ebece7.jpg',5),
(755,645,'https://yanxuan.nosdn.127.net/d65b9d64714ae14745e54e862232f3a6.jpg',5),
(756,646,'https://yanxuan.nosdn.127.net/1131321e97086a8f36adf9e9fc9b8efe.jpg',5),
(757,646,'https://yanxuan.nosdn.127.net/789b8b698d5ed987956fa04842cccd99.jpg',5),
(758,647,'https://yanxuan.nosdn.127.net/bd36e5e737766d6038cbedf78d9b4104.jpg',5),
(759,647,'https://yanxuan.nosdn.127.net/d050def0183e7ff1a2d5719b01c3e770.jpg',5),
(760,648,'https://yanxuan.nosdn.127.net/61a8235883d29885426a1b46a26c198a.jpg',5),
(761,649,'https://yanxuan.nosdn.127.net/51764b9aad0eb2c1c9f63c04f426c372.jpg',5),
(762,650,'https://yanxuan.nosdn.127.net/1510fc4f3cb6ad70c7a6d5c800ef3582.jpg',5),
(763,650,'https://yanxuan.nosdn.127.net/b070ad49f34eb7230526be131e90e37f.jpg',5),
(764,650,'https://yanxuan.nosdn.127.net/846c2c947b1e16ea48fe45eaf10ba8d5.jpg',5),
(765,650,'https://yanxuan.nosdn.127.net/1b21db23cf0b66204f995b03f6599ac3.jpg',5),
(766,651,'https://yanxuan.nosdn.127.net/2db07c73bd33799d9faa0f81c2effa08.jpg',5),
(767,651,'https://yanxuan.nosdn.127.net/3cdfaf928cc82ed8bb4393b16503e1fc.jpg',5),
(768,651,'https://yanxuan.nosdn.127.net/90ffc9ac073531cf5c916e23dda1f801.jpg',5),
(769,652,'https://yanxuan.nosdn.127.net/2b09774e999d31164adabddc65136476.jpg',5),
(770,652,'https://yanxuan.nosdn.127.net/c810a49af0e195e8c58bbae9f988edb4.jpg',5),
(771,653,'https://yanxuan.nosdn.127.net/842ac31942b2629b04f799a77a0f3ba8.jpg',5),
(772,654,'https://yanxuan.nosdn.127.net/d26629d083fa34b55edc6468c86b59a2.jpg',5),
(773,654,'https://yanxuan.nosdn.127.net/0a448cad97e277cc274ad92b855e38ee.jpg',5),
(774,655,'https://yanxuan.nosdn.127.net/7f392750ace1fa1423d4bf233c3bde0a.jpg',5),
(775,656,'https://yanxuan.nosdn.127.net/be868b285026c4671db000ca77457972.jpg',5),
(776,657,'http://yanxuan.nosdn.127.net/f39999946017eef65aab38260e08de8d.jpg',5),
(777,658,'http://yanxuan.nosdn.127.net/82a3e6a6e3fcced4a597d4edb0ad62a2.jpg',5),
(778,658,'http://yanxuan.nosdn.127.net/30874df735f1db24229b318896c6747a.jpg',5),
(779,659,'http://yanxuan.nosdn.127.net/9afaacec380dc7d203b427e070b3aa54.jpg',5),
(780,659,'http://yanxuan.nosdn.127.net/da4b6a08cce4d8a10e21d91c2d6f3de0.jpg',5),
(781,660,'http://yanxuan.nosdn.127.net/18cf5680b41bb410bfc88cbc5e06d9f8.jpg',5),
(782,660,'http://yanxuan.nosdn.127.net/5a851b672f640a4d1cd4f96730fc7046.jpg',5),
(783,661,'https://yanxuan.nosdn.127.net/9f75d85a4bd001818fa4f2a8f2c29e3c.jpg',5),
(784,662,'https://yanxuan.nosdn.127.net/2dd23da488a4d07fb2b64cc3d2c4e806.jpg',5),
(785,663,'https://yanxuan.nosdn.127.net/7a0e7b7df09c42762e972d557dc534a4.jpg',5),
(786,664,'https://yanxuan.nosdn.127.net/35e37bc6928c93a631f2b3b1740ff372.jpg',5),
(787,664,'https://yanxuan.nosdn.127.net/6398bcdc7436ebe90109b240079f712c.jpg',5),
(788,665,'https://yanxuan.nosdn.127.net/e6e70b7625ac4bf13f5a1d04857d1db8.jpg',5),
(789,665,'https://yanxuan.nosdn.127.net/f204578c9da9828343296c2d4eb45946.jpg',5),
(790,666,'https://yanxuan.nosdn.127.net/30b40a6fade9533e1bc2afe208f050c8.jpg',5),
(791,667,'https://yanxuan.nosdn.127.net/6064876ae6e9ebfaf9c9ec0e5f35dab7.jpg',5),
(792,668,'https://yanxuan.nosdn.127.net/cca672a276c7835243a70d7fc1aac70d.jpg',5),
(793,669,'https://yanxuan.nosdn.127.net/cb1fcaa7bc69a55ae0c474248ce962f3.jpg',5),
(794,670,'https://yanxuan.nosdn.127.net/3caebeae559571fd6478426f7dd767bf.jpg',5),
(795,671,'https://yanxuan.nosdn.127.net/cce740576b97af0812f1df57eee9813f.jpg',5),
(796,671,'https://yanxuan.nosdn.127.net/40541e1761b33eeaa454580437942813.jpg',5),
(797,672,'https://yanxuan.nosdn.127.net/c70a8cd8eff8dbd8360cc55fce9f43c1.jpg',5),
(798,673,'https://yanxuan.nosdn.127.net/c5408297544de75b1abdea6fba6a2aa7.jpg',5),
(799,673,'https://yanxuan.nosdn.127.net/5419af51367403ced87cecaef018678f.jpg',5),
(800,674,'https://yanxuan.nosdn.127.net/235cb2276828b8620f5d9f812b74d277.jpg',5),
(801,674,'https://yanxuan.nosdn.127.net/7f6bbe6232b289dc9e075ae8c089f633.jpg',5),
(802,674,'https://yanxuan.nosdn.127.net/ef3726418b70741be8fcd221bb24ffeb.jpg',5),
(803,675,'https://yanxuan.nosdn.127.net/dc27105cf7ef60cf15f47550a9ad5a1e.jpg',5),
(804,676,'https://yanxuan.nosdn.127.net/52c7bae9d4476b2a7588003ef486358d.jpg',5),
(805,677,'https://yanxuan.nosdn.127.net/c3bab17fb65e36810867c2e62958084f.jpg',5),
(806,678,'https://yanxuan.nosdn.127.net/fbc3e351a1c14d0ef70d53909f749f86.jpg',5),
(807,679,'https://yanxuan.nosdn.127.net/c72264ef9edaf220b555c4073b60896d.jpg',5),
(808,680,'https://yanxuan.nosdn.127.net/9bc7321e6cab101eeb80f7cf81d6bf62.jpg',5),
(809,681,'https://yanxuan.nosdn.127.net/89179186775daf9833d49a0c77d07a6c.jpg',5),
(810,682,'https://yanxuan.nosdn.127.net/5fe2399928dd3c90a4c8841d5668dd78.jpg',5),
(811,683,'https://yanxuan.nosdn.127.net/6cae0aa81bc1a0244a116a4abf3839a5.jpg',5),
(812,684,'https://yanxuan.nosdn.127.net/a38a9bdd3eb2bef7706a478fb73ceb83.jpg',5),
(813,684,'https://yanxuan.nosdn.127.net/7784023ce0d3d8f661d977b59f4679eb.jpg',5),
(814,685,'https://yanxuan.nosdn.127.net/e0ca28bce4d92eedb239ea60ac99260c.jpg',5),
(815,685,'https://yanxuan.nosdn.127.net/2858a6c28f2c6f6402fad39069ae48a3.jpg',5),
(816,685,'https://yanxuan.nosdn.127.net/427431006fefeca537e61d37940147c3.jpg',5),
(817,686,'https://yanxuan.nosdn.127.net/7a7884f4863abe114ee2f4faad1b364f.jpg',5),
(818,686,'https://yanxuan.nosdn.127.net/fd739b388596b39039f2a695147ee5ac.jpg',5),
(819,687,'https://yanxuan.nosdn.127.net/e839eaa10c9c04e3b904c87182289cbe.jpg',5),
(820,688,'https://yanxuan.nosdn.127.net/075f10ce762b652b345c6682b537b2d7.jpg',5),
(821,689,'https://yanxuan.nosdn.127.net/b801aef265eb9509204afc0609053372.jpg',5),
(822,690,'https://yanxuan.nosdn.127.net/8e91915bb739af606136a9fd73625adb.jpg',5),
(823,691,'https://yanxuan.nosdn.127.net/3bac7631effc2f0c3749b5a78b2edf27.jpg',5),
(824,691,'https://yanxuan.nosdn.127.net/bd7cf1d02ab7c112879239a161b36d85.jpg',5),
(825,691,'https://yanxuan.nosdn.127.net/8e22d927ded0f0bd170830f6bd65cdac.jpg',5),
(826,691,'https://yanxuan.nosdn.127.net/e704b49044b98e3cbc9d46f399a5e06e.jpg',5),
(827,692,'https://yanxuan.nosdn.127.net/062e060a5bf6708a8765c1f7ee2cbe58.jpg',5),
(828,692,'https://yanxuan.nosdn.127.net/883d1f066fb7d502b775d042244ee248.jpg',5),
(829,692,'https://yanxuan.nosdn.127.net/5e9bb9c40eee150c3f5e6db90ca0eae5.jpg',5),
(830,692,'https://yanxuan.nosdn.127.net/d25f2738b9dfb101cabc6ffbf8e643a2.jpg',5),
(831,693,'https://yanxuan.nosdn.127.net/83bac5372bb94d285a9b7cb7244bacbd.jpg',5),
(832,693,'https://yanxuan.nosdn.127.net/42a8e3a6f1e7102ab4155c3fc89f7a1a.jpg',5),
(833,694,'https://yanxuan.nosdn.127.net/fed84f99370c5c3be71b3822ebd9b93a.jpg',5),
(834,695,'https://yanxuan.nosdn.127.net/06a0bc6b753239b72a5806b780948a49.jpg',5),
(835,696,'https://yanxuan.nosdn.127.net/ae535db21f5b4bcb21a357aef1bd20d8.jpg',5),
(836,697,'https://yanxuan.nosdn.127.net/f21092b191df521b7b166187c5a483d9.jpg',5),
(837,698,'https://yanxuan.nosdn.127.net/15fd0d9fcafa149985f2ea482ec40dc2.jpg',5),
(838,699,'https://yanxuan.nosdn.127.net/53cddbfd559e0b7a592b60ebdaff209c.jpg',5),
(839,700,'https://yanxuan.nosdn.127.net/05ab9dc44e3e145095435c8e053aaa0a.jpg',5),
(840,701,'https://yanxuan.nosdn.127.net/cd1e68034831bcaedbadf662e8c2acd6.jpg',5),
(841,702,'http://yanxuan.nosdn.127.net/9568f7b3475d7a661eece12a6adbb962.jpg',5),
(842,702,'http://yanxuan.nosdn.127.net/e0503f144ae9ecd630c7316c0edb1f81.jpg',5),
(843,702,'http://yanxuan.nosdn.127.net/788d59055a27ae9ea96aca198e524170.jpg',5),
(844,702,'http://yanxuan.nosdn.127.net/c3538d8bb6a0d8dbe3abb3676d2a515d.jpg',5),
(845,703,'http://yanxuan.nosdn.127.net/81cc392a3c8da91d00b655f56e215e49.jpg',5),
(846,704,'http://yanxuan.nosdn.127.net/4085c4e87b6d016cf857dd1582ba7a97.jpg',5),
(847,705,'http://yanxuan.nosdn.127.net/b5d40bf84c572224c6ad65b90899a79b.jpg',5),
(848,705,'http://yanxuan.nosdn.127.net/264911e117b8a5ea5ed829b10783e48e.jpg',5),
(849,705,'http://yanxuan.nosdn.127.net/0a3f0c41104fe3f681c4dd2aca9e949e.jpg',5),
(850,705,'http://yanxuan.nosdn.127.net/87611d9d17d3ab7a46f60ce52e6c9cd8.jpg',5),
(851,706,'https://yanxuan.nosdn.127.net/bcd07ba53cca44579466390a69855974.jpg',5),
(852,707,'http://yanxuan.nosdn.127.net/0677ec012ea010f8335c26d31512297d.jpg',5),
(853,708,'https://yanxuan.nosdn.127.net/966f53e8781775f05a252f6bc6b899ee.jpg',5),
(854,709,'http://yanxuan.nosdn.127.net/cd7a4c223497c3f438adaa4a9ee1fae5.jpg',5),
(855,710,'http://yanxuan.nosdn.127.net/5475a1f79f787cdded23be7b6f413e19.jpg',5),
(856,711,'http://yanxuan.nosdn.127.net/0da9ce2de0ee9efcce4fbae5777d9075.jpg',5),
(857,712,'http://yanxuan.nosdn.127.net/f686c636292c742f83cab009f7d177d4.jpg',5),
(858,712,'http://yanxuan.nosdn.127.net/9d6c10a99e5316ef24443644de76bc13.jpg',5),
(859,712,'http://yanxuan.nosdn.127.net/8063a9ad43c8b2f3a6175772ade87a64.jpg',5),
(860,712,'http://yanxuan.nosdn.127.net/0aa52522dac9fc1a42cb7cbf7a9db0f5.jpg',5),
(861,713,'http://yanxuan.nosdn.127.net/be62a63f1d1f34344eafc4a9439cda09.jpg',5),
(862,714,'http://yanxuan.nosdn.127.net/45b0c3696557aa9171b8b3b0e5b9db05.jpg',5),
(863,714,'http://yanxuan.nosdn.127.net/5bfcb3bd63a0f8d7203781a06b242cd0.jpg',5),
(864,715,'http://yanxuan.nosdn.127.net/0e8fdb5e2d9aff68348b7adf76cc82ea.jpg',5),
(865,715,'http://yanxuan.nosdn.127.net/f583550776bf9e65a834a2f5829717eb.jpg',5),
(866,715,'http://yanxuan.nosdn.127.net/b1f5c3b311732bcfc159efc6e2e61e2b.jpg',5),
(867,716,'http://yanxuan.nosdn.127.net/0a36510f3e91726808658629e2c87139.jpg',5),
(868,717,'http://yanxuan.nosdn.127.net/a29520b9a2ebe870e544a035e100a963.jpg',5),
(869,718,'http://yanxuan.nosdn.127.net/9e9a5eea34c3027b949b6a389a8dafc6.jpg',5),
(870,718,'http://yanxuan.nosdn.127.net/10f594c0d0110cc274b16ef69183dd5e.jpg',5),
(871,718,'http://yanxuan.nosdn.127.net/bef0054faf1abe16d1f1acd20909acb6.jpg',5),
(872,718,'http://yanxuan.nosdn.127.net/b2b40c71d4828263aada7c4fd9a7addc.jpg',5),
(873,719,'http://yanxuan.nosdn.127.net/08f9f3defacb5e292d1edfb5ed06bdf5.jpg',5),
(874,719,'http://yanxuan.nosdn.127.net/d4dbbd3c5e1e811b28b136ba23b41dfd.jpg',5),
(875,719,'http://yanxuan.nosdn.127.net/7cfb477cc26bf4e2cf5c551b73e785a7.jpg',5),
(876,720,'http://yanxuan.nosdn.127.net/5899097cd481fc58c9b89c80d522ddc1.jpg',5),
(877,720,'http://yanxuan.nosdn.127.net/8e22c2851bbab5d6fa3f158b784d9dc2.jpg',5),
(878,721,'https://yanxuan.nosdn.127.net/6170afd3f89cc8497f883e04fcb745db.jpg',5),
(879,725,'https://yanxuan.nosdn.127.net/3c5683a1ba3e71475ce10cf4dfa9538c.jpg',5),
(880,726,'https://yanxuan.nosdn.127.net/5e7768781da0f976c058b69fc49584ee.jpg',5),
(881,726,'https://yanxuan.nosdn.127.net/2f4f59f8d7201a6984d130ecae76af41.jpg',5),
(882,727,'https://yanxuan.nosdn.127.net/e71aabbf15fadc6dfff0e3fc614d99b9.jpg',5),
(883,728,'https://yanxuan.nosdn.127.net/59f03bcc980dce726bc85d94cf889d46.jpg',5),
(884,728,'https://yanxuan.nosdn.127.net/7250913912c7400bd9978a4381adeab5.jpg',5),
(885,729,'https://yanxuan.nosdn.127.net/fe32dc20c222126372d44b77a707e414.jpg',5),
(886,729,'https://yanxuan.nosdn.127.net/8cae3963075ac4e1628fdc9bbd9781b5.jpg',5),
(887,729,'https://yanxuan.nosdn.127.net/89f5f7f71ecf8d3905f9e01d8fab0be6.jpg',5),
(888,729,'https://yanxuan.nosdn.127.net/4d002b7e1b797918d3e57f39ddbb16a1.jpg',5),
(889,730,'https://yanxuan.nosdn.127.net/bfc631af83e81eea39ac731229932cde.jpg',5),
(890,731,'https://yanxuan.nosdn.127.net/914b65d13dca66952ce479510bffea38.jpg',5),
(891,732,'https://yanxuan.nosdn.127.net/f0cc6c191b402c3d672af33fec94bad2.jpg',5),
(892,733,'https://yanxuan.nosdn.127.net/e960ba694a64bd325d1da1e2e645501a.jpg',5),
(893,733,'https://yanxuan.nosdn.127.net/6d7888decc4dbff22cdbafcd4c2b832f.jpg',5),
(894,734,'https://yanxuan.nosdn.127.net/20cdbfbcabe83d1853145f9d2d5b61b3.jpg',5),
(895,735,'https://yanxuan.nosdn.127.net/c3641a83243a2f114a53bd2678c5da0f.jpg',5),
(896,736,'https://yanxuan.nosdn.127.net/2e7071c0c9b6767b7e7f296636c9e147.jpg',5),
(897,736,'https://yanxuan.nosdn.127.net/81846d5503897013aed2f0aac9b1b244.jpg',5),
(898,736,'https://yanxuan.nosdn.127.net/323134fa126b1a9cd98d7486ecb85cf3.jpg',5),
(899,736,'https://yanxuan.nosdn.127.net/e7e31b7df68f3a520e7159001853a196.jpg',5),
(900,737,'https://yanxuan.nosdn.127.net/fd53e167497bbbb97e3770718f6996fa.jpg',5),
(901,738,'https://yanxuan.nosdn.127.net/7a14329425e91d548476883acacb6aba.jpg',5),
(902,739,'https://yanxuan.nosdn.127.net/4bfb1a135cb9ba245547f44084c5e89e.jpg',5),
(903,740,'https://yanxuan.nosdn.127.net/656bd34fe25c3f628f4da98d8b64822d.jpg',5),
(904,741,'https://yanxuan.nosdn.127.net/f694324ff5889ba7f8a8f668187772dd.jpg',5),
(905,742,'https://yanxuan.nosdn.127.net/42d2187e546b7106147bfdb2c6eb8230.jpg',5),
(906,743,'https://yanxuan.nosdn.127.net/783e288df5837acb5c58d95c026c3da9.jpg',5),
(907,744,'https://yanxuan.nosdn.127.net/1d2b8fa0f32beb9cb118ee8509498d2f.jpg',5),
(908,745,'https://yanxuan.nosdn.127.net/a45ecc0098671df5228f0c57f260878c.jpg',5),
(909,745,'https://yanxuan.nosdn.127.net/40ec203b83a452c5f0c5aea9227007ae.jpg',5),
(910,745,'https://yanxuan.nosdn.127.net/339978754e04337b75301f9a38bf4698.jpg',5),
(911,746,'https://yanxuan.nosdn.127.net/4469ccfbe048afe16ed740f954ee1505.jpg',5),
(912,747,'https://yanxuan.nosdn.127.net/5bee13beb6aad11e1a5f52dc55f219a3.jpg',5),
(913,747,'https://yanxuan.nosdn.127.net/00374131d4a0e96276ffbb8146708eea.jpg',5),
(914,748,'https://yanxuan.nosdn.127.net/04157d6013ce501cc25f592b4057fa1c.jpg',5),
(915,748,'https://yanxuan.nosdn.127.net/ec5ce24e7816b2535d76a678d8ed882f.jpg',5),
(916,749,'https://yanxuan.nosdn.127.net/a6cabf73f34e08ad423cedb625386786.jpg',5),
(917,750,'https://yanxuan.nosdn.127.net/d1c8c41a9f469076d11680777b5ea2cb.jpg',5),
(918,751,'https://yanxuan.nosdn.127.net/cdecde7bf71220849f9c3cfe1720305d.jpg',5),
(919,751,'https://yanxuan.nosdn.127.net/d811ba10f8618b7d79cf9a52f2fdd4bd.jpg',5),
(920,752,'https://yanxuan.nosdn.127.net/c5d24cd977f7e6a22b2c49d95a016506.jpg',5),
(921,752,'https://yanxuan.nosdn.127.net/d49149d0bd4feed76a315112bb19c1e7.jpg',5),
(922,757,'https://yanxuan.nosdn.127.net/f96d2b67ebbdea6fa5e35e54bf0051a6.jpg',5),
(923,757,'https://yanxuan.nosdn.127.net/ad3b11cc8a6efa68e2a3bf0a1287db79.jpg',5),
(924,757,'https://yanxuan.nosdn.127.net/2a3a2e4c8a8fa61129f8f63cc3b18e67.jpg',5),
(925,758,'https://yanxuan.nosdn.127.net/0ed3434a8d9f34a9c9cb163271b2b351.jpg',5),
(926,758,'https://yanxuan.nosdn.127.net/d610e4e5e96e331b37fb2660e75d68b7.jpg',5),
(927,759,'https://yanxuan.nosdn.127.net/ccf3d20d22cc236f18645a31440d01eb.jpg',5),
(928,759,'https://yanxuan.nosdn.127.net/13d0b4c8f12f86a6f7b22b1f33e33996.jpg',5),
(929,759,'https://yanxuan.nosdn.127.net/563b6276a8301b54a282db2f4e81aea3.jpg',5),
(930,760,'https://yanxuan.nosdn.127.net/ffbdbc7663e2cb91aa0ad6b8cfb2a718.jpg',5),
(931,761,'https://yanxuan.nosdn.127.net/9fcf69c825c9e0d5710e0266b6d40866.jpg',5),
(932,762,'https://yanxuan.nosdn.127.net/c139c422e588bcb9e4ac33ee6bd184e3.jpg',5),
(933,762,'https://yanxuan.nosdn.127.net/319f26a8f035a0e256de94f798ccac70.jpg',5),
(934,763,'https://yanxuan.nosdn.127.net/7484a3371c630347d6b938f281461891.jpg',5),
(935,764,'https://yanxuan.nosdn.127.net/0d195542a6802d85e8e7d2a0e01e0765.jpg',5),
(936,764,'https://yanxuan.nosdn.127.net/70de86f834585eb526a511c30b2f3210.jpg',5),
(937,764,'https://yanxuan.nosdn.127.net/f035f61f705f7c003565b529fbf44cbf.jpg',5),
(938,765,'https://yanxuan.nosdn.127.net/f314a6af836f4729b6d056ae89a425a4.jpg',5),
(939,766,'https://yanxuan.nosdn.127.net/0ac042af63b99779a3ff4aa45c87f669.jpg',5),
(940,767,'https://yanxuan.nosdn.127.net/a5cd307aeb90e8a82fa0dea5b5eb21de.jpg',5),
(941,768,'https://yanxuan.nosdn.127.net/e22e5333296b2449a7efe2f8da18da74.jpg',5),
(942,768,'https://yanxuan.nosdn.127.net/9d2e95b6788b928e46e3342b8bed8618.jpg',5),
(943,769,'https://yanxuan.nosdn.127.net/882203bf19bae17f4677e6417afff6cf.jpg',5),
(944,770,'https://yanxuan.nosdn.127.net/0bce6fa312b6f1c3e929c448fdb5e6c5.jpg',5),
(945,771,'https://yanxuan.nosdn.127.net/3c560b411191814d224b2ff1969c67a3.jpg',5),
(946,772,'https://yanxuan.nosdn.127.net/eb94697660a4c5c9fd18ed864182de21.jpg',5),
(947,773,'https://yanxuan.nosdn.127.net/06ee54a135f605d55165a7810ed98ecd.jpg',5),
(948,773,'https://yanxuan.nosdn.127.net/9439bc7eff6e5b0a2baf63e73693dc56.jpg',5),
(949,773,'https://yanxuan.nosdn.127.net/8401ea124553d6d7a204796b689573b8.jpg',5),
(950,774,'https://yanxuan.nosdn.127.net/6c26ef6c0367e93f4903545eab9b4633.jpg',5),
(951,775,'https://yanxuan.nosdn.127.net/1ddb72f23ddad3e07ebcda5ef94085b5.jpg',5),
(952,776,'https://yanxuan.nosdn.127.net/13339d32178b0c752137cbec4b25595a.jpg',5),
(953,777,'https://yanxuan.nosdn.127.net/5bac771eeac478c87ca0188512fa2d2b.jpg',5),
(954,778,'https://yanxuan.nosdn.127.net/8eacf960a27bc0c30edca041d7d4426d.jpg',5),
(955,779,'https://yanxuan.nosdn.127.net/8f3f29af175491ca569c3ecf1ffc3099.jpg',5),
(956,780,'https://yanxuan.nosdn.127.net/f107eac213d14fe2beaed9cd76742719.jpg',5),
(957,781,'https://yanxuan.nosdn.127.net/b4322ca1ad69c3fc7342943e0fdbf96c.jpg',5),
(958,782,'https://yanxuan.nosdn.127.net/34fae145174f359ea4f21776666eded6.jpg',5),
(959,783,'https://yanxuan.nosdn.127.net/e56df06bd57fb972cd02628adf6c3588.jpg',5),
(960,783,'https://yanxuan.nosdn.127.net/3d19058f5f0a91ef713f60f9873782a4.jpg',5),
(961,784,'https://yanxuan.nosdn.127.net/82a6dfc95ff74175592dec88fd2d3eb7.jpg',5),
(962,784,'https://yanxuan.nosdn.127.net/232f54fdb4d0c7f7d941c6a2e1b5a7d7.jpg',5),
(963,784,'https://yanxuan.nosdn.127.net/2c16bbd157bf60112c81767e98fbf6b2.jpg',5),
(964,784,'https://yanxuan.nosdn.127.net/fa90fe5835c499154d63fa3a85749d5e.jpg',5),
(965,785,'http://yanxuan.nosdn.127.net/b9af549bff801596eea08b7cadfc33ca.png',5),
(966,786,'http://yanxuan.nosdn.127.net/b501fd63bcbebae706f53512adf7e4e3.jpg',5),
(967,787,'http://yanxuan.nosdn.127.net/74c24d248c54bd59c3a2889e4eeb25a9.jpg',5),
(968,788,'http://yanxuan.nosdn.127.net/99971f16173b839091795ff084895811.jpg',5),
(969,789,'http://yanxuan.nosdn.127.net/7198431f3033432f02cf051b0b16922b.jpg',5),
(970,790,'http://yanxuan.nosdn.127.net/f6374cebaf4a8c3569b7919b07ebf3ee.jpg',5),
(971,811,'https://yanxuan.nosdn.127.net/2f79497bf891df4b1e80b38c3ffcece2.jpg',5),
(972,811,'https://yanxuan.nosdn.127.net/ff2ae826208f45fd2b2a72e2b62f3f9e.jpg',5),
(973,811,'https://yanxuan.nosdn.127.net/ef9a10ab35dc14a0ace6972f6de8a79c.jpg',5),
(974,811,'https://yanxuan.nosdn.127.net/325f815a4d141d47b129b7783fc5566a.jpg',5),
(975,812,'https://yanxuan.nosdn.127.net/3053c03b415a6c11d324b199027bc27d.jpg',5),
(976,813,'https://yanxuan.nosdn.127.net/c6ef20cd6a48735c666b33b1b9f4c04f.jpg',5),
(977,814,'https://yanxuan.nosdn.127.net/318b45d885ca1ec7164f3772b353a1f3.jpg',5),
(978,814,'https://yanxuan.nosdn.127.net/e3a917edd481b0cbd43d595ed1cf3359.jpg',5),
(979,815,'https://yanxuan.nosdn.127.net/7b8a275bb7b1d0bd3e46fa31792d3eed.jpg',5),
(980,816,'https://yanxuan.nosdn.127.net/b969bd9868cac8b8f7a8f2351fb905a4.jpg',5),
(981,817,'https://yanxuan.nosdn.127.net/c040519ed5837697873bc3b5865ff9ec.jpg',5),
(982,818,'https://yanxuan.nosdn.127.net/612f864bd517838d2557087da58ef449.jpg',5),
(983,819,'https://yanxuan.nosdn.127.net/c460a8ec1823a70b6c9961ce4f845ee2.jpg',5),
(984,820,'https://yanxuan.nosdn.127.net/fafae471e228da34674aa87c2ade2f72.jpg',5),
(985,820,'https://yanxuan.nosdn.127.net/08f900afdd6ad904814e43b663f9436f.jpg',5),
(986,821,'https://yanxuan.nosdn.127.net/2287477c1dfcd1ec4e6ffe41fc9af67e.jpg',5),
(987,822,'https://yanxuan.nosdn.127.net/df783bf33034094085d9e3339fecee72.jpg',5),
(988,823,'http://yanxuan.nosdn.127.net/36f0f0daac56f48ddf68db0de836f9f5.jpg',5),
(989,824,'https://yanxuan.nosdn.127.net/5d64118e8e9cd7a5e21e202b74519d54.jpg',5),
(990,825,'https://yanxuan.nosdn.127.net/6c43f5a8b46bafb538ab3edbe39973e0.jpg',5),
(991,826,'https://yanxuan.nosdn.127.net/c048754ce8df7c349e3ecd9da447541a.jpg',5),
(992,827,'http://yanxuan.nosdn.127.net/a046988f58b30ca8c85418c773dd36f2.jpg',5),
(993,828,'http://yanxuan.nosdn.127.net/87ae5aa545acd4aad83196321d998466.jpg',5),
(994,829,'http://yanxuan.nosdn.127.net/c861524983d483a940e7f9f0d5533694.jpg',5),
(995,830,'http://yanxuan.nosdn.127.net/40aa13edb134d75adccd955d61191fac.jpg',5),
(996,830,'http://yanxuan.nosdn.127.net/a19c2a0e56f1fda17155f024dd6edec0.jpg',5),
(997,831,'http://yanxuan.nosdn.127.net/498b29a4fde8826560353a01a85d87f1.jpg',5),
(998,831,'http://yanxuan.nosdn.127.net/9a01b320bef853904c64cadca194c9fa.jpg',5),
(999,832,'http://yanxuan.nosdn.127.net/bcd59ba1375fc55b34e0c44499a87ea2.jpg',5),
(1000,832,'http://yanxuan.nosdn.127.net/34e7e2a8fe9587b52a8aff3a8de1a9c0.jpg',5),
(1001,833,'http://yanxuan.nosdn.127.net/f272b8cae554ad4dccafe07858338a54.jpg',5),
(1002,833,'http://yanxuan.nosdn.127.net/62e274fe5ce7ec08cb1c452869b12ad0.jpg',5),
(1003,834,'http://yanxuan.nosdn.127.net/f40ca520b3783c406c3f124175d1339b.jpg',5),
(1004,834,'http://yanxuan.nosdn.127.net/de71f77e64c5249724feb3b3c6df4b5f.jpg',5),
(1005,835,'http://yanxuan.nosdn.127.net/cdc89f079d96bd5edc92db11c03bc4d5.jpg',5),
(1006,836,'http://yanxuan.nosdn.127.net/24005064eb747cf88c727926e296a4b1.jpg',5),
(1007,837,'http://yanxuan.nosdn.127.net/aa36bd32c6aafcd2c7d07bb975664521.jpg',5),
(1008,838,'http://yanxuan.nosdn.127.net/7b5fd267b222ebaa942c20f1f4433d30.jpg',5),
(1009,838,'http://yanxuan.nosdn.127.net/855c6e8e34a66fcffdba04155bc662c2.jpg',5),
(1010,839,'http://yanxuan.nosdn.127.net/c0755383bcb4f621bf90cfce50eb512f.jpg',5),
(1011,840,'http://yanxuan.nosdn.127.net/56d754e102babbf3089811fc8824fd95.jpg',5),
(1012,841,'https://yanxuan.nosdn.127.net/7bb3b32966993aacd903b2f24466cae5.jpg',5),
(1013,842,'https://yanxuan.nosdn.127.net/275eda2f67b16f91180197746be05ffb.jpg',5),
(1014,842,'https://yanxuan.nosdn.127.net/3e9e44ddd976ca68d2dfce46b47cff17.jpg',5),
(1015,843,'https://yanxuan.nosdn.127.net/e35f1e24822d0c7458a40acdcd45ca7f.jpg',5),
(1016,844,'https://yanxuan.nosdn.127.net/07e03eee27c2563b3e90fcee8d672990.jpg',5),
(1017,845,'https://yanxuan.nosdn.127.net/994a35a72e099f986158cf531a3a618e.jpg',5),
(1018,846,'https://yanxuan.nosdn.127.net/0c2490962517aa6ea8c5e6432b92f7f7.jpg',5),
(1019,847,'http://yanxuan.nosdn.127.net/eeb5f9d76d341e1671305d813d9d39c6.jpg',5),
(1020,848,'https://yanxuan.nosdn.127.net/a53d6f7b860dcb6952ef30a494bc1c4e.jpg',5),
(1021,849,'http://yanxuan.nosdn.127.net/83c871636070b26e4e61b476da9c31fb.jpg',5),
(1022,850,'http://yanxuan.nosdn.127.net/c186af83f0cb31bc9aabc06389e57e24.jpg',5),
(1023,851,'http://yanxuan.nosdn.127.net/55dad2cbefa4ed317015664bc57ee145.jpg',5),
(1024,852,'http://yanxuan.nosdn.127.net/85e4b5add3a613eeb6311177dbcab51c.jpg',5),
(1025,853,'http://yanxuan.nosdn.127.net/d4bc6beaeb7514ad2d42dcc5b3134484.jpg',5),
(1026,853,'http://yanxuan.nosdn.127.net/a0a6d1cc8be2c17c48bc855bb812b674.jpg',5),
(1027,853,'http://yanxuan.nosdn.127.net/e51ca1b85413f5539a60c0535d2f6d42.jpg',5),
(1028,854,'http://yanxuan.nosdn.127.net/2c1643dfe3bdbe2a446ec57d4f4aa0a3.jpg',5),
(1029,855,'http://yanxuan.nosdn.127.net/9b0462e86060217e56bcfdc9ffc446ef.jpg',5),
(1030,856,'http://yanxuan.nosdn.127.net/82ce49069472c58af5efe1ea8bf8b9db.jpg',5),
(1031,857,'http://yanxuan.nosdn.127.net/1c21a8a68e8d23997fcc45eaf9b88905.jpg',5),
(1032,858,'http://yanxuan.nosdn.127.net/1403f2c969126cbe037116a6a81b4015.jpg',5),
(1033,871,'https://yanxuan.nosdn.127.net/8c2d79eafce30b33981623b5602764db.jpg',5),
(1034,872,'https://yanxuan.nosdn.127.net/0a4cf3b05d448fe3eab0b27780f8c187.jpg',5),
(1035,872,'https://yanxuan.nosdn.127.net/64758242eba35c7a877ee002b8c209a6.jpg',5),
(1036,872,'https://yanxuan.nosdn.127.net/ead4aee12a369b84288051c3c6000483.jpg',5),
(1037,873,'https://yanxuan.nosdn.127.net/aa79c0bd1fd09987e0c39dac814c1c64.jpg',5),
(1038,874,'https://yanxuan.nosdn.127.net/78ac06394b23de5e513919e41eccb3e9.jpg',5),
(1039,874,'https://yanxuan.nosdn.127.net/b76613c7c826ce002bd1c8fd14bd0a2e.jpg',5),
(1040,875,'https://yanxuan.nosdn.127.net/3f87b2886be7b41ff2bbcf0ccddb947d.jpg',5),
(1041,876,'https://yanxuan.nosdn.127.net/15fa1943125e2e137c9064ac90dc1866.jpg',5),
(1042,877,'https://yanxuan.nosdn.127.net/b32f86638f2fd142256068f2ac3c1961.jpg',5),
(1043,878,'https://yanxuan.nosdn.127.net/170ffe4237c3e60cf6f1ad67bc6a3dc5.jpg',5),
(1044,879,'https://yanxuan.nosdn.127.net/34e5d442c699c3b7f7e8b47a75dd352c.jpg',5),
(1045,880,'https://yanxuan.nosdn.127.net/af59bf890bcbe03f1319702ca2b422cd.jpg',5),
(1046,881,'https://yanxuan.nosdn.127.net/a92cfa969a468ff2145e31c0683693f4.jpg',5),
(1047,882,'https://yanxuan.nosdn.127.net/21eeacf0f39aaf8ae7716a457d4b7f1a.jpg',5),
(1048,882,'https://yanxuan.nosdn.127.net/d7202fa92aaa88f60c7927803633bfe7.jpg',5),
(1049,883,'http://yanxuan.nosdn.127.net/4cfb39eb0b927e00621011c54a6b951b.png',5),
(1050,884,'https://yanxuan.nosdn.127.net/457043886189b21710a4922cf3cc4841.jpg',5),
(1051,885,'https://yanxuan.nosdn.127.net/e35e6096f55159e96a179feb3512bb93.jpg',5),
(1052,886,'https://yanxuan.nosdn.127.net/11f78c67c1a3959310ded640591a8172.jpg',5),
(1053,887,'https://yanxuan.nosdn.127.net/4f97a5727a3712d580edfdd95592603d.jpg',5),
(1054,888,'https://yanxuan.nosdn.127.net/d638aa55a696467effbf481b53c58fac.jpg',5),
(1055,888,'https://yanxuan.nosdn.127.net/15bd39cc0aeb8d25401e3af19a1d3720.jpg',5),
(1056,888,'https://yanxuan.nosdn.127.net/b1301a3efdb5fa1650c4169b0e9a606a.jpg',5),
(1057,889,'https://yanxuan.nosdn.127.net/90a5c9028839b67b067613928aadceb7.jpg',5),
(1058,890,'http://yanxuan.nosdn.127.net/edf3d1345b3c091015e64651222e0d47.jpg',5),
(1059,891,'http://yanxuan.nosdn.127.net/7b31bf2e3df8a241ea8a7da372b9402c.jpg',5),
(1060,891,'http://yanxuan.nosdn.127.net/a8a66f882b60538ba55a23b5aa09ece4.jpg',5),
(1061,892,'http://yanxuan.nosdn.127.net/822074577bb1bb822c9a021c502dcb8b.jpg',5),
(1062,893,'http://yanxuan.nosdn.127.net/1ab41f9e615b88b0784225cbdfd9c0d6.jpg',5),
(1063,894,'http://yanxuan.nosdn.127.net/8df06db908d81bff38b8689ec68ab714.jpg',5),
(1064,895,'http://yanxuan.nosdn.127.net/42008c255804d6e0f06f31744a1e22ee.jpg',5),
(1065,896,'http://yanxuan.nosdn.127.net/1cc43a6771511e760b983e0a52b30dec.jpg',5),
(1066,897,'http://yanxuan.nosdn.127.net/7df109e1a62f0fe6b8afbef55e24b3fb.jpg',5),
(1067,898,'http://yanxuan.nosdn.127.net/1cc84f5e4016d2b9b83ca1d77c7d860c.jpg',5),
(1068,899,'http://yanxuan.nosdn.127.net/dbe3d7a2091ab13b715c4825f50d5a05.jpg',5),
(1069,899,'http://yanxuan.nosdn.127.net/cbee7f9389c280a11dbf3ae5bb8ad0e7.jpg',5),
(1070,900,'http://yanxuan.nosdn.127.net/e6be3da1ff67bf4111c569fa8c47ac43.jpg',5),
(1071,901,'https://yanxuan.nosdn.127.net/5fe1121396458cfe0dc1b25ec86f7ff9.jpg',5),
(1072,901,'https://yanxuan.nosdn.127.net/d5a55abd6ced5c811d775b04929aaabc.jpg',5),
(1073,901,'https://yanxuan.nosdn.127.net/f1764d820ba6ddaf51d297e3cf3826cd.jpg',5),
(1074,902,'https://yanxuan.nosdn.127.net/f753f91430dfb56f574c737d4b2fde46.jpg',5),
(1075,903,'https://yanxuan.nosdn.127.net/556cb7799b8218db00c3a65241e0f92b.jpg',5),
(1076,904,'https://yanxuan.nosdn.127.net/f3376d3767e3cd7a899773d680189d37.jpg',5),
(1077,905,'https://yanxuan.nosdn.127.net/9f835306fae8b851a834cc904630a5b3.jpg',5),
(1078,905,'https://yanxuan.nosdn.127.net/5ef2a535450ae53897ac7700912c3b42.jpg',5),
(1079,905,'https://yanxuan.nosdn.127.net/c2fedbb59dc123a23c9521076848d0dc.jpg',5),
(1080,906,'https://yanxuan.nosdn.127.net/f45ad4b14d9da7e3093e5c3b4d036753.jpg',5),
(1081,906,'https://yanxuan.nosdn.127.net/a3ee0882bc45fb2caa264a90975f856b.jpg',5),
(1082,906,'https://yanxuan.nosdn.127.net/1ea4c31b4ee206c04a49da856f0fe677.jpg',5),
(1083,906,'https://yanxuan.nosdn.127.net/93d17fbea0a17301bf9c6433199dcb0b.jpg',5),
(1084,907,'https://yanxuan.nosdn.127.net/05e880ce4068ca33e53e191185fb811f.jpg',5),
(1085,908,'https://yanxuan.nosdn.127.net/cee78b5874dc15f3f4711e3b220cfafd.jpg',5),
(1086,909,'https://yanxuan.nosdn.127.net/67370cdb21d9ff8c1bb4ed2dae87a5c3.jpg',5),
(1087,910,'https://yanxuan.nosdn.127.net/8e474c5d740ef49115c7f0572ac8ea31.jpg',5),
(1088,910,'https://yanxuan.nosdn.127.net/75ba158e6f8c5f62413707082d9cf8ae.jpg',5),
(1089,911,'https://yanxuan.nosdn.127.net/cdb53b25adba61ea490ce9ec84b159b3.jpg',5),
(1090,913,'https://yanxuan.nosdn.127.net/43fdb1502679c50f6aa09acfb24cdfe3.jpg',5),
(1091,914,'https://yanxuan.nosdn.127.net/db13b4127fd18a55c6e401be96ba877a.jpg',5),
(1092,914,'https://yanxuan.nosdn.127.net/ae1c1dd61cdbfc8ffe68bba8479c1d1e.jpg',5),
(1093,914,'https://yanxuan.nosdn.127.net/d09e0a2ad05ea9c5600f92fd612726b8.jpg',5),
(1094,914,'https://yanxuan.nosdn.127.net/e86109c6c174a3901dffaa8787f6cb72.jpg',5),
(1095,915,'https://yanxuan.nosdn.127.net/0c540031d15549707903f616c150b9fc.jpg',5),
(1096,915,'https://yanxuan.nosdn.127.net/029881404b69292f7c502379db227d9a.jpg',5),
(1097,916,'http://yanxuan.nosdn.127.net/0efd8cd4dd510844333671fc60f19734.jpg',5),
(1098,917,'https://yanxuan.nosdn.127.net/2b93c0d0d194e3fb09fa5d43b949a3d9.jpg',5),
(1099,918,'http://yanxuan.nosdn.127.net/a87adeaa315060be6c5c6d7bb3a6b203.jpg',5),
(1100,918,'http://yanxuan.nosdn.127.net/6d8a8f800ccd811ff770a2c6c75545eb.jpg',5),
(1101,918,'http://yanxuan.nosdn.127.net/a2746d61dae1f250ffd79fc73ec221ce.jpg',5),
(1102,919,'http://yanxuan.nosdn.127.net/d18f3783f352afee5ff78af88940df22.jpg',5),
(1103,919,'http://yanxuan.nosdn.127.net/814d347fdca2087cb8b12abd334c1c23.jpg',5),
(1104,920,'http://yanxuan.nosdn.127.net/b8c4879ffc89318aea3fbf8f20a126ef.jpg',5),
(1105,921,'http://yanxuan.nosdn.127.net/5091f0f6ae132a2f3cece0619ee9ea0d.jpg',5),
(1106,922,'http://yanxuan.nosdn.127.net/525c0db54abb9f496b8dca944963a18e.jpg',5),
(1107,922,'http://yanxuan.nosdn.127.net/b3ef54154c756043c23ae027251a5b5d.jpg',5),
(1108,923,'http://yanxuan.nosdn.127.net/9f63b36112e51106414b8aa14b1e1073.jpg',5),
(1109,924,'http://yanxuan.nosdn.127.net/c78e6a9e8afdf38f20cd54831327236d.jpg',5),
(1110,925,'http://yanxuan.nosdn.127.net/b294a2c44e67b4e616b484684d0a472d.jpg',5),
(1111,926,'http://yanxuan.nosdn.127.net/6f85c85e3926e1a1e20dd5a4f5b1296a.jpg',5),
(1112,927,'http://yanxuan.nosdn.127.net/0c40f1b1de316fe3bf34462d222d4fc6.jpg',5),
(1113,928,'http://yanxuan.nosdn.127.net/a6e7b13576b56af9d0868c94d4130d69.jpg',5),
(1114,929,'http://yanxuan.nosdn.127.net/a1bc975c41d14de42a5e751fb1f9a69f.jpg',5),
(1115,929,'http://yanxuan.nosdn.127.net/5b95705cb60e8a884cf0de925938159d.jpg',5),
(1116,930,'http://yanxuan.nosdn.127.net/e9955c289e13c8b54d2c10cc59a97a5c.jpg',5),
(1117,948,'https://yanxuan.nosdn.127.net/c4110c2c5355951cd1072ef50cb3d747.jpg',5),
(1118,948,'https://yanxuan.nosdn.127.net/fe5793902da1d1c699b74b89246a2b36.jpg',5),
(1119,950,'https://yanxuan.nosdn.127.net/4ac4120ce2686db84fd0147a53497f5a.jpg',5),
(1120,950,'https://yanxuan.nosdn.127.net/fb39c5ecdb034a4a9444fa84c6916fe8.jpg',5);

/*Table structure for table `nideshop_coupon` */

DROP TABLE IF EXISTS `nideshop_coupon`;

CREATE TABLE `nideshop_coupon` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_coupon` */

insert  into `nideshop_coupon`(`id`,`name`,`type_money`,`send_type`,`min_amount`,`max_amount`,`send_start_date`,`send_end_date`,`use_start_date`,`use_end_date`,`min_goods_amount`) values 
(1,'用户红包',2.00,0,0.00,0.00,1242057600,1244736000,1242057600,1250006400,500.00),
(2,'商品红包',10.00,1,0.00,0.00,1241971200,1250352000,1242057600,1250006400,500.00),
(3,'订单红包',20.00,2,1500.00,0.00,1242057600,1309363200,1242057600,1257955200,800.00),
(4,'线下红包',5.00,3,0.00,0.00,1242057600,1244736000,1242057600,1255449600,360.00);

/*Table structure for table `nideshop_feedback` */

DROP TABLE IF EXISTS `nideshop_feedback`;

CREATE TABLE `nideshop_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_feedback` */

insert  into `nideshop_feedback`(`msg_id`,`parent_id`,`user_id`,`user_name`,`user_email`,`msg_title`,`msg_type`,`msg_status`,`msg_content`,`msg_time`,`message_img`,`order_id`,`msg_area`) values 
(1,0,1,'nideshop','nideshop@nideshop.com','三星SGH-F258什么时候到',4,0,'三星SGH-F258什么时候有货',1242107197,'',0,0);

/*Table structure for table `nideshop_footprint` */

DROP TABLE IF EXISTS `nideshop_footprint`;

CREATE TABLE `nideshop_footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_footprint` */

insert  into `nideshop_footprint`(`id`,`user_id`,`goods_id`,`add_time`) values 
(10,1,1152161,1497674756),
(20,1,1152161,1497685361),
(22,1,1152161,1497685374),
(24,1,1152161,1497685394),
(25,1,1156006,1497685418),
(26,1,1113019,1497685452),
(27,1,1156006,1497685528),
(28,1,1113019,1497685650),
(29,1,1114011,1497685671),
(30,1,1156006,1497685798),
(31,1,1181000,1497685812),
(32,1,1152161,1497685817),
(33,1,1057036,1497685824),
(34,1,1023003,1497685828),
(35,1,1085019,1497685833),
(36,1,1181000,1497685840),
(37,1,1085019,1497685952),
(38,1,1181000,1500086354),
(39,1,1130037,1500428563),
(40,1,1030003,1500428699),
(41,1,1030003,1500428701),
(42,1,1147046,1500561687),
(43,1,1143016,1500727170),
(44,1,1116011,1500727970),
(45,1,1116011,1500811201),
(46,1,1006013,1500811213),
(47,11,1116011,1500822628),
(48,11,1127047,1500822635),
(49,11,1006013,1500822646),
(50,11,1009012,1500822666),
(51,11,1011004,1500822814),
(52,11,1011004,1500822831),
(53,11,1115028,1500823219),
(54,11,1015007,1500823260),
(55,11,1006013,1500910756),
(56,11,1009012,1500910795),
(57,11,1006013,1500911162),
(58,11,1009012,1500987803),
(59,11,1009012,1500987827),
(60,11,1009012,1500987975),
(61,11,1143020,1500993469),
(62,11,1020000,1500994081),
(63,11,1020000,1500997775),
(64,11,1006013,1500998521),
(65,11,1006013,1500998612),
(66,11,1092024,1501082801),
(67,11,1006013,1501341315),
(68,1,1006013,1501380499),
(69,1,1006013,1501381026),
(70,1,1006013,1501381307),
(71,1,1116011,1501404539),
(72,1,1006013,1501404548),
(73,1,1006013,1501404833),
(74,1,1116011,1501407318),
(75,1,1116011,1501408596),
(76,1,1015007,1501602678),
(77,1,1011004,1501602769),
(78,1,1116011,1505404383),
(79,1,1015007,1505404405),
(80,1,1030002,1505404415),
(81,1,1038004,1505404424),
(82,1,1045000,1505404433),
(83,1,1085019,1505404449),
(84,1,1092026,1505404804),
(85,1,1116005,1505404812),
(86,1,1039056,1505404825),
(87,1,1152031,1505404834),
(88,1,1130056,1505404865),
(89,13,1116011,1518156484),
(90,13,1006013,1518156493),
(91,13,1006013,1518157620),
(92,14,1006013,1520849401),
(93,14,1006013,1520849430),
(94,14,1006013,1520849593),
(95,14,1006013,1520849754),
(96,15,1006013,1520849914),
(97,15,1006013,1520849967),
(98,15,1006013,1520850163),
(99,16,1181000,1520850174),
(100,18,1092024,1520854617),
(101,18,1113011,1520854778),
(102,20,1135058,1520868116),
(103,20,1030001,1520868185),
(104,20,1009024,1520868194),
(105,20,1030003,1520868202),
(106,20,1015007,1520868209),
(107,20,1039051,1520868240),
(108,20,1020000,1520868281),
(109,20,1039051,1520868289),
(110,20,1035006,1520868296),
(111,14,1006013,1520903248),
(112,14,1006013,1520903256),
(113,14,1009012,1520903270),
(114,14,1006013,1520903329),
(115,14,1006013,1520904316),
(116,14,1006013,1520904649),
(117,14,1006013,1520904672),
(118,14,1006013,1520904694),
(119,14,1006013,1520904813),
(120,14,1006013,1520906685),
(121,14,1006013,1520907275),
(122,14,1009012,1520907281),
(123,14,1147048,1520908419),
(124,14,1006013,1520908535),
(125,14,1006013,1520921501),
(126,14,1006013,1520921736),
(127,14,1006013,1520922405),
(128,14,1006013,1520922776),
(129,14,1006013,1520923625),
(130,14,1006013,1520923804),
(131,14,1006013,1520925029),
(132,14,1006013,1520926083),
(133,14,1006013,1520926482),
(134,17,1006013,1520926551),
(135,14,1009012,1520926853),
(136,14,1006013,1520926854),
(137,14,1009012,1520926862),
(138,14,1006013,1520927562),
(139,14,1011004,1520927571),
(140,14,1006013,1520929039),
(141,14,1006013,1520929048),
(142,14,1006013,1520929057),
(143,14,1011004,1520929077),
(144,14,1006013,1520929107),
(145,14,1006013,1520929164),
(146,14,1006013,1520929735),
(147,14,1006013,1520930291),
(148,14,1011004,1520930298),
(149,14,1006013,1520930617),
(150,14,1009012,1520930622),
(151,14,1006013,1520930787),
(152,14,1006013,1520930793),
(153,14,1009012,1520930801),
(154,14,1011004,1520930805),
(155,14,1006013,1520930826),
(156,14,1006013,1520930995),
(157,14,1009012,1520931059),
(158,14,1009012,1520931072),
(159,14,1006013,1520931090),
(160,14,1006013,1520931189),
(161,21,1006013,1520931224),
(162,21,1009012,1520931250),
(163,21,1006013,1520931356),
(164,21,1006013,1520931403),
(165,21,1006013,1520931431),
(166,21,1009012,1520931442),
(167,21,1006013,1520931463),
(168,14,1006013,1520931484),
(169,14,1006013,1520931494),
(170,14,1009012,1520931518),
(171,14,1006013,1520931856),
(172,14,1006013,1520931916),
(173,14,1006013,1520931950),
(174,14,1006013,1520931962),
(175,14,1006013,1520931975),
(176,14,1006013,1520932004),
(177,14,1009012,1520932051),
(178,14,1006013,1520932061),
(179,14,1006013,1520932069),
(180,14,1006013,1520932329),
(181,15,1006013,1520934412),
(182,24,1006013,1520934475),
(183,24,1009012,1520934491),
(184,25,1006013,1520934532),
(185,26,1006013,1520934551),
(186,27,1181000,1520934574),
(187,27,1152101,1520934596),
(188,23,1006013,1520934635),
(189,28,1006013,1520934660),
(190,28,1006013,1520936021),
(191,28,1009012,1520936370),
(192,28,1006013,1520936623),
(193,28,1006013,1520937633),
(194,28,1147048,1520937671),
(195,26,1006013,1520947133),
(196,27,1110007,1520991259),
(197,29,1006013,1520996759),
(198,29,1006013,1520997148),
(199,29,1006013,1520997156),
(200,29,1006013,1520997218),
(201,29,1006013,1520997250),
(202,29,100100003,1520997549),
(203,29,100100004,1520997563),
(204,29,100100002,1520997578),
(205,29,100100004,1520997584),
(206,29,100100001,1520997629),
(207,29,100100001,1520997775),
(208,29,100100001,1520997857),
(209,29,100100001,1520997883),
(210,29,100100001,1520997899),
(211,29,100100001,1520998039),
(212,29,100100001,1520998064),
(213,29,100100001,1520998288),
(214,29,1001000002,1520998801),
(215,29,1001000002,1520998924),
(216,29,1001000003,1520998981),
(217,29,1001000002,1520999047),
(218,29,1001000002,1520999348),
(219,29,1001000004,1520999362),
(220,29,1001000002,1520999378),
(221,29,1001000004,1520999396),
(222,29,1001000002,1521010929),
(223,29,1001000002,1521012465),
(224,29,1001000001,1521013382),
(225,29,1001000001,1521013500),
(226,29,1001000001,1521013532),
(227,29,1001000001,1521013671),
(228,29,1001000001,1521014020),
(229,29,1001000001,1521014027),
(230,29,1001000001,1521014083),
(231,29,1001000001,1521014273),
(232,29,1001000001,1521014304),
(233,29,1001000001,1521014323),
(234,29,1001000001,1521014417),
(235,29,1001000001,1521014546),
(236,29,1001000001,1521014561),
(237,29,1001000001,1521014571),
(238,29,1001000001,1521014941),
(239,29,1001000001,1521014967),
(240,29,1001000001,1521015035),
(241,25,1001000001,1521015091),
(242,25,1001000001,1521015256),
(243,29,1001000001,1521015486),
(244,25,1001000001,1521015889),
(245,25,1001000001,1521015904),
(246,25,1001000001,1521015934),
(247,25,1001000001,1521015955),
(248,25,1001000001,1521015980),
(249,25,1001000001,1521016007),
(250,25,1001000001,1521016018),
(251,31,1001000001,1521016226),
(252,31,1001000001,1521016245),
(253,32,1001000001,1521016286),
(254,32,1001000001,1521016338),
(255,32,1001000001,1521016374),
(256,31,1001000001,1521016393),
(257,31,1001000001,1521016497),
(258,32,1001000001,1521016747),
(259,31,1001000001,1521017522),
(260,32,1001000001,1521017526),
(261,32,1001000001,1521017588),
(262,32,1001000001,1521018289),
(263,31,1001000001,1521018315),
(264,32,1001000001,1521018343),
(265,31,1001000001,1521018495),
(266,32,1001000001,1521018620),
(267,31,1001000001,1521019004),
(268,32,1001000001,1521019025),
(269,32,1001000001,1521019048),
(270,31,1001000001,1521019049),
(271,32,1001000001,1521019065),
(272,31,1001000001,1521019067),
(273,31,1001000001,1521019100),
(274,31,1001000001,1521019141),
(275,31,1001000001,1521019152),
(276,31,1001000001,1521019226),
(277,32,1001000001,1521019274),
(278,32,1001000001,1521019350),
(279,32,1001000001,1521019444),
(280,31,1001000001,1521019583),
(281,32,1001000001,1521020194),
(282,31,1001000001,1521020292),
(283,31,1001001002,1521020779),
(284,31,1001001002,1521020794),
(285,31,1001001002,1521020859),
(286,31,1001001002,1521020896),
(287,31,1001001001,1521020908),
(288,31,1001001001,1521020937),
(289,31,1001001002,1521020999),
(290,31,1001001001,1521021000),
(291,31,1001001001,1521021083),
(292,31,1001001002,1521021086),
(293,31,1001001001,1521021103),
(294,31,1001001002,1521021115),
(295,31,1001001001,1521021139),
(296,33,1001001001,1521021180),
(297,31,1001001001,1521021252),
(298,31,1001001002,1521021272),
(299,33,1001001001,1521021274),
(300,33,1001001001,1521021281),
(301,31,1001001002,1521021300),
(302,31,1001001002,1521021354),
(303,31,1001001002,1521021524),
(304,31,1001001001,1521021527),
(305,31,1001001002,1521021532),
(306,31,1001001002,1521021706),
(307,31,1001001002,1521021757),
(308,31,1001001002,1521021781),
(309,33,1001001001,1521022417),
(310,31,1001001001,1521022907),
(311,31,1001002001,1521022911),
(312,31,1001001001,1521022959),
(313,31,1001002001,1521022964),
(314,31,1001002001,1521022998),
(315,31,1001001001,1521023006),
(316,31,1001002001,1521023023),
(317,34,1001001001,1521023095),
(318,34,1001002001,1521023104),
(319,34,1001001001,1521023208),
(320,32,1001002001,1521023209),
(321,31,1001001001,1521023329),
(322,34,1001001001,1521023359),
(323,32,1001002001,1521023447),
(324,34,1001001001,1521023450),
(325,32,1001002001,1521023498),
(326,34,1001001001,1521023559),
(327,33,1001001001,1521023895),
(328,33,1001001001,1521023901),
(329,35,1001001001,1521024731),
(330,36,1001002001,1521029677),
(331,37,1001002001,1521035362),
(332,33,1001001001,1521035738),
(333,33,1001001001,1521035746),
(334,32,1001002001,1521037484),
(335,38,1001002001,1521046261),
(336,31,1001001001,1521076565),
(337,31,1001001001,1521077398),
(338,31,1001001001,1521077583),
(339,34,1001001001,1521081020),
(340,31,1001002001,1521095397),
(341,31,1001001001,1521095413),
(342,31,1001002001,1521096152),
(343,31,1003001001,1521098004),
(344,31,1003001001,1521098011),
(345,31,1003001001,1521098210),
(346,31,1001001001,1521098225),
(347,31,1001002001,1521098230),
(348,31,1003001001,1521098244),
(349,31,1001002001,1521098251),
(350,31,1001002001,1521098406),
(351,31,1001001001,1521098422),
(352,31,1001002001,1521098430),
(353,34,1001002001,1521098491),
(354,34,1001001001,1521098499),
(355,34,1003001001,1521098513),
(356,31,1003001001,1521098947),
(357,31,1003001001,1521098962),
(358,31,1003001001,1521098975),
(359,31,1003001001,1521099663),
(360,31,1003001001,1521099699),
(361,31,1003001001,1521099718),
(362,39,1001001001,1521100741),
(363,39,1003001001,1521100898),
(364,31,1003001001,1521101231),
(365,33,1001001001,1521102259),
(366,33,1001001001,1521102317),
(367,33,1001001001,1521102478),
(368,33,1001002001,1521102782),
(369,31,1001001001,1521104241),
(370,31,1001002001,1521104245),
(371,31,1003001001,1521104250),
(372,31,1003001001,1521104254),
(373,31,1003001001,1521104322),
(374,31,1003001001,1521104579),
(375,31,1003001001,1521104622);

/*Table structure for table `nideshop_goods` */

DROP TABLE IF EXISTS `nideshop_goods`;

CREATE TABLE `nideshop_goods` (
  `id` int(11) unsigned NOT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `brand_id` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text,
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attribute_category` int(11) unsigned NOT NULL DEFAULT '0',
  `counter_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.01' COMMENT '专柜价格',
  `extra_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.02' COMMENT '附加价格',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `goods_unit` varchar(45) NOT NULL COMMENT '商品单位',
  `primary_pic_url` varchar(255) NOT NULL COMMENT '商品主图',
  `list_pic_url` varchar(255) NOT NULL COMMENT '商品列表图',
  `retail_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.03' COMMENT '零售价格',
  `sell_volume` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '销售量',
  `primary_product_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '主sku　product_id',
  `unit_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.04' COMMENT '单位价格，单价',
  `promotion_desc` varchar(255) NOT NULL,
  `promotion_tag` varchar(45) NOT NULL,
  `app_exclusive_price` decimal(10,2) unsigned NOT NULL COMMENT 'APP专享价',
  `is_app_exclusive` tinyint(1) unsigned NOT NULL COMMENT '是否是APP专属',
  `is_limited` tinyint(1) unsigned NOT NULL,
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_goods` */

insert  into `nideshop_goods`(`id`,`category_id`,`goods_sn`,`name`,`brand_id`,`goods_number`,`keywords`,`goods_brief`,`goods_desc`,`is_on_sale`,`add_time`,`sort_order`,`is_delete`,`attribute_category`,`counter_price`,`extra_price`,`is_new`,`goods_unit`,`primary_pic_url`,`list_pic_url`,`retail_price`,`sell_volume`,`primary_product_id`,`unit_price`,`promotion_desc`,`promotion_tag`,`app_exclusive_price`,`is_app_exclusive`,`is_limited`,`is_hot`) values 
(1001001001,1001001,'1001001001','记忆枕头单人慢回弹太空记忆枕头',1001001,999,'','逸住同款 ','\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_01.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_01.jpg\" style=\"\" /></p>\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_02.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_02.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_03.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_03.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_04.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_04.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_05.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/pillow/details/details_05.jpg\" style=\"\" /></p>\r\n',1,0,100,0,0,0.00,0.00,0,'','https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_01.jpg','https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_02.jpg',0.01,0,0,0.00,'','',0.00,0,0,1),
(1001002001,1001002,'1001002001','纯棉成人柔软加大毛巾',1001002,999,'','逸住同款 ','<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_01.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_01.jpg\" style=\"\" /></p>\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_02.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_02.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_03.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_03.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_04.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_04.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_05.jpg\" _src=\"https://shop.htmlk.cn/static/goods/hometextile/towel/details/detail_05.jpg\" style=\"\" /></p>\r\n',1,0,100,0,0,0.00,0.00,0,'','https://shop.htmlk.cn/static/goods/hometextile/towel/towel_01.jpg','https://shop.htmlk.cn/static/goods/hometextile/towel/towel_02.jpg',0.01,0,0,0.00,'','',0.00,0,0,1),
(1003001001,1003001,'1003001001','拉菲奥希耶徽纹红葡萄酒',2004000,999,'','逸住同款 ','<p><img src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_01.jpg\" _src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_01.jpg\" style=\"\" /></p>\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_02.jpg\" _src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_02.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_03.jpg\" _src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_03.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_04.jpg\" _src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_04.jpg\" style=\"\" /></p>\r\n\r\n<p><img src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_05.jpg\" _src=\"https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_05.jpg\" style=\"\" /></p>\r\n',1,0,100,0,0,0.03,0.02,0,'','https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_01.jpg','https://shop.htmlk.cn/static/goods/specialty/redwine/redwine_02.jpg',0.01,0,0,0.04,'','',0.00,0,0,1),
(1003001002,1003001,'1003001002','玫瑰豆沙月饼 广式月饼 糕点散装',2004000,999,'','逸住同款 ',NULL,1,0,100,0,0,0.01,0.02,0,'','','',0.03,0,0,0.04,'','',0.00,0,0,1);

/*Table structure for table `nideshop_goods_attribute` */

DROP TABLE IF EXISTS `nideshop_goods_attribute`;

CREATE TABLE `nideshop_goods_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `attribute_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=872 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_goods_attribute` */

insert  into `nideshop_goods_attribute`(`id`,`goods_id`,`attribute_id`,`value`) values 
(1,1006002,1,'100%棉'),
(2,1006002,2,'1.5米+1.8米通用'),
(3,1006002,3,'4件'),
(4,1006002,4,'刺绣'),
(5,1006002,5,'GB18401-2010 B类'),
(6,1006002,6,'中国'),
(7,1006002,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(8,1006007,8,'2000g/2300g'),
(9,1006007,9,'200*230cm/220*240cm'),
(10,1006007,10,'100%棉'),
(11,1006007,11,'100%羊毛'),
(12,1006007,7,'1.经过碳化、清洗、梳理的天然羊毛被带会有少量味道，通风晾晒2-3天即可散去                     2.为减少羊毛漂白等化学用品的处理时间，部分羊毛可能未完全脱色，轻微泛黄属羊毛原色，为正常现象。'),
(13,1006010,8,'2000g/2300g'),
(14,1006010,9,'200*230cm/220*240cm'),
(15,1006010,10,'100%棉'),
(16,1006010,11,'超细羊毛'),
(17,1006010,7,'1.经过碳化、清洗、梳理的天然羊毛被带会有少量味道，通风晾晒2-3天即可散去                                        2.为减少羊毛漂白等化学用品的处理时间，部分羊毛可能未完全脱色，轻微泛黄属羊毛原色，为正常现象。'),
(18,1006013,9,'200*230cm/ 220*240cm'),
(19,1006013,10,'100%棉'),
(20,1006013,11,'100%双宫茧桑蚕丝'),
(21,1006013,8,'0.5KG/1KG'),
(22,1006013,7,'天然桑蚕丝具有正常蛋白味道，通风晾晒2-3天即可散去'),
(23,1006014,9,'200*230cm/ 220*240cm'),
(24,1006014,10,'100%棉'),
(25,1006014,11,'100%双宫茧桑蚕丝'),
(26,1006014,8,'0.5+1.5KG/1+2KG'),
(27,1006014,7,'天然桑蚕丝具有正常蛋白味道，通风晾晒2-3天即可散去'),
(28,1009009,9,'200*230cm/220*240cm'),
(29,1009009,12,'白鹅绒'),
(30,1009009,13,'60%棉 40%聚酯纤维'),
(31,1009009,8,'1500g/1700g'),
(32,1009009,14,'95%'),
(33,1009009,4,'双层立衬'),
(34,1009012,9,'48*74cm'),
(35,1009012,13,'100%棉'),
(36,1009012,12,'100%聚酯纤维'),
(37,1009012,15,'1000g'),
(38,1009012,6,'中国'),
(39,1009012,7,'枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。'),
(40,1009013,9,'48*74cm'),
(41,1009013,13,'70%高模量聚酯+30%聚酰胺'),
(42,1009013,12,'100%聚酯纤维'),
(43,1009013,15,'1000g'),
(44,1009013,6,'中国'),
(45,1009013,7,'枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。'),
(46,1009024,16,'65*65*43cm'),
(47,1009024,17,'外套帆布：100%棉；外套弹力布：锦纶80%氨纶20%'),
(48,1009024,18,'内胆面料：100%锦纶；填充物：聚苯乙烯（发泡粒子）'),
(49,1009024,19,'本品为人工填充粒子，重量难免会有误差，敬请谅解。同时产品在运输过程中受挤压，也可能会造成凹陷。储存时请避免重物挤压以引起泡沫粒子塌陷。'),
(50,1010000,1,'100%羊毛'),
(51,1010000,9,'200*150cm'),
(52,1010000,7,'1.羊毛毯采取传统机织工艺，纯天然织造的，直接接触皮肤会有轻微扎人。\n2.初次使用时会有少量浮毛，建议干洗处理。\n3.商品为纯羊毛织造而成，若有少量气味请通风2-3天去除。'),
(53,1010001,1,'100%羊毛'),
(54,1010001,16,'200*150cm'),
(55,1010001,7,'1.羊毛毯采取传统机织工艺，纯天然织造的，直接接触皮肤会有轻微扎人。\n2.初次使用时会有少量浮毛，建议干洗处理。\n3.商品为纯羊毛织造而成，若有少量气味请通风2-3天去除。'),
(56,1011004,13,'100% 棉'),
(57,1011004,20,'GB18401-2010 B类'),
(58,1011004,16,'150×200cm'),
(59,1011004,21,'一等品'),
(60,1011004,6,'中国'),
(61,1011004,15,'1800g'),
(62,1011004,7,'1.深色纯棉毛巾被在织造染色过程中，巾面更易产生微细的纤维浮绒，使用前建议用清水漂洗1-2次，即可去掉产品上的浮绒。\n2.在洗涤时一定要注意不要与衣服混在一起机洗，强力的搓洗会引起掉毛或勾线现象。\n3.纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(63,1015007,9,'45cm*45cm'),
(64,1015007,22,'100%全棉'),
(65,1015007,23,'100%全棉'),
(66,1015007,11,'100%聚酯纤维'),
(67,1015007,15,'470g（内芯）'),
(68,1015007,6,'中国'),
(69,1019000,12,'聚醚型聚氨酯'),
(70,1019000,13,'100%聚酯纤维'),
(71,1019000,9,'50cm×30cm×9cm-7cm'),
(72,1019000,24,'白色'),
(73,1019000,25,'单人'),
(74,1019000,7,'1.记忆绵产品为进口环保化学材质聚氨酯发泡而成，刚打开包装会有少量聚氨酯气体产生，拆除外套通风除味3-5天即可。                                                                                  2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。'),
(75,1019001,12,'聚醚型聚氨酯'),
(76,1019001,13,'100%聚酯纤维'),
(77,1019001,9,'50cm×30cm×10cm-6cm'),
(78,1019001,24,'白色'),
(79,1019001,25,'单人'),
(80,1019001,7,'1.记忆绵产品为进口环保化学材质聚氨酯发泡而成，刚打开包装会有少量聚氨酯气体产生，拆除外套通风除味3-5天即可。 2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。'),
(81,1019002,12,'聚醚型聚氨酯'),
(82,1019002,13,'聚酯纤维'),
(83,1019002,9,'135cm×36cm×10cm-7cm'),
(84,1019002,24,'白色'),
(85,1019002,25,'双人'),
(86,1019002,7,'1.记忆绵产品为进口环保化学材质聚氨酯发泡而成，刚打开包装会有少量聚氨酯气体产生，拆除外套通风除味3-5天即可。 \n2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。'),
(87,1019006,13,'100%棉'),
(88,1019006,12,'20% 夜交藤+80% 聚酯纤维'),
(89,1019006,9,'48*74cm'),
(90,1019006,24,'白色'),
(91,1019006,25,'单人'),
(92,1019006,7,'1.植物填充，遇梅雨季节需要通风、干燥保存。 \n2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。'),
(93,1020000,12,'聚氨酯'),
(94,1020000,13,'100%棉'),
(95,1020000,9,'33cm×31cm×10cm'),
(96,1020000,24,'灰色条纹/粉色条纹'),
(97,1021004,1,'100%羊毛'),
(98,1021004,9,'150*200cm'),
(99,1021004,21,'一等品'),
(100,1021004,6,'中国'),
(101,1021004,7,'1.羊毛毯采取传统机织工艺，纯天然织造的，直接接触皮肤会有轻微扎人。\n2.初次使用时会有少量浮毛，建议干洗处理。\n3.商品为纯羊毛织造而成，若有少量气味请通风2-3天去除。'),
(102,1021010,1,'100%棉'),
(103,1021010,26,'GB18401-2010 B类'),
(104,1021010,6,'江苏南通'),
(105,1021010,27,'200根'),
(106,1021010,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(107,1021010,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(108,1022000,1,'100%棉'),
(109,1022000,26,'GB18401-2010 B类'),
(110,1022000,6,'中国山东'),
(111,1022000,27,'200根'),
(112,1022000,9,'被套200*230cm；床单245*250cm；枕套48*74cm'),
(113,1022000,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(114,1022001,1,'100%棉'),
(115,1022001,26,'GB18401-2010 B类'),
(116,1022001,6,'中国山东'),
(117,1022001,27,'200根'),
(118,1022001,9,'被套200*230cm；床单245*250cm；枕套48*74cm'),
(119,1022001,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(120,1023012,1,'100%棉'),
(121,1023012,9,'180*220cm'),
(122,1023012,28,'GB18401-2010 B类'),
(123,1023012,21,'一等品'),
(124,1023012,15,'1480g'),
(125,1023012,7,'1.深色纯棉毛巾被在织造染色过程中，巾面更易产生微细的纤维浮绒，使用前建议用清水漂洗1-2次，即可去掉产品上的浮绒。\n2.在洗涤时一定要注意不要与衣服混在一起机洗，强力的搓洗会引起掉毛或勾线现象。\n3.纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(126,1023032,1,'100%棉'),
(127,1023032,26,'GB18401-2010 B类'),
(128,1023032,6,'中国山东'),
(129,1023032,27,'200根'),
(130,1023032,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(131,1023032,4,'色织工艺'),
(132,1023032,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(133,1023034,1,'正面：100%棉  背面：15%棉  85%涤   底衬：100%涤'),
(134,1023034,11,'70% 白鸭绒  30%白鸭绒片'),
(135,1023034,29,'250g'),
(136,1023034,6,'中国'),
(137,1023034,26,'GB18401-2010 B类'),
(138,1023034,24,'水银灰/ 水蓝/ 水粉'),
(139,1027004,1,'100%棉'),
(140,1027004,9,'150*200cm'),
(141,1027004,21,'一等品'),
(142,1027004,24,'灰白格/粉白格'),
(143,1027004,15,'1136g'),
(144,1029005,1,'65% 天丝 35% 亚麻'),
(145,1029005,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(146,1029005,6,'中国江苏'),
(147,1029005,5,'GB/T 22844-2009'),
(148,1029005,24,'渐变紫 / 渐变绿'),
(149,1029005,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(150,1030001,1,'面纱：100%羊毛  底纱：55.7%棉  27.1%聚酯纤维  4.7%羊毛   12.5%其他'),
(151,1030001,6,'印度'),
(152,1030001,5,'QB/T 2756-2005'),
(153,1030001,9,'160*230cm'),
(154,1030001,4,'手工编织'),
(155,1030001,7,'1：羊毛材质存在一点羊骚味实属正常情况，建议开窗通风，多散散味道即可。\n2：羊毛地毯刚刚开始使用的时候多多少少都会有一点掉毛的情况，建议开始使用的时候用吸尘器多吸几次，之后掉毛的情况就会有改善。  \n3：因为天然羊毛材质，所以脚感会有一点点刺，不属于产品质量问题。'),
(156,1030002,1,'绒面：93%羊毛  7%腈纶 衬背：100%棉'),
(157,1030002,6,'印度'),
(158,1030002,5,'GB/T 27729-2011'),
(159,1030002,9,'160*230cm'),
(160,1030002,4,'手工枪刺'),
(161,1030002,7,'1：羊毛材质存在一点羊骚味实属正常情况，建议开窗通风，多散散味道即可。\n2：羊毛地毯刚刚开始使用的时候多多少少都会有一点掉毛的情况，建议开始使用的时候用吸尘器多吸几次，之后掉毛的情况就会有改善。  \n3：因为天然羊毛材质，所以脚感会有一点点刺，不属于产品质量问题。'),
(162,1030003,1,'面纱： 100%羊毛  底纱： 88.3%棉   11.7%其他'),
(163,1030003,6,'印度'),
(164,1030003,5,'QB/T 2756-2005'),
(165,1030003,9,'160*230cm'),
(166,1030003,4,'手工编织'),
(167,1030003,7,'1：羊毛材质存在一点羊骚味实属正常情况，建议开窗通风，多散散味道即可。\n2：羊毛地毯刚刚开始使用的时候多多少少都会有一点掉毛的情况，建议开始使用的时候用吸尘器多吸几次，之后掉毛的情况就会有改善。  \n3：因为天然羊毛材质，所以脚感会有一点点刺，不属于产品质量问题。'),
(168,1030004,1,'100%棉'),
(169,1030004,5,'GB/T 22844-2009'),
(170,1030004,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(171,1030004,6,'中国山东'),
(172,1030004,24,'蓝色/ 灰色'),
(173,1030004,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(174,1030005,1,'100%亚麻'),
(175,1030005,5,'GB/T 22844-2009'),
(176,1030005,6,'中国山东'),
(177,1030005,24,'橙色/ 灰色/ 黄色'),
(178,1030005,4,'水洗工艺'),
(179,1030005,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(180,1030005,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(181,1030006,1,'100%棉'),
(182,1030006,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(183,1030006,6,'中国山东'),
(184,1030006,5,'GB18401-2010 B类'),
(185,1030006,24,'红色/ 黄色/ 蓝色'),
(186,1030006,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(187,1035006,1,'100%棉'),
(188,1035006,6,'中国浙江'),
(189,1035006,9,'长61*宽43cm / 长86*宽53cm'),
(190,1035006,4,'手工制作'),
(191,1035006,5,'GB/T 26850-2011'),
(192,1035006,7,'纯棉材质在织造染色过程中，表面不可避免会产生微细的纤维浮绒，使用前清水漂洗1-2次，即可去掉浮绒。不属于产品质量问题。'),
(193,1036002,13,'100% 棉'),
(194,1036002,11,'100% 高山苦荞麦壳'),
(195,1036002,16,'74×48cm±1cm'),
(196,1036002,8,'3KG'),
(197,1036002,7,'1.天然植物填充，遇梅雨季节需要干燥保存，如有少量飞虫产生，太阳下晒3小时即可去除。 \n2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。'),
(198,1036013,1,'100%棉'),
(199,1036013,9,'150*200*25cm/ 180*200*25cm'),
(200,1036013,5,'FZ/T 62028-2015'),
(201,1036013,4,'双捻工艺'),
(202,1036013,6,'浙江 江苏'),
(203,1036013,7,'1：针织棉面料因为工艺不可避免原因，使用一段时间后会出现起毛起球现象，使用去毛机修理一下即可。\n2：因为针织的编织工艺，成品在使用过程中会有轻微的变型，不影响使用。'),
(204,1036016,1,'100%棉'),
(205,1036016,9,'150*200cm/ 180*200cm'),
(206,1036016,5,'GB/T 22797-2009'),
(207,1036016,4,'色织水洗工艺'),
(208,1036016,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(209,1037011,16,'1.5/1.8m*2m*5cm'),
(210,1037011,30,'100%聚酯纤维'),
(211,1037011,31,'100%聚酯纤维'),
(212,1037011,32,'聚氨酯'),
(213,1037011,7,'1.记忆绵产品为进口环保化学材质聚氨酯发泡而成，刚打开包装会有少量聚氨酯气体产生，拆除外套通风除味3-5天即可。\n 2.床垫商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款床垫，挑选最舒适的进行使用。'),
(214,1037012,11,'100%高山苦荞'),
(215,1037012,9,'40*8cm'),
(216,1037012,33,'45%麻45%棉10%聚酯纤维'),
(217,1037012,7,'1.天然植物填充，遇梅雨季节需要干燥保存，如有少量飞虫产生，太阳下晒3小时即可去除。\n 2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。\n3.建议每次使用时间控制在15分钟以内。'),
(218,1037012,34,'0.45kg+-0.05kg'),
(219,1039051,16,'33*24*14cm'),
(220,1039051,30,'100%棉'),
(221,1039051,31,'100%聚酯纤维'),
(222,1039051,32,'聚氨酯'),
(223,1039051,20,'GB 18401-2010 B类'),
(224,1039051,19,'1,水洗时请将外套取下，用冷水洗涤后置于阴凉处阴干或烘干。不能同褪色衣物同洗，以防沾污、沾色。\n2,外套洗后稍有缩水是正常现象，因是弹性织物，仅需四周拉一下长度即可。\n3,记忆棉不可水洗，请经常保持产品干燥，定期通风（不可曝晒）。若不慎打湿，立即用干毛巾将水分吸干，置于通风处阴干或用冷吹风吹干即可。'),
(225,1043005,35,'100%聚酯纤维'),
(226,1043005,36,'聚氨酯'),
(227,1043005,5,'GB/T22843-2009'),
(228,1043005,37,'36*36*3cm'),
(229,1043005,38,'Φ34*3cm'),
(230,1043005,39,'100%棉'),
(231,1043005,19,'1,水洗时请将外套取下，用冷水洗涤后置于阴凉处阴干或烘干。不能同褪色衣物同洗，以防沾污、沾色。\n2,外套洗后稍有缩水是正常现象，因是弹性织物，仅需四周拉一下长度即可。\n3,记忆棉不可水洗，请经常保持产品干燥，每隔一段时间用吸尘器清理内芯落尘或用手轻轻拍打内芯，放在通风阴凉处适当晾晒即可。。若不慎打湿，立即用干毛巾将水分吸干，置于通风处阴干或用冷吹风吹干即可。'),
(232,1044012,9,'150*200cm'),
(233,1044012,1,'100%羊毛'),
(234,1044012,21,'一等品'),
(235,1044012,40,'GB 18401-2010 B类'),
(236,1044012,7,'1.羊毛毯采取传统机织工艺，纯天然织造的，直接接触皮肤会有轻微扎人。\n2.初次使用时会有少量浮毛，建议干洗处理。\n3.商品为纯羊毛织造而成，若有少量气味请通风2-3天去除。'),
(237,1046044,1,'100%美利奴羊毛'),
(238,1046044,15,'1260g'),
(239,1046044,9,'150*200cm'),
(240,1046044,5,'FZ/T 61001-2006'),
(241,1046044,21,'一等品'),
(242,1048005,10,'100% 棉'),
(243,1048005,9,'45*45cm'),
(244,1048005,6,'中国江苏'),
(245,1048005,24,'真朱红/ 薄缥蓝/ 枯野灰'),
(246,1048005,5,'GB/T 22843-2009'),
(247,1048005,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(248,1055012,1,'外壳：100% 纯棉  内充：100% 聚酯纤维'),
(249,1055012,29,'600G/ 1400G'),
(250,1055012,9,'45*45cm / 66*66cm'),
(251,1055012,6,'中国江苏'),
(252,1055012,5,'GB/T 22843-2009'),
(253,1055016,24,'珍珠粉/ 宝石蓝'),
(254,1055016,9,'45*45cm'),
(255,1055016,1,'主面料：100% 棉\n填充：100% 聚酯纤维'),
(256,1055016,29,'600G'),
(257,1055016,5,'GB/T 22843-2009'),
(258,1055016,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(259,1057036,9,'45*45cm'),
(260,1057036,24,'灰紫/ 蓝色/ 灰色/ 咖色'),
(261,1057036,5,'GB/T 22843-2009'),
(262,1057036,41,'600G'),
(263,1057036,6,'中国江苏'),
(264,1057036,1,'面料：100% 亚麻\n内芯面料：100%棉\n填充：100%聚酯纤维'),
(265,1057036,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(266,1064000,9,'38*38*30cm/60*55*20cm'),
(267,1064000,42,'FZ/T 62011.3-2008'),
(268,1064000,26,'GB 18401-2010 B类'),
(269,1064000,24,'米色'),
(270,1064002,9,'40R/60R'),
(271,1064002,42,'FZ/T 62011.3-2008'),
(272,1064002,26,'GB 18401-2010 B类'),
(273,1064002,8,'110g'),
(274,1064002,24,'蓝白'),
(275,1064003,42,'FZ/T 62011.3-2008'),
(276,1064003,26,'GB 18401-2010 B类'),
(277,1064003,9,'29*19cm'),
(278,1064003,24,'藏青色'),
(279,1064004,42,'FZ/T 62011.3-2008'),
(280,1064004,26,'GB 18401-2010 B类'),
(281,1064004,16,'32*32*32cm'),
(282,1064004,24,'牛仔条纹'),
(283,1064006,9,'50x30x10-6cm'),
(284,1064006,15,'0.87kg'),
(285,1064006,30,'40%棉60%聚酯纤维（接触皮肤面全棉）'),
(286,1064006,31,'100%聚酯纤维'),
(287,1064006,32,'聚氨酯'),
(288,1064007,16,'135x36x10-7cm'),
(289,1064007,15,'2.3kg'),
(290,1064007,30,'40%棉60%聚酯纤维（接触皮肤面全棉）'),
(291,1064007,31,'100%聚酯纤维'),
(292,1064007,32,'聚氨酯'),
(293,1064021,24,'本白'),
(294,1064021,5,'GB 7000.11-2008'),
(295,1064021,43,'220-240V'),
(296,1064021,44,'T710'),
(297,1064021,7,'本产品不包含灯泡'),
(298,1064021,6,'中国中山'),
(299,1064022,24,'本白'),
(300,1064022,5,'GB 7000.11-2008'),
(301,1064022,44,'F710'),
(302,1064022,43,'220-240V'),
(303,1064022,7,'本产品不包含灯泡'),
(304,1064022,6,'中国中山'),
(305,1065004,9,'150*30cm'),
(306,1065004,24,'原木色/ 棕色'),
(307,1065004,5,'GB/T 23148-2008'),
(308,1065004,6,'中国苏州'),
(309,1065004,7,'原木色为水曲柳贴皮，棕色为胡桃木贴皮。'),
(310,1065005,9,'150*28cm'),
(311,1065005,24,'棕色'),
(312,1065005,5,'GB/T 23148-2008'),
(313,1065005,6,'中国江苏'),
(314,1068010,8,'1300g/1560g'),
(315,1068010,9,'1.5*2m/1.8*2m'),
(316,1068010,30,'100%棉'),
(317,1068010,11,'100%羊毛'),
(318,1068010,5,'GB/T 22843-2009'),
(319,1068010,21,'合格品'),
(320,1068010,45,'3cm+-视商品干燥情况有少量浮动'),
(321,1068011,11,'60%、90%驼绒/40%、10%驼毛'),
(322,1068011,10,'100%棉'),
(323,1068011,9,'200*230cm'),
(324,1068011,8,'2000g'),
(325,1068012,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(326,1068012,24,'灰紫/ 浅咖色'),
(327,1068012,46,'色织工艺'),
(328,1068012,5,'GB/T 22844-2009'),
(329,1068012,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。 严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(330,1068012,6,'中国山东'),
(331,1068012,1,'面料：100%棉  填充物：65% 棉/ 35%聚酯纤维'),
(332,1071004,9,'48*38*13cm'),
(333,1071004,47,'黑红/白姜黄'),
(334,1071004,1,'聚丙烯树脂'),
(335,1071004,5,'GB 9688-1988'),
(336,1071004,21,'合格品'),
(337,1071005,9,'185*160*100MM'),
(338,1071005,48,'聚丙烯树脂'),
(339,1071005,5,'GB 9688-1988'),
(340,1071005,21,'合格品'),
(341,1071006,16,'200*60mm'),
(342,1071006,48,'聚丙烯树脂'),
(343,1071006,5,'GB 9688-1988'),
(344,1072000,24,'象牙白/ 芥子黄/ 银铅色'),
(345,1072000,9,'45*45cm/ 66*66cm'),
(346,1072000,5,'GB/T 22843-2009'),
(347,1072000,4,'手工编织'),
(348,1072000,6,'中国山东'),
(349,1072000,7,'此产品不含抱枕芯'),
(350,1072001,24,'缥蓝色/ 薄灰色/ 象牙色/ 赤紫色'),
(351,1072001,9,'45*45cm'),
(352,1072001,5,'GB/T 22843-2009'),
(353,1072001,4,'色织水洗'),
(354,1072001,6,'中国山东'),
(355,1072001,7,'此产品不含抱枕芯'),
(356,1075023,16,'48*74cm'),
(357,1075023,11,'20%白鸭绒+80%白鹅毛片'),
(358,1075023,8,'200g白鸭绒+800g白鹅毛片'),
(359,1075023,10,'100%棉'),
(360,1075023,5,'QB/T 1194-2012'),
(361,1075024,12,'白鹅绒'),
(362,1075024,14,'95%'),
(363,1075024,10,'100%纯棉'),
(364,1075024,49,'120支 500根'),
(365,1075024,8,'1500g/1700g'),
(366,1075024,9,'200*230cm/220*240cm'),
(367,1075024,4,'双层立衬'),
(368,1081000,9,'35*45cm'),
(369,1081000,5,'GB/T 22843-2009'),
(370,1081000,6,'浙江杭州'),
(371,1081000,1,'100% 聚酯纤维'),
(372,1081002,9,'45*45cm'),
(373,1081002,5,'GB/T 22843-2009'),
(374,1081002,1,'100% 聚酯纤维'),
(375,1081002,6,'浙江杭州'),
(376,1083009,50,'厄瓜多尔玫瑰'),
(377,1083009,51,'1朵'),
(378,1083009,24,'妖姬蓝'),
(379,1083009,9,'17*17*12cm'),
(380,1083009,52,'厄瓜多尔'),
(381,1083010,53,'奥斯汀玫瑰、泉水玫瑰、绣球'),
(382,1083010,54,'棉毛苏叶、细爪草、褐色果、满天星'),
(383,1083010,24,'柔情粉'),
(384,1083010,9,'17*17*12cm'),
(385,1083010,52,'日本'),
(386,1083010,19,'由于花材的季节性供应特点，个别配材会有所调整，且因花材批次不同会有一定微小色差，不会影响整体花盒效果。'),
(387,1084001,1,'100%纯棉'),
(388,1084001,9,'150*200cm'),
(389,1084001,42,'FZ/T 61001-2006'),
(390,1084001,20,'GB18401-2010 B类'),
(391,1084001,7,'1.纯棉毯采取传统针织工艺，纯天然织造的，使用前建议清洗一遍去除少量浮尘。\n2.商品为纯棉织造而成，若有少量气味请通风2-3天去除。\n3.纯棉针织盖毯清洗数次之后，可能存在微量变形，建议干洗。'),
(392,1084001,15,'1280g'),
(393,1084003,1,'100%棉'),
(394,1084003,9,'150*200cm'),
(395,1084003,42,'FZ/T 61001-2006'),
(396,1084003,20,'GB18401-2010 B类'),
(397,1084003,7,'1.纯棉毯采取传统针织工艺，纯天然织造的，使用前建议清洗一遍去除少量浮尘。\n2.商品为纯棉织造而成，若有少量气味请通风2-3天去除。\n3.纯棉针织盖毯清洗数次之后，可能存在微量变形，建议干洗。'),
(398,1084003,15,'1115g'),
(399,1086015,24,'本白/ 哑黑/ 姜黄'),
(400,1086015,5,'GB 7000.11-2008'),
(401,1086015,6,'中国广东'),
(402,1086015,44,'MT20290-1-130'),
(403,1086015,7,'本产品不含灯泡'),
(404,1086023,1,'100%聚酯纤维'),
(405,1086023,55,'锌合金'),
(406,1086023,56,'120cm'),
(407,1086023,57,'30-45cm'),
(408,1086024,1,'100%锦纶'),
(409,1086024,55,'锌合金'),
(410,1086024,58,'30-45cm'),
(411,1086024,59,'120cm'),
(412,1086025,1,'100%锦纶'),
(413,1086025,55,'锌合金'),
(414,1086025,56,'120cm'),
(415,1086025,42,'FZ/T 63005-2010'),
(416,1086026,1,'100%锦纶'),
(417,1086026,55,'锌合金'),
(418,1086026,60,'30-45cm'),
(419,1086026,61,'120cm'),
(420,1090004,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*25cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*25cm'),
(421,1090004,24,'红色格子/ 蓝色格子/ 绿色格子/ 灰色格子'),
(422,1090004,5,'GB/T 22844-2009'),
(423,1090004,4,'色织工艺'),
(424,1090004,7,'1：纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。 严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。\n2：不同批次面料和拉链稍有差异，请以实物为准。'),
(425,1092024,9,'200*230cm'),
(426,1092024,11,'100%桑蚕丝'),
(427,1092024,8,'1500g'),
(428,1092024,62,'100%纯棉纱布'),
(429,1092024,5,'GB/T 24252-2009'),
(430,1092024,28,'GB 18401-2010 B类'),
(431,1092038,9,'470*128*13mm'),
(432,1092038,1,'天然桐木'),
(433,1092038,15,'200g'),
(434,1092038,24,'GB/T 28495-2012'),
(435,1092039,9,'385mmX385mmX135mm'),
(436,1092039,15,'950g'),
(437,1092039,1,'美卡瓦楞纸板'),
(438,1092039,24,'本色'),
(439,1093000,1,'PU+PE（枝干）'),
(440,1093000,24,'白色'),
(441,1093000,63,'81cm'),
(442,1093000,64,'木棉花'),
(443,1093001,1,'PU+PE（枝干）'),
(444,1093001,24,'白色'),
(445,1093001,63,'35cm'),
(446,1093001,64,'马蹄莲'),
(447,1093001,65,'一束（9朵）'),
(448,1093002,1,'PU+玻璃'),
(449,1093002,24,'白色'),
(450,1093002,63,'33cm'),
(451,1093002,64,'木棉花'),
(452,1097004,1,'北美白橡木'),
(453,1097004,66,'环保涂漆'),
(454,1097004,67,'1400/1600*820*750mm'),
(455,1097004,68,'需要组装'),
(456,1097005,1,'北美白橡木'),
(457,1097005,66,'环保涂漆'),
(458,1097005,67,'430*520*870mm'),
(459,1097005,68,'无需组装'),
(460,1097006,1,'北美白橡木'),
(461,1097006,66,'环保涂漆'),
(462,1097006,67,'600*600*550mm'),
(463,1097006,68,'需要组装'),
(464,1097007,1,'北美白橡木'),
(465,1097007,66,'环保涂漆'),
(466,1097007,67,'600*600*530/650mm'),
(467,1097007,68,'需要组装'),
(468,1097009,1,'北美白橡木+抽屉背板桐木'),
(469,1097009,66,'环保涂漆'),
(470,1097009,67,'1000/1200*580*910mm'),
(471,1097009,68,'需要组装'),
(472,1097011,1,'北美白橡木+床铺板松木'),
(473,1097011,66,'环保涂漆'),
(474,1097011,67,'2065*2188*1088mm'),
(475,1097011,68,'需要组装'),
(476,1097012,1,'北美白橡木+抽屉背板桐木'),
(477,1097012,66,'环保涂漆'),
(478,1097012,67,'480*400*550mm'),
(479,1097012,68,'需要组装'),
(480,1097013,1,'北美白橡木+抽屉背板桐木'),
(481,1097013,66,'环保涂漆'),
(482,1097013,67,'800*430*1100mm'),
(483,1097013,68,'需要组装'),
(484,1097014,1,'北美白橡木+抽屉背板桐木'),
(485,1097014,66,'环保涂漆'),
(486,1097014,67,'860*400*1200mm'),
(487,1097014,68,'需要组装'),
(488,1097016,1,'北美白橡木+抽屉背板桐木'),
(489,1097016,66,'环保涂漆'),
(490,1097016,67,'1800*450*525mm'),
(491,1097016,68,'需要组装'),
(492,1097017,1,'北美白橡木+抽屉背板桐木'),
(493,1097017,66,'环保涂漆'),
(494,1097017,67,'1200*600*450mm'),
(495,1097017,68,'需要组装'),
(496,1100000,1,'100% 棉'),
(497,1100000,5,'GB/T 22796-2009'),
(498,1100000,24,'石板灰/ 烟褐色'),
(499,1100000,9,'48*74cm'),
(500,1100000,4,'水洗工艺'),
(501,1100000,6,'中国江苏'),
(502,1100000,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(503,1100001,1,'100% 棉'),
(504,1100001,5,'GB/T 22797-2009'),
(505,1100001,24,'石板灰/ 烟褐色'),
(506,1100001,9,'245*250cm/ 245*270cm'),
(507,1100001,4,'水洗工艺'),
(508,1100001,6,'中国江苏'),
(509,1100001,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(510,1100002,1,'100%棉'),
(511,1100002,5,'GB/T 22797-2009'),
(512,1100002,9,'150*200*25cm/ 180*200*25cm'),
(513,1100002,24,'石板灰/ 烟褐色'),
(514,1100002,6,'中国江苏'),
(515,1100002,4,'水洗工艺'),
(516,1100002,7,'纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。'),
(517,1108029,69,'290*260*380mm'),
(518,1108029,48,'美耐皿树脂\n硅胶\n201不锈钢（奥氏体型）'),
(519,1108029,5,'GB 9684-2011'),
(520,1108030,9,'177*88*51mm'),
(521,1108030,48,'美耐皿树脂、聚碳酸酯（pc）'),
(522,1108030,5,'QB 1999-1994'),
(523,1108031,69,'S 145*133*75mm\nM 187.4*172.5*97.4mm\nL 232*213*122.2mm'),
(524,1108031,48,'美耐皿树脂、201不锈钢（奥氏体型）'),
(525,1108031,5,'GB 9684-2011'),
(526,1108032,69,'S 128*88*55mm\nM 150*100*72mm'),
(527,1108032,48,'硅胶'),
(528,1108032,5,'GB 4806.1-1994'),
(529,1109004,9,'10寸/12寸'),
(530,1109004,70,'太阳机芯'),
(531,1109004,1,'水柳木/胡桃木'),
(532,1109004,71,'5号电池*1（本产品不含电池）'),
(533,1109005,1,'榉木'),
(534,1109005,9,'12*4.5*12cm'),
(535,1109005,72,'扫秒机芯'),
(536,1109005,24,'原木色'),
(537,1109005,71,'5号电池*1'),
(538,1109008,11,'颗粒海绵'),
(539,1109008,73,'国际标准钢管'),
(540,1109008,13,'15%亚麻+85%涤'),
(541,1109008,24,'米白色'),
(542,1109008,74,'组装【沙发脚】'),
(543,1109008,67,'2P:1300*930*930mm;   1P:680*930*930mm;    0.5P:670*450*380mm'),
(544,1109034,24,'象牙白'),
(545,1109034,5,'GB/T22779-2008'),
(546,1109034,9,'9.8 x 3.05 x 5.8cm'),
(547,1110002,1,'ABS树脂+PP树脂'),
(548,1110002,75,'约1m'),
(549,1110002,9,'102mm*130mm*85mm'),
(550,1110002,24,'本白/冷灰/樱花粉/静谧蓝'),
(551,1110003,1,'100% 棉'),
(552,1110003,9,'1.5米床品（床笠款）： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*28cm\n1.8米床品（床笠款）：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*28cm\n1.5米床品（床单款）： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品（床单款）：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(553,1110003,5,'GB/T22844-2009'),
(554,1110003,24,'烟草绿/ 木兰黄/ 深茶褐/ 丁子灰'),
(555,1110003,6,'中国江苏'),
(556,1110004,1,'100%棉'),
(557,1110004,9,'1.5米床品（床笠款）： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*28cm\n1.8米床品（床笠款）：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*28cm\n1.5米床品（床单款）： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品（床单款）：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(558,1110004,5,'GB/T22844-2009'),
(559,1110004,24,'烟草绿/ 深茶褐/ 丁子灰/ 木兰黄/ 茶香粉'),
(560,1110004,6,'中国江苏'),
(561,1110007,1,'100% 棉'),
(562,1110007,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*28cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*28cm'),
(563,1110007,5,'GB/T 22844-2009'),
(564,1110007,46,'色织工艺'),
(565,1110007,24,'松柏绿/ 枯茶褐/ 灰白/ 石竹咖'),
(566,1110007,6,'中国江苏'),
(567,1110008,1,'100% 棉'),
(568,1110008,9,'1.5M床：245*250cm\n1.8M床：245*270cm'),
(569,1110008,24,'天蓝色/ 烟草色/ 茶香粉/ 蜜橙/ 千岁绿/ 荧光绿/ 青蓝/ 伽罗色'),
(570,1110008,5,'GB 18401-2009 B类'),
(571,1110008,6,'中国江苏'),
(572,1110013,16,'S号 最长拉伸2.5m\nM号 最长拉伸4m'),
(573,1110013,76,'s  15公斤以下\nm  30公斤以下'),
(574,1110013,48,'塑胶（ABS TPR）\n耐拉反光涤纶带\n锌合金钩'),
(575,1110013,5,'Q/PM002-2016'),
(576,1110013,26,'符合RoHs六项检测'),
(577,1110014,16,'S号 最长拉绳2.5m\nM号 最长拉伸4m'),
(578,1110014,76,'15-30kg'),
(579,1110014,1,'塑胶（ABS TPR）\n耐拉反光涤纶带\n锌合金钩'),
(580,1110014,24,'日式木纹色'),
(581,1110014,5,'Q/PM002-2016'),
(582,1110014,26,'符合RoHs六项检测'),
(583,1110015,16,'S号 最长拉绳2.5M'),
(584,1110015,76,'S 10-15kg\nM 15-30KG'),
(585,1110015,48,'塑胶（ABS TPR）\n高强耐拉反光涤纶带\n锌合金钩'),
(586,1110015,24,'迷彩'),
(587,1110015,5,'Q/PM002-2016'),
(588,1110015,26,'符合RoHs六项检测'),
(589,1110016,9,'188*98*30MM'),
(590,1110016,48,'塑胶（ABS PVC）硅胶'),
(591,1110016,24,'蓝色/粉色'),
(592,1110016,5,'Q/PM001-2016'),
(593,1110016,26,'符合RoHs六项检测'),
(594,1110016,21,'合格品'),
(595,1110016,7,'因宠物模特选择范围有限，故让小萨出镜，其实这款更适合猫咪和小狗用哦。'),
(596,1110017,16,'小剪刀*1+中号理毛梳*1+针梳*1'),
(597,1110017,48,'合金钢、不锈钢针、塑胶（PP TPR）'),
(598,1110017,24,'白黑'),
(599,1110017,5,'Q/PM001-2016\nQ/PM003-2016'),
(600,1110017,26,'符合RoHs六项检测'),
(601,1110018,16,'大剪刀*1+大号钢针梳*1+双排针梳*1'),
(602,1110018,48,'合金钢、不锈钢针、塑胶（PP TPR）'),
(603,1110018,24,'白黑'),
(604,1110018,5,'Q/PM001-2016\nQ/PM003-2016'),
(605,1110018,26,'符合RoHs六项检测'),
(606,1110019,16,'宠物安全指甲剪+指甲锉'),
(607,1110019,48,'合金钢 \n塑胶（TPR）'),
(608,1110019,5,'Q/PM003-2016'),
(609,1110019,26,'符合RoHs六项检测'),
(610,1115023,9,'200*230cm'),
(611,1115023,8,'1500g'),
(612,1115023,5,'GB/T 24252-2009'),
(613,1115023,11,'100%桑蚕丝'),
(614,1115023,62,'100%纯棉纱布'),
(615,1115023,28,'GB 18401-2010 B类'),
(616,1115028,1,'100% 棉'),
(617,1115028,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*28cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*28cm'),
(618,1115028,5,'GB/T 22844-2009'),
(619,1115028,46,'色织工艺'),
(620,1115028,24,'黑茶条纹/ 若绿条纹/ 缥蓝条纹/ 素麻条纹'),
(621,1115028,6,'中国江苏'),
(622,1115052,9,'直径50cm*高5cm'),
(623,1115052,1,'席面：蔺草/ 包边：65%聚酯纤维 35%棉 / 内芯：EPE'),
(624,1115052,5,'QB/T 2934-2008'),
(625,1115052,6,'中国浙江'),
(626,1115053,9,'1.5米草席： 草席：150*195cm/ 枕套：48*74cm*2\n1.8米草席：草席：180*200cm/ 枕套：枕套：48*74cm*2'),
(627,1115053,1,'席面：蔺草/  枕套面：蔺草/ 包边：65% 聚酯纤维  35% 棉/ 枕套背面：100% 聚酯纤维'),
(628,1115053,5,'QB/T 2934-2008'),
(629,1115053,6,'中国浙江'),
(630,1116030,77,'厄瓜多尔玫瑰'),
(631,1116030,78,'音乐盒'),
(632,1116030,67,'直径10.5cm*高17cm'),
(633,1116030,24,'黑色花朵+粉色底座'),
(634,1116031,77,'厄瓜多尔玫瑰'),
(635,1116031,78,'音乐盒'),
(636,1116031,67,'直径10.5cm*高17cm'),
(637,1116031,24,'渐变粉花朵+灰色底座'),
(638,1116032,79,'铝合金+布艺'),
(639,1116032,11,'高回弹海绵'),
(640,1116032,80,'840*1250*1090mm'),
(641,1116032,81,'550*445*450mm'),
(642,1116032,68,'自行组装'),
(643,1116032,82,'1.周六日暂无法发货，周末订单延至周一发货，请知悉！\n2.本产品配送范围：江浙沪、安徽、山东、福建、江西、湖北、河南、北京、天津、湖南、河北、山西、陕西、重庆、四川、海南、广西、贵州、云南、广东、辽宁、甘肃、宁夏、青海、内蒙古、吉林、黑龙江、新疆、西藏（航空件）\n3.本产品配送整件，不包安装，收到货物后，请自行按照产品说明书进行组装。如果组装时碰到无法解决的问题，可联系客服获取指导。'),
(644,1116033,83,'高弹力进口网布'),
(645,1116033,84,'PU'),
(646,1116033,73,'烤漆钢+工程塑料'),
(647,1116033,85,'PA万向椅轮'),
(648,1116033,86,'三弘气压杆'),
(649,1116033,67,'700*700*1160mm'),
(650,1116033,68,'自行组装'),
(651,1116033,82,'1.周六日暂无法发货，周末订单延至周一发货，请知悉！\n2.本产品配送范围：江浙沪、安徽、山东、福建、江西、湖北、河南、北京、天津、湖南、河北、山西、陕西、重庆、四川、海南、广西、贵州、云南、广东、辽宁、甘肃、宁夏、青海、内蒙古、吉林、黑龙江、新疆、西藏（航空件）\n3.本产品配送整件，不包安装，收到货物后，请自行按照产品说明书进行组装。如果组装时碰到无法解决的问题，可联系客服获取指导。'),
(652,1125016,1,'树脂'),
(653,1125016,24,'黄色/蓝色'),
(654,1125016,9,'129mm*96mm*302mm'),
(655,1125016,87,'收纳型桌面摆件'),
(656,1125017,1,'陶瓷'),
(657,1125017,24,'粉色/哑黑'),
(658,1125017,9,'160mm*145mm*135mm'),
(659,1125017,87,'桌面摆件'),
(660,1127003,5,'QB/T 1952.2-2011'),
(661,1127003,88,'独立袋装弹簧'),
(662,1127003,89,'卧室、榻榻米'),
(663,1127003,90,'进口乳胶'),
(664,1127003,91,'软硬质海绵'),
(665,1127003,92,'25cm'),
(666,1127003,93,'以客服回复可配送范围为准'),
(667,1127003,15,'150*200cm  54+-3kg\n180*200cm   62+-3kg'),
(668,1127038,1,'100% 棉'),
(669,1127038,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(670,1127038,24,'星空蓝'),
(671,1127038,5,'GB/T 22844-2009'),
(672,1127038,6,'中国山东'),
(673,1127039,1,'100% 棉'),
(674,1127039,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(675,1127039,24,'青粉拼接'),
(676,1127039,5,'GB/T 22844-2009'),
(677,1127039,6,'中国山东'),
(678,1127052,10,'100%棉'),
(679,1127052,11,'100%棉'),
(680,1127052,5,'GB/T22796-2009'),
(681,1127052,28,'GB18401-2010 A类'),
(682,1127052,16,'150*200cm/180*200cm'),
(683,1128002,9,'160*230cm'),
(684,1128002,24,'青粉拼接'),
(685,1128002,6,'中国北京'),
(686,1128002,1,'绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉'),
(687,1130037,16,'40*40*7cm'),
(688,1130037,11,'100%聚酯纤维'),
(689,1130037,94,'330g'),
(690,1130037,10,'100%棉'),
(691,1130037,24,'米白/深褐'),
(692,1130037,5,'GB/T 22843-2009'),
(693,1130037,28,'GB 18401-2010 B类'),
(694,1130038,11,'100%聚酯纤维'),
(695,1130038,8,'340g/725g'),
(696,1130038,10,'100%聚酯纤维'),
(697,1130038,5,'FZ/T 62011.3-2008'),
(698,1130038,26,'GB 18401-2010 B类'),
(699,1130038,21,'合格品'),
(700,1130039,11,'100%聚酯纤维'),
(701,1130039,10,'100%聚酯纤维'),
(702,1130039,8,'170g/250g'),
(703,1130039,5,'FZ/T 62011.3-2008'),
(704,1130041,16,'45*45cm'),
(705,1130041,15,'0.4-0.6kg'),
(706,1130041,48,'面100%羊毛皮\n衬100%聚酯纤维'),
(707,1130041,5,'QB/T2972-2008'),
(708,1130042,16,'小号：90*50cm+-2\n双拼：180*55cm+-2'),
(709,1130042,15,'小号：0.6-0.9kg\n双拼：1.2-2kg'),
(710,1130042,48,'100%羊毛皮'),
(711,1130042,5,'QB/T 2972-2008'),
(712,1130042,21,'一等品'),
(713,1130042,95,'黑色商品接触液体会有少量掉色'),
(714,1130049,10,'65%莱赛尔（天丝）35%亚麻'),
(715,1130049,11,'100%桑蚕丝'),
(716,1130049,5,'GB/T 24252-2009'),
(717,1130049,26,'GB 18401-2010 B类'),
(718,1130049,21,'合格品'),
(719,1130049,94,'360g（小）/470g（大）'),
(720,1130056,1,'席面：头层牛皮革/ 枕套面：头层牛皮革/ 枕套背面：100%聚酯纤维'),
(721,1130056,9,'1.5米床：牛皮席：150x200cm/ 枕套：74x48cmx2\n1.8米床：牛皮席：180x200cm/ 枕套：74x48cmx2'),
(722,1130056,96,'铬植结合鞣'),
(723,1130056,24,'苋红色/ 象牙黄/ 橄榄棕/ 亮银灰'),
(724,1130056,5,'QB/T 4204-2011'),
(725,1130056,6,'中国重庆'),
(726,1131017,1,'席面：毛竹\n包边：100%棉\n背面：100%棉'),
(727,1131017,9,'150x195cm/ 180x200cm'),
(728,1131017,24,'抹茶色'),
(729,1131017,5,'LY/T 1843-2009'),
(730,1131017,6,'中国浙江'),
(731,1134022,1,'绒面：100% 聚酯纤维\n背面：TPR'),
(732,1134022,24,'多色条纹'),
(733,1134022,9,'86*61cm'),
(734,1134022,6,'中国浙江'),
(735,1134022,5,'QB/T 3000-2008'),
(736,1134030,69,'方形38*38*3cm\n圆形 φ38*3cm'),
(737,1134030,8,'方形：185g\n圆形155g'),
(738,1134030,10,'100%聚酯纤维'),
(739,1134030,5,'GB/T 22843-2009'),
(740,1134030,26,'GB18401-2010 B类'),
(741,1134030,21,'合格品'),
(742,1134032,69,'方形：380*380*30mm\n圆形：φ380*30mm'),
(743,1134032,11,'聚氨酯'),
(744,1134032,8,'方形：185g\n圆形：155g'),
(745,1134032,10,'100%聚酯纤维'),
(746,1134032,5,'GB/T 22843-2009'),
(747,1134032,28,'GB18401-2010 B类'),
(748,1134056,1,'70%棉，30%莫代尔'),
(749,1134056,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(750,1134056,24,'砖釉红/菡萏粉/浅豆绿/青丝灰'),
(751,1134056,5,'GB/T 22844-2009'),
(752,1134056,6,'中国江苏'),
(753,1135000,1,'100%棉'),
(754,1135000,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(755,1135000,24,'蒂芙尼蓝/ 墨黑/ 亮橙/ 浅灰'),
(756,1135000,5,'GB/T 22844-2009'),
(757,1135000,6,'中国江苏'),
(758,1135001,1,'100%棉'),
(759,1135001,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(760,1135001,24,'草绿色'),
(761,1135001,5,'GB/T 22844-2009'),
(762,1135001,6,'中国江苏'),
(763,1135002,1,'100% 桑蚕丝'),
(764,1135002,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(765,1135002,24,'浅杏粉/ 玛瑙红/ 烟白灰'),
(766,1135002,6,'中国四川'),
(767,1135002,5,'GB/T22796-2009'),
(768,1135050,97,'PP塑料'),
(769,1135050,67,'52*42*40cm'),
(770,1135050,98,'2.105kg'),
(771,1135050,99,'3.215kg'),
(772,1135050,5,'GB 9688-1988'),
(773,1135050,93,'请咨询客服'),
(774,1135051,1,'100% 聚酯纤维'),
(775,1135051,9,'1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。'),
(776,1135051,5,'GB/T 19817-2005'),
(777,1135051,24,'米色/ 蓝灰/ 烟灰/ 咖色'),
(778,1135051,6,'中国浙江'),
(779,1135051,100,'80%左右'),
(780,1135052,1,'36%黏胶纤维/  10%亚麻/ 54%聚酯纤维'),
(781,1135052,24,'深卡其/ 米灰/ 灰蓝/ 粉橙'),
(782,1135052,6,'中国浙江'),
(783,1135052,5,'GB/T 19817-2005'),
(784,1135052,9,'1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。'),
(785,1135052,100,'60%-70%左右'),
(786,1135053,1,'47%黏胶纤维/  53%聚酯纤维'),
(787,1135053,9,'1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。'),
(788,1135053,24,'山岩灰'),
(789,1135053,5,'GB/T 19817-2005'),
(790,1135053,6,'中国浙江'),
(791,1135053,100,'70-80%左右'),
(792,1135054,1,'36% 聚酯纤维 74% 粘胶纤维'),
(793,1135054,9,'1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。'),
(794,1135054,24,'蓝色/ 绿色/ 黄色/ 红色'),
(795,1135054,5,'GB/T 19817-2005'),
(796,1135054,6,'中国浙江'),
(797,1135054,101,'80%左右'),
(798,1135055,1,'52% 黏胶纤维  48%聚酯纤维'),
(799,1135055,9,'1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。'),
(800,1135055,24,'米灰几何纹/ 橙灰几何纹/ 蓝灰几何纹'),
(801,1135055,5,'GB/T 19817-2005'),
(802,1135055,6,'中国浙江'),
(803,1135055,100,'70%-80%左右'),
(804,1135056,1,'54% 黏胶纤维/ 46%聚酯纤维'),
(805,1135056,9,'1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。'),
(806,1135056,5,'GB/T 19817-2005'),
(807,1135056,24,'蓝条纹/ 粉条纹'),
(808,1135056,6,'中国浙江'),
(809,1135056,100,'60%-70%左右'),
(810,1135057,1,'100% 聚酯纤维'),
(811,1135057,9,'1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。'),
(812,1135057,5,'GB/T 19817-2005'),
(813,1135057,24,'莹白'),
(814,1135057,6,'中国浙江'),
(815,1135058,16,'35*45cm'),
(816,1135058,11,'聚苯乙烯泡沫粒子'),
(817,1135058,8,'260g'),
(818,1135058,10,'100%棉'),
(819,1135058,5,'GB/T 22843-2009'),
(820,1135058,28,'GB 8401-2010 B类'),
(821,1138000,1,'面料: 96% 涤纶 4%氨纶\n填充物：100%聚酯纤维'),
(822,1138000,9,'直径40cm/ 直径55cm'),
(823,1138000,5,'GB/T 22843-2009'),
(824,1138000,6,'中国浙江'),
(825,1138000,24,'天青色/ 松叶绿/ 珊瑚红/ 姜黄色/ 香芋粉/ 卡其色/ 深咖色/ 海军蓝'),
(826,1138001,1,'抱枕套：100%棉\n抱枕芯外壳：100%棉\n绣线：100%聚酯纤维\n填充：100%聚酯纤维'),
(827,1138001,24,'静谧蓝/ 古典金/ 动感绿/ 浪漫粉'),
(828,1138001,9,'45 x 45cm'),
(829,1138001,5,'GB/T 22843-2009'),
(830,1138001,6,'中国山东'),
(831,1143015,1,'席面：蔺草/ 包边：100% 棉'),
(832,1143015,5,'QB/T 2934-2008'),
(833,1143015,6,'中国浙江'),
(834,1143015,24,'抹茶色'),
(835,1147045,24,'灰黄条纹'),
(836,1147045,9,'160*230cm'),
(837,1147045,1,'绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉'),
(838,1147045,6,'中国北京'),
(839,1147046,24,'条纹粉间'),
(840,1147046,9,'160*230cm'),
(841,1147046,1,'绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉'),
(842,1147046,6,'中国北京'),
(843,1147047,9,'160*230cm'),
(844,1147047,1,'绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉'),
(845,1147047,24,'蓝粉拼接'),
(846,1147047,6,'中国北京'),
(847,1147048,9,'160*230cm'),
(848,1147048,24,'蓝灰格'),
(849,1147048,1,'绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉'),
(850,1147048,6,'中国北京'),
(851,1151012,1,'100% 棉'),
(852,1151012,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(853,1151012,24,'素雅灰'),
(854,1151012,5,'GB/T 22844-2009'),
(855,1151012,6,'中国山东'),
(856,1151013,1,'100% 棉'),
(857,1151013,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(858,1151013,24,'胭脂粉'),
(859,1151013,5,'GB/T 22844-2009'),
(860,1151013,6,'中国山东'),
(861,1152161,1,'12%长麻/ 12%竹浆纤维/ 76%莱赛尔'),
(862,1152161,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(863,1152161,6,'中国江苏'),
(864,1152161,5,'GB/T 22844-2009'),
(865,1155000,1,'100% 棉'),
(866,1155000,9,'1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm'),
(867,1155000,24,'条纹绿格'),
(868,1155000,5,'GB/T 22844-2009'),
(869,1155000,6,'中国山东'),
(870,1181000,16,'组合一：AB面独立弹簧床垫 进口乳胶150*200cm*1+可水洗抗菌防螨丝羽绒枕*2。\n组合二：AB面独立弹簧床垫 进口乳胶180*200cm*1+可水洗抗菌防螨丝羽绒枕*2'),
(871,1181000,102,'活动时间：5月8日0点-5月14日24点。\n请在以上时间段内购买，其余时间均不可享受组合装优惠。');

/*Table structure for table `nideshop_goods_gallery` */

DROP TABLE IF EXISTS `nideshop_goods_gallery`;

CREATE TABLE `nideshop_goods_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=688 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_goods_gallery` */

insert  into `nideshop_goods_gallery`(`id`,`goods_id`,`img_url`,`img_desc`,`sort_order`) values 
(681,1001001001,'https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_03.jpg','',5),
(682,1001001001,'https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_04.jpg','',5),
(683,1001001001,'https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_05.jpg','',5),
(684,1001002001,'https://shop.htmlk.cn/static/goods/hometextile/towel/towel_01.jpg','',5),
(685,1001002001,'https://shop.htmlk.cn/static/goods/hometextile/towel/towel_02.jpg','',5),
(686,1001002001,'https://shop.htmlk.cn/static/goods/hometextile/towel/towel_03.jpg','',5),
(687,1001002001,'','',5);

/*Table structure for table `nideshop_goods_issue` */

DROP TABLE IF EXISTS `nideshop_goods_issue`;

CREATE TABLE `nideshop_goods_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` text,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_goods_issue` */

insert  into `nideshop_goods_issue`(`id`,`goods_id`,`question`,`answer`) values 
(1,'1127052','购买运费如何收取？','单笔订单金额（不含运费）满88元免邮费；不满88元，每单收取10元运费。\n(港澳台地区需满'),
(2,'1127052','使用什么快递发货？','严选默认使用顺丰快递发货（个别商品使用其他快递），配送范围覆盖全国大部分地区（港澳台地区除'),
(3,'1127052','如何申请退货？','1.自收到商品之日起30日内，顾客可申请无忧退货，退款将原路返还，不同的银行处理时间不同，'),
(4,'1127052','如何开具发票？','1.如需开具普通发票，请在下单时选择“我要开发票”并填写相关信息（APP仅限2.4.0及以');

/*Table structure for table `nideshop_goods_specification` */

DROP TABLE IF EXISTS `nideshop_goods_specification`;

CREATE TABLE `nideshop_goods_specification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `specification_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(50) NOT NULL DEFAULT '',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `specification_id` (`specification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='商品对应规格表值表';

/*Data for the table `nideshop_goods_specification` */

insert  into `nideshop_goods_specification`(`id`,`goods_id`,`specification_id`,`value`,`pic_url`) values 
(1,1181000,1,'1.5m床垫*1+枕头*2',''),
(2,1181000,1,'1.8m床垫*1+枕头*2',''),
(3,1181000,2,'浅杏粉','http://yanxuan.nosdn.127.net/10022c73fa7aa75c2c0d736e96cc56d5.png?quality=90&thumbnail=200x200&imageView'),
(4,1181000,2,'玛瑙红','http://yanxuan.nosdn.127.net/29442127f431a1a1801c195905319427.png?quality=90&thumbnail=200x200&imageView'),
(5,1181000,2,'烟白灰','http://yanxuan.nosdn.127.net/36f64a7161b67e7fb8ea45be32ecfa25.png?quality=90&thumbnail=200x200&imageView');

/*Table structure for table `nideshop_order` */

DROP TABLE IF EXISTS `nideshop_order`;

CREATE TABLE `nideshop_order` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` mediumint(4) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `wl_time` varchar(60) NOT NULL DEFAULT '' COMMENT '立即配送时间',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `actual_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际需要支付的金额',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(11) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(11) unsigned NOT NULL DEFAULT '0',
  `freight_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送费用',
  `coupon_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '使用的优惠券id',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `coupon_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `callback_status` enum('true','false') DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `pay_id` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_order` */

insert  into `nideshop_order`(`id`,`order_sn`,`user_id`,`order_status`,`shipping_status`,`pay_status`,`consignee`,`country`,`province`,`city`,`district`,`address`,`wl_time`,`mobile`,`postscript`,`shipping_fee`,`pay_name`,`pay_id`,`actual_price`,`integral`,`integral_money`,`order_price`,`goods_price`,`add_time`,`confirm_time`,`pay_time`,`freight_price`,`coupon_id`,`parent_id`,`coupon_price`,`callback_status`) values 
(36,'20180202164402904408',14,201,0,2,'共鸣',0,0,0,0,'一间科技酒店深圳分店1234','0.00-24.00','1564676867','',0.00,'',0,0.01,0,0.00,0.01,0.01,1520930642,0,0,0,0,0,0.00,'true'),
(37,'20180202165435191534',21,0,0,0,'民工你',0,0,0,0,'一间科技酒店深圳分店15646169194','0.00-24.00','16796767667','',0.00,'',0,0.01,0,0.00,0.01,0.01,1520931275,0,0,0,0,0,0.00,'true'),
(38,'20180202174919764323',25,201,0,2,'风景',0,0,0,0,'一间科技酒店深圳分店2008','0.00-24.00','17756572697','',0.00,'',0,0.01,0,0.00,0.01,0.01,1520934559,0,0,0,0,0,0.00,'true'),
(39,'20180202174958300921',26,201,0,2,'苏',0,0,0,0,'一间科技酒店深圳分店001','0.00-24.00','18600000000','',0.00,'',0,0.01,0,0.00,0.01,0.01,1520934598,0,0,0,0,0,0.00,'true'),
(40,'20180202175119743967',28,201,0,2,'呀mgmpm',0,0,0,0,'一间科技酒店深圳分店458','0.00-24.00','18466767676','',0.00,'',0,0.01,0,0.00,0.01,0.01,1520934679,0,0,0,0,0,0.00,'true'),
(41,'20180203172311974149',32,201,0,2,'风景',0,0,0,0,'一间科技酒店深圳分店808','0.00-24.00','17756572697','',0.00,'',0,0.01,0,0.00,0.01,0.01,1521019391,0,0,0,0,0,0.00,'true'),
(42,'20180203172527994476',32,201,0,2,'风景',0,0,0,0,'一间科技酒店深圳分店9090','17:00-18:00','17756572697','',0.00,'',0,0.01,0,0.00,0.01,0.01,1521019527,0,0,0,0,0,0.00,'true'),
(43,'20180203172635119561',31,201,0,2,'123123',0,0,0,0,'一间科技酒店深圳分店12312','4:00-4:00','23123123','',0.00,'',0,0.01,0,0.00,0.01,0.01,1521019595,0,0,0,0,0,0.00,'true'),
(44,'20180203182951796431',34,201,0,2,'几次吧',0,0,0,0,'深圳七天连锁酒店405','13:00-14:00','18785464664','',0.00,'',0,0.02,0,0.00,0.02,0.02,1521023391,0,0,0,0,0,0.00,'true');

/*Table structure for table `nideshop_order_express` */

DROP TABLE IF EXISTS `nideshop_order_express`;

CREATE TABLE `nideshop_order_express` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shipper_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shipper_name` varchar(120) NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `shipper_code` varchar(60) NOT NULL DEFAULT '' COMMENT '物流公司代码',
  `logistic_code` varchar(20) NOT NULL DEFAULT '' COMMENT '快递单号',
  `traces` varchar(2000) NOT NULL DEFAULT '' COMMENT '物流跟踪信息',
  `is_finish` tinyint(1) NOT NULL DEFAULT '0',
  `request_count` int(11) DEFAULT '0' COMMENT '总查询次数',
  `request_time` int(11) DEFAULT '0' COMMENT '最近一次向第三方查询物流信息时间',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='订单物流信息表，发货时生成';

/*Data for the table `nideshop_order_express` */

/*Table structure for table `nideshop_order_goods` */

DROP TABLE IF EXISTS `nideshop_order_goods`;

CREATE TABLE `nideshop_order_goods` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `retail_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_specifition_name_value` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `goods_specifition_ids` varchar(255) NOT NULL DEFAULT '',
  `list_pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_order_goods` */

insert  into `nideshop_order_goods`(`id`,`order_id`,`goods_id`,`goods_name`,`goods_sn`,`product_id`,`number`,`market_price`,`retail_price`,`goods_specifition_name_value`,`is_real`,`goods_specifition_ids`,`list_pic_url`) values 
(51,41,16777215,'记忆枕头单人慢回弹太空记忆枕头','1001000001',7,1,0.01,0.01,'',0,'','https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_02.jpg'),
(52,42,16777215,'记忆枕头单人慢回弹太空记忆枕头','1001000001',7,1,0.01,0.01,'',0,'','https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_02.jpg'),
(53,43,16777215,'记忆枕头单人慢回弹太空记忆枕头','1001000001',7,1,0.01,0.01,'',0,'','https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_02.jpg'),
(54,44,16777215,'记忆枕头单人慢回弹太空记忆枕头','1001001001',7,2,0.01,0.01,'',0,'','https://shop.htmlk.cn/static/goods/hometextile/pillow/pillow_02.jpg');

/*Table structure for table `nideshop_product` */

DROP TABLE IF EXISTS `nideshop_product`;

CREATE TABLE `nideshop_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_specification_ids` varchar(50) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_number` int(11) unsigned NOT NULL DEFAULT '0',
  `retail_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_product` */

insert  into `nideshop_product`(`id`,`goods_id`,`goods_specification_ids`,`goods_sn`,`goods_number`,`retail_price`) values 
(7,1001001001,'','1001001001',100,0.01),
(245,1001002001,'','1001002001',100,0.01),
(246,1003001001,'','1003001001',100,0.01);

/*Table structure for table `nideshop_region` */

DROP TABLE IF EXISTS `nideshop_region`;

CREATE TABLE `nideshop_region` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4044 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_region` */

insert  into `nideshop_region`(`id`,`parent_id`,`name`,`type`,`agency_id`) values 
(1,0,'中国',0,0),
(2,1,'北京',1,0),
(3,1,'天津',1,0),
(4,1,'河北省',1,0),
(5,1,'山西省',1,0),
(6,1,'内蒙古自治区',1,0),
(7,1,'辽宁省',1,0),
(8,1,'吉林省',1,0),
(9,1,'黑龙江省',1,0),
(10,1,'上海',1,0),
(11,1,'江苏省',1,0),
(12,1,'浙江省',1,0),
(13,1,'安徽省',1,0),
(14,1,'福建省',1,0),
(15,1,'江西省',1,0),
(16,1,'山东省',1,0),
(17,1,'河南省',1,0),
(18,1,'湖北省',1,0),
(19,1,'湖南省',1,0),
(20,1,'广东省',1,0),
(21,1,'广西壮族自治区',1,0),
(22,1,'海南省',1,0),
(23,1,'重庆',1,0),
(24,1,'四川省',1,0),
(25,1,'贵州省',1,0),
(26,1,'云南省',1,0),
(27,1,'西藏自治区',1,0),
(28,1,'陕西省',1,0),
(29,1,'甘肃省',1,0),
(30,1,'青海省',1,0),
(31,1,'宁夏回族自治区',1,0),
(32,1,'新疆维吾尔自治区',1,0),
(33,1,'台湾',1,0),
(34,1,'香港特别行政区',1,0),
(35,1,'澳门特别行政区',1,0),
(36,1,'海外',1,0),
(37,2,'北京市',2,0),
(38,3,'天津市',2,0),
(39,4,'石家庄市',2,0),
(40,4,'唐山市',2,0),
(41,4,'秦皇岛市',2,0),
(42,4,'邯郸市',2,0),
(43,4,'邢台市',2,0),
(44,4,'保定市',2,0),
(45,4,'张家口市',2,0),
(46,4,'承德市',2,0),
(47,4,'沧州市',2,0),
(48,4,'廊坊市',2,0),
(49,4,'衡水市',2,0),
(50,5,'太原市',2,0),
(51,5,'大同市',2,0),
(52,5,'阳泉市',2,0),
(53,5,'长治市',2,0),
(54,5,'晋城市',2,0),
(55,5,'朔州市',2,0),
(56,5,'晋中市',2,0),
(57,5,'运城市',2,0),
(58,5,'忻州市',2,0),
(59,5,'临汾市',2,0),
(60,5,'吕梁市',2,0),
(61,6,'呼和浩特市',2,0),
(62,6,'包头市',2,0),
(63,6,'乌海市',2,0),
(64,6,'赤峰市',2,0),
(65,6,'通辽市',2,0),
(66,6,'鄂尔多斯市',2,0),
(67,6,'呼伦贝尔市',2,0),
(68,6,'巴彦淖尔市',2,0),
(69,6,'乌兰察布市',2,0),
(70,6,'兴安盟',2,0),
(71,6,'锡林郭勒盟',2,0),
(72,6,'阿拉善盟',2,0),
(73,7,'沈阳市',2,0),
(74,7,'大连市',2,0),
(75,7,'鞍山市',2,0),
(76,7,'抚顺市',2,0),
(77,7,'本溪市',2,0),
(78,7,'丹东市',2,0),
(79,7,'锦州市',2,0),
(80,7,'营口市',2,0),
(81,7,'阜新市',2,0),
(82,7,'辽阳市',2,0),
(83,7,'盘锦市',2,0),
(84,7,'铁岭市',2,0),
(85,7,'朝阳市',2,0),
(86,7,'葫芦岛市',2,0),
(87,8,'长春市',2,0),
(88,8,'吉林市',2,0),
(89,8,'四平市',2,0),
(90,8,'辽源市',2,0),
(91,8,'通化市',2,0),
(92,8,'白山市',2,0),
(93,8,'松原市',2,0),
(94,8,'白城市',2,0),
(95,8,'延边朝鲜族自治州',2,0),
(96,9,'哈尔滨市',2,0),
(97,9,'齐齐哈尔市',2,0),
(98,9,'鸡西市',2,0),
(99,9,'鹤岗市',2,0),
(100,9,'双鸭山市',2,0),
(101,9,'大庆市',2,0),
(102,9,'伊春市',2,0),
(103,9,'佳木斯市',2,0),
(104,9,'七台河市',2,0),
(105,9,'牡丹江市',2,0),
(106,9,'黑河市',2,0),
(107,9,'绥化市',2,0),
(108,9,'大兴安岭地区',2,0),
(109,10,'上海市',2,0),
(110,11,'南京市',2,0),
(111,11,'无锡市',2,0),
(112,11,'徐州市',2,0),
(113,11,'常州市',2,0),
(114,11,'苏州市',2,0),
(115,11,'南通市',2,0),
(116,11,'连云港市',2,0),
(117,11,'淮安市',2,0),
(118,11,'盐城市',2,0),
(119,11,'扬州市',2,0),
(120,11,'镇江市',2,0),
(121,11,'泰州市',2,0),
(122,11,'宿迁市',2,0),
(123,12,'杭州市',2,0),
(124,12,'宁波市',2,0),
(125,12,'温州市',2,0),
(126,12,'嘉兴市',2,0),
(127,12,'湖州市',2,0),
(128,12,'绍兴市',2,0),
(129,12,'金华市',2,0),
(130,12,'衢州市',2,0),
(131,12,'舟山市',2,0),
(132,12,'台州市',2,0),
(133,12,'丽水市',2,0),
(134,13,'合肥市',2,0),
(135,13,'芜湖市',2,0),
(136,13,'蚌埠市',2,0),
(137,13,'淮南市',2,0),
(138,13,'马鞍山市',2,0),
(139,13,'淮北市',2,0),
(140,13,'铜陵市',2,0),
(141,13,'安庆市',2,0),
(142,13,'黄山市',2,0),
(143,13,'滁州市',2,0),
(144,13,'阜阳市',2,0),
(145,13,'宿州市',2,0),
(146,13,'六安市',2,0),
(147,13,'亳州市',2,0),
(148,13,'池州市',2,0),
(149,13,'宣城市',2,0),
(150,14,'福州市',2,0),
(151,14,'厦门市',2,0),
(152,14,'莆田市',2,0),
(153,14,'三明市',2,0),
(154,14,'泉州市',2,0),
(155,14,'漳州市',2,0),
(156,14,'南平市',2,0),
(157,14,'龙岩市',2,0),
(158,14,'宁德市',2,0),
(159,15,'南昌市',2,0),
(160,15,'景德镇市',2,0),
(161,15,'萍乡市',2,0),
(162,15,'九江市',2,0),
(163,15,'新余市',2,0),
(164,15,'鹰潭市',2,0),
(165,15,'赣州市',2,0),
(166,15,'吉安市',2,0),
(167,15,'宜春市',2,0),
(168,15,'抚州市',2,0),
(169,15,'上饶市',2,0),
(170,16,'济南市',2,0),
(171,16,'青岛市',2,0),
(172,16,'淄博市',2,0),
(173,16,'枣庄市',2,0),
(174,16,'东营市',2,0),
(175,16,'烟台市',2,0),
(176,16,'潍坊市',2,0),
(177,16,'济宁市',2,0),
(178,16,'泰安市',2,0),
(179,16,'威海市',2,0),
(180,16,'日照市',2,0),
(181,16,'莱芜市',2,0),
(182,16,'临沂市',2,0),
(183,16,'德州市',2,0),
(184,16,'聊城市',2,0),
(185,16,'滨州市',2,0),
(186,16,'菏泽市',2,0),
(187,17,'郑州市',2,0),
(188,17,'开封市',2,0),
(189,17,'洛阳市',2,0),
(190,17,'平顶山市',2,0),
(191,17,'安阳市',2,0),
(192,17,'鹤壁市',2,0),
(193,17,'新乡市',2,0),
(194,17,'焦作市',2,0),
(195,17,'濮阳市',2,0),
(196,17,'许昌市',2,0),
(197,17,'漯河市',2,0),
(198,17,'三门峡市',2,0),
(199,17,'南阳市',2,0),
(200,17,'商丘市',2,0),
(201,17,'信阳市',2,0),
(202,17,'周口市',2,0),
(203,17,'驻马店市',2,0),
(204,18,'武汉市',2,0),
(205,18,'黄石市',2,0),
(206,18,'十堰市',2,0),
(207,18,'宜昌市',2,0),
(208,18,'襄阳市',2,0),
(209,18,'鄂州市',2,0),
(210,18,'荆门市',2,0),
(211,18,'孝感市',2,0),
(212,18,'荆州市',2,0),
(213,18,'黄冈市',2,0),
(214,18,'咸宁市',2,0),
(215,18,'随州市',2,0),
(216,18,'恩施土家族苗族自治州',2,0),
(217,19,'长沙市',2,0),
(218,19,'株洲市',2,0),
(219,19,'湘潭市',2,0),
(220,19,'衡阳市',2,0),
(221,19,'邵阳市',2,0),
(222,19,'岳阳市',2,0),
(223,19,'常德市',2,0),
(224,19,'张家界市',2,0),
(225,19,'益阳市',2,0),
(226,19,'郴州市',2,0),
(227,19,'永州市',2,0),
(228,19,'怀化市',2,0),
(229,19,'娄底市',2,0),
(230,19,'湘西土家族苗族自治州',2,0),
(231,20,'广州市',2,0),
(232,20,'韶关市',2,0),
(233,20,'深圳市',2,0),
(234,20,'珠海市',2,0),
(235,20,'汕头市',2,0),
(236,20,'佛山市',2,0),
(237,20,'江门市',2,0),
(238,20,'湛江市',2,0),
(239,20,'茂名市',2,0),
(240,20,'肇庆市',2,0),
(241,20,'惠州市',2,0),
(242,20,'梅州市',2,0),
(243,20,'汕尾市',2,0),
(244,20,'河源市',2,0),
(245,20,'阳江市',2,0),
(246,20,'清远市',2,0),
(247,20,'东莞市',2,0),
(248,20,'中山市',2,0),
(249,20,'东沙群岛',2,0),
(250,20,'潮州市',2,0),
(251,20,'揭阳市',2,0),
(252,20,'云浮市',2,0),
(253,21,'南宁市',2,0),
(254,21,'柳州市',2,0),
(255,21,'桂林市',2,0),
(256,21,'梧州市',2,0),
(257,21,'北海市',2,0),
(258,21,'防城港市',2,0),
(259,21,'钦州市',2,0),
(260,21,'贵港市',2,0),
(261,21,'玉林市',2,0),
(262,21,'百色市',2,0),
(263,21,'贺州市',2,0),
(264,21,'河池市',2,0),
(265,21,'来宾市',2,0),
(266,21,'崇左市',2,0),
(267,22,'海口市',2,0),
(268,22,'三亚市',2,0),
(269,22,'三沙市',2,0),
(270,23,'重庆市',2,0),
(271,24,'成都市',2,0),
(272,24,'自贡市',2,0),
(273,24,'攀枝花市',2,0),
(274,24,'泸州市',2,0),
(275,24,'德阳市',2,0),
(276,24,'绵阳市',2,0),
(277,24,'广元市',2,0),
(278,24,'遂宁市',2,0),
(279,24,'内江市',2,0),
(280,24,'乐山市',2,0),
(281,24,'南充市',2,0),
(282,24,'眉山市',2,0),
(283,24,'宜宾市',2,0),
(284,24,'广安市',2,0),
(285,24,'达州市',2,0),
(286,24,'雅安市',2,0),
(287,24,'巴中市',2,0),
(288,24,'资阳市',2,0),
(289,24,'阿坝藏族羌族自治州',2,0),
(290,24,'甘孜藏族自治州',2,0),
(291,24,'凉山彝族自治州',2,0),
(292,25,'贵阳市',2,0),
(293,25,'六盘水市',2,0),
(294,25,'遵义市',2,0),
(295,25,'安顺市',2,0),
(296,25,'铜仁市',2,0),
(297,25,'黔西南布依族苗族自治州',2,0),
(298,25,'毕节市',2,0),
(299,25,'黔东南苗族侗族自治州',2,0),
(300,25,'黔南布依族苗族自治州',2,0),
(301,26,'昆明市',2,0),
(302,26,'曲靖市',2,0),
(303,26,'玉溪市',2,0),
(304,26,'保山市',2,0),
(305,26,'昭通市',2,0),
(306,26,'丽江市',2,0),
(307,26,'普洱市',2,0),
(308,26,'临沧市',2,0),
(309,26,'楚雄彝族自治州',2,0),
(310,26,'红河哈尼族彝族自治州',2,0),
(311,26,'文山壮族苗族自治州',2,0),
(312,26,'西双版纳傣族自治州',2,0),
(313,26,'大理白族自治州',2,0),
(314,26,'德宏傣族景颇族自治州',2,0),
(315,26,'怒江傈僳族自治州',2,0),
(316,26,'迪庆藏族自治州',2,0),
(317,27,'拉萨市',2,0),
(318,27,'昌都市',2,0),
(319,27,'山南地区',2,0),
(320,27,'日喀则市',2,0),
(321,27,'那曲地区',2,0),
(322,27,'阿里地区',2,0),
(323,27,'林芝市',2,0),
(324,28,'西安市',2,0),
(325,28,'铜川市',2,0),
(326,28,'宝鸡市',2,0),
(327,28,'咸阳市',2,0),
(328,28,'渭南市',2,0),
(329,28,'延安市',2,0),
(330,28,'汉中市',2,0),
(331,28,'榆林市',2,0),
(332,28,'安康市',2,0),
(333,28,'商洛市',2,0),
(334,29,'兰州市',2,0),
(335,29,'嘉峪关市',2,0),
(336,29,'金昌市',2,0),
(337,29,'白银市',2,0),
(338,29,'天水市',2,0),
(339,29,'武威市',2,0),
(340,29,'张掖市',2,0),
(341,29,'平凉市',2,0),
(342,29,'酒泉市',2,0),
(343,29,'庆阳市',2,0),
(344,29,'定西市',2,0),
(345,29,'陇南市',2,0),
(346,29,'临夏回族自治州',2,0),
(347,29,'甘南藏族自治州',2,0),
(348,30,'西宁市',2,0),
(349,30,'海东市',2,0),
(350,30,'海北藏族自治州',2,0),
(351,30,'黄南藏族自治州',2,0),
(352,30,'海南藏族自治州',2,0),
(353,30,'果洛藏族自治州',2,0),
(354,30,'玉树藏族自治州',2,0),
(355,30,'海西蒙古族藏族自治州',2,0),
(356,31,'银川市',2,0),
(357,31,'石嘴山市',2,0),
(358,31,'吴忠市',2,0),
(359,31,'固原市',2,0),
(360,31,'中卫市',2,0),
(361,32,'乌鲁木齐市',2,0),
(362,32,'克拉玛依市',2,0),
(363,32,'吐鲁番市',2,0),
(364,32,'哈密地区',2,0),
(365,32,'昌吉回族自治州',2,0),
(366,32,'博尔塔拉蒙古自治州',2,0),
(367,32,'巴音郭楞蒙古自治州',2,0),
(368,32,'阿克苏地区',2,0),
(369,32,'克孜勒苏柯尔克孜自治州',2,0),
(370,32,'喀什地区',2,0),
(371,32,'和田地区',2,0),
(372,32,'伊犁哈萨克自治州',2,0),
(373,32,'塔城地区',2,0),
(374,32,'阿勒泰地区',2,0),
(375,33,'台北市',2,0),
(376,33,'高雄市',2,0),
(377,33,'台南市',2,0),
(378,33,'台中市',2,0),
(379,33,'金门县',2,0),
(380,33,'南投县',2,0),
(381,33,'基隆市',2,0),
(382,33,'新竹市',2,0),
(383,33,'嘉义市',2,0),
(384,33,'新北市',2,0),
(385,33,'宜兰县',2,0),
(386,33,'新竹县',2,0),
(387,33,'桃园县',2,0),
(388,33,'苗栗县',2,0),
(389,33,'彰化县',2,0),
(390,33,'嘉义县',2,0),
(391,33,'云林县',2,0),
(392,33,'屏东县',2,0),
(393,33,'台东县',2,0),
(394,33,'花莲县',2,0),
(395,33,'澎湖县',2,0),
(396,33,'连江县',2,0),
(397,34,'香港岛',2,0),
(398,34,'九龙',2,0),
(399,34,'新界',2,0),
(400,35,'澳门半岛',2,0),
(401,35,'离岛',2,0),
(402,36,'海外',2,0),
(403,37,'东城区',3,0),
(404,37,'西城区',3,0),
(405,37,'崇文区',3,0),
(406,37,'宣武区',3,0),
(407,37,'朝阳区',3,0),
(408,37,'丰台区',3,0),
(409,37,'石景山区',3,0),
(410,37,'海淀区',3,0),
(411,37,'门头沟区',3,0),
(412,37,'房山区',3,0),
(413,37,'通州区',3,0),
(414,37,'顺义区',3,0),
(415,37,'昌平区',3,0),
(416,37,'大兴区',3,0),
(417,37,'怀柔区',3,0),
(418,37,'平谷区',3,0),
(419,37,'密云县',3,0),
(420,37,'延庆县',3,0),
(421,37,'其它区',3,0),
(422,38,'和平区',3,0),
(423,38,'河东区',3,0),
(424,38,'河西区',3,0),
(425,38,'南开区',3,0),
(426,38,'河北区',3,0),
(427,38,'红桥区',3,0),
(428,38,'塘沽区',3,0),
(429,38,'汉沽区',3,0),
(430,38,'大港区',3,0),
(431,38,'东丽区',3,0),
(432,38,'西青区',3,0),
(433,38,'津南区',3,0),
(434,38,'北辰区',3,0),
(435,38,'武清区',3,0),
(436,38,'宝坻区',3,0),
(437,38,'滨海新区',3,0),
(438,38,'宁河县',3,0),
(439,38,'静海县',3,0),
(440,38,'蓟县',3,0),
(441,38,'其它区',3,0),
(442,39,'长安区',3,0),
(443,39,'桥东区',3,0),
(444,39,'桥西区',3,0),
(445,39,'新华区',3,0),
(446,39,'井陉矿区',3,0),
(447,39,'裕华区',3,0),
(448,39,'井陉县',3,0),
(449,39,'正定县',3,0),
(450,39,'栾城区',3,0),
(451,39,'行唐县',3,0),
(452,39,'灵寿县',3,0),
(453,39,'高邑县',3,0),
(454,39,'深泽县',3,0),
(455,39,'赞皇县',3,0),
(456,39,'无极县',3,0),
(457,39,'平山县',3,0),
(458,39,'元氏县',3,0),
(459,39,'赵县',3,0),
(460,39,'辛集市',3,0),
(461,39,'藁城区',3,0),
(462,39,'晋州市',3,0),
(463,39,'新乐市',3,0),
(464,39,'鹿泉区',3,0),
(465,39,'其它区',3,0),
(466,40,'路南区',3,0),
(467,40,'路北区',3,0),
(468,40,'古冶区',3,0),
(469,40,'开平区',3,0),
(470,40,'丰南区',3,0),
(471,40,'丰润区',3,0),
(472,40,'滦县',3,0),
(473,40,'滦南县',3,0),
(474,40,'乐亭县',3,0),
(475,40,'迁西县',3,0),
(476,40,'玉田县',3,0),
(477,40,'曹妃甸区',3,0),
(478,40,'遵化市',3,0),
(479,40,'迁安市',3,0),
(480,40,'其它区',3,0),
(481,41,'海港区',3,0),
(482,41,'山海关区',3,0),
(483,41,'北戴河区',3,0),
(484,41,'青龙满族自治县',3,0),
(485,41,'昌黎县',3,0),
(486,41,'抚宁县',3,0),
(487,41,'卢龙县',3,0),
(488,41,'其它区',3,0),
(489,41,'经济技术开发区',3,0),
(490,42,'邯山区',3,0),
(491,42,'丛台区',3,0),
(492,42,'复兴区',3,0),
(493,42,'峰峰矿区',3,0),
(494,42,'邯郸县',3,0),
(495,42,'临漳县',3,0),
(496,42,'成安县',3,0),
(497,42,'大名县',3,0),
(498,42,'涉县',3,0),
(499,42,'磁县',3,0),
(500,42,'肥乡县',3,0),
(501,42,'永年县',3,0),
(502,42,'邱县',3,0),
(503,42,'鸡泽县',3,0),
(504,42,'广平县',3,0),
(505,42,'馆陶县',3,0),
(506,42,'魏县',3,0),
(507,42,'曲周县',3,0),
(508,42,'武安市',3,0),
(509,42,'其它区',3,0),
(510,43,'桥东区',3,0),
(511,43,'桥西区',3,0),
(512,43,'邢台县',3,0),
(513,43,'临城县',3,0),
(514,43,'内丘县',3,0),
(515,43,'柏乡县',3,0),
(516,43,'隆尧县',3,0),
(517,43,'任县',3,0),
(518,43,'南和县',3,0),
(519,43,'宁晋县',3,0),
(520,43,'巨鹿县',3,0),
(521,43,'新河县',3,0),
(522,43,'广宗县',3,0),
(523,43,'平乡县',3,0),
(524,43,'威县',3,0),
(525,43,'清河县',3,0),
(526,43,'临西县',3,0),
(527,43,'南宫市',3,0),
(528,43,'沙河市',3,0),
(529,43,'其它区',3,0),
(530,44,'新市区',3,0),
(531,44,'北市区',3,0),
(532,44,'南市区',3,0),
(533,44,'满城县',3,0),
(534,44,'清苑县',3,0),
(535,44,'涞水县',3,0),
(536,44,'阜平县',3,0),
(537,44,'徐水县',3,0),
(538,44,'定兴县',3,0),
(539,44,'唐县',3,0),
(540,44,'高阳县',3,0),
(541,44,'容城县',3,0),
(542,44,'涞源县',3,0),
(543,44,'望都县',3,0),
(544,44,'安新县',3,0),
(545,44,'易县',3,0),
(546,44,'曲阳县',3,0),
(547,44,'蠡县',3,0),
(548,44,'顺平县',3,0),
(549,44,'博野县',3,0),
(550,44,'雄县',3,0),
(551,44,'涿州市',3,0),
(552,44,'定州市',3,0),
(553,44,'安国市',3,0),
(554,44,'高碑店市',3,0),
(555,44,'高开区',3,0),
(556,44,'其它区',3,0),
(557,45,'桥东区',3,0),
(558,45,'桥西区',3,0),
(559,45,'宣化区',3,0),
(560,45,'下花园区',3,0),
(561,45,'宣化县',3,0),
(562,45,'张北县',3,0),
(563,45,'康保县',3,0),
(564,45,'沽源县',3,0),
(565,45,'尚义县',3,0),
(566,45,'蔚县',3,0),
(567,45,'阳原县',3,0),
(568,45,'怀安县',3,0),
(569,45,'万全县',3,0),
(570,45,'怀来县',3,0),
(571,45,'涿鹿县',3,0),
(572,45,'赤城县',3,0),
(573,45,'崇礼县',3,0),
(574,45,'其它区',3,0),
(575,46,'双桥区',3,0),
(576,46,'双滦区',3,0),
(577,46,'鹰手营子矿区',3,0),
(578,46,'承德县',3,0),
(579,46,'兴隆县',3,0),
(580,46,'平泉县',3,0),
(581,46,'滦平县',3,0),
(582,46,'隆化县',3,0),
(583,46,'丰宁满族自治县',3,0),
(584,46,'宽城满族自治县',3,0),
(585,46,'围场满族蒙古族自治县',3,0),
(586,46,'其它区',3,0),
(587,47,'新华区',3,0),
(588,47,'运河区',3,0),
(589,47,'沧县',3,0),
(590,47,'青县',3,0),
(591,47,'东光县',3,0),
(592,47,'海兴县',3,0),
(593,47,'盐山县',3,0),
(594,47,'肃宁县',3,0),
(595,47,'南皮县',3,0),
(596,47,'吴桥县',3,0),
(597,47,'献县',3,0),
(598,47,'孟村回族自治县',3,0),
(599,47,'泊头市',3,0),
(600,47,'任丘市',3,0),
(601,47,'黄骅市',3,0),
(602,47,'河间市',3,0),
(603,47,'其它区',3,0),
(604,48,'安次区',3,0),
(605,48,'广阳区',3,0),
(606,48,'固安县',3,0),
(607,48,'永清县',3,0),
(608,48,'香河县',3,0),
(609,48,'大城县',3,0),
(610,48,'文安县',3,0),
(611,48,'大厂回族自治县',3,0),
(612,48,'开发区',3,0),
(613,48,'燕郊经济技术开发区',3,0),
(614,48,'霸州市',3,0),
(615,48,'三河市',3,0),
(616,48,'其它区',3,0),
(617,49,'桃城区',3,0),
(618,49,'枣强县',3,0),
(619,49,'武邑县',3,0),
(620,49,'武强县',3,0),
(621,49,'饶阳县',3,0),
(622,49,'安平县',3,0),
(623,49,'故城县',3,0),
(624,49,'景县',3,0),
(625,49,'阜城县',3,0),
(626,49,'冀州市',3,0),
(627,49,'深州市',3,0),
(628,49,'其它区',3,0),
(629,50,'小店区',3,0),
(630,50,'迎泽区',3,0),
(631,50,'杏花岭区',3,0),
(632,50,'尖草坪区',3,0),
(633,50,'万柏林区',3,0),
(634,50,'晋源区',3,0),
(635,50,'清徐县',3,0),
(636,50,'阳曲县',3,0),
(637,50,'娄烦县',3,0),
(638,50,'古交市',3,0),
(639,50,'其它区',3,0),
(640,51,'城区',3,0),
(641,51,'矿区',3,0),
(642,51,'南郊区',3,0),
(643,51,'新荣区',3,0),
(644,51,'阳高县',3,0),
(645,51,'天镇县',3,0),
(646,51,'广灵县',3,0),
(647,51,'灵丘县',3,0),
(648,51,'浑源县',3,0),
(649,51,'左云县',3,0),
(650,51,'大同县',3,0),
(651,51,'其它区',3,0),
(652,52,'城区',3,0),
(653,52,'矿区',3,0),
(654,52,'郊区',3,0),
(655,52,'平定县',3,0),
(656,52,'盂县',3,0),
(657,52,'其它区',3,0),
(658,53,'长治县',3,0),
(659,53,'襄垣县',3,0),
(660,53,'屯留县',3,0),
(661,53,'平顺县',3,0),
(662,53,'黎城县',3,0),
(663,53,'壶关县',3,0),
(664,53,'长子县',3,0),
(665,53,'武乡县',3,0),
(666,53,'沁县',3,0),
(667,53,'沁源县',3,0),
(668,53,'潞城市',3,0),
(669,53,'城区',3,0),
(670,53,'郊区',3,0),
(671,53,'高新区',3,0),
(672,53,'其它区',3,0),
(673,54,'城区',3,0),
(674,54,'沁水县',3,0),
(675,54,'阳城县',3,0),
(676,54,'陵川县',3,0),
(677,54,'泽州县',3,0),
(678,54,'高平市',3,0),
(679,54,'其它区',3,0),
(680,55,'朔城区',3,0),
(681,55,'平鲁区',3,0),
(682,55,'山阴县',3,0),
(683,55,'应县',3,0),
(684,55,'右玉县',3,0),
(685,55,'怀仁县',3,0),
(686,55,'其它区',3,0),
(687,56,'榆次区',3,0),
(688,56,'榆社县',3,0),
(689,56,'左权县',3,0),
(690,56,'和顺县',3,0),
(691,56,'昔阳县',3,0),
(692,56,'寿阳县',3,0),
(693,56,'太谷县',3,0),
(694,56,'祁县',3,0),
(695,56,'平遥县',3,0),
(696,56,'灵石县',3,0),
(697,56,'介休市',3,0),
(698,56,'其它区',3,0),
(699,57,'盐湖区',3,0),
(700,57,'临猗县',3,0),
(701,57,'万荣县',3,0),
(702,57,'闻喜县',3,0),
(703,57,'稷山县',3,0),
(704,57,'新绛县',3,0),
(705,57,'绛县',3,0),
(706,57,'垣曲县',3,0),
(707,57,'夏县',3,0),
(708,57,'平陆县',3,0),
(709,57,'芮城县',3,0),
(710,57,'永济市',3,0),
(711,57,'河津市',3,0),
(712,57,'其它区',3,0),
(713,58,'忻府区',3,0),
(714,58,'定襄县',3,0),
(715,58,'五台县',3,0),
(716,58,'代县',3,0),
(717,58,'繁峙县',3,0),
(718,58,'宁武县',3,0),
(719,58,'静乐县',3,0),
(720,58,'神池县',3,0),
(721,58,'五寨县',3,0),
(722,58,'岢岚县',3,0),
(723,58,'河曲县',3,0),
(724,58,'保德县',3,0),
(725,58,'偏关县',3,0),
(726,58,'原平市',3,0),
(727,58,'其它区',3,0),
(728,59,'尧都区',3,0),
(729,59,'曲沃县',3,0),
(730,59,'翼城县',3,0),
(731,59,'襄汾县',3,0),
(732,59,'洪洞县',3,0),
(733,59,'古县',3,0),
(734,59,'安泽县',3,0),
(735,59,'浮山县',3,0),
(736,59,'吉县',3,0),
(737,59,'乡宁县',3,0),
(738,59,'大宁县',3,0),
(739,59,'隰县',3,0),
(740,59,'永和县',3,0),
(741,59,'蒲县',3,0),
(742,59,'汾西县',3,0),
(743,59,'侯马市',3,0),
(744,59,'霍州市',3,0),
(745,59,'其它区',3,0),
(746,60,'离石区',3,0),
(747,60,'文水县',3,0),
(748,60,'交城县',3,0),
(749,60,'兴县',3,0),
(750,60,'临县',3,0),
(751,60,'柳林县',3,0),
(752,60,'石楼县',3,0),
(753,60,'岚县',3,0),
(754,60,'方山县',3,0),
(755,60,'中阳县',3,0),
(756,60,'交口县',3,0),
(757,60,'孝义市',3,0),
(758,60,'汾阳市',3,0),
(759,60,'其它区',3,0),
(760,61,'新城区',3,0),
(761,61,'回民区',3,0),
(762,61,'玉泉区',3,0),
(763,61,'赛罕区',3,0),
(764,61,'土默特左旗',3,0),
(765,61,'托克托县',3,0),
(766,61,'和林格尔县',3,0),
(767,61,'清水河县',3,0),
(768,61,'武川县',3,0),
(769,61,'其它区',3,0),
(770,62,'东河区',3,0),
(771,62,'昆都仑区',3,0),
(772,62,'青山区',3,0),
(773,62,'石拐区',3,0),
(774,62,'白云鄂博矿区',3,0),
(775,62,'九原区',3,0),
(776,62,'土默特右旗',3,0),
(777,62,'固阳县',3,0),
(778,62,'达尔罕茂明安联合旗',3,0),
(779,62,'其它区',3,0),
(780,63,'海勃湾区',3,0),
(781,63,'海南区',3,0),
(782,63,'乌达区',3,0),
(783,63,'其它区',3,0),
(784,64,'红山区',3,0),
(785,64,'元宝山区',3,0),
(786,64,'松山区',3,0),
(787,64,'阿鲁科尔沁旗',3,0),
(788,64,'巴林左旗',3,0),
(789,64,'巴林右旗',3,0),
(790,64,'林西县',3,0),
(791,64,'克什克腾旗',3,0),
(792,64,'翁牛特旗',3,0),
(793,64,'喀喇沁旗',3,0),
(794,64,'宁城县',3,0),
(795,64,'敖汉旗',3,0),
(796,64,'其它区',3,0),
(797,65,'科尔沁区',3,0),
(798,65,'科尔沁左翼中旗',3,0),
(799,65,'科尔沁左翼后旗',3,0),
(800,65,'开鲁县',3,0),
(801,65,'库伦旗',3,0),
(802,65,'奈曼旗',3,0),
(803,65,'扎鲁特旗',3,0),
(804,65,'霍林郭勒市',3,0),
(805,65,'其它区',3,0),
(806,66,'东胜区',3,0),
(807,66,'达拉特旗',3,0),
(808,66,'准格尔旗',3,0),
(809,66,'鄂托克前旗',3,0),
(810,66,'鄂托克旗',3,0),
(811,66,'杭锦旗',3,0),
(812,66,'乌审旗',3,0),
(813,66,'伊金霍洛旗',3,0),
(814,66,'其它区',3,0),
(815,67,'海拉尔区',3,0),
(816,67,'扎赉诺尔区',3,0),
(817,67,'阿荣旗',3,0),
(818,67,'莫力达瓦达斡尔族自治旗',3,0),
(819,67,'鄂伦春自治旗',3,0),
(820,67,'鄂温克族自治旗',3,0),
(821,67,'陈巴尔虎旗',3,0),
(822,67,'新巴尔虎左旗',3,0),
(823,67,'新巴尔虎右旗',3,0),
(824,67,'满洲里市',3,0),
(825,67,'牙克石市',3,0),
(826,67,'扎兰屯市',3,0),
(827,67,'额尔古纳市',3,0),
(828,67,'根河市',3,0),
(829,67,'其它区',3,0),
(830,68,'临河区',3,0),
(831,68,'五原县',3,0),
(832,68,'磴口县',3,0),
(833,68,'乌拉特前旗',3,0),
(834,68,'乌拉特中旗',3,0),
(835,68,'乌拉特后旗',3,0),
(836,68,'杭锦后旗',3,0),
(837,68,'其它区',3,0),
(838,69,'集宁区',3,0),
(839,69,'卓资县',3,0),
(840,69,'化德县',3,0),
(841,69,'商都县',3,0),
(842,69,'兴和县',3,0),
(843,69,'凉城县',3,0),
(844,69,'察哈尔右翼前旗',3,0),
(845,69,'察哈尔右翼中旗',3,0),
(846,69,'察哈尔右翼后旗',3,0),
(847,69,'四子王旗',3,0),
(848,69,'丰镇市',3,0),
(849,69,'其它区',3,0),
(850,70,'乌兰浩特市',3,0),
(851,70,'阿尔山市',3,0),
(852,70,'科尔沁右翼前旗',3,0),
(853,70,'科尔沁右翼中旗',3,0),
(854,70,'扎赉特旗',3,0),
(855,70,'突泉县',3,0),
(856,70,'其它区',3,0),
(857,71,'二连浩特市',3,0),
(858,71,'锡林浩特市',3,0),
(859,71,'阿巴嘎旗',3,0),
(860,71,'苏尼特左旗',3,0),
(861,71,'苏尼特右旗',3,0),
(862,71,'东乌珠穆沁旗',3,0),
(863,71,'西乌珠穆沁旗',3,0),
(864,71,'太仆寺旗',3,0),
(865,71,'镶黄旗',3,0),
(866,71,'正镶白旗',3,0),
(867,71,'正蓝旗',3,0),
(868,71,'多伦县',3,0),
(869,71,'其它区',3,0),
(870,72,'阿拉善左旗',3,0),
(871,72,'阿拉善右旗',3,0),
(872,72,'额济纳旗',3,0),
(873,72,'其它区',3,0),
(874,73,'和平区',3,0),
(875,73,'沈河区',3,0),
(876,73,'大东区',3,0),
(877,73,'皇姑区',3,0),
(878,73,'铁西区',3,0),
(879,73,'苏家屯区',3,0),
(880,73,'浑南区',3,0),
(881,73,'新城子区',3,0),
(882,73,'于洪区',3,0),
(883,73,'辽中县',3,0),
(884,73,'康平县',3,0),
(885,73,'法库县',3,0),
(886,73,'新民市',3,0),
(887,73,'浑南新区',3,0),
(888,73,'张士开发区',3,0),
(889,73,'沈北新区',3,0),
(890,73,'其它区',3,0),
(891,74,'中山区',3,0),
(892,74,'西岗区',3,0),
(893,74,'沙河口区',3,0),
(894,74,'甘井子区',3,0),
(895,74,'旅顺口区',3,0),
(896,74,'金州区',3,0),
(897,74,'长海县',3,0),
(898,74,'开发区',3,0),
(899,74,'瓦房店市',3,0),
(900,74,'普兰店市',3,0),
(901,74,'庄河市',3,0),
(902,74,'岭前区',3,0),
(903,74,'其它区',3,0),
(904,75,'铁东区',3,0),
(905,75,'铁西区',3,0),
(906,75,'立山区',3,0),
(907,75,'千山区',3,0),
(908,75,'台安县',3,0),
(909,75,'岫岩满族自治县',3,0),
(910,75,'高新区',3,0),
(911,75,'海城市',3,0),
(912,75,'其它区',3,0),
(913,76,'新抚区',3,0),
(914,76,'东洲区',3,0),
(915,76,'望花区',3,0),
(916,76,'顺城区',3,0),
(917,76,'抚顺县',3,0),
(918,76,'新宾满族自治县',3,0),
(919,76,'清原满族自治县',3,0),
(920,76,'其它区',3,0),
(921,77,'平山区',3,0),
(922,77,'溪湖区',3,0),
(923,77,'明山区',3,0),
(924,77,'南芬区',3,0),
(925,77,'本溪满族自治县',3,0),
(926,77,'桓仁满族自治县',3,0),
(927,77,'其它区',3,0),
(928,78,'元宝区',3,0),
(929,78,'振兴区',3,0),
(930,78,'振安区',3,0),
(931,78,'宽甸满族自治县',3,0),
(932,78,'东港市',3,0),
(933,78,'凤城市',3,0),
(934,78,'其它区',3,0),
(935,79,'古塔区',3,0),
(936,79,'凌河区',3,0),
(937,79,'太和区',3,0),
(938,79,'黑山县',3,0),
(939,79,'义县',3,0),
(940,79,'凌海市',3,0),
(941,79,'北镇市',3,0),
(942,79,'其它区',3,0),
(943,80,'站前区',3,0),
(944,80,'西市区',3,0),
(945,80,'鲅鱼圈区',3,0),
(946,80,'老边区',3,0),
(947,80,'盖州市',3,0),
(948,80,'大石桥市',3,0),
(949,80,'其它区',3,0),
(950,81,'海州区',3,0),
(951,81,'新邱区',3,0),
(952,81,'太平区',3,0),
(953,81,'清河门区',3,0),
(954,81,'细河区',3,0),
(955,81,'阜新蒙古族自治县',3,0),
(956,81,'彰武县',3,0),
(957,81,'其它区',3,0),
(958,82,'白塔区',3,0),
(959,82,'文圣区',3,0),
(960,82,'宏伟区',3,0),
(961,82,'弓长岭区',3,0),
(962,82,'太子河区',3,0),
(963,82,'辽阳县',3,0),
(964,82,'灯塔市',3,0),
(965,82,'其它区',3,0),
(966,83,'双台子区',3,0),
(967,83,'兴隆台区',3,0),
(968,83,'大洼县',3,0),
(969,83,'盘山县',3,0),
(970,83,'其它区',3,0),
(971,84,'银州区',3,0),
(972,84,'清河区',3,0),
(973,84,'铁岭县',3,0),
(974,84,'西丰县',3,0),
(975,84,'昌图县',3,0),
(976,84,'调兵山市',3,0),
(977,84,'开原市',3,0),
(978,84,'其它区',3,0),
(979,85,'双塔区',3,0),
(980,85,'龙城区',3,0),
(981,85,'朝阳县',3,0),
(982,85,'建平县',3,0),
(983,85,'喀喇沁左翼蒙古族自治县',3,0),
(984,85,'北票市',3,0),
(985,85,'凌源市',3,0),
(986,85,'其它区',3,0),
(987,86,'连山区',3,0),
(988,86,'龙港区',3,0),
(989,86,'南票区',3,0),
(990,86,'绥中县',3,0),
(991,86,'建昌县',3,0),
(992,86,'兴城市',3,0),
(993,86,'其它区',3,0),
(994,87,'南关区',3,0),
(995,87,'宽城区',3,0),
(996,87,'朝阳区',3,0),
(997,87,'二道区',3,0),
(998,87,'绿园区',3,0),
(999,87,'双阳区',3,0),
(1000,87,'农安县',3,0),
(1001,87,'九台区',3,0),
(1002,87,'榆树市',3,0),
(1003,87,'德惠市',3,0),
(1004,87,'高新技术产业开发区',3,0),
(1005,87,'汽车产业开发区',3,0),
(1006,87,'经济技术开发区',3,0),
(1007,87,'净月旅游开发区',3,0),
(1008,87,'其它区',3,0),
(1009,88,'昌邑区',3,0),
(1010,88,'龙潭区',3,0),
(1011,88,'船营区',3,0),
(1012,88,'丰满区',3,0),
(1013,88,'永吉县',3,0),
(1014,88,'蛟河市',3,0),
(1015,88,'桦甸市',3,0),
(1016,88,'舒兰市',3,0),
(1017,88,'磐石市',3,0),
(1018,88,'其它区',3,0),
(1019,89,'铁西区',3,0),
(1020,89,'铁东区',3,0),
(1021,89,'梨树县',3,0),
(1022,89,'伊通满族自治县',3,0),
(1023,89,'公主岭市',3,0),
(1024,89,'双辽市',3,0),
(1025,89,'其它区',3,0),
(1026,90,'龙山区',3,0),
(1027,90,'西安区',3,0),
(1028,90,'东丰县',3,0),
(1029,90,'东辽县',3,0),
(1030,90,'其它区',3,0),
(1031,91,'东昌区',3,0),
(1032,91,'二道江区',3,0),
(1033,91,'通化县',3,0),
(1034,91,'辉南县',3,0),
(1035,91,'柳河县',3,0),
(1036,91,'梅河口市',3,0),
(1037,91,'集安市',3,0),
(1038,91,'其它区',3,0),
(1039,92,'浑江区',3,0),
(1040,92,'抚松县',3,0),
(1041,92,'靖宇县',3,0),
(1042,92,'长白朝鲜族自治县',3,0),
(1043,92,'江源区',3,0),
(1044,92,'临江市',3,0),
(1045,92,'其它区',3,0),
(1046,93,'宁江区',3,0),
(1047,93,'前郭尔罗斯蒙古族自治县',3,0),
(1048,93,'长岭县',3,0),
(1049,93,'乾安县',3,0),
(1050,93,'扶余市',3,0),
(1051,93,'其它区',3,0),
(1052,94,'洮北区',3,0),
(1053,94,'镇赉县',3,0),
(1054,94,'通榆县',3,0),
(1055,94,'洮南市',3,0),
(1056,94,'大安市',3,0),
(1057,94,'其它区',3,0),
(1058,95,'延吉市',3,0),
(1059,95,'图们市',3,0),
(1060,95,'敦化市',3,0),
(1061,95,'珲春市',3,0),
(1062,95,'龙井市',3,0),
(1063,95,'和龙市',3,0),
(1064,95,'汪清县',3,0),
(1065,95,'安图县',3,0),
(1066,95,'其它区',3,0),
(1067,96,'道里区',3,0),
(1068,96,'南岗区',3,0),
(1069,96,'道外区',3,0),
(1070,96,'香坊区',3,0),
(1071,96,'动力区',3,0),
(1072,96,'平房区',3,0),
(1073,96,'松北区',3,0),
(1074,96,'呼兰区',3,0),
(1075,96,'依兰县',3,0),
(1076,96,'方正县',3,0),
(1077,96,'宾县',3,0),
(1078,96,'巴彦县',3,0),
(1079,96,'木兰县',3,0),
(1080,96,'通河县',3,0),
(1081,96,'延寿县',3,0),
(1082,96,'阿城区',3,0),
(1083,96,'双城区',3,0),
(1084,96,'尚志市',3,0),
(1085,96,'五常市',3,0),
(1086,96,'阿城市',3,0),
(1087,96,'其它区',3,0),
(1088,97,'龙沙区',3,0),
(1089,97,'建华区',3,0),
(1090,97,'铁锋区',3,0),
(1091,97,'昂昂溪区',3,0),
(1092,97,'富拉尔基区',3,0),
(1093,97,'碾子山区',3,0),
(1094,97,'梅里斯达斡尔族区',3,0),
(1095,97,'龙江县',3,0),
(1096,97,'依安县',3,0),
(1097,97,'泰来县',3,0),
(1098,97,'甘南县',3,0),
(1099,97,'富裕县',3,0),
(1100,97,'克山县',3,0),
(1101,97,'克东县',3,0),
(1102,97,'拜泉县',3,0),
(1103,97,'讷河市',3,0),
(1104,97,'其它区',3,0),
(1105,98,'鸡冠区',3,0),
(1106,98,'恒山区',3,0),
(1107,98,'滴道区',3,0),
(1108,98,'梨树区',3,0),
(1109,98,'城子河区',3,0),
(1110,98,'麻山区',3,0),
(1111,98,'鸡东县',3,0),
(1112,98,'虎林市',3,0),
(1113,98,'密山市',3,0),
(1114,98,'其它区',3,0),
(1115,99,'向阳区',3,0),
(1116,99,'工农区',3,0),
(1117,99,'南山区',3,0),
(1118,99,'兴安区',3,0),
(1119,99,'东山区',3,0),
(1120,99,'兴山区',3,0),
(1121,99,'萝北县',3,0),
(1122,99,'绥滨县',3,0),
(1123,99,'其它区',3,0),
(1124,100,'尖山区',3,0),
(1125,100,'岭东区',3,0),
(1126,100,'四方台区',3,0),
(1127,100,'宝山区',3,0),
(1128,100,'集贤县',3,0),
(1129,100,'友谊县',3,0),
(1130,100,'宝清县',3,0),
(1131,100,'饶河县',3,0),
(1132,100,'其它区',3,0),
(1133,101,'萨尔图区',3,0),
(1134,101,'龙凤区',3,0),
(1135,101,'让胡路区',3,0),
(1136,101,'红岗区',3,0),
(1137,101,'大同区',3,0),
(1138,101,'肇州县',3,0),
(1139,101,'肇源县',3,0),
(1140,101,'林甸县',3,0),
(1141,101,'杜尔伯特蒙古族自治县',3,0),
(1142,101,'其它区',3,0),
(1143,102,'伊春区',3,0),
(1144,102,'南岔区',3,0),
(1145,102,'友好区',3,0),
(1146,102,'西林区',3,0),
(1147,102,'翠峦区',3,0),
(1148,102,'新青区',3,0),
(1149,102,'美溪区',3,0),
(1150,102,'金山屯区',3,0),
(1151,102,'五营区',3,0),
(1152,102,'乌马河区',3,0),
(1153,102,'汤旺河区',3,0),
(1154,102,'带岭区',3,0),
(1155,102,'乌伊岭区',3,0),
(1156,102,'红星区',3,0),
(1157,102,'上甘岭区',3,0),
(1158,102,'嘉荫县',3,0),
(1159,102,'铁力市',3,0),
(1160,102,'其它区',3,0),
(1161,103,'永红区',3,0),
(1162,103,'向阳区',3,0),
(1163,103,'前进区',3,0),
(1164,103,'东风区',3,0),
(1165,103,'郊区',3,0),
(1166,103,'桦南县',3,0),
(1167,103,'桦川县',3,0),
(1168,103,'汤原县',3,0),
(1169,103,'抚远县',3,0),
(1170,103,'同江市',3,0),
(1171,103,'富锦市',3,0),
(1172,103,'其它区',3,0),
(1173,104,'新兴区',3,0),
(1174,104,'桃山区',3,0),
(1175,104,'茄子河区',3,0),
(1176,104,'勃利县',3,0),
(1177,104,'其它区',3,0),
(1178,105,'东安区',3,0),
(1179,105,'阳明区',3,0),
(1180,105,'爱民区',3,0),
(1181,105,'西安区',3,0),
(1182,105,'东宁县',3,0),
(1183,105,'林口县',3,0),
(1184,105,'绥芬河市',3,0),
(1185,105,'海林市',3,0),
(1186,105,'宁安市',3,0),
(1187,105,'穆棱市',3,0),
(1188,105,'其它区',3,0),
(1189,106,'爱辉区',3,0),
(1190,106,'嫩江县',3,0),
(1191,106,'逊克县',3,0),
(1192,106,'孙吴县',3,0),
(1193,106,'北安市',3,0),
(1194,106,'五大连池市',3,0),
(1195,106,'其它区',3,0),
(1196,107,'北林区',3,0),
(1197,107,'望奎县',3,0),
(1198,107,'兰西县',3,0),
(1199,107,'青冈县',3,0),
(1200,107,'庆安县',3,0),
(1201,107,'明水县',3,0),
(1202,107,'绥棱县',3,0),
(1203,107,'安达市',3,0),
(1204,107,'肇东市',3,0),
(1205,107,'海伦市',3,0),
(1206,107,'其它区',3,0),
(1207,108,'松岭区',3,0),
(1208,108,'新林区',3,0),
(1209,108,'呼中区',3,0),
(1210,108,'呼玛县',3,0),
(1211,108,'塔河县',3,0),
(1212,108,'漠河县',3,0),
(1213,108,'加格达奇区',3,0),
(1214,108,'其它区',3,0),
(1215,109,'黄浦区',3,0),
(1216,109,'卢湾区',3,0),
(1217,109,'徐汇区',3,0),
(1218,109,'长宁区',3,0),
(1219,109,'静安区',3,0),
(1220,109,'普陀区',3,0),
(1221,109,'闸北区',3,0),
(1222,109,'虹口区',3,0),
(1223,109,'杨浦区',3,0),
(1224,109,'闵行区',3,0),
(1225,109,'宝山区',3,0),
(1226,109,'嘉定区',3,0),
(1227,109,'浦东新区',3,0),
(1228,109,'金山区',3,0),
(1229,109,'松江区',3,0),
(1230,109,'青浦区',3,0),
(1231,109,'南汇区',3,0),
(1232,109,'奉贤区',3,0),
(1233,109,'川沙区',3,0),
(1234,109,'崇明县',3,0),
(1235,109,'其它区',3,0),
(1236,110,'玄武区',3,0),
(1237,110,'白下区',3,0),
(1238,110,'秦淮区',3,0),
(1239,110,'建邺区',3,0),
(1240,110,'鼓楼区',3,0),
(1241,110,'下关区',3,0),
(1242,110,'浦口区',3,0),
(1243,110,'栖霞区',3,0),
(1244,110,'雨花台区',3,0),
(1245,110,'江宁区',3,0),
(1246,110,'六合区',3,0),
(1247,110,'溧水区',3,0),
(1248,110,'高淳区',3,0),
(1249,110,'其它区',3,0),
(1250,111,'崇安区',3,0),
(1251,111,'南长区',3,0),
(1252,111,'北塘区',3,0),
(1253,111,'锡山区',3,0),
(1254,111,'惠山区',3,0),
(1255,111,'滨湖区',3,0),
(1256,111,'江阴市',3,0),
(1257,111,'宜兴市',3,0),
(1258,111,'新区',3,0),
(1259,111,'其它区',3,0),
(1260,112,'鼓楼区',3,0),
(1261,112,'云龙区',3,0),
(1262,112,'九里区',3,0),
(1263,112,'贾汪区',3,0),
(1264,112,'泉山区',3,0),
(1265,112,'丰县',3,0),
(1266,112,'沛县',3,0),
(1267,112,'铜山区',3,0),
(1268,112,'睢宁县',3,0),
(1269,112,'新沂市',3,0),
(1270,112,'邳州市',3,0),
(1271,112,'其它区',3,0),
(1272,113,'天宁区',3,0),
(1273,113,'钟楼区',3,0),
(1274,113,'戚墅堰区',3,0),
(1275,113,'新北区',3,0),
(1276,113,'武进区',3,0),
(1277,113,'溧阳市',3,0),
(1278,113,'金坛市',3,0),
(1279,113,'其它区',3,0),
(1280,114,'沧浪区',3,0),
(1281,114,'平江区',3,0),
(1282,114,'金阊区',3,0),
(1283,114,'虎丘区',3,0),
(1284,114,'吴中区',3,0),
(1285,114,'相城区',3,0),
(1286,114,'姑苏区',3,0),
(1287,114,'常熟市',3,0),
(1288,114,'张家港市',3,0),
(1289,114,'昆山市',3,0),
(1290,114,'吴江区',3,0),
(1291,114,'太仓市',3,0),
(1292,114,'新区',3,0),
(1293,114,'园区',3,0),
(1294,114,'其它区',3,0),
(1295,115,'崇川区',3,0),
(1296,115,'港闸区',3,0),
(1297,115,'通州区',3,0),
(1298,115,'海安县',3,0),
(1299,115,'如东县',3,0),
(1300,115,'启东市',3,0),
(1301,115,'如皋市',3,0),
(1302,115,'通州市',3,0),
(1303,115,'海门市',3,0),
(1304,115,'开发区',3,0),
(1305,115,'其它区',3,0),
(1306,116,'连云区',3,0),
(1307,116,'新浦区',3,0),
(1308,116,'海州区',3,0),
(1309,116,'赣榆区',3,0),
(1310,116,'东海县',3,0),
(1311,116,'灌云县',3,0),
(1312,116,'灌南县',3,0),
(1313,116,'其它区',3,0),
(1314,117,'清河区',3,0),
(1315,117,'淮安区',3,0),
(1316,117,'淮阴区',3,0),
(1317,117,'清浦区',3,0),
(1318,117,'涟水县',3,0),
(1319,117,'洪泽县',3,0),
(1320,117,'盱眙县',3,0),
(1321,117,'金湖县',3,0),
(1322,117,'其它区',3,0),
(1323,118,'亭湖区',3,0),
(1324,118,'盐都区',3,0),
(1325,118,'响水县',3,0),
(1326,118,'滨海县',3,0),
(1327,118,'阜宁县',3,0),
(1328,118,'射阳县',3,0),
(1329,118,'建湖县',3,0),
(1330,118,'东台市',3,0),
(1331,118,'大丰市',3,0),
(1332,118,'其它区',3,0),
(1333,119,'广陵区',3,0),
(1334,119,'邗江区',3,0),
(1335,119,'维扬区',3,0),
(1336,119,'宝应县',3,0),
(1337,119,'仪征市',3,0),
(1338,119,'高邮市',3,0),
(1339,119,'江都区',3,0),
(1340,119,'经济开发区',3,0),
(1341,119,'其它区',3,0),
(1342,120,'京口区',3,0),
(1343,120,'润州区',3,0),
(1344,120,'丹徒区',3,0),
(1345,120,'丹阳市',3,0),
(1346,120,'扬中市',3,0),
(1347,120,'句容市',3,0),
(1348,120,'其它区',3,0),
(1349,121,'海陵区',3,0),
(1350,121,'高港区',3,0),
(1351,121,'兴化市',3,0),
(1352,121,'靖江市',3,0),
(1353,121,'泰兴市',3,0),
(1354,121,'姜堰区',3,0),
(1355,121,'其它区',3,0),
(1356,122,'宿城区',3,0),
(1357,122,'宿豫区',3,0),
(1358,122,'沭阳县',3,0),
(1359,122,'泗阳县',3,0),
(1360,122,'泗洪县',3,0),
(1361,122,'其它区',3,0),
(1362,123,'上城区',3,0),
(1363,123,'下城区',3,0),
(1364,123,'江干区',3,0),
(1365,123,'拱墅区',3,0),
(1366,123,'西湖区',3,0),
(1367,123,'滨江区',3,0),
(1368,123,'萧山区',3,0),
(1369,123,'余杭区',3,0),
(1370,123,'桐庐县',3,0),
(1371,123,'淳安县',3,0),
(1372,123,'建德市',3,0),
(1373,123,'富阳区',3,0),
(1374,123,'临安市',3,0),
(1375,123,'其它区',3,0),
(1376,124,'海曙区',3,0),
(1377,124,'江东区',3,0),
(1378,124,'江北区',3,0),
(1379,124,'北仑区',3,0),
(1380,124,'镇海区',3,0),
(1381,124,'鄞州区',3,0),
(1382,124,'象山县',3,0),
(1383,124,'宁海县',3,0),
(1384,124,'余姚市',3,0),
(1385,124,'慈溪市',3,0),
(1386,124,'奉化市',3,0),
(1387,124,'其它区',3,0),
(1388,125,'鹿城区',3,0),
(1389,125,'龙湾区',3,0),
(1390,125,'瓯海区',3,0),
(1391,125,'洞头县',3,0),
(1392,125,'永嘉县',3,0),
(1393,125,'平阳县',3,0),
(1394,125,'苍南县',3,0),
(1395,125,'文成县',3,0),
(1396,125,'泰顺县',3,0),
(1397,125,'瑞安市',3,0),
(1398,125,'乐清市',3,0),
(1399,125,'其它区',3,0),
(1400,126,'南湖区',3,0),
(1401,126,'秀洲区',3,0),
(1402,126,'嘉善县',3,0),
(1403,126,'海盐县',3,0),
(1404,126,'海宁市',3,0),
(1405,126,'平湖市',3,0),
(1406,126,'桐乡市',3,0),
(1407,126,'其它区',3,0),
(1408,127,'吴兴区',3,0),
(1409,127,'南浔区',3,0),
(1410,127,'德清县',3,0),
(1411,127,'长兴县',3,0),
(1412,127,'安吉县',3,0),
(1413,127,'其它区',3,0),
(1414,128,'越城区',3,0),
(1415,128,'柯桥区',3,0),
(1416,128,'新昌县',3,0),
(1417,128,'诸暨市',3,0),
(1418,128,'上虞区',3,0),
(1419,128,'嵊州市',3,0),
(1420,128,'其它区',3,0),
(1421,129,'婺城区',3,0),
(1422,129,'金东区',3,0),
(1423,129,'武义县',3,0),
(1424,129,'浦江县',3,0),
(1425,129,'磐安县',3,0),
(1426,129,'兰溪市',3,0),
(1427,129,'义乌市',3,0),
(1428,129,'东阳市',3,0),
(1429,129,'永康市',3,0),
(1430,129,'其它区',3,0),
(1431,130,'柯城区',3,0),
(1432,130,'衢江区',3,0),
(1433,130,'常山县',3,0),
(1434,130,'开化县',3,0),
(1435,130,'龙游县',3,0),
(1436,130,'江山市',3,0),
(1437,130,'其它区',3,0),
(1438,131,'定海区',3,0),
(1439,131,'普陀区',3,0),
(1440,131,'岱山县',3,0),
(1441,131,'嵊泗县',3,0),
(1442,131,'其它区',3,0),
(1443,132,'椒江区',3,0),
(1444,132,'黄岩区',3,0),
(1445,132,'路桥区',3,0),
(1446,132,'玉环县',3,0),
(1447,132,'三门县',3,0),
(1448,132,'天台县',3,0),
(1449,132,'仙居县',3,0),
(1450,132,'温岭市',3,0),
(1451,132,'临海市',3,0),
(1452,132,'其它区',3,0),
(1453,133,'莲都区',3,0),
(1454,133,'青田县',3,0),
(1455,133,'缙云县',3,0),
(1456,133,'遂昌县',3,0),
(1457,133,'松阳县',3,0),
(1458,133,'云和县',3,0),
(1459,133,'庆元县',3,0),
(1460,133,'景宁畲族自治县',3,0),
(1461,133,'龙泉市',3,0),
(1462,133,'其它区',3,0),
(1463,134,'瑶海区',3,0),
(1464,134,'庐阳区',3,0),
(1465,134,'蜀山区',3,0),
(1466,134,'包河区',3,0),
(1467,134,'长丰县',3,0),
(1468,134,'肥东县',3,0),
(1469,134,'肥西县',3,0),
(1470,134,'高新区',3,0),
(1471,134,'中区',3,0),
(1472,134,'其它区',3,0),
(1473,135,'镜湖区',3,0),
(1474,135,'弋江区',3,0),
(1475,135,'鸠江区',3,0),
(1476,135,'三山区',3,0),
(1477,135,'芜湖县',3,0),
(1478,135,'繁昌县',3,0),
(1479,135,'南陵县',3,0),
(1480,135,'其它区',3,0),
(1481,136,'龙子湖区',3,0),
(1482,136,'蚌山区',3,0),
(1483,136,'禹会区',3,0),
(1484,136,'淮上区',3,0),
(1485,136,'怀远县',3,0),
(1486,136,'五河县',3,0),
(1487,136,'固镇县',3,0),
(1488,136,'其它区',3,0),
(1489,137,'大通区',3,0),
(1490,137,'田家庵区',3,0),
(1491,137,'谢家集区',3,0),
(1492,137,'八公山区',3,0),
(1493,137,'潘集区',3,0),
(1494,137,'凤台县',3,0),
(1495,137,'其它区',3,0),
(1496,138,'金家庄区',3,0),
(1497,138,'花山区',3,0),
(1498,138,'雨山区',3,0),
(1499,138,'博望区',3,0),
(1500,138,'当涂县',3,0),
(1501,138,'其它区',3,0),
(1502,139,'杜集区',3,0),
(1503,139,'相山区',3,0),
(1504,139,'烈山区',3,0),
(1505,139,'濉溪县',3,0),
(1506,139,'其它区',3,0),
(1507,140,'铜官山区',3,0),
(1508,140,'狮子山区',3,0),
(1509,140,'郊区',3,0),
(1510,140,'铜陵县',3,0),
(1511,140,'其它区',3,0),
(1512,141,'迎江区',3,0),
(1513,141,'大观区',3,0),
(1514,141,'宜秀区',3,0),
(1515,141,'怀宁县',3,0),
(1516,141,'枞阳县',3,0),
(1517,141,'潜山县',3,0),
(1518,141,'太湖县',3,0),
(1519,141,'宿松县',3,0),
(1520,141,'望江县',3,0),
(1521,141,'岳西县',3,0),
(1522,141,'桐城市',3,0),
(1523,141,'其它区',3,0),
(1524,142,'屯溪区',3,0),
(1525,142,'黄山区',3,0),
(1526,142,'徽州区',3,0),
(1527,142,'歙县',3,0),
(1528,142,'休宁县',3,0),
(1529,142,'黟县',3,0),
(1530,142,'祁门县',3,0),
(1531,142,'其它区',3,0),
(1532,143,'琅琊区',3,0),
(1533,143,'南谯区',3,0),
(1534,143,'来安县',3,0),
(1535,143,'全椒县',3,0),
(1536,143,'定远县',3,0),
(1537,143,'凤阳县',3,0),
(1538,143,'天长市',3,0),
(1539,143,'明光市',3,0),
(1540,143,'其它区',3,0),
(1541,144,'颍州区',3,0),
(1542,144,'颍东区',3,0),
(1543,144,'颍泉区',3,0),
(1544,144,'临泉县',3,0),
(1545,144,'太和县',3,0),
(1546,144,'阜南县',3,0),
(1547,144,'颍上县',3,0),
(1548,144,'界首市',3,0),
(1549,144,'其它区',3,0),
(1550,145,'埇桥区',3,0),
(1551,145,'砀山县',3,0),
(1552,145,'萧县',3,0),
(1553,145,'灵璧县',3,0),
(1554,145,'泗县',3,0),
(1555,145,'其它区',3,0),
(1556,134,'巢湖市',3,0),
(1557,134,'居巢区',3,0),
(1558,134,'庐江县',3,0),
(1559,135,'无为县',3,0),
(1560,138,'含山县',3,0),
(1561,138,'和县',3,0),
(1562,146,'金安区',3,0),
(1563,146,'裕安区',3,0),
(1564,146,'寿县',3,0),
(1565,146,'霍邱县',3,0),
(1566,146,'舒城县',3,0),
(1567,146,'金寨县',3,0),
(1568,146,'霍山县',3,0),
(1569,146,'其它区',3,0),
(1570,147,'谯城区',3,0),
(1571,147,'涡阳县',3,0),
(1572,147,'蒙城县',3,0),
(1573,147,'利辛县',3,0),
(1574,147,'其它区',3,0),
(1575,148,'贵池区',3,0),
(1576,148,'东至县',3,0),
(1577,148,'石台县',3,0),
(1578,148,'青阳县',3,0),
(1579,148,'其它区',3,0),
(1580,149,'宣州区',3,0),
(1581,149,'郎溪县',3,0),
(1582,149,'广德县',3,0),
(1583,149,'泾县',3,0),
(1584,149,'绩溪县',3,0),
(1585,149,'旌德县',3,0),
(1586,149,'宁国市',3,0),
(1587,149,'其它区',3,0),
(1588,150,'鼓楼区',3,0),
(1589,150,'台江区',3,0),
(1590,150,'仓山区',3,0),
(1591,150,'马尾区',3,0),
(1592,150,'晋安区',3,0),
(1593,150,'闽侯县',3,0),
(1594,150,'连江县',3,0),
(1595,150,'罗源县',3,0),
(1596,150,'闽清县',3,0),
(1597,150,'永泰县',3,0),
(1598,150,'平潭县',3,0),
(1599,150,'福清市',3,0),
(1600,150,'长乐市',3,0),
(1601,150,'其它区',3,0),
(1602,151,'思明区',3,0),
(1603,151,'海沧区',3,0),
(1604,151,'湖里区',3,0),
(1605,151,'集美区',3,0),
(1606,151,'同安区',3,0),
(1607,151,'翔安区',3,0),
(1608,151,'其它区',3,0),
(1609,152,'城厢区',3,0),
(1610,152,'涵江区',3,0),
(1611,152,'荔城区',3,0),
(1612,152,'秀屿区',3,0),
(1613,152,'仙游县',3,0),
(1614,152,'其它区',3,0),
(1615,153,'梅列区',3,0),
(1616,153,'三元区',3,0),
(1617,153,'明溪县',3,0),
(1618,153,'清流县',3,0),
(1619,153,'宁化县',3,0),
(1620,153,'大田县',3,0),
(1621,153,'尤溪县',3,0),
(1622,153,'沙县',3,0),
(1623,153,'将乐县',3,0),
(1624,153,'泰宁县',3,0),
(1625,153,'建宁县',3,0),
(1626,153,'永安市',3,0),
(1627,153,'其它区',3,0),
(1628,154,'鲤城区',3,0),
(1629,154,'丰泽区',3,0),
(1630,154,'洛江区',3,0),
(1631,154,'泉港区',3,0),
(1632,154,'惠安县',3,0),
(1633,154,'安溪县',3,0),
(1634,154,'永春县',3,0),
(1635,154,'德化县',3,0),
(1636,154,'金门县',3,0),
(1637,154,'石狮市',3,0),
(1638,154,'晋江市',3,0),
(1639,154,'南安市',3,0),
(1640,154,'其它区',3,0),
(1641,155,'芗城区',3,0),
(1642,155,'龙文区',3,0),
(1643,155,'云霄县',3,0),
(1644,155,'漳浦县',3,0),
(1645,155,'诏安县',3,0),
(1646,155,'长泰县',3,0),
(1647,155,'东山县',3,0),
(1648,155,'南靖县',3,0),
(1649,155,'平和县',3,0),
(1650,155,'华安县',3,0),
(1651,155,'龙海市',3,0),
(1652,155,'其它区',3,0),
(1653,156,'延平区',3,0),
(1654,156,'顺昌县',3,0),
(1655,156,'浦城县',3,0),
(1656,156,'光泽县',3,0),
(1657,156,'松溪县',3,0),
(1658,156,'政和县',3,0),
(1659,156,'邵武市',3,0),
(1660,156,'武夷山市',3,0),
(1661,156,'建瓯市',3,0),
(1662,156,'建阳区',3,0),
(1663,156,'其它区',3,0),
(1664,157,'新罗区',3,0),
(1665,157,'长汀县',3,0),
(1666,157,'永定区',3,0),
(1667,157,'上杭县',3,0),
(1668,157,'武平县',3,0),
(1669,157,'连城县',3,0),
(1670,157,'漳平市',3,0),
(1671,157,'其它区',3,0),
(1672,158,'蕉城区',3,0),
(1673,158,'霞浦县',3,0),
(1674,158,'古田县',3,0),
(1675,158,'屏南县',3,0),
(1676,158,'寿宁县',3,0),
(1677,158,'周宁县',3,0),
(1678,158,'柘荣县',3,0),
(1679,158,'福安市',3,0),
(1680,158,'福鼎市',3,0),
(1681,158,'其它区',3,0),
(1682,159,'东湖区',3,0),
(1683,159,'西湖区',3,0),
(1684,159,'青云谱区',3,0),
(1685,159,'湾里区',3,0),
(1686,159,'青山湖区',3,0),
(1687,159,'南昌县',3,0),
(1688,159,'新建县',3,0),
(1689,159,'安义县',3,0),
(1690,159,'进贤县',3,0),
(1691,159,'红谷滩新区',3,0),
(1692,159,'经济技术开发区',3,0),
(1693,159,'昌北区',3,0),
(1694,159,'其它区',3,0),
(1695,160,'昌江区',3,0),
(1696,160,'珠山区',3,0),
(1697,160,'浮梁县',3,0),
(1698,160,'乐平市',3,0),
(1699,160,'其它区',3,0),
(1700,161,'安源区',3,0),
(1701,161,'湘东区',3,0),
(1702,161,'莲花县',3,0),
(1703,161,'上栗县',3,0),
(1704,161,'芦溪县',3,0),
(1705,161,'其它区',3,0),
(1706,162,'庐山区',3,0),
(1707,162,'浔阳区',3,0),
(1708,162,'九江县',3,0),
(1709,162,'武宁县',3,0),
(1710,162,'修水县',3,0),
(1711,162,'永修县',3,0),
(1712,162,'德安县',3,0),
(1713,162,'星子县',3,0),
(1714,162,'都昌县',3,0),
(1715,162,'湖口县',3,0),
(1716,162,'彭泽县',3,0),
(1717,162,'瑞昌市',3,0),
(1718,162,'其它区',3,0),
(1719,162,'共青城市',3,0),
(1720,163,'渝水区',3,0),
(1721,163,'分宜县',3,0),
(1722,163,'其它区',3,0),
(1723,164,'月湖区',3,0),
(1724,164,'余江县',3,0),
(1725,164,'贵溪市',3,0),
(1726,164,'其它区',3,0),
(1727,165,'章贡区',3,0),
(1728,165,'赣县',3,0),
(1729,165,'信丰县',3,0),
(1730,165,'大余县',3,0),
(1731,165,'上犹县',3,0),
(1732,165,'崇义县',3,0),
(1733,165,'安远县',3,0),
(1734,165,'龙南县',3,0),
(1735,165,'定南县',3,0),
(1736,165,'全南县',3,0),
(1737,165,'宁都县',3,0),
(1738,165,'于都县',3,0),
(1739,165,'兴国县',3,0),
(1740,165,'会昌县',3,0),
(1741,165,'寻乌县',3,0),
(1742,165,'石城县',3,0),
(1743,165,'黄金区',3,0),
(1744,165,'瑞金市',3,0),
(1745,165,'南康区',3,0),
(1746,165,'其它区',3,0),
(1747,166,'吉州区',3,0),
(1748,166,'青原区',3,0),
(1749,166,'吉安县',3,0),
(1750,166,'吉水县',3,0),
(1751,166,'峡江县',3,0),
(1752,166,'新干县',3,0),
(1753,166,'永丰县',3,0),
(1754,166,'泰和县',3,0),
(1755,166,'遂川县',3,0),
(1756,166,'万安县',3,0),
(1757,166,'安福县',3,0),
(1758,166,'永新县',3,0),
(1759,166,'井冈山市',3,0),
(1760,166,'其它区',3,0),
(1761,167,'袁州区',3,0),
(1762,167,'奉新县',3,0),
(1763,167,'万载县',3,0),
(1764,167,'上高县',3,0),
(1765,167,'宜丰县',3,0),
(1766,167,'靖安县',3,0),
(1767,167,'铜鼓县',3,0),
(1768,167,'丰城市',3,0),
(1769,167,'樟树市',3,0),
(1770,167,'高安市',3,0),
(1771,167,'其它区',3,0),
(1772,168,'临川区',3,0),
(1773,168,'南城县',3,0),
(1774,168,'黎川县',3,0),
(1775,168,'南丰县',3,0),
(1776,168,'崇仁县',3,0),
(1777,168,'乐安县',3,0),
(1778,168,'宜黄县',3,0),
(1779,168,'金溪县',3,0),
(1780,168,'资溪县',3,0),
(1781,168,'东乡县',3,0),
(1782,168,'广昌县',3,0),
(1783,168,'其它区',3,0),
(1784,169,'信州区',3,0),
(1785,169,'上饶县',3,0),
(1786,169,'广丰区',3,0),
(1787,169,'玉山县',3,0),
(1788,169,'铅山县',3,0),
(1789,169,'横峰县',3,0),
(1790,169,'弋阳县',3,0),
(1791,169,'余干县',3,0),
(1792,169,'鄱阳县',3,0),
(1793,169,'万年县',3,0),
(1794,169,'婺源县',3,0),
(1795,169,'德兴市',3,0),
(1796,169,'其它区',3,0),
(1797,170,'历下区',3,0),
(1798,170,'市中区',3,0),
(1799,170,'槐荫区',3,0),
(1800,170,'天桥区',3,0),
(1801,170,'历城区',3,0),
(1802,170,'长清区',3,0),
(1803,170,'平阴县',3,0),
(1804,170,'济阳县',3,0),
(1805,170,'商河县',3,0),
(1806,170,'章丘市',3,0),
(1807,170,'其它区',3,0),
(1808,171,'市南区',3,0),
(1809,171,'市北区',3,0),
(1810,171,'四方区',3,0),
(1811,171,'黄岛区',3,0),
(1812,171,'崂山区',3,0),
(1813,171,'李沧区',3,0),
(1814,171,'城阳区',3,0),
(1815,171,'开发区',3,0),
(1816,171,'胶州市',3,0),
(1817,171,'即墨市',3,0),
(1818,171,'平度市',3,0),
(1819,171,'胶南市',3,0),
(1820,171,'莱西市',3,0),
(1821,171,'其它区',3,0),
(1822,172,'淄川区',3,0),
(1823,172,'张店区',3,0),
(1824,172,'博山区',3,0),
(1825,172,'临淄区',3,0),
(1826,172,'周村区',3,0),
(1827,172,'桓台县',3,0),
(1828,172,'高青县',3,0),
(1829,172,'沂源县',3,0),
(1830,172,'其它区',3,0),
(1831,173,'市中区',3,0),
(1832,173,'薛城区',3,0),
(1833,173,'峄城区',3,0),
(1834,173,'台儿庄区',3,0),
(1835,173,'山亭区',3,0),
(1836,173,'滕州市',3,0),
(1837,173,'其它区',3,0),
(1838,174,'东营区',3,0),
(1839,174,'河口区',3,0),
(1840,174,'垦利县',3,0),
(1841,174,'利津县',3,0),
(1842,174,'广饶县',3,0),
(1843,174,'西城区',3,0),
(1844,174,'东城区',3,0),
(1845,174,'其它区',3,0),
(1846,175,'芝罘区',3,0),
(1847,175,'福山区',3,0),
(1848,175,'牟平区',3,0),
(1849,175,'莱山区',3,0),
(1850,175,'长岛县',3,0),
(1851,175,'龙口市',3,0),
(1852,175,'莱阳市',3,0),
(1853,175,'莱州市',3,0),
(1854,175,'蓬莱市',3,0),
(1855,175,'招远市',3,0),
(1856,175,'栖霞市',3,0),
(1857,175,'海阳市',3,0),
(1858,175,'其它区',3,0),
(1859,176,'潍城区',3,0),
(1860,176,'寒亭区',3,0),
(1861,176,'坊子区',3,0),
(1862,176,'奎文区',3,0),
(1863,176,'临朐县',3,0),
(1864,176,'昌乐县',3,0),
(1865,176,'开发区',3,0),
(1866,176,'青州市',3,0),
(1867,176,'诸城市',3,0),
(1868,176,'寿光市',3,0),
(1869,176,'安丘市',3,0),
(1870,176,'高密市',3,0),
(1871,176,'昌邑市',3,0),
(1872,176,'其它区',3,0),
(1873,177,'市中区',3,0),
(1874,177,'任城区',3,0),
(1875,177,'微山县',3,0),
(1876,177,'鱼台县',3,0),
(1877,177,'金乡县',3,0),
(1878,177,'嘉祥县',3,0),
(1879,177,'汶上县',3,0),
(1880,177,'泗水县',3,0),
(1881,177,'梁山县',3,0),
(1882,177,'曲阜市',3,0),
(1883,177,'兖州区',3,0),
(1884,177,'邹城市',3,0),
(1885,177,'其它区',3,0),
(1886,178,'泰山区',3,0),
(1887,178,'岱岳区',3,0),
(1888,178,'宁阳县',3,0),
(1889,178,'东平县',3,0),
(1890,178,'新泰市',3,0),
(1891,178,'肥城市',3,0),
(1892,178,'其它区',3,0),
(1893,179,'环翠区',3,0),
(1894,179,'文登区',3,0),
(1895,179,'荣成市',3,0),
(1896,179,'乳山市',3,0),
(1897,179,'其它区',3,0),
(1898,180,'东港区',3,0),
(1899,180,'岚山区',3,0),
(1900,180,'五莲县',3,0),
(1901,180,'莒县',3,0),
(1902,180,'其它区',3,0),
(1903,181,'莱城区',3,0),
(1904,181,'钢城区',3,0),
(1905,181,'其它区',3,0),
(1906,182,'兰山区',3,0),
(1907,182,'罗庄区',3,0),
(1908,182,'河东区',3,0),
(1909,182,'沂南县',3,0),
(1910,182,'郯城县',3,0),
(1911,182,'沂水县',3,0),
(1912,182,'兰陵县',3,0),
(1913,182,'费县',3,0),
(1914,182,'平邑县',3,0),
(1915,182,'莒南县',3,0),
(1916,182,'蒙阴县',3,0),
(1917,182,'临沭县',3,0),
(1918,182,'其它区',3,0),
(1919,183,'德城区',3,0),
(1920,183,'陵城区',3,0),
(1921,183,'宁津县',3,0),
(1922,183,'庆云县',3,0),
(1923,183,'临邑县',3,0),
(1924,183,'齐河县',3,0),
(1925,183,'平原县',3,0),
(1926,183,'夏津县',3,0),
(1927,183,'武城县',3,0),
(1928,183,'开发区',3,0),
(1929,183,'乐陵市',3,0),
(1930,183,'禹城市',3,0),
(1931,183,'其它区',3,0),
(1932,184,'东昌府区',3,0),
(1933,184,'阳谷县',3,0),
(1934,184,'莘县',3,0),
(1935,184,'茌平县',3,0),
(1936,184,'东阿县',3,0),
(1937,184,'冠县',3,0),
(1938,184,'高唐县',3,0),
(1939,184,'临清市',3,0),
(1940,184,'其它区',3,0),
(1941,185,'滨城区',3,0),
(1942,185,'惠民县',3,0),
(1943,185,'阳信县',3,0),
(1944,185,'无棣县',3,0),
(1945,185,'沾化区',3,0),
(1946,185,'博兴县',3,0),
(1947,185,'邹平县',3,0),
(1948,185,'其它区',3,0),
(1949,186,'牡丹区',3,0),
(1950,186,'曹县',3,0),
(1951,186,'单县',3,0),
(1952,186,'成武县',3,0),
(1953,186,'巨野县',3,0),
(1954,186,'郓城县',3,0),
(1955,186,'鄄城县',3,0),
(1956,186,'定陶县',3,0),
(1957,186,'东明县',3,0),
(1958,186,'其它区',3,0),
(1959,187,'中原区',3,0),
(1960,187,'二七区',3,0),
(1961,187,'管城回族区',3,0),
(1962,187,'金水区',3,0),
(1963,187,'上街区',3,0),
(1964,187,'惠济区',3,0),
(1965,187,'中牟县',3,0),
(1966,187,'巩义市',3,0),
(1967,187,'荥阳市',3,0),
(1968,187,'新密市',3,0),
(1969,187,'新郑市',3,0),
(1970,187,'登封市',3,0),
(1971,187,'郑东新区',3,0),
(1972,187,'高新区',3,0),
(1973,187,'其它区',3,0),
(1974,188,'龙亭区',3,0),
(1975,188,'顺河回族区',3,0),
(1976,188,'鼓楼区',3,0),
(1977,188,'禹王台区',3,0),
(1978,188,'金明区',3,0),
(1979,188,'杞县',3,0),
(1980,188,'通许县',3,0),
(1981,188,'尉氏县',3,0),
(1982,188,'祥符区',3,0),
(1983,188,'兰考县',3,0),
(1984,188,'其它区',3,0),
(1985,189,'老城区',3,0),
(1986,189,'西工区',3,0),
(1987,189,'瀍河回族区',3,0),
(1988,189,'涧西区',3,0),
(1989,189,'吉利区',3,0),
(1990,189,'洛龙区',3,0),
(1991,189,'孟津县',3,0),
(1992,189,'新安县',3,0),
(1993,189,'栾川县',3,0),
(1994,189,'嵩县',3,0),
(1995,189,'汝阳县',3,0),
(1996,189,'宜阳县',3,0),
(1997,189,'洛宁县',3,0),
(1998,189,'伊川县',3,0),
(1999,189,'偃师市',3,0),
(2000,190,'新华区',3,0),
(2001,190,'卫东区',3,0),
(2002,190,'石龙区',3,0),
(2003,190,'湛河区',3,0),
(2004,190,'宝丰县',3,0),
(2005,190,'叶县',3,0),
(2006,190,'鲁山县',3,0),
(2007,190,'郏县',3,0),
(2008,190,'舞钢市',3,0),
(2009,190,'汝州市',3,0),
(2010,190,'其它区',3,0),
(2011,191,'文峰区',3,0),
(2012,191,'北关区',3,0),
(2013,191,'殷都区',3,0),
(2014,191,'龙安区',3,0),
(2015,191,'安阳县',3,0),
(2016,191,'汤阴县',3,0),
(2017,191,'滑县',3,0),
(2018,191,'内黄县',3,0),
(2019,191,'林州市',3,0),
(2020,191,'其它区',3,0),
(2021,192,'鹤山区',3,0),
(2022,192,'山城区',3,0),
(2023,192,'淇滨区',3,0),
(2024,192,'浚县',3,0),
(2025,192,'淇县',3,0),
(2026,192,'其它区',3,0),
(2027,193,'红旗区',3,0),
(2028,193,'卫滨区',3,0),
(2029,193,'凤泉区',3,0),
(2030,193,'牧野区',3,0),
(2031,193,'新乡县',3,0),
(2032,193,'获嘉县',3,0),
(2033,193,'原阳县',3,0),
(2034,193,'延津县',3,0),
(2035,193,'封丘县',3,0),
(2036,193,'长垣县',3,0),
(2037,193,'卫辉市',3,0),
(2038,193,'辉县市',3,0),
(2039,193,'其它区',3,0),
(2040,194,'解放区',3,0),
(2041,194,'中站区',3,0),
(2042,194,'马村区',3,0),
(2043,194,'山阳区',3,0),
(2044,194,'修武县',3,0),
(2045,194,'博爱县',3,0),
(2046,194,'武陟县',3,0),
(2047,194,'温县',3,0),
(2048,194,'沁阳市',3,0),
(2049,194,'孟州市',3,0),
(2050,194,'其它区',3,0),
(2051,195,'华龙区',3,0),
(2052,195,'清丰县',3,0),
(2053,195,'南乐县',3,0),
(2054,195,'范县',3,0),
(2055,195,'台前县',3,0),
(2056,195,'濮阳县',3,0),
(2057,195,'其它区',3,0),
(2058,196,'魏都区',3,0),
(2059,196,'许昌县',3,0),
(2060,196,'鄢陵县',3,0),
(2061,196,'襄城县',3,0),
(2062,196,'禹州市',3,0),
(2063,196,'长葛市',3,0),
(2064,196,'其它区',3,0),
(2065,197,'源汇区',3,0),
(2066,197,'郾城区',3,0),
(2067,197,'召陵区',3,0),
(2068,197,'舞阳县',3,0),
(2069,197,'临颍县',3,0),
(2070,197,'其它区',3,0),
(2071,198,'湖滨区',3,0),
(2072,198,'渑池县',3,0),
(2073,198,'陕州区',3,0),
(2074,198,'卢氏县',3,0),
(2075,198,'义马市',3,0),
(2076,198,'灵宝市',3,0),
(2077,198,'其它区',3,0),
(2078,199,'宛城区',3,0),
(2079,199,'卧龙区',3,0),
(2080,199,'南召县',3,0),
(2081,199,'方城县',3,0),
(2082,199,'西峡县',3,0),
(2083,199,'镇平县',3,0),
(2084,199,'内乡县',3,0),
(2085,199,'淅川县',3,0),
(2086,199,'社旗县',3,0),
(2087,199,'唐河县',3,0),
(2088,199,'新野县',3,0),
(2089,199,'桐柏县',3,0),
(2090,199,'邓州市',3,0),
(2091,199,'其它区',3,0),
(2092,200,'梁园区',3,0),
(2093,200,'睢阳区',3,0),
(2094,200,'民权县',3,0),
(2095,200,'睢县',3,0),
(2096,200,'宁陵县',3,0),
(2097,200,'柘城县',3,0),
(2098,200,'虞城县',3,0),
(2099,200,'夏邑县',3,0),
(2100,200,'永城市',3,0),
(2101,200,'其它区',3,0),
(2102,201,'浉河区',3,0),
(2103,201,'平桥区',3,0),
(2104,201,'罗山县',3,0),
(2105,201,'光山县',3,0),
(2106,201,'新县',3,0),
(2107,201,'商城县',3,0),
(2108,201,'固始县',3,0),
(2109,201,'潢川县',3,0),
(2110,201,'淮滨县',3,0),
(2111,201,'息县',3,0),
(2112,201,'其它区',3,0),
(2113,202,'川汇区',3,0),
(2114,202,'扶沟县',3,0),
(2115,202,'西华县',3,0),
(2116,202,'商水县',3,0),
(2117,202,'沈丘县',3,0),
(2118,202,'郸城县',3,0),
(2119,202,'淮阳县',3,0),
(2120,202,'太康县',3,0),
(2121,202,'鹿邑县',3,0),
(2122,202,'项城市',3,0),
(2123,202,'其它区',3,0),
(2124,203,'驿城区',3,0),
(2125,203,'西平县',3,0),
(2126,203,'上蔡县',3,0),
(2127,203,'平舆县',3,0),
(2128,203,'正阳县',3,0),
(2129,203,'确山县',3,0),
(2130,203,'泌阳县',3,0),
(2131,203,'汝南县',3,0),
(2132,203,'遂平县',3,0),
(2133,203,'新蔡县',3,0),
(2134,203,'其它区',3,0),
(2135,204,'江岸区',3,0),
(2136,204,'江汉区',3,0),
(2137,204,'硚口区',3,0),
(2138,204,'汉阳区',3,0),
(2139,204,'武昌区',3,0),
(2140,204,'青山区',3,0),
(2141,204,'洪山区',3,0),
(2142,204,'东西湖区',3,0),
(2143,204,'汉南区',3,0),
(2144,204,'蔡甸区',3,0),
(2145,204,'江夏区',3,0),
(2146,204,'黄陂区',3,0),
(2147,204,'新洲区',3,0),
(2148,204,'其它区',3,0),
(2149,205,'黄石港区',3,0),
(2150,205,'西塞山区',3,0),
(2151,205,'下陆区',3,0),
(2152,205,'铁山区',3,0),
(2153,205,'阳新县',3,0),
(2154,205,'大冶市',3,0),
(2155,205,'其它区',3,0),
(2156,206,'茅箭区',3,0),
(2157,206,'张湾区',3,0),
(2158,206,'郧阳区',3,0),
(2159,206,'郧西县',3,0),
(2160,206,'竹山县',3,0),
(2161,206,'竹溪县',3,0),
(2162,206,'房县',3,0),
(2163,206,'丹江口市',3,0),
(2164,206,'城区',3,0),
(2165,206,'其它区',3,0),
(2166,207,'西陵区',3,0),
(2167,207,'伍家岗区',3,0),
(2168,207,'点军区',3,0),
(2169,207,'猇亭区',3,0),
(2170,207,'夷陵区',3,0),
(2171,207,'远安县',3,0),
(2172,207,'兴山县',3,0),
(2173,207,'秭归县',3,0),
(2174,207,'长阳土家族自治县',3,0),
(2175,207,'五峰土家族自治县',3,0),
(2176,207,'葛洲坝区',3,0),
(2177,207,'开发区',3,0),
(2178,207,'宜都市',3,0),
(2179,207,'当阳市',3,0),
(2180,207,'枝江市',3,0),
(2181,207,'其它区',3,0),
(2182,208,'襄城区',3,0),
(2183,208,'樊城区',3,0),
(2184,208,'襄州区',3,0),
(2185,208,'南漳县',3,0),
(2186,208,'谷城县',3,0),
(2187,208,'保康县',3,0),
(2188,208,'老河口市',3,0),
(2189,208,'枣阳市',3,0),
(2190,208,'宜城市',3,0),
(2191,208,'其它区',3,0),
(2192,209,'梁子湖区',3,0),
(2193,209,'华容区',3,0),
(2194,209,'鄂城区',3,0),
(2195,209,'其它区',3,0),
(2196,210,'东宝区',3,0),
(2197,210,'掇刀区',3,0),
(2198,210,'京山县',3,0),
(2199,210,'沙洋县',3,0),
(2200,210,'钟祥市',3,0),
(2201,210,'其它区',3,0),
(2202,211,'孝南区',3,0),
(2203,211,'孝昌县',3,0),
(2204,211,'大悟县',3,0),
(2205,211,'云梦县',3,0),
(2206,211,'应城市',3,0),
(2207,211,'安陆市',3,0),
(2208,211,'汉川市',3,0),
(2209,211,'其它区',3,0),
(2210,212,'沙市区',3,0),
(2211,212,'荆州区',3,0),
(2212,212,'公安县',3,0),
(2213,212,'监利县',3,0),
(2214,212,'江陵县',3,0),
(2215,212,'石首市',3,0),
(2216,212,'洪湖市',3,0),
(2217,212,'松滋市',3,0),
(2218,212,'其它区',3,0),
(2219,213,'黄州区',3,0),
(2220,213,'团风县',3,0),
(2221,213,'红安县',3,0),
(2222,213,'罗田县',3,0),
(2223,213,'英山县',3,0),
(2224,213,'浠水县',3,0),
(2225,213,'蕲春县',3,0),
(2226,213,'黄梅县',3,0),
(2227,213,'麻城市',3,0),
(2228,213,'武穴市',3,0),
(2229,213,'其它区',3,0),
(2230,214,'咸安区',3,0),
(2231,214,'嘉鱼县',3,0),
(2232,214,'通城县',3,0),
(2233,214,'崇阳县',3,0),
(2234,214,'通山县',3,0),
(2235,214,'赤壁市',3,0),
(2236,214,'温泉城区',3,0),
(2237,214,'其它区',3,0),
(2238,215,'曾都区',3,0),
(2239,215,'随县',3,0),
(2240,215,'广水市',3,0),
(2241,215,'其它区',3,0),
(2242,216,'恩施市',3,0),
(2243,216,'利川市',3,0),
(2244,216,'建始县',3,0),
(2245,216,'巴东县',3,0),
(2246,216,'宣恩县',3,0),
(2247,216,'咸丰县',3,0),
(2248,216,'来凤县',3,0),
(2249,216,'鹤峰县',3,0),
(2250,216,'其它区',3,0),
(2251,217,'芙蓉区',3,0),
(2252,217,'天心区',3,0),
(2253,217,'岳麓区',3,0),
(2254,217,'开福区',3,0),
(2255,217,'雨花区',3,0),
(2256,217,'长沙县',3,0),
(2257,217,'望城区',3,0),
(2258,217,'宁乡县',3,0),
(2259,217,'浏阳市',3,0),
(2260,217,'其它区',3,0),
(2261,218,'荷塘区',3,0),
(2262,218,'芦淞区',3,0),
(2263,218,'石峰区',3,0),
(2264,218,'天元区',3,0),
(2265,218,'株洲县',3,0),
(2266,218,'攸县',3,0),
(2267,218,'茶陵县',3,0),
(2268,218,'炎陵县',3,0),
(2269,218,'醴陵市',3,0),
(2270,218,'其它区',3,0),
(2271,219,'雨湖区',3,0),
(2272,219,'岳塘区',3,0),
(2273,219,'湘潭县',3,0),
(2274,219,'湘乡市',3,0),
(2275,219,'韶山市',3,0),
(2276,219,'其它区',3,0),
(2277,220,'珠晖区',3,0),
(2278,220,'雁峰区',3,0),
(2279,220,'石鼓区',3,0),
(2280,220,'蒸湘区',3,0),
(2281,220,'南岳区',3,0),
(2282,220,'衡阳县',3,0),
(2283,220,'衡南县',3,0),
(2284,220,'衡山县',3,0),
(2285,220,'衡东县',3,0),
(2286,220,'祁东县',3,0),
(2287,220,'耒阳市',3,0),
(2288,220,'常宁市',3,0),
(2289,220,'其它区',3,0),
(2290,221,'双清区',3,0),
(2291,221,'大祥区',3,0),
(2292,221,'北塔区',3,0),
(2293,221,'邵东县',3,0),
(2294,221,'新邵县',3,0),
(2295,221,'邵阳县',3,0),
(2296,221,'隆回县',3,0),
(2297,221,'洞口县',3,0),
(2298,221,'绥宁县',3,0),
(2299,221,'新宁县',3,0),
(2300,221,'城步苗族自治县',3,0),
(2301,221,'武冈市',3,0),
(2302,221,'其它区',3,0),
(2303,222,'岳阳楼区',3,0),
(2304,222,'云溪区',3,0),
(2305,222,'君山区',3,0),
(2306,222,'岳阳县',3,0),
(2307,222,'华容县',3,0),
(2308,222,'湘阴县',3,0),
(2309,222,'平江县',3,0),
(2310,222,'汨罗市',3,0),
(2311,222,'临湘市',3,0),
(2312,222,'其它区',3,0),
(2313,223,'武陵区',3,0),
(2314,223,'鼎城区',3,0),
(2315,223,'安乡县',3,0),
(2316,223,'汉寿县',3,0),
(2317,223,'澧县',3,0),
(2318,223,'临澧县',3,0),
(2319,223,'桃源县',3,0),
(2320,223,'石门县',3,0),
(2321,223,'津市市',3,0),
(2322,223,'其它区',3,0),
(2323,224,'永定区',3,0),
(2324,224,'武陵源区',3,0),
(2325,224,'慈利县',3,0),
(2326,224,'桑植县',3,0),
(2327,224,'其它区',3,0),
(2328,225,'资阳区',3,0),
(2329,225,'赫山区',3,0),
(2330,225,'南县',3,0),
(2331,225,'桃江县',3,0),
(2332,225,'安化县',3,0),
(2333,225,'沅江市',3,0),
(2334,225,'其它区',3,0),
(2335,226,'北湖区',3,0),
(2336,226,'苏仙区',3,0),
(2337,226,'桂阳县',3,0),
(2338,226,'宜章县',3,0),
(2339,226,'永兴县',3,0),
(2340,226,'嘉禾县',3,0),
(2341,226,'临武县',3,0),
(2342,226,'汝城县',3,0),
(2343,226,'桂东县',3,0),
(2344,226,'安仁县',3,0),
(2345,226,'资兴市',3,0),
(2346,226,'其它区',3,0),
(2347,227,'零陵区',3,0),
(2348,227,'冷水滩区',3,0),
(2349,227,'祁阳县',3,0),
(2350,227,'东安县',3,0),
(2351,227,'双牌县',3,0),
(2352,227,'道县',3,0),
(2353,227,'江永县',3,0),
(2354,227,'宁远县',3,0),
(2355,227,'蓝山县',3,0),
(2356,227,'新田县',3,0),
(2357,227,'江华瑶族自治县',3,0),
(2358,227,'其它区',3,0),
(2359,228,'鹤城区',3,0),
(2360,228,'中方县',3,0),
(2361,228,'沅陵县',3,0),
(2362,228,'辰溪县',3,0),
(2363,228,'溆浦县',3,0),
(2364,228,'会同县',3,0),
(2365,228,'麻阳苗族自治县',3,0),
(2366,228,'新晃侗族自治县',3,0),
(2367,228,'芷江侗族自治县',3,0),
(2368,228,'靖州苗族侗族自治县',3,0),
(2369,228,'通道侗族自治县',3,0),
(2370,228,'洪江市',3,0),
(2371,228,'其它区',3,0),
(2372,229,'娄星区',3,0),
(2373,229,'双峰县',3,0),
(2374,229,'新化县',3,0),
(2375,229,'冷水江市',3,0),
(2376,229,'涟源市',3,0),
(2377,229,'其它区',3,0),
(2378,230,'吉首市',3,0),
(2379,230,'泸溪县',3,0),
(2380,230,'凤凰县',3,0),
(2381,230,'花垣县',3,0),
(2382,230,'保靖县',3,0),
(2383,230,'古丈县',3,0),
(2384,230,'永顺县',3,0),
(2385,230,'龙山县',3,0),
(2386,230,'其它区',3,0),
(2387,231,'荔湾区',3,0),
(2388,231,'越秀区',3,0),
(2389,231,'海珠区',3,0),
(2390,231,'天河区',3,0),
(2391,231,'白云区',3,0),
(2392,231,'黄埔区',3,0),
(2393,231,'番禺区',3,0),
(2394,231,'花都区',3,0),
(2395,231,'南沙区',3,0),
(2396,231,'萝岗区',3,0),
(2397,231,'增城区',3,0),
(2398,231,'从化区',3,0),
(2399,231,'东山区',3,0),
(2400,231,'其它区',3,0),
(2401,232,'武江区',3,0),
(2402,232,'浈江区',3,0),
(2403,232,'曲江区',3,0),
(2404,232,'始兴县',3,0),
(2405,232,'仁化县',3,0),
(2406,232,'翁源县',3,0),
(2407,232,'乳源瑶族自治县',3,0),
(2408,232,'新丰县',3,0),
(2409,232,'乐昌市',3,0),
(2410,232,'南雄市',3,0),
(2411,232,'其它区',3,0),
(2412,233,'罗湖区',3,0),
(2413,233,'福田区',3,0),
(2414,233,'南山区',3,0),
(2415,233,'宝安区',3,0),
(2416,233,'龙岗区',3,0),
(2417,233,'盐田区',3,0),
(2418,233,'其它区',3,0),
(2419,233,'光明新区',3,0),
(2420,233,'坪山新区',3,0),
(2421,233,'大鹏新区',3,0),
(2422,233,'龙华新区',3,0),
(2423,234,'香洲区',3,0),
(2424,234,'斗门区',3,0),
(2425,234,'金湾区',3,0),
(2426,234,'金唐区',3,0),
(2427,234,'南湾区',3,0),
(2428,234,'其它区',3,0),
(2429,235,'龙湖区',3,0),
(2430,235,'金平区',3,0),
(2431,235,'濠江区',3,0),
(2432,235,'潮阳区',3,0),
(2433,235,'潮南区',3,0),
(2434,235,'澄海区',3,0),
(2435,235,'南澳县',3,0),
(2436,235,'其它区',3,0),
(2437,236,'禅城区',3,0),
(2438,236,'南海区',3,0),
(2439,236,'顺德区',3,0),
(2440,236,'三水区',3,0),
(2441,236,'高明区',3,0),
(2442,236,'其它区',3,0),
(2443,237,'蓬江区',3,0),
(2444,237,'江海区',3,0),
(2445,237,'新会区',3,0),
(2446,237,'台山市',3,0),
(2447,237,'开平市',3,0),
(2448,237,'鹤山市',3,0),
(2449,237,'恩平市',3,0),
(2450,237,'其它区',3,0),
(2451,238,'赤坎区',3,0),
(2452,238,'霞山区',3,0),
(2453,238,'坡头区',3,0),
(2454,238,'麻章区',3,0),
(2455,238,'遂溪县',3,0),
(2456,238,'徐闻县',3,0),
(2457,238,'廉江市',3,0),
(2458,238,'雷州市',3,0),
(2459,238,'吴川市',3,0),
(2460,238,'其它区',3,0),
(2461,239,'茂南区',3,0),
(2462,239,'电白区',3,0),
(2463,239,'电白县',3,0),
(2464,239,'高州市',3,0),
(2465,239,'化州市',3,0),
(2466,239,'信宜市',3,0),
(2467,239,'其它区',3,0),
(2468,240,'端州区',3,0),
(2469,240,'鼎湖区',3,0),
(2470,240,'广宁县',3,0),
(2471,240,'怀集县',3,0),
(2472,240,'封开县',3,0),
(2473,240,'德庆县',3,0),
(2474,240,'高要市',3,0),
(2475,240,'四会市',3,0),
(2476,240,'其它区',3,0),
(2477,241,'惠城区',3,0),
(2478,241,'惠阳区',3,0),
(2479,241,'博罗县',3,0),
(2480,241,'惠东县',3,0),
(2481,241,'龙门县',3,0),
(2482,241,'其它区',3,0),
(2483,242,'梅江区',3,0),
(2484,242,'梅县区',3,0),
(2485,242,'大埔县',3,0),
(2486,242,'丰顺县',3,0),
(2487,242,'五华县',3,0),
(2488,242,'平远县',3,0),
(2489,242,'蕉岭县',3,0),
(2490,242,'兴宁市',3,0),
(2491,242,'其它区',3,0),
(2492,243,'城区',3,0),
(2493,243,'海丰县',3,0),
(2494,243,'陆河县',3,0),
(2495,243,'陆丰市',3,0),
(2496,243,'其它区',3,0),
(2497,244,'源城区',3,0),
(2498,244,'紫金县',3,0),
(2499,244,'龙川县',3,0),
(2500,244,'连平县',3,0),
(2501,244,'和平县',3,0),
(2502,244,'东源县',3,0),
(2503,244,'其它区',3,0),
(2504,245,'江城区',3,0),
(2505,245,'阳西县',3,0),
(2506,245,'阳东区',3,0),
(2507,245,'阳春市',3,0),
(2508,245,'其它区',3,0),
(2509,246,'清城区',3,0),
(2510,246,'佛冈县',3,0),
(2511,246,'阳山县',3,0),
(2512,246,'连山壮族瑶族自治县',3,0),
(2513,246,'连南瑶族自治县',3,0),
(2514,246,'清新区',3,0),
(2515,246,'英德市',3,0),
(2516,246,'连州市',3,0),
(2517,246,'其它区',3,0),
(2518,250,'湘桥区',3,0),
(2519,250,'潮安区',3,0),
(2520,250,'饶平县',3,0),
(2521,250,'枫溪区',3,0),
(2522,250,'其它区',3,0),
(2523,251,'榕城区',3,0),
(2524,251,'揭东区',3,0),
(2525,251,'揭西县',3,0),
(2526,251,'惠来县',3,0),
(2527,251,'普宁市',3,0),
(2528,251,'东山区',3,0),
(2529,251,'其它区',3,0),
(2530,252,'云城区',3,0),
(2531,252,'新兴县',3,0),
(2532,252,'郁南县',3,0),
(2533,252,'云安区',3,0),
(2534,252,'罗定市',3,0),
(2535,252,'其它区',3,0),
(2536,253,'兴宁区',3,0),
(2537,253,'青秀区',3,0),
(2538,253,'江南区',3,0),
(2539,253,'西乡塘区',3,0),
(2540,253,'良庆区',3,0),
(2541,253,'邕宁区',3,0),
(2542,253,'武鸣区',3,0),
(2543,253,'隆安县',3,0),
(2544,253,'马山县',3,0),
(2545,253,'上林县',3,0),
(2546,253,'宾阳县',3,0),
(2547,253,'横县',3,0),
(2548,253,'其它区',3,0),
(2549,254,'城中区',3,0),
(2550,254,'鱼峰区',3,0),
(2551,254,'柳南区',3,0),
(2552,254,'柳北区',3,0),
(2553,254,'柳江县',3,0),
(2554,254,'柳城县',3,0),
(2555,254,'鹿寨县',3,0),
(2556,254,'融安县',3,0),
(2557,254,'融水苗族自治县',3,0),
(2558,254,'三江侗族自治县',3,0),
(2559,254,'其它区',3,0),
(2560,255,'秀峰区',3,0),
(2561,255,'叠彩区',3,0),
(2562,255,'象山区',3,0),
(2563,255,'七星区',3,0),
(2564,255,'雁山区',3,0),
(2565,255,'阳朔县',3,0),
(2566,255,'临桂区',3,0),
(2567,255,'灵川县',3,0),
(2568,255,'全州县',3,0),
(2569,255,'兴安县',3,0),
(2570,255,'永福县',3,0),
(2571,255,'灌阳县',3,0),
(2572,255,'龙胜各族自治县',3,0),
(2573,255,'资源县',3,0),
(2574,255,'平乐县',3,0),
(2575,255,'荔浦县',3,0),
(2576,255,'恭城瑶族自治县',3,0),
(2577,255,'其它区',3,0),
(2578,256,'万秀区',3,0),
(2579,256,'蝶山区',3,0),
(2580,256,'长洲区',3,0),
(2581,256,'龙圩区',3,0),
(2582,256,'苍梧县',3,0),
(2583,256,'藤县',3,0),
(2584,256,'蒙山县',3,0),
(2585,256,'岑溪市',3,0),
(2586,256,'其它区',3,0),
(2587,257,'海城区',3,0),
(2588,257,'银海区',3,0),
(2589,257,'铁山港区',3,0),
(2590,257,'合浦县',3,0),
(2591,257,'其它区',3,0),
(2592,258,'港口区',3,0),
(2593,258,'防城区',3,0),
(2594,258,'上思县',3,0),
(2595,258,'东兴市',3,0),
(2596,258,'其它区',3,0),
(2597,259,'钦南区',3,0),
(2598,259,'钦北区',3,0),
(2599,259,'灵山县',3,0),
(2600,259,'浦北县',3,0),
(2601,259,'其它区',3,0),
(2602,260,'港北区',3,0),
(2603,260,'港南区',3,0),
(2604,260,'覃塘区',3,0),
(2605,260,'平南县',3,0),
(2606,260,'桂平市',3,0),
(2607,260,'其它区',3,0),
(2608,261,'玉州区',3,0),
(2609,261,'福绵区',3,0),
(2610,261,'容县',3,0),
(2611,261,'陆川县',3,0),
(2612,261,'博白县',3,0),
(2613,261,'兴业县',3,0),
(2614,261,'北流市',3,0),
(2615,261,'其它区',3,0),
(2616,262,'右江区',3,0),
(2617,262,'田阳县',3,0),
(2618,262,'田东县',3,0),
(2619,262,'平果县',3,0),
(2620,262,'德保县',3,0),
(2621,262,'靖西县',3,0),
(2622,262,'那坡县',3,0),
(2623,262,'凌云县',3,0),
(2624,262,'乐业县',3,0),
(2625,262,'田林县',3,0),
(2626,262,'西林县',3,0),
(2627,262,'隆林各族自治县',3,0),
(2628,262,'其它区',3,0),
(2629,263,'八步区',3,0),
(2630,263,'平桂管理区',3,0),
(2631,263,'昭平县',3,0),
(2632,263,'钟山县',3,0),
(2633,263,'富川瑶族自治县',3,0),
(2634,263,'其它区',3,0),
(2635,264,'金城江区',3,0),
(2636,264,'南丹县',3,0),
(2637,264,'天峨县',3,0),
(2638,264,'凤山县',3,0),
(2639,264,'东兰县',3,0),
(2640,264,'罗城仫佬族自治县',3,0),
(2641,264,'环江毛南族自治县',3,0),
(2642,264,'巴马瑶族自治县',3,0),
(2643,264,'都安瑶族自治县',3,0),
(2644,264,'大化瑶族自治县',3,0),
(2645,264,'宜州市',3,0),
(2646,264,'其它区',3,0),
(2647,265,'兴宾区',3,0),
(2648,265,'忻城县',3,0),
(2649,265,'象州县',3,0),
(2650,265,'武宣县',3,0),
(2651,265,'金秀瑶族自治县',3,0),
(2652,265,'合山市',3,0),
(2653,265,'其它区',3,0),
(2654,266,'江州区',3,0),
(2655,266,'扶绥县',3,0),
(2656,266,'宁明县',3,0),
(2657,266,'龙州县',3,0),
(2658,266,'大新县',3,0),
(2659,266,'天等县',3,0),
(2660,266,'凭祥市',3,0),
(2661,266,'其它区',3,0),
(2662,267,'秀英区',3,0),
(2663,267,'龙华区',3,0),
(2664,267,'琼山区',3,0),
(2665,267,'美兰区',3,0),
(2666,267,'其它区',3,0),
(2667,269,'西沙群岛',3,0),
(2668,269,'南沙群岛',3,0),
(2669,269,'中沙群岛的岛礁及其海域',3,0),
(2670,189,'高新区',3,0),
(2671,189,'其它区',3,0),
(2672,270,'万州区',3,0),
(2673,270,'涪陵区',3,0),
(2674,270,'渝中区',3,0),
(2675,270,'大渡口区',3,0),
(2676,270,'江北区',3,0),
(2677,270,'沙坪坝区',3,0),
(2678,270,'九龙坡区',3,0),
(2679,270,'南岸区',3,0),
(2680,270,'北碚区',3,0),
(2681,270,'万盛区',3,0),
(2682,270,'双桥区',3,0),
(2683,270,'渝北区',3,0),
(2684,270,'巴南区',3,0),
(2685,270,'黔江区',3,0),
(2686,270,'长寿区',3,0),
(2687,270,'綦江区',3,0),
(2688,270,'潼南县',3,0),
(2689,270,'铜梁区',3,0),
(2690,270,'大足区',3,0),
(2691,270,'荣昌县',3,0),
(2692,270,'璧山区',3,0),
(2693,270,'梁平县',3,0),
(2694,270,'城口县',3,0),
(2695,270,'丰都县',3,0),
(2696,270,'垫江县',3,0),
(2697,270,'武隆县',3,0),
(2698,270,'忠县',3,0),
(2699,270,'开县',3,0),
(2700,270,'云阳县',3,0),
(2701,270,'奉节县',3,0),
(2702,270,'巫山县',3,0),
(2703,270,'巫溪县',3,0),
(2704,270,'石柱土家族自治县',3,0),
(2705,270,'秀山土家族苗族自治县',3,0),
(2706,270,'酉阳土家族苗族自治县',3,0),
(2707,270,'彭水苗族土家族自治县',3,0),
(2708,270,'江津区',3,0),
(2709,270,'合川区',3,0),
(2710,270,'永川区',3,0),
(2711,270,'南川区',3,0),
(2712,270,'其它区',3,0),
(2713,271,'锦江区',3,0),
(2714,271,'青羊区',3,0),
(2715,271,'金牛区',3,0),
(2716,271,'武侯区',3,0),
(2717,271,'成华区',3,0),
(2718,271,'龙泉驿区',3,0),
(2719,271,'青白江区',3,0),
(2720,271,'新都区',3,0),
(2721,271,'温江区',3,0),
(2722,271,'金堂县',3,0),
(2723,271,'双流县',3,0),
(2724,271,'郫县',3,0),
(2725,271,'大邑县',3,0),
(2726,271,'蒲江县',3,0),
(2727,271,'新津县',3,0),
(2728,271,'都江堰市',3,0),
(2729,271,'彭州市',3,0),
(2730,271,'邛崃市',3,0),
(2731,271,'崇州市',3,0),
(2732,271,'其它区',3,0),
(2733,272,'自流井区',3,0),
(2734,272,'贡井区',3,0),
(2735,272,'大安区',3,0),
(2736,272,'沿滩区',3,0),
(2737,272,'荣县',3,0),
(2738,272,'富顺县',3,0),
(2739,272,'其它区',3,0),
(2740,273,'东区',3,0),
(2741,273,'西区',3,0),
(2742,273,'仁和区',3,0),
(2743,273,'米易县',3,0),
(2744,273,'盐边县',3,0),
(2745,273,'其它区',3,0),
(2746,274,'江阳区',3,0),
(2747,274,'纳溪区',3,0),
(2748,274,'龙马潭区',3,0),
(2749,274,'泸县',3,0),
(2750,274,'合江县',3,0),
(2751,274,'叙永县',3,0),
(2752,274,'古蔺县',3,0),
(2753,274,'其它区',3,0),
(2754,275,'旌阳区',3,0),
(2755,275,'中江县',3,0),
(2756,275,'罗江县',3,0),
(2757,275,'广汉市',3,0),
(2758,275,'什邡市',3,0),
(2759,275,'绵竹市',3,0),
(2760,275,'其它区',3,0),
(2761,276,'涪城区',3,0),
(2762,276,'游仙区',3,0),
(2763,276,'三台县',3,0),
(2764,276,'盐亭县',3,0),
(2765,276,'安县',3,0),
(2766,276,'梓潼县',3,0),
(2767,276,'北川羌族自治县',3,0),
(2768,276,'平武县',3,0),
(2769,276,'高新区',3,0),
(2770,276,'江油市',3,0),
(2771,276,'其它区',3,0),
(2772,277,'利州区',3,0),
(2773,277,'昭化区',3,0),
(2774,277,'朝天区',3,0),
(2775,277,'旺苍县',3,0),
(2776,277,'青川县',3,0),
(2777,277,'剑阁县',3,0),
(2778,277,'苍溪县',3,0),
(2779,277,'其它区',3,0),
(2780,278,'船山区',3,0),
(2781,278,'安居区',3,0),
(2782,278,'蓬溪县',3,0),
(2783,278,'射洪县',3,0),
(2784,278,'大英县',3,0),
(2785,278,'其它区',3,0),
(2786,279,'市中区',3,0),
(2787,279,'东兴区',3,0),
(2788,279,'威远县',3,0),
(2789,279,'资中县',3,0),
(2790,279,'隆昌县',3,0),
(2791,279,'其它区',3,0),
(2792,280,'市中区',3,0),
(2793,280,'沙湾区',3,0),
(2794,280,'五通桥区',3,0),
(2795,280,'金口河区',3,0),
(2796,280,'犍为县',3,0),
(2797,280,'井研县',3,0),
(2798,280,'夹江县',3,0),
(2799,280,'沐川县',3,0),
(2800,280,'峨边彝族自治县',3,0),
(2801,280,'马边彝族自治县',3,0),
(2802,280,'峨眉山市',3,0),
(2803,280,'其它区',3,0),
(2804,281,'顺庆区',3,0),
(2805,281,'高坪区',3,0),
(2806,281,'嘉陵区',3,0),
(2807,281,'南部县',3,0),
(2808,281,'营山县',3,0),
(2809,281,'蓬安县',3,0),
(2810,281,'仪陇县',3,0),
(2811,281,'西充县',3,0),
(2812,281,'阆中市',3,0),
(2813,281,'其它区',3,0),
(2814,282,'东坡区',3,0),
(2815,282,'仁寿县',3,0),
(2816,282,'彭山区',3,0),
(2817,282,'洪雅县',3,0),
(2818,282,'丹棱县',3,0),
(2819,282,'青神县',3,0),
(2820,282,'其它区',3,0),
(2821,283,'翠屏区',3,0),
(2822,283,'宜宾县',3,0),
(2823,283,'南溪区',3,0),
(2824,283,'江安县',3,0),
(2825,283,'长宁县',3,0),
(2826,283,'高县',3,0),
(2827,283,'珙县',3,0),
(2828,283,'筠连县',3,0),
(2829,283,'兴文县',3,0),
(2830,283,'屏山县',3,0),
(2831,283,'其它区',3,0),
(2832,284,'广安区',3,0),
(2833,284,'前锋区',3,0),
(2834,284,'岳池县',3,0),
(2835,284,'武胜县',3,0),
(2836,284,'邻水县',3,0),
(2837,284,'华蓥市',3,0),
(2838,284,'市辖区',3,0),
(2839,284,'其它区',3,0),
(2840,285,'通川区',3,0),
(2841,285,'达川区',3,0),
(2842,285,'宣汉县',3,0),
(2843,285,'开江县',3,0),
(2844,285,'大竹县',3,0),
(2845,285,'渠县',3,0),
(2846,285,'万源市',3,0),
(2847,285,'其它区',3,0),
(2848,286,'雨城区',3,0),
(2849,286,'名山区',3,0),
(2850,286,'荥经县',3,0),
(2851,286,'汉源县',3,0),
(2852,286,'石棉县',3,0),
(2853,286,'天全县',3,0),
(2854,286,'芦山县',3,0),
(2855,286,'宝兴县',3,0),
(2856,286,'其它区',3,0),
(2857,287,'巴州区',3,0),
(2858,287,'恩阳区',3,0),
(2859,287,'通江县',3,0),
(2860,287,'南江县',3,0),
(2861,287,'平昌县',3,0),
(2862,287,'其它区',3,0),
(2863,288,'雁江区',3,0),
(2864,288,'安岳县',3,0),
(2865,288,'乐至县',3,0),
(2866,288,'简阳市',3,0),
(2867,288,'其它区',3,0),
(2868,289,'汶川县',3,0),
(2869,289,'理县',3,0),
(2870,289,'茂县',3,0),
(2871,289,'松潘县',3,0),
(2872,289,'九寨沟县',3,0),
(2873,289,'金川县',3,0),
(2874,289,'小金县',3,0),
(2875,289,'黑水县',3,0),
(2876,289,'马尔康县',3,0),
(2877,289,'壤塘县',3,0),
(2878,289,'阿坝县',3,0),
(2879,289,'若尔盖县',3,0),
(2880,289,'红原县',3,0),
(2881,289,'其它区',3,0),
(2882,290,'康定市',3,0),
(2883,290,'泸定县',3,0),
(2884,290,'丹巴县',3,0),
(2885,290,'九龙县',3,0),
(2886,290,'雅江县',3,0),
(2887,290,'道孚县',3,0),
(2888,290,'炉霍县',3,0),
(2889,290,'甘孜县',3,0),
(2890,290,'新龙县',3,0),
(2891,290,'德格县',3,0),
(2892,290,'白玉县',3,0),
(2893,290,'石渠县',3,0),
(2894,290,'色达县',3,0),
(2895,290,'理塘县',3,0),
(2896,290,'巴塘县',3,0),
(2897,290,'乡城县',3,0),
(2898,290,'稻城县',3,0),
(2899,290,'得荣县',3,0),
(2900,290,'其它区',3,0),
(2901,291,'西昌市',3,0),
(2902,291,'木里藏族自治县',3,0),
(2903,291,'盐源县',3,0),
(2904,291,'德昌县',3,0),
(2905,291,'会理县',3,0),
(2906,291,'会东县',3,0),
(2907,291,'宁南县',3,0),
(2908,291,'普格县',3,0),
(2909,291,'布拖县',3,0),
(2910,291,'金阳县',3,0),
(2911,291,'昭觉县',3,0),
(2912,291,'喜德县',3,0),
(2913,291,'冕宁县',3,0),
(2914,291,'越西县',3,0),
(2915,291,'甘洛县',3,0),
(2916,291,'美姑县',3,0),
(2917,291,'雷波县',3,0),
(2918,291,'其它区',3,0),
(2919,292,'南明区',3,0),
(2920,292,'云岩区',3,0),
(2921,292,'花溪区',3,0),
(2922,292,'乌当区',3,0),
(2923,292,'白云区',3,0),
(2924,292,'小河区',3,0),
(2925,292,'开阳县',3,0),
(2926,292,'息烽县',3,0),
(2927,292,'修文县',3,0),
(2928,292,'观山湖区',3,0),
(2929,292,'清镇市',3,0),
(2930,292,'其它区',3,0),
(2931,293,'钟山区',3,0),
(2932,293,'六枝特区',3,0),
(2933,293,'水城县',3,0),
(2934,293,'盘县',3,0),
(2935,293,'其它区',3,0),
(2936,294,'红花岗区',3,0),
(2937,294,'汇川区',3,0),
(2938,294,'遵义县',3,0),
(2939,294,'桐梓县',3,0),
(2940,294,'绥阳县',3,0),
(2941,294,'正安县',3,0),
(2942,294,'道真仡佬族苗族自治县',3,0),
(2943,294,'务川仡佬族苗族自治县',3,0),
(2944,294,'凤冈县',3,0),
(2945,294,'湄潭县',3,0),
(2946,294,'余庆县',3,0),
(2947,294,'习水县',3,0),
(2948,294,'赤水市',3,0),
(2949,294,'仁怀市',3,0),
(2950,294,'其它区',3,0),
(2951,295,'西秀区',3,0),
(2952,295,'平坝区',3,0),
(2953,295,'普定县',3,0),
(2954,295,'镇宁布依族苗族自治县',3,0),
(2955,295,'关岭布依族苗族自治县',3,0),
(2956,295,'紫云苗族布依族自治县',3,0),
(2957,295,'其它区',3,0),
(2958,296,'碧江区',3,0),
(2959,296,'江口县',3,0),
(2960,296,'玉屏侗族自治县',3,0),
(2961,296,'石阡县',3,0),
(2962,296,'思南县',3,0),
(2963,296,'印江土家族苗族自治县',3,0),
(2964,296,'德江县',3,0),
(2965,296,'沿河土家族自治县',3,0),
(2966,296,'松桃苗族自治县',3,0),
(2967,296,'万山区',3,0),
(2968,296,'其它区',3,0),
(2969,297,'兴义市',3,0),
(2970,297,'兴仁县',3,0),
(2971,297,'普安县',3,0),
(2972,297,'晴隆县',3,0),
(2973,297,'贞丰县',3,0),
(2974,297,'望谟县',3,0),
(2975,297,'册亨县',3,0),
(2976,297,'安龙县',3,0),
(2977,297,'其它区',3,0),
(2978,298,'七星关区',3,0),
(2979,298,'大方县',3,0),
(2980,298,'黔西县',3,0),
(2981,298,'金沙县',3,0),
(2982,298,'织金县',3,0),
(2983,298,'纳雍县',3,0),
(2984,298,'威宁彝族回族苗族自治县',3,0),
(2985,298,'赫章县',3,0),
(2986,298,'其它区',3,0),
(2987,299,'凯里市',3,0),
(2988,299,'黄平县',3,0),
(2989,299,'施秉县',3,0),
(2990,299,'三穗县',3,0),
(2991,299,'镇远县',3,0),
(2992,299,'岑巩县',3,0),
(2993,299,'天柱县',3,0),
(2994,299,'锦屏县',3,0),
(2995,299,'剑河县',3,0),
(2996,299,'台江县',3,0),
(2997,299,'黎平县',3,0),
(2998,299,'榕江县',3,0),
(2999,299,'从江县',3,0),
(3000,299,'雷山县',3,0),
(3001,299,'麻江县',3,0),
(3002,299,'丹寨县',3,0),
(3003,299,'其它区',3,0),
(3004,300,'都匀市',3,0),
(3005,300,'福泉市',3,0),
(3006,300,'荔波县',3,0),
(3007,300,'贵定县',3,0),
(3008,300,'瓮安县',3,0),
(3009,300,'独山县',3,0),
(3010,300,'平塘县',3,0),
(3011,300,'罗甸县',3,0),
(3012,300,'长顺县',3,0),
(3013,300,'龙里县',3,0),
(3014,300,'惠水县',3,0),
(3015,300,'三都水族自治县',3,0),
(3016,300,'其它区',3,0),
(3017,301,'五华区',3,0),
(3018,301,'盘龙区',3,0),
(3019,301,'官渡区',3,0),
(3020,301,'西山区',3,0),
(3021,301,'东川区',3,0),
(3022,301,'呈贡区',3,0),
(3023,301,'晋宁县',3,0),
(3024,301,'富民县',3,0),
(3025,301,'宜良县',3,0),
(3026,301,'石林彝族自治县',3,0),
(3027,301,'嵩明县',3,0),
(3028,301,'禄劝彝族苗族自治县',3,0),
(3029,301,'寻甸回族彝族自治县',3,0),
(3030,301,'安宁市',3,0),
(3031,301,'其它区',3,0),
(3032,302,'麒麟区',3,0),
(3033,302,'马龙县',3,0),
(3034,302,'陆良县',3,0),
(3035,302,'师宗县',3,0),
(3036,302,'罗平县',3,0),
(3037,302,'富源县',3,0),
(3038,302,'会泽县',3,0),
(3039,302,'沾益县',3,0),
(3040,302,'宣威市',3,0),
(3041,302,'其它区',3,0),
(3042,303,'红塔区',3,0),
(3043,303,'江川县',3,0),
(3044,303,'澄江县',3,0),
(3045,303,'通海县',3,0),
(3046,303,'华宁县',3,0),
(3047,303,'易门县',3,0),
(3048,303,'峨山彝族自治县',3,0),
(3049,303,'新平彝族傣族自治县',3,0),
(3050,303,'元江哈尼族彝族傣族自治县',3,0),
(3051,303,'其它区',3,0),
(3052,304,'隆阳区',3,0),
(3053,304,'施甸县',3,0),
(3054,304,'腾冲县',3,0),
(3055,304,'龙陵县',3,0),
(3056,304,'昌宁县',3,0),
(3057,304,'其它区',3,0),
(3058,305,'昭阳区',3,0),
(3059,305,'鲁甸县',3,0),
(3060,305,'巧家县',3,0),
(3061,305,'盐津县',3,0),
(3062,305,'大关县',3,0),
(3063,305,'永善县',3,0),
(3064,305,'绥江县',3,0),
(3065,305,'镇雄县',3,0),
(3066,305,'彝良县',3,0),
(3067,305,'威信县',3,0),
(3068,305,'水富县',3,0),
(3069,305,'其它区',3,0),
(3070,306,'古城区',3,0),
(3071,306,'玉龙纳西族自治县',3,0),
(3072,306,'永胜县',3,0),
(3073,306,'华坪县',3,0),
(3074,306,'宁蒗彝族自治县',3,0),
(3075,306,'其它区',3,0),
(3076,307,'思茅区',3,0),
(3077,307,'宁洱哈尼族彝族自治县',3,0),
(3078,307,'墨江哈尼族自治县',3,0),
(3079,307,'景东彝族自治县',3,0),
(3080,307,'景谷傣族彝族自治县',3,0),
(3081,307,'镇沅彝族哈尼族拉祜族自治县',3,0),
(3082,307,'江城哈尼族彝族自治县',3,0),
(3083,307,'孟连傣族拉祜族佤族自治县',3,0),
(3084,307,'澜沧拉祜族自治县',3,0),
(3085,307,'西盟佤族自治县',3,0),
(3086,307,'其它区',3,0),
(3087,308,'临翔区',3,0),
(3088,308,'凤庆县',3,0),
(3089,308,'云县',3,0),
(3090,308,'永德县',3,0),
(3091,308,'镇康县',3,0),
(3092,308,'双江拉祜族佤族布朗族傣族自治县',3,0),
(3093,308,'耿马傣族佤族自治县',3,0),
(3094,308,'沧源佤族自治县',3,0),
(3095,308,'其它区',3,0),
(3096,309,'楚雄市',3,0),
(3097,309,'双柏县',3,0),
(3098,309,'牟定县',3,0),
(3099,309,'南华县',3,0),
(3100,309,'姚安县',3,0),
(3101,309,'大姚县',3,0),
(3102,309,'永仁县',3,0),
(3103,309,'元谋县',3,0),
(3104,309,'武定县',3,0),
(3105,309,'禄丰县',3,0),
(3106,309,'其它区',3,0),
(3107,310,'个旧市',3,0),
(3108,310,'开远市',3,0),
(3109,310,'蒙自市',3,0),
(3110,310,'屏边苗族自治县',3,0),
(3111,310,'建水县',3,0),
(3112,310,'石屏县',3,0),
(3113,310,'弥勒市',3,0),
(3114,310,'泸西县',3,0),
(3115,310,'元阳县',3,0),
(3116,310,'红河县',3,0),
(3117,310,'金平苗族瑶族傣族自治县',3,0),
(3118,310,'绿春县',3,0),
(3119,310,'河口瑶族自治县',3,0),
(3120,310,'其它区',3,0),
(3121,311,'文山市',3,0),
(3122,311,'砚山县',3,0),
(3123,311,'西畴县',3,0),
(3124,311,'麻栗坡县',3,0),
(3125,311,'马关县',3,0),
(3126,311,'丘北县',3,0),
(3127,311,'广南县',3,0),
(3128,311,'富宁县',3,0),
(3129,311,'其它区',3,0),
(3130,312,'景洪市',3,0),
(3131,312,'勐海县',3,0),
(3132,312,'勐腊县',3,0),
(3133,312,'其它区',3,0),
(3134,313,'大理市',3,0),
(3135,313,'漾濞彝族自治县',3,0),
(3136,313,'祥云县',3,0),
(3137,313,'宾川县',3,0),
(3138,313,'弥渡县',3,0),
(3139,313,'南涧彝族自治县',3,0),
(3140,313,'巍山彝族回族自治县',3,0),
(3141,313,'永平县',3,0),
(3142,313,'云龙县',3,0),
(3143,313,'洱源县',3,0),
(3144,313,'剑川县',3,0),
(3145,313,'鹤庆县',3,0),
(3146,313,'其它区',3,0),
(3147,314,'瑞丽市',3,0),
(3148,314,'芒市',3,0),
(3149,314,'梁河县',3,0),
(3150,314,'盈江县',3,0),
(3151,314,'陇川县',3,0),
(3152,314,'其它区',3,0),
(3153,315,'泸水县',3,0),
(3154,315,'福贡县',3,0),
(3155,315,'贡山独龙族怒族自治县',3,0),
(3156,315,'兰坪白族普米族自治县',3,0),
(3157,315,'其它区',3,0),
(3158,316,'香格里拉市',3,0),
(3159,316,'德钦县',3,0),
(3160,316,'维西傈僳族自治县',3,0),
(3161,316,'其它区',3,0),
(3162,317,'城关区',3,0),
(3163,317,'林周县',3,0),
(3164,317,'当雄县',3,0),
(3165,317,'尼木县',3,0),
(3166,317,'曲水县',3,0),
(3167,317,'堆龙德庆县',3,0),
(3168,317,'达孜县',3,0),
(3169,317,'墨竹工卡县',3,0),
(3170,317,'其它区',3,0),
(3171,318,'卡若区',3,0),
(3172,318,'江达县',3,0),
(3173,318,'贡觉县',3,0),
(3174,318,'类乌齐县',3,0),
(3175,318,'丁青县',3,0),
(3176,318,'察雅县',3,0),
(3177,318,'八宿县',3,0),
(3178,318,'左贡县',3,0),
(3179,318,'芒康县',3,0),
(3180,318,'洛隆县',3,0),
(3181,318,'边坝县',3,0),
(3182,318,'其它区',3,0),
(3183,319,'乃东县',3,0),
(3184,319,'扎囊县',3,0),
(3185,319,'贡嘎县',3,0),
(3186,319,'桑日县',3,0),
(3187,319,'琼结县',3,0),
(3188,319,'曲松县',3,0),
(3189,319,'措美县',3,0),
(3190,319,'洛扎县',3,0),
(3191,319,'加查县',3,0),
(3192,319,'隆子县',3,0),
(3193,319,'错那县',3,0),
(3194,319,'浪卡子县',3,0),
(3195,319,'其它区',3,0),
(3196,320,'桑珠孜区',3,0),
(3197,320,'南木林县',3,0),
(3198,320,'江孜县',3,0),
(3199,320,'定日县',3,0),
(3200,320,'萨迦县',3,0),
(3201,320,'拉孜县',3,0),
(3202,320,'昂仁县',3,0),
(3203,320,'谢通门县',3,0),
(3204,320,'白朗县',3,0),
(3205,320,'仁布县',3,0),
(3206,320,'康马县',3,0),
(3207,320,'定结县',3,0),
(3208,320,'仲巴县',3,0),
(3209,320,'亚东县',3,0),
(3210,320,'吉隆县',3,0),
(3211,320,'聂拉木县',3,0),
(3212,320,'萨嘎县',3,0),
(3213,320,'岗巴县',3,0),
(3214,320,'其它区',3,0),
(3215,321,'那曲县',3,0),
(3216,321,'嘉黎县',3,0),
(3217,321,'比如县',3,0),
(3218,321,'聂荣县',3,0),
(3219,321,'安多县',3,0),
(3220,321,'申扎县',3,0),
(3221,321,'索县',3,0),
(3222,321,'班戈县',3,0),
(3223,321,'巴青县',3,0),
(3224,321,'尼玛县',3,0),
(3225,321,'其它区',3,0),
(3226,321,'双湖县',3,0),
(3227,322,'普兰县',3,0),
(3228,322,'札达县',3,0),
(3229,322,'噶尔县',3,0),
(3230,322,'日土县',3,0),
(3231,322,'革吉县',3,0),
(3232,322,'改则县',3,0),
(3233,322,'措勤县',3,0),
(3234,322,'其它区',3,0),
(3235,323,'巴宜区',3,0),
(3236,323,'工布江达县',3,0),
(3237,323,'米林县',3,0),
(3238,323,'墨脱县',3,0),
(3239,323,'波密县',3,0),
(3240,323,'察隅县',3,0),
(3241,323,'朗县',3,0),
(3242,323,'其它区',3,0),
(3243,324,'新城区',3,0),
(3244,324,'碑林区',3,0),
(3245,324,'莲湖区',3,0),
(3246,324,'灞桥区',3,0),
(3247,324,'未央区',3,0),
(3248,324,'雁塔区',3,0),
(3249,324,'阎良区',3,0),
(3250,324,'临潼区',3,0),
(3251,324,'长安区',3,0),
(3252,324,'蓝田县',3,0),
(3253,324,'周至县',3,0),
(3254,324,'户县',3,0),
(3255,324,'高陵区',3,0),
(3256,324,'其它区',3,0),
(3257,325,'王益区',3,0),
(3258,325,'印台区',3,0),
(3259,325,'耀州区',3,0),
(3260,325,'宜君县',3,0),
(3261,325,'其它区',3,0),
(3262,326,'渭滨区',3,0),
(3263,326,'金台区',3,0),
(3264,326,'陈仓区',3,0),
(3265,326,'凤翔县',3,0),
(3266,326,'岐山县',3,0),
(3267,326,'扶风县',3,0),
(3268,326,'眉县',3,0),
(3269,326,'陇县',3,0),
(3270,326,'千阳县',3,0),
(3271,326,'麟游县',3,0),
(3272,326,'凤县',3,0),
(3273,326,'太白县',3,0),
(3274,326,'其它区',3,0),
(3275,327,'秦都区',3,0),
(3276,327,'杨陵区',3,0),
(3277,327,'渭城区',3,0),
(3278,327,'三原县',3,0),
(3279,327,'泾阳县',3,0),
(3280,327,'乾县',3,0),
(3281,327,'礼泉县',3,0),
(3282,327,'永寿县',3,0),
(3283,327,'彬县',3,0),
(3284,327,'长武县',3,0),
(3285,327,'旬邑县',3,0),
(3286,327,'淳化县',3,0),
(3287,327,'武功县',3,0),
(3288,327,'兴平市',3,0),
(3289,327,'其它区',3,0),
(3290,328,'临渭区',3,0),
(3291,328,'华县',3,0),
(3292,328,'潼关县',3,0),
(3293,328,'大荔县',3,0),
(3294,328,'合阳县',3,0),
(3295,328,'澄城县',3,0),
(3296,328,'蒲城县',3,0),
(3297,328,'白水县',3,0),
(3298,328,'富平县',3,0),
(3299,328,'韩城市',3,0),
(3300,328,'华阴市',3,0),
(3301,328,'其它区',3,0),
(3302,329,'宝塔区',3,0),
(3303,329,'延长县',3,0),
(3304,329,'延川县',3,0),
(3305,329,'子长县',3,0),
(3306,329,'安塞县',3,0),
(3307,329,'志丹县',3,0),
(3308,329,'吴起县',3,0),
(3309,329,'甘泉县',3,0),
(3310,329,'富县',3,0),
(3311,329,'洛川县',3,0),
(3312,329,'宜川县',3,0),
(3313,329,'黄龙县',3,0),
(3314,329,'黄陵县',3,0),
(3315,329,'其它区',3,0),
(3316,330,'汉台区',3,0),
(3317,330,'南郑县',3,0),
(3318,330,'城固县',3,0),
(3319,330,'洋县',3,0),
(3320,330,'西乡县',3,0),
(3321,330,'勉县',3,0),
(3322,330,'宁强县',3,0),
(3323,330,'略阳县',3,0),
(3324,330,'镇巴县',3,0),
(3325,330,'留坝县',3,0),
(3326,330,'佛坪县',3,0),
(3327,330,'其它区',3,0),
(3328,331,'榆阳区',3,0),
(3329,331,'神木县',3,0),
(3330,331,'府谷县',3,0),
(3331,331,'横山县',3,0),
(3332,331,'靖边县',3,0),
(3333,331,'定边县',3,0),
(3334,331,'绥德县',3,0),
(3335,331,'米脂县',3,0),
(3336,331,'佳县',3,0),
(3337,331,'吴堡县',3,0),
(3338,331,'清涧县',3,0),
(3339,331,'子洲县',3,0),
(3340,331,'其它区',3,0),
(3341,332,'汉滨区',3,0),
(3342,332,'汉阴县',3,0),
(3343,332,'石泉县',3,0),
(3344,332,'宁陕县',3,0),
(3345,332,'紫阳县',3,0),
(3346,332,'岚皋县',3,0),
(3347,332,'平利县',3,0),
(3348,332,'镇坪县',3,0),
(3349,332,'旬阳县',3,0),
(3350,332,'白河县',3,0),
(3351,332,'其它区',3,0),
(3352,333,'商州区',3,0),
(3353,333,'洛南县',3,0),
(3354,333,'丹凤县',3,0),
(3355,333,'商南县',3,0),
(3356,333,'山阳县',3,0),
(3357,333,'镇安县',3,0),
(3358,333,'柞水县',3,0),
(3359,333,'其它区',3,0),
(3360,334,'城关区',3,0),
(3361,334,'七里河区',3,0),
(3362,334,'西固区',3,0),
(3363,334,'安宁区',3,0),
(3364,334,'红古区',3,0),
(3365,334,'永登县',3,0),
(3366,334,'皋兰县',3,0),
(3367,334,'榆中县',3,0),
(3368,334,'其它区',3,0),
(3369,336,'金川区',3,0),
(3370,336,'永昌县',3,0),
(3371,336,'其它区',3,0),
(3372,337,'白银区',3,0),
(3373,337,'平川区',3,0),
(3374,337,'靖远县',3,0),
(3375,337,'会宁县',3,0),
(3376,337,'景泰县',3,0),
(3377,337,'其它区',3,0),
(3378,338,'秦州区',3,0),
(3379,338,'麦积区',3,0),
(3380,338,'清水县',3,0),
(3381,338,'秦安县',3,0),
(3382,338,'甘谷县',3,0),
(3383,338,'武山县',3,0),
(3384,338,'张家川回族自治县',3,0),
(3385,338,'其它区',3,0),
(3386,339,'凉州区',3,0),
(3387,339,'民勤县',3,0),
(3388,339,'古浪县',3,0),
(3389,339,'天祝藏族自治县',3,0),
(3390,339,'其它区',3,0),
(3391,340,'甘州区',3,0),
(3392,340,'肃南裕固族自治县',3,0),
(3393,340,'民乐县',3,0),
(3394,340,'临泽县',3,0),
(3395,340,'高台县',3,0),
(3396,340,'山丹县',3,0),
(3397,340,'其它区',3,0),
(3398,341,'崆峒区',3,0),
(3399,341,'泾川县',3,0),
(3400,341,'灵台县',3,0),
(3401,341,'崇信县',3,0),
(3402,341,'华亭县',3,0),
(3403,341,'庄浪县',3,0),
(3404,341,'静宁县',3,0),
(3405,341,'其它区',3,0),
(3406,342,'肃州区',3,0),
(3407,342,'金塔县',3,0),
(3408,342,'瓜州县',3,0),
(3409,342,'肃北蒙古族自治县',3,0),
(3410,342,'阿克塞哈萨克族自治县',3,0),
(3411,342,'玉门市',3,0),
(3412,342,'敦煌市',3,0),
(3413,342,'其它区',3,0),
(3414,343,'西峰区',3,0),
(3415,343,'庆城县',3,0),
(3416,343,'环县',3,0),
(3417,343,'华池县',3,0),
(3418,343,'合水县',3,0),
(3419,343,'正宁县',3,0),
(3420,343,'宁县',3,0),
(3421,343,'镇原县',3,0),
(3422,343,'其它区',3,0),
(3423,344,'安定区',3,0),
(3424,344,'通渭县',3,0),
(3425,344,'陇西县',3,0),
(3426,344,'渭源县',3,0),
(3427,344,'临洮县',3,0),
(3428,344,'漳县',3,0),
(3429,344,'岷县',3,0),
(3430,344,'其它区',3,0),
(3431,345,'武都区',3,0),
(3432,345,'成县',3,0),
(3433,345,'文县',3,0),
(3434,345,'宕昌县',3,0),
(3435,345,'康县',3,0),
(3436,345,'西和县',3,0),
(3437,345,'礼县',3,0),
(3438,345,'徽县',3,0),
(3439,345,'两当县',3,0),
(3440,345,'其它区',3,0),
(3441,346,'临夏市',3,0),
(3442,346,'临夏县',3,0),
(3443,346,'康乐县',3,0),
(3444,346,'永靖县',3,0),
(3445,346,'广河县',3,0),
(3446,346,'和政县',3,0),
(3447,346,'东乡族自治县',3,0),
(3448,346,'积石山保安族东乡族撒拉族自治县',3,0),
(3449,346,'其它区',3,0),
(3450,347,'合作市',3,0),
(3451,347,'临潭县',3,0),
(3452,347,'卓尼县',3,0),
(3453,347,'舟曲县',3,0),
(3454,347,'迭部县',3,0),
(3455,347,'玛曲县',3,0),
(3456,347,'碌曲县',3,0),
(3457,347,'夏河县',3,0),
(3458,347,'其它区',3,0),
(3459,348,'城东区',3,0),
(3460,348,'城中区',3,0),
(3461,348,'城西区',3,0),
(3462,348,'城北区',3,0),
(3463,348,'大通回族土族自治县',3,0),
(3464,348,'湟中县',3,0),
(3465,348,'湟源县',3,0),
(3466,348,'其它区',3,0),
(3467,349,'平安区',3,0),
(3468,349,'民和回族土族自治县',3,0),
(3469,349,'乐都区',3,0),
(3470,349,'互助土族自治县',3,0),
(3471,349,'化隆回族自治县',3,0),
(3472,349,'循化撒拉族自治县',3,0),
(3473,349,'其它区',3,0),
(3474,350,'门源回族自治县',3,0),
(3475,350,'祁连县',3,0),
(3476,350,'海晏县',3,0),
(3477,350,'刚察县',3,0),
(3478,350,'其它区',3,0),
(3479,351,'同仁县',3,0),
(3480,351,'尖扎县',3,0),
(3481,351,'泽库县',3,0),
(3482,351,'河南蒙古族自治县',3,0),
(3483,351,'其它区',3,0),
(3484,352,'共和县',3,0),
(3485,352,'同德县',3,0),
(3486,352,'贵德县',3,0),
(3487,352,'兴海县',3,0),
(3488,352,'贵南县',3,0),
(3489,352,'其它区',3,0),
(3490,353,'玛沁县',3,0),
(3491,353,'班玛县',3,0),
(3492,353,'甘德县',3,0),
(3493,353,'达日县',3,0),
(3494,353,'久治县',3,0),
(3495,353,'玛多县',3,0),
(3496,353,'其它区',3,0),
(3497,354,'玉树市',3,0),
(3498,354,'杂多县',3,0),
(3499,354,'称多县',3,0),
(3500,354,'治多县',3,0),
(3501,354,'囊谦县',3,0),
(3502,354,'曲麻莱县',3,0),
(3503,354,'其它区',3,0),
(3504,355,'格尔木市',3,0),
(3505,355,'德令哈市',3,0),
(3506,355,'乌兰县',3,0),
(3507,355,'都兰县',3,0),
(3508,355,'天峻县',3,0),
(3509,355,'其它区',3,0),
(3510,356,'兴庆区',3,0),
(3511,356,'西夏区',3,0),
(3512,356,'金凤区',3,0),
(3513,356,'永宁县',3,0),
(3514,356,'贺兰县',3,0),
(3515,356,'灵武市',3,0),
(3516,356,'其它区',3,0),
(3517,357,'大武口区',3,0),
(3518,357,'惠农区',3,0),
(3519,357,'平罗县',3,0),
(3520,357,'其它区',3,0),
(3521,358,'利通区',3,0),
(3522,358,'红寺堡区',3,0),
(3523,358,'盐池县',3,0),
(3524,358,'同心县',3,0),
(3525,358,'青铜峡市',3,0),
(3526,358,'其它区',3,0),
(3527,359,'原州区',3,0),
(3528,359,'西吉县',3,0),
(3529,359,'隆德县',3,0),
(3530,359,'泾源县',3,0),
(3531,359,'彭阳县',3,0),
(3532,359,'其它区',3,0),
(3533,360,'沙坡头区',3,0),
(3534,360,'中宁县',3,0),
(3535,360,'海原县',3,0),
(3536,360,'其它区',3,0),
(3537,361,'天山区',3,0),
(3538,361,'沙依巴克区',3,0),
(3539,361,'新市区',3,0),
(3540,361,'水磨沟区',3,0),
(3541,361,'头屯河区',3,0),
(3542,361,'达坂城区',3,0),
(3543,361,'东山区',3,0),
(3544,361,'米东区',3,0),
(3545,361,'乌鲁木齐县',3,0),
(3546,361,'其它区',3,0),
(3547,362,'独山子区',3,0),
(3548,362,'克拉玛依区',3,0),
(3549,362,'白碱滩区',3,0),
(3550,362,'乌尔禾区',3,0),
(3551,362,'其它区',3,0),
(3552,363,'高昌区',3,0),
(3553,363,'鄯善县',3,0),
(3554,363,'托克逊县',3,0),
(3555,363,'其它区',3,0),
(3556,364,'哈密市',3,0),
(3557,364,'巴里坤哈萨克自治县',3,0),
(3558,364,'伊吾县',3,0),
(3559,364,'其它区',3,0),
(3560,365,'昌吉市',3,0),
(3561,365,'阜康市',3,0),
(3562,365,'米泉市',3,0),
(3563,365,'呼图壁县',3,0),
(3564,365,'玛纳斯县',3,0),
(3565,365,'奇台县',3,0),
(3566,365,'吉木萨尔县',3,0),
(3567,365,'木垒哈萨克自治县',3,0),
(3568,365,'其它区',3,0),
(3569,366,'博乐市',3,0),
(3570,366,'阿拉山口市',3,0),
(3571,366,'精河县',3,0),
(3572,366,'温泉县',3,0),
(3573,366,'其它区',3,0),
(3574,367,'库尔勒市',3,0),
(3575,367,'轮台县',3,0),
(3576,367,'尉犁县',3,0),
(3577,367,'若羌县',3,0),
(3578,367,'且末县',3,0),
(3579,367,'焉耆回族自治县',3,0),
(3580,367,'和静县',3,0),
(3581,367,'和硕县',3,0),
(3582,367,'博湖县',3,0),
(3583,367,'其它区',3,0),
(3584,368,'阿克苏市',3,0),
(3585,368,'温宿县',3,0),
(3586,368,'库车县',3,0),
(3587,368,'沙雅县',3,0),
(3588,368,'新和县',3,0),
(3589,368,'拜城县',3,0),
(3590,368,'乌什县',3,0),
(3591,368,'阿瓦提县',3,0),
(3592,368,'柯坪县',3,0),
(3593,368,'其它区',3,0),
(3594,369,'阿图什市',3,0),
(3595,369,'阿克陶县',3,0),
(3596,369,'阿合奇县',3,0),
(3597,369,'乌恰县',3,0),
(3598,369,'其它区',3,0),
(3599,370,'喀什市',3,0),
(3600,370,'疏附县',3,0),
(3601,370,'疏勒县',3,0),
(3602,370,'英吉沙县',3,0),
(3603,370,'泽普县',3,0),
(3604,370,'莎车县',3,0),
(3605,370,'叶城县',3,0),
(3606,370,'麦盖提县',3,0),
(3607,370,'岳普湖县',3,0),
(3608,370,'伽师县',3,0),
(3609,370,'巴楚县',3,0),
(3610,370,'塔什库尔干塔吉克自治县',3,0),
(3611,370,'其它区',3,0),
(3612,371,'和田市',3,0),
(3613,371,'和田县',3,0),
(3614,371,'墨玉县',3,0),
(3615,371,'皮山县',3,0),
(3616,371,'洛浦县',3,0),
(3617,371,'策勒县',3,0),
(3618,371,'于田县',3,0),
(3619,371,'民丰县',3,0),
(3620,371,'其它区',3,0),
(3621,372,'伊宁市',3,0),
(3622,372,'奎屯市',3,0),
(3623,372,'伊宁县',3,0),
(3624,372,'察布查尔锡伯自治县',3,0),
(3625,372,'霍城县',3,0),
(3626,372,'巩留县',3,0),
(3627,372,'新源县',3,0),
(3628,372,'昭苏县',3,0),
(3629,372,'特克斯县',3,0),
(3630,372,'尼勒克县',3,0),
(3631,372,'其它区',3,0),
(3632,373,'塔城市',3,0),
(3633,373,'乌苏市',3,0),
(3634,373,'额敏县',3,0),
(3635,373,'沙湾县',3,0),
(3636,373,'托里县',3,0),
(3637,373,'裕民县',3,0),
(3638,373,'和布克赛尔蒙古自治县',3,0),
(3639,373,'其它区',3,0),
(3640,374,'阿勒泰市',3,0),
(3641,374,'布尔津县',3,0),
(3642,374,'富蕴县',3,0),
(3643,374,'福海县',3,0),
(3644,374,'哈巴河县',3,0),
(3645,374,'青河县',3,0),
(3646,374,'吉木乃县',3,0),
(3647,374,'其它区',3,0),
(3648,375,'中正区',3,0),
(3649,375,'大同区',3,0),
(3650,375,'中山区',3,0),
(3651,375,'松山区',3,0),
(3652,375,'大安区',3,0),
(3653,375,'万华区',3,0),
(3654,375,'信义区',3,0),
(3655,375,'士林区',3,0),
(3656,375,'北投区',3,0),
(3657,375,'内湖区',3,0),
(3658,375,'南港区',3,0),
(3659,375,'文山区',3,0),
(3660,375,'其它区',3,0),
(3661,376,'新兴区',3,0),
(3662,376,'前金区',3,0),
(3663,376,'芩雅区',3,0),
(3664,376,'盐埕区',3,0),
(3665,376,'鼓山区',3,0),
(3666,376,'旗津区',3,0),
(3667,376,'前镇区',3,0),
(3668,376,'三民区',3,0),
(3669,376,'左营区',3,0),
(3670,376,'楠梓区',3,0),
(3671,376,'小港区',3,0),
(3672,376,'其它区',3,0),
(3673,376,'苓雅区',3,0),
(3674,376,'仁武区',3,0),
(3675,376,'大社区',3,0),
(3676,376,'冈山区',3,0),
(3677,376,'路竹区',3,0),
(3678,376,'阿莲区',3,0),
(3679,376,'田寮区',3,0),
(3680,376,'燕巢区',3,0),
(3681,376,'桥头区',3,0),
(3682,376,'梓官区',3,0),
(3683,376,'弥陀区',3,0),
(3684,376,'永安区',3,0),
(3685,376,'湖内区',3,0),
(3686,376,'凤山区',3,0),
(3687,376,'大寮区',3,0),
(3688,376,'林园区',3,0),
(3689,376,'鸟松区',3,0),
(3690,376,'大树区',3,0),
(3691,376,'旗山区',3,0),
(3692,376,'美浓区',3,0),
(3693,376,'六龟区',3,0),
(3694,376,'内门区',3,0),
(3695,376,'杉林区',3,0),
(3696,376,'甲仙区',3,0),
(3697,376,'桃源区',3,0),
(3698,376,'那玛夏区',3,0),
(3699,376,'茂林区',3,0),
(3700,376,'茄萣区',3,0),
(3701,377,'中西区',3,0),
(3702,377,'东区',3,0),
(3703,377,'南区',3,0),
(3704,377,'北区',3,0),
(3705,377,'安平区',3,0),
(3706,377,'安南区',3,0),
(3707,377,'其它区',3,0),
(3708,377,'永康区',3,0),
(3709,377,'归仁区',3,0),
(3710,377,'新化区',3,0),
(3711,377,'左镇区',3,0),
(3712,377,'玉井区',3,0),
(3713,377,'楠西区',3,0),
(3714,377,'南化区',3,0),
(3715,377,'仁德区',3,0),
(3716,377,'关庙区',3,0),
(3717,377,'龙崎区',3,0),
(3718,377,'官田区',3,0),
(3719,377,'麻豆区',3,0),
(3720,377,'佳里区',3,0),
(3721,377,'西港区',3,0),
(3722,377,'七股区',3,0),
(3723,377,'将军区',3,0),
(3724,377,'学甲区',3,0),
(3725,377,'北门区',3,0),
(3726,377,'新营区',3,0),
(3727,377,'后壁区',3,0),
(3728,377,'白河区',3,0),
(3729,377,'东山区',3,0),
(3730,377,'六甲区',3,0),
(3731,377,'下营区',3,0),
(3732,377,'柳营区',3,0),
(3733,377,'盐水区',3,0),
(3734,377,'善化区',3,0),
(3735,377,'大内区',3,0),
(3736,377,'山上区',3,0),
(3737,377,'新市区',3,0),
(3738,377,'安定区',3,0),
(3739,378,'中区',3,0),
(3740,378,'东区',3,0),
(3741,378,'南区',3,0),
(3742,378,'西区',3,0),
(3743,378,'北区',3,0),
(3744,378,'北屯区',3,0),
(3745,378,'西屯区',3,0),
(3746,378,'南屯区',3,0),
(3747,378,'其它区',3,0),
(3748,378,'太平区',3,0),
(3749,378,'大里区',3,0),
(3750,378,'雾峰区',3,0),
(3751,378,'乌日区',3,0),
(3752,378,'丰原区',3,0),
(3753,378,'后里区',3,0),
(3754,378,'石冈区',3,0),
(3755,378,'东势区',3,0),
(3756,378,'和平区',3,0),
(3757,378,'新社区',3,0),
(3758,378,'潭子区',3,0),
(3759,378,'大雅区',3,0),
(3760,378,'神冈区',3,0),
(3761,378,'大肚区',3,0),
(3762,378,'沙鹿区',3,0),
(3763,378,'龙井区',3,0),
(3764,378,'梧栖区',3,0),
(3765,378,'清水区',3,0),
(3766,378,'大甲区',3,0),
(3767,378,'外埔区',3,0),
(3768,378,'大安区',3,0),
(3769,379,'金沙镇',3,0),
(3770,379,'金湖镇',3,0),
(3771,379,'金宁乡',3,0),
(3772,379,'金城镇',3,0),
(3773,379,'烈屿乡',3,0),
(3774,379,'乌坵乡',3,0),
(3775,380,'南投市',3,0),
(3776,380,'中寮乡',3,0),
(3777,380,'草屯镇',3,0),
(3778,380,'国姓乡',3,0),
(3779,380,'埔里镇',3,0),
(3780,380,'仁爱乡',3,0),
(3781,380,'名间乡',3,0),
(3782,380,'集集镇',3,0),
(3783,380,'水里乡',3,0),
(3784,380,'鱼池乡',3,0),
(3785,380,'信义乡',3,0),
(3786,380,'竹山镇',3,0),
(3787,380,'鹿谷乡',3,0),
(3788,381,'仁爱区',3,0),
(3789,381,'信义区',3,0),
(3790,381,'中正区',3,0),
(3791,381,'中山区',3,0),
(3792,381,'安乐区',3,0),
(3793,381,'暖暖区',3,0),
(3794,381,'七堵区',3,0),
(3795,381,'其它区',3,0),
(3796,382,'东区',3,0),
(3797,382,'北区',3,0),
(3798,382,'香山区',3,0),
(3799,382,'其它区',3,0),
(3800,383,'东区',3,0),
(3801,383,'西区',3,0),
(3802,383,'其它区',3,0),
(3803,384,'万里区',3,0),
(3804,384,'金山区',3,0),
(3805,384,'板桥区',3,0),
(3806,384,'汐止区',3,0),
(3807,384,'深坑区',3,0),
(3808,384,'石碇区',3,0),
(3809,384,'瑞芳区',3,0),
(3810,384,'平溪区',3,0),
(3811,384,'双溪区',3,0),
(3812,384,'贡寮区',3,0),
(3813,384,'新店区',3,0),
(3814,384,'坪林区',3,0),
(3815,384,'乌来区',3,0),
(3816,384,'永和区',3,0),
(3817,384,'中和区',3,0),
(3818,384,'土城区',3,0),
(3819,384,'三峡区',3,0),
(3820,384,'树林区',3,0),
(3821,384,'莺歌区',3,0),
(3822,384,'三重区',3,0),
(3823,384,'新庄区',3,0),
(3824,384,'泰山区',3,0),
(3825,384,'林口区',3,0),
(3826,384,'芦洲区',3,0),
(3827,384,'五股区',3,0),
(3828,384,'八里区',3,0),
(3829,384,'淡水区',3,0),
(3830,384,'三芝区',3,0),
(3831,384,'石门区',3,0),
(3832,385,'宜兰市',3,0),
(3833,385,'头城镇',3,0),
(3834,385,'礁溪乡',3,0),
(3835,385,'壮围乡',3,0),
(3836,385,'员山乡',3,0),
(3837,385,'罗东镇',3,0),
(3838,385,'三星乡',3,0),
(3839,385,'大同乡',3,0),
(3840,385,'五结乡',3,0),
(3841,385,'冬山乡',3,0),
(3842,385,'苏澳镇',3,0),
(3843,385,'南澳乡',3,0),
(3844,385,'钓鱼台',3,0),
(3845,386,'竹北市',3,0),
(3846,386,'湖口乡',3,0),
(3847,386,'新丰乡',3,0),
(3848,386,'新埔镇',3,0),
(3849,386,'关西镇',3,0),
(3850,386,'芎林乡',3,0),
(3851,386,'宝山乡',3,0),
(3852,386,'竹东镇',3,0),
(3853,386,'五峰乡',3,0),
(3854,386,'横山乡',3,0),
(3855,386,'尖石乡',3,0),
(3856,386,'北埔乡',3,0),
(3857,386,'峨眉乡',3,0),
(3858,387,'中坜市',3,0),
(3859,387,'平镇市',3,0),
(3860,387,'龙潭乡',3,0),
(3861,387,'杨梅市',3,0),
(3862,387,'新屋乡',3,0),
(3863,387,'观音乡',3,0),
(3864,387,'桃园市',3,0),
(3865,387,'龟山乡',3,0),
(3866,387,'八德市',3,0),
(3867,387,'大溪镇',3,0),
(3868,387,'复兴乡',3,0),
(3869,387,'大园乡',3,0),
(3870,387,'芦竹乡',3,0),
(3871,388,'竹南镇',3,0),
(3872,388,'头份镇',3,0),
(3873,388,'三湾乡',3,0),
(3874,388,'南庄乡',3,0),
(3875,388,'狮潭乡',3,0),
(3876,388,'后龙镇',3,0),
(3877,388,'通霄镇',3,0),
(3878,388,'苑里镇',3,0),
(3879,388,'苗栗市',3,0),
(3880,388,'造桥乡',3,0),
(3881,388,'头屋乡',3,0),
(3882,388,'公馆乡',3,0),
(3883,388,'大湖乡',3,0),
(3884,388,'泰安乡',3,0),
(3885,388,'铜锣乡',3,0),
(3886,388,'三义乡',3,0),
(3887,388,'西湖乡',3,0),
(3888,388,'卓兰镇',3,0),
(3889,389,'彰化市',3,0),
(3890,389,'芬园乡',3,0),
(3891,389,'花坛乡',3,0),
(3892,389,'秀水乡',3,0),
(3893,389,'鹿港镇',3,0),
(3894,389,'福兴乡',3,0),
(3895,389,'线西乡',3,0),
(3896,389,'和美镇',3,0),
(3897,389,'伸港乡',3,0),
(3898,389,'员林镇',3,0),
(3899,389,'社头乡',3,0),
(3900,389,'永靖乡',3,0),
(3901,389,'埔心乡',3,0),
(3902,389,'溪湖镇',3,0),
(3903,389,'大村乡',3,0),
(3904,389,'埔盐乡',3,0),
(3905,389,'田中镇',3,0),
(3906,389,'北斗镇',3,0),
(3907,389,'田尾乡',3,0),
(3908,389,'埤头乡',3,0),
(3909,389,'溪州乡',3,0),
(3910,389,'竹塘乡',3,0),
(3911,389,'二林镇',3,0),
(3912,389,'大城乡',3,0),
(3913,389,'芳苑乡',3,0),
(3914,389,'二水乡',3,0),
(3915,390,'番路乡',3,0),
(3916,390,'梅山乡',3,0),
(3917,390,'竹崎乡',3,0),
(3918,390,'阿里山乡',3,0),
(3919,390,'中埔乡',3,0),
(3920,390,'大埔乡',3,0),
(3921,390,'水上乡',3,0),
(3922,390,'鹿草乡',3,0),
(3923,390,'太保市',3,0),
(3924,390,'朴子市',3,0),
(3925,390,'东石乡',3,0),
(3926,390,'六脚乡',3,0),
(3927,390,'新港乡',3,0),
(3928,390,'民雄乡',3,0),
(3929,390,'大林镇',3,0),
(3930,390,'溪口乡',3,0),
(3931,390,'义竹乡',3,0),
(3932,390,'布袋镇',3,0),
(3933,391,'斗南镇',3,0),
(3934,391,'大埤乡',3,0),
(3935,391,'虎尾镇',3,0),
(3936,391,'土库镇',3,0),
(3937,391,'褒忠乡',3,0),
(3938,391,'东势乡',3,0),
(3939,391,'台西乡',3,0),
(3940,391,'仑背乡',3,0),
(3941,391,'麦寮乡',3,0),
(3942,391,'斗六市',3,0),
(3943,391,'林内乡',3,0),
(3944,391,'古坑乡',3,0),
(3945,391,'莿桐乡',3,0),
(3946,391,'西螺镇',3,0),
(3947,391,'二仑乡',3,0),
(3948,391,'北港镇',3,0),
(3949,391,'水林乡',3,0),
(3950,391,'口湖乡',3,0),
(3951,391,'四湖乡',3,0),
(3952,391,'元长乡',3,0),
(3953,392,'屏东市',3,0),
(3954,392,'三地门乡',3,0),
(3955,392,'雾台乡',3,0),
(3956,392,'玛家乡',3,0),
(3957,392,'九如乡',3,0),
(3958,392,'里港乡',3,0),
(3959,392,'高树乡',3,0),
(3960,392,'盐埔乡',3,0),
(3961,392,'长治乡',3,0),
(3962,392,'麟洛乡',3,0),
(3963,392,'竹田乡',3,0),
(3964,392,'内埔乡',3,0),
(3965,392,'万丹乡',3,0),
(3966,392,'潮州镇',3,0),
(3967,392,'泰武乡',3,0),
(3968,392,'来义乡',3,0),
(3969,392,'万峦乡',3,0),
(3970,392,'崁顶乡',3,0),
(3971,392,'新埤乡',3,0),
(3972,392,'南州乡',3,0),
(3973,392,'林边乡',3,0),
(3974,392,'东港镇',3,0),
(3975,392,'琉球乡',3,0),
(3976,392,'佳冬乡',3,0),
(3977,392,'新园乡',3,0),
(3978,392,'枋寮乡',3,0),
(3979,392,'枋山乡',3,0),
(3980,392,'春日乡',3,0),
(3981,392,'狮子乡',3,0),
(3982,392,'车城乡',3,0),
(3983,392,'牡丹乡',3,0),
(3984,392,'恒春镇',3,0),
(3985,392,'满州乡',3,0),
(3986,393,'台东市',3,0),
(3987,393,'绿岛乡',3,0),
(3988,393,'兰屿乡',3,0),
(3989,393,'延平乡',3,0),
(3990,393,'卑南乡',3,0),
(3991,393,'鹿野乡',3,0),
(3992,393,'关山镇',3,0),
(3993,393,'海端乡',3,0),
(3994,393,'池上乡',3,0),
(3995,393,'东河乡',3,0),
(3996,393,'成功镇',3,0),
(3997,393,'长滨乡',3,0),
(3998,393,'金峰乡',3,0),
(3999,393,'大武乡',3,0),
(4000,393,'达仁乡',3,0),
(4001,393,'太麻里乡',3,0),
(4002,394,'花莲市',3,0),
(4003,394,'新城乡',3,0),
(4004,394,'太鲁阁',3,0),
(4005,394,'秀林乡',3,0),
(4006,394,'吉安乡',3,0),
(4007,394,'寿丰乡',3,0),
(4008,394,'凤林镇',3,0),
(4009,394,'光复乡',3,0),
(4010,394,'丰滨乡',3,0),
(4011,394,'瑞穗乡',3,0),
(4012,394,'万荣乡',3,0),
(4013,394,'玉里镇',3,0),
(4014,394,'卓溪乡',3,0),
(4015,394,'富里乡',3,0),
(4016,395,'马公市',3,0),
(4017,395,'西屿乡',3,0),
(4018,395,'望安乡',3,0),
(4019,395,'七美乡',3,0),
(4020,395,'白沙乡',3,0),
(4021,395,'湖西乡',3,0),
(4022,396,'南竿乡',3,0),
(4023,396,'北竿乡',3,0),
(4024,396,'莒光乡',3,0),
(4025,396,'东引乡',3,0),
(4026,397,'中西区',3,0),
(4027,397,'湾仔',3,0),
(4028,397,'东区',3,0),
(4029,397,'南区',3,0),
(4030,398,'九龙城区',3,0),
(4031,398,'油尖旺区',3,0),
(4032,398,'深水埗区',3,0),
(4033,398,'黄大仙区',3,0),
(4034,398,'观塘区',3,0),
(4035,399,'北区',3,0),
(4036,399,'大埔区',3,0),
(4037,399,'沙田区',3,0),
(4038,399,'西贡区',3,0),
(4039,399,'元朗区',3,0),
(4040,399,'屯门区',3,0),
(4041,399,'荃湾区',3,0),
(4042,399,'葵青区',3,0),
(4043,399,'离岛区',3,0);

/*Table structure for table `nideshop_related_goods` */

DROP TABLE IF EXISTS `nideshop_related_goods`;

CREATE TABLE `nideshop_related_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `related_goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_related_goods` */

/*Table structure for table `nideshop_search_history` */

DROP TABLE IF EXISTS `nideshop_search_history`;

CREATE TABLE `nideshop_search_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(50) NOT NULL,
  `from` varchar(45) NOT NULL DEFAULT '' COMMENT '搜索来源，如PC、小程序、APP等',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '搜索时间',
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_search_history` */

insert  into `nideshop_search_history`(`id`,`keyword`,`from`,`add_time`,`user_id`) values 
(23,'母亲节','',1500564813,'1'),
(24,'日式','',1500564816,'1'),
(25,'日式','',1500564822,'1'),
(26,'清新','',1500564835,'1'),
(27,'日式','',1500638161,'1');

/*Table structure for table `nideshop_shipper` */

DROP TABLE IF EXISTS `nideshop_shipper`;

CREATE TABLE `nideshop_shipper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '快递公司名称',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '快递公司代码',
  `sort_order` int(11) NOT NULL DEFAULT '10' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nideshop_shipper_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='快递公司';

/*Data for the table `nideshop_shipper` */

insert  into `nideshop_shipper`(`id`,`name`,`code`,`sort_order`) values 
(1,'顺丰速运','SF',1),
(2,'百世快递','HTKY',2),
(3,'中通快递','ZTO',3),
(4,'申通快递','STO',4),
(5,'圆通速递','YTO',5),
(6,'韵达速递','YD',6),
(7,'邮政快递包裹','YZPY',7),
(8,'EMS','EMS',8),
(9,'天天快递','HHTT',9),
(10,'京东物流','JD',10),
(11,'全峰快递','QFKD',11),
(12,'国通快递','GTO',12),
(13,'优速快递','UC',13);

/*Table structure for table `nideshop_specification` */

DROP TABLE IF EXISTS `nideshop_specification`;

CREATE TABLE `nideshop_specification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='规格表';

/*Data for the table `nideshop_specification` */

insert  into `nideshop_specification`(`id`,`name`,`sort_order`) values 
(1,'颜色',1),
(2,'规格',2);

/*Table structure for table `nideshop_topic` */

DROP TABLE IF EXISTS `nideshop_topic`;

CREATE TABLE `nideshop_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `content` text,
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `item_pic_url` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '''',
  `topic_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `price_info` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `read_count` varchar(255) NOT NULL DEFAULT '0',
  `scene_pic_url` varchar(255) NOT NULL DEFAULT '',
  `topic_template_id` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '100',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `topic_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_topic` */

insert  into `nideshop_topic`(`id`,`title`,`content`,`avatar`,`item_pic_url`,`subtitle`,`topic_category_id`,`price_info`,`read_count`,`scene_pic_url`,`topic_template_id`,`topic_tag_id`,`sort_order`,`is_show`) values 
(314,'关爱他成长的每一个足迹','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14943186689221563.png','https://yanxuan.nosdn.127.net/14943267735961674.jpg','专业运动品牌同厂，毛毛虫鞋买二送一',2,0.00,'6.4k','https://yanxuan.nosdn.127.net/14943267735961674.jpg',0,0,1,1),
(313,'一次解决5个节日送礼难题','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14942967243991290.png','https://yanxuan.nosdn.127.net/14942996754171334.jpg','这些就是他们想要的礼物清单',0,59.90,'7.8k','https://yanxuan.nosdn.127.net/14942996754171334.jpg',0,0,0,1),
(300,'秒杀化学洗涤剂的纯天然皂','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14939843011001088.png','https://yanxuan.nosdn.127.net/14939843143621089.jpg','前段时间有朋友跟我抱怨，和婆婆住到一起才发现生活理念有太多不和。别的不提，光是洗...',1,0.00,'15.3k','https://yanxuan.nosdn.127.net/14939843143621089.jpg',0,0,0,1),
(299,'买过的人都说它是差旅神器','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14938873720850678.png','https://yanxuan.nosdn.127.net/14938873919030679.jpg','许多人经历过旅途中内裤洗晾不便的烦恼，尤其与旅伴同居一室时，晾在卫生间里的内裤更...',1,0.00,'28.7k','https://yanxuan.nosdn.127.net/14938873919030679.jpg',0,0,0,1),
(295,'他们在严选遇见的新生活','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14937987677390284.png','https://yanxuan.nosdn.127.net/14938092956370380.jpg','多款商品直减中，最高直减400元',0,35.80,'36.6k','https://yanxuan.nosdn.127.net/14938092956370380.jpg',0,0,0,1),
(294,'这只锅，可以从祖母用到孙辈','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14937214529340142.png','https://yanxuan.nosdn.127.net/14937214454750141.jpg','买100年传世珐琅锅送迷你马卡龙色小锅',4,149.00,'108.1k','https://yanxuan.nosdn.127.net/14937214454750141.jpg',0,0,0,1),
(291,'舒适新主张','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14933596154560938.png','https://yanxuan.nosdn.127.net/14939496197300723.jpg','如何挑选适合自己的好物？',0,29.00,'67.8k','https://yanxuan.nosdn.127.net/14939496197300723.jpg',0,0,0,1),
(289,'专业运动袜也可以高性价比','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14932840884890614.png','https://yanxuan.nosdn.127.net/14932840600970609.jpg','越来越多运动人士意识到，运动鞋要购置好的，鞋里的运动袜也不可忽视。专业运动袜帮助...',1,0.00,'11.9k','https://yanxuan.nosdn.127.net/14932840600970609.jpg',0,0,0,1),
(287,'严选新式样板间','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14931133750100134.png','https://yanxuan.nosdn.127.net/14931970965550315.jpg','一种软装一个家',3,29.90,'55.6k','https://yanxuan.nosdn.127.net/14931970965550315.jpg',0,0,0,1),
(286,'无“油”无虑的甜蜜酥脆','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14931121505610125.png','https://yanxuan.nosdn.127.net/14931121822100127.jpg','大家都知道，饮食组是严选体重最重的一组，基本上每个新人都能在一个月之内迅速长胖。...',1,0.00,'15.6k','https://yanxuan.nosdn.127.net/14931121822100127.jpg',0,0,0,1),
(281,'条纹新风尚','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14926859949660827.png','https://yanxuan.nosdn.127.net/14926859849200826.jpg','经典百搭，时尚线条',3,29.00,'76.5k','https://yanxuan.nosdn.127.net/14926859849200826.jpg',0,0,0,1),
(282,'成就一室笋香','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14927695155801070.png','https://yanxuan.nosdn.127.net/14927695046601069.jpg','三石哥办公室常备小食推荐',2,12.00,'40.9k','https://yanxuan.nosdn.127.net/14927695046601069.jpg',0,0,0,1),
(283,'孩子成长中少不了的一双鞋','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14927748094971079.png','https://yanxuan.nosdn.127.net/14927748974441080.jpg','说起毛毛虫鞋，好处实在太多了，作为一个2岁孩子的宝妈选品员，按捺不住想告诉大家，...',1,0.00,'42.5k','https://yanxuan.nosdn.127.net/14927748974441080.jpg',0,0,0,1),
(277,'治愈生活的满怀柔软','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14926748590030593.png','https://yanxuan.nosdn.127.net/14926737925770587.jpg','太鼓抱枕的上架历程，是从失踪开始的。由于表面的绒感，最初它被安排在秋冬季上架。某...',1,0.00,'19.6k','https://yanxuan.nosdn.127.net/14926737925770587.jpg',0,0,0,1),
(274,'没有软木拖，怎么过夏天','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14925821004620235.png','https://yanxuan.nosdn.127.net/14925822213780237.jpg','刚入四月，杭州的气温就已升高至30度。店庆时买了软木拖的用户，陆续发回评价说，很...',1,0.00,'46.4k','https://yanxuan.nosdn.127.net/14925822213780237.jpg',0,0,0,1),
(272,'料理也要精细简单','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14925201467400187.png','https://yanxuan.nosdn.127.net/14925200530030186.jpg','享受天然的味道，日子每天都好新鲜',2,69.00,'125.6k','https://yanxuan.nosdn.127.net/14925200530030186.jpg',0,0,0,1),
(271,'选式新懒人','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14924199159971698.png','https://yanxuan.nosdn.127.net/14924199099661697.jpg','懒出格调，懒出好生活。',3,15.00,'57.7k','https://yanxuan.nosdn.127.net/14924199099661697.jpg',0,0,0,1),
(268,'米饭好吃的秘诀：会呼吸的锅','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14920712417610604.png','https://yanxuan.nosdn.127.net/14920623353130483.jpg','今年1月份，我们联系到了日本伊贺地区的长谷园，那里有着180年伊贺烧历史的窑厂。...',1,0.00,'33.3k','https://yanxuan.nosdn.127.net/14920623353130483.jpg',0,0,0,1),
(266,'一条丝巾就能提升时髦度','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14919005600900208.png','https://yanxuan.nosdn.127.net/14919007135160213.jpg','不知道大家对去年G20时，严选与国礼制造商一起推出的《凤凰于飞》等几款丝巾是否还...',1,0.00,'35.0k','https://yanxuan.nosdn.127.net/14919007135160213.jpg',0,0,0,1),
(264,'设计师们推荐的应季好物','<img src=\"//yanxuan.nosdn.127.net/75c55a13fde5eb2bc2dd6813b4c565cc.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/e27e1de2b271a28a21c10213b9df7e95.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/9d413d1d28f753cb19096b533d53418d.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/64b0f2f350969e9818a3b6c43c217325.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/a668e6ae7f1fa45565c1eac221787570.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/0d4004e19728f2707f08f4be79bbc774.jpg\">\n    <img src=\"//yanxuan.nosdn.127.net/79ee021bbe97de7ecda691de6787241f.jpg\">','https://yanxuan.nosdn.127.net/14920662001560500.png','https://yanxuan.nosdn.127.net/14918201901050274.jpg','原创设计春款系列上新',0,29.90,'77.7k','https://yanxuan.nosdn.127.net/14918201901050274.jpg',0,0,0,1);

/*Table structure for table `nideshop_topic_category` */

DROP TABLE IF EXISTS `nideshop_topic_category`;

CREATE TABLE `nideshop_topic_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_topic_category` */

insert  into `nideshop_topic_category`(`id`,`title`,`pic_url`) values 
(0,'严选推荐','https://yanxuan.nosdn.127.net/d943675462a06f817d33062d4eb059f5.jpg'),
(1,'严选幕后','https://yanxuan.nosdn.127.net/dc1b671ad54e16339f1b26cfeec6a1ea.jpg'),
(2,'丁磊私物推荐','https://yanxuan.nosdn.127.net/1de4da49367dd7c01af1f7a2b23b0237.jpg'),
(3,'特色系列','https://yanxuan.nosdn.127.net/14939888170021096.png'),
(4,'明星商品','https://yanxuan.nosdn.127.net/14939888168151095.png');

/*Table structure for table `nideshop_user` */

DROP TABLE IF EXISTS `nideshop_user`;

CREATE TABLE `nideshop_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0',
  `register_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '',
  `user_level_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(60) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `register_ip` varchar(45) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `weixin_openid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_user` */

insert  into `nideshop_user`(`id`,`username`,`password`,`gender`,`birthday`,`register_time`,`last_login_time`,`last_login_ip`,`user_level_id`,`nickname`,`mobile`,`register_ip`,`avatar`,`weixin_openid`) values 
(31,'微信用户31c2f194-2bd5-453f-831a-032164300060','oxPIe5RX2-Pt-hA4N45SL9GMNMgw',1,0,1521016199,1521104515,'',0,'小k','','','https://wx.qlogo.cn/mmopen/vi_32/BqWNCTsgNZPD6hGIsEMvAx3iaubEvwGIPULoEOxRXiaRw915bHFZKBRYtdvRTyFMPkXR4OpgSIE2j3ggZfs6zfDw/0','oxPIe5RX2-Pt-hA4N45SL9GMNMgw'),
(32,'微信用户5cf18be4-d4f8-45b4-8fab-141611706005','oxPIe5VLmQEc4Fq5bu4B_1B-eye4',2,0,1521016285,1521077536,'',0,'风景','','','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLcTDxChyoFEVk2Looo5kk6UARzSbHkD3UibcNIEa9Dt7YAooCU2OGKceZJUiaLNFSMkkbXBMkjwosA/0','oxPIe5VLmQEc4Fq5bu4B_1B-eye4'),
(33,'微信用户a611a68d-73ac-4c58-8143-43f485373aa6','oxPIe5cKQN7kZDR-Mow9_iMAZ-Kk',1,0,1521020866,1521102241,'',0,'夏文进','','','https://wx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM4gHUwrauicCc3wmia04iaQZMLicibwlEkibIQVxZuOY2F9bVlZlRhicWDgMibr7LKKUx5NxD0hBbZGOicPMsg/0','oxPIe5cKQN7kZDR-Mow9_iMAZ-Kk'),
(34,'微信用户07769b03-be6c-426e-ae09-6fb02e62c40b','oxPIe5f8nIaMmW3Pd4VJpfRN55i0',1,0,1521023090,1521098510,'',0,'@小k','','','https://wx.qlogo.cn/mmopen/vi_32/19xIRY2jE4JsLsziaZmmbE1lGr64wPabRmD4iaFCPfJEdLqmy8c2km94KEwmGb54yXfeIPkSPo8rE5mboWNzI8vQ/0','oxPIe5f8nIaMmW3Pd4VJpfRN55i0'),
(35,'微信用户6d650655-ee2e-4bc4-9d11-105a01a0b0ff','oxPIe5YBKu97erpgHJDU_WtRdW-8',1,0,1521024719,1521024719,'',0,'百谷王','','','https://wx.qlogo.cn/mmopen/vi_32/sfiaqmuicjsUwbE7PgefllsL45cIUvfgmfic1nzaywNQ0ZVnxkkpiaouLwick3CVr6zuMRffjnfvn5qwAjyyosH2RUQ/0','oxPIe5YBKu97erpgHJDU_WtRdW-8'),
(36,'微信用户44303fd6-7c4d-4143-a111-600eb6c1f1bd','oxPIe5fzLx6rCJ2LhBfbSRhBUYKk',2,0,1521025344,1521029672,'',0,'Ivy','','','https://wx.qlogo.cn/mmopen/vi_32/PrVR0dXRH18oUniblsCOv2cShndhOMJkn3PV1ZKttEGicmyzwcTCuub6XMGSnXbGDg06HeXlgV2cXibvmwNEGLTYg/0','oxPIe5fzLx6rCJ2LhBfbSRhBUYKk'),
(37,'微信用户74966650-e385-40b9-8bfd-ee1af3135c53','oxPIe5a9ht_IT3cheDMQy6Ekl7S4',1,0,1521035315,1521035315,'',0,'秋风','','','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoY20RWERqyIsgicTAmbUUMGL1FoS621Z4KDGdyw6ibofcZpff4ibWm3ceB2dadRvSBA5CAaZs8NfI4Q/0','oxPIe5a9ht_IT3cheDMQy6Ekl7S4'),
(38,'微信用户785ff487-47eb-4048-823a-5aec533364c1','oxPIe5bD1yJKKQhFkP0U6ELq_1T4',1,0,1521046224,1521046368,'',0,'rdgztest_MOHEWU','','','','oxPIe5bD1yJKKQhFkP0U6ELq_1T4'),
(39,'微信用户5e952e54-7f90-4162-92bb-748921a72133','oxPIe5WC4s2ZRBqYXiBIFZcSh6js',1,0,1521100736,1521100736,'',0,'钱峰','','','https://wx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLDqiauFl6hA6uzaCNCKtNolhbT2T2cPcpCR3PA44bCaTpI8ohQUdvNr85bLUicfzgib3TlTKsJW9DqbA/0','oxPIe5WC4s2ZRBqYXiBIFZcSh6js');

/*Table structure for table `nideshop_user_coupon` */

DROP TABLE IF EXISTS `nideshop_user_coupon`;

CREATE TABLE `nideshop_user_coupon` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `coupon_number` varchar(20) NOT NULL DEFAULT '',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_user_coupon` */

insert  into `nideshop_user_coupon`(`id`,`coupon_id`,`coupon_number`,`user_id`,`used_time`,`order_id`) values 
(1,3,'0',1,1242142681,4),
(2,4,'1000003379',1,1242976699,14),
(3,4,'1000018450',0,0,0),
(4,4,'1000023774',0,0,0),
(5,4,'1000039394',0,0,0),
(6,4,'1000049305',0,0,0),
(7,4,'1000052248',0,0,0),
(8,4,'1000061542',0,0,0),
(9,4,'1000070278',0,0,0),
(10,4,'1000080588',0,0,0),
(11,4,'1000091405',0,0,0),
(24,3,'0',1,0,0),
(25,3,'0',1,0,0),
(26,3,'0',1,0,0),
(27,3,'0',1,0,0),
(28,3,'0',1,0,0),
(29,3,'0',1,0,0),
(30,3,'0',1,0,0),
(31,3,'0',1,0,0);

/*Table structure for table `nideshop_user_level` */

DROP TABLE IF EXISTS `nideshop_user_level`;

CREATE TABLE `nideshop_user_level` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nideshop_user_level` */

insert  into `nideshop_user_level`(`id`,`name`,`description`) values 
(1,'普通用户','0'),
(2,'vip','10000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
