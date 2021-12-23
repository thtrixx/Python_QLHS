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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
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
  `classid` int DEFAULT NULL,
  `Payment` enum('1','2','3') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `classid` (`classid`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`id`),
  CONSTRAINT `student_chk_1` CHECK ((`active` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'18110277@student.hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ngọc','Nguyễn','test',NULL,16,'Female',1,'2005-12-01',3,1,'2'),(2,'31@hcmute.edu.vn','81dc9bdb52d04dc20036dbd8313ed055','Lan','Trần','Quận 1',NULL,16,'Female',1,'2005-12-04',3,2,'1'),(3,'32@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nam','Trần','Quận 6',NULL,16,'Male',1,'2005-07-08',3,3,'1'),(4,'33@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Dũng','Đặng','Quận 1',NULL,16,'Male',1,'2005-09-09',3,4,'1'),(5,'34@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Quốc','Nguyễn','Quận 2',NULL,17,'Male',1,'2004-01-02',3,5,'2'),(6,'35@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ân ','Trần','Quận 11',NULL,17,'Male',0,'2004-04-04',3,6,'2'),(7,'36@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Khoa','Phan','Quận 12',NULL,17,'Male',1,'2004-05-06',3,7,'2'),(8,'37@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Long','Nguyễn','Quận 4',NULL,17,'Male',1,'2004-08-09',3,8,'2'),(9,'38@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Thảo','Nguyễn','Quận 3',NULL,17,'Female',0,'2004-03-04',3,9,'2'),(10,'39@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Chinh','Võ','Quận 10',NULL,17,'Male',1,'2004-04-06',3,1,'2'),(11,'40@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Khoa','Phan','Quận 7',NULL,17,'Male',1,'2004-02-03',3,2,'2'),(12,'41@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Vũ','Nguyễn','Quận 6',NULL,17,'Male',1,'2004-07-09',3,3,'1'),(13,'42@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hiếu','Lê','Quận 5',NULL,16,'Male',1,'2005-10-01',3,4,'1'),(14,'43@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Duy','Nguyễn','Quận 1',NULL,16,'Male',1,'2005-02-03',3,5,'2'),(15,'44@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Thịnh','Nguyễn','Quận 3',NULL,18,'Male',0,'2003-12-02',3,6,'2'),(16,'45@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Phúc ','Nguyễn','Quận 2',NULL,18,'Male',1,'2003-03-12',3,7,'2'),(17,'46@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Minh','Trần','Quận 1',NULL,18,'Male',1,'2003-07-08',3,8,'2'),(18,'47@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hà','Hồ','Quận 3',NULL,18,'Female',0,'2003-11-12',3,9,'2'),(19,'48@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Như','Nguyễn','Quận 2',NULL,18,'Female',1,'2003-11-11',3,1,'2'),(20,'49@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Đạt','Nguyễn','Quận 2',NULL,18,'Male',1,'2003-10-11',3,2,'2'),(21,'50@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Thảo','Lê','Quận 3',NULL,18,'Female',1,'2003-10-12',3,9,'1'),(22,'51@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hằng','Lê','Quận 4',NULL,17,'Female',1,'2003-10-11',3,5,'2'),(23,'52@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Thu','Phan','Quận 5',NULL,16,'Female',1,'2002-10-13',3,3,'1'),(24,'53@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Phương','Lê','Quận 6',NULL,16,'Female',1,'2003-10-01',3,3,'1'),(25,'54@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Minh','Trần','Quận 7',NULL,17,'Male',1,'2002-09-11',3,6,'2'),(26,'55@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Trí','Trần','Quận 8',NULL,18,'Male',1,'2002-10-11',3,8,'2'),(27,'56@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nguyên','Nguyễn','Quận 9',NULL,17,'Male',1,'2002-10-19',3,4,'2'),(28,'57@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nguyên','Thái','Quận 2',NULL,18,'Male',1,'2003-10-04',3,7,'2'),(29,'58@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Lộc','Phạm','Quận 10',NULL,16,'Male',1,'2003-10-01',3,2,'2'),(30,'59@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Quang','Nguyễn','Quận 12',NULL,17,'Male',1,'2003-01-02',3,4,'2'),(31,'60hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Trúc','Chung','Quận 6',NULL,18,'Female',1,'2004-01-02',3,7,'1'),(32,'61@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Linh','Trác','Quận 7',NULL,17,'Female',1,'2003-10-11',3,4,'1'),(33,'62@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Mai','Nguyễn','Quận 2',NULL,16,'Female',1,'2003-10-08',3,2,'1'),(34,'63@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ngọc','Nguyễn','Quận 3',NULL,16,'Female',1,'2003-02-11',3,1,'1'),(35,'64@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Bích','Nguyễn','Quận 1',NULL,17,'Female',1,'2002-10-11',3,5,'1'),(36,'65@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ngân','Nguyễn','Quận 7',NULL,17,'Female',1,'2003-01-11',3,5,'1'),(37,'66@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Vy','Nguyễn','Quận 11',NULL,18,'Female',1,'2002-07-11',3,8,'1'),(38,'67@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hân','Nguyễn','Quận 4',NULL,17,'Female',1,'2003-09-11',3,5,'2'),(39,'68@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nhi','Trần','Quận 6',NULL,18,'Female',1,'2002-03-11',3,7,'2'),(40,'69@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Huyền','Trần','Quận 5',NULL,18,'Female',0,'2002-10-29',3,7,'2'),(41,'70@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Trung','Trần','Quận 11',NULL,18,'Male',1,'2002-02-21',3,7,'2'),(42,'71@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Minh','Trần','Quận Tân Bình',NULL,18,'Male',0,'2002-01-01',3,8,'2'),(43,'72@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Đạt','Phan','Quận Bình Tân',NULL,18,'Male',1,'2002-01-02',3,9,'2'),(44,'73@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Phúc','Phan','Quận 9',NULL,18,'Male',0,'2002-01-07',3,9,'1'),(45,'74@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Ân','Phan','Quận 2',NULL,17,'Male',1,'2003-12-01',3,6,'2'),(46,'75@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Mạnh','Phan','Quận 2',NULL,17,'Male',1,'2003-12-07',3,5,'1'),(47,'76@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Quý','Phan','Quận 2',NULL,17,'Male',1,'2003-12-12',3,4,'1'),(48,'77@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Phụng','Lê','Quận 2',NULL,17,'Female',1,'2003-07-01',3,4,'1'),(49,'78@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','My','Lê','Quận 9',NULL,17,'Female',1,'2003-07-07',3,5,'1'),(50,'79@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Lan','Lê','Quận 9',NULL,17,'Female',1,'2003-07-04',3,6,'1'),(51,'80@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hồng','Lê','Quận 9',NULL,16,'Female',1,'2004-05-01',3,1,'1'),(52,'81@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Huệ','Lê','Quận 9',NULL,16,'Female',1,'2004-05-07',3,1,'1'),(53,'82@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Long','Lương','Quận 7',NULL,16,'Male',1,'2004-05-04',3,2,'2'),(54,'83@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Long','Lương','Quận 7',NULL,16,'Male',1,'2004-05-12',3,3,'2'),(55,'84@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Cường','Nguyễn','Quận 7',NULL,16,'Male',1,'2004-05-29',3,1,'2'),(56,'85@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hoàng','Nguyễn','Quận 7',NULL,16,'Male',1,'2004-05-21',3,1,'2'),(57,'86@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Khôi','Nguyễn','Quận 4',NULL,16,'Male',1,'2004-05-19',3,2,'2'),(58,'87@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Luân','Nguyễn','Quận 4',NULL,16,'Male',1,'2004-06-12',3,1,'2'),(59,'88@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Luật','Lê','Quận 4',NULL,18,'Male',1,'2002-03-03',3,8,'1'),(60,'89@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hạnh','Lê','Quận 4',NULL,18,'Female',1,'2002-03-21',3,8,'1'),(61,'90@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Phượng','Lê','Quận 4',NULL,17,'Female',1,'2003-10-03',3,5,'1'),(62,'91@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Thi','Lê','Quận 6',NULL,17,'Female',1,'2003-10-13',3,4,'1'),(63,'92@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Thy','Lê','Quận 6',NULL,17,'Female',1,'2003-10-23',3,6,'1'),(64,'93@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Trúc','Võ','Quận 6',NULL,18,'Female',1,'2002-03-26',3,9,'1'),(65,'94@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Hiếu','Võ','Quận 6',NULL,16,'Male',1,'2004-06-19',3,1,'1'),(66,'95@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Nghĩa','Lê','Quận 7',NULL,16,'Male',1,'2004-06-01',3,2,'2'),(67,'96@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Lộc','Nguyễn','Quận 4',NULL,16,'Male',1,'2004-05-19',3,2,'2'),(68,'97@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Phượng','Lê','Quận 9',NULL,16,'Female',1,'2004-05-01',3,1,'1'),(69,'98@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Tâm','Lê','Quận 9',NULL,16,'Female',1,'2004-05-07',3,1,'1'),(70,'99@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Tân','Trần','Quận 7',NULL,16,'Male',1,'2004-05-04',3,2,'2'),(71,'100@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Long','Lê','Quận 7',NULL,16,'Male',1,'2004-05-12',3,3,'2'),(72,'101@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Quốc','Võ','Quận 7',NULL,16,'Male',1,'2004-05-29',3,1,'2'),(73,'102@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Toàn','Đinh','Quận 7',NULL,16,'Male',1,'2004-05-21',3,1,'2'),(74,'103@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Trọng','Ngô','Quận 4',NULL,16,'Male',1,'2004-05-19',3,2,'2'),(75,'104@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Thắng','Nguyễn','Quận 4',NULL,16,'Male',1,'2004-06-12',3,1,'2'),(76,'105@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Lâm','Ngô','Quận 4',NULL,16,'Male',1,'2004-05-19',3,2,'2'),(77,'106@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Triều','Đinh','Quận 4',NULL,16,'Male',1,'2004-05-19',3,2,'2'),(78,'107@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Cương','Phan','Quận 4',NULL,16,'Male',1,'2004-05-19',3,2,'2'),(79,'108@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Tiến','Nguyễn','Quận 4',NULL,16,'Male',1,'2004-05-19',3,2,'2'),(80,'109@hcmute.edu.vn','202cb962ac59075b964b07152d234b70','Tiền','Lê','Quận 4',NULL,16,'Male',1,'2004-05-19',3,2,'2'),(82,'1811027777@student.hcmute.edu.vn','123','hai','hai','123',NULL,12,'Male',1,'2021-01-13',3,NULL,'1'),(83,'181102773232@student.hcmute.edu.vn','123','hai','hai','12323',NULL,12,'Female',1,'2021-01-05',3,1,'1'),(84,'181102777237@student.hcmute.edu.vn','202cb962ac59075b964b07152d234b70','hai','hai','123',NULL,NULL,NULL,1,NULL,3,2,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-05 23:40:40
