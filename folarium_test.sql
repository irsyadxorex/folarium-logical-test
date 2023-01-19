-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 139.162.54.225    Database: folarium_test
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `md_loc0_country`
--

DROP TABLE IF EXISTS `md_loc0_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_loc0_country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_loc0_country`
--

LOCK TABLES `md_loc0_country` WRITE;
/*!40000 ALTER TABLE `md_loc0_country` DISABLE KEYS */;
INSERT INTO `md_loc0_country` VALUES (1,'Indonesia'),(2,'Singapura'),(3,'Hongkong'),(4,'India');
/*!40000 ALTER TABLE `md_loc0_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md_loc1_province`
--

DROP TABLE IF EXISTS `md_loc1_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_loc1_province` (
  `prov_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `prov_name` varchar(50) NOT NULL,
  PRIMARY KEY (`prov_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_loc1_province`
--

LOCK TABLES `md_loc1_province` WRITE;
/*!40000 ALTER TABLE `md_loc1_province` DISABLE KEYS */;
INSERT INTO `md_loc1_province` VALUES (1,1,'Banten'),(2,1,'Jawa Barat'),(3,1,'Jawa Tengah'),(4,1,'Yogyakarta'),(5,1,'Jawa Timur'),(6,1,'DKI Jakarta');
/*!40000 ALTER TABLE `md_loc1_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md_loc2_city`
--

DROP TABLE IF EXISTS `md_loc2_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_loc2_city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `prov_id` int NOT NULL,
  `city_name` varchar(50) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_loc2_city`
--

LOCK TABLES `md_loc2_city` WRITE;
/*!40000 ALTER TABLE `md_loc2_city` DISABLE KEYS */;
INSERT INTO `md_loc2_city` VALUES (1,1,'Cilegon'),(2,1,'Tangerang'),(3,1,'Tangerang Selatan'),(4,2,'Bandung'),(5,2,'Bekasi'),(6,2,'Bogor'),(7,3,'Semarang'),(8,3,'Magelang'),(9,3,'Batang'),(10,5,'Madiun'),(11,5,'Surabaya'),(12,4,'Sleman'),(13,4,'Kota Yogyakarta'),(14,4,'Bantul'),(15,6,'Jakarta Utara'),(16,6,'Jakarta Pusat'),(17,6,'Jakarta Selatan');
/*!40000 ALTER TABLE `md_loc2_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md_profession0`
--

DROP TABLE IF EXISTS `md_profession0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_profession0` (
  `profs_id` int NOT NULL AUTO_INCREMENT,
  `profs_name` varchar(100) NOT NULL,
  PRIMARY KEY (`profs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_profession0`
--

LOCK TABLES `md_profession0` WRITE;
/*!40000 ALTER TABLE `md_profession0` DISABLE KEYS */;
INSERT INTO `md_profession0` VALUES (1,'Sales & Marketing'),(2,'Finance & Accounting'),(3,'Human Resource'),(4,'Software Engineering');
/*!40000 ALTER TABLE `md_profession0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_company0`
--

DROP TABLE IF EXISTS `mg_company0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mg_company0` (
  `co_id` int NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `co_name` varchar(100) NOT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_company0`
--

LOCK TABLES `mg_company0` WRITE;
/*!40000 ALTER TABLE `mg_company0` DISABLE KEYS */;
INSERT INTO `mg_company0` VALUES (1,3,'PT. ABC Indonesia'),(2,11,'PT. KLM Indonesia'),(3,14,'PT. XYZ Indonesia'),(4,1,'PT. HIJ Indonesia'),(5,6,'PT. WXY Indonesia'),(6,13,'PT. QRS Indonesia'),(7,16,'PT. DEF Indonesia'),(8,16,'PT. GHI Indonesia'),(9,17,'PT. CDE Indonesia');
/*!40000 ALTER TABLE `mg_company0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_jobs0`
--

DROP TABLE IF EXISTS `mg_jobs0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mg_jobs0` (
  `jobs_id` int NOT NULL AUTO_INCREMENT,
  `profs_id` int NOT NULL,
  `co_id` int NOT NULL,
  `city_id` int NOT NULL,
  `jobs_title` varchar(100) NOT NULL,
  `jobs_register` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jobs_sts` tinyint(1) NOT NULL,
  PRIMARY KEY (`jobs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_jobs0`
--

LOCK TABLES `mg_jobs0` WRITE;
/*!40000 ALTER TABLE `mg_jobs0` DISABLE KEYS */;
INSERT INTO `mg_jobs0` VALUES (1,2,1,17,'Admin Keuangan','2023-01-18 23:09:42',1),(2,2,7,3,'FA Manager','2023-01-18 23:09:42',1),(3,4,1,17,'System Analyst','2023-01-18 23:09:42',1),(4,1,3,13,'Sales Promotion','2023-01-18 23:09:43',1),(5,1,4,11,'Sales Supervisor','2023-01-18 23:09:43',1);
/*!40000 ALTER TABLE `mg_jobs0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_jobs1_apply`
--

DROP TABLE IF EXISTS `mg_jobs1_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mg_jobs1_apply` (
  `jobly_id` int NOT NULL AUTO_INCREMENT,
  `jobs_id` int NOT NULL,
  `city_id` int NOT NULL,
  `jobly_name` varchar(100) NOT NULL,
  `jobly_register` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`jobly_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_jobs1_apply`
--

LOCK TABLES `mg_jobs1_apply` WRITE;
/*!40000 ALTER TABLE `mg_jobs1_apply` DISABLE KEYS */;
INSERT INTO `mg_jobs1_apply` VALUES (1,2,9,'Joni Haryadi','2023-01-18 23:13:57'),(2,1,11,'Anisa Handayani','2023-01-18 23:13:57'),(3,4,12,'Tirta Sista','2023-01-18 23:13:57'),(4,5,12,'Hendra Arwandi','2023-01-18 23:13:57'),(5,5,3,'Joko Cahyono','2023-01-18 23:13:58'),(6,2,10,'Nisa Ninatun','2023-01-18 23:13:58');
/*!40000 ALTER TABLE `mg_jobs1_apply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 21:40:09
