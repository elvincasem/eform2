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
  PRIMARY KEY (`projectid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `project` */

insert  into `project`(`projectid`,`projectname`,`projectnumber`,`projecttype`,`formdate`,`originator`) values (18,'Haywan 2','398438','Counter Smart','2016-11-27','Name Here'),(21,'mememem','398438','Counter Smart','2016-11-27','Vincent '),(33,'mememem','398438','Counter Smart','2016-11-27','John Doe'),(41,'mememem','398438','Counter Smart','2016-11-27','Kent Schaffter'),(42,'Haywan Project','1133458','Honeywell','2016-12-30','Elvin Casem'),(43,'project sample','123456','Custom','2016-12-15','ME'),(48,'sdfsdf','123','0','0000-00-00',''),(50,'fasdfa','33','0','0000-00-00',''),(53,'New Project','12345','Counter Smart','2017-01-07','Elvin Casem'),(54,'nnnn','321','Defeciency','2017-01-07','elvin');

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `project_assembly` */

insert  into `project_assembly`(`assmblyid`,`projectid`,`faintegration`,`assemblynotes`,`q101`,`q102`,`q103`,`q104`,`q105`,`q106`,`q107`,`q108`,`q109`,`q110`,`q112`,`q113`,`positionnos`) values (3,18,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(4,19,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(5,20,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(11,32,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(12,33,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(13,34,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(14,35,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(15,36,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(16,37,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(17,38,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(18,39,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(19,40,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(20,41,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(21,42,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(22,43,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(23,44,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(24,45,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(25,46,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(26,47,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(27,48,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(28,44,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(29,45,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(30,46,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(31,47,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(32,48,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(33,49,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(34,50,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(35,51,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(36,52,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(37,53,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NONE'),(38,54,'NONE1','adfasdf1111','NA','NA','YES','YES','NO','YES','YES','NO','YES','YES','NA','NA','444');

/*Table structure for table `project_incompletes` */

DROP TABLE IF EXISTS `project_incompletes`;

CREATE TABLE `project_incompletes` (
  `pdetailsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectid` bigint(20) DEFAULT NULL,
  `partnumber` varchar(300) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`pdetailsid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `project_incompletes` */

insert  into `project_incompletes`(`pdetailsid`,`projectid`,`partnumber`,`description`,`notes`) values (18,18,'adsf','Require Design','dff'),(19,19,'345345','In Process',''),(21,20,'w4323','','');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `project_incompletes_q` */

insert  into `project_incompletes_q`(`pdetailsqid`,`projectid`,`authshipment`,`authsolution`,`authdate`,`hardwarebox`,`authpackaged`,`pmsee`,`pmsolution`,`pmdate`,`pmexception`,`pmexsolution`,`pmexdate`) values (5,18,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(6,19,'YES','NONE','0000-00-00','YES','YES','NO','NONE','0000-00-00','YES','NONE','0000-00-00'),(7,20,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(12,32,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(13,33,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(14,34,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(15,35,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(16,36,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(17,37,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(18,38,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(19,39,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(20,40,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(21,41,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(22,42,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(23,43,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(24,44,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(25,45,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(26,46,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(27,47,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(28,48,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(29,44,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(30,45,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(31,46,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(32,47,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(33,48,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(34,49,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(35,50,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(36,51,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(37,52,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(38,53,'NO','NONE','0000-00-00','NO','NO','NO','NONE','0000-00-00','NO','NONE','0000-00-00'),(39,54,'YES','NONE1','0000-00-00','YES','YES','YES','NONE1','0000-00-00','YES','NONE','0000-00-00');

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
  UNIQUE KEY `assmblyid` (`servicesid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `project_services` */

insert  into `project_services`(`servicesid`,`projectid`,`servicesname`,`servicesnotes`,`q21`,`q22`,`q23`,`q24`,`q25`,`q26`,`q27`) values (3,18,'sadasdas','   asdasdfgdgf','NA','NA','NA','NA','NA','NA','NO'),(4,19,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(5,20,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(6,21,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(10,32,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(11,33,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(12,34,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(13,35,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(14,36,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(15,37,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(16,38,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(17,39,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(18,40,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(19,41,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(20,42,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(21,43,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(22,44,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(23,45,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(24,46,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(25,47,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(26,48,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(27,44,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(28,45,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(29,46,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(30,47,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(31,48,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(32,49,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(33,50,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(34,51,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(35,52,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(36,53,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA'),(37,54,'NONE',NULL,'NA','NA','NA','NA','NA','NA','NA');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`uid`,`username`,`password`,`name`,`usertype`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','Admin','superadmin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
