/*
*SQL - 5.6.17 : Database - test
*author sail
*link http://www.word100.com/
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `show_bill` */

DROP TABLE IF EXISTS `show_bill`;

CREATE TABLE `show_bill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `show_name` varchar(100) NOT NULL COMMENT '节目名称',
  `group_name` varchar(100) NOT NULL COMMENT '团体名称',
  `show_type` varchar(100) NOT NULL COMMENT '节目类型',
  `actor` varchar(200) DEFAULT NULL COMMENT '演员',
  `show_times` varchar(20) DEFAULT NULL COMMENT '时长',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `attend_type` int(11) NOT NULL COMMENT '出场类型 :1.上半场;2.下半场',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `point` int(11) NOT NULL DEFAULT '0' COMMENT '投票总数',
  `status` int(11) DEFAULT '0' COMMENT '开始状态:0.停止;1.开始',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 ',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `chart_color` varchar(10) NOT NULL COMMENT '图表颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='年会节目单';

/*Data for the table `show_bill` */

insert  into `show_bill`(`id`,`show_name`,`group_name`,`show_type`,`actor`,`show_times`,`leader`,`attend_type`,`memo`,`point`,`status`,`create_time`,`update_time`,`chart_color`) values (1,'百变大咖秀之春晚','测试部一','小品形式歌曲串烧','sail','10','sail',1,'www.word100.com',24,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#156097'),(2,'红豆','测试部二','口琴伴奏女生独唱','sail','4.5','sail',1,'www.word100.com',79,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#008e9c'),(3,'biubiubiubiu','设计部','现代舞','sail','4','sail',1,'www.word100.com',212,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#a81b81'),(4,'secret','营销中心','舞蹈','sail','4','sail',1,'www.word100.com',0,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#d19708'),(5,'武术','行政','武术','sail','3','sail',1,'www.word100.com',1,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#f2c172'),(6,'和你一样','财务部','女生合唱+手语','sail','4','sail',1,'www.word100.com',0,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#009b6b'),(7,'青春修炼手册','新业务部','歌伴舞','sail','4.5','sail',1,'www.word100.com',2,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#92bf1e'),(8,'夜空中最亮的星','质量管理','阿卡贝拉人声合唱','sail','4.5','sail',2,'www.word100.com',0,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#009bc1'),(9,'即兴独舞','新业务','独舞','sail','3','sail',2,'www.word100.com',1,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#f6e614'),(10,'程序员那点事','客户端开发部','小品','sail','8','sail',2,'www.word100.com',2,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#d4a7a1'),(11,'几首串烧的歌曲','运维部','双簧真假唱/歌曲形式','sail','0','sail',2,'www.word100.com',1,0,'2016-12-10 12:12:06','2016-12-21 22:10:26','#5b2c68'),(12,'小鸡小鸡','服务器开发一部','广场舞','sail','4','sail',2,'www.word100.com',2,0,'2016-12-10 12:12:07','2016-12-21 22:10:26','#c23931'),(13,'四大才子','网站技术部','小品','sail','8','sail',2,'www.word100.com',3,0,'2016-12-10 12:12:07','2016-12-21 22:10:26','#e46022');

/*Table structure for table `vote_code` */

DROP TABLE IF EXISTS `vote_code`;

CREATE TABLE `vote_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `vote_code` varchar(10) DEFAULT NULL COMMENT '投票码',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 ',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_AK_code` (`vote_code`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8 COMMENT='节目投票码';

/*Data for the table `vote_code` */

