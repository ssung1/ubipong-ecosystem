-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: us-cdbr-east-03.cleardb.com    Database: heroku_69fe5e9de7b1411
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `event`
--

USE ubipong;

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `challonge_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `tournament_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tournament_id_name_idx` (`tournament_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'ecs_202104_mo40_rr_1','US National GA Qualifier Men’s O40',NULL,1),(2,'ecs_202104_wsngl_pg_rr_1','US Nationals GA Qualifier Women’s Singles Prelim Group 1',NULL,1),(3,'ecs_202104_mo65_rr_1','US National GA Qualifier Men’s O65',NULL,1),(4,'ecs_202104_gu17_rr_1','US National GA Qualifier Girls’ U17',NULL,1),(5,'ecs_202104_msngl_pg_rr_1','US Nationals GA Qualifier Men’s Singles Prelim Group 1',NULL,1),(6,'ecs_202104_msngl_pg_rr_2','US Nationals GA Qualifier Men’s Singles Prelim Group 2',NULL,1),(7,'ecs_202104_msngl_pg_rr_3','US Nationals GA Qualifier Men’s Singles Prelim Group 3',NULL,1),(8,'ecs_202104_msngl_pg_rr_4','US Nationals GA Qualifier Men’s Singles Prelim Group 4',NULL,1),(9,'ecs_201204_msngl_ch_se','US Nationals GA Qualifier Men’s Singles Playoff',NULL,1),(10,'ecs_202104_bu11_rr_1','US National GA Qualifier Boys’ U11',NULL,1),(11,'ecs_202104_bu15_rr_1','US National GA Qualifier Boys’ U15',NULL,1),(12,'ecs_202104_gu15_rr_1','US National GA Qualifier Girls’ U15',NULL,1),(13,'ecs_202104_bu13_rr_1','US National GA Qualifier Boys’ U13',NULL,1),(14,'ecs_202104_gu13_rr_1','US National GA Qualifier Girls’ U13',NULL,1),(52,'ecs_202104_mu21_rr_1','US National GA Qualifier Men’s U21',NULL,1),(102,'ecs_202204_wu21_pg_rr_1','2022 Nationals GA Qualifier Women’s U21',NULL,52),(103,'ecs_202204_bu11_pg_rr_1','2022 Nationals GA Qualifier Boys’ U11 Prelim Group 1',NULL,52),(104,'ecs_202204_bu11_pg_rr_2','2022 Nationals GA Qualifier Boys’ U11 Prelim Group 2',NULL,52),(105,'ecs_202204_bu11_ch_se','2022 Nationals GA Qualifier Boys’ U11 Playoff',NULL,52),(106,'ecs_202204_gu15_pg_rr_1','2022 Nationals GA Qualifier Girls’ U15',NULL,52),(107,'ecs_202204_bu15_pg_rr_1','2022 Nationals GA Qualifier Boys’ U15 Prelim Group 1',NULL,52),(108,'ecs_202204_bu15_pg_rr_2','2022 Nationals GA Qualifier Boys’ U15 Prelim Group 2',NULL,52),(109,'ecs_202204_bu15_ch_se','2022 Nationals GA Qualifier Boys’ U15 Playoff',NULL,52),(110,'ecs_202104_bu13_pg_rr_1','2022 Nationals GA Qualifier Boys’ U13',NULL,52),(111,'ecs_202204_msngl_pg_rr_1','2022 Nationals GA Qualifier Men’s Singles Prelim Group 1',NULL,52),(112,'ecs_202204_msngl_pg_rr_2','2022 Nationals GA Qualifier Men’s Singles Prelim Group 2',NULL,52),(113,'ecs_202204_msngl_pg_rr_3','2022 Nationals GA Qualifier Men’s Singles Prelim Group 3',NULL,52),(114,'ecs_202204_msngl_pg_rr_4','2022 Nationals GA Qualifier Men’s Singles Prelim Group 4',NULL,52),(115,'ecs_202204_msngl_ch_se','2022 Nationals GA Qualifier Men’s Singles Playoff',NULL,52),(116,'ecs_202204_gu19_pg_rr_1','2022 Nationals GA Qualifier Girls’ U19',NULL,52),(117,'ecs_202204_gu17_pg_rr_1','2022 Nationals GA Qualifier Girls’ U17',NULL,52),(118,'ecs_202204_bu17_pg_rr_1','2022 Nationals GA Qualifier Boys’ U17',NULL,52),(119,'ecs_202204_wsngl_pg_rr_1','2022 Nationals GA Qualifier Women’s Singles Prelim Group 1',NULL,52),(120,'ecs_202204_wsngl_pg_rr_2','2022 Nationals GA Qualifier Women’s Singles Prelim Group 2',NULL,52),(121,'ecs_202204_wsngl_ch_se','2022 Nationals GA Qualifier Women’s Singles Playoff',NULL,52),(122,'ecs_202204_mo40_pg_rr_1','2022 Nationals GA Qualifier Men’s O40',NULL,52),(152,'ecs_202204_bu19_pg_rr_1','2022 Nationals GA Qualifier Boys’ U19',NULL,52);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_seq`
--

DROP TABLE IF EXISTS `event_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_seq`
--

LOCK TABLES `event_seq` WRITE;
/*!40000 ALTER TABLE `event_seq` DISABLE KEYS */;
INSERT INTO `event_seq` VALUES (251);
/*!40000 ALTER TABLE `event_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tournament_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,'2021 US National TT Championships GA Qualifier','2021-04-10 04:00:00'),(52,'2022 US National TT Championships GA Qualifier','2022-04-02 04:00:00');
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_seq`
--

DROP TABLE IF EXISTS `tournament_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_seq`
--

LOCK TABLES `tournament_seq` WRITE;
/*!40000 ALTER TABLE `tournament_seq` DISABLE KEYS */;
INSERT INTO `tournament_seq` VALUES (151);
/*!40000 ALTER TABLE `tournament_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `external_reference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `external_reference_idx` (`external_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('afb84ae9-e928-4a91-9c48-1dbea638faa8','shawfe@techie.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_organization_role`
--

DROP TABLE IF EXISTS `user_organization_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_organization_role` (
  `id` varchar(255) NOT NULL,
  `organization_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_organization_id_role_idx` (`user_id`,`organization_id`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_organization_role`
--

LOCK TABLES `user_organization_role` WRITE;
/*!40000 ALTER TABLE `user_organization_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_organization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_role_idx` (`user_id`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tournament_role`
--

DROP TABLE IF EXISTS `user_tournament_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tournament_role` (
  `id` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `tournament_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_tournament_id_role_idx` (`user_id`,`tournament_id`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tournament_role`
--

LOCK TABLES `user_tournament_role` WRITE;
/*!40000 ALTER TABLE `user_tournament_role` DISABLE KEYS */;
INSERT INTO `user_tournament_role` VALUES ('fa196183-60d7-4790-bd39-b35d82198106','TOURNAMENT_ADMIN',1,'afb84ae9-e928-4a91-9c48-1dbea638faa8'),('b226b019-93ce-4bbf-a41f-847a856eefab','TOURNAMENT_ADMIN',52,'afb84ae9-e928-4a91-9c48-1dbea638faa8');
/*!40000 ALTER TABLE `user_tournament_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-25  3:36:04
