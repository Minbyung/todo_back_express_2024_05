/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - todo_2024_05
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`todo_2024_05` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `todo_2024_05`;

/*Table structure for table `todo` */

DROP TABLE IF EXISTS `todo`;

CREATE TABLE `todo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `modifyDate` datetime NOT NULL,
  `user_code` char(50) NOT NULL,
  `preformDate` datetime NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `is_completed` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `no` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_code` (`user_code`,`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `todo` */

insert  into `todo`(`id`,`regDate`,`modifyDate`,`user_code`,`preformDate`,`content`,`is_completed`,`no`) values 
(1,'2024-05-29 20:13:09','2024-05-29 20:13:09','localhost','2024-05-29 20:13:09','공부',0,1),
(2,'2024-05-29 20:13:09','2024-05-29 20:13:09','localhost','2024-05-29 20:13:09','코딩',0,2),
(3,'2024-05-29 20:13:09','2024-05-29 20:13:09','localhost','2024-05-29 20:13:09','독서',0,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
