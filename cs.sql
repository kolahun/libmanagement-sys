-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `entry`
--

DROP TABLE IF EXISTS `entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entry` (
  `StudentName` varchar(50) DEFAULT NULL,
  `RollNO` int DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Entry` varchar(10) DEFAULT NULL,
  `Leaving` varchar(10) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry`
--

LOCK TABLES `entry` WRITE;
/*!40000 ALTER TABLE `entry` DISABLE KEYS */;
INSERT INTO `entry` VALUES ('ALOK YADAV',41522010,'CSE','05/03/2023','12:48',NULL,'SUBMIT A BOOK'),('ALOK',41522010,'CSE','DVWSDWS','SERERF',NULL,'FWR'),('alok',233234,'fvdf','ff','fer',NULL,'wsd'),('alok',2323,'cse','dcs','rf',NULL,'frdr'),('alok',232,'fvdf','ff','fgf',NULL,'frvd'),('sde',233,'dfsdf','dtddr','erg',NULL,'1'),('ADAMYA ',41522005,'CSE','05/03/2023','11/58','12332','STUDY'),('4',41522005,'CSE','05/03/2023','11/58','12332','edwe'),('LAKSHAY',41522032,'CSE','05/03/2023','12:02','12:03','STUDY');
/*!40000 ALTER TABLE `entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listofbooks`
--

DROP TABLE IF EXISTS `listofbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listofbooks` (
  `Bookname` varchar(50) NOT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Bookname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listofbooks`
--

LOCK TABLES `listofbooks` WRITE;
/*!40000 ALTER TABLE `listofbooks` DISABLE KEYS */;
INSERT INTO `listofbooks` VALUES ('Adventure of Tom Sawyer','Adventure','Mark Twain',8),('Animal farm','Satire','George Orwell',10),('Frankenstein','Horror','Mary Shelley',3),('Ramayana','Adventure','Valmiki',7),('Time machine','Sci-fi','HG Wells',10);
/*!40000 ALTER TABLE `listofbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'library'
--

--
-- Dumping routines for database 'library'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-05 13:36:47
