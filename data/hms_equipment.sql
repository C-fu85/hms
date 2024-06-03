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
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `equipment_id` int NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `status` enum('Available','In Use','Under Maintenance') DEFAULT 'Available',
  `location` varchar(100) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `last_maintenance_date` date DEFAULT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'X-ray Machine','Diagnostic','Available','Radiology Department','2022-01-15','2023-01-15'),(2,'MRI Scanner','Diagnostic','Available','Imaging Center','2022-02-20','2023-02-20'),(3,'Ultrasound Machine','Diagnostic','Available','Imaging Center','2022-03-25','2023-03-25'),(4,'ECG Machine','Diagnostic','Available','Cardiology Department','2022-04-30','2023-04-30'),(5,'Ventilator','Life Support','Available','ICU','2022-05-10','2023-05-10'),(6,'Anesthesia Machine','Surgical','Available','Operating Room','2022-06-15','2023-06-15'),(7,'Surgical Lights','Surgical','Available','Operating Room','2022-07-20','2023-07-20'),(8,'Hospital Beds','Patient Care','Available','Patient Wards','2022-08-25','2023-08-25'),(9,'Defibrillator','Emergency','Available','Emergency Department','2022-09-30','2023-09-30'),(10,'Crash Cart','Emergency','Available','Emergency Department','2022-10-05','2023-10-05'),(11,'Dialysis Machine','Renal','Available','Nephrology Department','2022-11-10','2023-11-10'),(12,'Infusion Pump','Patient Care','Available','Patient Wards','2022-12-15','2023-12-15'),(13,'Suction Machine','Patient Care','Available','Patient Wards','2023-01-20','2024-01-20'),(14,'Oxygen Concentrator','Patient Care','Available','Patient Wards','2023-02-25','2024-02-25'),(15,'Nebulizer','Patient Care','Available','Patient Wards','2023-03-30','2024-03-30'),(16,'Wheelchair','Patient Mobility','Available','Patient Wards','2023-04-05','2024-04-05'),(17,'Walking Aids','Patient Mobility','Available','Patient Wards','2023-05-10','2024-05-10'),(18,'Blood Pressure Monitor','Patient Care','Available','Patient Wards','2023-06-15','2024-06-15'),(19,'Glucometer','Patient Care','Available','Patient Wards','2023-07-20','2024-07-20'),(20,'Thermometer','Patient Care','Available','Patient Wards','2023-08-25','2024-08-25');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
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
