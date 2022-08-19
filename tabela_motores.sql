/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.4.10-MariaDB : Database - db_visioncar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_visioncar` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_visioncar`;

/*Table structure for table `tbl_shops` */

DROP TABLE IF EXISTS `tbl_shops`;

CREATE TABLE `tbl_shops` (
  `id_shops` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Indetificacao da loja',
  `name_shops` varchar(150) DEFAULT NULL COMMENT 'Nome da Loja',
  `code_shops` varchar(40) DEFAULT NULL COMMENT 'Codigo string da loja',
  `city_shops` varchar(100) DEFAULT NULL COMMENT 'Cidade localizada',
  `state_shops` varchar(50) DEFAULT NULL COMMENT 'Estado localizada',
  `status_shops` enum('active','disabled') DEFAULT NULL COMMENT 'Status',
  `poster_shops` enum('no','yes') DEFAULT NULL COMMENT 'Postar no site',
  `address_shops` varchar(160) DEFAULT NULL COMMENT 'Endereco localizada',
  `create_shops` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Data de criacao',
  PRIMARY KEY (`id_shops`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_shops` */

insert  into `tbl_shops`(`id_shops`,`name_shops`,`code_shops`,`city_shops`,`state_shops`,`status_shops`,`poster_shops`,`address_shops`,`create_shops`) values (1,'Loja 1','TB7E4MxhH5JujnFi97t5EpD5KIzvqjZUPtrVdFKI','Brusque','SC','active','yes','R. Elvira da Silva, Nº140, Bairro Limeira','2022-07-29 15:39:20');

/*Table structure for table `tbl_stock` */

DROP TABLE IF EXISTS `tbl_stock`;

CREATE TABLE `tbl_stock` (
  `id_vehicle` int(11) NOT NULL AUTO_INCREMENT,
  `brand_vehicle` varchar(100) NOT NULL,
  `model_vehicle` varchar(100) NOT NULL,
  `version_vehicle` varchar(100) NOT NULL,
  `type_vehicle` varchar(100) NOT NULL,
  `board_vehicle` varchar(10) DEFAULT NULL,
  `price_vehicle` decimal(11,2) NOT NULL,
  `year_vehicle` varchar(4) NOT NULL COMMENT 'Ano do modelo',
  `year_version_vehicle` varchar(4) DEFAULT NULL COMMENT 'Ano da versão',
  `price_fipe_vehicle` decimal(11,2) DEFAULT NULL,
  `year_fipe_vehicle` year(4) DEFAULT NULL,
  `model_fipe_vehicle` varchar(100) DEFAULT NULL,
  `code_fipe_vehicle` int(11) DEFAULT NULL,
  `cod_shop_vehicle` int(11) DEFAULT NULL,
  `cod_name_created` varchar(100) DEFAULT NULL,
  `cod_user_created` int(11) DEFAULT NULL,
  `status_vehicle` enum('active','disabled','sold') DEFAULT NULL,
  `date_create_vehicle` timestamp NULL DEFAULT current_timestamp(),
  `slug` varchar(200) DEFAULT NULL,
  `engine_vehicle` varchar(4) DEFAULT NULL,
  `category_vehicle` enum('hatch','sedan','crossover','suv','station wagons','picape','subcompacto','furgao','conversivel','esportivo','coupe') DEFAULT NULL,
  `city_vehicle` varchar(120) DEFAULT NULL,
  `state_vehicle` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_vehicle`),
  FULLTEXT KEY `brand_vehicle` (`model_fipe_vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_stock` */

insert  into `tbl_stock`(`id_vehicle`,`brand_vehicle`,`model_vehicle`,`version_vehicle`,`type_vehicle`,`board_vehicle`,`price_vehicle`,`year_vehicle`,`year_version_vehicle`,`price_fipe_vehicle`,`year_fipe_vehicle`,`model_fipe_vehicle`,`code_fipe_vehicle`,`cod_shop_vehicle`,`cod_name_created`,`cod_user_created`,`status_vehicle`,`date_create_vehicle`,`slug`,`engine_vehicle`,`category_vehicle`,`city_vehicle`,`state_vehicle`) values (1,'Ford','Fiesta','SE Style 1.6 16V','carro','MKT-1634','63104.00','2019','2020','60272.00',2019,'Fiesta SE Style 1.6 16V Flex Mec. 5p',3430,1,'Adryel Giovaniny',1,'active','2022-08-03 17:06:36','ford-fiesta-se-style-1-6-16v-flex-mec-5p-2019-brusque-sc-hatch','1.6','hatch','Brusque','SC'),(2,'Chevrolet','Celta','Life 1.0','carro','MBY-9610','15318.00','2006','2008','14572.00',2006,'Celta Life 1.0 MPFI VHC 8V 3p',4264,1,'Adryel Giovaniny',1,'sold','2022-08-03 17:06:36','chevrolet-celta-life-1-0-mpfi-vhc-8v-3p-2009-brusque-sc-hatch','1.0','hatch','Brusque','SC'),(3,'BMW','320i','M Sport 2.0T 16v','carro','MEF-4629','320000.00','2022','2022','257849.00',2022,'320i M Sport 2.0T 16v A/T',9165,1,'Adryel Giovaniny',1,'disabled','2022-08-04 14:24:24','bmw-320i-m-sport-2-0t-16v-at-2022-brusque-sc-sedan','2.0','esportivo','Brusque','SC'),(6,'Ford','Fiesta','SI Style 1.0','carro','MKT-1634','63104.00','2019','2020','60272.00',2019,'Fiesta SI Style 1.0 Flex Mec. 5p',3430,1,'Adryel Giovaniny',1,'active','2022-08-03 17:06:36','ford-fiesta-si-style-1-0-flex-mec-5p-2019-brusque-sc-hatch','1.0','hatch','Brusque','SC');

/*Table structure for table `tbl_users` */

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo inteiro do usuario',
  `name_users` varchar(100) DEFAULT NULL COMMENT 'Nome do usuario',
  `email_users` varchar(100) DEFAULT NULL COMMENT 'Email do usuario',
  `password_users` varchar(100) DEFAULT NULL COMMENT 'Senha do usuario',
  `birth_users` date DEFAULT NULL COMMENT 'Data de aniversario',
  `phone_users` text DEFAULT NULL COMMENT 'Telefone do usuario json',
  `type_users` enum('1','2','3','4','5','6') DEFAULT NULL COMMENT 'Categoria do usuario',
  `status_users` enum('active','disabled') DEFAULT NULL COMMENT 'Ativa e dasativa o usuario no sistema',
  `date_create_users` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'A data em que foi criado',
  `code_users` varchar(30) DEFAULT NULL COMMENT 'Codigio string do usuario',
  `id_shops` int(11) NOT NULL COMMENT 'Identifica a loja',
  `cod_shops` varchar(40) NOT NULL COMMENT 'Codigo da loja',
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_users` */

insert  into `tbl_users`(`id_users`,`name_users`,`email_users`,`password_users`,`birth_users`,`phone_users`,`type_users`,`status_users`,`date_create_users`,`code_users`,`id_shops`,`cod_shops`) values (1,'Adryel Giovaniny','adryel@gmail.com','e10adc3949ba59abbe56e057f20f883e','1997-08-06','(47) 99212-3497','1','active','2022-07-29 15:00:16','Dz3Xfk4LK6l7wU4Zv24jZRXoheh8e8',1,'TB7E4MxhH5JujnFi97t5EpD5KIzvqjZUPtrVdFKI');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
