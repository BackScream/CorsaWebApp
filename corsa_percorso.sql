-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: corsa
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `percorso`
--

DROP TABLE IF EXISTS `percorso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `percorso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partenzaGps` varchar(45) NOT NULL,
  `arrivoGps` varchar(45) NOT NULL,
  `partenzaDateTime` varchar(45) NOT NULL,
  `arrivoDateTime` varchar(45) NOT NULL,
  `idUtente` int NOT NULL,
  `idMezzo` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUtente_idx` (`idUtente`),
  KEY `idMezzo_idx` (`idMezzo`),
  CONSTRAINT `idMezzo` FOREIGN KEY (`idMezzo`) REFERENCES `mezzo` (`id`),
  CONSTRAINT `idUtente` FOREIGN KEY (`idUtente`) REFERENCES `utente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `percorso`
--

LOCK TABLES `percorso` WRITE;
/*!40000 ALTER TABLE `percorso` DISABLE KEYS */;
INSERT INTO `percorso` VALUES (1,'123456','56465465','6546546','6546546',1,1),(2,'56465465','6546546','65465465','654654',1,1),(3,'6546546','6546546','6546546','87987',2,2),(4,'987987','2222','2222','555',2,2);
/*!40000 ALTER TABLE `percorso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 17:59:41
