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
-- Temporary view structure for view `view2`
--

DROP TABLE IF EXISTS `view2`;
/*!50001 DROP VIEW IF EXISTS `view2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view2` AS SELECT 
 1 AS `team_no`,
 1 AS `id`,
 1 AS `rowno`,
 1 AS `university_no`,
 1 AS `team_name`,
 1 AS `teacher`,
 1 AS `teacher_phone`,
 1 AS `works_name`,
 1 AS `types`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `teaminfo`
--

DROP TABLE IF EXISTS `teaminfo`;
/*!50001 DROP VIEW IF EXISTS `teaminfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `teaminfo` AS SELECT 
 1 AS `team_no`,
 1 AS `id1`,
 1 AS `id2`,
 1 AS `id3`,
 1 AS `school`,
 1 AS `team_name`,
 1 AS `teacher`,
 1 AS `teacher_phone`,
 1 AS `works_name`,
 1 AS `types`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view1`
--

DROP TABLE IF EXISTS `view1`;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view1` AS SELECT 
 1 AS `id`,
 1 AS `team_no`,
 1 AS `university_no`,
 1 AS `team_name`,
 1 AS `teacher`,
 1 AS `teacher_phone`,
 1 AS `works_name`,
 1 AS `types`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view2`
--

/*!50001 DROP VIEW IF EXISTS `view2`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view2` AS select sql_no_cache `sub`.`team_no` AS `team_no`,`sub`.`id` AS `id`,`cac`.`rownum`() AS `rowno`,`sub`.`university_no` AS `university_no`,`sub`.`team_name` AS `team_name`,`sub`.`teacher` AS `teacher`,`sub`.`teacher_phone` AS `teacher_phone`,`sub`.`works_name` AS `works_name`,`sub`.`types` AS `types`,`sub`.`description` AS `description` from `view1` `sub` group by `sub`.`team_no`,`sub`.`id` */;

--
-- Final view structure for view `teaminfo`
--

/*!50001 DROP VIEW IF EXISTS `teaminfo`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teaminfo` AS select sql_no_cache `k`.`team_no` AS `team_no`,max((case when (`k`.`rowno` = 2) then `k`.`id` else 0 end)) AS `id1`,max((case when (`k`.`rowno` = 0) then `k`.`id` else 0 end)) AS `id2`,max((case when (`k`.`rowno` = 1) then `k`.`id` else 0 end)) AS `id3`,`k`.`university_no` AS `school`,`k`.`team_name` AS `team_name`,`k`.`teacher` AS `teacher`,`k`.`teacher_phone` AS `teacher_phone`,`k`.`works_name` AS `works_name`,`k`.`types` AS `types`,`k`.`description` AS `description` from `view2` `k` group by `k`.`team_no` */;

--
-- Final view structure for view `view1`
--

/*!50001 DROP VIEW IF EXISTS `view1`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view1` AS select `a`.`id` AS `id`,`a`.`team_no` AS `team_no`,`a`.`university_no` AS `university_no`,`t`.`team_name` AS `team_name`,`t`.`teacher` AS `teacher`,`t`.`teacher_phone` AS `teacher_phone`,`w`.`works_name` AS `works_name`,`w`.`types` AS `types`,`w`.`description` AS `description` from ((`normaluser` `a` join `team` `t`) join `works` `w`) where ((`a`.`team_no` = `t`.`team_no`) and (`t`.`works_id` = `w`.`works_id`)) order by `a`.`team_no` desc */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-06 17:45:33
