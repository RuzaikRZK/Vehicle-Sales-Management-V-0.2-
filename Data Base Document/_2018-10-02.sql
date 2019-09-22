-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: vehiclesalesmanagement
-- ------------------------------------------------------
-- Server version	10.1.25-MariaDB

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
-- Current Database: `vehiclesalesmanagement`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `vehiclesalesmanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vehiclesalesmanagement`;

--
-- Table structure for table `accessrices`
--

DROP TABLE IF EXISTS `accessrices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessrices` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `discript` varchar(200) NOT NULL,
  PRIMARY KEY (`ac_id`),
  KEY `fk_accessrices` (`bid`),
  CONSTRAINT `fk_accessrices` FOREIGN KEY (`bid`) REFERENCES `body_parts` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessrices`
--

LOCK TABLES `accessrices` WRITE;
/*!40000 ALTER TABLE `accessrices` DISABLE KEYS */;
INSERT INTO `accessrices` VALUES (6,38,'An air-intake is an opening through which air enters an engine or system, usually for combustion or cooling'),(7,39,'A mat is a piece of fabric material that generally is placed on a floor or other flat surface'),(8,40,'ORIGINAL'),(9,41,'ORIGINAL,BRAND NEW CONDITION'),(10,42,'ORIGINAL BRAND NEW CONDITION');
/*!40000 ALTER TABLE `accessrices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alloywheel`
--

DROP TABLE IF EXISTS `alloywheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alloywheel` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `rimMaterial` varchar(40) NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `fk_alloyWheel` (`bid`),
  CONSTRAINT `fk_alloyWheel` FOREIGN KEY (`bid`) REFERENCES `body_parts` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alloywheel`
--

