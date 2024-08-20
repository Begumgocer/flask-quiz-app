-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: ogrenciler
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `ogrencicevaplari`
--

DROP TABLE IF EXISTS `ogrencicevaplari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrencicevaplari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ad` varchar(100) DEFAULT NULL,
  `soyad` varchar(100) DEFAULT NULL,
  `yas` int DEFAULT NULL,
  `soru1` varchar(255) DEFAULT NULL,
  `soru2` varchar(255) DEFAULT NULL,
  `soru3` varchar(255) DEFAULT NULL,
  `soru4` varchar(255) DEFAULT NULL,
  `soru5` varchar(255) DEFAULT NULL,
  `soru6` varchar(255) DEFAULT NULL,
  `puan` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrencicevaplari`
--

LOCK TABLES `ogrencicevaplari` WRITE;
/*!40000 ALTER TABLE `ogrencicevaplari` DISABLE KEYS */;
INSERT INTO `ogrencicevaplari` VALUES (1,'begum','gocer',6,'dil','robot','veri','egitmek','tekrar','deneyim',100),(2,'begum','gocer',15,'dil','robot','veri','egitmek','tekrar','deneyim',100),(3,'begum','gocer',13,'hayvan','robot','veri','egitmek','birkez','müzik',50),(4,'begum','gocer',12,'hayvan','robot','veri','boyamak','uyutmak','oyun',33.3333),(5,'begum','gocer',13,'dil','robot','veri','egitmek','tekrar','deneyim',100);
/*!40000 ALTER TABLE `ogrencicevaplari` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-20 11:52:28
