-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: g44
-- ------------------------------------------------------
-- Server version	5.5.31-1

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2013-08-25 14:06:57
