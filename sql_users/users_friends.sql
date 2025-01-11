-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: users
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
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `smaller_user_id` int NOT NULL,
  `bigger_user_id` int NOT NULL,
  `friends_since` datetime DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `last_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bigger_user_id` (`bigger_user_id`),
  KEY `smaller_user_id` (`smaller_user_id`),
  CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`bigger_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`smaller_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (4,12,20,'2024-12-23 09:57:49',NULL,'2024-12-23 09:57:49',NULL),(7,12,21,'2024-12-23 09:59:09',NULL,'2024-12-23 09:59:09',NULL),(18,19,27,'2024-12-23 20:25:50',NULL,'2024-12-23 20:25:50',NULL),(19,22,27,'2024-12-23 20:26:26',NULL,'2024-12-23 20:26:26',NULL),(22,12,22,'2024-12-24 10:42:54',NULL,'2024-12-24 10:42:54',NULL),(24,12,27,'2024-12-24 10:43:12',NULL,'2024-12-24 10:43:12',NULL),(28,12,28,'2024-12-24 10:46:27',NULL,'2024-12-24 10:46:27',NULL),(29,17,28,'2024-12-24 10:46:29',NULL,'2024-12-24 10:46:29',NULL),(30,18,28,'2024-12-24 10:46:30',NULL,'2024-12-24 10:46:30',NULL),(31,19,28,'2024-12-24 10:46:30',NULL,'2024-12-24 10:46:30',NULL),(32,12,23,'2024-12-24 21:10:14',NULL,'2024-12-24 21:10:14',NULL),(33,12,24,'2024-12-25 15:01:31',NULL,'2024-12-25 15:01:31',NULL),(34,12,25,'2024-12-25 15:01:33',NULL,'2024-12-25 15:01:33',NULL),(37,12,16,'2024-12-25 15:18:25',NULL,'2024-12-25 15:18:25',NULL);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 11:53:28
