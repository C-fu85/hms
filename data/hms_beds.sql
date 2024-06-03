-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hms
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beds` (
  `bed_id` int NOT NULL AUTO_INCREMENT,
  `ward_id` int NOT NULL,
  `bed_type` enum('General','ICU','Private','Semi-private') DEFAULT NULL,
  `status` enum('Available','Occupied','Under Maintenance') DEFAULT 'Available',
  PRIMARY KEY (`bed_id`),
  KEY `ward_id` (`ward_id`),
  CONSTRAINT `beds_ibfk_1` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`ward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES (1,1,'General','Occupied'),(2,1,'General','Occupied'),(3,2,'ICU','Available'),(4,2,'ICU','Occupied'),(5,3,'Private','Available'),(6,3,'Private','Occupied'),(7,4,'Semi-private','Available'),(8,4,'Semi-private','Occupied'),(9,5,'General','Available'),(10,5,'General','Occupied'),(11,6,'General','Available'),(12,6,'General','Occupied'),(13,7,'ICU','Available'),(14,7,'ICU','Occupied'),(15,8,'Private','Available'),(16,8,'Private','Occupied'),(17,9,'Semi-private','Available'),(18,9,'Semi-private','Occupied'),(19,10,'General','Available'),(20,10,'General','Occupied'),(21,11,'General','Available'),(22,11,'General','Occupied'),(23,12,'General','Available'),(24,12,'General','Occupied'),(25,13,'General','Available'),(26,13,'General','Occupied'),(27,14,'General','Available'),(28,14,'General','Occupied');
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 23:08:27
