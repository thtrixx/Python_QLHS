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
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
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
  `subjectid` int DEFAULT NULL,
  `classid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `subjectid` (`subjectid`),
  KEY `teachẻ_ibfk_1_idx` (`classid`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`id`),
  CONSTRAINT `teachẻ_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `teacher_chk_1` CHECK ((`active` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'teacher','202cb962ac59075b964b07152d234b70','Huy','Võ','Quận 3',NULL,22,'Male',1,'1998-12-01',2,1,1),(2,'12@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Phong','Phùng','Quận 3',NULL,36,'Male',1,'1984-05-06',2,2,2),(3,'13@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ngọc ','Nguyễn','Quận 3',NULL,56,'Female',1,'1964-02-06',2,3,3),(4,'14@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Lộc','Trần','Quận 3',NULL,29,'Male',0,'1991-04-06',2,4,4),(5,'15@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Tuấn','Trần','Quận 3',NULL,27,'Male',1,'1993-12-14',2,5,5),(6,'16@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nam','Trần','Quận 5',NULL,33,'Male',1,'1987-09-12',2,6,6),(7,'17@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Phúc','Nguyễn','Quận 7',NULL,41,'Male',1,'1979-05-29',2,7,7),(8,'18@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Bảo','Lê','Quận 7',NULL,25,'Male',1,'1995-04-06',2,8,8),(9,'19@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Khánh','Đặng','Quận 1',NULL,30,'Male',1,'1990-06-02',2,9,9),(10,'20@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Quốc','Lê','Quận 1',NULL,38,'Male',0,'1982-04-04',2,10,10),(11,'21@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Anh','Trần','Quận 12',NULL,26,'Male',1,'1994-12-03',2,1,NULL),(12,'22@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Trọng','Nguyễn','Quận 3',NULL,28,'Male',1,'1992-10-12',2,2,NULL),(13,'23@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hiển','Võ','Quận 1',NULL,24,'Male',1,'1996-12-23',2,3,NULL),(14,'24@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nghỉ','Võ','Quận 6',NULL,36,'Female',1,'1984-10-09',2,4,NULL),(15,'25@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hằng','Phạm','Quận 3',NULL,25,'Female',1,'1995-08-09',2,5,NULL),(16,'26@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ngân','Lê','Quận 9',NULL,44,'Female',1,'1976-04-04',2,6,NULL),(17,'27@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ngân','Nguyễn','Quận 8',NULL,49,'Female',0,'1971-06-02',2,7,NULL),(18,'28@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Trang','Phạm','Quận 2',NULL,22,'Female',1,'1998-05-03',2,8,NULL),(19,'29@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Huy','Phan','Quận 4',NULL,23,'Male',1,'1997-06-07',2,9,NULL),(20,'30@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Trí','Đặng','Quận 4',NULL,26,'Male',1,'1994-09-09',2,10,NULL);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-05 23:40:39
