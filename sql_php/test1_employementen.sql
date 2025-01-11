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
-- Table structure for table `employementen`
--

DROP TABLE IF EXISTS `employementen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employementen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start month` varchar(20) NOT NULL,
  `end month` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `task1` text NOT NULL,
  `task2` text NOT NULL,
  `task3` text,
  `position` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employementen`
--

LOCK TABLES `employementen` WRITE;
/*!40000 ALTER TABLE `employementen` DISABLE KEYS */;
INSERT INTO `employementen` VALUES (3,'July 2018','May 2019','Mito Sushi, Montreal, QC','Communicate with department leaders to ensure the well-being of the production','Use a wide spectrum of tools to make production plans and control materials','Create and modify macros to automatize updating of orders, printing and other tasks','Planning Staff'),(6,'May 2019','Present','FDM Group','Training in PL/SQL, VBA, OS Admin, UNIX, finance and business analysis','Started working for client Intact Insurances in July 2019',NULL,'IT Consultant'),(7,'July 2019','Present','Intact Insurances','Automate Excel, Outlook, PowerPoint, IE navigator and Word in VBA combined with JavaScript, SQL and HTML, successfully shortening the time of reporting from hours to minutes','Try different methods like WPF applications in C# etc. to find a IT solution for concrete issues in workforce management','Analyze data and report with tools like Excel, Access, R, PowerBI and SAS','IT Consultant');
/*!40000 ALTER TABLE `employementen` ENABLE KEYS */;
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