insert  into `vote_code`(`id`,`vote_code`,`create_time`,`update_time`) values (1,'D7662','2016-12-09 21:10:20','2016-12-09 21:10:20'),(2,'O5951','2016-12-09 21:10:20','2016-12-09 21:10:20'),(3,'F6766','2016-12-09 21:10:20','2016-12-09 21:10:20'),(4,'N2718','2016-12-09 21:10:20','2016-12-09 21:10:20'),(5,'D4923','2016-12-09 21:10:20','2016-12-09 21:10:20'),(6,'K9728','2016-12-09 21:10:20','2016-12-09 21:10:20'),(7,'O2619','2016-12-09 21:10:20','2016-12-09 21:10:20'),(8,'R3077','2016-12-09 21:10:20','2016-12-09 21:10:20'),(9,'V8812','2016-12-09 21:10:20','2016-12-09 21:10:20'),(10,'E9530','2016-12-09 21:10:20','2016-12-09 21:10:20'),(11,'K6028','2016-12-09 21:10:20','2016-12-09 21:10:20'),(12,'V2979','2016-12-09 21:10:20','2016-12-09 21:10:20'),(13,'Z1092','2016-12-09 21:10:20','2016-12-09 21:10:20'),(14,'E8613','2016-12-09 21:10:20','2016-12-09 21:10:20'),(15,'S5509','2016-12-09 21:10:20','2016-12-09 21:10:20'),(16,'T1329','2016-12-09 21:10:21','2016-12-09 21:10:21'),(17,'Z7337','2016-12-09 21:10:21','2016-12-09 21:10:21'),(18,'A7327','2016-12-09 21:10:21','2016-12-09 21:10:21'),(19,'T4395','2016-12-09 21:10:21','2016-12-09 21:10:21'),(20,'K5399','2016-12-09 21:10:21','2016-12-09 21:10:21'),(21,'E8751','2016-12-09 21:10:21','2016-12-09 21:10:21'),(22,'H1923','2016-12-09 21:10:21','2016-12-09 21:10:21'),(23,'R6504','2016-12-09 21:10:21','2016-12-09 21:10:21'),(24,'D3220','2016-12-09 21:10:21','2016-12-09 21:10:21'),(25,'E3254','2016-12-09 21:10:21','2016-12-09 21:10:21'),(26,'X9027','2016-12-09 21:10:21','2016-12-09 21:10:21'),(27,'X5637','2016-12-09 21:10:21','2016-12-09 21:10:21'),(28,'X8492','2016-12-09 21:10:21','2016-12-09 21:10:21'),(29,'H5885','2016-12-09 21:10:21','2016-12-09 21:10:21'),(30,'I6701','2016-12-09 21:10:21','2016-12-09 21:10:21'),(31,'Y7710','2016-12-09 21:10:21','2016-12-09 21:10:21'),(32,'P5584','2016-12-09 21:10:21','2016-12-09 21:10:21'),(33,'G3597','2016-12-09 21:10:21','2016-12-09 21:10:21'),(34,'E4760','2016-12-09 21:10:21','2016-12-09 21:10:21'),(35,'X9206','2016-12-09 21:10:21','2016-12-09 21:10:21'),(36,'H9878','2016-12-09 21:10:21','2016-12-09 21:10:21'),(37,'T3735','2016-12-09 21:10:21','2016-12-09 21:10:21'),(38,'W9549','2016-12-09 21:10:22','2016-12-09 21:10:22'),(39,'E9014','2016-12-09 21:10:22','2016-12-09 21:10:22'),(40,'S4428','2016-12-09 21:10:22','2016-12-09 21:10:22'),(41,'B1154','2016-12-09 21:10:22','2016-12-09 21:10:22'),(42,'Q8512','2016-12-09 21:10:22','2016-12-09 21:10:22'),(43,'Z4551','2016-12-09 21:10:22','2016-12-09 21:10:22'),(44,'V3492','2016-12-09 21:10:22','2016-12-09 21:10:22'),(45,'M5781','2016-12-09 21:10:22','2016-12-09 21:10:22'),(46,'K3685','2016-12-09 21:10:22','2016-12-09 21:10:22'),(47,'I8184','2016-12-09 21:10:22','2016-12-09 21:10:22'),(48,'G7931','2016-12-09 21:10:22','2016-12-09 21:10:22'),(49,'O2177','2016-12-09 21:10:22','2016-12-09 21:10:22'),(50,'X2383','2016-12-09 21:10:22','2016-12-09 21:10:22'),(51,'P7755','2016-12-09 21:10:22','2016-12-09 21:10:22'),(52,'I7449','2016-12-09 21:10:22','2016-12-09 21:10:22'),(53,'U1071','2016-12-09 21:10:22','2016-12-09 21:10:22'),(54,'Z2393','2016-12-09 21:10:22','2016-12-09 21:10:22'),(55,'F8410','2016-12-09 21:10:22','2016-12-09 21:10:22'),(56,'Z7301','2016-12-09 21:10:22','2016-12-09 21:10:22'),(57,'F8743','2016-12-09 21:10:22','2016-12-09 21:10:22'),(58,'X5065','2016-12-09 21:10:22','2016-12-09 21:10:22'),(59,'J4050','2016-12-09 21:10:22','2016-12-09 21:10:22'),(60,'U2616','2016-12-09 21:10:22','2016-12-09 21:10:22'),(61,'S9538','2016-12-09 21:10:22','2016-12-09 21:10:22'),(62,'D3745','2016-12-09 21:10:22','2016-12-09 21:10:22'),(63,'Z3841','2016-12-09 21:10:22','2016-12-09 21:10:22'),(64,'N7166','2016-12-09 21:10:22','2016-12-09 21:10:22'),(65,'E3933','2016-12-09 21:10:23','2016-12-09 21:10:23'),(66,'G3622','2016-12-09 21:10:23','2016-12-09 21:10:23'),(67,'G3871','2016-12-09 21:10:23','2016-12-09 21:10:23'),(68,'Y7534','2016-12-09 21:10:23','2016-12-09 21:10:23'),(69,'K4943','2016-12-09 21:10:23','2016-12-09 21:10:23'),(70,'E3998','2016-12-09 21:10:23','2016-12-09 21:10:23'),(71,'H3198','2016-12-09 21:10:23','2016-12-09 21:10:23'),(72,'U4995','2016-12-09 21:10:23','2016-12-09 21:10:23'),(73,'R8745','2016-12-09 21:10:23','2016-12-09 21:10:23'),(74,'L1191','2016-12-09 21:10:23','2016-12-09 21:10:23'),(75,'H6269','2016-12-09 21:10:23','2016-12-09 21:10:23'),(76,'J3893','2016-12-09 21:10:23','2016-12-09 21:10:23'),(77,'F4226','2016-12-09 21:10:23','2016-12-09 21:10:23'),(78,'M7566','2016-12-09 21:10:23','2016-12-09 21:10:23'),(79,'W1478','2016-12-09 21:10:23','2016-12-09 21:10:23'),(80,'Z4516','2016-12-09 21:10:23','2016-12-09 21:10:23'),(81,'U9810','2016-12-09 21:10:23','2016-12-09 21:10:23'),(82,'A3044','2016-12-09 21:10:23','2016-12-09 21:10:23'),(83,'Z5595','2016-12-09 21:10:23','2016-12-09 21:10:23'),(84,'N5510','2016-12-09 21:10:23','2016-12-09 21:10:23'),(85,'Z3063','2016-12-09 21:10:23','2016-12-09 21:10:23'),(86,'V9244','2016-12-09 21:10:23','2016-12-09 21:10:23'),(87,'E8047','2016-12-09 21:10:23','2016-12-09 21:10:23'),(88,'J8668','2016-12-09 21:10:23','2016-12-09 21:10:23'),(89,'S8056','2016-12-09 21:10:23','2016-12-09 21:10:23'),(90,'I5707','2016-12-09 21:10:23','2016-12-09 21:10:23'),(91,'R7326','2016-12-09 21:10:23','2016-12-09 21:10:23'),(92,'B3788','2016-12-09 21:10:23','2016-12-09 21:10:23'),(93,'E1131','2016-12-09 21:10:24','2016-12-09 21:10:24'),(94,'P2799','2016-12-09 21:10:24','2016-12-09 21:10:24'),(95,'Z5513','2016-12-09 21:10:24','2016-12-09 21:10:24'),(96,'J4470','2016-12-09 21:10:24','2016-12-09 21:10:24'),(97,'T9420','2016-12-09 21:10:24','2016-12-09 21:10:24'),(98,'K6529','2016-12-09 21:10:24','2016-12-09 21:10:24'),(99,'J5429','2016-12-09 21:10:24','2016-12-09 21:10:24'),(100,'Q4717','2016-12-09 21:10:24','2016-12-09 21:10:24'),(101,'U7148','2016-12-09 21:10:24','2016-12-09 21:10:24'),(102,'R5491','2016-12-09 21:10:24','2016-12-09 21:10:24'),(103,'U1551','2016-12-09 21:10:24','2016-12-09 21:10:24'),(104,'P7193','2016-12-09 21:10:24','2016-12-09 21:10:24'),(105,'P5185','2016-12-09 21:10:24','2016-12-09 21:10:24'),(106,'J1862','2016-12-09 21:10:24','2016-12-09 21:10:24'),(107,'R6945','2016-12-09 21:10:24','2016-12-09 21:10:24'),(108,'H6507','2016-12-09 21:10:24','2016-12-09 21:10:24'),(109,'R8683','2016-12-09 21:10:24','2016-12-09 21:10:24'),(110,'V8159','2016-12-09 21:10:24','2016-12-09 21:10:24'),(111,'V8971','2016-12-09 21:10:24','2016-12-09 21:10:24'),(112,'T8844','2016-12-09 21:10:24','2016-12-09 21:10:24'),(113,'B4127','2016-12-09 21:10:24','2016-12-09 21:10:24'),(114,'S2516','2016-12-09 21:10:24','2016-12-09 21:10:24'),(115,'X5358','2016-12-09 21:10:24','2016-12-09 21:10:24'),(116,'E1754','2016-12-09 21:10:24','2016-12-09 21:10:24'),(117,'F7437','2016-12-09 21:10:24','2016-12-09 21:10:24'),(118,'X9088','2016-12-09 21:10:24','2016-12-09 21:10:24'),(119,'C1807','2016-12-09 21:10:25','2016-12-09 21:10:25'),(120,'L7246','2016-12-09 21:10:25','2016-12-09 21:10:25'),(121,'Y7561','2016-12-09 21:10:25','2016-12-09 21:10:25'),(122,'U5558','2016-12-09 21:10:25','2016-12-09 21:10:25'),(123,'I2977','2016-12-09 21:10:25','2016-12-09 21:10:25'),(124,'B7352','2016-12-09 21:10:25','2016-12-09 21:10:25'),(125,'D5641','2016-12-09 21:10:25','2016-12-09 21:10:25'),(126,'D2680','2016-12-09 21:10:25','2016-12-09 21:10:25'),(127,'K2296','2016-12-09 21:10:25','2016-12-09 21:10:25'),(128,'K1175','2016-12-09 21:10:25','2016-12-09 21:10:25'),(129,'M9472','2016-12-09 21:10:25','2016-12-09 21:10:25'),(130,'W8120','2016-12-09 21:10:25','2016-12-09 21:10:25'),(131,'S2969','2016-12-09 21:10:25','2016-12-09 21:10:25'),(132,'W9912','2016-12-09 21:10:25','2016-12-09 21:10:25'),(133,'V9614','2016-12-09 21:10:25','2016-12-09 21:10:25'),(134,'F1648','2016-12-09 21:10:25','2016-12-09 21:10:25'),(135,'C2558','2016-12-09 21:10:25','2016-12-09 21:10:25'),(136,'V6977','2016-12-09 21:10:25','2016-12-09 21:10:25'),(137,'T3077','2016-12-09 21:10:25','2016-12-09 21:10:25'),(138,'A8416','2016-12-09 21:10:25','2016-12-09 21:10:25'),(139,'F7174','2016-12-09 21:10:25','2016-12-09 21:10:25'),(140,'V9767','2016-12-09 21:10:25','2016-12-09 21:10:25'),(141,'S3392','2016-12-09 21:10:25','2016-12-09 21:10:25'),(142,'N1109','2016-12-09 21:10:25','2016-12-09 21:10:25'),(143,'R6326','2016-12-09 21:10:25','2016-12-09 21:10:25'),(144,'B5480','2016-12-09 21:10:25','2016-12-09 21:10:25'),(145,'T6536','2016-12-09 21:10:26','2016-12-09 21:10:26'),(146,'M5349','2016-12-09 21:10:26','2016-12-09 21:10:26'),(147,'P4466','2016-12-09 21:10:26','2016-12-09 21:10:26'),(148,'L1279','2016-12-09 21:10:26','2016-12-09 21:10:26'),(149,'Z8344','2016-12-09 21:10:26','2016-12-09 21:10:26'),(150,'D3189','2016-12-09 21:10:26','2016-12-09 21:10:26'),(151,'M6521','2016-12-09 21:10:26','2016-12-09 21:10:26'),(152,'N9509','2016-12-09 21:10:26','2016-12-09 21:10:26'),(153,'C6216','2016-12-09 21:10:26','2016-12-09 21:10:26'),(154,'D3525','2016-12-09 21:10:26','2016-12-09 21:10:26'),(155,'V2312','2016-12-09 21:10:26','2016-12-09 21:10:26'),(156,'C4717','2016-12-09 21:10:26','2016-12-09 21:10:26'),(157,'B4626','2016-12-09 21:10:26','2016-12-09 21:10:26'),(158,'I9237','2016-12-09 21:10:26','2016-12-09 21:10:26'),(159,'H9830','2016-12-09 21:10:26','2016-12-09 21:10:26'),(160,'A9086','2016-12-09 21:10:26','2016-12-09 21:10:26'),(161,'J5790','2016-12-09 21:10:26','2016-12-09 21:10:26'),(162,'Q7440','2016-12-09 21:10:26','2016-12-09 21:10:26'),(163,'H5340','2016-12-09 21:10:26','2016-12-09 21:10:26'),(164,'C1244','2016-12-09 21:10:26','2016-12-09 21:10:26'),(165,'K6611','2016-12-09 21:10:26','2016-12-09 21:10:26'),(166,'H7344','2016-12-09 21:10:26','2016-12-09 21:10:26'),(167,'B1414','2016-12-09 21:10:26','2016-12-09 21:10:26'),(168,'T9116','2016-12-09 21:10:26','2016-12-09 21:10:26'),(169,'E1253','2016-12-09 21:10:26','2016-12-09 21:10:26'),(170,'T1994','2016-12-09 21:10:26','2016-12-09 21:10:26'),(171,'Z3189','2016-12-09 21:10:26','2016-12-09 21:10:26'),(172,'Q3237','2016-12-09 21:10:26','2016-12-09 21:10:26'),(173,'Z4989','2016-12-09 21:10:27','2016-12-09 21:10:27'),(174,'V8398','2016-12-09 21:10:27','2016-12-09 21:10:27'),(175,'Q2658','2016-12-09 21:10:27','2016-12-09 21:10:27'),(176,'M1144','2016-12-09 21:10:27','2016-12-09 21:10:27'),(177,'H9750','2016-12-09 21:10:27','2016-12-09 21:10:27'),(178,'N7717','2016-12-09 21:10:27','2016-12-09 21:10:27'),(179,'Z5004','2016-12-09 21:10:27','2016-12-09 21:10:27'),(180,'I5647','2016-12-09 21:10:27','2016-12-09 21:10:27'),(181,'T3627','2016-12-09 21:10:27','2016-12-09 21:10:27'),(182,'R9546','2016-12-09 21:10:27','2016-12-09 21:10:27'),(183,'F5358','2016-12-09 21:10:27','2016-12-09 21:10:27'),(184,'I5292','2016-12-09 21:10:27','2016-12-09 21:10:27'),(185,'Y5803','2016-12-09 21:10:27','2016-12-09 21:10:27'),(186,'I7737','2016-12-09 21:10:27','2016-12-09 21:10:27'),(187,'Z4958','2016-12-09 21:10:27','2016-12-09 21:10:27'),(188,'I9309','2016-12-09 21:10:27','2016-12-09 21:10:27'),(189,'L8042','2016-12-09 21:10:27','2016-12-09 21:10:27'),(190,'I5563','2016-12-09 21:10:27','2016-12-09 21:10:27'),(191,'I3909','2016-12-09 21:10:27','2016-12-09 21:10:27'),(192,'K4867','2016-12-09 21:10:27','2016-12-09 21:10:27'),(193,'P5763','2016-12-09 21:10:27','2016-12-09 21:10:27'),(194,'I6927','2016-12-09 21:10:27','2016-12-09 21:10:27'),(195,'R9814','2016-12-09 21:10:27','2016-12-09 21:10:27'),(196,'T1973','2016-12-09 21:10:27','2016-12-09 21:10:27'),(197,'P3531','2016-12-09 21:10:27','2016-12-09 21:10:27'),(198,'R5303','2016-12-09 21:10:27','2016-12-09 21:10:27'),(199,'N3354','2016-12-09 21:10:28','2016-12-09 21:10:28'),(200,'L7910','2016-12-09 21:10:28','2016-12-09 21:10:28');

