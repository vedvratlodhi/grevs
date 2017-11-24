-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: grievance
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `uname` varchar(45) NOT NULL,
  `design` varchar(45) DEFAULT NULL,
  `ad_name` varchar(45) DEFAULT NULL,
  `ad_mobileno` varchar(45) DEFAULT NULL,
  `ad_pass` varchar(45) DEFAULT NULL,
  `ad_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('123456',NULL,NULL,NULL,'1234',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g_chat`
--

DROP TABLE IF EXISTS `g_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g_chat` (
  `gchat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chat_by` char(1) NOT NULL,
  `complaint_no` int(10) unsigned NOT NULL,
  `c_reply` varchar(500) NOT NULL,
  `rdate` datetime DEFAULT NULL,
  PRIMARY KEY (`gchat_id`),
  KEY `FK_g_chat_comp` (`complaint_no`),
  CONSTRAINT `FK_g_chat_comp` FOREIGN KEY (`complaint_no`) REFERENCES `grievances` (`complaint_no`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g_chat`
--

LOCK TABLES `g_chat` WRITE;
/*!40000 ALTER TABLE `g_chat` DISABLE KEYS */;
INSERT INTO `g_chat` VALUES (1,'a',100000,'khhkkj','2017-10-30 00:00:00'),(2,'a',100000,'hjhjhjh','2017-10-30 00:00:00'),(3,'a',100000,'uigfk','2017-10-30 00:00:00'),(4,'a',100005,'gyukyfjvkhgj','2017-10-30 00:00:00'),(5,'a',100000,'sorry ','2017-11-01 00:00:00'),(6,'a',100000,'good','2017-11-01 00:00:00'),(7,'a',100000,'lsjgklfdgl','2017-11-01 00:00:00'),(8,'a',100000,'abb','2017-11-01 00:00:00'),(9,'a',100000,'a','2017-11-01 00:00:00'),(10,'a',100000,'abb','2017-11-01 00:00:00'),(11,'a',100000,'abb','2017-11-01 00:00:00'),(12,'a',100000,'a','2017-11-01 00:00:00'),(13,'a',100000,'jj','2017-11-01 00:00:00'),(14,'s',100000,'hh','2017-11-01 00:00:00'),(15,'a',100000,'bus problem','2017-11-01 00:00:00'),(16,'a',100000,'cool\r\n#noissue','2017-11-01 00:00:00'),(17,'a',100000,'sorry there is technical problem in a site\r\n','2017-11-01 00:00:00'),(18,'s',100000,'hh','2017-11-01 00:00:00'),(19,'s',100000,'okk','2017-11-01 00:00:00'),(20,'a',100000,'sorry there is technical problem in a site\r\n','2017-11-01 00:00:00'),(21,'s',100000,'now its fixed i think','2017-11-01 00:00:00'),(22,'s',100000,'lets see\r\n','2017-11-01 00:00:00'),(23,'s',100000,'still problem','2017-11-01 00:00:00'),(24,'s',100000,'we are processing ur request','2017-11-01 00:00:00'),(25,'a',100000,'okk\r\n','2017-11-01 00:00:00'),(26,'a',100000,'please do it fast','2017-11-01 00:00:00'),(27,'s',100000,'okk','2017-11-01 00:00:00'),(28,'s',100000,'still a problem','2017-11-01 00:00:00'),(29,'a',100000,'why?','2017-11-01 00:00:00'),(30,'a',100000,'what happen?','2017-11-01 00:00:00'),(31,'s',100000,'my problem is still not resolved','2017-11-01 00:00:00'),(32,'a',100000,'Are tumhe dikkat kaha aa rahi yeh batao','2017-11-01 00:00:00'),(33,'s',100000,'bus me\r\n','2017-11-01 00:00:00'),(34,'s',100000,'uska mai dekhta hu kya karna\r\n\r\n#noissue','2017-11-01 00:00:00'),(35,'a',100000,'hao','2017-11-01 00:00:00'),(36,'s',100000,'Hmmmmmmmmmmmmmmmmm','2017-11-01 00:00:00'),(37,'a',100000,'hao','2017-11-01 00:00:00'),(38,'s',100000,'Hmmmmmmmmmmmmmmmmm','2017-11-01 00:00:00'),(39,'a',100000,' ','2017-11-01 00:00:00'),(40,'a',100000,'hey\r\n','2017-11-01 00:00:00'),(41,'s',100000,'Hmmmmmmmmmmmmmmmmm','2017-11-01 00:00:00'),(42,'a',100000,'','2017-11-01 00:00:00'),(43,'a',100000,'','2017-11-01 00:00:00'),(44,'a',100000,'jgrlkjkfdj','2017-11-01 00:00:00'),(45,'a',100000,'jgrlkjkfdj','2017-11-01 00:00:00'),(46,'a',100000,'jgrlkjkfdj','2017-11-01 00:00:00'),(47,'a',100000,'jgrlkjkfdj','2017-11-01 00:00:00'),(48,'s',100000,'Hmmmmmmmmmmmmmmmmm','2017-11-01 00:00:00'),(49,'a',100000,'jgrlkjkfdj','2017-11-01 00:00:00'),(50,'s',100000,'Hmmmmmmmmmmmmmmmmm','2017-11-01 00:00:00'),(51,'s',100000,'Hmmmmmmmmmmmmmmmmm','2017-11-01 00:00:00'),(52,'s',100000,'Hmmmmmmmmmmmmmmmmm','2017-11-01 00:00:00'),(53,'s',100000,'uska mai dekhta hu kya karna\r\n\r\n#noissue','2017-11-01 00:00:00'),(54,'s',100000,'hh','2017-11-01 00:00:00'),(55,'a',100000,'','2017-11-01 00:00:00'),(56,'s',100000,'hh','2017-11-01 00:00:00'),(57,'a',100001,'ok i will look into it\r\n','2017-11-01 00:00:00'),(58,'a',100001,'kgi tuut itut uou o','2017-11-01 00:00:00'),(59,'a',100001,'obgrr4 to dekh ka bata ato \r\n','2017-11-01 00:00:00'),(60,'a',100001,'kgi tuut itut uou o','2017-11-01 00:00:00'),(61,'a',100001,'a','2017-11-01 00:00:00'),(62,'a',100001,'b','2017-11-01 00:00:00'),(63,'a',100001,'a','2017-11-01 00:00:00'),(64,'a',100001,'a','2017-11-01 00:00:00'),(65,'a',100001,'admin','2017-11-01 00:00:00'),(66,'a',100001,'b','2017-11-01 00:00:00'),(67,'a',100001,'student','2017-11-01 00:00:00'),(68,'a',100001,'student','2017-11-01 00:00:00'),(69,'a',100001,'admin','2017-11-01 00:00:00'),(70,'s',100001,'hello i am student','2017-11-01 00:00:00'),(71,'a',100001,'i am admin','2017-11-01 00:00:00'),(72,'s',100001,'hello i am student','2017-11-01 00:00:00'),(73,'a',100001,'i am admin','2017-11-01 00:00:00'),(74,'s',100001,'hello i am student','2017-11-01 00:00:00'),(75,'s',100001,'i have a problm','2017-11-01 00:00:00'),(76,'a',100001,'i have a solution','2017-11-01 00:00:00'),(77,'a',100001,'again expalin me the tragedy','2017-11-01 00:00:00'),(78,'s',100001,'i have a problm','2017-11-01 00:00:00'),(79,'s',100001,'this is what happened','2017-11-01 00:00:00'),(80,'a',100001,'again expalin me the tragedy','2017-11-01 00:00:00'),(81,'a',100003,'uhgiuk','2017-11-01 00:00:00'),(82,'a',100050,'njknkjnjkn','2017-11-01 00:00:00'),(83,'a',100050,'i need ur idcard','2017-11-01 00:00:00');
/*!40000 ALTER TABLE `g_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grievances`
--

DROP TABLE IF EXISTS `grievances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grievances` (
  `complaint_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gdate` datetime DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `status` varchar(1) DEFAULT 'N',
  `grievdetails` varchar(200) DEFAULT NULL,
  `reply` varchar(200) DEFAULT NULL,
  `enroll_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`complaint_no`),
  KEY `ee_idx` (`enroll_no`),
  CONSTRAINT `ee` FOREIGN KEY (`enroll_no`) REFERENCES `studetails` (`enroll_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=100051 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grievances`
--

LOCK TABLES `grievances` WRITE;
/*!40000 ALTER TABLE `grievances` DISABLE KEYS */;
INSERT INTO `grievances` VALUES (100000,'2017-10-23 00:00:00','Grievance related to Victimization','c','vhjffvuyvjhvi','GIVKJ','12345'),(100001,'2017-10-23 00:00:00','grievance regarding college transportation','c','bhgyufffu','ok','12345'),(100002,'2017-10-23 00:00:00','grievance regarding college transportation','p','bjfutyt',' hwkjdb xh','12345'),(100003,'2017-10-06 00:00:00','grievance regarding college transportation','c','bigiugfyutfrytdyrsdrtst','n dsmv njwerygvuhtr','123'),(100005,'2017-10-07 00:00:00','Grievance on discrimination by students from SC/ST/Minority/Women/Disabled Categories','p','vghdtdhtxjtdiudtiy',NULL,'123'),(100006,'2017-10-08 00:00:00','Grievance related to Attendance','p','hkvjhfj',' fgk','123'),(100007,'2017-10-08 00:00:00','Grievance related to Attendance','p','hkvjhfj',NULL,'1234'),(100008,'2017-10-09 00:00:00','Non-observation of AICTE norms and standards','p','kllfdfngkjdrnkjg','6518','1234'),(100009,'2017-10-09 00:00:00','Grievance related to Victimization','p','Anjali Verma',' hj rjf','1234'),(100010,'2017-10-09 00:00:00','grievance regarding college transportation','p','bhjjvg','hjhcbsj','1234'),(100012,'2017-10-23 00:00:00','subject01','p','details01',' jsrf','12345'),(100030,'2017-10-09 00:00:00','grievance regarding college transportation','p','beflgyelbgluyt4','  nskjvbfhae','12345'),(100031,'2017-10-09 00:00:00','grievance regarding college transportation','p','njrigf783biy5il',NULL,'12345'),(100032,'2017-10-09 00:00:00','grievance regarding college transportation','p','hiogo8ipb;',NULL,'12345'),(100035,'2017-10-10 00:00:00','grievance regarding college transportation','p','hbkjfv',NULL,'12345'),(100036,'2017-10-10 00:00:00','grievance regarding college transportation','p',' ektg;nkj.njegktlqbtkg,',NULL,'12345'),(100037,'2017-10-10 00:00:00','grievance regarding college transportation','p','bus jaldi aa jati hai','toh main kya karu','654'),(100039,'2017-10-15 00:00:00','grievance regarding college transportation','p','2569415613',NULL,'12345'),(100043,'2017-10-15 00:00:00','subject01','p','details01',NULL,'12345'),(100044,'2017-10-15 00:00:00','subject01','p','details01',NULL,'12345'),(100047,'2017-11-01 00:00:00','Grievance related to Attendance','p','my attendance is very low but i have attended the college\r\n',NULL,'12345'),(100048,'2017-11-01 00:00:00','Grievance related to Attendance','p','my attendance is very low but i have attended the college\r\n',NULL,'12345'),(100049,'2017-11-01 00:00:00','Grievance related to Attendance','p','my attendance is very low but i have attended the college\r\n',NULL,'12345'),(100050,'2017-11-01 00:00:00','grievance regarding college transportation','r','hbjh bjh bjb jb jbj bj bj ugugjhb ubj bj bj bj bjv t kjn ',NULL,'12345');
/*!40000 ALTER TABLE `grievances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studetails`
--

DROP TABLE IF EXISTS `studetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studetails` (
  `enroll_no` varchar(14) NOT NULL,
  `stu_name` varchar(25) NOT NULL,
  `stu_email` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `sem` varchar(45) DEFAULT NULL,
  `stu_mobileno` varchar(10) DEFAULT NULL,
  `stu_pass` varchar(45) DEFAULT NULL,
  `rstatus` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`enroll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studetails`
--

LOCK TABLES `studetails` WRITE;
/*!40000 ALTER TABLE `studetails` DISABLE KEYS */;
INSERT INTO `studetails` VALUES ('0173cs141015','Parakh','garg.parakh@gmail.com','csej','5946','ndcbk','123','Y'),('123','anjali','bjejeygewhjv','bhdchgj','bhcj','bhgdcj','123','Y'),('1234','Piyush','piyush@gmail.com','cse','5','9876543214','123','Y'),('12345','123','161','1561','15663561','1513153','123','Y'),('12346','PARAKJ','ABUBVD@JH.COJ',' JK  ','5','259416','1234','Y'),('5555','knpdoiuEWHOKFL','hfcj@hbfekj','jdknc','csjk','','6666','Y'),('654','Anjali Verma`','nrrufeku,','6268296','9','59164685','123','Y'),('987654','PARAKH GARG','igfvyw4ugbtf','218945','251',NULL,'123','N');
/*!40000 ALTER TABLE `studetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-24 11:45:25
