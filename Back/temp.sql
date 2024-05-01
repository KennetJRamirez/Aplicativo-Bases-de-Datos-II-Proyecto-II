CREATE DATABASE IF NOT EXISTS carretera_db; 
USE carretera_db; 
-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: carretera_db
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `carretera`
--

DROP TABLE IF EXISTS `carretera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carretera` (
  `ID_CARRETERA` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `ID_REGION` int(11) DEFAULT NULL,
  `ID_CATEGORIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CARRETERA`),
  KEY `ID_REGION` (`ID_REGION`),
  KEY `ID_CATEGORIA` (`ID_CATEGORIA`),
  CONSTRAINT `carretera_ibfk_1` FOREIGN KEY (`ID_REGION`) REFERENCES `catalogo_region` (`ID_REGION`),
  CONSTRAINT `carretera_ibfk_2` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `catalogo_categoria` (`ID_CATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carretera`
--

LOCK TABLES `carretera` WRITE;
/*!40000 ALTER TABLE `carretera` DISABLE KEYS */;
INSERT INTO `carretera` VALUES (1,'Carretera 1',1,1),(2,'Carretera 2',1,2),(3,'Carretera 3',1,3),(4,'Carretera 4',1,4),(5,'Carretera 5',1,1),(6,'Carretera 6',2,2),(7,'Carretera 7',2,3),(8,'Carretera 8',2,4),(9,'Carretera 9',2,1),(10,'Carretera 10',2,2),(11,'Carretera 11',3,3),(12,'Carretera 12',3,4),(13,'Carretera 13',3,1),(14,'Carretera 14',3,2),(15,'Carretera 15',3,3),(16,'Carretera 16',4,4),(17,'Carretera 17',4,1),(18,'Carretera 18',4,2),(19,'Carretera 19',4,3),(20,'Carretera 20',4,4),(21,'Carretera 21',1,1),(22,'Carretera 22',1,2),(23,'Carretera 23',1,3),(24,'Carretera 24',1,4),(25,'Carretera 25',1,1),(26,'Carretera 26',2,2),(27,'Carretera 27',2,3),(28,'Carretera 28',2,4),(29,'Carretera 29',2,1),(30,'Carretera 30',2,2),(31,'Carretera 31',3,3),(32,'Carretera 32',3,4),(33,'Carretera 33',3,1),(34,'Carretera 34',3,2),(35,'Carretera 35',3,3),(36,'Carretera 36',4,4),(37,'Carretera 37',4,1),(38,'Carretera 38',4,2),(39,'Carretera 39',4,3),(40,'Carretera 40',4,4),(41,'Carretera 41',1,1),(42,'Carretera 42',1,2),(43,'Carretera 43',1,3),(44,'Carretera 44',1,4),(45,'Carretera 45',1,1),(46,'Carretera 46',2,2),(47,'Carretera 47',2,3),(48,'Carretera 48',2,4),(49,'Carretera 49',2,1),(50,'Carretera 50',2,2);
/*!40000 ALTER TABLE `carretera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carretera_comunidad`
--

DROP TABLE IF EXISTS `carretera_comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carretera_comunidad` (
  `ID_CARRETERA_COMUNIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CARRETERA` int(11) DEFAULT NULL,
  `ID_COMUNIDAD` int(11) DEFAULT NULL,
  `KM` float DEFAULT NULL,
  PRIMARY KEY (`ID_CARRETERA_COMUNIDAD`),
  KEY `ID_CARRETERA` (`ID_CARRETERA`),
  KEY `ID_COMUNIDAD` (`ID_COMUNIDAD`),
  CONSTRAINT `carretera_comunidad_ibfk_1` FOREIGN KEY (`ID_CARRETERA`) REFERENCES `carretera` (`ID_CARRETERA`),
  CONSTRAINT `carretera_comunidad_ibfk_2` FOREIGN KEY (`ID_COMUNIDAD`) REFERENCES `comunidad` (`ID_COMUNIDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carretera_comunidad`
--

LOCK TABLES `carretera_comunidad` WRITE;
/*!40000 ALTER TABLE `carretera_comunidad` DISABLE KEYS */;
INSERT INTO `carretera_comunidad` VALUES (1,1,1,10),(2,2,2,11),(3,3,3,12),(4,4,4,10),(5,5,5,11),(6,6,6,12),(7,7,7,12),(8,8,8,11),(9,9,9,10),(10,10,10,9),(11,11,11,10),(12,12,12,11),(13,13,13,12),(14,14,14,12),(15,15,15,11),(16,16,16,10),(17,17,17,10),(18,18,18,11),(19,19,19,12),(20,20,20,11);
/*!40000 ALTER TABLE `carretera_comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_categoria`
--

DROP TABLE IF EXISTS `catalogo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_categoria` (
  `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_CATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_categoria`
--

LOCK TABLES `catalogo_categoria` WRITE;
/*!40000 ALTER TABLE `catalogo_categoria` DISABLE KEYS */;
INSERT INTO `catalogo_categoria` VALUES (1,'Local'),(2,'Comercial'),(3,'Regional'),(4,'Nacional');
/*!40000 ALTER TABLE `catalogo_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_region`
--

DROP TABLE IF EXISTS `catalogo_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_region` (
  `ID_REGION` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_REGION`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_region`
--

LOCK TABLES `catalogo_region` WRITE;
/*!40000 ALTER TABLE `catalogo_region` DISABLE KEYS */;
INSERT INTO `catalogo_region` VALUES (1,'Norte'),(2,'Sur'),(3,'Este'),(4,'Oeste');
/*!40000 ALTER TABLE `catalogo_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunidad`
--

DROP TABLE IF EXISTS `comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunidad` (
  `ID_COMUNIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_COMUNIDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunidad`
--

LOCK TABLES `comunidad` WRITE;
/*!40000 ALTER TABLE `comunidad` DISABLE KEYS */;
INSERT INTO `comunidad` VALUES (1,'Comunidad 1'),(2,'Comunidad 2'),(3,'Comunidad 3'),(4,'Comunidad 4'),(5,'Comunidad 5'),(6,'Comunidad 6'),(7,'Comunidad 7'),(8,'Comunidad 8'),(9,'Comunidad 9'),(10,'Comunidad 10'),(11,'Comunidad 11'),(12,'Comunidad 12'),(13,'Comunidad 13'),(14,'Comunidad 14'),(15,'Comunidad 15'),(16,'Comunidad 16'),(17,'Comunidad 17'),(18,'Comunidad 18'),(19,'Comunidad 19'),(20,'Comunidad 20');
/*!40000 ALTER TABLE `comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tramo`
--

DROP TABLE IF EXISTS `tramo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tramo` (
  `ID_TRAMO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `ID_CARRETERA` int(11) DEFAULT NULL,
  `ES_ASFALTADA` tinyint(1) DEFAULT NULL,
  `KM_ASFALTADA` float DEFAULT NULL,
  `KM_NO_ASFALTADO` float DEFAULT NULL,
  PRIMARY KEY (`ID_TRAMO`),
  KEY `ID_CARRETERA` (`ID_CARRETERA`),
  CONSTRAINT `tramo_ibfk_1` FOREIGN KEY (`ID_CARRETERA`) REFERENCES `carretera` (`ID_CARRETERA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tramo`
--

LOCK TABLES `tramo` WRITE;
/*!40000 ALTER TABLE `tramo` DISABLE KEYS */;
INSERT INTO `tramo` VALUES (1,'Tramo 1',1,1,5.2,2.5),(2,'Tramo 2',1,0,10.3,3.2),(3,'Tramo 3',1,1,7.5,4.7),(4,'Tramo 4',1,0,2.5,3.6),(5,'Tramo 5',1,1,3.6,3.5),(6,'Tramo 6',2,0,7.9,3.4),(7,'Tramo 7',2,1,8,3.3),(8,'Tramo 8',2,0,2.6,3.2),(9,'Tramo 9',2,1,3.5,2.3),(10,'Tramo 10',2,0,4.1,2.5),(11,'Tramo 11',3,1,2.5,6.1),(12,'Tramo 12',3,0,3.6,2),(13,'Tramo 13',3,1,7.8,3),(14,'Tramo 14',3,0,8,4),(15,'Tramo 15',3,1,9,2),(16,'Tramo 16',4,0,10,3),(17,'Tramo 17',4,1,10.5,2.5),(18,'Tramo 18',4,0,12,1.6),(19,'Tramo 19',4,1,11,2.3),(20,'Tramo 20',4,0,3.6,3.5),(21,'Tramo 21',5,1,7.8,3.4),(22,'Tramo 22',5,0,8.9,3.3),(23,'Tramo 23',5,1,9,3.2),(24,'Tramo 24',5,0,5.6,2.3),(25,'Tramo 25',5,1,5,2.5),(26,'Tramo 26',6,0,4.5,6.1),(27,'Tramo 27',6,1,3,2),(28,'Tramo 28',6,0,6,3),(29,'Tramo 29',6,1,2,4),(30,'Tramo 30',6,0,1.9,2),(31,'Tramo 31',7,1,7.8,3),(32,'Tramo 32',7,0,6,2.5),(33,'Tramo 33',8,1,6.5,3.2),(34,'Tramo 34',8,0,5.3,4.7),(35,'Tramo 35',9,1,5.6,3.6),(36,'Tramo 36',9,0,8,3.5),(37,'Tramo 37',9,1,9.1,3.4),(38,'Tramo 38',9,0,10,3.3),(39,'Tramo 39',10,1,11,3.2),(40,'Tramo 40',10,0,12.5,2.3),(41,'Tramo 41',10,1,12,2.5),(42,'Tramo 42',10,0,2.6,6.1),(43,'Tramo 43',11,1,3.8,2),(44,'Tramo 44',11,0,2.7,3),(45,'Tramo 45',12,1,8.2,4),(46,'Tramo 46',13,0,5.3,2),(47,'Tramo 47',14,1,4.9,3),(48,'Tramo 48',14,0,6.5,2.5),(49,'Tramo 49',15,1,4.8,1.6),(50,'Tramo 50',16,0,8.4,2.3);
/*!40000 ALTER TABLE `tramo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tramo_comunidad`
--

DROP TABLE IF EXISTS `tramo_comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tramo_comunidad` (
  `ID_TRAMO_COMUNIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `ID_TRAMO` int(11) DEFAULT NULL,
  `ID_COMUNIDAD` int(11) DEFAULT NULL,
  `KM_INICIO` float DEFAULT NULL,
  `KM_FIN` float DEFAULT NULL,
  PRIMARY KEY (`ID_TRAMO_COMUNIDAD`),
  KEY `ID_TRAMO` (`ID_TRAMO`),
  KEY `ID_COMUNIDAD` (`ID_COMUNIDAD`),
  CONSTRAINT `tramo_comunidad_ibfk_1` FOREIGN KEY (`ID_TRAMO`) REFERENCES `tramo` (`ID_TRAMO`),
  CONSTRAINT `tramo_comunidad_ibfk_2` FOREIGN KEY (`ID_COMUNIDAD`) REFERENCES `comunidad` (`ID_COMUNIDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tramo_comunidad`
--

LOCK TABLES `tramo_comunidad` WRITE;
/*!40000 ALTER TABLE `tramo_comunidad` DISABLE KEYS */;
INSERT INTO `tramo_comunidad` VALUES (1,1,1,2,4),(2,1,1,3,5),(3,1,2,6,8),(4,2,2,9,11),(5,2,3,10,11),(6,2,3,5,6),(7,3,4,7,8),(8,3,4,8,10),(9,3,5,9,11),(10,4,5,6,7),(11,4,6,7,9),(12,4,6,8,10),(13,5,7,9,11),(14,5,7,5,7),(15,5,8,6,9),(16,6,8,2,5),(17,6,9,3,5),(18,6,9,5,7),(19,7,10,7,9),(20,7,10,4,6),(21,7,11,1,3),(22,8,11,2,4),(23,8,12,5,6),(24,8,12,8,9),(25,9,13,9,11),(26,9,13,6,9),(27,9,14,3,5),(28,10,14,4,6),(29,10,15,2,5),(30,10,15,5,7),(31,11,16,6,9),(32,11,16,7,9),(33,11,17,9,11),(34,12,17,8,12),(35,12,18,7,9),(36,12,18,8,10),(37,13,19,8,10),(38,13,19,5,6),(39,13,20,6,7),(40,13,20,6,7);
/*!40000 ALTER TABLE `tramo_comunidad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 18:49:24
