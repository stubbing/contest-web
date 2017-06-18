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
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `works_id` int(8) NOT NULL auto_increment,
  `schooluser_id` char(5) character set gbk NOT NULL,
  `description` varchar(200) character set gbk NOT NULL,
  `types` varchar(11) character set gbk NOT NULL,
  `admin_id` char(5) character set gbk NOT NULL,
  `works_name` varchar(10) character set gbk NOT NULL,
  `path` varchar(45) default NULL,
  PRIMARY KEY  (`works_id`),
  UNIQUE KEY `works_name_UNIQUE` (`works_name`),
  KEY `FK_Reference_3` (`schooluser_id`),
  KEY `FK_Reference_4` (`admin_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`schooluser_id`) REFERENCES `schooluser` (`schooluser_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`admin_id`) REFERENCES `adminuser` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (3,'10001','该网站模拟著名p2p网站淘宝，实现电子商务操作','3','31001','模拟淘宝网站',NULL),(4,'10001','利用人工智能程序实现简单围棋AI','3','31001','人工智能围棋系统',NULL),(5,'10001','足球数据分析2','3','31001','足球数据分析',NULL),(6,'10001','云端文件上传系统','1','31001','云端文件上传',NULL),(7,'10001','基于Android的小程序','4','31001','吃了吗',NULL),(8,'10001','班车管理','4','31001','班车管理系统',NULL);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-06 17:45:31
