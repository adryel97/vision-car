/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.4.10-MariaDB : Database - db_visioncar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
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

/*Table structure for table `tbl_users` */

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo inteiro do usuario',
  `name_users` varchar(100) DEFAULT NULL COMMENT 'Nome do usuario',
  `email_users` varchar(100) DEFAULT NULL COMMENT 'Email do usuario',
  `password_users` varchar(20) DEFAULT NULL COMMENT 'Senha do usuario',
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

insert  into `tbl_users`(`id_users`,`name_users`,`email_users`,`password_users`,`birth_users`,`phone_users`,`type_users`,`status_users`,`date_create_users`,`code_users`,`id_shops`,`cod_shops`) values (1,'Adryel Giovaniny','adryel@gmail.com','123456','1997-08-06','(47) 99212-3497','1','active','2022-07-29 15:00:16','Dz3Xfk4LK6l7wU4Zv24jZRXoheh8e8',1,'TB7E4MxhH5JujnFi97t5EpD5KIzvqjZUPtrVdFKI');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
