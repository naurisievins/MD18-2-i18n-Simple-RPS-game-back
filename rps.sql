-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: rps
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `session_score`
--

DROP TABLE IF EXISTS `session_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_score` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `player_score` varchar(10) DEFAULT NULL,
  `computer_score` varchar(10) DEFAULT NULL,
  `games` int NOT NULL COMMENT 'Game count',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_score`
--

LOCK TABLES `session_score` WRITE;
/*!40000 ALTER TABLE `session_score` DISABLE KEYS */;
INSERT INTO `session_score` VALUES (1,'2023-02-15 16:44:49','4','4',13),(2,'2023-02-15 16:48:38','4','4',13),(3,'2023-02-15 17:01:04','5','5',16),(4,'2023-02-15 17:10:25','5','3',10),(5,'2023-02-15 17:11:20','2','2',5),(6,'2023-02-15 17:29:25','1','0',1),(7,'2023-02-15 18:19:27','0','1',2),(8,'2023-02-15 18:20:25','0','0',1),(9,'2023-02-15 18:21:54','0','0',1),(10,'2023-02-15 18:21:59','0','0',1),(11,'2023-02-15 18:22:28','0','0',1),(12,'2023-02-15 18:24:07','0','1',2),(13,'2023-02-15 18:24:23','0','1',2),(14,'2023-02-15 18:24:50','0','1',1),(15,'2023-02-15 18:25:02','0','1',1),(16,'2023-02-15 18:25:11','0','1',1),(17,'2023-02-15 18:25:17','0','1',2),(18,'2023-02-15 18:25:26','1','1',2),(19,'2023-02-15 18:25:54','0','0',1),(20,'2023-02-15 18:26:42','0','0',1),(21,'2023-02-15 18:26:48','0','2',3),(22,'2023-02-15 18:27:11','0','0',1),(23,'2023-02-15 18:27:16','1','1',3),(24,'2023-02-15 18:27:26','0','0',1),(25,'2023-02-15 18:28:51','0','1',1),(26,'2023-02-15 18:30:31','0','1',1),(27,'2023-02-15 18:30:34','1','0',1),(28,'2023-02-15 18:30:53','1','0',1),(29,'2023-02-15 18:31:03','1','0',1),(30,'2023-02-15 18:31:11','0','2',6),(31,'2023-02-15 18:32:58','0','0',1),(32,'2023-02-15 18:33:18','0','1',1),(33,'2023-02-15 18:33:50','0','1',1),(34,'2023-02-15 18:34:06','0','0',3),(35,'2023-02-15 18:39:10','1','0',1),(36,'2023-02-15 19:29:27','0','1',1),(37,'2023-02-15 19:29:49','2','2',4),(38,'2023-02-15 19:45:29','0','2',2),(39,'2023-02-15 20:01:29','0','0',1),(40,'2023-02-15 20:01:39','1','2',3),(41,'2023-02-15 20:22:04','0','0',1),(42,'2023-02-15 20:25:00','0','0',1),(43,'2023-02-15 20:33:20','10','9',27),(44,'2023-02-15 20:36:44','1','2',4),(45,'2023-02-15 20:46:47','0','1',1),(46,'2023-02-15 20:51:51','0','0',1),(47,'2023-02-15 20:52:03','0','2',3),(48,'2023-02-15 20:59:12','1','2',3);
/*!40000 ALTER TABLE `session_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `single_score`
--

