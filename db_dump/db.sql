-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: g44
-- ------------------------------------------------------
-- Server version	5.5.28-1

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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` char(32) DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `old_value` varchar(128) DEFAULT NULL,
  `new_value` varchar(128) DEFAULT NULL,
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `verified` int(1) NOT NULL DEFAULT '0',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `created` int(10) DEFAULT NULL,
  `updated` int(10) DEFAULT NULL,
  `deleted` int(10) DEFAULT NULL,
  `isAdmin` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('016ae8e9679c420a976a8ff90d60bacd','alex0germ@gmail.com','3fc0a7acf087f549ac2b266baf94b8b1','grubastik',1,0,1358607083,NULL,NULL,0),('29820da55996a4907d3f60c42fe6557a','zero.ukr@gmail.com','d634978603e253fe2eec9c731399cf25','ololosh petrovich',1,0,1359975364,NULL,NULL,0),('7702070b7e54e81d44163c6e055d2901','test@mydev.org.ua','d634978603e253fe2eec9c731399cf25','yurko',1,0,1358608332,NULL,NULL,0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_password_reset`
--

DROP TABLE IF EXISTS `members_password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_password_reset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` char(32) NOT NULL,
  `password_reset` char(32) NOT NULL,
  `created` int(10) NOT NULL,
  `verified` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_password_reset`
--

LOCK TABLES `members_password_reset` WRITE;
/*!40000 ALTER TABLE `members_password_reset` DISABLE KEYS */;
INSERT INTO `members_password_reset` VALUES (41,'5572f97002baf2b63822b1e5b9c2de42','fe0efdb16ffb89829c7e9fe1045517c8',1358692492,1);
/*!40000 ALTER TABLE `members_password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_verify`
--

DROP TABLE IF EXISTS `members_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_verify` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` char(32) NOT NULL,
  `verify_key` char(32) NOT NULL,
  `created` int(10) NOT NULL,
  `verified` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_verify`
--

LOCK TABLES `members_verify` WRITE;
/*!40000 ALTER TABLE `members_verify` DISABLE KEYS */;
INSERT INTO `members_verify` VALUES (26,'13bebd27217140f163622d7c67cc7fc6','fe1eac89e841012035bfffe6deb9cee6',1358272391,NULL),(27,'cb289d626edc556a72722f5ab1d4d65c','26f743d307febc020184f3334dcd13b9',1358354210,NULL),(28,'7f2a1962d6e2b4293bbcddf942e111da','52a2be8f2b809c177aaeef3c36902a54',1358356418,1358356728),(29,'016ae8e9679c420a976a8ff90d60bacd','3930ac120e5db9ab078133ce4de7ea44',1358607083,1358607179),(30,'7702070b7e54e81d44163c6e055d2901','f5c3cfb05443e41f3b117586d85656b8',1358608332,1358608389),(31,'4791c4580f80a9fb2826dc965b5aa6fe','39ac1283ded3dbd27e03b8382fb9690a',1358691198,1358691285),(32,'0cf0d35d7d7c090a2007ff33f7d9297f','0e212820372ac8c707b2ed593512292c',1358691484,NULL),(33,'5572f97002baf2b63822b1e5b9c2de42','748f20687e744c76a8b119ac2d651ee3',1358691715,1358692165),(34,'29820da55996a4907d3f60c42fe6557a','acb4030373ab386b538c73aa95c8108a',1359975364,NULL);
/*!40000 ALTER TABLE `members_verify` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2013-02-10 17:51:52
