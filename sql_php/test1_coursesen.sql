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
-- Table structure for table `coursesen`
--

DROP TABLE IF EXISTS `coursesen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursesen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `course` varchar(15) NOT NULL,
  `description` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursesen`
--

LOCK TABLES `coursesen` WRITE;
/*!40000 ALTER TABLE `coursesen` DISABLE KEYS */;
INSERT INTO `coursesen` VALUES (1,1,'CHEM 103','Introduction to University Chemistry I','A+'),(2,1,'ENGG 130','Engineering Mechanics','A+'),(3,1,'MATH 102','Applied Linear Algebra','A+'),(4,1,'MATH 209','Calculus III','A+'),(5,1,'PHYS 130','Wave Motion, Optics and Sound','A+'),(6,1,'CHE 243','Engineering Thermodynamics','A+'),(7,1,'CHEM 105','Introduction to University Chemistry II','A-'),(8,1,'EN PH 131','Computer Programming for Engineers','A'),(9,1,'MATH 201','Differential Equations','A+'),(10,2,'CHEM 261','Organic Chemistry I','A'),(11,2,'CME 265','Process Analysis','A'),(12,2,'ENGL 123','Literature in Global Perspective','B-'),(13,2,'MAT E 202','Materials Science II','A'),(14,2,'PHIL 265','Philosophy of Science','B'),(15,2,'STAT 235','Introduction to Statistics for Engineering','B+'),(16,2,'BIOCH 200','Introductory Biochemitry','B+'),(17,2,'ECE 209','Fundamentals of Electrical Engineering','B+'),(18,2,'MAT E 211','Characterization of Materials','A'),(19,2,'MAT E 221','Powder Fabrication and Process','B'),(20,2,'SMO 301','Behaviour in Organization','A-'),(21,2,'SOC 366','People in Industry','B-'),(22,3,'CHE 312','Fluid Mechanics','A'),(23,3,'CHE 343','Chemical Engineering Thermodynamics','A+'),(24,3,'CHE 351','Chemical Engineering Lab','B+'),(25,3,'CHE 374','Computational Methods for Engineering','A'),(26,3,'ENG M 401','Financial Management for Engineers','A-'),(27,3,'CHE 314','Heat Transfer','A-'),(28,3,'CHE 318','Mass Transfer','B-'),(29,3,'CHE 345','Chemical Reactor Analysis I','A'),(30,3,'CHE 358','Process Data Analysis','A-'),(31,3,'PHYS 271','Introduction to Modern Physics','A+'),(32,4,'CHE 416','Equilibrium Stage Processes','A-'),(33,4,'CHE 445','Chemical Reactor Analysis II','A-'),(34,4,'CHE 446','Process Engineering Design I','A-'),(35,4,'ENG M 530','Engineering Project Management','A-'),(36,4,'CHE 454','Chemical Engineering Project Lab','B-'),(37,4,'CHE 465','Chemical Engineering Design II','C'),(38,4,'CHE 472','Modelling Process Control','B+'),(39,4,'CHE 576','Intermediate Process Control','B+');
/*!40000 ALTER TABLE `coursesen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 12:37:59
