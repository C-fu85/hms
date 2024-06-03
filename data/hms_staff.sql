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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `role` enum('Doctor','Nurse','Technician','Administrative') DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `contact_info` varchar(100) DEFAULT NULL,
  `qualifications` text,
  `shift_schedule` text,
  `password` varchar(255) DEFAULT 'password',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,' 1','test',NULL,NULL,'test','test',NULL,'password'),(2,'Bob','Williams','Nurse','ICU','456-789-0123','RN, ICU','Night','password'),(3,'Charlie','Brown','Technician','Radiology','567-890-1234','X-ray Technician','Day','password'),(4,'Diana','Taylor','Doctor','Pediatrics','678-901-2345','MD, Pediatrics','Night','password'),(5,'Edward','Wilson','Nurse','Surgery','789-012-3456','RN, Surgery','Day','password'),(6,'Fiona','Martinez','Technician','Laboratory','890-123-4567','Lab Technician','Night','password'),(7,'George','Davis','Doctor','Oncology','901-234-5678','MD, Oncology','Day','password'),(8,'Hannah','Lopez','Nurse','Maternity','012-345-6789','RN, Maternity','Night','password'),(9,'Ian','Gonzalez','Technician','Orthopedics','123-456-7890','Orthopedic Technician','Day','password'),(10,'Jane','Hernandez','Doctor','Neurology','234-567-8901','MD, Neurology','Night','password'),(11,'Kyle','Lewis','Nurse','Psychiatry','345-678-9012','RN, Psychiatry','Day','password'),(12,'Laura','Walker','Technician','Cardiology','456-789-0123','Cardiology Technician','Night','password'),(13,'Michael','Young','Doctor','Dermatology','567-890-1234','MD, Dermatology','Day','password'),(14,'Nancy','Allen','Nurse','Geriatrics','678-901-2345','RN, Geriatrics','Night','password'),(15,'Oscar','Rodriguez','Technician','Urology','789-012-3456','Urology Technician','Day','password'),(16,'Patricia','Perez','Doctor','ENT','890-123-4567','MD, ENT','Night','password'),(17,'Quinn','Nguyen','Nurse','Endocrinology','901-234-5678','RN, Endocrinology','Day','password'),(18,'Rachel','Clark','Technician','Nephrology','012-345-6789','Nephrology Technician','Night','password'),(19,'Steven','Davis','Doctor','Gastroenterology','123-456-7890','MD, Gastroenterology','Day','password'),(20,'Tina','Martinez','Nurse','Rheumatology','234-567-8901','RN, Rheumatology','Night','password');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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
