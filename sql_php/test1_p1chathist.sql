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
-- Table structure for table `p1chathist`
--

DROP TABLE IF EXISTS `p1chathist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p1chathist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senid` int NOT NULL,
  `recid` int NOT NULL,
  `msg` varchar(500) NOT NULL,
  `dt` datetime NOT NULL,
  `lu` int DEFAULT '0',
  `ludt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p1chathist`
--

LOCK TABLES `p1chathist` WRITE;
/*!40000 ALTER TABLE `p1chathist` DISABLE KEYS */;
INSERT INTO `p1chathist` VALUES (1,11,10,'hello mec','2020-11-03 00:00:00',0,NULL),(78,10,10,'hielo fuck','2020-12-03 08:03:32',0,NULL),(79,10,10,'hey bpofasdf','2020-12-02 09:59:44',0,NULL),(80,10,10,'hello babadaf','2020-12-02 10:08:03',0,NULL),(81,10,11,'hello mon ami','2020-12-02 10:08:12',0,NULL),(82,10,10,'hi shit','2020-12-02 10:08:29',0,NULL),(83,10,11,'hiiii babybagadf ','2020-12-02 10:08:42',0,NULL),(84,10,10,'hello shit\n','2020-12-02 23:15:11',0,NULL),(85,10,10,'bullshit fuck','2020-12-02 23:17:26',0,NULL),(86,10,11,'bullshit fuck','2020-12-02 23:17:42',0,NULL),(87,10,11,'fuckyou dda','2020-12-02 23:34:38',0,NULL),(88,10,15,'Hello Alejo','2020-12-02 23:50:28',0,NULL),(89,10,10,'hello kitt\n','2020-12-04 04:00:40',0,NULL),(90,10,14,'boda','2020-12-04 04:00:54',0,NULL),(91,10,16,'jflasdjflasd','2020-12-05 19:51:10',0,NULL);
/*!40000 ALTER TABLE `p1chathist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 12:37:56
