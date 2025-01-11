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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `cours` varchar(244) NOT NULL,
  `description` text,
  `note` varchar(12) DEFAULT NULL,
  `annee` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES ('CHEM 103','Introducción de Química en Universidad I','A+',1,1),('ENGG 130','Mecánicas de Ingeniero','A+',1,4),('MATH 102','Matemática Linear','A+',1,5),('MATH 209','Calculus III','A+',1,6),('PHYS 130','Moción Ondularia, Optística y Sonido','A+',1,7),('CHE 243','Termodinámica de Ingeniero','A+',1,8),('CHEM 105','Introducción de Química Universitaria','A-',1,9),('EN PH 131','Mecánicas ','A+',1,10),('ENCMP','Programación de Computación en Ingeniero ','A+',1,12),('MATH 201','Equaciones Diferenciales','A+',1,13),('CHEM 261','Química Organica I','A',2,14),('CME 265','Análisis de Procesos','A',2,16),('ENGL 123','Literatura en Perspectiva Mundial','B-',2,20),('MAT E 202','Ciencia de Materiales II','A',2,21),('PHIL 265','Filosofía de Ciencia','B',2,22),('STAT 235','Introducción de Estadística en Ingeniería  ','B+',2,23),('BIOCH 200','Introducción de Bioquímica','B+',2,24),('ECE 209','Fundamentales de Ingeniería Eléctrica ','B+',2,25),('MAT E 211','Característica de Materiales','A',2,26),('MAT E 221','Fabricación y Proceso de Polvos','B',2,27),('SMO 301','Comportamiento de Organizaciones','A-',2,28),('SOC 366','Gente en industria','B-',2,29),('CHE 312','Mecánica de Fluido','A',3,30),('CHE 343','Termodinámica de Ingeniería Química','A+',3,31),('CHE 351','Laboratorio de Ingeniería Química','B+',3,32),('CHE 374','Methods Computacionales de Ingeniería','A',3,33),('ENG M 401','Administración Financial para Ingenieros','A-',3,34),('CHE 341','Transferencia de Calor','A-',3,35),('CHE 318','Transferencia de Masa','B-',3,36),('CHE 345','Análisis de Reactor Químico I','A',3,37),('CHE 358','Análisis de Datos de Proceso','A-',3,38),('PHYS 271','Introducción a Física Moderna','A+',3,39),('CHE 416','Procesos de Pasos de Equilibro','A-',4,40),('CHE 445','Análisis de Reactor Químico II','A-',4,41),('CHE 446','Control y Dinámica de Procesos','A',4,42),('CHE 464','Diseño de Ingeniería Química I','A-',4,43),('ENG M 530','Administración de Proyectos Ingenieros','A-',4,44),('CHE 454','Proyecto Laboratorio de Ingeniero Químico','B-',4,45),('CHE 465','Diseño de Ingeniería Química II','C',4,46),('CHE 472','Dinámica de Modelado de Procesos','A',4,47),('CHE 576','Control Intermedio de Procesos','B+',4,48);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 12:37:54
