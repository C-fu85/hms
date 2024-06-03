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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `contact_info` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `medical_history` text,
  `emergency_contact_name` varchar(100) DEFAULT NULL,
  `emergency_contact_phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'John Doe','Doe1','1980-01-15','Female','123-456-7890','123 Main St','None','Jane Doe',' 098-765-4321'),(2,'Jane','Smith','1990-02-20','Female','234-567-8901','234 Elm St','Asthma','John Smith',' 987-654-3210'),(3,'Michael','Brown','1975-05-30','Male','345-678-9012','345 Oak St','Diabetes','Michelle Brown',' 876-543-2109'),(4,'Emily','Davis','1985-11-11','Female','456-789-0123','456 Pine St','Hypertension','Edward Davis',' 765-432-1098'),(5,'Daniel','Wilson','1995-03-10','Male','567-890-1234','567 Cedar St','None','Diana Wilson',' 654-321-0987'),(6,'Sophia','Taylor','2000-12-25','Female','678-901-2345','678 Maple St','None','Samuel Taylor',' 543-210-9876'),(7,'James','Martinez','1965-08-19','Male','789-012-3456','789 Birch St','Heart Disease','Jessica Martinez',' 432-109-8765'),(8,'Isabella','Hernandez','1970-09-05','Female','890-123-4567','890 Spruce St','Arthritis','Ivan Hernandez',' 321-098-7654'),(9,'David','Lopez','1988-06-14','Male','901-234-5678','901 Redwood St','None','Diana Lopez',' 210-987-6543'),(10,'Ava','Gonzalez','1992-07-22','Female','012-345-6789','012 Cypress St','Allergies','Albert Gonzalez',' 109-876-5432'),(11,'Liam','Perez','1982-11-30','Male','111-222-3333','111 Chestnut St','High Cholesterol','Laura Perez',' 210-987-6543'),(12,'Mia','Nguyen','1976-01-25','Female','222-333-4444','222 Walnut St','Asthma','Mark Nguyen',' 109-876-5432'),(13,'Noah','Clark','1993-09-08','Male','333-444-5555','333 Willow St','None','Nina Clark',' 876-543-2109'),(14,'Olivia','Rodriguez','1989-04-14','Female','444-555-6666','444 Aspen St','None','Oscar Rodriguez',' 765-432-1098'),(15,'William','Lewis','1963-07-19','Male','555-666-7777','555 Cedar St','Diabetes','Wendy Lewis',' 654-321-0987'),(16,'Emma','Lee','1983-10-03','Female','666-777-8888','666 Elm St','None','Eric Lee',' 543-210-9876'),(17,'Mason','Walker','1991-02-27','Male','777-888-9999','777 Poplar St','Hypertension','Molly Walker',' 432-109-8765'),(18,'Sophia','Hall','1997-12-15','Female','888-999-0000','888 Pine St','None','Sam Hall',' 321-098-7654'),(19,'Lucas','Allen','2001-03-11','Male','999-000-1111','999 Maple St','None','Lily Allen',' 210-987-6543'),(20,'Amelia','Young','1998-05-23','Female','000-111-2222','000 Birch St','None','Adam Young',' 109-876-5432');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
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
