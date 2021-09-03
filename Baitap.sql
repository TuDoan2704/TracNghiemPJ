CREATE DATABASE  IF NOT EXISTS `dataquestion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dataquestion`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: dataquestion
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
-- Table structure for table `questiontoeic`
--

DROP TABLE IF EXISTS `questiontoeic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questiontoeic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `correctanswer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questiontoeic`
--

LOCK TABLES `questiontoeic` WRITE;
/*!40000 ALTER TABLE `questiontoeic` DISABLE KEYS */;
INSERT INTO `questiontoeic` VALUES (1,'1','Donations....... for the purchase of necessities will help provide a brighter holiday season to people in need.','A. seek','B. seeking','C. have sought','D. being sought','D'),(2,'2','Refreshments are arranged in the lobby ..... meals will be served shortly thereafter.','Asuch','B. either','C. with','D. and','D'),(3,'3','The internal audit is going to identify operational and financial risks our company is........  at the moment.','A. facing','Bprogressing','C. playing','D. dealing','A'),(4,'4','Employees will be given bonuses and incentives........ depending on their performance achievements, not based on their relationship with supervisors.','A. exclusive','B. excluding','C. exclusively','D. excluded','C'),(5,'5','No matter how drastically you revise your book, you must include photos of an artwork that you want to........ from the previous edition.','A. practice','B. persis','C. cooperate','D. retain','D'),(6,'6','They are required to inform the human resources department when resigning due ............... a disagreement over company policy.','A. to','B. by','C. on','D. for','A'),(7,'7','As real estate prices have....... dramatically in recent years, buyers have cancelled new-home contracts.','A.fallen','B. refused','C. performed','D. acquired','A'),(8,'8','Speakers should be prepared......... their findings to the audience and be able to answer questions regarding them.','A. has presented','B. presenting','C. present','D. to present','D'),(9,'9','Accommodation costs and living..... will vary, depending on individual requirements and work locations.','A. budget','B. prices','C. credits','D. expenses','D'),(10,'10','Many researchers are doing research on how to reduce the time it takes........ and forget an accident.','A. will overcome','B. be overcome','C. to overcome','D. has overcome','C'),(11,'11','As health care becomes....... than it was a decade ago, companies are forced to spend more on benefits.','A. as expensive','B. more expensive','C. so expensively','D. most expensively','B'),(12,'12','Customers have the right to..................the order within 5 business days from the delivery of the product without providing reasons for the cancellation.','A. weaken','B. invalidate','C. verify','D. weigh','B'),(13,'13','Editors are extremely busy proofreading, editing and compiling materials......... to publication date.\n\n','A. suited','B. conductive','C. forward','D. prior','D'),(14,'14','The customer service department is responsible for fulfilling........ from the public and has to forward them to the chief financial officer.','A. requests','B. request','C. requesting','D. requested','A');
/*!40000 ALTER TABLE `questiontoeic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03 12:24:17
