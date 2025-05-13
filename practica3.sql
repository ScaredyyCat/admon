CREATE DATABASE  IF NOT EXISTS `sistema_renapo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_renapo`;
-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: localhost    Database: sistema_renapo
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `InforGral`
--

DROP TABLE IF EXISTS `InforGral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `InforGral` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_edad` (`edad`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InforGral`
--

LOCK TABLES `InforGral` WRITE;
/*!40000 ALTER TABLE `InforGral` DISABLE KEYS */;
INSERT INTO `InforGral` VALUES (1,'Salas Montoya Karla Josete',22,'M'),(2,'Flores Perez Gabriela',24,'M'),(3,'Decano Guerrero Valeria',23,'M'),(4,'Molina Toral Ana Lizbeth',22,'M'),(5,'Neria Franco Cassandra Sharon',22,'M'),(6,'Silva Cruz Bailey Joceline',22,'M'),(7,'Naomi Mayte Gonzalez Gonzalez Cruz',19,'M'),(8,'Jessica Naomi Cuatpotzo Isaias',21,'M'),(9,'Ansel Torres Salas',21,'M'),(10,'Laura Perez Savala',20,'M'),(19,'Alberto Gomez Prada',23,'H'),(20,'Franco Osorio Cruz',20,'H'),(21,'Juanito Torres Aguila',25,'H'),(22,'Moises solis pasos',23,'H'),(23,'Alberto Escabeche Prada',29,'H'),(24,'Juan J',20,'H'),(26,'Claudia Mendoza Paz',25,'M'),(27,'Viviana Aimee Mendoza',24,'M'),(28,'Mayra Julisa Morales',29,'M');
/*!40000 ALTER TABLE `InforGral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nueva_informacion`
--

DROP TABLE IF EXISTS `Nueva_informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nueva_informacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nueva_informacion`
--

LOCK TABLES `Nueva_informacion` WRITE;
/*!40000 ALTER TABLE `Nueva_informacion` DISABLE KEYS */;
INSERT INTO `Nueva_informacion` VALUES (1,'Salas Montoya Karla Josete',22,'M'),(2,'Flores Perez Gabriela',24,'M'),(3,'Decano Guerrero Valeria',23,'M'),(4,'Molina Toral Ana Lizbeth',22,'M'),(5,'Neria Franco Cassandra Sharon',22,'M'),(6,'Silva Cruz Bailey Joceline',22,'M'),(7,'Jessica Naomi Cuatpotzo Isaias',21,'M'),(8,'Ansel Torres Salas',21,'M'),(9,'Laura Perez Savala',20,'M'),(10,'Alberto Gomez Prada',23,'H'),(11,'Franco Osorio Cruz',20,'H'),(12,'Juanito Torres Aguila',25,'H'),(13,'Moises solis pasos',23,'H'),(14,'Juan J',20,'H'),(15,'Claudia Mendoza Paz',25,'M'),(16,'Viviana Aimee Mendoza',24,'M');
/*!40000 ALTER TABLE `Nueva_informacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-12 21:30:38
