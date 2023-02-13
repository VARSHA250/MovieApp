-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: moviereviewdb
-- ------------------------------------------------------
-- Server version	8.0.29

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

CREATE DATABASE /*!32312 IF NOT EXISTS*/`moviereviewdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `moviereviewdb`;

--
-- Table structure for table `givereview`
--

DROP TABLE IF EXISTS `givereview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `givereview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(4000) DEFAULT NULL,
  `movie` varchar(100) DEFAULT NULL,
  `actor` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  `star` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movieId_idx` (`movie`),
  KEY `actorId_idx` (`actor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `givereview`
--

LOCK TABLES `givereview` WRITE;
/*!40000 ALTER TABLE `givereview` DISABLE KEYS */;
INSERT INTO `givereview` VALUES (1,'good','Orson Duffy','Ram Charan And JR.NTR','Thriller',4,4);
/*!40000 ALTER TABLE `givereview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `movieName` varchar(455) DEFAULT NULL,
  `actorName` varchar(455) DEFAULT NULL,
  `category` bigint DEFAULT NULL,
  `relasedate` date DEFAULT NULL,
  `image` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryid_idx` (`category`),
  CONSTRAINT `FKcateoryid` FOREIGN KEY (`category`) REFERENCES `moviescategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Orson Duffy','Ram Charan And JR.NTR',7,'2022-11-30','TB1.webp'),(2,'Cameron Cherry','Nathaniel Snider',8,'2022-11-15','TB2.webp');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviescategory`
--

DROP TABLE IF EXISTS `moviescategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moviescategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `moviesCategoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviescategory`
--

LOCK TABLES `moviescategory` WRITE;
/*!40000 ALTER TABLE `moviescategory` DISABLE KEYS */;
INSERT INTO `moviescategory` VALUES (7,'Thriller'),(8,'Drama');
/*!40000 ALTER TABLE `moviescategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `emailId` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `repeatPassword` varchar(45) DEFAULT NULL,
  `phoneNo` bigint DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `roleid` bigint DEFAULT NULL,
  `roleName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','Admin@123gmail.com','Admin@123','Admin@123',98783475776,'Male',1,'ADMIN'),(2,'cynirujoq','tywanup@mailinator.com','Pa$$w0rd!','Pa$$w0rd!',7854653456,'Male',2,'User'),(3,'dojel','miwusi@mailinator.com','Pa$$w0rd!','Pa$$w0rd!',8745895477,'Male',2,'User'),(4,'Karan','ahirkaran123@gmail.com','Karan@123','Karan@123',9165435598,'Male',2,'User');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 16:03:25
