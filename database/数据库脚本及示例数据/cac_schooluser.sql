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
-- Table structure for table `schooluser`
--

DROP TABLE IF EXISTS `schooluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schooluser` (
  `schooluser_id` char(5) character set gbk NOT NULL,
  `password` varchar(15) character set gbk NOT NULL,
  `name` varchar(15) character set gbk NOT NULL,
  `phone` char(11) character set gbk NOT NULL,
  `email` varchar(25) character set gbk default NULL,
  PRIMARY KEY  (`schooluser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schooluser`
--

LOCK TABLES `schooluser` WRITE;
/*!40000 ALTER TABLE `schooluser` DISABLE KEYS */;
INSERT INTO `schooluser` VALUES ('10001','123456','蒙彬乐','13902383517','Cb80q4@sina.com.cn'),('10002','10002','戴冠策','13902383520','82pQ1t@126.com'),('10003','10003','刘林强','13902384585','D2Mcsm@qq.com'),('10004','10004','滑朋','13902383070','pr6dws@gmail.com'),('10005','10005','戚海','13902385057','4cq87i@yahoo.com.cn'),('10006','10006','赖承乐','13902384931','x1L3It@126.com'),('10007','10007','周超','13902386806','2647R3@126.com'),('10008','10008','戎亨强','13902380407','bNvm12@sina.com.cn'),('10009','10009','龚壮朋','13902382162','72e73G@126.com'),('10010','10010','金海','13902381528','MHMI64@163.com'),('10011','10011','支学','13902387865','8b54mO@163.com'),('10012','10012','赵超','13902381329','r5vDqj@163.com'),('10013','10013','国明成','13902384019','QGW435@yahoo.com.cn'),('10014','10014','崔鸣朋','13902382029','dd2sm7@sina.com.cn'),('10015','10015','孔岩海','13902382808','W584rM@qq.com'),('10016','10016','霍致学','13902386216','ubgH6H@qq.com'),('10017','10017','盍豪超','13902389756','8X1BLe@sina.com.cn'),('10018','10018','宁强','13902380981','60Ir7q@sina.com.cn'),('10019','10019','郝和','13902386970','fX5h3j@163.com'),('10020','10020','别辰','13902383567','jooJFf@sina.com.cn'),('10021','10021','田志学','13902384055','2u1P64@gmail.com'),('10022','10022','竺栋超','13902380072','2glAtS@sina.com.cn'),('10023','10023','秋林强','13902389268','WFc2gL@sina.com.cn'),('10024','10024','滕和','13902389026','AF6h27@sina.com.cn'),('10025','10025','尚辰','13902386341','EF3733@sina.com.cn'),('10026','10026','骆学','13902387346','7Y5Xn2@sina.com.cn'),('10027','10027','后俊超','13902386544','2dl35x@163.com'),('10028','10028','郗亨强','13902382814','2u422A@126.com'),('10029','10029','雷子和','13902384760','64307J@yahoo.com'),('10030','10030','扈辰','13902387128','ST1o01@126.com'),('10031','10031','钟祥','13902386019','uOsBQ7@sina.com.cn'),('10032','10032','关超','13902382072','d0tOg3@yahoo.com'),('10033','10033','侯雄强','13902384682','H640V7@163.com'),('20001','20001','越志','13902381611','C0scY8@sina.com.cn'),('20002','20002','荀平心','13902386397','8a6j4P@sina.com.cn'),('20003','20003','梅致祥','13902380625','X6T5UB@qq.com'),('20004','20004','鞠超','13902388756','8j0536@yahoo.com'),('20005','20005','别振梁','13902385289','8QG058@sina.com.cn'),('20006','20006','田兴仁','13902389071','PEN44a@sina.com.cn'),('20007','20007','竺松','13902385882','vtB5m8@qq.com'),('20008','20008','居友清','13902386247','f7clv1@yahoo.com'),('20009','20009','滕光','13902382125','4b6V5Y@163.com'),('20010','20010','浦若梁','13902389172','0j886I@yahoo.com.cn'),('20011','20011','骆安波','13902384902','31ylsI@qq.com'),('20012','20012','益怡','13902389579','7GfV8Q@163.com'),('20013','20013','宁海','13902382024','3h68n5@qq.com'),('20014','20014','包威香','13902380173','MX6B51@126.com'),('20015','20015','庄莎宝','13902384567','48nL5x@sina.com.cn'),('20016','20016','田宝芷','13902387588','aM0mK1@qq.com'),('20017','20017','竺觅仪','13902386309','04R2f1@sina.com.cn'),('20018','20018','仲怀','13902385610','0nokaC@sina.com.cn'),('20019','20019','滕芳','13902380689','3s81yo@qq.com'),('20020','20020','尚罡','13902381600','lA2MfX@163.com'),('20021','20021','高觅荷','13902388126','mxB31r@qq.com'),('20022','20022','后枫君','13902381503','bw4877@yahoo.com'),('20023','20023','郗珊静','13902389063','fR1pg8@yahoo.com'),('20024','20024','贺妮兰','13902382033','6308OE@qq.com'),('20025','20025','曲香山','13902385176','BM02D1@gmail.com'),('20026','20026','苏勤','13902389308','j70K41@yahoo.com'),('20027','20027','能洋','13902386213','VGfn43@yahoo.com'),('20028','20028','熊柳','13902381495','38U5q3@qq.com'),('20029','20029','夔霞希','13902389219','Kp32sL@163.com');
/*!40000 ALTER TABLE `schooluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-06 17:45:23
