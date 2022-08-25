/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.38-log : Database - sistema_sig
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sistema_sig` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sistema_sig`;

/*Table structure for table `motor` */

DROP TABLE IF EXISTS `motor`;

CREATE TABLE `motor` (
  `cod_motor` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `motor` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod_motor`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

/*Data for the table `motor` */

insert  into `motor`(`cod_motor`,`motor`) values (1,'1.0'),(2,'1.3'),(3,'1.5'),(4,'1.4'),(5,'1.6'),(6,'1.8'),(7,'1.9'),(8,'2.0'),(9,'2.1'),(10,'2.2'),(11,'2.3'),(14,'2.4'),(15,'2.8'),(16,'3.0'),(17,'4.1'),(18,'5.0'),(19,'1.2'),(20,'1.7'),(22,'2.5'),(51,'4.3'),(52,'3.9'),(53,'3.2'),(54,'4.0'),(55,'4.2'),(56,'2.6'),(57,'3.8'),(58,'3.5'),(59,'0.9'),(71,'2.9'),(74,'2.7'),(75,'3.1'),(76,'5.2'),(77,'0.8'),(78,'4.4'),(80,'4.9'),(82,'3.6'),(83,'1.1'),(88,'3.3'),(90,'4.5'),(93,'5.7'),(94,'4.7'),(95,'5.4'),(100,'3.7'),(101,'5.9'),(103,''),(104,''),(105,'6.7'),(106,'4.8'),(107,'6cc'),(108,'8cc'),(109,'V6'),(110,'V4'),(111,'V8'),(112,'5.3'),(113,'4cc'),(114,'6.1'),(115,'3.4'),(116,'6.2'),(117,'5.5');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
