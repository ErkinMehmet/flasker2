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
-- Table structure for table `volunteeringfr`
--

DROP TABLE IF EXISTS `volunteeringfr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteeringfr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` varchar(20) NOT NULL,
  `task` text NOT NULL,
  `year` varchar(20) NOT NULL,
  `organization` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteeringfr`
--

LOCK TABLES `volunteeringfr` WRITE;
/*!40000 ALTER TABLE `volunteeringfr` DISABLE KEYS */;
INSERT INTO `volunteeringfr` VALUES (1,'Bénévole Général ','Contribuer au bien-être et au développement de la communauté francophone à Edmonton\r\n','2018','La Cité Francophone'),(2,'VP Patronage','Rechercher du financement pour soutenir nos activités associées à l’énergie et contribuer à organiser des événements et assister aux réunions mensuelles \r\n','2015-2018','Club d\'énergie'),(3,'VP Cantonais','Organiser des classes de cantonais disponibles au public; sélectionner et former les bénévolats pour qu’on travaille ensemble en faisant passer les cultures cantonaises et la langue cantonaise\r\n','2016-2017','Communauté Bénévole des Étudiants');
/*!40000 ALTER TABLE `volunteeringfr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 12:38:00
