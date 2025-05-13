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
-- Table structure for table `Emp_renapo`
--

DROP TABLE IF EXISTS `Emp_renapo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Emp_renapo` (
  `num_empleado` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(1) DEFAULT NULL,
  `puesto` varchar(25) DEFAULT NULL,
  `antiguedad` int DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `nombres` varchar(15) DEFAULT NULL,
  `emprenapo_ap` varchar(20) DEFAULT NULL,
  `emprenapo_am` varchar(20) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`num_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Emp_renapo`
--

LOCK TABLES `Emp_renapo` WRITE;
/*!40000 ALTER TABLE `Emp_renapo` DISABLE KEYS */;
INSERT INTO `Emp_renapo` VALUES (1,'H','Supervisor',1,'IAMOIWBCG23U7','Alberto','Gomez','Prada',23),(2,'H','Supervisor',3,'AQIMDHWZCFT81','Franco','Osorio','Cruz',20),(3,'H','Encargado',4,'JAH1YBAGWT4I9','Juanito','Torres','Aguila',25),(4,'H','Encargado',6,'HYQBAIWUHYST6','Moises','Solis','Pasos',23),(5,'H','Capturista',7,'IAMOIWBCG23U7','Alberto','Escabeche','Prada',29),(6,'M','Administrativo',8,'IAMOIWBCG23U7','Gloria','Mendoza','Ordaz',32),(7,'M','Capturista',1,'IAMOIWBCG23U7','Itzel','Gomez','Perez',35),(8,'M','Administrativo',4,'IAMOIWBCG23U7','Miriam','Cruz','Prada',34),(9,'M','Adminisitrativo',5,'IAMOIWBCG23U7','Mons','Estrada','Maria',39),(10,'M','Capturista',7,'AQIMDHWZCFT81','Mayra','Marquez','Cruz',25),(11,'H','Capturista',1,'HAJQUWNZO982U','Juan J','Hernandez','Mendoza',20);
/*!40000 ALTER TABLE `Emp_renapo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtro`
--

DROP TABLE IF EXISTS `filtro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filtro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtro`
--

LOCK TABLES `filtro` WRITE;
/*!40000 ALTER TABLE `filtro` DISABLE KEYS */;
INSERT INTO `filtro` VALUES (1,'Salas Montoya Karla Josete',22,'M'),(2,'Flores Perez Gabriela',24,'M'),(3,'Decano Guerrero Valeria',23,'M'),(4,'Molina Toral Ana Lizbeth',22,'M'),(8,'Peruano Solis Eric',23,'H'),(9,'Ordaz Vazquez Alejandro',21,'H');
/*!40000 ALTER TABLE `filtro` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Nuevo_usuario`
--

DROP TABLE IF EXISTS `Nuevo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nuevo_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nuevo_usuario`
--

LOCK TABLES `Nuevo_usuario` WRITE;
/*!40000 ALTER TABLE `Nuevo_usuario` DISABLE KEYS */;
INSERT INTO `Nuevo_usuario` VALUES (1,'Salas Montoya Karla Josete',22,'M'),(2,'Peruano Solis Eric',23,'H'),(3,'Flores Perez Gabriela',24,'M'),(4,'Decano Guerrero Valeria',23,'M'),(5,'Molina Toral Ana Lizbeth',22,'M'),(6,'Ordaz Vazquez Alejandro',21,'H'),(7,'Neria Franco Cassandra Sharon',22,'M'),(8,'Mancilla Avila Luis Daniel',23,'H'),(9,'Silva Cruz Bailey Joceline',22,'M'),(10,'Naomi Mayte Gonzalez Gonzalez Cruz',19,'M'),(11,'Jessica Naomi Cuatpotzo Isaias',21,'M'),(12,'Franciso Javier Robles',27,'H'),(13,'Luis Hernández Gómez',25,'H'),(14,'Gonzales Zapata Jesus',23,'H'),(15,'Ansel Torres Salas',21,'M'),(16,'Laura Perez Savala',20,'M'),(17,'Perez Lopez Menori Victor',24,'H'),(18,'Rodriguez Amaya Emiliano',24,'H');
/*!40000 ALTER TABLE `Nuevo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rep_familia`
--

DROP TABLE IF EXISTS `Rep_familia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rep_familia` (
  `curp_fam` varchar(18) NOT NULL,
  `ingreso_mensual` decimal(10,2) DEFAULT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido_rfamilia_m` varchar(20) DEFAULT NULL,
  `apellido_rfamilia_p` varchar(20) DEFAULT NULL,
  `estado_civil` varchar(20) DEFAULT NULL,
  `grado_academico` varchar(20) DEFAULT NULL,
  `puesto` varchar(15) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`curp_fam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rep_familia`
--

LOCK TABLES `Rep_familia` WRITE;
/*!40000 ALTER TABLE `Rep_familia` DISABLE KEYS */;
INSERT INTO `Rep_familia` VALUES ('CAGC970905HMCMLR03',12000.00,'Claudia','Mendoza','Paz','Casada','Preparatoria','Abogada',25,'M'),('EDRJ021325DDFRRNA9',4000.00,'Miguel','Rosas','Rojas','Casado','Universidad','Ingeniero',21,'H'),('GAMF010430MDFLNS04',15000.00,'Viviana','Aimee','Mendoza','Hernandez','Universidad','Ingeniera',24,'M'),('HEGL000615HDFRRS01',5000.00,'Mayra','Julisa','Morales','Soltera','Universidad','Ingeniera',29,'M'),('HEMJ021225HDFRRNA9',9500.50,'Alvaro','Diaz','Paz','Casado','Universidad','Ingeniero',27,'H'),('LOAA990322MDFNRN02',13000.00,'Miriam','Castro','Ortiz','Casada','Posgrado','CEO',20,NULL);
/*!40000 ALTER TABLE `Rep_familia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reporte`
--

DROP TABLE IF EXISTS `Reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reporte` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `curp_fam` varchar(18) DEFAULT NULL,
  `t_social` int DEFAULT NULL,
  `num_empleado` int DEFAULT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `curp_fam` (`curp_fam`),
  KEY `t_social` (`t_social`),
  KEY `num_empleado` (`num_empleado`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`curp_fam`) REFERENCES `Rep_familia` (`curp_fam`),
  CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`t_social`) REFERENCES `Trab_social` (`t_social`),
  CONSTRAINT `reporte_ibfk_3` FOREIGN KEY (`num_empleado`) REFERENCES `Emp_renapo` (`num_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reporte`
--

LOCK TABLES `Reporte` WRITE;
/*!40000 ALTER TABLE `Reporte` DISABLE KEYS */;
INSERT INTO `Reporte` VALUES (1,'EDRJ021325DDFRRNA9',1,1),(2,'HEMJ021225HDFRRNA9',2,2);
/*!40000 ALTER TABLE `Reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trab_social`
--

DROP TABLE IF EXISTS `Trab_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trab_social` (
  `t_social` int NOT NULL AUTO_INCREMENT,
  `rfc` varchar(13) DEFAULT NULL,
  `zona` varchar(50) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido_tsocial_m` varchar(20) DEFAULT NULL,
  `apellido_tsocial_p` varchar(20) DEFAULT NULL,
  `calle` varchar(20) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `alcaldia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`t_social`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trab_social`
--

LOCK TABLES `Trab_social` WRITE;
/*!40000 ALTER TABLE `Trab_social` DISABLE KEYS */;
INSERT INTO `Trab_social` VALUES (1,'HEMJ021225FB4','Polano','H','Juan Jesus','Hernandez','Mendoza','Azul',9,65185,'Azcapotzalco'),(2,'XEXX010101000','Norte','H','Luis Manuel','Lopez','Garcia','Rojo',34,57185,'Benito Juárez'),(3,'ABC123456XYZ1','Sur','M','María Elena','Fernandez','Soto','Bajoi',45,57190,'Iztapalapa');
/*!40000 ALTER TABLE `Trab_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_hombres`
--

DROP TABLE IF EXISTS `vista_hombres`;
/*!50001 DROP VIEW IF EXISTS `vista_hombres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_hombres` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `edad`,
 1 AS `genero`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Vivienda`
--

DROP TABLE IF EXISTS `Vivienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vivienda` (
  `clave_catastral` varchar(20) NOT NULL,
  `num_integrantes` int DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `calle` varchar(30) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `alcaldia` varchar(25) DEFAULT NULL,
  `curp_fam` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`clave_catastral`),
  KEY `fk_curp_fam` (`curp_fam`),
  CONSTRAINT `fk_curp_fam` FOREIGN KEY (`curp_fam`) REFERENCES `Rep_familia` (`curp_fam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vivienda`
--

LOCK TABLES `Vivienda` WRITE;
/*!40000 ALTER TABLE `Vivienda` DISABLE KEYS */;
INSERT INTO `Vivienda` VALUES ('AJQWUBSH67ALO9QNFH16',3,'5780','Lomas de Chapultepec',50,'Coyoacán','EDRJ021325DDFRRNA9'),('SNHEU187EMJUIL9073VD',45,'5165','Lazaro Cardenas',45,'Cuauhtémoc','HEMJ021225HDFRRNA9');
/*!40000 ALTER TABLE `Vivienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `vista_hombres`
--

/*!50001 DROP VIEW IF EXISTS `vista_hombres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_hombres` AS select `nueva_informacion`.`id` AS `id`,`nueva_informacion`.`nombre` AS `nombre`,`nueva_informacion`.`edad` AS `edad`,`nueva_informacion`.`genero` AS `genero` from `nueva_informacion` where (`nueva_informacion`.`genero` = 'H') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-11 21:54:55
