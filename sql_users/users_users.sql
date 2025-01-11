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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `favorite_color` varchar(120) DEFAULT NULL,
  `password_hash` varchar(1028) NOT NULL,
  `username` varchar(20) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `about_author` text,
  `profile_pic` varchar(1028) DEFAULT NULL,
  `status` enum('ONLINE','OFFLINE','BUSY','AWAY') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'Fernando Olga','hli@fqm.ca','2024-12-15 16:43:18','Bleu','scrypt:32768:8:1$YcNWsH4MmHHgX4nx$41f33407635d3ee91a7ed535091a95af5c0e59aad5b3db68c26b13e764b9adef7ed5b331ad6abb375f0fb3e42bf1851b9cd5e0eee6eb56fbcf8c2d9ef3f8a8be','Fernando',1,'Le sorcier qui a inventé la machine de temps','14a008f2-bfa6-11ef-9265-00000000000c_pro4.jpg','OFFLINE'),(16,'Alexandre','alex@jmail.com','2024-12-21 09:26:06','Bleu','scrypt:32768:8:1$HJ1eeL6HbOJpPuID$dc6ffedd3e632a4a1034cc3baf715b423583162590132e3388e57680b2ed5da8e0d16e42834e9365533b881d45cff5d700ec4a154c662b76fc8eca7563d7862b','Alexandre',1,'Je suis un fake compte','c621b315-bfa8-11ef-995b-000000000010_pro5.jpeg','OFFLINE'),(17,'Séraphine LaFleur','Seraphine@qq.com','2024-12-21 09:58:28','Bleu','scrypt:32768:8:1$LerSzBAyfq9Hz29v$139bcfaffe7093dde6b70227659ad219e51d60beea04bc1d2612e41a2bb074d6f9fca0c334e8c0aac3aedf23e01707200dea31c0532a1dea95ac1cee13746619','Seraphine',1,'C\'est une sorcière qui enseigne la magie d\'amour.','4e1d93a3-bfb0-11ef-bb50-000000000011_pro8.jpg','OFFLINE'),(18,'Josiane Pichet','josiane@fadsgfdqg.com','2024-12-21 09:58:28','Bleu','scrypt:32768:8:1$kpgwAsDkNkvogr0F$83899fdc729e33ba55d106970336c7fd1b306502a50b77f7eba5944d6c614723d055f1a41c6866ab37faaeb19a442503c2cf0d63e3de153e12f58a90ad1e9565','Josiane',1,'Je suis professeur de la danse de forêt','9f934985-bfb1-11ef-ad2f-000000000012_pro6.jpg','OFFLINE'),(19,'Marine Le Crayon','marine@8080.com','2024-12-21 09:58:28','Bleu','scrypt:32768:8:1$fEiQ4DwS5oylQNOr$035982183a68d93d807ae155ab93460316ae695ab2c8c4d4fe4c7dd73927181e0195809bbebf48afded4b0d486b94bac110b7c2a1e6e5956e7847f4405a32664','Marine',1,'Je suis la présidente de la terre sacrée de la tribu de Dana','4356655c-bfb2-11ef-bbe3-000000000013_pro7.jpg','OFFLINE'),(20,'Maluma de la Fuente','maluma@fdafad.fcom','2024-12-21 11:06:22','Bleu','scrypt:32768:8:1$mU0ZoqlCnj8rvehn$6b8a2c35c950fe2b0bd683ccdd9243a8f1b58acf1bc1e7d6c7c273f794ba57109905d18e397d0bb47249d653d841502b3b416e3976dea16ace7431b43da07fe7','Maluma',1,'Je suis un chanteur sexy','a00771de-bfbb-11ef-8e17-000000000014_pro5.jpg','OFFLINE'),(21,'Mimi Wong','mimi@usa.ca','2024-12-21 11:06:22','Bleu','scrypt:32768:8:1$IWEOel4a4LwYwuYK$849ed74cce947ec1e1a5699fe6318734d2f1121923df104a7ed0bde9ad7565e9a8d47e75df93be9efbe928f57f4995d4124e0afbd1313105e78b2b86572300d5','Mimi',1,'Je suis un chat','dec0ea8b-bfbb-11ef-9b1a-000000000015_pro3.jpg','OFFLINE'),(22,'Erkin Mehmet','erkin@btm.ca','2024-12-21 11:06:22','Bleu','scrypt:32768:8:1$ivxG3PLLu8aphZeT$8c2557c85f2a5079dd65aad794eded89c9ced58d0138ae5b3043129abdf73c6eadce9bc3dd66ae154ccf25581b99ea5b261bd4ad9fd42521066ca675fc7635f2','Erkin',1,'Je suis le deuxième compte de Fer','53b01891-bfbc-11ef-8611-000000000016_pro9.jpg','OFFLINE'),(23,'Michelle-Marie Lebeau','mit@qq.com','2024-12-21 11:06:22','Bleu','scrypt:32768:8:1$OwxtwSQa3KPQMLud$ce7c142fcd65aee6817c96abc1a68fa0331947bd3b66afa783faa3d2ba5613d49f371bae7d4bf3dfb22c2d185e4a7e00b3a57bbbf25999a46d4ee7c3bbdb852f','Lebeau',1,'Une inconnue','c085edcb-bfbc-11ef-94a0-000000000017_pro10.jpg','OFFLINE'),(24,'Moo-Deng L\'hippopotamus','huachaomd@ualberta,ca','2024-12-21 11:06:22','Bleu','scrypt:32768:8:1$qOJfKBvBPxz0myl4$a5dcb0c1432a852c66d57f0f73a0f5eeffa73512096e67ee70759675f490b099787be75f3717a8ccb5c72bac0c178f3863f37ebb82bbe388d3e64b0cffc14ba0','MD',1,'Je suis fameux','177c6fc1-bfbd-11ef-a55c-000000000018_pro11.jpg','OFFLINE'),(25,'Jérôme-Pierre Antoine','jp@jp.jp','2024-12-21 11:06:22','Bleu','scrypt:32768:8:1$OLaGqI09A1TRtnK8$9a1e18c36f5c54fb0ab967aa055a0f0f0a7aeb04a2ed33a61264ada2361997492121a6c874f584bf0bc126f299248c33a23271367735d7f5314e9ff18f50bcc9','JP',1,'Je ne suis pas japonais','776df50a-bfbd-11ef-b081-000000000019_pro12.png','OFFLINE'),(26,'Tom-Pierre Sesmois','TSP@CC.OM','2024-12-21 11:06:22','Bleu','scrypt:32768:8:1$NpWZlLywadweV2Av$8837e059bce8e5b117b43ec6561805cabe78c4ff2a9365fcd18b5c632d20232709405379d92b845f55c7a60ae46d0e02558eceffbca8610c60c215a1a0618d82','TPS',1,'Je ne suis pas ton père, ne m\'en veux pas','ed47ef62-bfbd-11ef-ae57-00000000001a_pro13.jpg','OFFLINE'),(27,'Jason Smith','JSo@ualberta,ca','2024-12-23 19:57:22','Bleu','scrypt:32768:8:1$9KJ4jf9JSnaaaofS$d78feaca548665c37514dee06e120bde1fd28a7b8cee1f8de5e5210ad77a7c63e350219b5399b1f0c2f32fdb17327a212a1322870697810c452f4e5d5f470f67','JS',1,'Je suis un robot.','8c207545-c195-11ef-b0c2-00000000001b_fat.jpg','OFFLINE'),(28,'Pipibam Cassandra','pp@fdfadfa.com','2024-12-24 10:42:44','red','scrypt:32768:8:1$cbumEXw0F2DhCtfD$0e5655439ef15873dc72c269ea54fdcb754e510952d369504bbdeab7a8abfe12fab28dc9e7e5377a92e4912c876db35e7b11ad66f415e1287c1ac1bf7a4364a2','PP',1,'Random',NULL,'OFFLINE');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 11:53:29
