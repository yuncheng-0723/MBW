-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: members
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `board1`
--

DROP TABLE IF EXISTS `board1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board1` (
  `GBNO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `GBName` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board1`
--

LOCK TABLES `board1` WRITE;
/*!40000 ALTER TABLE `board1` DISABLE KEYS */;
INSERT INTO `board1` VALUES (1,'123','123','123','123','2021-01-05','0:0:0:0:0:0:0:1'),(2,'123','1121','213213','312213','2021-01-05','0:0:0:0:0:0:0:1'),(3,'123','1121','213213','312213','2021-01-05','0:0:0:0:0:0:0:1'),(4,'呂允丞','h1253567@gmail.com','BMW 1','乾 BMW 1真的好帥 想買','2021-01-05','0:0:0:0:0:0:0:1'),(5,'123','test','test','2421\r<br>123\r<br>123\r<br>231\r<br>','2021-01-05','0:0:0:0:0:0:0:1'),(6,'12112','33321','23213','312','2021-01-05','0:0:0:0:0:0:0:1'),(7,'testPeople1','213','213','123','2021-01-05','0:0:0:0:0:0:0:1'),(8,'testPeople1','213213','123213','123213','2021-01-05','0:0:0:0:0:0:0:1'),(9,'testPeople2','213','231','123','2021-01-05','0:0:0:0:0:0:0:1'),(10,'testPeople2','123','123','213','2021-01-05','0:0:0:0:0:0:0:1'),(11,'testPeople2','12','312','321','2021-01-05','0:0:0:0:0:0:0:1'),(12,'testPeople2','','','','2021-01-05','0:0:0:0:0:0:0:1'),(13,'testPeople2','213','213','231','2021-01-05','0:0:0:0:0:0:0:1'),(14,'YunCheng','123','123','123','2021-01-05','0:0:0:0:0:0:0:1'),(15,'testPeople1','123`','321','2\r<br>213\r<br>2\r<br>321\r<br>3\r<br>21','2021-01-08','140.135.113.153');
/*!40000 ALTER TABLE `board1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board2`
--

DROP TABLE IF EXISTS `board2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board2` (
  `GBNO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `GBName` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board2`
--

LOCK TABLES `board2` WRITE;
/*!40000 ALTER TABLE `board2` DISABLE KEYS */;
INSERT INTO `board2` VALUES (1,'testPeople2','123','213','213','2021-01-05','0:0:0:0:0:0:0:1'),(2,'testPeople2','11','11','11','2021-01-05','0:0:0:0:0:0:0:1'),(3,'testPeople2','test','11','11','2021-01-05','0:0:0:0:0:0:0:1'),(4,'testPeople2','te','312','123','2021-01-05','0:0:0:0:0:0:0:1'),(5,'testPeople2','213','213','213\r<br>213\r<br>123\r<br>123\r<br>213\r<br>213','2021-01-05','0:0:0:0:0:0:0:1'),(6,'testPeople2','123','123','123','2021-01-05','0:0:0:0:0:0:0:1'),(7,'testPeople2','213','213','231','2021-01-05','0:0:0:0:0:0:0:1'),(8,'testPeople2','213','123','12323\r<br>\r<br>21\r<br>23\r<br>123\r<br>','2021-01-05','0:0:0:0:0:0:0:1'),(9,'testPeople2','','','','2021-01-05','0:0:0:0:0:0:0:1'),(10,'testPeople2','','','','2021-01-05','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board3`
--

DROP TABLE IF EXISTS `board3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board3` (
  `GBNO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `GBName` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board3`
--

LOCK TABLES `board3` WRITE;
/*!40000 ALTER TABLE `board3` DISABLE KEYS */;
INSERT INTO `board3` VALUES (1,'testPeople2','213','231','213','2021-01-05','0:0:0:0:0:0:0:1'),(2,'testPeople2','123','111','111','2021-01-05','0:0:0:0:0:0:0:1'),(3,'277','9135','55','輪胎毛沒長齊','2021-01-08','140.135.113.153');
/*!40000 ALTER TABLE `board3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board4`
--

DROP TABLE IF EXISTS `board4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board4` (
  `GBNO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `GBName` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board4`
--

LOCK TABLES `board4` WRITE;
/*!40000 ALTER TABLE `board4` DISABLE KEYS */;
INSERT INTO `board4` VALUES (1,'testPeople2','1111','1111','111\r<br>1\r<br>1\r<br>1','2021-01-05','0:0:0:0:0:0:0:1'),(2,'testPeople2','','','','2021-01-05','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board5`
--

DROP TABLE IF EXISTS `board5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board5` (
  `GBNO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `GBName` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board5`
--

LOCK TABLES `board5` WRITE;
/*!40000 ALTER TABLE `board5` DISABLE KEYS */;
INSERT INTO `board5` VALUES (1,'testPeople2','','','','2021-01-05','0:0:0:0:0:0:0:1'),(2,'testPeople2','123','123','231','2021-01-05','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board6`
--

DROP TABLE IF EXISTS `board6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board6` (
  `GBNO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `GBName` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board6`
--

LOCK TABLES `board6` WRITE;
/*!40000 ALTER TABLE `board6` DISABLE KEYS */;
INSERT INTO `board6` VALUES (1,'testPeople2','123','123','123','2021-01-05','0:0:0:0:0:0:0:1'),(2,'testPeople2','111111','1111','1\r<br>1','2021-01-05','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board7`
--

DROP TABLE IF EXISTS `board7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board7` (
  `GBNO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `GBName` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board7`
--

LOCK TABLES `board7` WRITE;
/*!40000 ALTER TABLE `board7` DISABLE KEYS */;
INSERT INTO `board7` VALUES (1,'testPeople2','213','2312','3213213','2021-01-05','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board8`
--

DROP TABLE IF EXISTS `board8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board8` (
  `GBNO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `GBName` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board8`
--

LOCK TABLES `board8` WRITE;
/*!40000 ALTER TABLE `board8` DISABLE KEYS */;
INSERT INTO `board8` VALUES (1,'testPeople2','123','111','111','2021-01-05','0:0:0:0:0:0:0:1'),(2,'testPeople2','123','123','12321','2021-01-05','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(100) NOT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mail` longtext,
  `number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('10844231','10844231','10844231','10844231',NULL),('123','123','1123','1111','9'),('1231','123123','123123','1111','10'),('444','44','444','444444',NULL),('968','968','114','S@',NULL),('h1253567','1111','YunCheng','h1253567@gmail.com','1'),('null','123123','null','null','8'),('test','1111','testPeople1','h111111@gmail.com','2'),('test0','1111','123','','11'),('test2','1111','testPeople2','11111111','3'),('test3','1111','123123','123132','4'),('test4','1111','1231232','2131231','5'),('test7','1111','213213213','11111@gmail.com','6'),('test8','1111','5631','1111','7');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `pid` tinyint(100) NOT NULL AUTO_INCREMENT,
  `Uname` varchar(100) DEFAULT NULL,
  `Pname` varchar(100) DEFAULT NULL,
  `series` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `reach` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10,'YunCheng','118i Edition sport','1','156','NO'),(11,'YunCheng','Gran coupe 218i 運動版','2','166','Yes'),(12,'YunCheng','318i Luxury','3','203','未到'),(13,'YunCheng','Sedan 520i sport','5','265','未到'),(14,'YunCheng','Gran torismo 630i M sport','6','365','未到'),(15,'YunCheng','短軸版 730i 層峰旗艦版','7','418','未到'),(16,'YunCheng','Convertible M850i xDrive','8','698','未到'),(17,'YunCheng','118i Edition sport','1','156','未到'),(18,'YunCheng','Gran coupe 218i 運動版','2','166','未到'),(19,'YunCheng','318i Luxury','3','203','未到'),(20,'YunCheng','Sedan 520i sport','5','265','未到'),(21,'YunCheng','Gran torismo 630i M sport','6','365','未到'),(22,'YunCheng','短軸版 730i 層峰旗艦版','7','418','未到'),(23,'YunCheng','Convertible M850i xDrive','8','698','未到'),(24,'YunCheng','118i Edition sport','1','156','未到'),(25,'YunCheng','Gran coupe 218i 運動版','2','166','未到'),(26,'YunCheng','318i Luxury','3','203','未到'),(27,'YunCheng','Sedan 520i sport','5','265','未到'),(28,'YunCheng','Gran torismo 630i M sport','6','365','未到'),(29,'YunCheng','短軸版 730i 層峰旗艦版','7','418','未到'),(31,'testPeople1','118i Edition sport','1','156','未到'),(32,'testPeople1','Gran coupe 218i 運動版','2','166','未到'),(33,'testPeople1','318i Luxury','3','203','未到'),(34,'5631','118i Edition sport','1','156','未到'),(35,'5631','Gran coupe 218i 運動版','2','166','未到'),(36,'YunCheng','Gran coupe 218i 運動版','2','166','未到'),(37,'YunCheng','118i Edition sport','1','156',NULL),(38,'testPeople1','118i Edition sport','1','156',NULL),(40,'testPeople1','Convertible M850i xDrive','8','698',NULL),(41,'444','118i Edition sport','1','156',NULL),(42,'444','118i Edition sport','1','156',NULL),(43,'444','118i Edition sport','1','156',NULL),(44,'444','Gran coupe 218i 運動版','2','166',NULL),(45,'444','318i Luxury','3','203',NULL),(46,'444','Sedan 520i sport','5','265',NULL),(47,'444','Gran torismo 630i M sport','6','365',NULL),(48,'444','短軸版 730i 層峰旗艦版','7','418',NULL),(49,'444','Convertible M850i xDrive','8','698',NULL),(50,'277','Gran coupe 218i 運動版','2','166',NULL),(51,'277','短軸版 730i 層峰旗艦版','7','418',NULL),(52,'277','Convertible M850i xDrive','8','698',NULL),(53,'YunCheng','Sedan 520i sport','5','265',NULL),(54,'testPeople1','Sedan 520i sport','5','265',NULL),(55,'testPeople1','Gran coupe 218i 運動版','2','166','未到'),(56,'testPeople1','118i Edition sport','1','156','未到'),(57,'testPeople1','Gran coupe 218i 運動版','2','166','未到'),(58,'testPeople1','318i Luxury','3','203','未到'),(59,'testPeople1','Sedan 520i sport','5','265','未到'),(60,'testPeople1','Gran torismo 630i M sport','6','365','未到'),(61,'testPeople1','短軸版 730i 層峰旗艦版','7','418','未到'),(62,'testPeople1','Convertible M850i xDrive','8','698','未到');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopcar`
--

DROP TABLE IF EXISTS `shopcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopcar` (
  `id` int(11) NOT NULL,
  `file_path` varchar(45) DEFAULT NULL,
  `ad_file` varchar(45) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `accelerated` varchar(100) DEFAULT NULL,
  `egd` varchar(100) DEFAULT NULL,
  `eg` varchar(100) DEFAULT NULL,
  `inventory` varchar(100) DEFAULT NULL,
  `series` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopcar`
--

LOCK TABLES `shopcar` WRITE;
/*!40000 ALTER TABLE `shopcar` DISABLE KEYS */;
INSERT INTO `shopcar` VALUES (1,'images','01.png','118i Edition sport','156','8.5','1499','汽油直列3汽缸¸','95','1'),(2,'images','02.png','Gran coupe\' 218i 運動版','166','8.7','1499','汽油直列3汽缸','84','2'),(3,'images','03.png','318i Luxury','203','8.4','1998','汽油直列4汽缸','88','3'),(4,'images','04.png','coupe\' 420i M sport','236','7.5','1998','汽油直列4汽缸','0','4'),(5,'images','05.png','Sedan 520i sport ','265','7.9','1998','汽油直列4汽缸48v','87','5'),(6,'images','06.png','Gran torismo 630i M sport','365','6.5','1998','汽油直列4汽缸48v','90','6'),(7,'images','07.png','短軸版 730i 層峰旗艦版','418','6.2','1998','汽油直列4汽缸','89','7'),(8,'images','08.png','Convertible M850i xDrive','698','3.9','4395','汽油v型8汽缸','79','8');
/*!40000 ALTER TABLE `shopcar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-08 22:41:06
