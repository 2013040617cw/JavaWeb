/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.28-log : Database - db_news2019
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_news2019` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_news2019`;

/*Table structure for table `t_manager` */

DROP TABLE IF EXISTS `t_manager`;

CREATE TABLE `t_manager` (
  `mid` varchar(16) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `mpassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_manager` */

insert  into `t_manager`(`mid`,`mname`,`mpassword`) values 
('cuiw','崔巍','123456'),
('lihk','李慧糠','456789');

/*Table structure for table `t_news` */

DROP TABLE IF EXISTS `t_news`;

CREATE TABLE `t_news` (
  `title` varchar(60) DEFAULT NULL,
  `author` varchar(16) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `redu` int(20) DEFAULT NULL,
  `操作` varchar(30) DEFAULT NULL,
  `id` int(10) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_news` */

insert  into `t_news`(`title`,`author`,`date`,`redu`,`操作`,`id`,`description`) values 
('长治行政区划调整','潞州晚报','2022-05-05',788,NULL,1,'长治好风光'),
('CBA夺冠赔率','新浪彩票','2020-03-19',3245,NULL,3,'赔的有点多'),
('二龙山国家森林公园','百度文科','2022-05-25',2222,NULL,4,'好啊');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `uid` varchar(16) CHARACTER SET latin1 NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `upassword` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `usex` varchar(20) DEFAULT NULL,
  `uemail` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `uregdate` date DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`uid`,`uname`,`upassword`,`usex`,`uemail`,`uregdate`) values 
('cuiw','崔巍','888888','男','cuiw@163.com','2022-05-16'),
('guosq','郭世琪','789555','女','guosq@163.com','2022-05-21'),
('liuqs','刘千山','456333','男','999@163.com','2022-05-21'),
('wusc','武守成','123695','男','88888@163.com','2022-05-22'),
('zhaowc','赵文超','789666','女','zhaowc@163.com','2022-05-02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
