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
-- Table structure for table `p1usuarios`
--

DROP TABLE IF EXISTS `p1usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p1usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mdp` varchar(500) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `sexe` varchar(1) DEFAULT NULL,
  `nais` date DEFAULT NULL,
  `courriel` varchar(50) DEFAULT NULL,
  `nationalite` varchar(50) DEFAULT NULL,
  `cel` varchar(20) DEFAULT NULL,
  `poids` int DEFAULT NULL,
  `poidsesp` int DEFAULT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `niveau` varchar(20) DEFAULT NULL,
  `taille` int DEFAULT NULL,
  `typecorps` varchar(20) DEFAULT NULL,
  `freq` varchar(20) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `Insta` varchar(200) DEFAULT NULL,
  `tw` varchar(200) DEFAULT NULL,
  `autres` varchar(200) DEFAULT NULL,
  `tailleu` varchar(10) DEFAULT NULL,
  `poidsu` varchar(10) DEFAULT NULL,
  `poidseu` varchar(10) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `userid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p1usuarios`
--

LOCK TABLES `p1usuarios` WRITE;
/*!40000 ALTER TABLE `p1usuarios` DISABLE KEYS */;
INSERT INTO `p1usuarios` VALUES (11,'$argon2i$v=19$m=1024,t=2,p=2$c1ZuYURzOWJNSy9NOXAyZw$faPdN7N3MOT6k8ISVrnEMNFQ27Pw4Eo+k2WdItoVLgU','cristiano','M','2020-11-11','admin@fernandodupaysdelicorne.com','','',10,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,'','22-11-30 10:00:46tabarnakcristiano'),(10,'$argon2i$v=19$m=1024,t=2,p=2$RWxrYVhOdEdQQTVZdU5rQw$oCjEdnrRqBPq5pm9rxSsBfD9TnTga+d62z+xgPNJQ1I','Fernando3800x','M','3000-09-10','huachao@ualberta.ca','Japanese','12345567',33,NULL,'Doctor',NULL,44,NULL,NULL,'','','','','cm','kg',NULL,'drapeaux/5fcbe47fef028.png','18-11-30 06:46:26tabarnakFernando'),(12,'$argon2i$v=19$m=1024,t=2,p=2$Rmw3d0l5dk1aczMwMW9OSA$6FozvQFWLLcbeJupL7yzXdJfZaFUR7cjAJWzx19zBps','LeiBei','M','2020-11-11','787651710@qq.com','','',44,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,'','03-12-02 03:30:02tabarnakLeiBei'),(13,'$argon2i$v=19$m=1024,t=2,p=2$c2ZwL3FGdTZDTDlYbGJaSA$ZBWi25y93W9kaFez5XwVrnDSNssufEMMkBMEXGYEqRc','JesusGozalez','M','2020-11-11','fernando@fernandodupaysdelicorne.com','','',33,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,'','03-12-02 03:33:54tabarnakJesusGozalez'),(14,'$argon2i$v=19$m=1024,t=2,p=2$WHhybGlIN1Y0YzdNNUxJZg$1DLYK9TKERGC3m4vgZ3oK/yyF3qEScuuc8R+QMe6iLI','JohnSmith','M','2020-11-11','fernan1@fernandodupaysdelicorne.com','','',33,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,'','03-12-02 03:34:50tabarnakJohnSmith'),(15,'$argon2i$v=19$m=1024,t=2,p=2$a3U4NzJQSGE3SS5JQmIxcw$Uk25JvtXNbg5V4yS4836YL0c2uVOsr+c+wkehRm4Br4','AlejandroLee','M','2020-11-11','alejo@fernandodupaysdelicorne.com','','',33,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,'','03-12-02 03:35:12tabarnakAlejandroLee'),(16,'$argon2i$v=19$m=1024,t=2,p=2$YmNrQndvME1XcDloN1UwOQ$FIf6M7nZ8Mjl2NCTy5irAAUDNWErzaNTreCmcRXgLMc','Yohann','M','2020-11-11','yohann@fernandodupaysdelicorne.com','','',33,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,'','03-12-02 03:35:43tabarnakYohann'),(17,'$argon2i$v=19$m=1024,t=2,p=2$TlR1NzN1eXZuR2VaSTAzUA$8WrfRpGngfKYDPo2ktwxPgCcl4XAwsKgfXBigvydnJ8','SaraUzbeki','M','2020-11-11','137677529@qq.com','','',33,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,'','03-12-02 03:36:14tabarnakSaraUzbeki');
/*!40000 ALTER TABLE `p1usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 12:37:55
