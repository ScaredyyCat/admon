CREATE DATABASE  IF NOT EXISTS `cine` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cine`;
-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: localhost    Database: cine
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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `ID_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `ap_pat_cliente` varchar(30) DEFAULT NULL,
  `ap_mat_cliente` varchar(30) DEFAULT NULL,
  `correo_cliente` varchar(30) DEFAULT NULL,
  `telefono_cliente` varchar(10) DEFAULT NULL,
  `fechaNac_cliente` date DEFAULT NULL,
  `genero_cliente` varchar(1) DEFAULT NULL,
  `domicilio_cliente` varchar(50) DEFAULT NULL,
  `ID_empleado` int NOT NULL,
  PRIMARY KEY (`ID_cliente`,`ID_empleado`),
  UNIQUE KEY `ID_cliente` (`ID_cliente`),
  KEY `ID_empleado` (`ID_empleado`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_empleado`) REFERENCES `Empleado` (`ID_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'Luis','Hernández','Gómez','luis.hernandez@gmail.com','5512345678','2000-06-15','M','Calle Reforma 123',13),(2,'Ana','López','Ramírez','ana.lopez@hotmail.com','5523456789','1998-03-22','F','Av. Universidad 456',14),(3,'Carlos','Martínez','Sánchez','carlos.martinez@gmail.com','5534567890','1997-11-05','M','Blvd. Norte 789',15),(4,'María','García','Vega','maria.garcia@hotmail.com','5545678901','2002-01-30','F','Calle Centro 321',16),(5,'Jorge','Pérez','Ortiz','jorge.perez@gmail.com','5556789012','2001-09-12','M','Av. Insurgentes 654',17),(6,'Laura','Santos','Navarro','laura.santos@hotmail.com','5567890123','1999-04-17','F','Colonia Roma 987',18),(7,'Diego','Castro','Flores','diego.castro@gmail.com','5578901234','2000-12-03','M','Zona Rosa 654',19),(8,'Andrea','Torres','Ríos','andrea.torres@hotmail.com','5589012345','1996-07-09','F','Av. Juárez 852',20),(9,'Ricardo','Ramírez','Mendoza','ricardo.ramirez@gmail.com','5590123456','2003-05-25','M','Centro Histórico 741',21),(10,'Fernanda','Morales','Cruz','fernanda.morales@hotmail.com','5501234567','1995-10-11','F','Santa Fe 159',22);
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleado` (
  `ID_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre_empleado` varchar(50) DEFAULT NULL,
  `ap_pat_empleado` varchar(30) DEFAULT NULL,
  `ap_mat_empleado` varchar(30) DEFAULT NULL,
  `correo_empleado` varchar(30) DEFAULT NULL,
  `telefono_empleado` varchar(10) DEFAULT NULL,
  `fechaNac_empleado` date DEFAULT NULL,
  `genero_empleado` varchar(1) DEFAULT NULL,
  `domicilio_empleado` varchar(70) DEFAULT NULL,
  `rfc_empleado` varchar(13) DEFAULT NULL,
  `puesto_empleado` varchar(20) DEFAULT NULL,
  `turno_empleado` varchar(1) DEFAULT NULL,
  `ID_sucursal` int DEFAULT NULL,
  PRIMARY KEY (`ID_empleado`),
  UNIQUE KEY `ID_empleado` (`ID_empleado`),
  KEY `ID_sucursal` (`ID_sucursal`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_sucursal`) REFERENCES `Sucursal` (`ID_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES (13,'Luis','Gómez','Sánchez','luis.gomez@cine.com','5512345678','1995-04-10','M','Av. Reforma 100','GOSL950410XXX','Taquillero','M',21),(14,'María','López','Hernández','maria.lopez@cine.com','5523456789','1998-07-22','F','Calle Juárez 200','LOHM980722XXX','Taquillero','V',22),(15,'Carlos','Ramírez','Gutiérrez','carlos.ramirez@cine.com','5534567890','1994-02-05','M','Blvd. Norte 300','RAGC940205XXX','Vendedor','M',23),(16,'Ana','Martínez','Flores','ana.martinez@cine.com','5545678901','1999-10-30','F','Zona Centro 400','MAFA991030XXX','Vendedor','V',24),(17,'Diego','Santos','Navarro','diego.santos@cine.com','5556789012','1997-03-18','M','Av. Insurgentes 500','SAND970318XXX','Proyeccionista','M',25),(18,'Fernanda','Torres','Ruiz','fernanda.torres@cine.com','5567890123','1996-06-25','F','Colonia Roma 600','TOFR960625XXX','Proyeccionista','V',26),(19,'Jorge','Mendoza','Cruz','jorge.mendoza@cine.com','5578901234','1993-01-12','M','Santa Fe 700','MECR930112XXX','Gerente','M',27),(20,'Sofía','Vega','Pérez','sofia.vega@cine.com','5589012345','2000-09-09','F','Centro Histórico 800','VEPS000909XXX','Asistente','V',28),(21,'Ricardo','Castillo','Morales','ricardo.castillo@cine.com','5590123456','1995-05-21','M','Polanco 900','CAMR950521XXX','Limpieza','M',29),(22,'Laura','Morales','Sánchez','laura.morales@cine.com','5501234567','1997-08-14','F','Coyoacán 1000','MOSL970814XXX','Limpieza','V',30);
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funcion`
--

DROP TABLE IF EXISTS `Funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Funcion` (
  `ID_funcion` int NOT NULL AUTO_INCREMENT,
  `fecha_hora_funcion` datetime DEFAULT NULL,
  `idioma_funcion` varchar(15) DEFAULT NULL,
  `sala_funcion` varchar(10) DEFAULT NULL,
  `ID_pelicula` int DEFAULT NULL,
  `ID_sucursal` int DEFAULT NULL,
  PRIMARY KEY (`ID_funcion`),
  UNIQUE KEY `ID_funcion` (`ID_funcion`),
  KEY `ID_pelicula` (`ID_pelicula`),
  KEY `ID_sucursal` (`ID_sucursal`),
  CONSTRAINT `funcion_ibfk_1` FOREIGN KEY (`ID_pelicula`) REFERENCES `Pelicula` (`ID_pelicula`),
  CONSTRAINT `funcion_ibfk_2` FOREIGN KEY (`ID_sucursal`) REFERENCES `Sucursal` (`ID_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funcion`
--

LOCK TABLES `Funcion` WRITE;
/*!40000 ALTER TABLE `Funcion` DISABLE KEYS */;
INSERT INTO `Funcion` VALUES (1,'2025-05-01 14:00:00','Español','Sala 1',1,NULL),(2,'2025-05-01 16:30:00','Español','Sala 2',2,NULL),(3,'2025-05-01 19:00:00','Español','Sala 3',3,NULL),(4,'2025-05-02 12:00:00','Inglés','Sala 4',4,NULL),(5,'2025-05-02 14:30:00','Inglés','Sala 5',5,NULL),(6,'2025-05-02 17:00:00','Español','Sala 6',6,NULL),(7,'2025-05-03 11:00:00','Español','Sala 1',7,NULL),(8,'2025-05-03 13:30:00','Inglés','Sala 2',8,NULL),(9,'2025-05-03 16:00:00','Español','Sala 3',9,NULL),(10,'2025-05-03 18:30:00','Inglés','Sala 4',10,NULL);
/*!40000 ALTER TABLE `Funcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pelicula`
--

DROP TABLE IF EXISTS `Pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pelicula` (
  `ID_pelicula` int NOT NULL AUTO_INCREMENT,
  `titulo_pelicula` varchar(30) DEFAULT NULL,
  `duracion_pelicula` mediumint DEFAULT NULL,
  `genero_pelicula` varchar(30) DEFAULT NULL,
  `clasificacion_pelicula` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_pelicula`),
  UNIQUE KEY `ID_pelicula` (`ID_pelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pelicula`
--

LOCK TABLES `Pelicula` WRITE;
/*!40000 ALTER TABLE `Pelicula` DISABLE KEYS */;
INSERT INTO `Pelicula` VALUES (1,'Avengers: Endgame',181,'Acción','A'),(2,'Toy Story 4',100,'Animación','A'),(3,'Joker',122,'Drama','B'),(4,'The Lion King',118,'Aventura','A'),(5,'Inception',148,'Ciencia Ficción','A'),(6,'Frozen II',103,'Animación','A'),(7,'Parasite',132,'Drama','B'),(8,'Spider-Man: No Way Home',148,'Acción','A'),(9,'The Matrix',136,'Ciencia Ficción','A'),(10,'Interstellar',169,'Ciencia Ficción','A');
/*!40000 ALTER TABLE `Pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promocion`
--

DROP TABLE IF EXISTS `Promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Promocion` (
  `ID_promocion` int NOT NULL AUTO_INCREMENT,
  `nombre_promocion` varchar(25) DEFAULT NULL,
  `desc_promocion` varchar(70) DEFAULT NULL,
  `descuento_promocion` varchar(3) DEFAULT NULL,
  `ID_cliente` int DEFAULT NULL,
  PRIMARY KEY (`ID_promocion`),
  UNIQUE KEY `ID_promocion` (`ID_promocion`),
  KEY `ID_cliente` (`ID_cliente`),
  CONSTRAINT `promocion_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `Cliente` (`ID_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promocion`
--

LOCK TABLES `Promocion` WRITE;
/*!40000 ALTER TABLE `Promocion` DISABLE KEYS */;
INSERT INTO `Promocion` VALUES (1,'Descuento Verano','Descuento en boletos para películas de verano','15%',1),(2,'Promoción 2x1','Compra 1 boleto y obtén 1 gratis','50%',2),(3,'Martes de Cine','Descuento para todas las funciones los martes','20%',3),(4,'Cine Familiar','Descuento en boletos para funciones familiares','10%',4),(5,'Noche de Estreno','Descuento para ver películas de estreno','25%',5),(6,'Cine en 3D','Descuento en funciones en 3D','30%',6),(7,'Cine Infantil','Descuento en boletos para películas infantiles','15%',7),(8,'Promoción VIP','Acceso a funciones VIP con descuento','40%',8),(9,'Noche de Horror','Descuento en películas de terror','20%',9),(10,'Promoción de Navidad','Descuento especial por temporada navideña','35%',10);
/*!40000 ALTER TABLE `Promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedor`
--

DROP TABLE IF EXISTS `Proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedor` (
  `ID_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(30) DEFAULT NULL,
  `rfc_proveedor` varchar(13) DEFAULT NULL,
  `correo_proveedor` varchar(30) DEFAULT NULL,
  `telefono_proveedor` varchar(10) DEFAULT NULL,
  `domicilio_proveedor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_proveedor`),
  UNIQUE KEY `ID_proveedor` (`ID_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedor`
--

LOCK TABLES `Proveedor` WRITE;
/*!40000 ALTER TABLE `Proveedor` DISABLE KEYS */;
INSERT INTO `Proveedor` VALUES (1,'Dulces CineMix','DCM123456ABC','contacto@cinemix.com','5512345678','Av. Insurgentes 100'),(2,'ProyecCine SA','PCS987654ZYX','ventas@proyecine.com','5523456789','Calle Reforma 250'),(3,'Sonido Max','SMX456789QWE','info@sonidomax.com','5534567890','Blvd. Tecnológico 300'),(4,'Limpiezas Elite','LEL654321RTY','servicios@limpiezaselite.com','5545678901','Zona Centro 400'),(5,'Pantallas CinePro','PCP321654DFG','contacto@cinepro.com','5556789012','Av. Universidad 500'),(6,'Snack Time','SNT789123UOP','ordenes@snacktime.com','5567890123','Calle Juárez 600'),(7,'Mantenimiento Plus','MTP147258CVB','support@mtplus.com','5578901234','Colonia Roma 700'),(8,'Efectos Visuales 3D','EVT963852MLK','ventas@ev3d.com','5589012345','Santa Fe 800'),(9,'Butacas Confort','BTC159357ZXC','info@butacasconfort.com','5590123456','Centro Histórico 900'),(10,'Popcorn Masters','PCM753159BNM','popcorn@masters.com','5501234567','Polanco 1000');
/*!40000 ALTER TABLE `Proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sucursal`
--

DROP TABLE IF EXISTS `Sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sucursal` (
  `ID_sucursal` int NOT NULL AUTO_INCREMENT,
  `nombre_sucursal` varchar(50) DEFAULT NULL,
  `direccion_sucursal` varchar(70) DEFAULT NULL,
  `telefono_sucursal` varchar(10) DEFAULT NULL,
  `ID_cliente` int DEFAULT NULL,
  `ID_proveedor` int DEFAULT NULL,
  PRIMARY KEY (`ID_sucursal`),
  UNIQUE KEY `ID_sucursal` (`ID_sucursal`),
  KEY `ID_cliente` (`ID_cliente`),
  KEY `ID_proveedor` (`ID_proveedor`),
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `Cliente` (`ID_cliente`),
  CONSTRAINT `sucursal_ibfk_2` FOREIGN KEY (`ID_proveedor`) REFERENCES `Proveedor` (`ID_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sucursal`
--

LOCK TABLES `Sucursal` WRITE;
/*!40000 ALTER TABLE `Sucursal` DISABLE KEYS */;
INSERT INTO `Sucursal` VALUES (21,'Cinépolis Universidad','Av. Universidad 1000, CDMX','5512345678',1,1),(22,'Cinépolis Santa Fe','Centro Comercial Santa Fe, CDMX','5523456789',2,2),(23,'Cinépolis Reforma','Paseo de la Reforma 222, CDMX','5534567890',3,3),(24,'Cinépolis Perisur','Centro Comercial Perisur, CDMX','5545678901',4,4),(25,'Cinépolis Polanco','Av. Ejército Nacional 980, CDMX','5556789012',5,5),(26,'Cinépolis Toreo','Centro Comercial Toreo, Naucalpan','5567890123',6,6),(27,'Cinépolis Satélite','Plaza Satélite, Naucalpan','5578901234',7,7),(28,'Cinépolis Mundo E','Centro Comercial Mundo E, Tlalnepantla','5589012345',8,8),(29,'Cinépolis Fórum Buenavista','Foro Buenavista, CDMX','5590123456',9,9),(30,'Cinépolis Oasis Coyoacán','Centro Comercial Oasis, Coyoacán','5501234567',10,10),(31,'Cinépolis Neza','Av. rio de los remedios 57185, CDMX','5534982719',1,1);
/*!40000 ALTER TABLE `Sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ventas`
--

DROP TABLE IF EXISTS `Ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ventas` (
  `ID_venta` int NOT NULL AUTO_INCREMENT,
  `fecha_venta` datetime DEFAULT NULL,
  `sala_funcion` varchar(10) DEFAULT NULL,
  `numBoletos_venta` mediumint DEFAULT NULL,
  `nombre_sucursal` varchar(50) DEFAULT NULL,
  `ID_funcion` int DEFAULT NULL,
  `ID_promocion` int DEFAULT NULL,
  `ID_empleado` int DEFAULT NULL,
  PRIMARY KEY (`ID_venta`),
  UNIQUE KEY `ID_venta` (`ID_venta`),
  KEY `ID_empleado` (`ID_empleado`),
  KEY `ID_promocion` (`ID_promocion`),
  KEY `ID_funcion` (`ID_funcion`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`ID_funcion`) REFERENCES `Funcion` (`ID_funcion`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`ID_funcion`) REFERENCES `Funcion` (`ID_funcion`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`ID_empleado`) REFERENCES `Empleado` (`ID_empleado`),
  CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`ID_promocion`) REFERENCES `Promocion` (`ID_promocion`),
  CONSTRAINT `ventas_ibfk_5` FOREIGN KEY (`ID_funcion`) REFERENCES `Funcion` (`ID_funcion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ventas`
--

LOCK TABLES `Ventas` WRITE;
/*!40000 ALTER TABLE `Ventas` DISABLE KEYS */;
INSERT INTO `Ventas` VALUES (1,'2025-05-01 15:30:00','Sala 1',4,'Cinépolis Universidad',1,1,13),(2,'2025-05-01 17:45:00','Sala 2',3,'Cinépolis Santa Fe',2,2,14),(3,'2025-05-01 20:00:00','Sala 3',4,'Cinépolis Reforma',3,3,15),(4,'2025-05-02 12:30:00','Sala 4',2,'Cinépolis Perisur',4,4,16),(5,'2025-05-02 14:00:00','Sala 5',3,'Cinépolis Polanco',5,5,17),(6,'2025-05-02 16:15:00','Sala 6',4,'Cinépolis Toreo',6,6,18),(7,'2025-05-03 10:00:00','Sala 1',2,'Cinépolis Satélite',7,7,19),(8,'2025-05-03 13:30:00','Sala 2',4,'Cinépolis Mundo E',8,8,20),(9,'2025-05-03 15:45:00','Sala 3',3,'Cinépolis Fórum Buenavista',9,9,21),(10,'2025-05-03 18:00:00','Sala 4',1,'Cinépolis Oasis Coyoacán',10,10,22);
/*!40000 ALTER TABLE `Ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-04 22:18:50
