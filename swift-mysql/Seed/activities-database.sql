-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 172.17.0.2    Database: game_night
-- ------------------------------------------------------
-- Server version	5.7.19

-- MUST SET 40101 to see emoji

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

ALTER DATABASE `game_night` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;

CREATE TABLE `activities` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `emoji` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text,
  `genre` varchar(50) DEFAULT NULL,
  `min_participants` int(3) DEFAULT NULL,
  `max_participants` int(3) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

ALTER TABLE `activities` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES
(4,'Monopoly','💰','Monopoly is a board game that originated in the United States in 1903 as a way to demonstrate that an economy which rewards wealth creation is better than one in which monopolists work under few constraints and to promote the economic theories of Henry George and in particular his ideas about taxation.','Adventure',2,6,'2017-07-24 20:43:51','2017-07-24 20:43:51'),
(5,'Risk','⚔️','Risk is a strategy board game of diplomacy, conflict, and conquest.','Strategy',2,8,'2017-07-24 20:43:51','2017-07-24 20:43:51'),
(6,'Pictionary','🖌️','Pictionary is a charades-inspired guessing word game invented by Robert Angel with graphic design by Gary Everson and first published in 1985 by Angel Games Inc.','Puzzle',4,-1,'2017-07-24 20:43:51','2017-07-24 20:43:51');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-25 14:02:17
