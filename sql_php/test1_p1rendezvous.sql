-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `p1rendezvous`
--

DROP TABLE IF EXISTS `p1rendezvous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p1rendezvous` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) DEFAULT NULL,
  `debuthm` varchar(10) NOT NULL,
  `finhm` varchar(10) NOT NULL,
  `dia` date NOT NULL,
  `msg` text,
  `visitor` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `statut` int NOT NULL DEFAULT '0',
  `cell` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p1rendezvous`
--

LOCK TABLES `p1rendezvous` WRITE;
/*!40000 ALTER TABLE `p1rendezvous` DISABLE KEYS */;
INSERT INTO `p1rendezvous` VALUES (1,NULL,'13:00','14:00','2020-11-27',NULL,'visitor','abc@alberta.ca',NULL,0,NULL),(2,NULL,'13:00','14:00','2020-11-27',NULL,'visitor','abc@alberta.ca',NULL,0,NULL),(3,NULL,'13:00','14:00','2020-11-27',NULL,'visitor','abc@alberta.ca',NULL,0,NULL),(4,NULL,'13:00','14:00','2020-11-27',NULL,'visitor','abc@alberta.ca',NULL,0,NULL),(5,NULL,'13:00','14:00','2020-11-27',NULL,'visitor','abc@alberta.ca',NULL,0,NULL),(23,'','01:00','02:00','2020-11-30','fdfsda','::1','Alejo@govr.ar','anonymous',0,''),(22,'','12:00','13:00','2020-11-30','fsdf','::1','Alejo@govr.ar','anonymous',0,''),(21,'','23:00','23:01','2020-11-27','aaa','::1','Alejo@govr.ar','anonymous',0,''),(20,'','23:00','23:01','2020-11-30','aaa','::1','Alejo@govr.ar','anonymous',0,''),(19,'afeado','12:00','12:30','2020-12-01','atado','::1','adfaffa@ua.com','fadfa',0,''),(18,'xx','23:58','23:59','2020-11-30','x','::1','Alejo@govr.ar','anonymous',0,'xx'),(17,'','23:01','23:04','2020-11-27','Another test Oka poo','::1','Alejo@govr.ar','anonymous',0,''),(16,'','23:58','23:59','2020-11-27','k,nh','::1','Alejo@govr.ar','anonymous',0,''),(24,'','23:58','23:59','2020-11-29','sdasd','::1','Alejo@govr.ar','anonymous',0,''),(25,'','23:58','23:59','2020-12-02','ss','::1','Alejo@govr.ar','anonymous',0,''),(26,'','23:58','23:59','2021-11-12','sdasd','::1','Alejo@govr.ar','anonymous',0,''),(27,'','23:58','23:59','2021-11-06','sed','::1','Alejo@govr.ar','anonymous',0,''),(28,'','23:58','23:59','2021-11-27','sdfsdf','::1','Alejo@govr.ar','anonymous',0,''),(29,'','23:58','23:59','2020-12-03','Fernando','::1','Alejo@govr.ar','anonymous',0,''),(30,'jj','23:58','23:59','2025-12-13','hl','::1','Alejo@govr.ar','anonymous',0,''),(31,'HTML','23:58','23:59','2024-12-19','Heyko','::1','Alejo@govr.ar','Jay',0,'514264536'),(32,'HTML','23:58','23:59','2024-12-20','Heyko','::1','Alejo@govr.ar','Jay',0,'514264536');
/*!40000 ALTER TABLE `p1rendezvous` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 12:37:57
