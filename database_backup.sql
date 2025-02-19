-- MySQL dump 10.13  Distrib 9.2.0, for macos14.7 (x86_64)
--
-- Host: localhost    Database: pets_information
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cats_information`
--

DROP TABLE IF EXISTS `cats_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats_information` (
  `name` varchar(100) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `sex` enum('M','F') NOT NULL,
  `age` int DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `county` varchar(100) DEFAULT NULL,
  `fee` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats_information`
--

LOCK TABLES `cats_information` WRITE;
/*!40000 ALTER TABLE `cats_information` DISABLE KEYS */;
INSERT INTO `cats_information` VALUES ('Sprinkles','Siamese','F',8,7.50,'Los Angeles County',230.00),('Garbage','Savannah','M',3,7.00,'Lackawanna County',750.00),('Pluto','Domestic Short Hair','F',5,8.90,'Los Angeles County',80.00),('Aries','Domestic Short Hair','M',3,7.00,'Los Angeles County',150.00),('Miso','Maine Coon','F',2,13.90,'Orange County',310.00),('Mr. Bigglesworth','Hairless Sphynx','M',4,6.32,'Santa Barbara County',450.00),('Buttercup','Tabby','F',6,8.82,'Ventura County',90.00),('Jiji','Bombay','F',1,5.41,'San Diego County',65.00),('Rascal','Bengal','M',1,10.07,'San Bernardino County',200.00),('Phinnie','Ragdoll','F',4,12.95,'Ventura County',280.00);
/*!40000 ALTER TABLE `cats_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogs_information`
--

DROP TABLE IF EXISTS `dogs_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogs_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sex` enum('F','M') DEFAULT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `county` varchar(100) DEFAULT NULL,
  `fee` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs_information`
--

LOCK TABLES `dogs_information` WRITE;
/*!40000 ALTER TABLE `dogs_information` DISABLE KEYS */;
INSERT INTO `dogs_information` VALUES (1,'Clifford','M','Vizsla',1,64.82,'Orange County',410.00),(2,'Max','M','Golden Retriever',6,75.09,'Los Angeles County',210.00),(3,'Slinky','F','Wiener Dog',2,5.40,'San Diego County',90.00),(4,'Espresso','F','Yorkshire Terrier',3,1.35,'Ventura County',100.00),(5,'Loki','F','Dobermann',3,75.60,'Los Angeles County',250.00),(6,'Harley','M','Dalmatian',4,81.02,'San Bernardino County',300.00),(7,'Milo','M','Boxer',9,62.84,'Los Angeles County',75.00),(8,'Sqeaky','F','Chihuahua',8,4.92,'Santa Barbara County',50.00),(9,'Bella','F','Poodle',5,7.10,'Ventura County',120.00),(10,'Rex','M','German Shepherd',2,75.00,'San Diego County',200.00),(11,'Bowie','F','Cavalier King Charles Spaniel',5,11.31,'Orange County',180.00);
/*!40000 ALTER TABLE `dogs_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-18 19:36:10
