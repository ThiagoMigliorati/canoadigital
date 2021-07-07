-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: node_api
-- ------------------------------------------------------
-- Server version	5.1.60-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `veiculo` varchar(255) NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `vendido` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculos`
--

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` VALUES (13,'update-2','marca up',2000,'desc up','0','2021-07-07 13:15:23','2021-07-07 10:16:36'),(16,'update-casfdasdf','marca up',2000,'desc up','0','2021-07-07 12:59:20','2021-07-07 10:16:42'),(19,'update-2','marca up',2000,'desc up','0','2021-07-07 10:44:37','2021-07-07 10:16:44'),(22,'update-2dfasdf','marca up',2000,'desc up','0','2021-07-07 13:18:34','2021-07-07 10:22:30'),(23,'rrrr','marca up',2000,'desc up','1','2021-07-07 13:18:47','2021-07-07 11:19:17'),(24,'update-create','marca up',2000,'desc up','1','2021-07-07 11:19:25','2021-07-07 11:19:25'),(25,'update-create','marca up',2000,'desc up','1','2021-07-07 11:19:28','2021-07-07 11:19:28'),(26,'tste','sfa',NULL,'asdf','0','2021-07-07 11:20:18','2021-07-07 11:20:18'),(27,'tstedfasdf','sfa',NULL,'asdf','0','2021-07-07 11:20:33','2021-07-07 11:20:33'),(28,'tstedfasdf','',NULL,'asdf','0','2021-07-07 11:20:38','2021-07-07 11:20:38'),(29,'tstedfasdf','adsfsadf',NULL,'asdf','0','2021-07-07 11:20:42','2021-07-07 11:20:42'),(30,'tstedfasdf','adsfsadfdf',NULL,'asdf','0','2021-07-07 11:21:06','2021-07-07 11:21:06'),(31,'tstedfasdf','adsfsadfdf',NULL,'asdf','0','2021-07-07 11:21:16','2021-07-07 11:21:16'),(32,'tstedfasdf','adsfsadfdf',NULL,'asdf','0','2021-07-07 11:21:20','2021-07-07 11:21:20'),(33,'tstedfasdf','adsfsadfdf',NULL,'asdf','0','2021-07-07 11:21:21','2021-07-07 11:21:21'),(34,'vds','asdf',2022,'asdf','0','2021-07-07 11:27:16','2021-07-07 11:27:16'),(35,'vds','asdf',2022,'asdf','0','2021-07-07 11:27:22','2021-07-07 11:27:22'),(36,'vds','asdf',2022,'asdf','0','2021-07-07 11:27:23','2021-07-07 11:27:23'),(37,'vds','asdf',2022,'asdf','0','2021-07-07 11:27:24','2021-07-07 11:27:24'),(38,'vds','asdf',2022,'asdf','0','2021-07-07 11:27:26','2021-07-07 11:27:26'),(39,'hommer','alfa',2022,'asdfas','0','2021-07-07 13:02:43','2021-07-07 13:02:43'),(40,'dsfas','fasdf',2022,'sadf','0','2021-07-07 13:05:57','2021-07-07 13:05:57'),(41,'rrr','rrr',2022,'rrr','0','2021-07-07 13:14:28','2021-07-07 13:14:28'),(42,'sdfg','asdf',2022,'asdf','0','2021-07-07 13:18:25','2021-07-07 13:18:25');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'node_api'
--

--
-- Dumping routines for database 'node_api'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07 11:46:21
