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
-- Table structure for table `p1pwch`
--

DROP TABLE IF EXISTS `p1pwch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p1pwch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timed` datetime NOT NULL,
  `idusuario` int NOT NULL,
  `clef` varchar(100) NOT NULL,
  `visitor` varchar(200) NOT NULL,
  `mdpde` varchar(200) NOT NULL,
  `mdpa` varchar(200) DEFAULT NULL,
  `timec` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p1pwch`
--

LOCK TABLES `p1pwch` WRITE;
/*!40000 ALTER TABLE `p1pwch` DISABLE KEYS */;
INSERT INTO `p1pwch` VALUES (1,'2020-11-30 16:25:45',8,'1606753545fernando','::1','$argon2i$v=19$m=1024,t=2,p=2$dFc5aU9FMmlPUDM4ZUxtVQ$dL1VhT7NHDLt6DqnvV0r6kvjXAaEeZv5biUrwx3oBNc','$argon2i$v=19$m=1024,t=2,p=2$UjEyanZOcWNyZmEwbjVnSg$PJlPfra5m0jrQw4uVX6ZGcxWnUc4NbMFVbsklSOsumk','2020-11-30 06:12:54'),(2,'2020-11-30 16:35:57',8,'1606754157fernando','::1','$argon2i$v=19$m=1024,t=2,p=2$dFc5aU9FMmlPUDM4ZUxtVQ$dL1VhT7NHDLt6DqnvV0r6kvjXAaEeZv5biUrwx3oBNc',NULL,NULL),(3,'2020-11-30 18:13:23',8,'1606760003fernando','::1','$argon2i$v=19$m=1024,t=2,p=2$UjEyanZOcWNyZmEwbjVnSg$PJlPfra5m0jrQw4uVX6ZGcxWnUc4NbMFVbsklSOsumk',NULL,NULL),(4,'2020-11-30 18:14:32',8,'1606760072fernando','::1','$argon2i$v=19$m=1024,t=2,p=2$UjEyanZOcWNyZmEwbjVnSg$PJlPfra5m0jrQw4uVX6ZGcxWnUc4NbMFVbsklSOsumk',NULL,NULL);
/*!40000 ALTER TABLE `p1pwch` ENABLE KEYS */;
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
