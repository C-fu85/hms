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
-- Table structure for table `admissions`
--

DROP TABLE IF EXISTS `admissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admissions` (
  `admission_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int DEFAULT NULL,
  `bed_id` int NOT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `treatment_plan` text,
  `attending_doctor_id` int DEFAULT NULL,
  PRIMARY KEY (`admission_id`),
  KEY `patient_id` (`patient_id`),
  KEY `bed_id` (`bed_id`),
  KEY `attending_doctor_id` (`attending_doctor_id`),
  CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `admissions_ibfk_2` FOREIGN KEY (`bed_id`) REFERENCES `beds` (`bed_id`),
  CONSTRAINT `admissions_ibfk_3` FOREIGN KEY (`attending_doctor_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admissions`
--

LOCK TABLES `admissions` WRITE;
/*!40000 ALTER TABLE `admissions` DISABLE KEYS */;
INSERT INTO `admissions` VALUES (1,1,1,'2024-05-27',NULL,'test','test',1),(2,2,2,'2023-05-02',NULL,'Fracture','Surgery',2),(3,NULL,3,NULL,NULL,NULL,NULL,NULL),(4,4,4,'2023-05-04',NULL,'Appendicitis','Appendectomy',4),(5,NULL,5,NULL,NULL,NULL,NULL,NULL),(6,6,6,'2023-05-06',NULL,'Hypertension','Medication',6),(7,NULL,7,NULL,NULL,NULL,NULL,NULL),(8,8,8,'2023-05-08',NULL,'Stroke','Rehabilitation',8),(9,NULL,9,NULL,NULL,NULL,NULL,NULL),(10,10,10,'2023-05-10',NULL,'Pneumonia','Antibiotics',10),(11,NULL,11,NULL,NULL,NULL,NULL,NULL),(12,12,12,'2023-05-12',NULL,'Fracture','Surgery',2),(13,NULL,13,NULL,NULL,NULL,NULL,NULL),(14,14,14,'2023-05-14',NULL,'Diabetes','Insulin Therapy',4),(15,NULL,15,NULL,NULL,NULL,NULL,NULL),(16,16,16,'2023-05-16',NULL,'Heart Attack','Angioplasty',6),(17,NULL,17,NULL,NULL,NULL,NULL,NULL),(18,18,18,'2023-05-18',NULL,'Arthritis','Pain Management',8),(19,NULL,19,NULL,NULL,NULL,NULL,NULL),(20,20,20,'2023-05-20',NULL,'Asthma','Inhalers',10);
/*!40000 ALTER TABLE `admissions` ENABLE KEYS */;
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
