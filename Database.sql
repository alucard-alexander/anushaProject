-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: modern_basket
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Door_No` varchar(45) NOT NULL,
  `Area` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Landmark` varchar(45) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Street` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (3,'#90','Sanjay Nagar','Karnataka','Aunty mane',560094,'1st cross','Bangalore'),(4,'#90','kurubarahalli','karnataka','kavery factory',560086,'12th main road','bangalore'),(5,'#123','employee','employee','employee',560000,'employee','employee'),(6,'00','00','00','00',0,'00','00'),(7,'#90','sanjaynagar','employee','kavery factory',560094,'11th main road','Bangalore'),(8,'#90','kurubarahalli','employee','kavery factory',560086,'11th main road','bangalore');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id_admin_idx` (`person_id`),
  CONSTRAINT `person_id_admin` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_name` varchar(45) NOT NULL,
  `price` float(8,5) NOT NULL,
  `type` enum('Packet','kg') NOT NULL,
  `weight` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'brinjal',59.90000,'Packet','100'),(2,'Amaranth',60.00000,'kg','1'),(3,'Arugula',90.60000,'kg','1'),(4,'Beet',90.60000,'kg','1'),(5,'Bok choy',120.00000,'kg','1'),(6,'Borage',120.00000,'kg','1'),(7,'Broccoli',120.00000,'kg','1'),(8,'Brussels sprouts',120.00000,'kg','1'),(9,'Cabbage',120.00000,'kg','1');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total_Price` double NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_personId_idx` (`pid`),
  KEY `order_itemid_idx` (`item_id`),
  CONSTRAINT `order_itemid` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `order_personId` FOREIGN KEY (`pid`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (19,2,3,4,398.64,'Delivered'),(22,2,3,4,398.64,'Delivered'),(23,2,2,1,66,'Processing...'),(24,2,1,4,263.56,'Processing...');
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) NOT NULL,
  `First_name` varchar(45) NOT NULL,
  `Middle_name` varchar(45) NOT NULL,
  `Last_name` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `User_Name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Phone_number` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `type` enum('e','a') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_Name_UNIQUE` (`User_Name`),
  KEY `address_id_idx` (`address_id`),
  CONSTRAINT `address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (2,3,'Anusha','bai','N','1997-01-18','male','anusha','anu123','9898989898','anushajaadav@gmail.com',NULL),(3,4,'Dilip','kumar','M','2019-05-15','male','dilip','dil123','9898989898','dilipmca@msrit.com',NULL),(4,5,'employee','empl','e','2019-05-15','male','employee','emp123','8787878787','employee@employee.com','e'),(5,6,'Admin','Admin','Admin','2019-05-16','male','admin','adm123','0000000000','admin@admin.com','a'),(6,7,'eee','eee','eee','2019-05-17','male','eee','eee123','0000000000','eee@eee.com',NULL),(7,8,'eee','eee','eee','2019-05-17','male','eee1','eee1','0000000000','eee@eee.com','e');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processing`
--

DROP TABLE IF EXISTS `processing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `processing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `processed` enum('y','n') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `processing_order_id_idx` (`oid`),
  CONSTRAINT `processing_order_id` FOREIGN KEY (`oid`) REFERENCES `order1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processing`
--

LOCK TABLES `processing` WRITE;
/*!40000 ALTER TABLE `processing` DISABLE KEYS */;
/*!40000 ALTER TABLE `processing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_questions`
--

DROP TABLE IF EXISTS `security_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `security_questions` (
  `question` varchar(300) NOT NULL,
  `question_answer` varchar(300) NOT NULL,
  `person_id` int(11) NOT NULL,
  KEY `person_id_que_idx` (`person_id`),
  CONSTRAINT `person_id_que` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_questions`
--

LOCK TABLES `security_questions` WRITE;
/*!40000 ALTER TABLE `security_questions` DISABLE KEYS */;
INSERT INTO `security_questions` VALUES ('Enter the Name of your Best teacher?','Ajitha',2),('Enter the Name of your Best teacher?','aisha',3),('Enter the Name of your Best teacher?','employee',4),('Enter the Name of your Best teacher?','admin',5),('Enter the Name of your Best teacher?','ajitha',6),('Enter the Name of your Best teacher?','ajitha',7);
/*!40000 ALTER TABLE `security_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17  7:54:36
