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
-- Table structure for table `experenciavoluntaria`
--

DROP TABLE IF EXISTS `experenciavoluntaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experenciavoluntaria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `posicion` varchar(50) NOT NULL,
  `deber` text NOT NULL,
  `ano` varchar(20) NOT NULL,
  `organizacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experenciavoluntaria`
--

LOCK TABLES `experenciavoluntaria` WRITE;
/*!40000 ALTER TABLE `experenciavoluntaria` DISABLE KEYS */;
INSERT INTO `experenciavoluntaria` VALUES (3,'Voluntario General','Contribuir al bienestar y desarrollo de la comunidad francófona en Edmonton','2017','Ciudad Franco Francófona'),(4,'VP Patronate','Buscar fondos para apoyar nuestras actividades y ayudar a organizar eventos que propagar los conceptos modernos de energía','2015 - 2018','Club de Energía'),(5,'VP Cantonés','Organizar clases gratis de Cantonés a disposición del público al fin de difundir la cultura Cantonesa y por eso, seleccionar y capacitar voluntarios con que trabajo juntos','2016 - 2017','Comunidad de Voluntarios de Estudiantes');
/*!40000 ALTER TABLE `experenciavoluntaria` ENABLE KEYS */;
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