LOCK TABLES `alloywheel` WRITE;
/*!40000 ALTER TABLE `alloywheel` DISABLE KEYS */;
INSERT INTO `alloywheel` VALUES (10,24,'16 x 8','Aluminium'),(11,25,'18 x 8','Nickel'),(12,26,'16 x 7','Platinum'),(13,27,'17 x 7','Aluminium'),(14,28,'15 x 7','Nickel'),(15,29,'14 x 7','Gold'),(16,30,'14 x 7','Brass');
/*!40000 ALTER TABLE `alloywheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `body_parts`
--

DROP TABLE IF EXISTS `body_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `body_parts` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(40) NOT NULL,
  `modeNum` varchar(50) NOT NULL,
  `colour` char(20) NOT NULL,
  `model` varchar(40) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(70) DEFAULT NULL,
  `cost_price` varchar(40) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body_parts`
--

LOCK TABLES `body_parts` WRITE;
/*!40000 ALTER TABLE `body_parts` DISABLE KEYS */;
INSERT INTO `body_parts` VALUES (24,'OZ RACING','MN88880000','Black','LEGGERA HLT',2,'45360','42000'),(25,'MAK','MN66006666','White','MAK I CONA AUDI',7,'54000','50000'),(26,'OZ RACING','MN88884400','Silver','LEGGERA HLT',2,'56160','52000'),(27,'MAK','MN88884422','Silver','MAK I CONA AUDI',7,'75600','70000'),(28,'MAK','MN66880000','Black','MAK I CONA AUDI',7,'64800','60000'),(29,'OZ RACING','MN44441100','Brown','LEGGERA HLT',2,'86400','80000'),(30,'MAK','MN55440000','Beige','MAK I CONA AUDI',7,'70200','65000'),(31,'KENWOOD','MNMUL50000','White','POD ENTERTAINMENT BUNDLE',4,'43200','40000'),(32,'ADVENT','MNMUL50055','Black','ADVENT OE STYLED',9,'34560','32000'),(33,'PYLE','MNMUL48800','Lemon','PYLE 7 AUX SETUP',4,'66960','62000'),(34,'SONY','MNMUL88000','Brown','SONY XAV 70BT',3,'54000','50000'),(35,'TOYOTA','MNMUL88099','White','HILUX 2012 2KD KUN',2,'56160','52000'),(36,'PYLE','MNMUL88077','Lemon','PYLE 7 AUX SETUP',4,'48600','45000'),(37,'PYLE','MNMUL96666','Pink','PYLE 7 AUX SETUP',4,'32400','30000'),(38,'CHERY','MNAC55000','Black','AIR INTAKES',7,'37800','35000'),(39,'ACURA','MNAC557777','Black','FLOOR MATS',70,'12960','12000'),(40,'JVC','MNAC556666','White','RCUKHD706',7,'75600','70000'),(41,'CHERY','MNAC348888','Beige','AIR INTAKES',8,'14040','13000'),(42,'JVC','MNAC4399000','Select Color','RCUKHD706',6,'54000','50000');
/*!40000 ALTER TABLE `body_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `body_parts_order`
--

DROP TABLE IF EXISTS `body_parts_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `body_parts_order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `body_parts_bid` int(11) NOT NULL,
  `o_brand` varchar(40) NOT NULL,
  `o_model` varchar(40) NOT NULL,
  `o_qnt` int(11) NOT NULL,
  `home_status` int(11) NOT NULL,
  `o_customer_id` int(11) NOT NULL,
  PRIMARY KEY (`o_id`),
  KEY `fk_order` (`body_parts_bid`),
  CONSTRAINT `fk_order` FOREIGN KEY (`body_parts_bid`) REFERENCES `body_parts` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body_parts_order`
--

LOCK TABLES `body_parts_order` WRITE;
/*!40000 ALTER TABLE `body_parts_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `body_parts_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodymodel`
--

DROP TABLE IF EXISTS `bodymodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodymodel` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `mName` varchar(40) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `fk_bodyModel` (`bid`),
  CONSTRAINT `fk_bodyModel` FOREIGN KEY (`bid`) REFERENCES `bodypartbrand` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodymodel`
--

LOCK TABLES `bodymodel` WRITE;
/*!40000 ALTER TABLE `bodymodel` DISABLE KEYS */;
INSERT INTO `bodymodel` VALUES (25,26,'POD ENTERTAINMENT BUNDLE','9995880'),(26,27,'ADVENT OE STYLED','4565298'),(27,28,'PYLE 7 AUX SETUP','8895888'),(28,29,'SONY XAV 70BT','9765298'),(29,30,'LEGGERA HLT','9005880'),(30,31,'MAK I CONA AUDI','4567898'),(31,32,'CARAVAN ROYAL HOOD','9005000'),(32,33,'HILUX 2012 2KD KUN','9765236'),(33,35,'AIR INTAKES','4563429'),(34,36,'FLOOR MATS','88776655'),(35,37,'RCUKHD706','9765232');
/*!40000 ALTER TABLE `bodymodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodypartbrand`
--

DROP TABLE IF EXISTS `bodypartbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodypartbrand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(40) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodypartbrand`
--

LOCK TABLES `bodypartbrand` WRITE;
/*!40000 ALTER TABLE `bodypartbrand` DISABLE KEYS */;
INSERT INTO `bodypartbrand` VALUES (26,'KENWOOD','Multimedia'),(27,'ADVENT','Multimedia'),(28,'PYLE','Multimedia'),(29,'SONY','Multimedia'),(30,'OZ RACING','AlloyWheel'),(31,'MAK','AlloyWheel'),(32,'CARAVAN','Accessories'),(33,'TOYOTA','Multimedia'),(35,'CHERY','Accessories'),(36,'ACURA','Accessories'),(37,'JVC','Accessories');
/*!40000 ALTER TABLE `bodypartbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodypratselling`
--

DROP TABLE IF EXISTS `bodypratselling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodypratselling` (
  `brand` varchar(60) NOT NULL,
  `model` varchar(70) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` double NOT NULL,
  `total` double NOT NULL,
  `cusid` int(11) DEFAULT NULL,
  `invoice_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_bodypratselling` (`cusid`),
  KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `pk_bodypratselling` FOREIGN KEY (`cusid`) REFERENCES `customer` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodypratselling`
--

LOCK TABLES `bodypratselling` WRITE;
/*!40000 ALTER TABLE `bodypratselling` DISABLE KEYS */;
INSERT INTO `bodypratselling` VALUES ('JVC','RCUKHD706',219,1,15000,6,'IN182496'),('OZ Racing1','OZ Racing LEGGERA HLT',220,1,12000,6,'IN182496'),('Toyota1','Hilux 2KD KUN 15',221,1,45000,6,'IN182496'),('OZ Racing1','OZ Racing LEGGERA HLT',222,1,12000,6,'IN117004'),('OZ Racing1','OZ Racing LEGGERA HLT',223,1,12000,6,'IN465617'),('Kenwood','RoadEntertainmentBundle',224,1,17560,6,'IN608348'),('MAK HO','MAK ICONA AUDI',225,1,25000,6,'IN608348'),('MAK HO','MAK ICONA AUDI',226,1,22000,3,'IN810572'),('PYLE','PYLE 7 AUX SETUP',227,2,133920,6,'IN151471'),('CARAVAN','CARAVAN ROYAL HOOD',228,1,75600,6,'IN151471'),('TOYOTA','HILUX 2012 2KD KUN',229,1,56160,6,'IN151471'),('CARAVAN','CARAVAN ROYAL HOOD',230,1,75600,6,'IN139859'),('PYLE','PYLE 7 AUX SETUP',231,1,66960,6,'IN139859'),('MAK','MAK I CONA AUDI',232,1,54000,6,'IN139859'),('','',233,1,0,6,'IN465599'),('PYLE','PYLE 7 AUX SETUP',234,3,0,6,'IN465599'),('TOYOTA','HILUX 2012 2KD KUN',235,1,56160,6,'IN465599'),('OZ RACING','LEGGERA HLT',236,1,45360,6,'IN969259'),('TOYOTA','HILUX 2012 2KD KUN',237,2,112320,6,'IN969259');
/*!40000 ALTER TABLE `bodypratselling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `bid` int(100) NOT NULL AUTO_INCREMENT,
  `Brand_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (15,'Mazda'),(17,'TOYOTA '),(18,'NISSAN'),(19,'MITSUBISHI'),(20,'SUZUKI'),(21,'BMW'),(22,'HONDA');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) DEFAULT NULL,
  `NIC` char(20) NOT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `dob` char(20) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `pk_customer` (`did`),
  CONSTRAINT `pk_customer` FOREIGN KEY (`did`) REFERENCES `discount` (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'9427505660V','0776787665','thiserra@gmail.com','thissera','2018-08-29 10:48:28','Rambe','Female','1996-Nov-20','Live'),(2,2,'963200790V','0774475726','ruzaikmohomad@gmail.com','Vihanga','2018-08-29 10:48:28','Angoda','Female','1996-Jan-09','Live'),(3,4,'9450560V','0784328880','thilina.wickramasinghe.sl@gmail.com','thilina','2018-08-29 10:48:28','Kurunegala','Male','1996-Feb-08','Live'),(4,3,'963290790V','+942237873','ruzaikmohomad@gmail.com','Ruzaik','2018-08-29 10:59:48','Kurunegala','Male','1996-Nov-15','Deleted'),(5,3,'940971781V','0719233140','thiina@gmail.com','Thilina Tissera','2018-08-30 09:33:31','narammala','Male','1994-Apr-06','Deleted'),(6,3,'#####','###','#####','###','2018-09-06 23:04:36','###','####','###','Live'),(7,5,'952030442V','0714760554','shan@gmail.com','Shan hasantha','2018-10-02 08:47:02','Polgahawela','Male','1995-Jul-21','Live'),(8,6,'962232541V','0714555726','bimesh@gmail.com','Kushantha Bimesh','2018-10-02 08:47:55','kurunegala','Male','1996-Aug-10','Live'),(9,7,'966130121V','0712142326','madu@gmail.com','Madushani kumari','2018-10-02 08:48:47','kandy','Female','1996-Apr-22','Live'),(10,8,'945593571V','0716154873','ashani@gmail.com','Ashani Dissanayake','2018-10-02 08:49:29','Dambadeniya','Female','1994-Feb-28','Live'),(11,9,'638283147V','0703500925','sandya@gmail.com','Sandya kanthi','2018-10-02 08:50:42','Narammala','Female','1963-Nov-23','Live'),(12,10,'950871721V','0771035925','lahiru@gmail.com','Lahiru Tisserra','2018-10-02 08:51:38','Metiyagane','Male','1995-Mar-27','Live'),(13,11,'962821820V','0710432525','supun@gmail.com','Supun Bandra','2018-10-02 08:52:43','Kandy','Male','1996-Oct-08','Live'),(14,12,'805545067V','0763208044','menik@gmail.com','Menik Randi','2018-10-02 08:53:28','Peradeniya','Female','1980-Feb-23','Live'),(15,13,'501831471V','0703500924','kanthi@gmail.com','Kanthi Gunawardana','2018-10-02 09:38:55','Metiyagane','Male','2050-Jul-01','Live');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diary` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `event` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (8,'Google I/O','Sep 11, 2018','12:12:12:PM','Kurunegala'),(9,'Mobbile Bank Event','Sep 13, 2018','08:21:12:AM','Kurunegala'),(10,'Medicare','Oct 1, 2018','00:00:00:AM','ciycenter');
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `barcodeId` varchar(40) NOT NULL,
  `rate` int(20) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,'silver','98675694',6),(2,'gold','76890847',10),(3,'normal','null',0),(4,'platinum','98675694',12),(5,'Normal','952030442V',0),(6,'Normal','962232541V',0),(7,'Normal','966130121V',0),(8,'Normal','945593571V',0),(9,'Normal','638283147V',0),(10,'Normal','950871721V',0),(11,'Normal','962821820V',0),(12,'Normal','805545067V',0),(13,'Normal','501831471V',0);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EID` int(5) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(100) NOT NULL,
  `Last_name` varchar(100) DEFAULT NULL,
  `NIC` char(15) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` char(12) NOT NULL,
  `Barcode` int(10) DEFAULT NULL,
  `Pro_pic` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2,'Nilukshan','','960304886V','Matale','nilukshan@gmail.com','0714834154',NULL,NULL),(3,'Sharaf','Mohamed','962151234V','Matale','msharaf@outlook.com','0784561230',NULL,NULL),(6,'KAsun','','921224886V','Kurunegala','kasun@gmail.com','0717894563',NULL,NULL),(8,'Muhammad','Shakaf','970304886V','Colombo','mshakaf@hotmail.com','0768412655',NULL,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchangeveh`
--

DROP TABLE IF EXISTS `exchangeveh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchangeveh` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `eBrand` varchar(25) NOT NULL,
  `gBrand` varchar(25) NOT NULL,
  `eModel` varchar(25) NOT NULL,
  `gModel` varchar(25) NOT NULL,
  `exchangeDate` char(15) NOT NULL,
  `balance` double NOT NULL,
  `ePrice` double NOT NULL,
  `gPrice` double NOT NULL,
  `eType` varchar(25) NOT NULL,
  `gType` varchar(25) NOT NULL,
  `book_Image` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchangeveh`
--

LOCK TABLES `exchangeveh` WRITE;
/*!40000 ALTER TABLE `exchangeveh` DISABLE KEYS */;
INSERT INTO `exchangeveh` VALUES (1,'Toyota','Toyota','Aqua','Aqua','Aug 30, 2018',-16419875,23446565,7026690,'Car','Car',''),(2,'Toyota','Toyota','Aqua','Prius','Aug 30, 2018',-205020,900000,694980,'Car','Car','');
/*!40000 ALTER TABLE `exchangeveh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `user` varchar(40) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `random` int(20) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (10,'Ruzaik','123','mohomadruzaik@gmail.com','Admin',0,148761),(11,'Thissera','119','rzktechnology.inc@gmail.com','Devaloper',0,854854);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `model` varchar(30) NOT NULL,
  `engCap` varchar(30) NOT NULL,
  `type` char(15) NOT NULL,
  PRIMARY KEY (`mId`),
  KEY `fk_Model` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (17,15,'Bongo','1600','Van'),(29,17,'PRIUS','1800','Car'),(30,17,'PREMIO','1500','Car'),(31,18,'CARAVAN','3000','Van'),(32,18,'PATROL','3000','Jeep'),(33,19,'LANCER ','1300','Car'),(34,20,'A STAR','1000','Car'),(35,21,'X3','3000','Jeep'),(36,21,'318I','2500','Car'),(37,22,'CIVIC','1600','Car');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multimedia`
--

DROP TABLE IF EXISTS `multimedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multimedia` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `amphere` varchar(40) NOT NULL,
  `hrtz` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `fk_multimedia` (`bid`),
  CONSTRAINT `fk_multimedia` FOREIGN KEY (`bid`) REFERENCES `body_parts` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multimedia`
--

LOCK TABLES `multimedia` WRITE;
/*!40000 ALTER TABLE `multimedia` DISABLE KEYS */;
INSERT INTO `multimedia` VALUES (6,31,'90 - 110','85 - 125'),(7,32,'65 - 80','75 - 110'),(8,33,'135 - 160','65 - 95'),(9,34,'90 - 110','65 - 95'),(10,35,'65 - 80','55 - 75'),(11,36,'135 - 160','85 - 125'),(12,37,'160 - 210 ','100 - 145');
/*!40000 ALTER TABLE `multimedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remove_bodyparts`
--

DROP TABLE IF EXISTS `remove_bodyparts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remove_bodyparts` (
  `rbid` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(40) NOT NULL,
  `modeNum` varchar(40) NOT NULL,
  `model` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `size` varchar(40) DEFAULT NULL,
  `rimMaterial` varchar(40) DEFAULT NULL,
  `discript` varchar(300) DEFAULT NULL,
  `amphere` varchar(40) DEFAULT NULL,
  `hrtz` char(20) DEFAULT NULL,
  PRIMARY KEY (`rbid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remove_bodyparts`
--

LOCK TABLES `remove_bodyparts` WRITE;
/*!40000 ALTER TABLE `remove_bodyparts` DISABLE KEYS */;
INSERT INTO `remove_bodyparts` VALUES (1,'rere','bgb','nbnb','bnbn','bnbn','gggg','ngg','hghh','hghg','ghg'),(2,'ENKEI','mn78675','Commander Truck','AlloyWheel','50000','16x60','aluminium','null','null','null'),(3,'ENKEI','mn78675','Commander Truck','AlloyWheel','50000','16x60','aluminium','null','null','null'),(4,'ENKEI','mn78675','Commander Truck','AlloyWheel','50000','16x60','aluminium','null','null','null'),(5,'Kenwood','ui87657','Kenwood X2sx ','Multimedia','35000','null','null','null','45000A','400Hz'),(6,'TRD','56yhy76','TRD-pro','Accessories','400','null','null','56yhy76','null','null');
/*!40000 ALTER TABLE `remove_bodyparts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `removevehi`
--

DROP TABLE IF EXISTS `removevehi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `removevehi` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` char(20) NOT NULL,
  `brand` varchar(40) NOT NULL,
  `modelYear` char(10) NOT NULL,
  `model` varchar(25) NOT NULL,
  `engNum` varchar(30) NOT NULL,
  `engCap` varchar(30) NOT NULL,
  `mileage` varchar(30) DEFAULT NULL,
  `chassisNum` varchar(30) NOT NULL,
  `sPrice` double NOT NULL,
  `vImage` varchar(300) NOT NULL,
  `discription` varchar(300) DEFAULT NULL,
  `type` char(30) NOT NULL,
  `regNum` char(15) DEFAULT NULL,
  `vBoolImg` varchar(300) DEFAULT NULL,
  `cost_price` double(100,0) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `removevehi`
--

LOCK TABLES `removevehi` WRITE;
/*!40000 ALTER TABLE `removevehi` DISABLE KEYS */;
INSERT INTO `removevehi` VALUES (12,'SOLD','Toyota','2016','Aqua','EN2902','3000','12000','Not Required',6804000,'G:OneDrivePicturesVehicle PhotosToyota_Aqua_6.jpg','DVD Player/ AC/ R camera/ TV/ Multifunction/ Petrol/ Electric/ ','Car','RN38782','NOT Required',6000000),(13,'SOLD','Toyota','2016','Aqua','EN2902','3000','12000','Not Required',6804000,'G:OneDrivePicturesVehicle PhotosToyota_Aqua_6.jpg','DVD Player/ AC/ R camera/ TV/ Multifunction/ Petrol/ Electric/ ','Car','RN38782','NOT Required',6000000),(14,'SOLD','Toyota','2016','Aqua','EN2902','3000','12000','Not Required',6804000,'G:OneDrivePicturesVehicle PhotosToyota_Aqua_6.jpg','DVD Player/ AC/ R camera/ TV/ Multifunction/ Petrol/ Electric/ ','Car','RN38782','NOT Required',6000000),(15,'SOLD','Mithusbishi','2016','Outlander','en3733','3000','0','Not Required',9639000,'G:OneDrivePicturesVehicle Photos2018-mitsubishi-outlander-phev-diamond-white-nav-920x488.jpg','Petrol/ ','Jeep','null','NOT Required',8500000),(16,'SOLD','Audi','2018','audi a6','en3090','2500','1000','Not Required',366523783,'','R camera/ Petrol/ ','Car','en3090','NOT Required',323213213),(17,'SOLD','Audi','2018','audi a6','EN29829','2500','100','Not Required',9639000,'G:OneDrivePicturesVehicle Photosaudi-a6_320x160.png','Petrol/ ','Car','null','NOT Required',8500000),(18,'SOLD','Mithusbishi','2018','Outlander','EN8982','3000','100','Not Required',10999800,'G:OneDrivePicturesVehicle Photos2018-mitsubishi-outlander-phev-diamond-white-nav-920x488.jpg','Petrol/ Electric/ ','Jeep','null','NOT Required',9700000),(19,'SOLD','Toyota','2016','Aqua','EN29822','3000','1000','Not Required',6804000,'G:OneDrivePicturesVehicle PhotosToyota_Aqua_4.jpg','DVD Player/ Alloy Wheel/ Air Bag/ Diesel/ ','Car','RN2892','NOT Required',6000000),(20,'SOLD','Toyota','2017','Aqua','en38783','3000','100','Not Required',7938000,'G:OneDrivePicturesVehicle PhotosToyota_Aqua_4.jpg','','Car','null','NOT Required',7000000),(21,'SOLD','Toyota','2016','Aqua','En77292','3000','100','Not Required',7938000,'G:OneDrivePicturesVehicle PhotosToyota_Aqua_4.jpg','AC/ R camera/ Multifunction/ Petrol/ Diesel/ ','Car','RN2879','NOT Required',7000000),(22,'SOLD','Audi','2017','audi a6','en28772','2500','100','Not Required',8618400,'G:OneDrivePicturesVehicle Photosaudi-a6_320x160.png','Diesel/ ','Car','null','NOT Required',7600000),(23,'SOLD','Mithusbishi','2016','Outlander','En28782','3000','100','Not Required',8505000,'G:OneDrivePicturesVehicle Photos2018-mitsubishi-outlander-phev-diamond-white-nav-920x488.jpg','AC/ TV/ Diesel/ Electric/ ','Jeep','Rn2722','NOT Required',7500000),(24,'SOLD','Mithusbishi','2017','Outlander','En28892434','3000','100','Not Required',8505000,'G:OneDrivePicturesVehicle Photos2018-mitsubishi-outlander-phev-diamond-white-nav-920x488.jpg','DVD Player/ Alloy Wheel/ R camera/ TV/ Diesel/ Electric/ ','Jeep','CV28222434','NOT Required',7500000),(25,'SOLD','Toyota','2017','Aqua','En28892','3000','100','Not Required',6804000,'G:OneDrivePicturesVehicle PhotosToyota_Aqua_4.jpg','DVD Player/ Alloy Wheel/ R camera/ ','Car','CV28222','NOT Required',6000000),(26,'SOLD','Audi','2015','audi a6','En298982','2500','0','Not Required',7864500,'G:OneDrivePicturesVehicle Photosaudi-a6_320x160.png','Petrol/ ','Car','null','NOT Required',7000000),(27,'SOLD','Audi','2014','audi a6','En28829','2500','1000','Not Required',6516300,'G:OneDrivePicturesVehicle Photosaudi-a3-cabriolet.jpg','DVD Player/ R camera/ TV/ ','Car','Rn2822','NOT Required',5800000),(28,'SOLD','Mithusbishi','2016','Outlander','en7873','3000','100','Not Required',8164800,'G:OneDrivePicturesVehicle Photos2018-mitsubishi-eclipse-cross-red-diamond-nav-920x488.jpg','Petrol/ Electric/ ','Jeep','null','NOT Required',7200000),(29,'SOLD','Toyota','2016','Aqua','En2892','3000','10','Not Required',9072000,'G:OneDrivePicturesVehicle Photos2016-Toyota-Prius-Rear-1024x400.jpg','R camera/ Air Bag/ Multifunction/ Petrol/ ','Car','Rn893','NOT Required',8000000),(30,'SOLD','Toyota','2015','Aqua','en83849','3000','10000','Not Required',6179250,'G:OneDrivePicturesVehicle Photos2016-Toyota-Prius-Rear-1024x400.jpg','Petrol/ ','Car','null','NOT Required',5500000),(31,'SOLD','Audi','2016','audi a6','en3873','2500','10','Not Required',7938000,'G:OneDrivePicturesVehicle PhotosAudi-A3-Right-Front-Three-Quarter-94065.jpg','DVD Player/ Alloy Wheel/ ','Car','rn39893','NOT Required',7000000),(32,'SOLD','TOYOTA ','2012','PREMIO','EN55007700','1500','54000','Not Required',5895004,'C:Usersit17153232DesktopVehicle Sale Projectvehicle imageTOYOTA PREMIO2013.jpg','Petrol/ \nA/C: Front\n Power Locks\n Power Steerin\ng Remote Keyless Entry \nAirbag: Driver \nAlarm Anti-Lock Brakes \nFog Lights\n Power Windows\n Rear Window','Car','KU-8855','NOT Required',5350000),(33,'SOLD','TOYOTA ','2013','PREMIO','EN60005544','1500','60000','Not Required',5810416,'C:Usersit17153232DesktopVehicle Sale Projectvehicle imageTOYOTA PREMIO2013.jpg','Petrol/ \nAirbag: Driver \nAlarm Anti-Lock Brakes \nFog Lights\n Power Windows\n Rear Window \nDefroster\n CD DVD','Car','CAB-8833','NOT Required',5300000),(34,'SOLD','TOYOTA ','2013','PREMIO','EN60005544','1500','60000','Not Required',5810416,'C:Usersit17153232DesktopVehicle Sale Projectvehicle imageTOYOTA PREMIO2013.jpg','Petrol/ \nAirbag: Driver \nAlarm Anti-Lock Brakes \nFog Lights\n Power Windows\n Rear Window \nDefroster\n CD DVD','Car','CAB-8833','NOT Required',5300000);
/*!40000 ALTER TABLE `removevehi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `c_id` int(100) NOT NULL,
  `selling_price` double(60,0) NOT NULL,
  `givenPrice` double(60,0) NOT NULL,
  `cash` double(69,0) NOT NULL,
  `profit` double(48,0) NOT NULL,
  `cost_price` double(100,0) DEFAULT NULL,
  `company_garantee` int(20) DEFAULT NULL,
  `cash_type` varchar(20) DEFAULT NULL,
  `balance` int(100) DEFAULT NULL,
  `selling_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (25,'Mithusbishi','Outlander',2,8505000,8505000,9000000,1005000,7500000,0,'Cash',495000,'Sep 30, 2017'),(26,'Toyota','Aqua',4,6804000,6804000,7000000,804000,6000000,0,'Cash',196000,'Sep 30, 2016'),(27,'Audi','audi a6',0,7864500,7864500,8000000,864500,7000000,2,'Cash',135500,'Sep 25, 2018'),(28,'Audi','audi a6',0,6516300,6516300,7000000,716300,5800000,0,'Cash',483700,'Nov 30, 2018'),(29,'Mithusbishi','Outlander',4,8164800,8164800,9000000,964800,7200000,2,'Cash',835200,'Sep 30, 2018'),(30,'Toyota','Aqua',5,9072000,9072000,10000000,1072000,8000000,0,'Cash',928000,'Oct 01, 2018'),(31,'Toyota','Aqua',4,6179250,6179250,7000000,679250,5500000,3,'Cash',820750,'Oct 01, 2018'),(32,'Audi','audi a6',2,7938000,7938000,8000000,938000,7000000,0,'Cash',62000,'Oct 01, 2018'),(33,'TOYOTA ','PREMIO',2,5895004,5895004,6000000,545004,5350000,0,'Cash',104996,'Oct 01, 2018'),(34,'TOYOTA ','PREMIO',1,5810416,5810416,6000000,510416,5300000,0,'null',189584,'Oct 02, 2018'),(35,'TOYOTA ','PREMIO',1,5810416,5810416,6000000,510416,5300000,2,'Check',189584,'Oct 02, 2018');
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_discription`
--

DROP TABLE IF EXISTS `sale_discription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_discription` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `invoice_id` varchar(11) NOT NULL,
  `date` varchar(40) NOT NULL,
  `cash` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  KEY `fk_customer` (`customer_id`),
  KEY `fk_selling` (`invoice_id`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_discription`
--

LOCK TABLES `sale_discription` WRITE;
/*!40000 ALTER TABLE `sale_discription` DISABLE KEYS */;
INSERT INTO `sale_discription` VALUES (141,6,'IN182496','Oct 02, 2018',80000,72000,8000),(142,6,'IN182496','Oct 02, 2018',15000,12000,3000),(143,6,'IN465617','Oct 02, 2018',15000,12000,3000),(144,6,'IN608348','Oct 02, 2018',50000,42560,7440),(145,3,'IN810572','Oct 02, 2018',30000,22000,8000),(146,6,'IN810572','Oct 02, 2018',300000,265680,34320),(147,6,'IN810572','Oct 02, 2018',200000,196560,3440),(148,6,'IN810572','Oct 02, 2018',60000,56160,3840),(149,6,'IN969259','Oct 02, 2018',200000,157680,42320);
/*!40000 ALTER TABLE `sale_discription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veh_sale`
--

DROP TABLE IF EXISTS `veh_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veh_sale` (
  `vsId` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `modelYear` varchar(25) NOT NULL,
  `chassisNum` varchar(25) NOT NULL,
  `regNum` char(15) DEFAULT NULL,
  `status` char(15) NOT NULL,
  PRIMARY KEY (`vsId`),
  KEY `fk_veh_sale` (`sid`),
  CONSTRAINT `fk_veh_sale` FOREIGN KEY (`sid`) REFERENCES `sale` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veh_sale`
--

LOCK TABLES `veh_sale` WRITE;
/*!40000 ALTER TABLE `veh_sale` DISABLE KEYS */;
INSERT INTO `veh_sale` VALUES (18,25,'2017','null','CV28222434','Registerd'),(19,26,'2017','null','CV28222','Registerd'),(20,27,'2015','null','null','Unregistered'),(21,28,'2014','null','Rn2822','Registerd'),(22,29,'2016','null','null','Unregistered'),(23,30,'2016','null','Rn893','Registerd'),(24,31,'2015','null','null','Unregistered'),(25,32,'2016','null','rn39893','Registerd'),(26,33,'2012','null','KU-8855','Registerd'),(27,34,'2013','null','CAB-8833','Registerd'),(28,35,'2013','null','CAB-8833','Registerd');
/*!40000 ALTER TABLE `veh_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(40) NOT NULL,
  `modelYear` char(10) NOT NULL,
  `model` varchar(25) NOT NULL,
  `engNum` varchar(30) NOT NULL,
  `mileage` varchar(30) DEFAULT NULL,
  `chassisNum` varchar(30) NOT NULL,
  `sPrice` double NOT NULL,
  `vImage` varchar(300) NOT NULL,
  `discription` varchar(150) DEFAULT NULL,
  `regNum` char(15) DEFAULT NULL,
  `vBoolImg` varchar(300) NOT NULL,
  `c_id` int(11) NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  `cost_price` varchar(40) NOT NULL,
  PRIMARY KEY (`v_id`),
  KEY `fk_Vehicle` (`c_id`),
  KEY `engNum` (`engNum`) USING BTREE,
  KEY `chassisNum` (`chassisNum`) USING BTREE,
  KEY `regNum` (`regNum`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (21,'TOYOTA ','2011','PREMIO','EN87650000','65000','CH00008865',4452446,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/TOYOTA PREMIO.jpg','Alloy Wheel/ Petrol/ \nA/C: Front\n Power Locks \nPower Steering \nRemote Keyless Entry\n Multifunction Steering\n Airbag: Driver','KI-6565','null',0,'Registerd','4100000'),(22,'TOYOTA ','2013','PRIUS','EN60044003','55000','CH50004500',5233882,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/2013-Toyota-Prius2.jpg','Air Bag/ Multifunction/ Petrol/\nRemote Keyless Entry\n Multifunction Steering\n Airbag: Driver\n Airbag: Passenger \nAnti-Lock Brakes\n','CAD-6462','null',0,'Registerd','4750000'),(23,'TOYOTA ','2012','PRIUS','EN55007700','54000','CH60005555',5895004,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/2011-Toyota-Prius.jpg','Petrol/ \nA/C: Front\n Power Locks\n Power Steerin\ng Remote Keyless Entry \nAirbag: Driver \nAlarm Anti-Lock Brakes \nFog Lights\n Power Windows\n Rear Window','KU-8855','null',0,'Registerd','5350000'),(25,'NISSAN','2007','CARAVAN','EN66000022','161000','CH55000044',4326000,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/CARAVAN1.jpg','Multifunction/ Diesel/ \nA/C: Front\n Power Locks\n Power Steerin\ng Remote Keyless Entry \nAirbag: Driver \nAlarm Anti-Lock Brakes','PC-2072','null',0,'Registerd','4000000'),(26,'NISSAN','2009','CARAVAN','EN66660000','107000','CH66668800',5110560,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/CARAVAN2.jpg','DVD Player/ R camera/ TV/ Air Bag/ Diesel/ \nFog Lights\n Power Windows\n Rear Window \nDefroster','PB-8800','null',0,'Registerd','4800000'),(27,'NISSAN','2015','PATROL','EN44004400','24000','CH55554400',16768237,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/NISSAN_PATROL.jpg','DVD Player/ Alloy Wheel/ TV/ Air Bag/ Multifunction/ Diesel/ \n Power Steerin\ng Remote Keyless Entry \nAirbag: Driver \nAlarm Anti-Lock Brakes ','CAR-4400','null',0,'Registerd','15000000'),(28,'MITSUBISHI','2013','LANCER ','EN40403322','41000','CH66005500',4627854,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/MITSUBISHI_LANCER2013.jpg','DVD Player/ Alloy Wheel/ AC/ Air Bag/ Petrol/ Electric/ \nAirbag: Driver \nAlarm Anti-Lock Brakes \nFog Lights\n Power Windows','KY-7755','null',0,'Registerd','4200000'),(29,'SUZUKI','2012','A STAR','EN66000033','2000','CH88776666',3305610,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/UNREG_SUSUKI_AsTRA1.jpg','Petrol/ ','null','null',0,'Unregistered','3000000'),(30,'SUZUKI','2018','A STAR','EN66006666','150','CH88773300',5103000,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/UNREG_SUSUKI_ASTRA2.jpg','Petrol/ ','null','null',0,'Unregistered','4500000'),(31,'BMW','2018','X3','EN44441234','600','CH6699000',11340000,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/UNREG_BMW_X3_1.jpg','Diesel/ ','null','null',0,'Unregistered','10000000'),(32,'BMW','2018','318I','EN44000234','400','CH66000111',9072000,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/UN_BMW_318.jpg','Petrol/ ','null','null',0,'Unregistered','8000000'),(33,'TOYOTA ','2018','PRIUS','EN44888234','500','CH66099999',9072000,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/UNREG_TOYOTA_RIUS.jpg','Petrol/ ','null','null',0,'Unregistered','8000000'),(34,'HONDA','2011','CIVIC','EN12341234','58000','CH12341234',3438146,'C:/Users/it17153232/Desktop/Vehicle Sale Project/vehicle image/2013-Toyota-Prius2.jpg','HONDA FD4 HIGHEST GRADE LIMITED EDITION SPECIAL EDITION MULTIFUNCTION STEERING ALLOY WHEELS NEW TIRES first OWNER','KJ-6640','null',0,'Registerd','3150000');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-02 15:38:57
