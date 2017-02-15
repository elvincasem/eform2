/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.34 : Database - eform
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `panel_label` */

DROP TABLE IF EXISTS `panel_label`;

CREATE TABLE `panel_label` (
  `labelid` int(11) NOT NULL AUTO_INCREMENT,
  `labelname` varchar(100) DEFAULT NULL,
  `labeldescription` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`labelid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `panel_label` */

insert  into `panel_label`(`labelid`,`labelname`,`labeldescription`) values (6,'WS','WORK SURFACE'),(7,'LFP','LOWER FRONT PANEL'),(8,'LBP','LOWER BACK PANEL'),(9,'SBP','SLATWALL BACK PANEL'),(10,'FPF','FABRIC PANEL FRONT'),(11,'FPB','FABRIC PANEL BACK'),(12,'MWO','MILLWORK'),(14,'RC','REAR COVER'),(15,'LD','LOWER DECK');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `projectid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectname` varchar(300) DEFAULT NULL,
  `projectnumber` varchar(300) DEFAULT NULL,
  `projecttype` varchar(300) DEFAULT NULL,
  `formdate` date DEFAULT NULL,
  `originator` varchar(300) DEFAULT NULL,
  `country` varchar(500) DEFAULT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`projectid`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

/*Data for the table `project` */

insert  into `project`(`projectid`,`projectname`,`projectnumber`,`projecttype`,`formdate`,`originator`,`country`,`timest`) values (73,'Sample','123','Custom','2017-01-26','Elvin','China','2017-01-26 23:12:16'),(74,'sample 2','','Counter Smart','2017-01-04','','Canada','2017-02-12 12:53:58'),(75,'sample 3','','0','2017-02-02','','Canada','2017-02-12 12:54:57'),(76,'Sample 4','','0','2017-03-24','','Canada','2017-02-12 12:55:51'),(77,'sample 5','','0','2017-04-13','','Canada','2017-02-12 12:56:13'),(78,'Sample 6','','0','2017-05-05','','Canada','2017-02-12 12:58:39'),(79,'Sample 7','','0','2017-07-02','','Canada','2017-02-12 13:04:53'),(80,'Sample 8','','0','2017-08-10','','Canada','2017-02-12 13:05:44'),(81,'Sample 9','','0','2017-09-01','','Canada','2017-02-12 13:06:15'),(82,'Sample 10','','0','2017-10-05','','Canada','2017-02-12 13:06:59'),(83,'Sample 11','','0','2017-11-01','','Canada','2017-02-12 13:07:52'),(84,'Sample 12','','0','2017-12-12','','Canada','2017-02-12 13:08:42');

/*Table structure for table `project_assembly` */

DROP TABLE IF EXISTS `project_assembly`;

CREATE TABLE `project_assembly` (
  `assmblyid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `faintegration` varchar(500) DEFAULT 'NONE',
  `assemblynotes` text,
  `q101` varchar(100) DEFAULT 'NA',
  `q102` varchar(100) DEFAULT 'NA',
  `q103` varchar(100) DEFAULT 'NA',
  `q104` varchar(100) DEFAULT 'NA',
  `q105` varchar(100) DEFAULT 'NA',
  `q106` varchar(100) DEFAULT 'NA',
  `q107` varchar(100) DEFAULT 'NA',
  `q108` varchar(100) DEFAULT 'NA',
  `q109` varchar(100) DEFAULT 'NA',
  `q110` varchar(100) DEFAULT 'NA',
  `q112` varchar(100) DEFAULT 'NA',
  `q113` varchar(100) DEFAULT 'NA',
  `positionnos` varchar(300) DEFAULT 'NONE',
  UNIQUE KEY `assmblyid` (`assmblyid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

/*Data for the table `project_assembly` */

insert  into `project_assembly`(`assmblyid`,`projectid`,`faintegration`,`assemblynotes`,`q101`,`q102`,`q103`,`q104`,`q105`,`q106`,`q107`,`q108`,`q109`,`q110`,`q112`,`q113`,`positionnos`) values (58,73,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(59,74,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(60,75,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(61,76,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(62,77,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(63,78,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(64,79,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(65,80,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(66,81,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(67,82,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(68,83,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(69,84,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE');

/*Table structure for table `project_design` */

DROP TABLE IF EXISTS `project_design`;

CREATE TABLE `project_design` (
  `designid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `designname` varchar(500) DEFAULT 'NONE',
  `q31` varchar(100) DEFAULT 'NA',
  `q32` varchar(100) DEFAULT 'NA',
  `q33` varchar(100) DEFAULT 'NA',
  `designextra1` text,
  `deq1` varchar(100) DEFAULT 'NA',
  `designextra2` text,
  `deq2` varchar(100) DEFAULT 'NA',
  `designnotes` text,
  PRIMARY KEY (`designid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `project_design` */

insert  into `project_design`(`designid`,`projectid`,`designname`,`q31`,`q32`,`q33`,`designextra1`,`deq1`,`designextra2`,`deq2`,`designnotes`) values (20,73,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(21,74,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(22,75,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(23,76,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(24,77,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(25,78,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(26,79,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(27,80,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(28,81,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(29,82,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(30,83,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(31,84,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL);

/*Table structure for table `project_incompletes` */

DROP TABLE IF EXISTS `project_incompletes`;

CREATE TABLE `project_incompletes` (
  `pdetailsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `partnumber` varchar(300) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `notes` text,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pdetailsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `project_incompletes` */

insert  into `project_incompletes`(`pdetailsid`,`projectid`,`partnumber`,`description`,`notes`,`timest`) values (1,73,'321','In Process','test','2017-01-26 23:12:47');

/*Table structure for table `project_incompletes_q` */

DROP TABLE IF EXISTS `project_incompletes_q`;

CREATE TABLE `project_incompletes_q` (
  `pdetailsqid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `authshipment` varchar(100) DEFAULT 'NO',
  `authsolution` varchar(300) DEFAULT 'NONE',
  `authdate` date NOT NULL,
  `hardwarebox` varchar(100) DEFAULT 'NO',
  `authpackaged` varchar(100) DEFAULT 'NO',
  `pmsee` varchar(100) DEFAULT 'NO',
  `pmsolution` varchar(300) DEFAULT 'NONE',
  `pmdate` date NOT NULL,
  `pmexception` varchar(100) DEFAULT 'NO',
  `pmexsolution` varchar(300) DEFAULT 'NONE',
  `pmexdate` date NOT NULL,
  PRIMARY KEY (`pdetailsqid`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Data for the table `project_incompletes_q` */

insert  into `project_incompletes_q`(`pdetailsqid`,`projectid`,`authshipment`,`authsolution`,`authdate`,`hardwarebox`,`authpackaged`,`pmsee`,`pmsolution`,`pmdate`,`pmexception`,`pmexsolution`,`pmexdate`) values (59,73,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(60,74,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(61,75,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(62,76,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(63,77,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(64,78,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(65,79,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(66,80,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(67,81,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(68,82,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(69,83,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(70,84,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00');

/*Table structure for table `project_notes` */

DROP TABLE IF EXISTS `project_notes`;

CREATE TABLE `project_notes` (
  `notesid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `installernotes` text,
  `integrationrep` varchar(500) DEFAULT 'NONE',
  `packagingrep` varchar(500) DEFAULT 'NONE',
  `timerelease` varchar(100) NOT NULL DEFAULT '00:00:00 AM',
  `daterelease` date NOT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notesid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `project_notes` */

insert  into `project_notes`(`notesid`,`projectid`,`installernotes`,`integrationrep`,`packagingrep`,`timerelease`,`daterelease`,`timest`) values (4,73,'','NONE','NONE','3:12:00 PM','2017-01-26','2017-01-26 23:06:53'),(5,74,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 12:53:59'),(6,75,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 12:54:58'),(7,76,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 12:55:51'),(8,77,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 12:56:13'),(9,78,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 12:58:40'),(10,79,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 13:04:54'),(11,80,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 13:05:44'),(12,81,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 13:06:15'),(13,82,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 13:07:00'),(14,83,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 13:07:53'),(15,84,NULL,'NONE','NONE','00:00:00 AM','2017-02-12','2017-02-12 13:08:42');

/*Table structure for table `project_packaging` */

DROP TABLE IF EXISTS `project_packaging`;

CREATE TABLE `project_packaging` (
  `packagingid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `packagingname` varchar(500) DEFAULT 'NONE',
  `q51` varchar(100) DEFAULT 'NA',
  `q52` varchar(100) DEFAULT 'NA',
  `q53` varchar(100) DEFAULT 'NA',
  `q55` varchar(100) DEFAULT 'NA',
  `q56` varchar(100) DEFAULT 'NA',
  `q57` varchar(100) DEFAULT 'NA',
  `q58` varchar(100) DEFAULT 'NA',
  `q59` varchar(100) DEFAULT 'NA',
  `q510` varchar(100) DEFAULT 'NA',
  `packagingnotes` text,
  PRIMARY KEY (`packagingid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `project_packaging` */

insert  into `project_packaging`(`packagingid`,`projectid`,`packagingname`,`q51`,`q52`,`q53`,`q55`,`q56`,`q57`,`q58`,`q59`,`q510`,`packagingnotes`) values (4,73,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(5,74,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(6,75,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(7,76,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(8,77,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(9,78,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(10,79,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(11,80,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(12,81,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(13,82,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(14,83,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(15,84,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL);

/*Table structure for table `project_qualityassurance` */

DROP TABLE IF EXISTS `project_qualityassurance`;

CREATE TABLE `project_qualityassurance` (
  `qaid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `qaname` varchar(500) DEFAULT 'NONE',
  `q41` varchar(100) DEFAULT 'NA',
  `q42` varchar(100) DEFAULT 'NA',
  `q43` varchar(100) DEFAULT 'NA',
  `qanotes` text,
  PRIMARY KEY (`qaid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `project_qualityassurance` */

insert  into `project_qualityassurance`(`qaid`,`projectid`,`qaname`,`q41`,`q42`,`q43`,`qanotes`) values (18,73,'NONE','NA','NA','NA',NULL),(19,74,'NONE','NA','NA','NA',NULL),(20,75,'NONE','NA','NA','NA',NULL),(21,76,'NONE','NA','NA','NA',NULL),(22,77,'NONE','NA','NA','NA',NULL),(23,78,'NONE','NA','NA','NA',NULL),(24,79,'NONE','NA','NA','NA',NULL),(25,80,'NONE','NA','NA','NA',NULL),(26,81,'NONE','NA','NA','NA',NULL),(27,82,'NONE','NA','NA','NA',NULL),(28,83,'NONE','NA','NA','NA',NULL),(29,84,'NONE','NA','NA','NA',NULL);

/*Table structure for table `project_regular` */

DROP TABLE IF EXISTS `project_regular`;

CREATE TABLE `project_regular` (
  `rpid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `rp_issuetype` varchar(500) DEFAULT NULL,
  `rp_partdescription` text,
  `rp_qty` int(11) DEFAULT NULL,
  `rp_posno` varbinary(500) DEFAULT NULL,
  `rp_issuedetails` text,
  `rp_correction` text,
  `rp_groupresponsible` varchar(500) DEFAULT NULL,
  `rp_cause` varchar(300) DEFAULT NULL,
  `rp_ship` varchar(100) DEFAULT NULL,
  `rp_level0` varchar(500) DEFAULT NULL,
  `rp_level1` varchar(500) DEFAULT NULL,
  `rp_level2` varchar(500) DEFAULT NULL,
  `rp_level3` varchar(500) DEFAULT NULL,
  `rp_approvedby` varchar(300) DEFAULT NULL,
  `rp_date` date DEFAULT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rpid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `project_regular` */

insert  into `project_regular`(`rpid`,`projectid`,`rp_issuetype`,`rp_partdescription`,`rp_qty`,`rp_posno`,`rp_issuedetails`,`rp_correction`,`rp_groupresponsible`,`rp_cause`,`rp_ship`,`rp_level0`,`rp_level1`,`rp_level2`,`rp_level3`,`rp_approvedby`,`rp_date`,`timest`) values (1,74,'Change Order','',2,'','','','','METAL','NONE','Buyout','Frame','','','','2017-01-02','2017-02-12 12:54:23'),(2,74,'Damaged Part','',3,'','','','','SOLUTIONS','NONE','NONE','NONE','','','','2017-01-03','2017-02-12 12:54:32'),(3,75,'Incorrect Part','',5,'','','','PE&D','PE&D','NONE','NONE','NONE','','','','2017-02-12','2017-02-12 12:55:15'),(4,75,'Missing Part','',3,'','','','','PROCUREMENT','NONE','NONE','NONE','','','','2017-02-01','2017-02-12 12:55:23'),(5,75,'Solutions Request','',7,'','','','','QUALITY','NONE','NONE','NONE','','','','2017-02-01','2017-02-12 12:55:39'),(6,76,'Incorrect Assembly','',5,'','','','','VENDOR','NONE','NONE','NONE','','','','2017-03-16','2017-02-12 12:56:03'),(7,77,'Incorrect Assembly','',5,'','','','','PACKAGING','NONE','NONE','NONE','','','','2017-04-07','2017-02-12 12:56:27'),(8,77,'Incomplete','',7,'','','','','ECK','NONE','NONE','NONE','','','','2017-04-08','2017-02-12 12:56:35'),(9,77,'Solutions Request','',1,'','','','','SOLUTIONS','NONE','NONE','NONE','','','','2017-04-09','2017-02-12 12:56:42'),(10,78,'Change Order','',2,'','','','','METAL','NONE','NONE','NONE','','','','2017-05-27','2017-02-12 12:58:53'),(11,73,'Design Issue','',10,'','','','','DESIGN','NONE','NONE','NONE','','','','2017-01-26','2017-02-12 13:00:41'),(12,78,'Physical Misalignment','',14,'','','','VENDOR','PACKAGING','NONE','NONE','NONE','','','','2017-05-27','2017-02-12 13:03:46'),(13,79,'Change Order','',11,'','','','','DESIGN','NONE','NONE','NONE','','','','2017-07-10','2017-02-12 13:05:12'),(14,79,'Missing Part','',2,'','','','','WOOD','NONE','NONE','NONE','','','','2017-07-14','2017-02-12 13:05:27'),(15,80,'Defective Part','',1,'2','','','','QUALITY','NONE','NONE','NONE','','','','2017-08-16','2017-02-12 13:05:59'),(16,81,'Design Issue','',5,'','','','','ELECTRICAL','NONE','NONE','NONE','','','','2017-09-08','2017-02-12 13:06:39'),(17,82,'Solutions Request','',8,'','','','','ELECTRICAL','NONE','NONE','NONE','','','','2017-10-08','2017-02-12 13:07:19'),(18,83,'Physical Misalignment','',2,'','','','','INTEGRATION','NONE','NONE','NONE','','','','2017-11-01','2017-02-12 13:08:11'),(19,83,'Incorrect Part','',1,'','','','','PACKAGING','NONE','NONE','NONE','','','','2017-11-01','2017-02-12 13:08:23'),(20,84,'Design Issue','',1,'2','','','','PROCUREMENT','NONE','NONE','NONE','','','','2017-12-12','2017-02-12 13:09:04'),(21,84,'Damaged Part','',1,'1','','','','WOOD','NONE','NONE','NONE','','','','2017-12-22','2017-02-12 13:09:17'),(22,73,'Missing Part','',1,'','','','ELECTRICAL','ECK','NONE','NONE','NONE','','','','2017-01-12','2017-02-12 18:05:39');

/*Table structure for table `project_services` */

DROP TABLE IF EXISTS `project_services`;

CREATE TABLE `project_services` (
  `servicesid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `servicesname` varchar(500) DEFAULT 'NONE',
  `servicesnotes` text,
  `q21` varchar(100) DEFAULT 'NA',
  `q22` varchar(100) DEFAULT 'NA',
  `q23` varchar(100) DEFAULT 'NA',
  `q24` varchar(100) DEFAULT 'NA',
  `q25` varchar(100) DEFAULT 'NA',
  `q26` varchar(100) DEFAULT 'NA',
  `q27` varchar(100) DEFAULT 'NA',
  `extra1` text,
  `eq1` varchar(100) DEFAULT 'NA',
  `extra2` text,
  `eq2` varchar(100) DEFAULT 'NA',
  `extra3` text,
  `eq3` varchar(100) DEFAULT 'NA',
  UNIQUE KEY `assmblyid` (`servicesid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

/*Data for the table `project_services` */

insert  into `project_services`(`servicesid`,`projectid`,`servicesname`,`servicesnotes`,`q21`,`q22`,`q23`,`q24`,`q25`,`q26`,`q27`,`extra1`,`eq1`,`extra2`,`eq2`,`extra3`,`eq3`) values (57,73,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(58,74,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(59,75,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(60,76,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(61,77,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(62,78,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(63,79,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(64,80,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(65,81,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(66,82,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(67,83,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(68,84,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`uid`,`username`,`password`,`name`,`usertype`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','Admin','admin'),(3,'evans','ad0234829205b9033196ba818f7a872b','Evans Online','staff');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
