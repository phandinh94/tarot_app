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
-- Table structure for table `tbl_famous`
--

DROP TABLE IF EXISTS `tbl_famous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_famous` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `numberology` varchar(45) DEFAULT NULL,
  `infornation` longtext,
  `job` varchar(255) DEFAULT NULL,
  `image` longtext,
  `numberId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_famous`
--

LOCK TABLES `tbl_famous` WRITE;
/*!40000 ALTER TABLE `tbl_famous` DISABLE KEYS */;
INSERT INTO `tbl_famous` VALUES (1,'Barack Hussein Obama II','04/08/1961','Số 3','“Một hiện tượng của Thế giới”, “Người thổi bùng lên quang cảnh quốc gia đang trong đêm tối” là những gì người ta thường nói về vị Tổng thống thứ 44 của nước Mỹ, cũng là vị Tổng thống da màu đầu tiên trong lịch sử của quốc gia này – Barack Obama. Chính thức rời khỏi Nhà Trắng từ năm 2017 sau khi trải qua hai nhiệm kỳ Tổng thống nhưng cho đến nay, cái tên Obama dường như vẫn chưa bao giờ đi vào quên lãng.','Cựu Tổng Thống Mỹ','https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/President_Barack_Obama.jpg/440px-President_Barack_Obama.jpg',NULL),(2,'Benjamin Graham','08/05/1894','Số 8','Một nhà kinh tế học, doanh nhân và là nhà đầu tư nổi tiếng và là thầy của Warren Buffett. Graham sở hữu tên riêng 62/8','Doanh Nhân','https://upload.wikimedia.org/wikipedia/commons/2/2a/Benjamin_Graham_%281894-1976%29_portrait_on_23_March_1950.jpg',NULL),(3,'Midu','5/10/1989','Số 6','Khả năng của số 33 đó là biết chuyển hướng lời nói hay cuộc hội thoại, làm thỏa mãn được đám đông và gây thiện cảm cho người nghe. Luôn rất giỏi khéo léo xử lý tình huống với vẻ ngoài nữ tính của mình. Và. cũng là một cô gái sống rất tình cảm, biết quan tâm đến người khác và có rất ít kẻ địch trong con đường sự nghiệp của mình','Diễn Viên','https://giaimathansohoc.vn/wp-content/uploads/2020/11/aaaa.png',NULL),(4,'Bill Gate','28/10/1955','Số 4','Là một nhà doanh nhân kiệt xuất của Mỹ. Ông là sáng lập và là kim chủ tịch của công ty Microsoft, một trong những công ty phần mềm lớn nhất thế giới. Bill Gate sở hữu một khối tài sản khổng lồ mà bất cứ ai cũng mơ ước có được. Ông luôn góp mặt trong top những người giàu nhất thế giới với số tài sản tính đến hiện tại lên tới 114,7 tỷ USD.','Doanh Nhân','https://giaimathansohoc.vn/wp-content/uploads/2020/11/asas.png',NULL),(5,'Mỹ Tâm','16/1/1981','Số 9','Dù ở vai trò nào cũng thể hiện sự năng động, nhiệt huyết của bản thân. Theo cách tính thần số học số 9 thì có thiên hướng nghệ thuật và Mỹ Tâm đã đi rất đúng năng lượng của mình ngay từ bé. Cũng sở hữu ngày sinh 16/7, mang lại cho nữ ca sĩ năng lực về trí tuệ, tư duy và sự hiểu biết.','Ca Sĩ','https://sohanews.sohacdn.com/thumb_w/660/160588918557773824/2022/10/16/photo1665899520995-1665899522020158099330.jpeg',NULL);
/*!40000 ALTER TABLE `tbl_famous` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 15:10:43
