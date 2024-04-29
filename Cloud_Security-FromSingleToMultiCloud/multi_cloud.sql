/*
SQLyog - Free MySQL GUI v5.19
Host - 5.1.54-community : Database - multi_cloud
*********************************************************************
Server version : 5.1.54-community
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `multi_cloud`;

USE `multi_cloud`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `auditlogin` */

DROP TABLE IF EXISTS `auditlogin`;

CREATE TABLE `auditlogin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `auditid` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`auditid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `auditlogin` */

insert into `auditlogin` (`id`,`name`,`password`,`auditid`,`address`,`phone`,`email`) values (1,'Nitin','aduit','aduit','Bangalore','9632917445','nitin.gudle@gmail.com');
insert into `auditlogin` (`id`,`name`,`password`,`auditid`,`address`,`phone`,`email`) values (2,'nitin','nitin','nitin','Pune','4646146','nitin@gmail.com');
insert into `auditlogin` (`id`,`name`,`password`,`auditid`,`address`,`phone`,`email`) values (3,'auditor','auditor','auditor','Bangalore','9887878787','usha@gmail.com');

/*Table structure for table `digkey` */

DROP TABLE IF EXISTS `digkey`;

CREATE TABLE `digkey` (
  `s_no` int(60) NOT NULL AUTO_INCREMENT,
  `pubkey` blob NOT NULL,
  `pvtkey` blob NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `digkey` */

insert into `digkey` (`s_no`,`pubkey`,`pvtkey`) values (1,'0Åü0\r	*ÜHÜ˜\r\0Åç\00ÅâÅÅ\0©ì`daãÁ&ç\"ùª®i„»·˜ÅÜYbj∑è}˝3>.òçöL≤¿\"W”æó<ÊqïRYnª€∂`\0ÚL√`c◊˛mXx4Tù◊àÎM«∂fôÒPE≤’¬∫#KÑ˜V≤ﬁ˛Øíé4∂Ï•U/∞V\"U[¢ÜL6á\0','0Çv\00\r	*ÜHÜ˜\r\0Ç`0Ç\\\0ÅÅ\0©ì`daãÁ&ç\"ùª®i„»·˜ÅÜYbj∑è}˝3>.òçöL≤¿\"W”æó<ÊqïRYnª€∂`\0ÚL√`c◊˛mXx4Tù◊àÎM«∂fôÒPE≤’¬∫#KÑ˜V≤ﬁ˛Øíé4∂Ï•U/∞V\"U[¢ÜL6á\0ÅÄ%0pÃM](ès›N™ËÒäBÓ|Wó&◊®R(S\n~…æ+&Œ98ØõXgAK~¬ñÆ>îêµ•#Áé=«“&˘Y ö—Ülªﬂ«’—WÇ≈R£¶¸6u`«‹ı¿Æ∞çCÇ‘NùyH◊.ÒÏ¢Mf€÷è¥!˙IGùÜR “üè¸Tó†ôA\0Û\n{Ÿ\r$MéŸ.É¨•}ﬂcJE$t˛,_ŒD1∆Kü˛{£æ/(ñ-√˙øÅ°ë†≥≤•o¸h ¢˚\ZA\0≤ûí7ä˝:mgPG>•ªö/∫I!Rñ\"~=jõÙÙ‡WäL„\\ühøÏÎÔ«ìı(”˙M\rÊ?S2v)%@HëÛ@a4\'†>°$WHœ{ç”\Zª »A=ŒuÎB&G‰ysïñÖ9õ~˛à÷ˇYâÊç¸9Fü|¥KÄ!™‚À?«∂⁄Fe≈@	í˛ée<Œ†?±júµÀ©ÈTÏ4&iV¶˛ôQ}πÒ¡#1´À°9[üÜÌ“¯Èl™∞uµ≤>wUPÿŸëA\0ñœj)ëú8î¨ßq≤÷⁄ò©iä§	ÜˇáÆ¯9©óQ™ÇT†^BËp.Ü4∂»ÜÏ6ÉëkΩŒ„ê§ë-');

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'Admin','admin','admin','T R Nagar','9916876540','admin@gmail.com');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_url` varchar(200) NOT NULL,
  `c_username` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `c_status` varchar(50) DEFAULT NULL,
  `c_remarks` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (1,'ftp://drivehq.com/cloud1','BHOOMIKASURESH33','*India123','Active','First cloud space');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (2,'ftp://drivehq.com/cloud2','BHOOMIKASURESH33','*India123','Active','Second Cloud Space');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (3,'ftp://drivehq.com/cloud3','BHOOMIKASURESH33','*India123','Active','Third Cloud Space');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (4,'ftp://drivehq.com/cloud4','BHOOMIKASURESH33','*India123','Active','Fourth Cloud Space');

/*Table structure for table `m_download` */

DROP TABLE IF EXISTS `m_download`;

CREATE TABLE `m_download` (
  `d_id` int(10) NOT NULL AUTO_INCREMENT,
  `d_filename` varchar(100) NOT NULL,
  `d_filetype` varchar(100) NOT NULL,
  `d_date` varchar(100) NOT NULL,
  `d_time` varchar(100) NOT NULL,
  `m_id` int(100) NOT NULL,
  `d_messagedigest` varchar(100) NOT NULL,
  `u_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `integrity_status` varchar(100) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `m_download` */

