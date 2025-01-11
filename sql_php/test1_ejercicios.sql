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
-- Table structure for table `ejercicios`
--

DROP TABLE IF EXISTS `ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejercicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descri` tinytext,
  `fuerza` varchar(20) DEFAULT NULL,
  `dura` varchar(10) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `at1` varchar(50) DEFAULT NULL,
  `at2` varchar(50) DEFAULT NULL,
  `at3` varchar(50) DEFAULT NULL,
  `at4` varchar(50) DEFAULT NULL,
  `at5` varchar(50) DEFAULT NULL,
  `at6` varchar(50) DEFAULT NULL,
  `at7` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicios`
--

LOCK TABLES `ejercicios` WRITE;
/*!40000 ALTER TABLE `ejercicios` DISABLE KEYS */;
INSERT INTO `ejercicios` VALUES (1,'Arm','Push-ups','Flattening your body on the floor with the two palms and two foot tips supporting the whole body weight, doing up and down movements','Medium','2 s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Arm','Forearm Lifting','Fix the elbow close to the body, levering the forearm with a weight by alternating the open and closed positions','Medium','5 s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Arm','Side Stretching','Both hands hold two sides of a spring, alternating from the position where both arm are stretched at maximum to the position where both arms are vertical to your body in front of your chest','Medium','10 s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Arm','Arm Swinging','Swing the arm freely to relief the fatigue','Light','0.5 s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ejercicios` ENABLE KEYS */;
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
