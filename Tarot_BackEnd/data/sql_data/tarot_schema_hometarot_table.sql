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
-- Table structure for table `hometarot_table`
--

DROP TABLE IF EXISTS `hometarot_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hometarot_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `the_a` longtext,
  `image` longtext,
  `title` longtext,
  `linkUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hometarot_table`
--

LOCK TABLES `hometarot_table` WRITE;
/*!40000 ALTER TABLE `hometarot_table` DISABLE KEYS */;
INSERT INTO `hometarot_table` VALUES (1,NULL,'http://lanvy.me/wp-content/uploads/2016/12/12079943_993674224023946_2989200800435693052_o.jpg','Tầm Quan Trọng Của Thần Số Học Trong Tarot','/tam-quan-trong-cua-than-so-hoc-trong-tarot'),(2,NULL,'https://tracuuthansohoc.com/wp-content/uploads/2021/05/bieu-do-ten-trong-than-so-hoc.jpg','Xem Thần Số Học Cho Việc Phát Triển Sự Nghiệp','/xem-than-so-hoc-cho-viec-phat-trien-su-nghiep'),(3,NULL,'https://wichita-tarot.com/wp-content/uploads/2018/09/lua-chon-cho-minh-mot-bo-bai-phu-hop.jpg','Những Dấu Hiệu Từ Các Con Số Trong Tarot Và Cách Giải Đáp','/nhung-dau-hieu-tu-cac-con-so-trong-tarot-va-cach-giai-dap'),(4,NULL,'https://cdn3.dhht.vn/wp-content/uploads/2022/06/so-1-co-y-nghia-gi-giai-ma-than-so-hoc-so-1-day-du-a-z-1.jpg','Định Mệnh Số 1','/dinh-menh-so-1'),(5,NULL,'https://static.simthanglong.vn/images/than-so-hoc-2.jpg','Định Mệnh Số 2','/dinh-menh-so-2'),(6,NULL,'https://static.simthanglong.vn/images/than-so-hoc-3.jpg','Định Mệnh Số 3','/dinh-menh-so-3'),(7,NULL,'https://cdn3.dhht.vn/wp-content/uploads/2022/07/so-4-co-y-nghia-gi-giai-ma-than-so-hoc-so-4-day-du-a-z-bia.jpg','Định Mệnh Số 4','/dinh-menh-so-4'),(8,NULL,'https://thansohoconline.com/wp-content/uploads/2022/03/than-so-hoc-so-5-1.jpg','Định Mệnh Số 5','/dinh-menh-so-5'),(9,NULL,'https://cdn3.dhht.vn/wp-content/uploads/2022/06/so-6-co-y-nghia-gi-giai-ma-than-so-hoc-so-6-day-du-a-z-1.jpg','Định Mệnh Số 6','/dinh-menh-so-6'),(10,NULL,'https://toiyeulamdep.com/wp-content/uploads/2021/09/Than-so-hoc-so-7.jpg','Định Mệnh Số 7','/dinh-menh-so-7'),(11,NULL,'https://cdn3.dhht.vn/wp-content/uploads/2022/07/so-8-co-y-nghia-gi-giai-ma-than-so-hoc-so-8-day-du-a-z-bia.jpg','Định Mệnh Số 8','/dinh-menh-so-8'),(12,NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNZMNFqLK23FK04qTYUDEqmqvLXJ5PawLGPFArKZ-66lgW8Y409-nDzbWtp4Cg4j4Hhc8&usqp=CAU','Định Mệnh Số 9','/dinh-menh-so-9');
/*!40000 ALTER TABLE `hometarot_table` ENABLE KEYS */;
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
