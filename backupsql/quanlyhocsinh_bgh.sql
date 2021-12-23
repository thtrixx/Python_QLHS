-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlyhocsinh
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `bgh`
--

DROP TABLE IF EXISTS `bgh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bgh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` enum('Male','Female','Other') DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `bgh_chk_1` CHECK ((`active` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgh`
--

LOCK TABLES `bgh` WRITE;
/*!40000 ALTER TABLE `bgh` DISABLE KEYS */;
INSERT INTO `bgh` VALUES (1,'hai','202cb962ac59075b964b07152d234b70','Lan','Nguyễn','Quận 9',NULL,36,'Female',1,'1984-12-01',1),(2,'2@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Cường','Trần','Quận 8',NULL,34,'Male',1,'1986-05-06',1),(3,'3@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nam','Nguyễn','Quận Bình Thạnh',NULL,40,'Male',1,'1980-08-09',1),(4,'4@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ngoạn','Trần','Quận Tân Bình',NULL,57,'Female',1,'1963-12-12',1),(5,'5@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Thuật','Nguyễn','Quận 2',NULL,32,'Male',0,'1988-04-12',1),(6,'6@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Đạt','Lê','Quận 3',NULL,30,'Male',1,'1990-06-29',1),(7,'7@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Vinh','Kiều','Quận 7',NULL,29,'Male',1,'1991-09-21',1),(8,'8@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hải','Lê','Quận 5',NULL,28,'Male',1,'1992-08-04',1),(9,'9@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nhi','Chung','Quận 1',NULL,27,'Female',1,'1993-07-04',1),(10,'10@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Đông ','Thân','Quận Thủ Đức',NULL,26,'Male',0,'1994-06-03',1);
/*!40000 ALTER TABLE `bgh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-05 23:40:41
