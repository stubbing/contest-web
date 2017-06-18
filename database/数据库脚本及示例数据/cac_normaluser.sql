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
-- Table structure for table `normaluser`
--

DROP TABLE IF EXISTS `normaluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `normaluser` (
  `user_id` varchar(25) character set gbk NOT NULL,
  `team_no` int(5) default NULL,
  `password` varchar(15) character set gbk NOT NULL,
  `name` varchar(10) default NULL,
  `sex` int(1) default NULL,
  `major` varchar(10) character set gbk default NULL,
  `college` varchar(10) character set gbk default NULL,
  `university_no` char(5) character set gbk default NULL,
  `grade` char(2) character set gbk default NULL,
  `id` varchar(18) character set gbk default NULL,
  `sno` varchar(8) character set gbk default NULL,
  `phone` char(11) character set gbk default NULL,
  `email` varchar(25) character set gbk default NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `AK_Key_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `normaluser`
--

LOCK TABLES `normaluser` WRITE;
/*!40000 ALTER TABLE `normaluser` DISABLE KEYS */;
INSERT INTO `normaluser` VALUES ('test',3,'123456','郭浩明',1,'计算机科学与技术','计算机科学与技术','10001','3','440602199512311813','20140685','13798685617','fsguohm@126.com'),('test10',3,'test10','卞有',1,'计算机科学与技术','计算机科学与技术','10001','2','250239199201244018','20140694','13902386731','k5Se80@gmail.com'),('test11',3,'test11','陶全良',1,'计算机科学与技术','计算机科学与技术','10001','3','913926199412091314','20140695','13902389489','14l3m6@sina.com.cn'),('test12',4,'test12','任盛',1,'计算机科学与技术','计算机科学与技术','10001','1','671629199411085660','20140696','13902388975','c4o8a5@126.com'),('test13',4,'test13','郦宁信',1,'计算机科学与技术','计算机科学与技术','10001','2','900316199310225354','20140697','13902383881','F63Bu0@sina.com.cn'),('test14',4,'test14','历伟峰',1,'计算机科学与技术','计算机科学与技术','10001','3','199654199505091832','20140698','13902383081','4rcR7g@126.com'),('test15',5,'test15','时有',1,'计算机科学与技术','计算机科学与技术','10001','2','517565199210290215','20140699','13902389741','y2KN84@yahoo.com.cn'),('test16',5,'test16','华先良',1,'计算机科学与技术','计算机科学与技术','10001','3','291231199306188281','20140700','13902384712','755CG2@yahoo.com.cn'),('test17',5,'test17','从广承',1,'计算机科学与技术','计算机科学与技术','10001','4','129050199411167261','20140701','13902388515','E2f86r@yahoo.com.cn'),('test18',6,'test18','谭俊',1,'计算机科学与技术','计算机科学与技术','10001','1','624273199307123199','20140702','13902387542','Tob23h@qq.com'),('test19',6,'test19','董浩林',1,'计算机科学与技术','计算机科学与技术','10001','2','338299199207109218','20140703','13902386969','H3661M@yahoo.com'),('test2',6,'test2','元朗波',1,'计算机科学与技术','计算机科学与技术','10001','2','406630199410067177','20140686','13902385696','65mx4n@gmail.com'),('test20',7,'test20','晁彬泽',1,'计算机科学与技术','计算机科学与技术','10001','3','978673199312140327','20140704','13902385919','6ReIsh@qq.com'),('test21',7,'test21','朱以',1,'计算机科学与技术','计算机科学与技术','10001','4','808243199209130299','20140705','13902385245','C16AyY@163.com'),('test22',7,'test22','金蕊',2,'计算机科学与技术','计算机科学与技术','10001','1','733203199507272370','20140706','13902384973','3Q0H60@163.com'),('test23',8,'test23','索冷',2,'计算机科学与技术','计算机科学与技术','10001','1','868703199202246747','20140707','13902386717','j5J306@sina.com.cn'),('test24',8,'test24','赵茗',2,'计算机科学与技术','计算机科学与技术','10001','1','564245199509285783','20140708','13902389269','f3o8PN@sina.com.cn'),('test25',8,'test25','甘书',2,'计算机科学与技术','计算机科学与技术','10001','2','668944199201216405','20140709','13902382642','3vXL8p@sina.com.cn'),('test26',NULL,'test26','崔怡柔',2,'计算机科学与技术','计算机科学与技术','10001','2','765564199207284386','20140710','13902389659','3r67Y3@sina.com.cn'),('test27',NULL,'test27','孔宽苑',2,'计算机科学与技术','计算机科学与技术','10001','3','540163199209196690','20140711','13902384453','GE46ja@sina.com.cn'),('test28',NULL,'test28','霍桂萍',2,'计算机科学与技术','计算机科学与技术','10001','1','805815199308109425','20140712','13902384956','T03c7H@sina.com.cn'),('test29',NULL,'test29','姬幼访',2,'计算机科学与技术','计算机科学与技术','10001','2','274065199306193648','20140713','13902380183','03S8gN@yahoo.com.cn'),('test3',NULL,'test3','宋冠',1,'计算机科学与技术','计算机科学与技术','10001','1','846609199304010381','20140687','13902386277','6vwI5f@163.com'),('test30',NULL,'test30','闵琳芝',2,'计算机科学与技术','计算机科学与技术','10001','3','834946199506044681','20140714','13902385429','53K87S@163.com'),('test31',NULL,'test31','郝璧',2,'计算机科学与技术','计算机科学与技术','10001','1','565700199309113962','20140715','13902385042','0j51CR@126.com'),('test32',NULL,'test32','别蝶',2,'计算机科学与技术','计算机科学与技术','10001','2','418030199508090361','20140716','13902383107','70482l@gmail.com'),('test33',NULL,'test33','鲁蓓',2,'计算机科学与技术','计算机科学与技术','10001','2','337719199401029958','20140717','13902381509','k2EG43@163.com'),('test34',NULL,'test34','谭涵',2,'计算机科学与技术','计算机科学与技术','10001','3','834686199412246711','20140718','13902385282','41XJm7@sina.com.cn'),('test35',NULL,'test35','梁毓玲',2,'计算机科学与技术','计算机科学与技术','10001','1','145473199509228694','20140719','13902385064','i44Tb5@sina.com.cn'),('test36',NULL,'test36','廉艳',2,'计算机科学与技术','计算机科学与技术','10001','2','314267199301064906','20140720','13902388479','MJl0pk@gmail.com'),('test37',NULL,'test37','寿萱',2,'计算机科学与技术','计算机科学与技术','10001','3','565369199310021325','20140721','13902384143','5O4UK0@sina.com.cn'),('test38',NULL,'test38','盛玉',2,'计算机科学与技术','计算机科学与技术','10001','1','385463199203165095','20140722','13902381489','sxUTw2@sina.com.cn'),('test39',NULL,'test39','须唯冰',2,'计算机科学与技术','计算机科学与技术','10001','2','798905199309204363','20140723','13902382802','830KJl@sina.com.cn'),('test4',NULL,'test4','利谦昌',1,'计算机科学与技术','计算机科学与技术','10001','2','651095199302258530','20140688','13902385950','v07WpL@126.com'),('test40',NULL,'test40','山问若',2,'计算机科学与技术','计算机科学与技术','10001','3','680425199404181149','20140724','13902387978','E7Q2b5@sina.com.cn'),('test41',NULL,'test41','史静琼',2,'计算机科学与技术','计算机科学与技术','10001','1','708711199308222259','20140725','13902385842','Q80IMT@126.com'),('test5',NULL,'test5','桂保',1,'计算机科学与技术','计算机科学与技术','10001','4','284471199412284063','20140689','13902389604','EksQ87@163.com'),('test6',NULL,'test6','童博',1,'计算机科学与技术','计算机科学与技术','10001','2','198980199312287839','20140690','13902388358','u1658b@qq.com'),('test7',NULL,'test7','齐腾波',1,'计算机科学与技术','计算机科学与技术','10001','1','546018199505225605','20140691','13902389721','76r3ql@sina.com.cn'),('test8',NULL,'test8','郑永哲',1,'计算机科学与技术','计算机科学与技术','10001','3','132244199211014226','20140692','13902385035','016858@sina.com.cn'),('test9',NULL,'test9','符峰',1,'计算机科学与技术','计算机科学与技术','10001','4','720048199308108614','20140693','13902385718','sIhn83@qq.com');
/*!40000 ALTER TABLE `normaluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-06 17:45:29
