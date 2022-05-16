-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: db_saw
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `saw_alternatives`
--

DROP TABLE IF EXISTS `saw_alternatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saw_alternatives` (
  `id_alternative` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id_alternative`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saw_alternatives`
--

LOCK TABLES `saw_alternatives` WRITE;
/*!40000 ALTER TABLE `saw_alternatives` DISABLE KEYS */;
INSERT INTO `saw_alternatives` VALUES (1,'Chairani Syifa'),(2,'Rafida Raudina'),(3,'Teguh Purnomo'),(4,'Wahyu Guntoro'),(5,'Siska Febrinika');
/*!40000 ALTER TABLE `saw_alternatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saw_criterias`
--

DROP TABLE IF EXISTS `saw_criterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saw_criterias` (
  `id_criteria` tinyint(3) unsigned NOT NULL,
  `criteria` varchar(100) NOT NULL,
  `weight` float NOT NULL,
  `attribute` set('benefit','cost') DEFAULT NULL,
  PRIMARY KEY (`id_criteria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saw_criterias`
--

LOCK TABLES `saw_criterias` WRITE;
/*!40000 ALTER TABLE `saw_criterias` DISABLE KEYS */;
INSERT INTO `saw_criterias` VALUES (1,'Masa Kerja',0.25,'benefit'),(2,'Penilaian Kerja',0.5,'benefit'),(3,'Perilaku',0.25,'benefit');
/*!40000 ALTER TABLE `saw_criterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saw_evaluations`
--

DROP TABLE IF EXISTS `saw_evaluations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saw_evaluations` (
  `id_alternative` smallint(5) unsigned NOT NULL,
  `id_criteria` tinyint(3) unsigned NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id_alternative`,`id_criteria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saw_evaluations`
--

LOCK TABLES `saw_evaluations` WRITE;
/*!40000 ALTER TABLE `saw_evaluations` DISABLE KEYS */;
INSERT INTO `saw_evaluations` VALUES (3,3,0.8),(3,2,0.8),(3,1,0.2),(2,3,0.8),(2,2,0.8),(2,1,0.4),(1,3,0.8),(1,2,0.8),(1,1,0.6),(4,1,0.2),(4,2,0.8),(5,1,0.2),(4,3,0.8),(5,2,0.8),(5,3,0.8);
/*!40000 ALTER TABLE `saw_evaluations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saw_users`
--

DROP TABLE IF EXISTS `saw_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saw_users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saw_users`
--

LOCK TABLES `saw_users` WRITE;
/*!40000 ALTER TABLE `saw_users` DISABLE KEYS */;
INSERT INTO `saw_users` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `saw_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16 22:42:14
