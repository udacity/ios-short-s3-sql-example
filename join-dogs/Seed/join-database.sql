-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 172.17.0.2    Database: join_dogs
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

ALTER DATABASE `join_dogs` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

--
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;

CREATE TABLE `dogs` (
  `dog_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `birthday` timestamp NOT NULL,
  PRIMARY KEY (`dog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

ALTER TABLE `dogs` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` VALUES
(1, 'Tahoe', 'M', 'Poodle', '2016-12-02'),
(2, 'Jaime', 'F', 'Border Collie', '2010-05-13'),
(3, 'Lady', 'F', 'Labradoodle', '2016-08-24'),
(4, 'Biscuits', 'F', 'Yorkshire Terrier', '2008-06-10');
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;

CREATE TABLE `accessories` (
  `accessory_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

ALTER TABLE `accessories` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
INSERT INTO `accessories` VALUES
(1, 'bandana', 'blue', 'salty dog'),
(2, 'collar', 'orange', 'war eagle'),
(3, 'vest', 'black', 'for the lake'),
(4, 'harness', 'black', 'for walks'),
(5, 'costume', 'green', 'for parties');
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `possessions`
--

DROP TABLE IF EXISTS `possessions`;

CREATE TABLE `possessions` (
  `possession_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `dog_id` int(20) unsigned NOT NULL,
  `accessory_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`possession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

ALTER TABLE `possessions` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

--
-- Dumping data for table `possessions`
--

LOCK TABLES `possessions` WRITE;
/*!40000 ALTER TABLE `possessions` DISABLE KEYS */;
INSERT INTO `possessions` VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4);
/*!40000 ALTER TABLE `possessions` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-01 14:57:24
