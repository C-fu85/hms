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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `appointment_date` datetime NOT NULL,
  `reason_for_visit` varchar(255) DEFAULT NULL,
  `status` enum('Scheduled','Completed','Cancelled') DEFAULT 'Scheduled',
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,1,1,'2023-05-01 09:00:00','Routine Checkup','Scheduled'),(2,2,2,'2023-05-02 13:00:00','Follow-up','Scheduled'),(3,3,3,'2023-05-03 11:00:00','New Symptoms','Scheduled'),(4,4,4,'2023-05-04 10:00:00','Lab Results','Scheduled'),(5,5,5,'2023-05-05 14:00:00','Medication Refill','Scheduled'),(6,6,6,'2023-05-06 12:00:00','Specialist Consultation','Scheduled'),(7,7,7,'2023-05-07 09:00:00','Routine Checkup','Scheduled'),(8,8,8,'2023-05-08 13:00:00','Follow-up','Scheduled'),(9,9,9,'2023-05-09 11:00:00','New Symptoms','Scheduled'),(10,10,10,'2023-05-10 10:00:00','Lab Results','Scheduled'),(11,11,11,'2023-05-11 14:00:00','Medication Refill','Scheduled'),(12,12,12,'2023-05-12 12:00:00','Specialist Consultation','Scheduled'),(13,13,13,'2023-05-13 09:00:00','Routine Checkup','Scheduled'),(14,14,14,'2023-05-14 13:00:00','Follow-up','Scheduled'),(15,15,15,'2023-05-15 11:00:00','New Symptoms','Scheduled'),(16,16,16,'2023-05-16 10:00:00','Lab Results','Scheduled'),(17,17,17,'2023-05-17 14:00:00','Medication Refill','Scheduled'),(18,18,18,'2023-05-18 12:00:00','Specialist Consultation','Scheduled'),(19,19,19,'2023-05-19 09:00:00','Routine Checkup','Scheduled'),(20,20,20,'2023-05-20 13:00:00','Follow-up','Scheduled');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
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