insert into `m_download` (`d_id`,`d_filename`,`d_filetype`,`d_date`,`d_time`,`m_id`,`d_messagedigest`,`u_id`,`c_id`,`integrity_status`) values (1,'hi.txt','.txt','19-06-2022','15:24:37',1,'e70dcf32bbd87e1a572bbeb2b7108bef',1,1,'Passed');
insert into `m_download` (`d_id`,`d_filename`,`d_filetype`,`d_date`,`d_time`,`m_id`,`d_messagedigest`,`u_id`,`c_id`,`integrity_status`) values (2,'hhhhh.txt','.txt','19-06-2022','15:28:29',1,'e70dcf32bbd87e1a572bbeb2b7108bef',2,1,'Passed');

/*Table structure for table `m_fault_tolerance` */

DROP TABLE IF EXISTS `m_fault_tolerance`;

CREATE TABLE `m_fault_tolerance` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_probability` decimal(10,1) NOT NULL,
  `f_formula` varchar(100) NOT NULL,
  `f_value` decimal(10,1) NOT NULL,
  `f_no_of_clouds` int(10) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_fault_tolerance` */

insert into `m_fault_tolerance` (`f_id`,`f_probability`,`f_formula`,`f_value`,`f_no_of_clouds`) values (1,'0.6','3*0.6+1','2.8',3);

/*Table structure for table `m_transactions` */

DROP TABLE IF EXISTS `m_transactions`;

CREATE TABLE `m_transactions` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `m_transactions` */

insert into `m_transactions` (`t_id`,`u_id`,`c_id`) values (1,1,1);
insert into `m_transactions` (`t_id`,`u_id`,`c_id`) values (2,1,2);
insert into `m_transactions` (`t_id`,`u_id`,`c_id`) values (3,1,3);
insert into `m_transactions` (`t_id`,`u_id`,`c_id`) values (4,2,1);
insert into `m_transactions` (`t_id`,`u_id`,`c_id`) values (5,2,2);
insert into `m_transactions` (`t_id`,`u_id`,`c_id`) values (6,2,3);

/*Table structure for table `m_upload` */

DROP TABLE IF EXISTS `m_upload`;

CREATE TABLE `m_upload` (
  `u_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_filename` varchar(100) NOT NULL,
  `u_filetype` varchar(100) NOT NULL,
  `u_date` varchar(100) NOT NULL,
  `u_time` varchar(100) NOT NULL,
  `m_id` int(10) NOT NULL,
  `m_messagedigest` varchar(70) NOT NULL,
  `u_no_clouds` int(10) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `m_upload` */

insert into `m_upload` (`u_id`,`u_filename`,`u_filetype`,`u_date`,`u_time`,`m_id`,`m_messagedigest`,`u_no_clouds`) values (1,'hi.txt','.txt','19-06-2022','15:22:35',1,'e70dcf32bbd87e1a572bbeb2b7108bef',3);
insert into `m_upload` (`u_id`,`u_filename`,`u_filetype`,`u_date`,`u_time`,`m_id`,`m_messagedigest`,`u_no_clouds`) values (2,'hhhhh.txt','.txt','19-06-2022','15:28:09',1,'e70dcf32bbd87e1a572bbeb2b7108bef',3);

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `m_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_user` varchar(50) NOT NULL,
  `m_pass` varchar(50) DEFAULT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `m_city` varchar(50) DEFAULT NULL,
  `m_mob` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`m_id`,`m_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`m_id`,`m_user`,`m_pass`,`m_name`,`m_city`,`m_mob`) values (1,'dhs','dhs','dhs','blr',9876543210);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
