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
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `admission_id` int DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('Paid','Pending') DEFAULT 'Pending',
  `payment_date` datetime DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `patient_id` (`patient_id`),
  KEY `admission_id` (`admission_id`),
  CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `billing_ibfk_2` FOREIGN KEY (`admission_id`) REFERENCES `admissions` (`admission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (1,1,1,2000.00,'Pending',NULL),(2,2,2,3500.00,'Paid','2023-05-02 12:00:00'),(3,3,3,1500.00,'Pending',NULL),(4,4,4,5000.00,'Paid','2023-05-04 14:00:00'),(5,5,5,1000.00,'Pending',NULL),(6,6,6,2500.00,'Pending',NULL),(7,7,7,7000.00,'Paid','2023-05-07 10:00:00'),(8,8,8,3000.00,'Pending',NULL),(9,9,9,1200.00,'Paid','2023-05-09 11:00:00'),(10,10,10,1500.00,'Pending',NULL),(11,11,11,2000.00,'Pending',NULL),(12,12,12,3500.00,'Paid','2023-05-12 12:00:00'),(13,13,13,1500.00,'Pending',NULL),(14,14,14,5000.00,'Paid','2023-05-14 14:00:00'),(15,15,15,1000.00,'Pending',NULL),(16,16,16,2500.00,'Pending',NULL),(17,17,17,7000.00,'Paid','2023-05-17 10:00:00'),(18,18,18,3000.00,'Pending',NULL),(19,19,19,1200.00,'Paid','2023-05-19 11:00:00'),(20,20,20,1500.00,'Pending',NULL);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
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
