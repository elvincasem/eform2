/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.6.17 : Database - eform
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `projectid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectname` varchar(300) DEFAULT NULL,
  `projectnumber` varchar(300) DEFAULT NULL,
  `projecttype` varchar(300) DEFAULT NULL,
  `formdate` date DEFAULT NULL,
  `originator` varchar(300) DEFAULT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`projectid`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Data for the table `project` */

insert  into `project`(`projectid`,`projectname`,`projectnumber`,`projecttype`,`formdate`,`originator`,`timest`) values (73,'Sample','123','Custom','2017-01-26','Elvin','2017-01-26 23:12:16'),(74,'eeee','eee','FAA','2017-01-26','eeee','2017-01-26 23:12:16'),(75,' Honeywell FREEPORT TX','U15-8004-302 ','Honeywell','2017-09-09','Henry Balba','2017-01-31 20:25:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

/*Data for the table `project_assembly` */

insert  into `project_assembly`(`assmblyid`,`projectid`,`faintegration`,`assemblynotes`,`q101`,`q102`,`q103`,`q104`,`q105`,`q106`,`q107`,`q108`,`q109`,`q110`,`q112`,`q113`,`positionnos`) values (58,73,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(59,74,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(60,75,'Henry Balba','','YES','YES','YES','YES','YES','YES','YES','NO','NA','YES','NO','YES','NONE');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `project_design` */

insert  into `project_design`(`designid`,`projectid`,`designname`,`q31`,`q32`,`q33`,`designextra1`,`deq1`,`designextra2`,`deq2`,`designnotes`) values (20,73,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(21,74,'NONE','NA','NA','NA',NULL,'NA',NULL,'NA',NULL),(22,75,'ANGELA M','YES','YES','YES','','NA','','NA','');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `project_incompletes` */

insert  into `project_incompletes`(`pdetailsid`,`projectid`,`partnumber`,`description`,`notes`,`timest`) values (1,73,'321','In Process','test','2017-01-26 23:12:47'),(2,73,'a','Require Design','sd','2017-01-27 07:38:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

/*Data for the table `project_incompletes_q` */

insert  into `project_incompletes_q`(`pdetailsqid`,`projectid`,`authshipment`,`authsolution`,`authdate`,`hardwarebox`,`authpackaged`,`pmsee`,`pmsolution`,`pmdate`,`pmexception`,`pmexsolution`,`pmexdate`) values (59,73,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(60,74,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(61,75,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `project_notes` */

insert  into `project_notes`(`notesid`,`projectid`,`installernotes`,`integrationrep`,`packagingrep`,`timerelease`,`daterelease`,`timest`) values (4,73,'','NONE','NONE','3:12:00 PM','2017-01-26','2017-01-26 23:06:53'),(8,74,'','NONE','NONE','12:00:15 PM','2017-01-26','2017-01-26 23:11:45'),(9,75,'','HB','KEVIN W.','2:40:00 PM','2016-09-09','2017-01-31 20:25:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `project_packaging` */

insert  into `project_packaging`(`packagingid`,`projectid`,`packagingname`,`q51`,`q52`,`q53`,`q55`,`q56`,`q57`,`q58`,`q59`,`q510`,`packagingnotes`) values (4,73,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(5,74,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL),(6,75,'NONE','NA','NA','NA','NA','NA','NA','NA','NA','NA',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `project_qualityassurance` */

insert  into `project_qualityassurance`(`qaid`,`projectid`,`qaname`,`q41`,`q42`,`q43`,`qanotes`) values (18,73,'NONE','NA','NA','NA',NULL),(19,74,'NONE','NA','NA','NA',NULL),(20,75,'Azam.M','YES','YES','YES','');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `project_regular` */

insert  into `project_regular`(`rpid`,`projectid`,`rp_issuetype`,`rp_partdescription`,`rp_qty`,`rp_posno`,`rp_issuedetails`,`rp_correction`,`rp_groupresponsible`,`rp_cause`,`rp_ship`,`rp_level0`,`rp_level1`,`rp_level2`,`rp_level3`,`rp_approvedby`,`rp_date`,`timest`) values (2,73,'Damaged Part','sdf',0,'dsf','sdf','a','sdf','a','YES','Buyout','Frame','a','a','a','2017-01-27','2017-01-27 07:37:58'),(3,73,'Defective Part','sdf',0,'dsf','sdf','a','sdf','a','YES','Buyout','Frame','a','a','a','2017-01-27','2017-01-27 07:38:05'),(4,75,'Design Issue','SH EARMS',2,'','Not on Bom, but according to design she add before(Angelica)','Design to update the Bom','2','Design','NONE','NONE','NONE','','','Angelica','2016-09-09','2017-01-31 20:26:48'),(5,75,'Design Issue','DH EARMS',2,'','Not on Bom, but according to design she add before(Angelica)','Design to update the Bom','2','Design','NONE','NONE','NONE','','','Angelica','2016-09-09','2017-01-31 20:27:20'),(6,75,'Missing Part','10-32 X 3/8 BUTTON HEAD SCREW',16,'','need for keyboard drawer','Provide before shipment','16','Integration','NONE','NONE','NONE','','','','0000-00-00','2017-01-31 20:28:10'),(7,75,'Incorrect Assembly','C4026695  WRKS W/ KYBOARD  CUT OUT',1,'','Installed on  wrong location ','Make sure next time refer on drawing','1','WOOD','NONE','NONE','NONE','','','NAR','0000-00-00','2017-01-31 20:33:53'),(10,75,'Damaged Part','',0,'','','','','','NONE','NONE','NONE','','','','0000-00-00','2017-01-31 21:05:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Data for the table `project_services` */

insert  into `project_services`(`servicesid`,`projectid`,`servicesname`,`servicesnotes`,`q21`,`q22`,`q23`,`q24`,`q25`,`q26`,`q27`,`extra1`,`eq1`,`extra2`,`eq2`,`extra3`,`eq3`) values (57,73,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(58,74,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA',NULL,'NA',NULL,'NA',NULL,'NA'),(59,75,'Arthur Z.','','YES','YES','YES','YES','YES','NO','NO','','NA','','NA','','NA');

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

insert  into `users`(`uid`,`username`,`password`,`name`,`usertype`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','Admin','admin'),(2,'test','test','test','staff'),(3,'test2','ad0234829205b9033196ba818f7a872b','test2','staff');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