DROP TABLE IF EXISTS `single_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `single_score` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `player_weapon` varchar(10) DEFAULT NULL,
  `computer_weapon` varchar(10) DEFAULT NULL,
  `winner` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `single_score`
--

LOCK TABLES `single_score` WRITE;
/*!40000 ALTER TABLE `single_score` DISABLE KEYS */;
INSERT INTO `single_score` VALUES (114,'2023-02-15 17:02:18','X','X','draw'),(115,'2023-02-15 17:02:29','X','X','draw'),(116,'2023-02-15 17:02:43','rock','paper','computer'),(117,'2023-02-15 17:03:48','X','X','draw'),(118,'2023-02-15 17:04:20','rock','scissors','player'),(119,'2023-02-15 17:06:01','rock','scissors','player'),(120,'2023-02-15 17:06:40','rock','paper','computer'),(121,'2023-02-15 17:08:33','X','X','draw'),(122,'2023-02-15 17:08:54','paper','rock','player'),(123,'2023-02-15 17:09:33','paper','scissors','computer'),(124,'2023-02-15 17:10:08','X','X','draw'),(125,'2023-02-15 17:10:17','paper','rock','player'),(126,'2023-02-15 17:10:25','X','X','draw'),(127,'2023-02-15 17:10:32','rock','scissors','player'),(128,'2023-02-15 17:10:43','paper','rock','player'),(129,'2023-02-15 17:10:45','scissors','rock','computer'),(130,'2023-02-15 17:10:47','rock','scissors','player'),(131,'2023-02-15 17:10:48','paper','rock','player'),(132,'2023-02-15 17:10:50','scissors','rock','computer'),(133,'2023-02-15 17:10:52','X','X','draw'),(134,'2023-02-15 17:10:54','paper','scissors','computer'),(135,'2023-02-15 17:10:56','paper','rock','player'),(136,'2023-02-15 17:11:20','scissors','paper','player'),(137,'2023-02-15 17:11:22','paper','scissors','computer'),(138,'2023-02-15 17:11:24','X','X','draw'),(139,'2023-02-15 17:11:26','paper','scissors','computer'),(140,'2023-02-15 17:11:28','scissors','paper','player'),(141,'2023-02-15 17:29:25','paper','rock','player'),(142,'2023-02-15 18:19:27','X','X','draw'),(143,'2023-02-15 18:19:37','scissors','rock','computer'),(144,'2023-02-15 18:20:25','X','X','draw'),(145,'2023-02-15 18:21:59','X','X','draw'),(146,'2023-02-15 18:24:07','paper','scissors','computer'),(147,'2023-02-15 18:24:10','X','X','draw'),(148,'2023-02-15 18:24:23','X','X','draw'),(149,'2023-02-15 18:24:26','scissors','rock','computer'),(150,'2023-02-15 18:24:50','paper','scissors','computer'),(151,'2023-02-15 18:25:17','X','X','draw'),(152,'2023-02-15 18:25:20','paper','scissors','computer'),(153,'2023-02-15 18:25:26','rock','paper','computer'),(154,'2023-02-15 18:25:29','paper','rock','player'),(155,'2023-02-15 18:25:54','X','X','draw'),(156,'2023-02-15 18:26:48','scissors','rock','computer'),(157,'2023-02-15 18:26:50','paper','scissors','computer'),(158,'2023-02-15 18:26:52','X','X','draw'),(159,'2023-02-15 18:27:11','X','X','draw'),(160,'2023-02-15 18:27:16','scissors','rock','computer'),(161,'2023-02-15 18:27:18','rock','scissors','player'),(162,'2023-02-15 18:27:21','X','X','draw'),(163,'2023-02-15 18:27:26','X','X','draw'),(164,'2023-02-15 18:28:51','paper','scissors','computer'),(165,'2023-02-15 18:30:34','scissors','paper','player'),(166,'2023-02-15 18:31:11','paper','scissors','computer'),(167,'2023-02-15 18:31:13','X','X','draw'),(168,'2023-02-15 18:32:00','paper','scissors','computer'),(169,'2023-02-15 18:32:01','X','X','draw'),(170,'2023-02-15 18:32:23','X','X','draw'),(171,'2023-02-15 18:32:47','X','X','draw'),(172,'2023-02-15 18:32:58','X','X','draw'),(173,'2023-02-15 18:33:18','scissors','rock','computer'),(174,'2023-02-15 18:34:06','X','X','draw'),(175,'2023-02-15 18:34:08','X','X','draw'),(176,'2023-02-15 18:35:17','X','X','draw'),(177,'2023-02-15 18:39:10','scissors','paper','player'),(178,'2023-02-15 19:29:27','scissors','rock','computer'),(179,'2023-02-15 19:29:49','scissors','rock','computer'),(180,'2023-02-15 19:29:57','scissors','rock','computer'),(181,'2023-02-15 19:30:04','paper','rock','player'),(182,'2023-02-15 19:31:06','scissors','paper','player'),(183,'2023-02-15 19:45:29','paper','scissors','computer'),(184,'2023-02-15 19:45:37','paper','scissors','computer'),(185,'2023-02-15 20:01:29','X','X','draw'),(186,'2023-02-15 20:01:39','scissors','rock','computer'),(187,'2023-02-15 20:01:48','rock','paper','computer'),(188,'2023-02-15 20:01:53','scissors','paper','player'),(189,'2023-02-15 20:22:04','X','X','draw'),(190,'2023-02-15 20:33:20','X','X','draw'),(191,'2023-02-15 20:33:24','X','X','draw'),(192,'2023-02-15 20:33:27','rock','paper','computer'),(193,'2023-02-15 20:33:29','scissors','paper','player'),(194,'2023-02-15 20:33:31','paper','rock','player'),(195,'2023-02-15 20:33:33','scissors','paper','player'),(196,'2023-02-15 20:33:35','X','X','draw'),(197,'2023-02-15 20:33:37','paper','rock','player'),(198,'2023-02-15 20:33:39','rock','paper','computer'),(199,'2023-02-15 20:33:40','scissors','paper','player'),(200,'2023-02-15 20:33:42','paper','scissors','computer'),(201,'2023-02-15 20:33:44','X','X','draw'),(202,'2023-02-15 20:33:45','scissors','rock','computer'),(203,'2023-02-15 20:33:47','paper','rock','player'),(204,'2023-02-15 20:33:49','rock','paper','computer'),(205,'2023-02-15 20:33:52','scissors','rock','computer'),(206,'2023-02-15 20:34:03','scissors','paper','player'),(207,'2023-02-15 20:34:07','paper','rock','player'),(208,'2023-02-15 20:34:34','scissors','paper','player'),(209,'2023-02-15 20:34:38','X','X','draw'),(210,'2023-02-15 20:34:40','scissors','rock','computer'),(211,'2023-02-15 20:34:42','X','X','draw'),(212,'2023-02-15 20:34:48','paper','scissors','computer'),(213,'2023-02-15 20:34:50','scissors','rock','computer'),(214,'2023-02-15 20:34:52','X','X','draw'),(215,'2023-02-15 20:34:54','X','X','draw'),(216,'2023-02-15 20:34:56','paper','rock','player'),(217,'2023-02-15 20:36:44','X','X','draw'),(218,'2023-02-15 20:36:46','paper','rock','player'),(219,'2023-02-15 20:36:47','rock','paper','computer'),(220,'2023-02-15 20:38:07','scissors','rock','computer'),(221,'2023-02-15 20:46:47','scissors','rock','computer'),(222,'2023-02-15 20:51:51','X','X','draw'),(223,'2023-02-15 20:52:03','paper','scissors','computer'),(224,'2023-02-15 20:52:08','X','X','draw'),(225,'2023-02-15 20:52:14','rock','paper','computer'),(226,'2023-02-15 20:59:12','paper','rock','player'),(227,'2023-02-15 20:59:24','scissors','rock','computer'),(228,'2023-02-15 20:59:38','rock','paper','computer');
/*!40000 ALTER TABLE `single_score` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15 21:03:07
