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
-- Table structure for table `employementfr`
--

DROP TABLE IF EXISTS `employementfr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employementfr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start month` varchar(20) NOT NULL,
  `end month` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `task1` text NOT NULL,
  `task2` text NOT NULL,
  `task3` text,
  `position` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employementfr`
--

LOCK TABLES `employementfr` WRITE;
/*!40000 ALTER TABLE `employementfr` DISABLE KEYS */;
INSERT INTO `employementfr` VALUES (1,'Juillet 2018','Présent','Mito Sushi, Montréal, QC','Communiquer avec les chefs d’équipes pour assurer une production efficace','Exercer un contrôle strict sur les matières premières en respectant les procédures','Créer et modifier les macros pour automatiser la mise à jour, l’impression, etc','Commis de Planification'),(2,'Sept. 2017','Déc. 2017','Université d\'Alberta, Edmonton, AB','Configurer les paramètres à l’aide de Matlab pour identifier les conditions à optimiser l’efficacité de facilités et la pureté des sucres\r\n','Gagner Dean’s Research Award à la fin de cette période pour mon excellente performance',NULL,'Assistant de Laboratoire'),(3,'Sept. 2017','Avril 2018','Université d\'Alberta, Edmonton, AB','Fabriquer du polymère pour le traitement du résidu bitumine et en tester la performance \r\n','Analyser leurs performances à l’aide de MS Offices, afin qu’on détermine la meilleure condition de réaction et la direction pour les recherches à l’avenir\r\n','Présenter ma recherche à CSChE et publier deux papiers à une conférence en Chile','Assistant de Laboratoire');
/*!40000 ALTER TABLE `employementfr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 12:37:58
