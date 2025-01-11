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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int DEFAULT NULL,
  `message_text` text,
  `attachment_url` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `message_type` enum('TEXT','IMAGE','FILE','VIDEO') DEFAULT NULL,
  `status` enum('SENT','DELIVERED','READ','FAILED') DEFAULT NULL,
  `priority` enum('NORMAL','HIGH') DEFAULT NULL,
  `read_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receiver_id` (`receiver_id`),
  KEY `sender_id` (`sender_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,12,18,'Hello, how are you?',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(2,18,12,'I am good, thanks! How about you?',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(3,12,18,'I am doing great! Have you completed the project?',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(4,18,12,'Not yet, I will finish it by tomorrow.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(5,12,18,'Good! Let me know if you need any help.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(6,18,12,'Thanks! I will keep that in mind.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','READ','NORMAL',NULL),(7,12,18,'By the way, did you receive the report I sent?',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(8,18,12,'Yes, I got it. I will review it later today.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(9,12,18,'Perfect. Let me know if anything needs to be changed.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(10,18,12,'I will, thanks!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','READ','NORMAL',NULL),(11,12,18,'I have a new idea for the project.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','HIGH',NULL),(12,18,12,'Oh, sounds interesting! Tell me more.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','HIGH',NULL),(13,12,18,'We could integrate a new feature to improve efficiency.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','HIGH',NULL),(14,18,12,'I like that idea. Let me think about how to implement it.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','HIGH',NULL),(15,12,18,'Let me know if you need any more details about the feature.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','HIGH',NULL),(16,18,12,'Will do!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','READ','HIGH',NULL),(17,12,18,'Here’s a screenshot of the feature.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'IMAGE','SENT','NORMAL',NULL),(18,18,12,'Nice! I can see how that will improve things.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'IMAGE','DELIVERED','NORMAL',NULL),(19,12,18,'I’ll prepare the proposal based on this.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(20,18,12,'Great, let’s get this started as soon as possible!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','HIGH',NULL),(21,12,18,'I’m sending you a file with the details now.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'FILE','SENT','NORMAL',NULL),(22,18,12,'Received the file, I’ll check it out shortly.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'FILE','DELIVERED','NORMAL',NULL),(23,12,18,'Let me know if you have any questions regarding the file.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(24,18,12,'Sure, I’ll review it and get back to you.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','READ','NORMAL',NULL),(25,12,18,'Thanks for the quick response earlier.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(26,18,12,'No problem! Happy to help.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(27,12,18,'Can you make some changes to the proposal?',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(28,18,12,'Sure, what needs to be changed?',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(29,12,18,'I need you to update the timeline section.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(30,18,12,'Got it. I’ll send the updated proposal later today.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(31,12,18,'Thanks for the help!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(32,18,12,'You’re welcome!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','READ','NORMAL',NULL),(33,12,18,'I’m reviewing the new version of the proposal.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(34,18,12,'Great! Let me know what you think.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(35,12,18,'The changes look good! I’ll submit it now.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','HIGH',NULL),(36,18,12,'Awesome, I’m glad it worked out!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(37,12,18,'Just submitted the proposal to the client.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','HIGH',NULL),(38,18,12,'Nice, let’s hope they approve it.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(39,12,18,'They’ve approved it! Great news!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','HIGH',NULL),(40,18,12,'Fantastic! Great teamwork.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','HIGH',NULL),(41,12,18,'Thanks for your help with the project!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(42,18,12,'It was my pleasure. Looking forward to the next one.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(43,12,18,'Yes, definitely!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(44,18,12,'Talk to you soon.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(45,12,18,'Bye!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(46,18,12,'Take care!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','READ','NORMAL',NULL),(47,12,18,'Hey! Are you available for a quick call?',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(48,18,12,'Sure, give me a moment.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(49,12,18,'Thanks, I’ll call you now.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(50,18,12,'Alright, see you soon.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(51,12,18,'On the call now, I’ll explain the details.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(52,18,12,'Got it, I’m ready to hear you out.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(53,12,18,'I think we can improve the process a little.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','HIGH',NULL),(54,18,12,'I agree, let’s discuss some ideas after the call.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','HIGH',NULL),(55,12,18,'Let’s meet later this week to go over everything.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(56,18,12,'Sounds good, I’ll prepare some notes.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(57,12,18,'Great! See you soon.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(58,18,12,'Looking forward to it.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(59,12,18,'See you on Friday.',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','SENT','NORMAL',NULL),(60,18,12,'Yes, see you then!',NULL,'2024-12-23 11:18:38','2024-12-23 11:18:38',0,0,'TEXT','DELIVERED','NORMAL',NULL),(97,12,18,'Hello I hope you are enjoying your Christmas.',NULL,'2024-12-23 17:32:42',NULL,0,0,'TEXT','SENT','NORMAL',NULL),(98,28,18,'Bonjour Josiane, je voudrais apprendre la danse de forêt.',NULL,'2024-12-24 10:46:46',NULL,0,0,'TEXT','SENT','NORMAL',NULL),(141,12,18,'Hello',NULL,'2024-12-25 15:17:06',NULL,0,0,'TEXT','SENT','NORMAL',NULL),(142,12,22,'Hola',NULL,'2024-12-25 15:17:23',NULL,0,0,'TEXT','SENT','NORMAL',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
