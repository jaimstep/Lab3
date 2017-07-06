-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: fave_restaurants
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Current Database: `fave_restaurants`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fave_restaurants` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fave_restaurants`;

--
-- Table structure for table `completed`
--

DROP TABLE IF EXISTS `completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completed` (
  `restaurantID` int(11) DEFAULT NULL,
  `cuisineID` int(11) DEFAULT NULL,
  `completedMetadata` blob,
  UNIQUE KEY `pkcompleted` (`restaurantID`,`cuisineID`),
  KEY `restaurantID_idx` (`restaurantID`),
  KEY `cuisineID_idx` (`cuisineID`),
  CONSTRAINT `cuisineID` FOREIGN KEY (`cuisineID`) REFERENCES `cuisine` (`cuisineID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `restaurantID` FOREIGN KEY (`restaurantID`) REFERENCES `fave_rest` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed`
--

LOCK TABLES `completed` WRITE;
/*!40000 ALTER TABLE `completed` DISABLE KEYS */;
INSERT INTO `completed` VALUES (1,18,'10010101'),(2,17,'101001010'),(3,1,'1001010'),(4,18,'100101010'),(5,8,'1001001');
/*!40000 ALTER TABLE `completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count_id`
--

DROP TABLE IF EXISTS `count_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `count_id` (
  `CountryID` int(11) NOT NULL AUTO_INCREMENT,
  `Country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CountryID`),
  CONSTRAINT `CountryID` FOREIGN KEY (`CountryID`) REFERENCES `fave_rest` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count_id`
--

LOCK TABLES `count_id` WRITE;
/*!40000 ALTER TABLE `count_id` DISABLE KEYS */;
INSERT INTO `count_id` VALUES (1,'USA'),(2,'Spain'),(3,'Indonesia'),(4,'Brazil'),(5,'Peru');
/*!40000 ALTER TABLE `count_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuisine`
--

DROP TABLE IF EXISTS `cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuisine` (
  `cuisineID` int(11) NOT NULL AUTO_INCREMENT,
  `cuisineName` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`cuisineID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuisine`
--

LOCK TABLES `cuisine` WRITE;
/*!40000 ALTER TABLE `cuisine` DISABLE KEYS */;
INSERT INTO `cuisine` VALUES (1,'French'),(2,'Greek'),(3,'Japanese'),(4,'Mexican'),(5,'Turkish'),(6,'Cajun'),(7,'Indian '),(8,'Indonesian'),(9,'Soul Food '),(10,'Italian'),(11,'Chinese'),(12,'Caribbean'),(13,'Russian'),(14,'Pakistani'),(15,'British'),(16,'Jewish'),(17,'Spanish'),(18,'New American');
/*!40000 ALTER TABLE `cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fave_rest`
--

DROP TABLE IF EXISTS `fave_rest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fave_rest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  `CountryID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fave_rest`
--

LOCK TABLES `fave_rest` WRITE;
/*!40000 ALTER TABLE `fave_rest` DISABLE KEYS */;
INSERT INTO `fave_rest` VALUES (1,'Alinea','1723 Halsted St.','Chicago','60614','1'),(2,'Mugaritz','Aldura Gunea Aldea 20','Errenteria','20100','2'),(3,'D.O.M.','R. Barao de Capanema 549 - Jardins','Sao Paulo','1411','4'),(4,'Eleven Madison Park','11 Madison Ave','New York City','10110','1'),(5,'Central','Santa Isabel 376 Miraflores','Lima','19020','5'),(6,'Merah Putih','Jl. Petitenget No. 100X','Kuta Utara','80361','3');
/*!40000 ALTER TABLE `fave_rest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-05 20:24:09
