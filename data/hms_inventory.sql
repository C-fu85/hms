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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `quantity` int NOT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Defibrillators','Medical Equipment',5,'HeartTech','2024-06-01','2025-06-01'),(2,'Oxygen Masks','Medical Supplies',100,'OxyTech','2024-07-01','2025-07-01'),(3,'Nebulizers','Medical Equipment',10,'RespiCare','2024-08-01','2025-08-01'),(4,'Crutches','Medical Equipment',15,'MobilityEquip','2024-09-01','2025-09-01'),(5,'Orthopedic Braces','Medical Supplies',30,'OrthoSupply','2024-10-01','2025-10-01'),(6,'Anesthesia Machines','Medical Equipment',5,'AnesTech','2024-11-01','2025-11-01'),(7,'Patient Monitors','Medical Equipment',20,'VitalTech','2024-12-01','2025-12-01'),(8,'Sterilization Kits','Medical Supplies',50,'SteriCo','2025-01-01','2026-01-01'),(9,'Surgical Drapes','Medical Supplies',200,'SafeHealth','2025-02-01','2026-02-01'),(10,'Cautery Machines','Medical Equipment',8,'CauterizeTech','2025-03-01','2026-03-01'),(11,'Fetal Monitors','Medical Equipment',12,'FetalCare','2025-04-01','2026-04-01'),(12,'IV Catheters','Medical Supplies',300,'NeedleCo','2025-05-01','2026-05-01'),(13,'Blood Glucose Meters','Medical Equipment',25,'GlucoseTech','2025-06-01','2026-06-01'),(14,'Ambulatory Pumps','Medical Equipment',6,'AmbuTech','2025-07-01','2026-07-01'),(15,'Gauze Pads','Medical Supplies',500,'DressSupp','2025-08-01','2026-08-01'),(16,'Orthopedic Implants','Medical Supplies',15,'OrthoSupply','2025-09-01','2026-09-01'),(17,'Laryngoscopes','Medical Equipment',10,'AirwayTech','2025-10-01','2026-10-01'),(18,'Nasogastric Tubes','Medical Supplies',30,'TubeCo','2025-11-01','2026-11-01'),(19,'Dental Instruments','Medical Equipment',50,'DentalTech','2025-12-01','2026-12-01');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
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
