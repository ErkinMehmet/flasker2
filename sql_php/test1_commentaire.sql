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
-- Table structure for table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentaire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `commentaire` text NOT NULL,
  `hidden` int DEFAULT NULL,
  `temps` date DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL,
  `correo` varchar(50) NOT NULL,
  `cel` varchar(20) NOT NULL,
  `login` varchar(200) DEFAULT NULL,
  `pays` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentaire`
--

LOCK TABLES `commentaire` WRITE;
/*!40000 ALTER TABLE `commentaire` DISABLE KEYS */;
INSERT INTO `commentaire` VALUES (1,'Luisana de Amania','Es muy bonito! Me encanta el diseño y el contenido.',0,'2019-07-10',NULL,'','',NULL,NULL),(2,'Jennifer Lopez','Me encanta jajajajajajaja te quero',0,'2019-07-22',NULL,'','',NULL,NULL),(5,'Maluma','AH tu me calienta :( ',0,'2019-07-12',NULL,'','',NULL,NULL),(6,'uhh','uhh',0,'2019-11-26',NULL,'','',NULL,NULL),(7,'dfads','Please enter your comments over here!<b>Bold</b>',0,'2020-03-20',NULL,'','',NULL,NULL),(8,'Maria2','Please enter your comments over here!\r\n\r\n<b>Bolddsfadfa i have bold content</b>',0,'2020-03-20',NULL,'','',NULL,NULL),(9,'jhn','Please enter your comments over here! <b>&nbsp;dd&nbsp;John</b>',0,'2020-03-20',NULL,'','',NULL,NULL),(10,'lobo','Please enter your comments over here!\r\n\r\n<img src=\"http://localhost:8888/avril/drapeaux/AG.png\" width=\"30\">',0,'2020-03-20',NULL,'','',NULL,NULL),(11,'lobo','Please enter your comments over here!\r\n\r\n<img src=\"http://localhost:8888/avril/drapeaux/AG.png\" width=\"30\">',0,'2020-03-20',NULL,'','',NULL,NULL),(12,'adfasd','Please enter your comments over hedafre!\r\n\r\n',0,'2020-03-20',NULL,'','',NULL,NULL),(13,'adfasd','Please enter your comments over hedafre!\r\n\r\n',0,'2020-03-20',NULL,'','',NULL,NULL),(14,'bueaut','Please enter your comments over here!kitty',0,'2020-03-20',NULL,'','',NULL,NULL),(15,'ss','<span style=\"font-size: 18px; background-color: rgb(211, 211, 211);\">Please enter your comments over here!kitty</span>',0,'2020-03-20',NULL,'','',NULL,NULL),(16,'sd','<span style=\"font-size: 18px; background-color: rgb(211, 211, 211);\">Please enter your comments over here!kitty</span>',0,'2020-03-20',NULL,'','',NULL,NULL),(17,'aaa','<span style=\"font-size: 18px; background-color: rgb(211, 211, 211);\">Please enter your comments over here!kitty</span>',0,'2020-03-20',NULL,'','',NULL,NULL),(18,'aa','Please enter your comments over here!\r\n\r\n',0,'2020-03-20',NULL,'','',NULL,NULL),(19,'armero','sadjfljadfjfjjfjdjfladfladjslfj;asfjsafjsajf;sajf;ajsf;j;sajf;dasjf;asfjdads;fj;asfjd;asjfasdjf;adsjf;adsf<img src=\"http://localhost:8888/avril/drapeaux/AR.png\" width=\"30\">',0,'2020-03-20',NULL,'','',NULL,NULL),(20,'Poop','fuck tabarnak ldafoadjfoadflnadslfndaslgjdaslgjladsjgfladsjgladsjgjasdlgjdalsgjas<img src=\"http://localhost:8888/avril/drapeaux/PH.png\" width=\"30\"><img src=\"http://localhost:8888/avril/drapeaux/SC.png\" width=\"30\"><img src=\"http://localhost:8888/avril/drapeaux/SC.png\" width=\"30\"><img src=\"http://localhost:8888/avril/drapeaux/SC.png\" width=\"30\"><img src=\"http://localhost:8888/avril/drapeaux/SC.png\" width=\"30\">',0,'2020-03-20',NULL,'','',NULL,NULL),(21,'SSDFD','Please enter your comments over here!dfadfafadasfa<img src=\"http://localhost:8888/avril/drapeaux/BS.png\" width=\"30\">fdafafafadsfdasfasdfadsfdasf',0,'2020-03-21','fuck','','3242424','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Safari/605.1.15',NULL),(22,'Alberto Fernández','Please enter your comments over here!sdsdsd',0,'2020-11-24','Buenos Aires','yourname@govr.ar','123456','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Safari/605.1.15',NULL),(23,'Alberto Fernández','resfasdfasfadsfadsfadsfdasfdasfdddddddddddddddresfasdfasfadsfadsfadsfdasfdasfdddddddddddddddresfasdfasfadsfadsfadsfdasfdasfdddddddddddddddresfasdfasfadsfadsfadsfdasfdasfdddddddddddddddresfasdfasfadsfadsfadsfdasfdasfddddddddddddddd',0,'2020-11-24','Buenos Aires','yourname@govr.ar','123456','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Safari/605.1.15','http://localhost:8888/novveint/drapeaux/DJ.png'),(24,'Anonymous','sfSDsdD',0,'2024-12-17','Santa Fe','yourname@govr.ar','123456','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','drapeaux/AR.png'),(25,'Anonymous','DdFFEQFEQWFQWFQGWGQGEQWGFEQWGEQWGQGQWGQWG',0,'2024-12-17','Santa Fe','yourname@govr.ar','123456','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','http://localhost:8000/drapeaux/IS.png'),(26,'Anonymous','Hola<br><br>',0,'2024-12-19','Santa Fe','yourname@govr.ar','123456','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','drapeaux/AR.png');
/*!40000 ALTER TABLE `commentaire` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 12:37:57
