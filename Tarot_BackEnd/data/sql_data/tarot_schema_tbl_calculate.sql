-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tarot_schema
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tbl_calculate`
--

DROP TABLE IF EXISTS `tbl_calculate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_calculate` (
  `id` int NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `commons` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `numberology` int DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `numberology_idx` (`numberology`),
  CONSTRAINT `numberology` FOREIGN KEY (`numberology`) REFERENCES `tbl_numberology` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_calculate`
--

LOCK TABLES `tbl_calculate` WRITE;
/*!40000 ALTER TABLE `tbl_calculate` DISABLE KEYS */;
INSERT INTO `tbl_calculate` VALUES (240151,'Mai Thị Huyền Trang','Moon07','2023-01-10',9,'0963111825'),(333456,'Mai Thị Huyền Trang','Moon07','2023-01-17',7,''),(402983,'Mai Thị Huyền Trang','','2023-01-09',8,''),(555770,'Mai Thị Huyền Trang','Moon07','2000-11-07',11,'0963111825'),(611372,'Mai Thị Huyền Trang','Moon07','2023-01-11',10,''),(695360,'Mai Thị Huyền Trang','Moon07','2023-01-10',9,'0963111825'),(738700,'Mai Thị Huyền Trang','Moon07','2000-11-07',11,'0963111825'),(768023,'Mai Thị Huyền Trang','Moon07','2000-11-07',2,'0963111825'),(911984,'Mai Huyền Trang','Moon07','2000-11-07',11,'0963111825');
/*!40000 ALTER TABLE `tbl_calculate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 15:10:44
