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
-- Table structure for table `medical_records`
--

DROP TABLE IF EXISTS `medical_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_records` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `record_date` datetime NOT NULL,
  `description` text,
  `prescribed_medications` text,
  `treatment_details` text,
  `attending_doctor_id` int DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `patient_id` (`patient_id`),
  KEY `attending_doctor_id` (`attending_doctor_id`),
  CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `medical_records_ibfk_2` FOREIGN KEY (`attending_doctor_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_records`
--

LOCK TABLES `medical_records` WRITE;
/*!40000 ALTER TABLE `medical_records` DISABLE KEYS */;
INSERT INTO `medical_records` VALUES (1,1,'2023-05-01 09:30:00','Routine Checkup','None','Healthy',1),(2,2,'2023-05-02 13:30:00','Follow-up for fracture','Painkillers','Recovery on track',2),(3,3,'2023-05-03 11:30:00','Asthma Attack','Inhalers','Stable',3),(4,4,'2023-05-04 10:30:00','Lab Results Review','None','Normal',4),(5,5,'2023-05-05 14:30:00','Medication Refill','Metformin','Ongoing',5),(6,6,'2023-05-06 12:30:00','Specialist Consultation','Antihypertensives','Adjusted dosage',6),(7,7,'2023-05-07 09:30:00','Routine Checkup','None','Healthy',7),(8,8,'2023-05-08 13:30:00','Follow-up for stroke','Anticoagulants','Improving',8),(9,9,'2023-05-09 11:30:00','Arthritis Pain','NSAIDs','Managed',9),(10,10,'2023-05-10 10:30:00','Pneumonia Treatment','Antibiotics','Recovered',10),(11,11,'2023-05-11 14:30:00','Asthma Control','Inhalers','Stable',1),(12,12,'2023-05-12 12:30:00','Fracture Healing','Painkillers','Good',2),(13,13,'2023-05-13 09:30:00','Appendectomy Follow-up','Painkillers','Recovered',3),(14,14,'2023-05-14 13:30:00','Diabetes Management','Insulin','Stable',4),(15,15,'2023-05-15 11:30:00','Hypertension Control','Antihypertensives','Good',5),(16,16,'2023-05-16 10:30:00','Heart Attack Recovery','Beta Blockers','Improving',6),(17,17,'2023-05-17 14:30:00','Stroke Rehabilitation','Anticoagulants','Ongoing',7),(18,18,'2023-05-18 12:30:00','Arthritis Management','NSAIDs','Stable',8),(19,19,'2023-05-19 09:30:00','Pneumonia Recovery','Antibiotics','Recovered',9),(20,20,'2023-05-20 13:30:00','Asthma Follow-up','Inhalers','Stable',10);
/*!40000 ALTER TABLE `medical_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 23:08:26
