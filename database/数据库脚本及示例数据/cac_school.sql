-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cac
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `university_no` char(6) character set gbk NOT NULL,
  `university_name` varchar(14) character set gbk NOT NULL,
  `university_type` char(1) character set gbk NOT NULL,
  PRIMARY KEY  (`university_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES ('10001','复旦大学','0'),('10002','同济大学','0'),('10003','上海交通大学','0'),('10004','华东理工大学','0'),('10005','东华大学','0'),('10006','华东师范大学','0'),('10007','上海外国语大学','0'),('10008','上海财经大学','0'),('10009','上海大学','0'),('10010','上海理工大学','0'),('10011','上海海事大学','0'),('10012','上海工程技术大学','0'),('10013','上海海洋大学','0'),('10014','上海中医药大学','0'),('10015','上海师范大学','0'),('10016','华东政法大学','0'),('10017','上海建桥学院','0'),('10018','上海政法学院','0'),('10019','上海应用技术大学','0'),('10020','上海第二工业大学','0'),('10021','上海电机学院','0'),('10022','上海电力学院','0'),('10023','上海对外经贸大学','0'),('10024','上海立信会计金融学院','0'),('10025','上海公安学院','0'),('10026','上海体育学院','0'),('10027','上海音乐学院','0'),('10028','上海戏剧学院','0'),('10029','上海商学院','0'),('10030','上海杉达学院','0'),('10031','上海海关学院','0'),('10032','上海视觉艺术学院','0'),('10033','上海健康医学院','0'),('20001','上海医疗器械高等学校','1'),('20002','上海出版印刷高等学校','1'),('20003','上海医药高等学校','1'),('20004','上海旅游高等学校','1'),('20005','上海电影艺术职业学院','1'),('20006','上海工商职业技术学院','1'),('20007','上海东海职业技术学院','1'),('20008','上海电子信息职业技术学院','1'),('20009','上海工艺美术职业学院','1'),('20010','上海立达职业技术学院','1'),('20011','上海济光职业技术学院','1'),('20012','上海交通职业技术学院','1'),('20013','上海工商外国语职业学院','1'),('20014','上海海事职业技术学院','1'),('20015','上海科学技术职业学院','1'),('20016','上海城建职业学院','1'),('20017','上海震旦职业学院','1'),('20018','上海中华职业技术学院','1'),('20019','上海行健职业学院','1'),('20020','上海工会管理职业学院','1'),('20021','上海托普信息技术职业学院','1'),('20022','上海邦德职业技术学院','1'),('20023','上海农林职业技术学院','1'),('20024','上海中侨职业技术学院','1'),('20025','上海思博职业技术学院','1'),('20026','上海欧华职业技术学院','1'),('20027','上海体育职业学院','1'),('20028','上海民远职业技术学院','1'),('20029','上海民航职业技术学院','1');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-06 17:45:19
