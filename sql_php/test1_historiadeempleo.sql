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
-- Table structure for table `historiadeempleo`
--

DROP TABLE IF EXISTS `historiadeempleo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historiadeempleo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inicio mes` varchar(20) DEFAULT NULL,
  `fin mes` varchar(20) DEFAULT NULL,
  `empresa` varchar(50) NOT NULL,
  `deber1` text NOT NULL,
  `deber2` text,
  `deber3` text,
  `posicion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiadeempleo`
--

LOCK TABLES `historiadeempleo` WRITE;
/*!40000 ALTER TABLE `historiadeempleo` DISABLE KEYS */;
INSERT INTO `historiadeempleo` VALUES (1,'Julio 2018','Presento','Mito Sushi, Montreal, QC','Comunicarme con el líder de los equipos para asegurar una producción eficiente ','Ejercer un control estricto sobre las materia primas respetando los procedimientos','Crear y editar macros para automatizar el trabajo, por ejemplo la actualización de órdenes','Empleado de Planificación'),(2,'Sept. 2017','Dec. 2017','Universidad de Alberta, Edmonton, AB','Configurar los parámetros utilizando Matlab para identificar las condiciones optimizando la eficiencia y la pureza de la separación de azucares','Ganar un premio para mi presentación de los resultados de mi investigación por mi actuación excelente',NULL,'Asistente de Laboratorio'),(3,'Sept. 2017','Abril 2018','Universidad de Alberta, Edmonton, AB','Hacer polímero para el tratamiento del residuo de betún y probar su rendimiento','Analizar su rendimiento usando MS Offices para determinar la mejor condición de respuesta y la dirección para futuras investigaciones','Presentar mi investigación en la conferencia CSChE y publicar dos artículos en Chile, Julio 2017','Asistente de Laboratorio');
/*!40000 ALTER TABLE `historiadeempleo` ENABLE KEYS */;
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
