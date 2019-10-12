CREATE DATABASE  IF NOT EXISTS `olonsoftdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `olonsoftdb`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: olonsoftdb
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `it_issues`
--

DROP TABLE IF EXISTS `it_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `it_issues` (
  `issue_id` int(11) NOT NULL,
  `issue_summary` varchar(255) NOT NULL,
  `issue_description` varchar(4000) DEFAULT NULL,
  `identified_by_person_id` int(11) NOT NULL,
  `identified_date` date NOT NULL,
  `related_project_id` int(11) NOT NULL,
  `assigned_to_person_id` int(11) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `priority` varchar(30) NOT NULL,
  `target_resolution_date` date DEFAULT NULL,
  `progress` varchar(4000) DEFAULT NULL,
  `actual_resolution_date` date DEFAULT NULL,
  `resolution_summary` varchar(4000) DEFAULT NULL,
  `created_on` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_on` date DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it_issues`
--

LOCK TABLES `it_issues` WRITE;
/*!40000 ALTER TABLE `it_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `it_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `it_people`
--

DROP TABLE IF EXISTS `it_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `it_people` (
  `person_id` int(11) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `person_email` varchar(255) NOT NULL,
  `person_role` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `assigned_project` int(11) DEFAULT NULL,
  `created_on` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_on` date DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `it_people_name_uk` (`person_name`),
  UNIQUE KEY `it_people_username_uk` (`username`),
  CONSTRAINT `it_people_role_cc` CHECK ((`person_role` in (_utf8mb4'CEO',_utf8mb4'Manager',_utf8mb4'Lead',_utf8mb4'Member')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it_people`
--

LOCK TABLES `it_people` WRITE;
/*!40000 ALTER TABLE `it_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `it_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `it_projects`
--

DROP TABLE IF EXISTS `it_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `it_projects` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `target_end_date` date NOT NULL,
  `actual_end_date` date DEFAULT NULL,
  `created_on` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_on` date DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `it_projects_uk` (`project_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it_projects`
--

LOCK TABLES `it_projects` WRITE;
/*!40000 ALTER TABLE `it_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `it_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdDate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `username` varchar(12) NOT NULL,
  `token` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (4,'2019-10-07 06:00:00','farid@gmail.com',_binary '\0','Farid','Ahmed','$2a$10$9eFhAWoQB.H5Bn0u4EL4OuUZ7nLBNL8cMsIlvFg7m4M1o7cmjGTQO','ADMIN',NULL,'farid','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsidGVzdGp3dHJlc291cmNlaWQiXSwidXNlcl9uYW1lIjoiZmFyaWQiLCJzY29wZSI6WyJyZWFkIiwid3JpdGUiXSwiZXhwIjoxNTcwODYzMzc0LCJhdXRob3JpdGllcyI6WyJBRE1JTiJdLCJqdGkiOiI3N2U5NDBkMi1iMzRlLTQ5OWEtYjE3Zi0zMjMyNWRlYWM0MzIiLCJjbGllbnRfaWQiOiJ0ZXN0and0Y2xpZW50aWQifQ.qOBgU81-ZdcYWRmM0LUVLMxYQthpn1vEhb_TTNikiKw');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'olonsoftdb'
--

--
-- Dumping routines for database 'olonsoftdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-12  1:24:04
