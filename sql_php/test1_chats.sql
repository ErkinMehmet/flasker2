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
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `bold` tinyint(1) NOT NULL DEFAULT '0',
  `italic` tinyint(1) NOT NULL DEFAULT '0',
  `underlined` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(20) DEFAULT NULL,
  `bgcolor` varchar(20) DEFAULT NULL,
  `imp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,'Fernando','Yohann','ILOVEU','2019-04-05 00:00:00',0,0,0,NULL,NULL,0),(2,'Yohann','Fernando','lOOOOL thank you','2019-04-30 00:00:00',0,0,0,NULL,NULL,0),(3,'Fernando','Luisana','hello Luisana no hay actualización','2019-04-11 00:00:00',0,0,0,NULL,NULL,0),(4,'Luisana','Fernando','FERNANDO!!!','2019-04-04 00:00:00',0,0,0,NULL,NULL,0),(5,'Fernando','Yohann','ssss','2019-04-20 11:13:07',0,0,0,NULL,NULL,0),(6,'Fernando','Yohann','jaj','2019-04-20 11:13:55',0,0,0,NULL,NULL,0),(7,'Fernando','Yohann','','2019-04-20 11:13:56',0,0,0,NULL,NULL,0),(8,'Fernando','Yohann','','2019-04-20 11:13:57',0,0,0,NULL,NULL,0),(9,'Fernando','Yohann','hkjhkj','2019-04-20 11:14:37',0,0,0,NULL,NULL,0),(10,'Luisana','Fernando','','2019-04-20 11:15:28',0,0,0,NULL,NULL,0),(11,'Luisana','Fernando','','2019-04-20 11:16:11',0,0,0,NULL,NULL,0),(12,'Fernando','Luisana','ddddd','2019-04-20 11:17:44',0,0,0,NULL,NULL,0),(20,'Yohann','Fernando','What do you want to say to Fernando?','2019-04-21 11:48:09',0,0,0,NULL,NULL,0),(21,'Yohann','Fernando','What do you want to say to Fernando?','2019-04-21 11:48:12',0,0,0,NULL,NULL,0),(22,'Yohann','Fernando','What do you want to say to Fernando?','2019-04-21 11:48:31',0,0,0,NULL,NULL,0),(23,'Yohann','Fernando','What do you want to say to Fernando?','2019-04-21 11:48:33',0,0,0,NULL,NULL,0),(24,'Yohann','Fernando','What do you want to say to Fernando?','2019-04-21 11:48:34',0,0,0,NULL,NULL,0),(25,'Yohann','Fernando','What do you want to say to Fernando?','2019-04-21 11:49:48',0,0,0,NULL,NULL,0),(26,'Yohann','Fernando','What do you want to say to Fernando?','2019-04-21 11:50:04',0,0,0,NULL,NULL,0),(27,'Yohann','Fernando','What do you want to say to Fernando?','2019-04-21 11:50:49',0,0,0,NULL,NULL,0),(28,'Yohann','Fernando','kk','2019-04-21 11:50:53',0,0,0,NULL,NULL,0),(29,'Yohann','Fernando','kk','2019-04-21 11:50:57',0,0,0,NULL,NULL,0),(30,'Yohann','Fernando','kk','2019-04-21 11:51:18',0,0,0,NULL,NULL,0),(31,'Yohann','Fernando','kk','2019-04-21 11:51:21',0,0,0,NULL,NULL,0),(32,'Yohann','Fernando','kk','2019-04-21 11:51:32',0,0,0,NULL,NULL,0),(33,'Yohann','Fernando','kk','2019-04-21 11:52:49',0,0,0,NULL,NULL,0),(34,'Yohann','Fernando','kk','2019-04-21 11:53:06',0,0,0,NULL,NULL,0),(35,'Yohann','Fernando','What do you wantkkdo?','2019-04-21 11:53:10',0,0,0,NULL,NULL,0),(36,'Yohann','Fernando','What do you wantkkdo?','2019-04-21 11:53:13',0,0,0,NULL,NULL,0),(37,'Yohann','Fernando','What do you wantkkdo?','2019-04-21 11:53:33',0,0,0,NULL,NULL,0),(38,'Yohann','Fernando','What do you want to say to Fed','2019-04-21 11:53:53',0,0,0,NULL,NULL,0),(39,'Yohann','Fernando','What do you want to say to Fed','2019-04-21 11:53:56',0,0,0,NULL,NULL,0),(40,'Yohann','Fernando','What do you want to say to Fed','2019-04-21 11:57:07',0,0,0,NULL,NULL,0),(41,'Yohann','Fernando','What do you want to say to Fed','2019-04-21 11:59:21',0,0,0,NULL,NULL,0),(42,'Luisana','Fernando','What do you want to say to Fernando?','2019-04-21 12:02:58',0,0,0,NULL,NULL,0),(43,'Luisana','Fernando','What do you want to say to Fernando?','2019-04-21 12:03:00',0,0,0,NULL,NULL,0),(44,'Luisana','Fernando','What do you want to say to Fernando?','2019-04-21 12:04:18',0,0,0,NULL,NULL,0),(45,'Luisana','Fernando','What do you want to say t','2019-04-21 12:24:07',0,0,0,NULL,NULL,0),(46,'Luisana','Fernando','What do you want to say t','2019-04-21 12:24:10',0,0,0,NULL,NULL,0),(47,'Luisana','Fernando','What do you want to say t','2019-04-21 12:24:32',0,0,0,NULL,NULL,0),(48,'Fernando','Luisana','What do you ana?','2019-04-21 12:25:02',0,0,0,NULL,NULL,0),(49,'Fernando','Luisana','What do you ana?','2019-04-21 12:25:04',0,0,0,NULL,NULL,0),(50,'Fernando','Luisana','What do you want to say t','2019-04-21 12:25:57',0,0,0,NULL,NULL,0),(51,'Fernando','Luisana','What do you want to say t','2019-04-21 12:25:59',0,0,0,NULL,NULL,0),(52,'Fernando','Luisana','What do you want to s','2019-04-21 12:35:53',0,0,0,NULL,NULL,0),(53,'Fernando','Luisana','What do you want to s','2019-04-21 12:35:56',0,0,0,NULL,NULL,0),(54,'Fernando','Luisana','What do you want to s','2019-04-21 12:37:39',0,0,0,NULL,NULL,0),(55,'Luisana','Fernando','What do you want ternando?','2019-04-21 12:40:03',0,0,0,NULL,NULL,0),(56,'Luisana','Fernando','What do you want ternando?','2019-04-21 12:40:05',0,0,0,NULL,NULL,0),(57,'Luisana','Fernando','What do you want ternando?','2019-04-21 12:40:40',0,0,0,NULL,NULL,0),(58,'Luisana','Fernando','What do you want ternando?','2019-04-21 12:40:43',0,0,0,NULL,NULL,0),(59,'Luisana','Fernando','What do you want ternando?','2019-04-21 12:40:57',0,0,0,NULL,NULL,0),(60,'Luisana','Fernando','kk','2019-04-21 12:41:20',0,0,0,NULL,NULL,0),(61,'Luisana','Fernando','kk','2019-04-21 12:41:23',0,0,0,NULL,NULL,0),(62,'Luisana','Fernando','kk','2019-04-21 12:42:07',0,0,0,NULL,NULL,0),(63,'Fernando','Luisana','What do you wanna?','2019-04-21 12:42:35',0,0,0,NULL,NULL,0),(64,'Fernando','Luisana','What do you wanna?','2019-04-21 12:42:38',0,0,0,NULL,NULL,0),(65,'Luisana','Fernando','Whrnando?','2019-04-21 12:56:40',0,0,0,NULL,NULL,0),(66,'Luisana','Fernando','Whrnando?','2019-04-21 12:56:46',0,0,0,NULL,NULL,0),(67,'Luisana','Fernando','Whrnando?','2019-04-21 12:56:54',0,0,0,NULL,NULL,0),(68,'Luisana','Fernando','Whrnando?','2019-04-21 12:57:20',0,0,0,NULL,NULL,0),(69,'Luisana','Fernando','Whrnando?','2019-04-21 12:57:33',0,0,0,NULL,NULL,0),(70,'Luisana','Fernando','Whrnando?','2019-04-21 12:57:58',0,0,0,NULL,NULL,0),(71,'Luisana','Fernando','Whrnando?','2019-04-21 12:58:13',0,0,0,NULL,NULL,0),(72,'Luisana','Fernando','What do yornando?','2019-04-21 13:01:01',0,0,0,NULL,NULL,0),(73,'Luisana','Fernando','What do yornando?','2019-04-21 13:01:10',0,0,0,NULL,NULL,0),(74,'Luisana','Fernando','What do yornando?','2019-04-21 13:01:21',0,0,0,NULL,NULL,0),(75,'Luisana','Fernando','What do yornando?','2019-04-21 13:04:39',0,0,0,NULL,NULL,0),(76,'Luisana','Fernando','What do you wantlando?','2019-04-21 13:05:21',0,0,0,NULL,NULL,0),(77,'Luisana','Fernando','What do you want to say to Fernando?','2019-04-21 13:05:23',0,0,0,NULL,NULL,0),(78,'Luisant','FD','&#60;img src=&#34;https://cdn.okccdn.com/media/img/emojis/apple/1F60C.png&#34;/&#62;','2019-04-23 19:45:41',0,0,0,NULL,NULL,0),(79,'Fernando','Yohann','NKBKHK','2019-04-25 18:28:24',0,0,0,'Brown','Pink',0),(80,'Fernando','Yohann','What do you want to say to Yohann?aa','2019-04-25 18:43:49',0,0,0,'Brown','Pink',0),(81,'Fernando','Yohann','aaa','2019-04-25 18:43:53',0,0,0,'Brown','Pink',0),(82,'Fernando','Yohann','asa','2019-04-25 18:44:04',0,0,0,'Brown','Pink',0),(83,'Fernando','Yohann','qqq','2019-04-25 18:44:09',0,0,0,'Brown','Pink',0),(84,'Fernando','Yohann','asa','2019-04-25 18:47:52',0,0,0,'Brown','Pink',0),(85,'Fernando','Yohann','qqq','2019-04-25 18:52:29',0,0,0,'Brown','Pink',0),(86,'Fernando','Yohann','kk','2019-04-25 18:53:31',0,0,0,'Brown','Pink',0),(87,'Fernando','Yohann','eeew','2019-04-25 19:10:08',0,0,0,'Brown','Pink',0),(88,'Fernando','Yohann','3rweretreyryr','2019-04-25 19:10:14',0,0,0,'Brown','Pink',0),(89,'Fernando','Luisana','eadsdfad','2019-04-26 19:42:08',0,0,0,'Brown','Pink',0),(90,'Fernando','Luisana','fafdaag','2019-04-26 19:42:37',0,0,0,'Brown','Pink',0),(91,'Luisana','Fernando','FERNANDO!!!','2019-04-04 00:00:00',0,0,0,NULL,NULL,0),(92,'Fernando','Luisana','adfadsfa','2019-04-26 19:47:49',0,0,0,'Brown','Pink',0),(93,'Luisana','Fernando','FERNANDO!!!','2019-05-04 00:00:00',0,0,0,NULL,NULL,0),(94,'Luisana','Fernando','FERNANDO!!!','2019-05-04 00:00:00',0,0,0,NULL,NULL,0),(95,'Fernando','Luisana','adfadsfa','2019-04-26 19:49:28',0,0,0,'Brown','Pink',0),(96,'Fernando','Luisana','ssdff','2019-04-26 19:49:49',0,0,0,'Brown','Pink',0),(97,'Fernando','Yohann','wrewrw','2019-04-26 22:48:17',0,0,0,'Brown','Pink',0),(98,'Fernando','Yohann','wooooo','2019-04-26 22:52:57',0,0,0,'Brown','Pink',0),(99,'Fernando','Yohann','fsafsdf','2019-04-26 22:54:11',0,0,0,NULL,NULL,0),(100,'Fernando','Yohann','ugiigikhihkhk','2019-04-27 10:40:02',0,0,0,'Brown','Pink',0),(101,'Fernando','Yohann','hhhh','2019-04-28 00:05:22',0,0,0,'Brown','Pink',0),(102,'Laundon','Fernando','putain merde nique','2019-09-15 20:37:55',0,0,0,'Brown','Pink',0),(103,'Fernando','Laundon','allo putain merde mange de la marde&#13;&#10;','2019-09-15 20:38:29',0,0,0,'Brown','Pink',0),(104,'Laundon','Fernando','putain merde nique','2019-09-15 20:38:34',0,0,0,'Brown','Pink',0),(105,'Fernando','Yohann','fafagg','2024-12-17 11:37:32',0,0,0,'Brown','Pink',0),(106,'Fernando','Yohann','dsDSd','2024-12-17 11:47:24',0,0,0,'Brown','Pink',0),(107,'Bitch','Pig','Hello pigggi&#13;&#10;','2024-12-19 20:43:17',0,0,0,'Brown','Pink',0),(108,'Pig','Bitch','Hello BROKI YOU BROKE shamelsss disgustin','2024-12-19 20:44:03',0,0,0,'Brown','Pink',0),(109,'Bitch','Pig','FU','2024-12-19 20:44:27',0,0,0,'Brown','Pink',0),(110,'Bitch','Pig','Bye&#13;&#10;','2024-12-19 20:44:31',0,0,0,'Brown','Pink',0),(111,'Fernando','Lion','Helloooooo','2024-12-21 10:08:04',0,0,0,'Brown','Pink',0);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
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