/*Table structure for table `vote_point` */

DROP TABLE IF EXISTS `vote_point`;

CREATE TABLE `vote_point` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `vote_code` varchar(10) NOT NULL COMMENT '投票码',
  `show_id` int(11) NOT NULL COMMENT '节目ID',
  `point` int(11) NOT NULL DEFAULT '1' COMMENT '投票数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 ',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_AK_vote_code_point` (`vote_code`,`show_id`,`point`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='节目投票数';

/*Data for the table `vote_point` */

insert  into `vote_point`(`id`,`vote_code`,`show_id`,`point`,`create_time`,`update_time`) values (1,'D7662',13,1,'2016-12-11 14:47:38','2016-12-11 14:47:38'),(2,'D7662',12,1,'2016-12-11 14:47:38','2016-12-11 14:47:38'),(3,'D7662',11,1,'2016-12-11 14:47:38','2016-12-11 14:47:38'),(4,'O5951',13,1,'2016-12-11 15:01:13','2016-12-11 15:01:13'),(5,'O5951',10,1,'2016-12-11 15:01:13','2016-12-11 15:01:13'),(6,'O5951',8,1,'2016-12-11 15:01:13','2016-12-11 15:01:13'),(7,'O5951',7,1,'2016-12-11 15:08:04','2016-12-11 15:08:04'),(8,'O5951',6,1,'2016-12-11 15:08:04','2016-12-11 15:08:04'),(9,'O5951',4,1,'2016-12-11 15:08:04','2016-12-11 15:08:04'),(10,'F6766',6,1,'2016-12-11 20:26:56','2016-12-11 20:26:56'),(11,'F6766',4,1,'2016-12-11 20:26:56','2016-12-11 20:26:56'),(12,'F6766',2,1,'2016-12-11 20:26:56','2016-12-11 20:26:56'),(13,'F6766',13,1,'2016-12-11 20:28:11','2016-12-11 20:28:11'),(14,'F6766',11,1,'2016-12-11 20:28:11','2016-12-11 20:28:11'),(15,'F6766',10,1,'2016-12-11 20:28:11','2016-12-11 20:28:11'),(16,'N2718',13,1,'2016-12-11 20:29:07','2016-12-11 20:29:07'),(17,'N2718',10,1,'2016-12-11 20:29:07','2016-12-11 20:29:07'),(18,'N2718',12,1,'2016-12-11 20:29:07','2016-12-11 20:29:07'),(19,'N2718',6,1,'2016-12-11 20:31:42','2016-12-11 20:31:42'),(20,'N2718',7,1,'2016-12-11 20:31:42','2016-12-11 20:31:42'),(21,'N2718',3,1,'2016-12-11 20:31:42','2016-12-11 20:31:42'),(22,'D4923',6,1,'2016-12-11 20:49:45','2016-12-11 20:49:45'),(23,'D4923',7,1,'2016-12-11 20:49:45','2016-12-11 20:49:45'),(24,'D4923',3,1,'2016-12-11 20:49:45','2016-12-11 20:49:45'),(25,'K9728',6,1,'2016-12-11 20:52:51','2016-12-11 20:52:51'),(26,'K9728',4,1,'2016-12-11 20:52:51','2016-12-11 20:52:51'),(27,'K9728',3,1,'2016-12-11 20:52:51','2016-12-11 20:52:51'),(28,'O2619',6,1,'2016-12-11 21:12:46','2016-12-11 21:12:46'),(29,'O2619',7,1,'2016-12-11 21:12:46','2016-12-11 21:12:46'),(30,'O2619',4,1,'2016-12-11 21:12:46','2016-12-11 21:12:46'),(31,'R3077',6,1,'2016-12-11 21:18:37','2016-12-11 21:18:37'),(32,'R3077',7,1,'2016-12-11 21:18:37','2016-12-11 21:18:37'),(33,'R3077',4,1,'2016-12-11 21:18:37','2016-12-11 21:18:37'),(34,'R3077',13,1,'2016-12-11 21:24:04','2016-12-11 21:24:04'),(35,'R3077',10,1,'2016-12-11 21:24:04','2016-12-11 21:24:04'),(36,'R3077',11,1,'2016-12-11 21:24:04','2016-12-11 21:24:04'),(37,'D7662',6,1,'2016-12-12 09:22:59','2016-12-12 09:22:59'),(38,'D7662',7,1,'2016-12-12 09:22:59','2016-12-12 09:22:59'),(39,'D7662',4,1,'2016-12-12 09:22:59','2016-12-12 09:22:59'),(40,'E3254',6,1,'2016-12-12 09:24:39','2016-12-12 09:24:39'),(41,'E3254',7,1,'2016-12-12 09:24:39','2016-12-12 09:24:39'),(42,'E3254',4,1,'2016-12-12 09:24:39','2016-12-12 09:24:39'),(43,'X9027',6,1,'2016-12-12 09:25:38','2016-12-12 09:25:38'),(44,'X9027',7,1,'2016-12-12 09:25:38','2016-12-12 09:25:38'),(45,'X9027',3,1,'2016-12-12 09:25:38','2016-12-12 09:25:38'),(46,'X5637',4,1,'2016-12-12 09:27:21','2016-12-12 09:27:21'),(47,'X5637',3,1,'2016-12-12 09:27:21','2016-12-12 09:27:21'),(48,'X5637',5,1,'2016-12-12 09:27:21','2016-12-12 09:27:21'),(49,'X8492',6,1,'2016-12-12 09:28:57','2016-12-12 09:28:57'),(50,'X8492',7,1,'2016-12-12 09:28:57','2016-12-12 09:28:57'),(51,'X8492',3,1,'2016-12-12 09:28:57','2016-12-12 09:28:57'),(52,'V8159',6,1,'2016-12-13 13:49:21','2016-12-13 13:49:21'),(53,'V8159',7,1,'2016-12-13 13:49:21','2016-12-13 13:49:21'),(54,'V8159',4,1,'2016-12-13 13:49:21','2016-12-13 13:49:21'),(55,'V8971',6,1,'2016-12-13 13:50:36','2016-12-13 13:50:36'),(56,'V8971',7,1,'2016-12-13 13:50:36','2016-12-13 13:50:36'),(57,'V8971',4,1,'2016-12-13 13:50:36','2016-12-13 13:50:36'),(58,'1',6,1,'2016-12-13 14:10:55','2016-12-13 14:10:55'),(59,'1',7,1,'2016-12-13 14:10:55','2016-12-13 14:10:55'),(60,'1',4,1,'2016-12-13 14:10:55','2016-12-13 14:10:55'),(61,'1',13,1,'2016-12-13 14:11:18','2016-12-13 14:11:18'),(62,'1',10,1,'2016-12-13 14:11:18','2016-12-13 14:11:18'),(63,'1',11,1,'2016-12-13 14:11:18','2016-12-13 14:11:18'),(64,'V8971',9,1,'2016-12-13 14:36:28','2016-12-13 14:36:28'),(65,'V8971',13,1,'2016-12-13 14:36:28','2016-12-13 14:36:28'),(66,'V8971',12,1,'2016-12-13 14:36:28','2016-12-13 14:36:28'),(67,'3',5,1,'2016-12-13 14:59:06','2016-12-13 14:59:06'),(68,'3',4,1,'2016-12-13 14:59:06','2016-12-13 14:59:06'),(69,'3',2,1,'2016-12-13 14:59:06','2016-12-13 14:59:06'),(70,'3',12,1,'2016-12-13 14:59:32','2016-12-13 14:59:32'),(71,'3',11,1,'2016-12-13 14:59:32','2016-12-13 14:59:32'),(72,'3',10,1,'2016-12-13 14:59:32','2016-12-13 14:59:32'),(73,'20',3,1,'2016-12-14 16:38:29','2016-12-14 16:38:29'),(74,'20',2,1,'2016-12-14 16:38:29','2016-12-14 16:38:29'),(75,'20',1,1,'2016-12-14 16:38:29','2016-12-14 16:38:29'),(76,'19',2,1,'2016-12-14 16:39:31','2016-12-14 16:39:31'),(77,'19',1,1,'2016-12-14 16:39:31','2016-12-14 16:39:31'),(78,'19',7,1,'2016-12-14 16:39:31','2016-12-14 16:39:31'),(79,'19',13,1,'2016-12-14 16:40:51','2016-12-14 16:40:51'),(80,'19',12,1,'2016-12-14 16:40:51','2016-12-14 16:40:51'),(81,'19',10,1,'2016-12-14 16:40:51','2016-12-14 16:40:51'),(82,'18',13,1,'2016-12-14 16:58:15','2016-12-14 16:58:15'),(83,'18',12,1,'2016-12-14 16:58:15','2016-12-14 16:58:15'),(84,'18',10,1,'2016-12-14 16:58:15','2016-12-14 16:58:15'),(85,'18',2,1,'2016-12-14 16:58:31','2016-12-14 16:58:31'),(86,'18',7,1,'2016-12-14 16:58:31','2016-12-14 16:58:31'),(87,'18',5,1,'2016-12-14 16:58:31','2016-12-14 16:58:31'),(88,'17',13,1,'2016-12-14 17:03:29','2016-12-14 17:03:29'),(89,'17',11,1,'2016-12-14 17:03:29','2016-12-14 17:03:29'),(90,'17',9,1,'2016-12-14 17:03:29','2016-12-14 17:03:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
