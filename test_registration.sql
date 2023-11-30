-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `name` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `middleName` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `aadharNumber` bigint DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `phoneNumber` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('Prasad ',NULL,NULL,NULL,NULL,NULL,NULL),('Prasad ',NULL,NULL,NULL,NULL,NULL,NULL),('Prasad Tonge',NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL),('feawe',NULL,NULL,NULL,NULL,NULL,NULL),('feawe',NULL,NULL,NULL,NULL,NULL,NULL),('feawe',NULL,NULL,NULL,NULL,NULL,NULL),('feawe',NULL,NULL,NULL,NULL,NULL,NULL),('Sumit','edfs',NULL,NULL,NULL,NULL,NULL),('Sumit','fea',NULL,NULL,NULL,NULL,NULL),('Sumit','fea',NULL,NULL,NULL,NULL,NULL),('dadwaefdw','WFEWEAFq','weafaweefweaF',NULL,NULL,NULL,NULL),('Sumit','wtw4tw4ytw45y4wy','gwtg4tw4t4w5tw5t',NULL,NULL,NULL,NULL),('Sumit','wtw4tw4ytw45y4wy','gwtg4tw4t4w5tw5t','2023-11-28',NULL,NULL,NULL),('segseg','whe4h4we','hdrhewh','2023-10-31',NULL,NULL,NULL),('Prasad','Tonge','Chandrakant','2023-10-31',NULL,'Male',NULL),('Prasad','WFEWEAFq','weafaweefweaF','2023-11-07',NULL,'Male',NULL),('Prasad','WFEWEAFq','weafaweefweaF','2023-11-07',NULL,'Male',NULL),('segseg','Tonge','efeea','2023-11-08',NULL,'Male',NULL),('segseg','Tonge','efeea','2023-11-08',NULL,'Male',NULL),('segseg','Tonge','efeea','2023-11-08',NULL,'Male',NULL),('Sumit','edfs','efeea','2023-11-01',NULL,'Male',NULL),('daa','ada','adfaf','2023-11-07',NULL,'Male',NULL),('Sumit','fea','efeea','2023-11-08',123456789120,'Male',NULL),('Sumit','fea','efeea','2023-11-08',123456789120,'Male',NULL),('Sumit','Tonge','efeea','2023-11-10',123456789120,'Male',NULL),('Prasad','fea','efeea','2023-11-02',123456789120,'Female',NULL),('Prasad','fea','Chandrakant','2023-11-02',123456789120,'Male',1234567890),('Sumit','Tonge','Chandrakant','2023-11-01',123456789120,'Male',1234567890),('Prasad','fea','efeea','2023-11-01',123456789120,'Male',1234567890),('segseg','fea','Chandrakant','2023-11-01',123456789120,'Male',1234567890);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30 23:08:00
