-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: notas_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'categoria 1'),(2,'categoria 2'),(3,'categoria 3');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestion_de_notas`
--

DROP TABLE IF EXISTS `gestion_de_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestion_de_notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `notas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_87f2b058-d8b9-4cd9-8bf9-1e476b018dbf` (`usuario_id`),
  KEY `FK_61009ede-e2b5-4aac-8dbd-60b5919aa358` (`notas_id`),
  CONSTRAINT `FK_61009ede-e2b5-4aac-8dbd-60b5919aa358` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `FK_87f2b058-d8b9-4cd9-8bf9-1e476b018dbf` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion_de_notas`
--

LOCK TABLES `gestion_de_notas` WRITE;
/*!40000 ALTER TABLE `gestion_de_notas` DISABLE KEYS */;
INSERT INTO `gestion_de_notas` VALUES (1,1,5),(2,4,4),(3,3,9),(4,9,6),(5,2,8),(6,5,1),(7,6,2),(8,7,10),(9,8,7),(10,10,3);
/*!40000 ALTER TABLE `gestion_de_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_mod` timestamp NOT NULL DEFAULT current_timestamp(),
  `descripcion` varchar(255) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c6a5cb94-0bde-4fb0-ad7c-41c2f03a126b` (`categoria_id`),
  CONSTRAINT `FK_c6a5cb94-0bde-4fb0-ad7c-41c2f03a126b` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'titulo 2','2021-09-13 21:18:14','2021-09-13 21:18:14','Lorem ipsum dolor sit amet.',3),(2,'titulo 3','2021-09-13 21:18:14','2021-09-13 21:18:14','Lorem ipsum dolor sit.',3),(3,'titulo 4','2021-09-13 21:18:14','2021-09-13 21:18:14','Lorem ipsum dolor sit amet, consectetur.v',2),(4,'titulo 5','2021-09-13 21:18:14','2021-09-13 21:18:14','Ipsum  sit consectetur',1),(5,'titulo 6','2021-09-13 21:18:14','2021-09-13 21:18:14','Lorem v',1),(6,'titulo 7','2021-09-13 21:18:14','2021-09-13 21:18:14',' dolor sit amet, consectetur',1),(7,'titulo 8','2021-09-13 21:18:14','2021-09-13 21:18:14','Lorem ipsum amet',3),(8,'titulo 9','2021-09-13 21:18:14','2021-09-13 21:18:14','Lorem sit amet, consectetur',2),(9,'titulo 10','2021-09-13 21:18:14','2021-09-13 21:18:14',' dolor sit amet, consectetur Lorem ipsum',3),(10,'titulo 1','2021-09-13 21:18:14','2021-09-13 21:18:14','Lorem ipsum dolor sit amet.',1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Leo','leo@gmail.com'),(2,'Manu','manu@gmail.com'),(3,'Diego','elDie@gmail.com'),(4,'Facu','facu@gmail.com'),(5,'Jim','jim@gmail.com'),(6,'Ray','ray@gmail.com'),(7,'John','john@gmail.com'),(8,'Robbie','robbie@gmail.com'),(9,'Norberto','norberto@gmail.com'),(10,'Pepito','pepito@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notas_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-13 18:59:46
