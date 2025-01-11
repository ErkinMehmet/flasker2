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
-- Table structure for table `coursesfr`
--

DROP TABLE IF EXISTS `coursesfr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursesfr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `course` varchar(15) NOT NULL,
  `description` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursesfr`
--

LOCK TABLES `coursesfr` WRITE;
/*!40000 ALTER TABLE `coursesfr` DISABLE KEYS */;
INSERT INTO `coursesfr` VALUES (1,1,'CHEM 103','Introduction à chimie universitaire I','A+'),(2,1,'ENGG 130','Mécaniques d\'ingénieurs','A+'),(3,1,'MATH 102','Algèbre linéaire appliqué ','A+'),(4,1,'MATH 209','Calculus III','A+'),(5,1,'PHYS 130','Motion d\'ondes, optiques et son','A+'),(6,1,'CHE 243','Thermodynamiques d\'ingénieurs','A+'),(7,1,'CHEM 105','Introduction à chimie universitaire II','A-'),(8,1,'EN PH 131','Mécaniques','A+'),(9,1,'ENCMP 100','Programmation pour ingénieurs','A'),(10,1,'MATH 201','Équation différentielles','A+'),(11,2,'CHEM 261','Chimie organique I','A'),(12,2,'CME 265','Analyse de processus','A'),(13,2,'ENGL 123','Littérature dans la perspective globale','B-'),(14,2,'MAT E 202','Science de matériaux II','A'),(15,2,'PHIL 265','Philosophie de science','B'),(16,2,'STAT 235','Introduction à statistiques pour ingénieurs','B+'),(17,2,'BIOCH 200','Biochimie fondamentale','B+'),(18,2,'ECE 209','Fondamentales d\'ingénierie électrique','B+'),(19,2,'MAT E 211','Caractérisation de matériaux','A'),(20,2,'MAT E 221','Fabrication et processus de poudres','B'),(21,2,'SMO 301','Comportements dans organisations','A-'),(22,2,'SOC 366','Les gens dans industrie','B-'),(23,3,'CHE 312','Mécaniques de fluide','A'),(24,3,'CHE 343','Thermodynamiques en ingénierie chimique','A+'),(25,3,'CHE 351','Laboratoire d\'ingénierie chimique','B+'),(26,3,'CHE 374','Méthodes de computation pour ingénieurs','A'),(27,3,'ENG M 401','Gestion financière pour ingénieurs','A-'),(28,3,'CHE 314','Transfert de chaleur','A-'),(29,3,'CHE 318','Transfert de masses','B-'),(30,3,'CHE 345','Analyse de réacteur chimique I','A'),(31,3,'CHE 358','Analyse de données de processus','A-'),(32,3,'PHYS 271','Introduction à physique moderne','A+'),(33,4,'CHE 416','Équilibre étape processus','A-'),(34,4,'CHE 445','Analyse de réacteur chimique II','A-'),(35,4,'CHE 446','Contrôle et dynamiques de processus','A'),(36,4,'CHE 464','Design en ingénierie chimique I','A-'),(37,4,'ENG M 530','Gestion de project en ingénierie','A-'),(38,4,'CHE 454','Project de laboratoire en ingénierie chimique','B-'),(39,4,'CHE 465','Design en ingénierie chimique II','C'),(40,4,'CHE 472','Modelage de dynamiques de processus','A'),(41,4,'CHE 576','Contrôle intermédiaire de processus','B+');
/*!40000 ALTER TABLE `coursesfr` ENABLE KEYS */;
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
