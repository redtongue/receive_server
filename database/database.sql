-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `promulgator` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (1,'title','content','admin','2017-05-10 10:00:58');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `supmanagernum` int(10) DEFAULT NULL,
  `infemanagernum` int(10) DEFAULT NULL,
  `messagenum` int(10) DEFAULT NULL,
  `messageusernum` int(10) DEFAULT NULL,
  `citynum` int(10) DEFAULT NULL,
  `connectionnum` int(10) DEFAULT NULL,
  `textnum` int(10) DEFAULT NULL,
  `audionum` int(10) DEFAULT NULL,
  `picnum` int(10) DEFAULT NULL,
  `videonum` int(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,5,10,236,10,7,5,194,13,28,1);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confile`
--

DROP TABLE IF EXISTS `confile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confile` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `sendtime` datetime DEFAULT NULL,
  `savepath` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=795 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confile`
--

LOCK TABLES `confile` WRITE;
/*!40000 ALTER TABLE `confile` DISABLE KEYS */;
INSERT INTO `confile` VALUES (793,'范 鑫惠','祥 赟 王','2018-06-10 23:51:19','2e9381c7-a8ce-4540-a1de-8ab8f4b8d98e.jpg','Picture','0kb',307),(794,'范 鑫惠','祥 赟 王','2018-06-10 23:28:53','6824a1d9-6160-4fb9-9d46-555e4a4e5568.jpg','Picture','0kb',280);
/*!40000 ALTER TABLE `confile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `sendnum` int(11) DEFAULT NULL,
  `receivenum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
INSERT INTO `consumer` VALUES (89,'200001',166,0),(90,'200003',1,0),(91,'200002',0,166),(92,'200004',0,1),(93,'200005',10,2),(94,'200006',14,15),(95,'200007',45,76),(96,'200008',6,5),(97,'200009',0,99),(98,'2000010',453,100),(99,'ef5cd30c',16,0),(100,'M9N7N15618000486',1,0),(101,'范 鑫惠',120,0),(102,'范鑫惠',2,3),(103,'王赟祥',2,3),(104,'red_tongue',2,0),(105,'祥 赟 王',0,120);
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip1` varchar(255) DEFAULT NULL,
  `ip2` varchar(255) DEFAULT NULL,
  `account1` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `sim1` varchar(255) DEFAULT NULL,
  `sim2` varchar(255) DEFAULT NULL,
  `sendtime` datetime DEFAULT NULL,
  `savepath` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `fcontent` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (354,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'测试一下',0,NULL),(355,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'测试一下',0,NULL),(356,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'人人',0,NULL),(357,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'再来',0,NULL),(358,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'测试一下',0,NULL),(359,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'新的尝试',0,NULL),(360,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'你好',0,NULL),(361,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'red',0,NULL),(362,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'message',0,NULL),(363,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:03',NULL,'电子科技',0,NULL),(364,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:32:18',NULL,'2018建党节',0,NULL),(365,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-01 23:38:31',NULL,'97周年',0,NULL),(366,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:41',NULL,'嗯',0,NULL),(367,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:41',NULL,'嗯',0,NULL),(368,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'很好',0,NULL),(369,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'人人',0,NULL),(370,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'额额',0,NULL),(371,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'哦',0,NULL),(372,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'tt',0,NULL),(373,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'不行？',0,NULL),(374,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'ee',0,NULL),(375,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'她',0,NULL),(376,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'人人',0,NULL),(377,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'rr',0,NULL),(378,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'tt',0,NULL),(379,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'tt',0,NULL),(380,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'呦呦',0,NULL),(381,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'tt',0,NULL),(382,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'tt',0,NULL),(383,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'tt',0,NULL),(384,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'测试一下',0,NULL),(385,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'test',0,NULL),(386,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'再来',0,NULL),(387,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'测试一下',0,NULL),(388,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'测试一下',0,NULL),(389,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'新的尝试',0,NULL),(390,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'message',0,NULL),(391,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'你好',0,NULL),(392,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'red',0,NULL),(393,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'电子科技',0,NULL),(394,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'试验内容',0,NULL),(395,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'2018建党节',0,NULL),(396,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:07:43',NULL,'97周年',0,NULL),(397,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','0',NULL,'2018-07-02 11:08:46',NULL,'试验一下',0,NULL),(398,'8615692226894','8615313118270','范 鑫惠','祥 赟 王','1',NULL,'2018-07-02 11:36:27','c87de6f7-a3ed-45d3-8299-0dbe5bafd10d.jpg','Photo',1,NULL);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `phonenumber` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1204 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1191,'15566563325','辽宁'),(1192,'13552972297','北京'),(1195,'15500000001','吉林'),(1196,'15698997255','辽宁'),(1197,'15698997266','辽宁'),(1198,'13587475647','浙江'),(1199,'13509093784','广东'),(1200,'13218374657','江苏'),(1201,'18627364736','湖南'),(1202,'0','北京'),(1203,'1','北京');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `operation` varchar(255) DEFAULT NULL,
  `handler` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'Modify Announcement',NULL,'2017-05-10 09:40:42'),(2,'Modify Announcement','admin','2017-05-10 09:42:15'),(3,'Modify Announcement','Tom','2017-05-10 09:43:39'),(4,'Modify Announcement','admin','2017-05-10 10:00:36'),(5,'Modify Announcement Success','admin','2017-05-10 10:00:47'),(6,'Modify Announcement','admin','2017-05-10 10:00:55'),(7,'Modify Announcement Success','admin','2017-05-10 10:00:58'),(8,'Backup Mysql','admin','2017-05-10 10:03:50'),(9,'Central data statistics','admin','2017-05-10 10:06:18'),(10,'File statistics','admin','2017-05-10 10:09:52'),(11,'File List Browsing','admin','2017-05-10 10:20:15'),(12,'File Statistic','admin','2017-05-10 10:20:47'),(13,'Consumer Statistic','admin','2017-05-10 10:20:47'),(14,'Content Query','admin','2017-05-10 10:28:31'),(15,'Content Query','admin','2017-05-10 10:28:50'),(16,'Content Query','admin','2017-05-10 10:30:39'),(17,'Content Excel Download','admin','2017-05-10 10:33:09'),(18,'Content Query','admin','2017-05-10 10:35:02'),(19,'File Download','admin','2017-05-10 10:35:06'),(20,'User Geographical Distribution Statistics','admin','2017-05-10 10:42:00'),(21,'Sensitive Lexical Analysis','admin','2017-05-10 10:49:53'),(22,'Sensitive Lexical Analysis Result Download','admin','2017-05-10 10:50:01'),(23,'User Login','admin','2017-05-10 10:59:19'),(24,'Show Self Information','admin','2017-05-10 10:59:23'),(25,'User Query','admin','2017-05-10 10:59:31'),(26,'Show Self Information','admin','2017-05-10 10:59:48'),(27,'User Query','admin','2017-05-10 10:59:52'),(28,'Modify User','admin','2017-05-10 10:59:53'),(29,'User Query','admin','2017-05-10 10:59:58'),(30,'User Logout',NULL,'2017-05-10 11:00:09'),(31,'User Login','admin','2017-05-10 11:02:43'),(32,'User Excel Download','admin','2017-05-10 11:02:51'),(33,'User Logout',NULL,'2017-05-10 11:03:03'),(34,'User Login','Lucy','2017-05-10 11:04:29'),(35,'File List Browsing','Lucy','2017-05-10 11:04:40'),(36,'File Statistic','Lucy','2017-05-10 11:04:43'),(37,'Consumer Statistic','Lucy','2017-05-10 11:04:43'),(38,'Sensitive Lexical Analysis','Lucy','2017-05-10 11:04:49'),(39,'Central data statistics','Lucy','2017-05-10 11:04:52'),(40,'Show Self Information','Lucy','2017-05-10 11:04:53'),(41,'Content Query','Lucy','2017-05-10 11:04:55'),(42,'User Logout',NULL,'2017-05-10 11:04:59'),(43,'User Login','admin','2017-05-10 11:38:45'),(44,'User Login','admin','2017-05-10 11:39:18'),(45,'Log List Browsing','admin','2017-05-10 11:39:21'),(46,'User Login','admin','2017-05-10 11:40:15'),(47,'Modify Announcement','admin','2017-05-10 11:40:17'),(48,'Log List Browsing','admin','2017-05-10 11:40:18'),(49,'User Login','admin','2017-05-10 11:40:28'),(50,'Log List Browsing','admin','2017-05-10 11:40:29'),(51,'User Login','admin','2017-05-10 11:42:40'),(52,'Content Excel Download','admin','2017-05-10 11:42:45'),(53,'User Logout',NULL,'2017-05-10 11:42:49'),(54,'User Login','Lucy','2017-05-10 11:42:53'),(55,'User Logout',NULL,'2017-05-10 11:42:57'),(56,'User Login','admin','2017-05-10 11:52:54'),(57,'Log List Browsing','admin','2017-05-10 11:52:57'),(58,'Log Excel Download','admin','2017-05-10 11:53:06'),(59,'User Login','admin','2017-05-10 11:55:26'),(60,'Modify Announcement','admin','2017-05-10 11:55:28'),(61,'Log List Browsing','admin','2017-05-10 11:55:29'),(62,'User Login','admin','2017-06-29 11:01:05'),(63,'Content Query','admin','2017-06-29 11:01:33'),(64,'User Login','admin','2017-06-29 11:05:22'),(65,'Content Query','admin','2017-06-29 11:05:25'),(66,'Show Self Information','admin','2017-06-29 11:08:19'),(67,'User Query','admin','2017-06-29 11:08:37'),(68,'Show Self Information','admin','2017-06-29 11:08:41'),(69,'Central data statistics','admin','2017-06-29 11:08:48'),(70,'Sensitive Lexical Analysis','admin','2017-06-29 11:08:50'),(71,'Content Query','admin','2017-06-29 11:08:51'),(72,'Modify Announcement','admin','2017-06-29 11:17:48'),(73,'User Query','admin','2017-06-29 11:18:35'),(74,'User Login','admin','2017-06-29 11:22:57'),(75,'Content Query','admin','2017-06-29 11:28:18'),(76,'Content Query',NULL,'2017-06-29 11:29:55'),(77,'Content Query',NULL,'2017-06-29 11:31:48'),(78,'Content Query',NULL,'2017-06-29 11:41:33'),(79,'User Login','admin','2017-06-29 13:26:07'),(80,'Content Query',NULL,'2017-06-29 13:36:24'),(81,'Show Self Information',NULL,'2017-06-29 13:36:32'),(82,'Content Query',NULL,'2017-06-29 13:36:33'),(83,'Content Query',NULL,'2017-06-29 13:36:33'),(84,'User Login','admin','2017-06-29 15:46:26'),(85,'Content Query','admin','2017-06-29 15:46:28'),(86,'Content Query','admin','2017-06-29 16:05:41'),(87,'Content Query','admin','2017-06-29 16:05:41'),(88,'User Login','admin','2017-06-29 21:38:51'),(89,'Content Query','admin','2017-06-29 21:38:54'),(90,'User Login','admin','2017-07-02 22:20:36'),(91,'Content Query','admin','2017-07-02 22:20:39'),(92,'User Login','admin','2017-07-02 22:25:51'),(93,'Content Query','admin','2017-07-02 22:25:54'),(94,'User Login','admin','2017-07-02 22:27:31'),(95,'Content Query','admin','2017-07-02 22:27:33'),(96,'User Login','admin','2017-07-02 22:29:47'),(97,'Content Query','admin','2017-07-02 22:29:48'),(98,'User Login','admin','2017-07-02 22:35:08'),(99,'Content Query','admin','2017-07-02 22:35:10'),(100,'Content Query','admin','2017-07-02 22:35:48'),(101,'Content Query',NULL,'2017-07-02 22:43:42'),(102,'Content Query',NULL,'2017-07-02 22:43:42'),(103,'User Login','admin','2017-07-02 22:43:44'),(104,'Content Query','admin','2017-07-02 22:43:47'),(105,'User Login','admin','2017-07-02 22:55:31'),(106,'Content Query','admin','2017-07-02 22:55:33'),(107,'User Login','admin','2017-07-02 22:57:58'),(108,'Content Query','admin','2017-07-02 22:58:00'),(109,'User Login','admin','2017-07-02 22:58:56'),(110,'Content Query','admin','2017-07-02 22:58:58'),(111,'User Login','admin','2017-07-02 23:15:16'),(112,'Content Query','admin','2017-07-02 23:15:18'),(113,'User Login','admin','2017-07-14 23:17:43'),(114,'Content Query','admin','2017-07-14 23:17:45'),(115,'Content Query',NULL,'2017-07-14 23:27:16'),(116,'Content Query',NULL,'2017-07-14 23:27:36'),(117,'Content Query',NULL,'2017-07-14 23:27:37'),(118,'Show Self Information',NULL,'2017-07-14 23:39:52'),(119,'Content Query',NULL,'2017-07-14 23:39:53'),(120,'User Login','admin','2017-07-14 23:45:24'),(121,'Content Query','admin','2017-07-14 23:45:26'),(122,'Content Query','admin','2017-07-14 23:46:15'),(123,'Content Query','admin','2017-07-14 23:46:41'),(124,'Content Query',NULL,'2017-07-15 11:19:49'),(125,'Content Query',NULL,'2017-07-15 11:19:51'),(126,'Content Query',NULL,'2017-07-15 11:24:36'),(127,'Content Query',NULL,'2017-07-15 11:24:36'),(128,'User Login','admin','2017-07-15 11:24:40'),(129,'Content Query','admin','2017-07-15 11:24:42'),(130,'Content Query','admin','2017-07-15 11:25:32'),(131,'User Login','admin','2017-07-15 11:27:24'),(132,'Content Query','admin','2017-07-15 11:27:31'),(133,'User Query','admin','2017-07-15 11:31:21'),(134,'Content Query','admin','2017-07-15 11:49:13'),(135,'User Login','admin','2017-07-15 11:50:54'),(136,'Content Query','admin','2017-07-15 11:50:56'),(137,'User Login','admin','2017-07-15 11:51:42'),(138,'Content Query','admin','2017-07-15 11:51:49'),(139,'Content Query','admin','2017-07-15 11:52:06'),(140,'Content Query','admin','2017-07-15 11:52:07'),(141,'Content Query','admin','2017-07-15 12:07:06'),(142,'Content Query','admin','2017-07-15 12:07:08'),(143,'User Login','admin','2017-07-15 12:20:03'),(144,'Content Query','admin','2017-07-15 12:20:05'),(145,'User Logout',NULL,'2017-07-15 12:21:38'),(146,'User Login','admin','2017-07-15 12:21:41'),(147,'Content Query','admin','2017-07-15 12:21:42'),(148,'Content Query','admin','2017-07-15 12:24:39'),(149,'Content Query','admin','2017-07-15 12:24:40'),(150,'Content Query','admin','2017-07-15 12:24:44'),(151,'User Login','admin','2017-07-15 13:07:55'),(152,'Content Query','admin','2017-07-15 13:08:02'),(153,'User Login','admin','2017-07-15 13:22:17'),(154,'Content Query','admin','2017-07-15 13:22:19'),(155,'User Login','admin','2017-07-15 13:40:13'),(156,'Content Query','admin','2017-07-15 13:40:15'),(157,'User Login','admin','2017-07-15 13:40:49'),(158,'Content Query','admin','2017-07-15 13:40:52'),(159,'Content Query','admin','2017-07-15 13:43:28'),(160,'Content Query','admin','2017-07-15 13:44:03'),(161,'User Login','admin','2017-07-15 13:44:12'),(162,'Content Query','admin','2017-07-15 13:44:13'),(163,'Content Query','admin','2017-07-15 13:45:11'),(164,'Content Query','admin','2017-07-15 13:45:44'),(165,'Content Query','admin','2017-07-15 13:47:49'),(166,'User Login','admin','2017-07-15 13:48:38'),(167,'Content Query','admin','2017-07-15 13:48:40'),(168,'User Login','admin','2017-07-15 13:52:51'),(169,'Content Query','admin','2017-07-15 13:52:52'),(170,'Content Query','admin','2017-07-15 13:53:34'),(171,'Content Query','admin','2017-07-15 13:56:05'),(172,'Content Query','admin','2017-07-15 13:56:06'),(173,'Content Query','admin','2017-07-15 13:56:29'),(174,'User Login','admin','2017-07-15 13:56:31'),(175,'Content Query','admin','2017-07-15 13:56:32'),(176,'User Login','admin','2017-07-15 13:57:04'),(177,'Content Query','admin','2017-07-15 13:57:05'),(178,'User Login','admin','2017-07-15 13:58:13'),(179,'Content Query','admin','2017-07-15 13:58:15'),(180,'User Login','admin','2017-07-15 13:58:46'),(181,'Content Query','admin','2017-07-15 13:58:50'),(182,'Content Query','admin','2017-07-15 14:02:13'),(183,'Content Query','admin','2017-07-15 14:02:14'),(184,'Content Query','admin','2017-07-15 14:04:20'),(185,'Content Query','admin','2017-07-15 14:04:21'),(186,'User Login','admin','2017-07-15 14:04:22'),(187,'Content Query','admin','2017-07-15 14:04:24'),(188,'Content Query','admin','2017-07-15 14:10:00'),(189,'Content Query','admin','2017-07-15 14:10:05'),(190,'Content Query','admin','2017-07-15 14:10:06'),(191,'User Login','admin','2017-07-15 16:14:31'),(192,'Content Query','admin','2017-07-15 16:14:33'),(193,'Content Query','admin','2017-07-15 16:15:57'),(194,'User Login','admin','2017-07-15 16:15:59'),(195,'Content Query','admin','2017-07-15 16:16:01'),(196,'Delete Content','admin','2017-07-15 16:16:55'),(197,'Content Query','admin','2017-07-15 16:16:55'),(198,'Delete Content','admin','2017-07-15 16:16:57'),(199,'Content Query','admin','2017-07-15 16:16:57'),(200,'Delete Content','admin','2017-07-15 16:17:03'),(201,'Content Query','admin','2017-07-15 16:17:03'),(202,'Delete Content','admin','2017-07-15 16:17:13'),(203,'Content Query','admin','2017-07-15 16:17:13'),(204,'Content Query','admin','2017-07-15 16:23:32'),(205,'User Login','admin','2017-07-15 16:23:35'),(206,'Content Query','admin','2017-07-15 16:23:37'),(207,'User Login','admin','2017-07-15 16:34:42'),(208,'Content Query','admin','2017-07-15 16:34:43'),(209,'Content Query','admin','2017-07-15 16:34:57'),(210,'User Login','admin','2017-07-15 16:34:59'),(211,'Content Query','admin','2017-07-15 16:35:01'),(212,'User Login','admin','2017-07-15 16:36:41'),(213,'Content Query','admin','2017-07-15 16:36:43'),(214,'User Login','admin','2017-07-15 16:37:31'),(215,'Content Query','admin','2017-07-15 16:37:32'),(216,'User Login','admin','2017-07-15 16:38:51'),(217,'Content Query','admin','2017-07-15 16:38:53'),(218,'User Login','admin','2017-07-15 16:39:55'),(219,'Content Query','admin','2017-07-15 16:39:57'),(220,'User Login','admin','2017-07-15 16:40:21'),(221,'Content Query','admin','2017-07-15 16:40:23'),(222,'User Login','admin','2017-07-15 16:40:45'),(223,'Content Query','admin','2017-07-15 16:40:46'),(224,'User Login','admin','2017-07-15 16:41:07'),(225,'Content Query','admin','2017-07-15 16:41:08'),(226,'User Login','admin','2017-07-15 16:45:50'),(227,'Content Query','admin','2017-07-15 16:45:52'),(228,'User Login','admin','2017-07-15 16:46:17'),(229,'Content Query','admin','2017-07-15 16:46:18'),(230,'User Login','admin','2017-07-15 16:46:34'),(231,'Content Query','admin','2017-07-15 16:46:35'),(232,'User Login','admin','2017-07-15 16:47:18'),(233,'Content Query','admin','2017-07-15 16:47:20'),(234,'User Login','admin','2017-07-15 16:47:54'),(235,'Content Query','admin','2017-07-15 16:47:56'),(236,'Content Query','admin','2017-07-15 16:47:58'),(237,'User Login','admin','2017-07-15 16:49:26'),(238,'Content Query','admin','2017-07-15 16:49:27'),(239,'Content Query','admin','2017-07-15 16:49:31'),(240,'Content Query','admin','2017-07-15 16:49:32'),(241,'User Login','admin','2017-07-15 16:49:39'),(242,'Content Query','admin','2017-07-15 16:49:40'),(243,'Content Query','admin','2017-07-15 16:49:41'),(244,'Content Query','admin','2017-07-15 16:49:41'),(245,'User Login','admin','2017-07-15 16:54:05'),(246,'Content Query','admin','2017-07-15 16:54:06'),(247,'User Login','admin','2017-07-15 16:54:55'),(248,'Content Query','admin','2017-07-15 16:54:57'),(249,'Content Query','admin','2017-07-15 16:54:58'),(250,'User Login','admin','2017-07-15 16:55:13'),(251,'Content Query','admin','2017-07-15 16:55:16'),(252,'User Login','admin','2017-07-15 16:55:48'),(253,'Content Query','admin','2017-07-15 16:55:49'),(254,'User Login','admin','2017-07-15 16:59:07'),(255,'Content Query','admin','2017-07-15 16:59:09'),(256,'Content Query','admin','2017-07-15 16:59:27'),(257,'Content Query','admin','2017-07-15 16:59:29'),(258,'Content Query','admin','2017-07-15 16:59:29'),(259,'Content Query','admin','2017-07-15 17:01:46'),(260,'User Login','admin','2017-07-15 17:02:33'),(261,'Content Query','admin','2017-07-15 17:02:34'),(262,'Content Query','admin','2017-07-15 17:04:02'),(263,'Content Query','admin','2017-07-15 17:04:03'),(264,'User Login','admin','2017-07-15 17:04:06'),(265,'Content Query','admin','2017-07-15 17:04:08'),(266,'File Download','admin','2017-07-15 17:04:12'),(267,'Content Query','admin','2017-07-15 17:04:23'),(268,'User Login','admin','2017-07-15 17:19:46'),(269,'Content Query','admin','2017-07-15 17:19:49'),(270,'User Login','admin','2017-07-15 17:21:38'),(271,'Content Query','admin','2017-07-15 17:21:39'),(272,'Content Query','admin','2017-07-15 17:22:23'),(273,'Content Query','admin','2017-07-15 17:22:23'),(274,'Content Query','admin','2017-07-15 17:22:24'),(275,'User Login','admin','2017-07-15 17:22:28'),(276,'Content Query','admin','2017-07-15 17:22:30'),(277,'User Login','admin','2017-07-15 17:48:55'),(278,'Content Query','admin','2017-07-15 17:48:57'),(279,'User Login','admin','2017-07-15 17:50:25'),(280,'Content Query','admin','2017-07-15 17:50:27'),(281,'File Download','admin','2017-07-15 17:50:34'),(282,'Content Query','admin','2017-07-15 17:50:35'),(283,'Content Query','admin','2017-07-15 17:51:31'),(284,'Content Query','admin','2017-07-15 17:51:32'),(285,'User Login','admin','2017-07-15 17:51:34'),(286,'Content Query','admin','2017-07-15 17:51:36'),(287,'Content Query','admin','2017-07-15 17:52:33'),(288,'User Login','admin','2017-07-15 17:52:38'),(289,'Content Query','admin','2017-07-15 17:52:40'),(290,'Content Query','admin','2017-07-15 17:53:07'),(291,'Content Query','admin','2017-07-15 17:53:15'),(292,'Content Query','admin','2017-07-15 17:53:19'),(293,'Content Query','admin','2017-07-15 17:54:25'),(294,'Content Query','admin','2017-07-15 18:03:14'),(295,'Content Query','admin','2017-07-15 18:13:48'),(296,'Content Query','admin','2017-07-15 18:13:48'),(297,'Content Query','admin','2017-07-15 18:25:20'),(298,'Content Query','admin','2017-07-15 18:25:20'),(299,'User Login','admin','2017-07-15 18:25:22'),(300,'Content Query','admin','2017-07-15 18:25:25'),(301,'Content Query',NULL,'2017-07-15 18:45:26'),(302,'Content Query',NULL,'2017-07-15 18:45:33'),(303,'Content Query',NULL,'2017-07-15 18:45:34'),(304,'File Download',NULL,'2017-07-15 18:51:19'),(305,'Content Query',NULL,'2017-07-15 18:51:21'),(306,'File Download',NULL,'2017-07-15 18:51:25'),(307,'Content Query',NULL,'2017-07-15 18:51:27'),(308,'Content Query',NULL,'2017-07-15 18:51:30'),(309,'Content Query',NULL,'2017-07-15 18:51:31'),(310,'File Statistic',NULL,'2017-07-15 18:51:33'),(311,'Consumer Statistic',NULL,'2017-07-15 18:51:33'),(312,'Sensitive Lexical Analysis',NULL,'2017-07-15 18:51:41'),(313,'File Statistic',NULL,'2017-07-15 18:51:50'),(314,'Consumer Statistic',NULL,'2017-07-15 18:51:50'),(315,'File List Browsing',NULL,'2017-07-15 18:51:52'),(316,'User Geographical Distribution Statistics',NULL,'2017-07-15 18:51:56'),(317,'User Geographical Distribution Statistics',NULL,'2017-07-15 18:51:58'),(318,'Sensitive Lexical Analysis',NULL,'2017-07-15 18:51:58'),(319,'Content Query',NULL,'2017-07-15 18:52:09'),(320,'Central data statistics',NULL,'2017-07-15 18:52:11'),(321,'Sensitive Lexical Analysis',NULL,'2017-07-15 18:52:12'),(322,'Content Query',NULL,'2017-07-15 19:31:42'),(323,'Content Query',NULL,'2017-07-15 19:31:44'),(324,'Content Query',NULL,'2017-07-15 19:32:05'),(325,'Content Query',NULL,'2017-07-15 19:32:06'),(326,'Content Query',NULL,'2017-07-15 19:32:06'),(327,'User Login','admin','2017-07-15 19:32:12'),(328,'Content Query','admin','2017-07-15 19:32:13'),(329,'Content Query',NULL,'2017-07-15 21:15:08'),(330,'User Login','admin','2017-07-15 21:15:20'),(331,'Content Query','admin','2017-07-15 21:15:22'),(332,'User Login','admin','2017-07-15 21:17:27'),(333,'Content Query','admin','2017-07-15 21:17:28'),(334,'User Login','admin','2017-07-15 21:18:56'),(335,'Content Query','admin','2017-07-15 21:18:59'),(336,'User Login','admin','2017-07-15 23:09:59'),(337,'Content Query','admin','2017-07-15 23:10:01'),(338,'User Login','admin','2017-07-15 23:11:09'),(339,'Content Query','admin','2017-07-15 23:11:11'),(340,'Content Query','admin','2017-07-15 23:16:53'),(341,'Content Query','admin','2017-07-15 23:16:54'),(342,'User Login','admin','2017-07-15 23:16:56'),(343,'Content Query','admin','2017-07-15 23:16:57'),(344,'User Login','admin','2017-07-15 23:24:12'),(345,'Content Query','admin','2017-07-15 23:24:14'),(346,'User Login','admin','2017-07-15 23:29:00'),(347,'Content Query','admin','2017-07-15 23:29:02'),(348,'User Login','admin','2017-07-15 23:29:37'),(349,'Content Query','admin','2017-07-15 23:29:39'),(350,'Content Query','admin','2017-07-15 23:35:27'),(351,'Content Query','admin','2017-07-15 23:36:07'),(352,'Content Query','admin','2017-07-15 23:38:16'),(353,'User Login','admin','2017-07-15 23:38:38'),(354,'Content Query','admin','2017-07-15 23:38:40'),(355,'Content Query','admin','2017-07-15 23:39:49'),(356,'Content Query','admin','2017-07-15 23:41:49'),(357,'Content Query','admin','2017-07-15 23:43:36'),(358,'Content Query','admin','2017-07-15 23:44:03'),(359,'Content Query','admin','2017-07-15 23:44:17'),(360,'Content Query','admin','2017-07-15 23:44:19'),(361,'User Login','admin','2017-07-15 23:44:21'),(362,'Content Query','admin','2017-07-15 23:44:23'),(363,'Delete Content','admin','2017-07-15 23:44:34'),(364,'Content Query','admin','2017-07-15 23:44:34'),(365,'Content Query','admin','2017-07-15 23:44:39'),(366,'Content Query','admin','2017-07-15 23:50:00'),(367,'Content Query','admin','2017-07-15 23:50:02'),(368,'User Login','admin','2017-07-15 23:50:08'),(369,'Content Query','admin','2017-07-15 23:50:10'),(370,'Content Query','admin','2017-07-15 23:50:35'),(371,'Content Query','admin','2017-07-15 23:50:36'),(372,'File Download','admin','2017-07-15 23:50:41'),(373,'Content Query','admin','2017-07-15 23:50:43'),(374,'User Login','admin','2017-07-16 15:27:54'),(375,'Content Query','admin','2017-07-16 15:27:56'),(376,'Show Self Information','admin','2017-07-16 15:28:20'),(377,'Central data statistics','admin','2017-07-16 15:28:23'),(378,'Sensitive Lexical Analysis','admin','2017-07-16 15:28:24'),(379,'File List Browsing','admin','2017-07-16 15:28:27'),(380,'User Geographical Distribution Statistics','admin','2017-07-16 15:28:29'),(381,'File Statistic','admin','2017-07-16 15:28:36'),(382,'Consumer Statistic','admin','2017-07-16 15:28:36'),(383,'Sensitive Lexical Analysis','admin','2017-07-16 15:28:38'),(384,'User Login','admin','2017-07-17 08:58:46'),(385,'Content Query','admin','2017-07-17 08:58:48'),(386,'Content Query',NULL,'2017-07-17 09:51:44'),(387,'Content Query',NULL,'2017-07-17 09:52:29'),(388,'Content Query',NULL,'2017-07-17 09:52:49'),(389,'Content Query',NULL,'2017-07-17 09:52:50'),(390,'Content Query',NULL,'2017-07-17 09:53:03'),(391,'Content Query',NULL,'2017-07-17 09:53:04'),(392,'User Login','admin','2017-07-17 09:53:05'),(393,'Content Query','admin','2017-07-17 09:53:08'),(394,'Content Query','admin','2017-07-17 09:54:00'),(395,'Content Query','admin','2017-07-17 09:54:01'),(396,'Content Query','admin','2017-07-17 09:55:20'),(397,'User Login','admin','2017-07-17 09:55:25'),(398,'Content Query','admin','2017-07-17 09:55:27'),(399,'Content Query','admin','2017-07-17 09:56:17'),(400,'Content Query','admin','2017-07-17 09:58:58'),(401,'User Login','admin','2017-07-17 09:59:00'),(402,'Content Query','admin','2017-07-17 09:59:02'),(403,'Content Query','admin','2017-07-17 10:01:43'),(404,'User Login','admin','2017-07-17 10:02:50'),(405,'Content Query','admin','2017-07-17 10:02:53'),(406,'Content Query','admin','2017-07-17 10:05:41'),(407,'Content Query','admin','2017-07-17 10:05:42'),(408,'Content Query','admin','2017-07-17 10:05:57'),(409,'Content Query','admin','2017-07-17 10:07:40'),(410,'User Login','admin','2017-07-17 10:07:42'),(411,'Content Query','admin','2017-07-17 10:07:44'),(412,'User Login','admin','2017-07-17 10:13:45'),(413,'Content Query','admin','2017-07-17 10:13:47'),(414,'Content Query','admin','2017-07-17 10:15:39'),(415,'User Login','admin','2017-07-17 10:16:12'),(416,'Content Query','admin','2017-07-17 10:16:13'),(417,'Content Query','admin','2017-07-17 10:20:28'),(418,'Content Query','admin','2017-07-17 10:20:33'),(419,'Content Query','admin','2017-07-17 10:20:50'),(420,'User Login','admin','2017-07-17 10:21:01'),(421,'Content Query','admin','2017-07-17 10:21:03'),(422,'Content Query','admin','2017-07-17 10:22:57'),(423,'Content Query','admin','2017-07-17 10:22:59'),(424,'Content Query','admin','2017-07-17 10:23:47'),(425,'User Login','admin','2017-07-17 10:31:28'),(426,'Content Query','admin','2017-07-17 10:31:29'),(427,'Content Query',NULL,'2017-07-17 10:38:14'),(428,'Content Query',NULL,'2017-07-17 10:38:17'),(429,'Content Query',NULL,'2017-07-17 13:39:37'),(430,'User Login','admin','2017-07-17 13:40:38'),(431,'Content Query','admin','2017-07-17 13:40:40'),(432,'Content Query','admin','2017-07-17 13:40:48'),(433,'Content Query','admin','2017-07-17 13:40:49'),(434,'Content Query','admin','2017-07-17 13:40:57'),(435,'Content Query','admin','2017-07-17 13:40:57'),(436,'Content Query','admin','2017-07-17 13:40:58'),(437,'User Login','admin','2017-07-17 13:51:36'),(438,'Content Query','admin','2017-07-17 13:51:38'),(439,'User Login','admin','2017-07-17 13:53:42'),(440,'Content Query','admin','2017-07-17 13:53:42'),(441,'User Login','admin','2017-07-17 14:00:26'),(442,'Content Query','admin','2017-07-17 14:00:27'),(443,'Content Query','admin','2017-07-17 14:02:55'),(444,'User Login','admin','2017-07-17 14:04:47'),(445,'Content Query','admin','2017-07-17 14:04:48'),(446,'User Login','admin','2017-07-17 14:06:29'),(447,'Content Query','admin','2017-07-17 14:06:30'),(448,'User Login','admin','2017-07-17 14:09:37'),(449,'Content Query','admin','2017-07-17 14:09:38'),(450,'Content Query','admin','2017-07-17 14:10:30'),(451,'User Login','admin','2017-07-17 14:14:53'),(452,'Content Query','admin','2017-07-17 14:14:54'),(453,'Content Query','admin','2017-07-17 14:17:36'),(454,'Content Query','admin','2017-07-17 14:17:49'),(455,'Content Query','admin','2017-07-17 14:19:43'),(456,'Content Query','admin','2017-07-17 14:20:59'),(457,'Content Query','admin','2017-07-17 14:22:03'),(458,'Content Query','admin','2017-07-17 14:22:03'),(459,'Content Query','admin','2017-07-17 14:22:04'),(460,'User Login','admin','2017-07-17 14:22:11'),(461,'Content Query','admin','2017-07-17 14:22:12'),(462,'Content Query','admin','2017-07-17 14:29:50'),(463,'Content Query','admin','2017-07-17 14:31:00'),(464,'User Login','admin','2017-07-17 14:33:16'),(465,'Content Query','admin','2017-07-17 14:33:17'),(466,'Content Query','admin','2017-07-17 14:34:06'),(467,'Content Query','admin','2017-07-17 14:34:34'),(468,'Content Query','admin','2017-07-17 14:44:33'),(469,'Show Self Information','admin','2017-07-17 14:44:35'),(470,'Content Query','admin','2017-07-17 14:44:37'),(471,'User Login','admin','2017-07-18 09:22:46'),(472,'Content Query','admin','2017-07-18 09:22:48'),(473,'Content Query','admin','2017-07-18 09:23:12'),(474,'User Login','admin','2017-07-18 09:30:44'),(475,'Content Query','admin','2017-07-18 09:30:47'),(476,'User Login','admin','2017-07-18 09:32:15'),(477,'Content Query','admin','2017-07-18 09:32:17'),(478,'Content Query','admin','2017-07-18 09:33:10'),(479,'Content Query','admin','2017-07-18 09:34:43'),(480,'Content Query','admin','2017-07-18 09:34:44'),(481,'Content Query','admin','2017-07-18 09:34:45'),(482,'Content Query','admin','2017-07-18 09:35:46'),(483,'Content Query','admin','2017-07-18 09:35:48'),(484,'Central data statistics',NULL,'2017-07-18 10:17:43'),(485,'Sensitive Lexical Analysis',NULL,'2017-07-18 10:17:47'),(486,'File Statistic',NULL,'2017-07-18 10:17:49'),(487,'Consumer Statistic',NULL,'2017-07-18 10:17:49'),(488,'Show Self Information',NULL,'2017-07-18 10:18:04'),(489,'Content Query',NULL,'2017-07-18 10:18:10'),(490,'Content Query',NULL,'2017-07-18 10:38:15'),(491,'Content Query',NULL,'2017-07-18 10:38:15'),(492,'Content Query',NULL,'2017-07-18 10:38:18'),(493,'Content Query',NULL,'2017-07-18 10:38:20'),(494,'User Login','admin','2017-07-19 09:37:07'),(495,'Content Query','admin','2017-07-19 09:37:10'),(496,'Content Query','admin','2017-07-19 09:38:04'),(497,'Content Query','admin','2017-07-19 09:38:45'),(498,'Content Query','admin','2017-07-19 09:38:46'),(499,'Content Query','admin','2017-07-19 09:38:47'),(500,'Content Query','admin','2017-07-19 09:38:53'),(501,'Content Query','admin','2017-07-19 09:39:05'),(502,'User Login','admin','2017-07-19 09:39:12'),(503,'Content Query','admin','2017-07-19 09:39:13'),(504,'Content Query','admin','2017-07-19 09:40:11'),(505,'Content Query','admin','2017-07-19 09:40:11'),(506,'Content Query','admin','2017-07-19 09:40:12'),(507,'Content Query','admin','2017-07-19 09:40:22'),(508,'Content Query','admin','2017-07-19 09:41:19'),(509,'Content Query','admin','2017-07-19 09:41:19'),(510,'User Login','admin','2017-07-19 14:56:11'),(511,'Content Query','admin','2017-07-19 14:56:14'),(512,'User Login','admin','2017-08-02 12:18:51'),(513,'Content Query','admin','2017-08-02 12:19:19'),(514,'Content Query','admin','2017-08-02 12:20:00'),(515,'Content Query','admin','2017-08-02 12:20:03'),(516,'Content Query','admin','2017-08-02 12:21:54'),(517,'Content Query','admin','2017-08-02 12:22:26'),(518,'Content Query','admin','2017-08-02 12:22:27'),(519,'Content Query','admin','2017-08-02 12:22:27'),(520,'Content Query','admin','2017-08-02 12:23:36'),(521,'Content Query','admin','2017-08-02 12:23:36'),(522,'Content Query','admin','2017-08-02 12:23:36'),(523,'Content Query','admin','2017-08-02 12:25:34'),(524,'Content Query','admin','2017-08-02 12:25:35'),(525,'User Login','admin','2017-08-02 14:44:17'),(526,'Content Query','admin','2017-08-02 14:44:40'),(527,'Content Query','admin','2017-08-02 14:45:01'),(528,'Content Query','admin','2017-08-02 14:46:02'),(529,'Content Query','admin','2017-08-02 14:46:02'),(530,'Content Query','admin','2017-08-02 14:46:11'),(531,'Content Query','admin','2017-08-02 14:46:11'),(532,'Content Query','admin','2017-08-02 14:46:27'),(533,'Content Query','admin','2017-08-02 14:46:27'),(534,'Content Query','admin','2017-08-02 14:46:45'),(535,'Content Query','admin','2017-08-02 14:46:45'),(536,'Content Query','admin','2017-08-02 14:46:45'),(537,'Sensitive Lexical Analysis',NULL,'2017-08-02 15:24:06'),(538,'Sensitive Lexical Analysis',NULL,'2017-08-02 15:24:14'),(539,'Sensitive Lexical Analysis',NULL,'2017-08-02 15:24:14'),(540,'Sensitive Lexical Analysis',NULL,'2017-08-02 15:24:15'),(541,'File Statistic',NULL,'2017-08-02 15:24:31'),(542,'Consumer Statistic',NULL,'2017-08-02 15:24:31'),(543,'Show Self Information',NULL,'2017-08-02 15:24:34'),(544,'Content Query',NULL,'2017-08-02 15:24:43'),(545,'Content Query',NULL,'2017-08-02 15:24:45'),(546,'Content Query',NULL,'2017-08-02 15:24:49'),(547,'User Login','admin','2017-08-14 09:41:20'),(548,'Content Query','admin','2017-08-14 09:41:44'),(549,'Content Query','admin','2017-08-14 09:42:33'),(550,'Content Query','admin','2017-08-14 09:42:45'),(551,'Content Query','admin','2017-08-14 09:42:47'),(552,'Content Query','admin','2017-08-14 09:42:48'),(553,'User Login','admin','2017-08-15 10:46:47'),(554,'Content Query','admin','2017-08-15 10:47:17'),(555,'Content Query','admin','2017-08-15 10:49:32'),(556,'Content Query','admin','2017-08-15 10:49:59'),(557,'Content Query','admin','2017-08-15 10:50:00'),(558,'Content Query','admin','2017-08-15 10:50:00'),(559,'Content Query','admin','2017-08-15 10:50:02'),(560,'Content Query','admin','2017-08-15 10:50:03'),(561,'Content Query','admin','2017-08-15 10:50:06'),(562,'Content Query','admin','2017-08-15 10:50:07'),(563,'Content Query','admin','2017-08-15 10:50:07'),(564,'Content Query','admin','2017-08-15 10:50:07'),(565,'Content Query','admin','2017-08-15 10:50:08'),(566,'Content Query','admin','2017-08-15 10:50:08'),(567,'Content Query','admin','2017-08-15 10:50:08'),(568,'Content Query','admin','2017-08-15 10:50:09'),(569,'Content Query','admin','2017-08-15 10:50:09'),(570,'Content Query','admin','2017-08-15 10:50:25'),(571,'Content Query','admin','2017-08-15 10:50:26'),(572,'Content Query','admin','2017-08-15 10:50:30'),(573,'Content Query','admin','2017-08-15 10:50:56'),(574,'Content Query','admin','2017-08-15 10:51:34'),(575,'Content Query','admin','2017-08-15 10:52:55'),(576,'Content Query','admin','2017-08-15 11:06:54'),(577,'Content Query','admin','2017-08-15 11:06:55'),(578,'Content Query','admin','2017-08-15 11:06:55'),(579,'Central data statistics','admin','2017-08-15 11:08:46'),(580,'Sensitive Lexical Analysis','admin','2017-08-15 11:08:47'),(581,'Show Self Information','admin','2017-08-15 11:08:48'),(582,'User Query','admin','2017-08-15 11:08:49'),(583,'Content Query','admin','2017-08-15 11:08:50'),(584,'User Login','admin','2017-09-05 15:53:47'),(585,'Content Query','admin','2017-09-05 15:54:04'),(586,'User Login','admin','2017-09-05 15:59:23'),(587,'Content Query','admin','2017-09-05 15:59:39'),(588,'Content Query','admin','2017-09-05 16:00:05'),(589,'Content Query','admin','2017-09-05 16:00:05'),(590,'Content Query','admin','2017-09-05 16:01:59'),(591,'Content Query','admin','2017-09-05 16:02:00'),(592,'Content Query','admin','2017-09-05 16:02:05'),(593,'Content Query','admin','2017-09-05 16:02:06'),(594,'Content Query','admin','2017-09-05 16:02:08'),(595,'Content Query','admin','2017-09-05 16:02:10'),(596,'Show Self Information','admin','2017-09-05 16:02:12'),(597,'Content Query','admin','2017-09-05 16:02:12'),(598,'Content Query','admin','2017-09-05 16:02:34'),(599,'Content Query','admin','2017-09-05 16:02:35'),(600,'Content Query','admin','2017-09-05 16:02:35'),(601,'User Login','admin','2017-09-05 16:02:38'),(602,'Content Query','admin','2017-09-05 16:02:49'),(603,'Content Query','admin','2017-09-05 16:02:58'),(604,'Content Query','admin','2017-09-05 16:02:59'),(605,'User Login','admin','2017-09-05 16:03:01'),(606,'Content Query','admin','2017-09-05 16:03:09'),(607,'Content Query','admin','2017-09-05 16:05:22'),(608,'Content Query','admin','2017-09-05 16:05:23'),(609,'Content Query','admin','2017-09-05 16:05:24'),(610,'Content Query','admin','2017-09-05 16:05:24'),(611,'Content Query','admin','2017-09-05 16:08:41'),(612,'Content Query','admin','2017-09-05 16:08:42'),(613,'User Login','admin','2017-09-11 22:13:41'),(614,'Content Query','admin','2017-09-11 22:13:44'),(615,'Content Query','admin','2017-09-11 22:14:34'),(616,'Content Query','admin','2017-09-11 22:17:10'),(617,'Content Query','admin','2017-09-11 22:17:10'),(618,'Content Query','admin','2017-09-11 22:17:10'),(619,'User Login','admin','2017-09-11 22:24:00'),(620,'Content Query','admin','2017-09-11 22:24:05'),(621,'Content Query','admin','2017-09-11 22:24:06'),(622,'Content Query','admin','2017-09-11 22:24:52'),(623,'User Login','admin','2017-09-11 22:56:07'),(624,'Content Query','admin','2017-09-11 22:56:10'),(625,'Content Query','admin','2017-09-11 22:56:37'),(626,'Content Query','admin','2017-09-11 22:58:37'),(627,'Content Query','admin','2017-09-11 22:58:38'),(628,'Content Query','admin','2017-09-11 22:58:50'),(629,'Content Query','admin','2017-09-11 22:58:59'),(630,'Content Query','admin','2017-09-11 22:59:00'),(631,'Content Query','admin','2017-09-11 22:59:23'),(632,'Content Query','admin','2017-09-11 23:08:52'),(633,'Content Query','admin','2017-09-11 23:08:52'),(634,'Content Query','admin','2017-09-11 23:09:16'),(635,'Content Query','admin','2017-09-11 23:09:16'),(636,'Content Query','admin','2017-09-11 23:09:26'),(637,'Content Query','admin','2017-09-11 23:09:47'),(638,'Content Query','admin','2017-09-11 23:10:18'),(639,'Content Query','admin','2017-09-11 23:10:18'),(640,'Content Query','admin','2017-09-11 23:10:18'),(641,'Content Query','admin','2017-09-11 23:12:01'),(642,'Content Query','admin','2017-09-11 23:12:08'),(643,'Content Query','admin','2017-09-11 23:12:17'),(644,'Content Query','admin','2017-09-11 23:12:58'),(645,'Content Query','admin','2017-09-11 23:12:59'),(646,'Content Query','admin','2017-09-11 23:12:59'),(647,'Content Query','admin','2017-09-11 23:13:33'),(648,'Content Query','admin','2017-09-11 23:13:33'),(649,'Content Query','admin','2017-09-11 23:13:33'),(650,'Content Query','admin','2017-09-11 23:13:34'),(651,'Content Query','admin','2017-09-11 23:16:04'),(652,'Content Query','admin','2017-09-11 23:16:04'),(653,'Content Query','admin','2017-09-11 23:16:04'),(654,'Content Query','admin','2017-09-11 23:16:40'),(655,'Content Query','admin','2017-09-11 23:16:41'),(656,'User Login','admin','2017-09-12 10:03:14'),(657,'Content Query','admin','2017-09-12 10:03:16'),(658,'Content Query','admin','2017-09-12 10:03:32'),(659,'Content Query','admin','2017-09-12 10:04:29'),(660,'Content Query','admin','2017-09-12 10:04:34'),(661,'Content Query','admin','2017-09-12 10:05:33'),(662,'Content Query','admin','2017-09-12 10:14:58'),(663,'Content Query','admin','2017-09-12 10:17:15'),(664,'Content Query','admin','2017-09-12 10:17:15'),(665,'Content Query','admin','2017-09-12 10:17:15'),(666,'User Login','admin','2017-09-12 11:31:13'),(667,'Content Query','admin','2017-09-12 11:31:14'),(668,'Content Query','admin','2017-09-12 11:31:46'),(669,'Content Query','admin','2017-09-12 11:32:17'),(670,'Content Query','admin','2017-09-12 11:33:35'),(671,'Content Query','admin','2017-09-12 11:33:45'),(672,'Content Query','admin','2017-09-12 11:33:47'),(673,'Content Query','admin','2017-09-12 11:33:48'),(674,'Content Query','admin','2017-09-12 11:33:48'),(675,'Content Query','admin','2017-09-12 11:34:07'),(676,'Content Query','admin','2017-09-12 11:35:46'),(677,'Content Query','admin','2017-09-12 11:35:47'),(678,'User Login','admin','2017-10-16 15:28:26'),(679,'Content Query','admin','2017-10-16 15:28:49'),(680,'Show Self Information','admin','2017-10-16 15:29:32'),(681,'Content Query','admin','2017-10-16 15:29:34'),(682,'Show Self Information','admin','2017-10-16 15:29:54'),(683,'Central data statistics','admin','2017-10-16 15:29:55'),(684,'File Statistic','admin','2017-10-16 15:29:55'),(685,'Consumer Statistic','admin','2017-10-16 15:29:55'),(686,'File List Browsing','admin','2017-10-16 15:29:57'),(687,'Content Query','admin','2017-10-16 15:30:00'),(688,'User Geographical Distribution Statistics','admin','2017-10-16 15:30:07'),(689,'User Login','admin','2018-05-27 12:12:59'),(690,'Content Query','admin','2018-05-27 12:13:24'),(691,'Show Self Information',NULL,'2018-05-27 12:24:11'),(692,'Content Query',NULL,'2018-05-27 12:24:13'),(693,'Content Query',NULL,'2018-05-27 12:25:27'),(694,'Content Query',NULL,'2018-05-27 13:08:34'),(695,'Content Query',NULL,'2018-05-27 13:08:34'),(696,'Content Query',NULL,'2018-05-27 13:08:34'),(697,'Content Query',NULL,'2018-05-27 13:08:36'),(698,'Content Query',NULL,'2018-05-27 13:11:03'),(699,'Content Query',NULL,'2018-05-27 13:11:05'),(700,'Content Query',NULL,'2018-05-27 13:12:29'),(701,'Content Query',NULL,'2018-05-27 13:12:30'),(702,'Content Query',NULL,'2018-05-27 13:12:31'),(703,'Content Query',NULL,'2018-05-27 13:12:31'),(704,'Content Query',NULL,'2018-05-27 13:14:40'),(705,'Content Query',NULL,'2018-05-27 13:14:41'),(706,'Content Query',NULL,'2018-05-27 13:16:30'),(707,'Content Query',NULL,'2018-05-27 13:16:31'),(708,'Content Query',NULL,'2018-05-27 13:16:32'),(709,'Content Query',NULL,'2018-05-27 13:17:12'),(710,'Content Query',NULL,'2018-05-27 13:17:26'),(711,'Content Query',NULL,'2018-05-27 13:18:34'),(712,'Content Query',NULL,'2018-05-27 13:18:35'),(713,'Content Query',NULL,'2018-05-27 13:18:35'),(714,'User Login','admin','2018-06-10 21:08:50'),(715,'Content Query','admin','2018-06-10 21:09:00'),(716,'User Login','admin','2018-06-10 23:15:59'),(717,'User Login','admin','2018-06-10 23:16:14'),(718,'Content Query','admin','2018-06-10 23:16:26'),(719,'Content Query',NULL,'2018-06-10 23:18:56'),(720,'Content Query',NULL,'2018-06-10 23:18:58'),(721,'Content Query',NULL,'2018-06-10 23:28:07'),(722,'Content Query',NULL,'2018-06-10 23:28:10'),(723,'Content Query',NULL,'2018-06-10 23:28:11'),(724,'Content Query',NULL,'2018-06-10 23:28:30'),(725,'Content Query',NULL,'2018-06-10 23:28:31'),(726,'Content Query',NULL,'2018-06-10 23:28:55'),(727,'Content Query',NULL,'2018-06-10 23:28:56'),(728,'Content Query',NULL,'2018-06-10 23:29:00'),(729,'User Login','admin','2018-06-10 23:29:04'),(730,'User Login','admin','2018-06-10 23:29:10'),(731,'User Login','admin','2018-06-10 23:29:30'),(732,'User Login','admin','2018-06-10 23:29:36'),(733,'Content Query','admin','2018-06-10 23:30:01'),(734,'Content Query','admin','2018-06-10 23:30:05'),(735,'Content Query','admin','2018-06-10 23:30:06'),(736,'Show Self Information','admin','2018-06-10 23:30:11'),(737,'Content Query','admin','2018-06-10 23:30:14'),(738,'Content Query','admin','2018-06-10 23:30:14'),(739,'Content Query','admin','2018-06-10 23:30:15'),(740,'Content Query','admin','2018-06-10 23:30:15'),(741,'Content Query','admin','2018-06-10 23:30:31'),(742,'Content Query','admin','2018-06-10 23:30:32'),(743,'Show Self Information','admin','2018-06-10 23:30:35'),(744,'Content Query','admin','2018-06-10 23:30:36'),(745,'Content Query','admin','2018-06-10 23:30:37'),(746,'Content Query','admin','2018-06-10 23:30:58'),(747,'Content Query','admin','2018-06-10 23:30:58'),(748,'User Query','admin','2018-06-10 23:31:01'),(749,'User Query','admin','2018-06-10 23:31:03'),(750,'User Query','admin','2018-06-10 23:31:07'),(751,'User Query','admin','2018-06-10 23:31:10'),(752,'User Login','admin','2018-06-10 23:31:14'),(753,'Content Query','admin','2018-06-10 23:31:22'),(754,'User Login','admin','2018-06-10 23:31:38'),(755,'Content Query','admin','2018-06-10 23:32:06'),(756,'Content Query','admin','2018-06-10 23:32:23'),(757,'User Login','admin','2018-06-10 23:34:43'),(758,'Content Query','admin','2018-06-10 23:34:59'),(759,'Content Query','admin','2018-06-10 23:36:36'),(760,'Content Query','admin','2018-06-10 23:36:36'),(761,'Content Query','admin','2018-06-10 23:36:37'),(762,'Content Query','admin','2018-06-10 23:36:51'),(763,'Content Query','admin','2018-06-10 23:36:52'),(764,'Content Query','admin','2018-06-10 23:38:21'),(765,'Content Query','admin','2018-06-10 23:38:22'),(766,'Content Query','admin','2018-06-10 23:39:57'),(767,'Content Query','admin','2018-06-10 23:39:57'),(768,'Content Query',NULL,'2018-06-10 23:50:43'),(769,'Content Query',NULL,'2018-06-10 23:50:51'),(770,'Content Query',NULL,'2018-06-10 23:51:28'),(771,'User Login','admin','2018-06-11 09:27:00'),(772,'Content Query','admin','2018-06-11 09:27:10'),(773,'Content Query','admin','2018-06-11 09:28:20'),(774,'Content Query','admin','2018-06-11 09:28:20'),(775,'Content Query','admin','2018-06-11 09:36:42'),(776,'Content Query','admin','2018-06-11 09:55:01'),(777,'Content Query','admin','2018-06-11 09:55:02'),(778,'User Query','admin','2018-06-11 10:17:51'),(779,'Modify User','admin','2018-06-11 10:17:59'),(780,'User Query','admin','2018-06-11 10:18:05'),(781,'User Query','admin','2018-06-11 10:18:11'),(782,'User Login','admin','2018-06-11 10:18:34'),(783,'Content Query','admin','2018-06-11 10:18:38'),(784,'Central data statistics','admin','2018-06-11 10:19:01'),(785,'Show Self Information','admin','2018-06-11 10:19:05'),(786,'Content Query','admin','2018-06-11 10:19:05'),(787,'Content Query','admin','2018-06-11 10:34:17'),(788,'User Login','admin','2018-07-01 23:35:54'),(789,'Content Query','admin','2018-07-01 23:36:18'),(790,'Content Query','admin','2018-07-01 23:36:19'),(791,'User Login','admin','2018-07-02 11:05:27'),(792,'Content Query','admin','2018-07-02 11:05:42'),(793,'Content Query','admin','2018-07-02 11:09:46'),(794,'Content Query','admin','2018-07-02 11:09:47'),(795,'User Query','admin','2018-07-02 11:24:15'),(796,'User Login','admin','2018-07-02 11:24:39'),(797,'Content Query','admin','2018-07-02 11:24:48'),(798,'User Login','admin','2018-07-02 11:25:55'),(799,'Content Query','admin','2018-07-02 11:26:25'),(800,'Show Self Information','admin','2018-07-02 11:26:30'),(801,'User Query','admin','2018-07-02 11:26:32'),(802,'Central data statistics','admin','2018-07-02 11:26:36'),(803,'Sensitive Lexical Analysis','admin','2018-07-02 11:26:41'),(804,'Central data statistics','admin','2018-07-02 11:26:43'),(805,'Sensitive Lexical Analysis','admin','2018-07-02 11:26:44'),(806,'File Statistic','admin','2018-07-02 11:26:45'),(807,'Consumer Statistic','admin','2018-07-02 11:26:45'),(808,'Central data statistics','admin','2018-07-02 11:26:47'),(809,'Central data statistics','admin','2018-07-02 11:26:51'),(810,'Sensitive Lexical Analysis','admin','2018-07-02 11:26:55'),(811,'File Statistic','admin','2018-07-02 11:27:09'),(812,'Consumer Statistic','admin','2018-07-02 11:27:09'),(813,'Central data statistics','admin','2018-07-02 11:27:12'),(814,'File List Browsing','admin','2018-07-02 11:27:13'),(815,'File List Browsing','admin','2018-07-02 11:27:15'),(816,'Backup Mysql','admin','2018-07-02 11:27:24'),(817,'Log List Browsing','admin','2018-07-02 11:27:25'),(818,'Modify Announcement','admin','2018-07-02 11:27:25'),(819,'Content Query','admin','2018-07-02 11:27:28'),(820,'User Geographical Distribution Statistics','admin','2018-07-02 11:27:39'),(821,'Backup Mysql','admin','2018-07-02 11:28:37'),(822,'Log List Browsing','admin','2018-07-02 11:28:40'),(823,'Modify Announcement','admin','2018-07-02 11:28:42'),(824,'Content Query','admin','2018-07-02 11:28:47'),(825,'Content Query','admin','2018-07-02 11:36:06'),(826,'Content Query','admin','2018-07-02 11:36:06'),(827,'Content Query','admin','2018-07-02 11:36:43'),(828,'Content Query','admin','2018-07-02 11:36:52'),(829,'Content Query','admin','2018-07-02 11:36:54'),(830,'Show Self Information','admin','2018-07-02 11:36:55'),(831,'Content Query','admin','2018-07-02 11:36:55'),(832,'Content Query','admin','2018-07-02 11:39:33'),(833,'Show Self Information','admin','2018-07-02 11:39:36'),(834,'Content Query','admin','2018-07-02 11:39:37'),(835,'User Login','admin','2018-07-02 12:21:19'),(836,'Content Query','admin','2018-07-02 12:21:23'),(837,'File Download','admin','2018-07-02 12:21:29'),(838,'Content Query','admin','2018-07-02 12:26:09'),(839,'Content Query','admin','2018-07-02 12:26:09'),(840,'Content Query','admin','2018-07-02 12:26:10'),(841,'Show Self Information','admin','2018-07-02 12:26:13'),(842,'Content Query','admin','2018-07-02 12:26:13'),(843,'User Login','admin','2018-08-29 15:50:15'),(844,'Content Query','admin','2018-08-29 15:50:27');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediatasks`
--

DROP TABLE IF EXISTS `mediatasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediatasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `file_path` varchar(260) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '0 表示正在清洗 1 清洗完成 2 上传文件出错 3 清洗出错 4 结果生成出错',
  `result_path` varchar(260) CHARACTER SET utf8 DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `foundername` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediatasks`
--

LOCK TABLES `mediatasks` WRITE;
/*!40000 ALTER TABLE `mediatasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediatasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_mode` tinyint(11) DEFAULT '0' COMMENT '1代表清洗 0代表扫描',
  `name` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `file_path` varchar(260) CHARACTER SET utf8 DEFAULT NULL,
  `scan_options` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `result_path` varchar(260) CHARACTER SET utf8 DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `foundername` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `config_file` varchar(260) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` int(2) DEFAULT NULL,
  `foundername` varchar(15) CHARACTER SET utf8 NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 NOT NULL,
  `password` char(32) CHARACTER SET utf8 NOT NULL,
  `auto` int(2) unsigned zerofill DEFAULT '00',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,'admin','admin','21232F297A57A5A743894A0E4A801FC3',00);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e',1),(2,'Tom','e10adc3949ba59abbe56e057f20f883e',1),(3,'Lucy','e10adc3949ba59abbe56e057f20f883e',2),(4,'Lily','e10adc3949ba59abbe56e057f20f883e',2),(5,'Nitasa','e10adc3949ba59abbe56e057f20f883e',1),(6,'Landy','e10adc3949ba59abbe56e057f20f883e',2),(7,'Kacey','e10adc3949ba59abbe56e057f20f883e',1),(9,'Cat','e10adc3949ba59abbe56e057f20f883e',2),(10,'Niuton','e10adc3949ba59abbe56e057f20f883e',2),(12,'Yaton','e10adc3949ba59abbe56e057f20f883e',2),(13,'California','e10adc3949ba59abbe56e057f20f883e',2),(14,'Andy','e10adc3949ba59abbe56e057f20f883e',2),(15,'Nisa','e10adc3949ba59abbe56e057f20f883e',2),(16,'Pich','e10adc3949ba59abbe56e057f20f883e',2),(17,'Bob','e10adc3949ba59abbe56e057f20f883e',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-29 16:15:52
