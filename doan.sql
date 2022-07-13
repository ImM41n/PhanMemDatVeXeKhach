-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: vexe
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `chuyen`
--

DROP TABLE IF EXISTS `chuyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuyen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngay` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `tuyen_id` int DEFAULT NULL,
  `xe_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq80toxwuqd9t39bl7t5sckyft` (`tuyen_id`),
  KEY `FK6osb161uysp2chu04v7krboa1` (`xe_id`),
  CONSTRAINT `FK6osb161uysp2chu04v7krboa1` FOREIGN KEY (`xe_id`) REFERENCES `xe` (`id`),
  CONSTRAINT `FKq80toxwuqd9t39bl7t5sckyft` FOREIGN KEY (`tuyen_id`) REFERENCES `tuyen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyen`
--

LOCK TABLES `chuyen` WRITE;
/*!40000 ALTER TABLE `chuyen` DISABLE KEYS */;
INSERT INTO `chuyen` VALUES (1,'2022-04-01',_binary '\0',1,1),(2,'2022-04-01',_binary '\0',2,2),(3,'2022-03-30',_binary '\0',1,3),(4,'2022-03-30',_binary '\0',1,4),(5,'2022-04-04',_binary '\0',1,5),(6,'2022-04-05',_binary '\0',1,6),(7,'2022-06-04',_binary '',1,7),(8,'2022-06-04',_binary '',1,8),(9,'2022-06-04',_binary '',1,9),(10,'2022-06-04',_binary '',1,11),(11,'2022-06-04',_binary '',3,12),(12,'2022-06-04',_binary '',4,13),(13,'2022-06-10',_binary '',1,9),(14,'2022-06-14',_binary '',1,7),(15,'2022-06-14',_binary '',2,8),(16,'2022-06-14',_binary '\0',1,9);
/*!40000 ALTER TABLE `chuyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngay` date DEFAULT NULL,
  `gia` int DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai`
--

LOCK TABLES `loai` WRITE;
/*!40000 ALTER TABLE `loai` DISABLE KEYS */;
INSERT INTO `loai` VALUES (1,'2022-06-13',300000,_binary '','Loại 1'),(2,'2022-03-30',250000,_binary '','Loại 2'),(3,'2022-06-14',200000,_binary '\0','Xe Cao Cấp');
/*!40000 ALTER TABLE `loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN'),(2,'EMPLOYEE'),(3,'USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` int DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `chuyen_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlkprt7r5593hr1o9829pm7ssp` (`chuyen_id`),
  CONSTRAINT `FKlkprt7r5593hr1o9829pm7ssp` FOREIGN KEY (`chuyen_id`) REFERENCES `chuyen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,1,_binary '',1),(2,2,_binary '',1),(3,3,_binary '',1),(4,4,_binary '',1),(5,5,_binary '',1),(6,6,_binary '',1),(7,7,_binary '',1),(8,8,_binary '',1),(9,9,_binary '',1),(10,10,_binary '',1),(11,11,_binary '',1),(12,12,_binary '',1),(13,13,_binary '',1),(14,14,_binary '',1),(15,15,_binary '',1),(16,16,_binary '',1),(17,17,_binary '',1),(18,18,_binary '',1),(19,19,_binary '',1),(20,20,_binary '',1),(21,21,_binary '',1),(22,22,_binary '',1),(23,23,_binary '',1),(24,24,_binary '',1),(25,25,_binary '',1),(26,26,_binary '',1),(27,27,_binary '',1),(28,28,_binary '',1),(29,29,_binary '',1),(30,30,_binary '',1),(31,1,_binary '',2),(32,2,_binary '',2),(33,3,_binary '',2),(34,4,_binary '',2),(35,5,_binary '',2),(36,6,_binary '',2),(37,7,_binary '',2),(38,8,_binary '',2),(39,9,_binary '',2),(40,10,_binary '',2),(41,11,_binary '',2),(42,12,_binary '',2),(43,13,_binary '',2),(44,14,_binary '',2),(45,15,_binary '',2),(46,16,_binary '',2),(47,17,_binary '',2),(48,18,_binary '',2),(49,19,_binary '',2),(50,20,_binary '',2),(51,21,_binary '',2),(52,22,_binary '',2),(53,23,_binary '',2),(54,24,_binary '',2),(55,25,_binary '',2),(56,26,_binary '',2),(57,27,_binary '',2),(58,28,_binary '',2),(59,29,_binary '',2),(60,30,_binary '',2),(61,31,_binary '',2),(62,32,_binary '',2),(63,33,_binary '',2),(64,34,_binary '',2),(65,35,_binary '',2),(66,36,_binary '',2),(67,1,_binary '',3),(68,2,_binary '',3),(69,3,_binary '',3),(70,4,_binary '',3),(71,5,_binary '',3),(72,6,_binary '',3),(73,7,_binary '',3),(74,8,_binary '',3),(75,9,_binary '',3),(76,10,_binary '',3),(77,11,_binary '',3),(78,12,_binary '',3),(79,13,_binary '',3),(80,14,_binary '',3),(81,15,_binary '',3),(82,16,_binary '',3),(83,17,_binary '',3),(84,18,_binary '',3),(85,19,_binary '',3),(86,20,_binary '',3),(87,21,_binary '',3),(88,22,_binary '',3),(89,23,_binary '',3),(90,24,_binary '',3),(91,1,_binary '',4),(92,2,_binary '',4),(93,3,_binary '',4),(94,4,_binary '',4),(95,5,_binary '',4),(96,6,_binary '',4),(97,7,_binary '',4),(98,8,_binary '',4),(99,9,_binary '',4),(100,10,_binary '',4),(101,11,_binary '',4),(102,12,_binary '',4),(103,13,_binary '',4),(104,14,_binary '',4),(105,15,_binary '',4),(106,16,_binary '',4),(107,17,_binary '',4),(108,18,_binary '',4),(109,19,_binary '',4),(110,20,_binary '',4),(111,21,_binary '',4),(112,22,_binary '',4),(113,23,_binary '',4),(114,24,_binary '',4),(115,25,_binary '',4),(116,26,_binary '',4),(117,27,_binary '',4),(118,28,_binary '',4),(119,29,_binary '',4),(120,30,_binary '',4),(121,31,_binary '',4),(122,32,_binary '',4),(123,33,_binary '',4),(124,34,_binary '',4),(125,35,_binary '',4),(126,36,_binary '',4),(127,1,_binary '',5),(128,2,_binary '',5),(129,3,_binary '',5),(130,4,_binary '',5),(131,5,_binary '',5),(132,6,_binary '',5),(133,7,_binary '',5),(134,8,_binary '',5),(135,9,_binary '',5),(136,10,_binary '',5),(137,11,_binary '',5),(138,12,_binary '',5),(139,13,_binary '',5),(140,14,_binary '',5),(141,15,_binary '',5),(142,16,_binary '',5),(143,17,_binary '',5),(144,18,_binary '',5),(145,19,_binary '',5),(146,20,_binary '',5),(147,21,_binary '',5),(148,22,_binary '',5),(149,23,_binary '',5),(150,24,_binary '',5),(151,1,_binary '',6),(152,2,_binary '',6),(153,3,_binary '',6),(154,4,_binary '',6),(155,5,_binary '',6),(156,6,_binary '',6),(157,7,_binary '',6),(158,8,_binary '',6),(159,9,_binary '',6),(160,10,_binary '',6),(161,11,_binary '',6),(162,12,_binary '',6),(163,13,_binary '',6),(164,14,_binary '',6),(165,15,_binary '',6),(166,16,_binary '',6),(167,17,_binary '',6),(168,18,_binary '',6),(169,19,_binary '',6),(170,20,_binary '',6),(171,21,_binary '',6),(172,22,_binary '',6),(173,23,_binary '',6),(174,24,_binary '',6),(175,25,_binary '',6),(176,26,_binary '',6),(177,27,_binary '',6),(178,28,_binary '',6),(179,29,_binary '',6),(180,30,_binary '',6),(181,31,_binary '',6),(182,32,_binary '',6),(183,33,_binary '',6),(184,34,_binary '',6),(185,35,_binary '',6),(186,36,_binary '',6),(187,1,_binary '\0',7),(188,2,_binary '',7),(189,3,_binary '',7),(190,4,_binary '',7),(191,5,_binary '',7),(192,6,_binary '',7),(193,7,_binary '',7),(194,8,_binary '',7),(195,9,_binary '',7),(196,10,_binary '',7),(197,11,_binary '',7),(198,12,_binary '',7),(199,13,_binary '',7),(200,14,_binary '',7),(201,15,_binary '',7),(202,16,_binary '',7),(203,17,_binary '',7),(204,18,_binary '',7),(205,19,_binary '',7),(206,20,_binary '',7),(207,21,_binary '',7),(208,22,_binary '',7),(209,23,_binary '',7),(210,24,_binary '',7),(211,25,_binary '',7),(212,26,_binary '',7),(213,27,_binary '',7),(214,28,_binary '',7),(215,29,_binary '',7),(216,30,_binary '',7),(217,31,_binary '',7),(218,32,_binary '',7),(219,33,_binary '',7),(220,34,_binary '',7),(221,35,_binary '',7),(222,36,_binary '',7),(223,1,_binary '',8),(224,2,_binary '',8),(225,3,_binary '',8),(226,4,_binary '',8),(227,5,_binary '',8),(228,6,_binary '',8),(229,7,_binary '',8),(230,8,_binary '',8),(231,9,_binary '',8),(232,10,_binary '',8),(233,11,_binary '',8),(234,12,_binary '',8),(235,13,_binary '',8),(236,14,_binary '',8),(237,15,_binary '',8),(238,16,_binary '',8),(239,17,_binary '',8),(240,18,_binary '',8),(241,19,_binary '',8),(242,20,_binary '',8),(243,21,_binary '',8),(244,22,_binary '',8),(245,23,_binary '',8),(246,24,_binary '',8),(247,1,_binary '',9),(248,2,_binary '',9),(249,3,_binary '',9),(250,4,_binary '',9),(251,5,_binary '',9),(252,6,_binary '',9),(253,7,_binary '',9),(254,8,_binary '',9),(255,9,_binary '',9),(256,10,_binary '',9),(257,11,_binary '',9),(258,12,_binary '',9),(259,13,_binary '',9),(260,14,_binary '',9),(261,15,_binary '',9),(262,16,_binary '',9),(263,17,_binary '',9),(264,18,_binary '',9),(265,19,_binary '',9),(266,20,_binary '',9),(267,21,_binary '',9),(268,22,_binary '',9),(269,23,_binary '',9),(270,24,_binary '',9),(271,25,_binary '',9),(272,26,_binary '',9),(273,27,_binary '',9),(274,28,_binary '',9),(275,29,_binary '',9),(276,30,_binary '',9),(277,31,_binary '',9),(278,32,_binary '',9),(279,33,_binary '',9),(280,34,_binary '',9),(281,35,_binary '',9),(282,36,_binary '',9),(283,1,_binary '',10),(284,2,_binary '',10),(285,3,_binary '',10),(286,4,_binary '',10),(287,5,_binary '',10),(288,6,_binary '',10),(289,7,_binary '',10),(290,8,_binary '',10),(291,9,_binary '',10),(292,10,_binary '',10),(293,11,_binary '',10),(294,12,_binary '',10),(295,13,_binary '',10),(296,14,_binary '',10),(297,15,_binary '',10),(298,16,_binary '',10),(299,17,_binary '',10),(300,18,_binary '',10),(301,19,_binary '',10),(302,20,_binary '',10),(303,21,_binary '',10),(304,22,_binary '',10),(305,23,_binary '',10),(306,24,_binary '',10),(307,1,_binary '\0',11),(308,2,_binary '\0',11),(309,3,_binary '\0',11),(310,4,_binary '',11),(311,5,_binary '\0',11),(312,6,_binary '',11),(313,7,_binary '\0',11),(314,8,_binary '',11),(315,9,_binary '',11),(316,10,_binary '',11),(317,11,_binary '',11),(318,12,_binary '',11),(319,13,_binary '\0',11),(320,14,_binary '',11),(321,15,_binary '',11),(322,16,_binary '',11),(323,17,_binary '',11),(324,18,_binary '',11),(325,19,_binary '',11),(326,20,_binary '',11),(327,21,_binary '',11),(328,22,_binary '',11),(329,23,_binary '',11),(330,24,_binary '',11),(331,25,_binary '',11),(332,26,_binary '',11),(333,27,_binary '',11),(334,28,_binary '',11),(335,29,_binary '',11),(336,30,_binary '',11),(337,31,_binary '',11),(338,32,_binary '',11),(339,33,_binary '',11),(340,34,_binary '',11),(341,35,_binary '',11),(342,36,_binary '',11),(343,1,_binary '',12),(344,2,_binary '',12),(345,3,_binary '',12),(346,4,_binary '',12),(347,5,_binary '',12),(348,6,_binary '',12),(349,7,_binary '',12),(350,8,_binary '',12),(351,9,_binary '',12),(352,10,_binary '',12),(353,11,_binary '',12),(354,12,_binary '',12),(355,13,_binary '',12),(356,14,_binary '',12),(357,15,_binary '',12),(358,16,_binary '',12),(359,17,_binary '',12),(360,18,_binary '',12),(361,19,_binary '',12),(362,20,_binary '',12),(363,21,_binary '',12),(364,22,_binary '',12),(365,23,_binary '',12),(366,24,_binary '',12),(367,1,_binary '',13),(368,2,_binary '',13),(369,3,_binary '',13),(370,4,_binary '',13),(371,5,_binary '',13),(372,6,_binary '',13),(373,7,_binary '',13),(374,8,_binary '',13),(375,9,_binary '',13),(376,10,_binary '',13),(377,11,_binary '',13),(378,12,_binary '',13),(379,13,_binary '',13),(380,14,_binary '',13),(381,15,_binary '',13),(382,16,_binary '',13),(383,17,_binary '',13),(384,18,_binary '',13),(385,19,_binary '',13),(386,20,_binary '',13),(387,21,_binary '',13),(388,22,_binary '',13),(389,23,_binary '',13),(390,24,_binary '',13),(391,25,_binary '',13),(392,26,_binary '',13),(393,27,_binary '',13),(394,28,_binary '',13),(395,29,_binary '',13),(396,30,_binary '',13),(397,31,_binary '',13),(398,32,_binary '',13),(399,33,_binary '',13),(400,34,_binary '',13),(401,35,_binary '',13),(402,36,_binary '',13),(403,1,_binary '',14),(404,2,_binary '',14),(405,3,_binary '',14),(406,4,_binary '',14),(407,5,_binary '',14),(408,6,_binary '',14),(409,7,_binary '',14),(410,8,_binary '',14),(411,9,_binary '',14),(412,10,_binary '',14),(413,11,_binary '',14),(414,12,_binary '',14),(415,13,_binary '',14),(416,14,_binary '',14),(417,15,_binary '',14),(418,16,_binary '',14),(419,17,_binary '',14),(420,18,_binary '',14),(421,19,_binary '',14),(422,20,_binary '',14),(423,21,_binary '',14),(424,22,_binary '',14),(425,23,_binary '',14),(426,24,_binary '',14),(427,25,_binary '',14),(428,26,_binary '',14),(429,27,_binary '',14),(430,28,_binary '',14),(431,29,_binary '',14),(432,30,_binary '',14),(433,31,_binary '',14),(434,32,_binary '',14),(435,33,_binary '',14),(436,34,_binary '',14),(437,35,_binary '',14),(438,36,_binary '',14),(439,1,_binary '\0',15),(440,2,_binary '',15),(441,3,_binary '',15),(442,4,_binary '',15),(443,5,_binary '',15),(444,6,_binary '',15),(445,7,_binary '',15),(446,8,_binary '',15),(447,9,_binary '',15),(448,10,_binary '',15),(449,11,_binary '',15),(450,12,_binary '',15),(451,13,_binary '',15),(452,14,_binary '',15),(453,15,_binary '',15),(454,16,_binary '',15),(455,17,_binary '',15),(456,18,_binary '',15),(457,19,_binary '',15),(458,20,_binary '',15),(459,21,_binary '',15),(460,22,_binary '',15),(461,23,_binary '',15),(462,24,_binary '',15),(463,1,_binary '',16),(464,2,_binary '',16),(465,3,_binary '',16),(466,4,_binary '',16),(467,5,_binary '',16),(468,6,_binary '',16),(469,7,_binary '',16),(470,8,_binary '',16),(471,9,_binary '',16),(472,10,_binary '',16),(473,11,_binary '',16),(474,12,_binary '',16),(475,13,_binary '',16),(476,14,_binary '',16),(477,15,_binary '',16),(478,16,_binary '',16),(479,17,_binary '',16),(480,18,_binary '',16),(481,19,_binary '',16),(482,20,_binary '',16),(483,21,_binary '',16),(484,22,_binary '',16),(485,23,_binary '',16),(486,24,_binary '',16),(487,25,_binary '',16),(488,26,_binary '',16),(489,27,_binary '',16),(490,28,_binary '',16),(491,29,_binary '',16),(492,30,_binary '',16),(493,31,_binary '',16),(494,32,_binary '',16),(495,33,_binary '',16),(496,34,_binary '',16),(497,35,_binary '',16),(498,36,_binary '',16);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuyen`
--

DROP TABLE IF EXISTS `tuyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tuyen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gio` time DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `tentuyen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuyen`
--

LOCK TABLES `tuyen` WRITE;
/*!40000 ALTER TABLE `tuyen` DISABLE KEYS */;
INSERT INTO `tuyen` VALUES (1,'17:00:00',_binary '','Sài Gòn - Bình Định'),(2,'18:00:00',_binary '','Bình Đinh - Sài Gòn'),(3,'00:00:00',_binary '','Bình Định - Sài Gòn'),(4,'14:00:00',_binary '','Sài Gòn - Bình Định'),(5,'16:03:00',_binary '\0','Bình Định - Sài Gòn');
/*!40000 ALTER TABLE `tuyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `diachi` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `ho` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `sdt` varchar(10) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `ten` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKf9dvvibvpfsldnu8wh3enop4i` (`username`,`email`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Binh Dinh','quangchinh@gmail.com','Quang','$2a$10$kF4st2Yv.o3wzE1uiiAhLuRQVz51fl6CSWNtXjVhF/2gpd7zG5mg.','0854649010',_binary '','Chinh','admin'),(2,'Tây Hòa','nguyenquangchinh79@gmail.com','Nguyen','$2a$10$SXAwAMxrTXnBrX6PmS1xteAuISe/UGGmKGsfZh7B3schFadpH2inm','0961196010',_binary '','Chinh','chinhptit'),(4,'Man Thiện','tanlam@ptit.com','Tấn','$2a$10$575VlDMxhIrh13cl08JlwOO5b7W.wjhdGer6zS3VclSXHnsjC3gWu','0999229931',_binary '','Lâm','lamptit'),(5,'Hà Nội','vantan@gmail.com','<script>alert(\"Hacked\")</script>','$2a$10$wq7Qx4XMTYd3cm35ZsG8Gujfe0IUXFQzVxNtvCyw8.qBvGgWkAmYu','0999991991',_binary '','Tấn','vantan'),(6,'Tây Hòa','vanthuy@gmail.com','Nguyen','$2a$10$Bihk3vwMdrWgukImOIyV7uVVYUmwEAHhxoyongxOQnZaqKtROS68u','0909190093',_binary '','Thuy','vanthuy'),(7,'Bình Định','quechi11@gmail.com','Nguyen','$2a$10$yPDCR2Cy8Ut8htZ6CHmuqeUiv5XXm7.KNpzAkZqSOJ5zjpsZER7XS','09239991',_binary '','Chi','quechi11'),(8,'Bình Thạnh','dung@gmail.com','Trần','$2a$10$K7Q0qOX7S4u0Eq9RYbifieR9MgrXIfYW25A0zFpjIZmIAFYm9HenO','0998833434',_binary '','Dũng','anhdung11');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(5,2),(6,2),(7,2),(1,3),(2,3),(4,3),(5,3),(6,3),(8,3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ve`
--

DROP TABLE IF EXISTS `ve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ve` (
  `id` int NOT NULL AUTO_INCREMENT,
  `diemden` varchar(255) DEFAULT NULL,
  `diemdi` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `xoa` bit(1) DEFAULT NULL,
  `seat_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk4wtah0f36phv5h50xv75iyej` (`seat_id`),
  KEY `FKh9v65pjxdlmbamjamw3iv2ucr` (`user_id`),
  CONSTRAINT `FKh9v65pjxdlmbamjamw3iv2ucr` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKk4wtah0f36phv5h50xv75iyej` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ve`
--

LOCK TABLES `ve` WRITE;
/*!40000 ALTER TABLE `ve` DISABLE KEYS */;
INSERT INTO `ve` VALUES (9,'Sài Gòn','Bình Đinh',_binary '\0',_binary '\0',46,1),(10,'Sài Gòn','Bình Đinh',_binary '',_binary '\0',31,2),(11,'Sài Gòn','Bình Định',_binary '',_binary '',307,2),(12,'Sài Gòn','Bình Định',_binary '',_binary '',308,2),(13,'Sài Gòn','Bình Định',_binary '',_binary '',309,2),(14,'Sài Gòn','Bình Định',_binary '',_binary '\0',310,2),(15,'Sài Gòn','Bình Định',_binary '',_binary '',311,2),(16,'Bình Định','Sài Gòn',_binary '',_binary '',187,2),(17,'Bình Định','Sài Gòn',_binary '\0',_binary '\0',188,2),(18,'Sài Gòn','Bình Định',_binary '',_binary '',319,2),(19,'Sài Gòn','Bình Định',_binary '',_binary '',313,2),(20,'Sài Gòn','Bình Đinh',_binary '',_binary '',439,1),(21,'Sài Gòn','Bình Đinh',_binary '\0',_binary '\0',440,2),(22,'Sài Gòn','Bình Đinh',_binary '\0',_binary '\0',448,8);
/*!40000 ALTER TABLE `ve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe`
--

DROP TABLE IF EXISTS `xe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soghe` int DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trangthai` bit(1) DEFAULT NULL,
  `loai_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlryyib44dx5awomr25kicq6fc` (`loai_id`),
  CONSTRAINT `FKlryyib44dx5awomr25kicq6fc` FOREIGN KEY (`loai_id`) REFERENCES `loai` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe`
--

LOCK TABLES `xe` WRITE;
/*!40000 ALTER TABLE `xe` DISABLE KEYS */;
INSERT INTO `xe` VALUES (1,30,_binary '\0','Xe 1',_binary '',1),(2,36,_binary '','Xe 2',_binary '\0',2),(3,24,_binary '','Xe 3',_binary '\0',1),(4,36,_binary '','Xe 4',_binary '\0',2),(5,24,_binary '','Xe 5',_binary '\0',1),(6,36,_binary '','Xe Giuong Nam',_binary '\0',2),(7,36,_binary '','Xe Cao Cấp 36',_binary '\0',1),(8,24,_binary '','Xe Cao Cấp 24',_binary '\0',1),(9,36,_binary '','Xe Phổ Thông 36',_binary '\0',2),(11,24,_binary '','Xe Phổ Thông 24',_binary '',2),(12,36,_binary '','Xe Cao Cấp 36',_binary '',1),(13,24,_binary '','Xe Cao Cấp 24',_binary '',1),(14,36,_binary '','Xe Giường Nằm',_binary '',1);
/*!40000 ALTER TABLE `xe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-08 23:28:58
