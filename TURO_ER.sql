CREATE DATABASE  IF NOT EXISTS `turo_er` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `turo_er`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: turo_er
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `caravailability_manojvarman`
--

DROP TABLE IF EXISTS `caravailability_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caravailability_manojvarman` (
  `CarAID` int(11) NOT NULL,
  `AdvNotice` varchar(45) NOT NULL,
  `ShortestTrip` varchar(45) NOT NULL,
  `LongestTrip` varchar(45) NOT NULL,
  `DirectDlvry` tinyint(4) NOT NULL,
  `ResWOapproval` tinyint(4) NOT NULL,
  `Price/day` float NOT NULL,
  `Dist/day` float NOT NULL,
  `AvailabilityDate` date NOT NULL,
  `CarID` int(11) NOT NULL,
  PRIMARY KEY (`CarAID`),
  KEY `fk_CarAvailability_ManojVarmaN_CarDetails_ManojVarmaN1_idx` (`CarID`),
  CONSTRAINT `fk_CarAvailability_ManojVarmaN_CarDetails_ManojVarmaN1` FOREIGN KEY (`CarID`) REFERENCES `cardetails_manojvarman` (`CarID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caravailability_manojvarman`
--

LOCK TABLES `caravailability_manojvarman` WRITE;
/*!40000 ALTER TABLE `caravailability_manojvarman` DISABLE KEYS */;
INSERT INTO `caravailability_manojvarman` VALUES (2,'2','1','3',0,1,30,65,'2017-09-25',2),(3,'3','1','3',1,1,40,70,'2017-09-24',3),(5,'1','1','4',1,0,60,80,'2017-10-25',5),(6,'2','1','4',1,0,70,100,'2017-10-24',6),(7,'3','1','4',1,0,80,68,'2017-10-01',7),(8,'4','1','3',0,1,25,70,'2017-09-25',8),(9,'1','1','3',0,1,27,87,'2017-09-29',9),(10,'2','1','3',0,1,28,68,'2017-09-15',10),(11,'1','2','3',0,0,30,90,'2017-09-25',11),(12,'2','2','4',0,0,45,80,'2017-09-24',12),(13,'1','2','4',0,0,56,78,'2017-10-01',13),(14,'2','2','4',0,1,38,90,'2017-10-24',14),(15,'1','1','3',0,1,45,88,'2017-09-15',15),(16,'2','1','3',0,1,65,80,'2017-09-16',16),(17,'1','1','3',0,0,47,90,'2017-09-25',17),(18,'2','1','3',1,0,58,85,'2017-09-24',18),(19,'1','1','3',1,0,30,70,'2017-09-24',19),(20,'2','1','3',1,0,35,90,'2017-09-20',20);
/*!40000 ALTER TABLE `caravailability_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardetails_manojvarman`
--

DROP TABLE IF EXISTS `cardetails_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardetails_manojvarman` (
  `CarID` int(11) NOT NULL AUTO_INCREMENT,
  `YearOfMfg` year(4) NOT NULL,
  `Odometer` varchar(45) NOT NULL,
  `Trim` varchar(45) DEFAULT NULL,
  `Style` varchar(45) DEFAULT NULL,
  `SalvageTitle` tinyint(4) NOT NULL,
  `LicensePlateNum` varchar(45) NOT NULL,
  `LicPlateIssState` varchar(45) NOT NULL,
  `LicPlateIssCountry` varchar(45) NOT NULL,
  `Photo` blob NOT NULL,
  `Color` varchar(45) NOT NULL,
  `EmailID` varchar(100) NOT NULL,
  `CarDescription` varchar(500) DEFAULT NULL,
  `CarFID` int(11) NOT NULL,
  `CarLID` int(11) NOT NULL,
  `Model_ID` int(11) NOT NULL,
  PRIMARY KEY (`CarID`),
  KEY `fk_CarDetails_ManojVarmaN_User_ManojVarmaN1_idx` (`EmailID`),
  KEY `fk_CarDetails_ManojVarmaN_CarFeatures_ManojVarmaN1_idx` (`CarFID`),
  KEY `fk_CarDetails_ManojVarmaN_CarLocation_ManojVarmaN1_idx` (`CarLID`),
  KEY `fk_CarDetails_ManojVarmaN_Model_ManojVarmaN1_idx` (`Model_ID`),
  CONSTRAINT `fk_CarDetails_ManojVarmaN_CarFeatures_ManojVarmaN1` FOREIGN KEY (`CarFID`) REFERENCES `carfeatures_manojvarman` (`CarFID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CarDetails_ManojVarmaN_CarLocation_ManojVarmaN1` FOREIGN KEY (`CarLID`) REFERENCES `carlocation_manojvarman` (`CarLID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CarDetails_ManojVarmaN_Model_ManojVarmaN1` FOREIGN KEY (`Model_ID`) REFERENCES `model_manojvarman` (`Model_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CarDetails_ManojVarmaN_User_ManojVarmaN1` FOREIGN KEY (`EmailID`) REFERENCES `user_manojvarman` (`EmailID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardetails_manojvarman`
--

LOCK TABLES `cardetails_manojvarman` WRITE;
/*!40000 ALTER TABLE `cardetails_manojvarman` DISABLE KEYS */;
INSERT INTO `cardetails_manojvarman` VALUES (2,2008,'9768','LX','Hatchback',1,'536HH76','TX','USA','','Yellow','1234@gmail.com','Nicely maintained',2,2,2),(3,2008,'3788.7','LS','Hatchback',1,'567HY89','TX','USA','','Red','jdurihf@gmail.com','No issues',3,3,3),(5,2010,'6788.4','GL','Hatchback',1,'986YR89','TX','USA','','Grey','djuu@gmail.com','Car in very good condition',5,5,6),(6,2011,'6789','SE','Hatchback',1,'282HUD9','TX','USA','','Black','dhyeo@gmail.com','Nicely maintained',6,6,5),(7,2012,'8837','GT','Hatchback',1,'789ER00','TX','USA','','Yellow','suaisj@gmail.com','No issues',7,7,7),(8,2013,'3673','DX','Hatchback',1,'356GT88','TX','USA','','Red','wuehu@gmail.com','Perfect for long drives',8,8,8),(9,2014,'13889','LX','Hatchback',1,'373DT88','TX','USA','','White','wiorl@gmail.com','Car in very good condition',9,9,9),(10,2009,'2377','LS','Hatchback',1,'300HF98','TX','USA','','Grey','wiof7767@gmail.com','Nicely maintained',10,10,10),(11,2010,'13999','EX','Hatchback',1,'289KI36','TX','USA','','Black','wieie656@gmail.com','No issues',11,11,11),(12,2011,'6547.7','GL','Hatchback',1,'279HF00','TX','USA','','Yellow','okfof887@gmail.com','Perfect for long drives',12,12,12),(13,2012,'6547.9','SE','Hatchback',1,'383HE99','TX','USA','','Red','ffhueeh@gmail.com','Car in very good condition',13,13,13),(14,2013,'4563','GT','Hatchback',1,'456JJ90','TX','USA','','White','soiswjw@gmail.com','Nicely maintained',14,14,14),(15,2014,'7378','DX','Hatchback',1,'278KD69','TX','USA','','Grey','duhce7e0@gmail.com','No issues',15,15,15),(16,2005,'4567','LX','Hatchback',1,'082HK88','TX','USA','','Black','dhusdsjdn@gmail.com','Perfect for long drives',16,16,16),(17,2007,'6579','LS','Hatchback',1,'356IE09','TX','USA','','Yellow','367ndd@gmail.com','Car in very good condition',17,17,1),(18,2006,'2789','EX','Hatchback',1,'257UW99','TX','USA','','Red','s28njdnwdn@gmail.com','Nicely maintained',18,18,2),(19,2010,'8900','GL','Hatchback',1,'272JJ09','TX','USA','','White','288kskkdn@gmail.com','No issues',19,19,3),(20,2010,'1000','DX','Hatchback',1,'278YE90','TX','USA','','Grey','sdhshd7y2y@gmail.com','Nicely maintained',20,20,4);
/*!40000 ALTER TABLE `cardetails_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carfeatures_manojvarman`
--

DROP TABLE IF EXISTS `carfeatures_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carfeatures_manojvarman` (
  `CarFID` int(11) NOT NULL AUTO_INCREMENT,
  `Hybrid` tinyint(4) NOT NULL,
  `BikeRack` tinyint(4) NOT NULL,
  `AllWheelDrive` tinyint(4) NOT NULL,
  `ChildSeat` tinyint(4) NOT NULL,
  `SnowTires` tinyint(4) NOT NULL,
  `AudioInput` tinyint(4) NOT NULL,
  `Convertible` tinyint(4) NOT NULL,
  `PetFriendly` tinyint(4) NOT NULL,
  `TollPass` tinyint(4) NOT NULL,
  `SunRoof` tinyint(4) NOT NULL,
  `GPS` tinyint(4) NOT NULL,
  `SkiRack` tinyint(4) NOT NULL,
  `Bluetooth` tinyint(4) NOT NULL,
  `USBInput` tinyint(4) NOT NULL,
  `HeatedSeats` tinyint(4) NOT NULL,
  `LongTerm` tinyint(4) NOT NULL,
  PRIMARY KEY (`CarFID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carfeatures_manojvarman`
--

LOCK TABLES `carfeatures_manojvarman` WRITE;
/*!40000 ALTER TABLE `carfeatures_manojvarman` DISABLE KEYS */;
INSERT INTO `carfeatures_manojvarman` VALUES (1,1,1,1,0,0,0,0,1,1,1,1,0,0,1,1,1),(2,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1),(3,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0),(4,1,1,0,0,1,1,1,0,0,0,0,1,1,1,1,1),(5,1,1,1,1,0,0,0,0,1,1,1,1,1,1,0,0),(6,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1),(7,1,1,0,0,0,1,1,1,0,0,0,1,1,0,0,1),(8,1,1,1,1,0,0,0,0,1,1,1,1,1,0,0,1),(9,1,0,1,0,1,1,1,1,0,0,0,0,1,1,1,1),(10,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,0),(11,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1),(12,1,1,1,1,0,0,0,0,0,1,1,0,1,1,0,0),(13,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0),(14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(15,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0),(16,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0),(17,1,1,1,0,0,0,1,1,1,0,0,0,0,0,1,1),(18,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1),(19,1,1,1,1,1,0,0,0,0,1,1,0,0,1,1,1),(20,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `carfeatures_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carlocation_manojvarman`
--

DROP TABLE IF EXISTS `carlocation_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carlocation_manojvarman` (
  `CarLID` int(11) NOT NULL AUTO_INCREMENT,
  `Line1` varchar(100) NOT NULL,
  `Line2` varchar(100) DEFAULT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `ZipCode` varchar(10) NOT NULL,
  PRIMARY KEY (`CarLID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carlocation_manojvarman`
--

LOCK TABLES `carlocation_manojvarman` WRITE;
/*!40000 ALTER TABLE `carlocation_manojvarman` DISABLE KEYS */;
INSERT INTO `carlocation_manojvarman` VALUES (1,'7575 Frankford Rd Apt 1314','NULL','Dallas','TX','USA','75252'),(2,'7521 Frankford Rd Apt 1566','NULL','Dallas','TX','USA','75252'),(3,'6301 Stonewood Dr Apt 1815','NULL','Plano','TX','USA','75024'),(4,'6301 Stonewood Dr Apt 1856','NULL','Plano','TX','USA','75024'),(5,'4536 MaCallum Rd Apt 7668','NULL','Dallas','TX','USA','75024'),(6,'7383 Ohio Rd Apt 7363','NULL','Dallas','TX','USA','75367'),(7,'7027 Alvern St Apt B202','NULL','Los Angeles','CA','USA','90045'),(8,'3595 Chaucer Dr Apt 12','NULL','Fremont','CA','USA','94555'),(9,'10784 Dougherty Ave','NULL','Morgan Hill','CA','USA','95037'),(10,'20702 EI Toro Rd Apt 108','NULL','Lake Forest','CA','USA','92630'),(11,'1206 Laveta Ter ','NULL','Los Angeles','CA','USA','90026'),(12,'1647 Blue Heron Ct #11','NULL','Lawrenceville','GA','USA','30043'),(13,'86 Devon Ln, Avondale Estates','NULL','Port Wentworth','GA','USA','31407'),(14,'1777 Harvard Ave','NULL','College Park','GA','USA','30337'),(15,'325 S Point Blvd','NULL','Mc Donough','GA','USA','30253'),(16,'3201 Sunrise Village Ln','NULL','Norcross','GA','USA','30093'),(17,'950 Executive Dr','NULL','Alpharetta','GA','USA','30005'),(18,'10 Gentrys Walk','NULL','Atlanta','GA','USA','30341'),(19,'9700 Medlock Crossing Pkwy','NULL','Johns Creek','GA','USA','30022'),(20,'2151 Cumberland Pkwy SE','NULL','Atlanta','GA','USA','30339');
/*!40000 ALTER TABLE `carlocation_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driverlicense_manojvarman`
--

DROP TABLE IF EXISTS `driverlicense_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driverlicense_manojvarman` (
  `LicenseNum` varchar(15) NOT NULL,
  `IssuingState` varchar(45) NOT NULL,
  `IssuingCountry` varchar(45) NOT NULL,
  `IssuedDate` date NOT NULL,
  `ExpiryDate` date NOT NULL,
  `ZipCode` varchar(10) NOT NULL,
  PRIMARY KEY (`LicenseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverlicense_manojvarman`
--

LOCK TABLES `driverlicense_manojvarman` WRITE;
/*!40000 ALTER TABLE `driverlicense_manojvarman` DISABLE KEYS */;
INSERT INTO `driverlicense_manojvarman` VALUES ('1234567890','TX','USA','2016-05-09','2021-04-05','74937'),('1983992839','CA','USA','2016-05-22','2021-04-18','74950'),('1987654321','TX','USA','2016-05-10','2021-04-06','74938'),('2515637889','TX','USA','2016-05-14','2021-04-10','74942'),('2737488393','TX','USA','2016-05-18','2021-04-14','74946'),('3394884940','CA','USA','2016-05-28','2021-04-24','74956'),('3546829209','TX','USA','2016-05-11','2021-04-07','74939'),('3649920090','TX','USA','2016-05-12','2021-04-08','74940'),('3783999900','TX','USA','2016-05-13','2021-04-09','74941'),('4858574899','CA','USA','2016-05-19','2021-04-15','74947'),('4885993020','CA','USA','2016-05-24','2021-04-20','74952'),('5663739930','CA','USA','2016-05-23','2021-04-19','74951'),('6233848499','TX','USA','2016-05-15','2021-04-11','74943'),('6477382920','CA','USA','2016-05-26','2021-04-22','74954'),('7233499923','TX','USA','2016-05-17','2021-04-13','74945'),('7838839309','CA','USA','2016-05-27','2021-04-23','74955'),('7848399930','TX','USA','2016-05-26','2021-04-27','76543'),('8475563928','CA','USA','2016-05-20','2021-04-16','74948'),('9273774993','TX','USA','2016-05-16','2021-04-12','74944'),('9277383839','CA','USA','2016-05-21','2021-04-17','74949'),('9817662489','CA','USA','2016-05-25','2021-04-21','74953');
/*!40000 ALTER TABLE `driverlicense_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make_manojvarman`
--

DROP TABLE IF EXISTS `make_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `make_manojvarman` (
  `Make_ID` int(11) NOT NULL,
  `MakeName` varchar(45) NOT NULL,
  PRIMARY KEY (`Make_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make_manojvarman`
--

LOCK TABLES `make_manojvarman` WRITE;
/*!40000 ALTER TABLE `make_manojvarman` DISABLE KEYS */;
INSERT INTO `make_manojvarman` VALUES (1,'Honda'),(2,'Toyota'),(3,'Mitsubhishi'),(4,'Ford'),(5,'Lincoln'),(6,'Chevrolet'),(7,'Dodge'),(8,'Acura'),(9,'Mustang'),(10,'Mazda'),(11,'Hyundai'),(12,'Volkswagen'),(13,'Audi'),(14,'Mercedez Benz'),(15,'BMW');
/*!40000 ALTER TABLE `make_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_manojvarman`
--

DROP TABLE IF EXISTS `model_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_manojvarman` (
  `Model_ID` int(11) NOT NULL,
  `ModelName` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Transmission` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Make_ID` int(11) NOT NULL,
  PRIMARY KEY (`Model_ID`),
  KEY `fk_Model_ManojVarmaN_Make_ManojVarmaN1_idx` (`Make_ID`),
  CONSTRAINT `fk_Model_ManojVarmaN_Make_ManojVarmaN1` FOREIGN KEY (`Make_ID`) REFERENCES `make_manojvarman` (`Make_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_manojvarman`
--

LOCK TABLES `model_manojvarman` WRITE;
/*!40000 ALTER TABLE `model_manojvarman` DISABLE KEYS */;
INSERT INTO `model_manojvarman` VALUES (1,'Accord','Sedan','Automatic','Economy',1),(2,'Corolla','Convertible','Manual','Family',2),(3,'Lancer','Sedan','Automatic','Luxury',3),(4,'Fiesta','Crossover','Automatic','Sports',4),(5,'Navigator','Coupe','Automatic','Commercial',5),(6,'Civic','Sedan','Automatic','Economy',1),(7,'Optra','Sedan','Automatic','Family',6),(8,'City','Crossover','Automatic','Economy',1),(9,'Camry','Convertible','Automatic','Family',2),(10,'Mirage','SUV','Automatic','Luxury',7),(11,'Figo','Sedan','Automatic','Family',4),(12,'Continental','MPV','Manual','Luxury',5),(13,'Sonata','Sedan','Manual','Economy',11),(14,'Cruize','Sedan','Automatic','Luxury',6),(15,'Polo','Sedam','Automatic','Economy',12),(16,'A5','Convertible','Automatic','Luxury',13),(17,'X1','Sedan','Manual','Sports',15),(18,'D150','Crossover','Manual','Economy',14),(19,'A4','Sedan','Automatic','Economy',13),(20,'X2','Sedan','Automatic','Economy',15);
/*!40000 ALTER TABLE `model_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownerearning_manojvarman`
--

DROP TABLE IF EXISTS `ownerearning_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ownerearning_manojvarman` (
  `OE_ID` int(11) NOT NULL,
  `EarningAmt` float NOT NULL,
  `RateID` int(11) NOT NULL,
  PRIMARY KEY (`OE_ID`),
  KEY `fk_OwnerEarning_ManojVarmaN_OwnerShareRate1_idx` (`RateID`),
  CONSTRAINT `fk_OwnerEarning_ManojVarmaN_OwnerShareRate1` FOREIGN KEY (`RateID`) REFERENCES `ownersharerate` (`RateID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownerearning_manojvarman`
--

LOCK TABLES `ownerearning_manojvarman` WRITE;
/*!40000 ALTER TABLE `ownerearning_manojvarman` DISABLE KEYS */;
INSERT INTO `ownerearning_manojvarman` VALUES (1,48,1),(2,81,2),(3,34,3),(4,142.5,4),(5,135,5),(6,98,6),(7,172.8,7),(8,60,8),(9,17.55,9),(10,21.84,10),(11,24.9,11),(12,41.4,12),(13,43.68,13),(14,74.1,14),(15,27,15),(16,44.2,16),(17,41.36,17),(18,53.36,18),(19,21.9,19),(20,23.1,20);
/*!40000 ALTER TABLE `ownerearning_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownersharerate`
--

DROP TABLE IF EXISTS `ownersharerate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ownersharerate` (
  `RateID` int(11) NOT NULL,
  `Rate` decimal(4,2) NOT NULL,
  PRIMARY KEY (`RateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownersharerate`
--

LOCK TABLES `ownersharerate` WRITE;
/*!40000 ALTER TABLE `ownersharerate` DISABLE KEYS */;
INSERT INTO `ownersharerate` VALUES (1,0.80),(2,0.90),(3,0.85),(4,0.95),(5,0.75),(6,0.70),(7,0.72),(8,0.60),(9,0.65),(10,0.78),(11,0.83),(12,0.92),(13,0.78),(14,0.65),(15,0.60),(16,0.68),(17,0.88),(18,0.92),(19,0.73),(20,0.66);
/*!40000 ALTER TABLE `ownersharerate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_manojvarman`
--

DROP TABLE IF EXISTS `reservation_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_manojvarman` (
  `ResID` int(11) NOT NULL AUTO_INCREMENT,
  `ResStartDate` date NOT NULL,
  `ResEndDate` date NOT NULL,
  `ResPickupTime` time NOT NULL,
  `ResReturnTime` varchar(45) NOT NULL,
  `TimeStamp` datetime NOT NULL,
  `ResStatus` varchar(45) DEFAULT NULL,
  `DeliveryAddress` int(11) DEFAULT NULL,
  `CarID` int(11) NOT NULL,
  `EmailID` varchar(100) NOT NULL,
  PRIMARY KEY (`ResID`),
  KEY `fk_Reservation_ManojVarmaN_UserAddress_ManojVarmaN1_idx` (`DeliveryAddress`),
  KEY `fk_Reservation_ManojVarmaN_CarDetails_ManojVarmaN1_idx` (`CarID`),
  KEY `fk_Reservation_ManojVarmaN_Owner_ManojVarmaN1_idx` (`EmailID`),
  CONSTRAINT `fk_Reservation_ManojVarmaN_CarDetails_ManojVarmaN1` FOREIGN KEY (`CarID`) REFERENCES `cardetails_manojvarman` (`CarID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_ManojVarmaN_Owner_ManojVarmaN1` FOREIGN KEY (`EmailID`) REFERENCES `user_manojvarman` (`EmailID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_ManojVarmaN_UserAddress_ManojVarmaN1` FOREIGN KEY (`DeliveryAddress`) REFERENCES `useraddress_manojvarman` (`AddressID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_manojvarman`
--

LOCK TABLES `reservation_manojvarman` WRITE;
/*!40000 ALTER TABLE `reservation_manojvarman` DISABLE KEYS */;
INSERT INTO `reservation_manojvarman` VALUES (2,'2017-09-25','2017-09-25','07:30:00','18:00:00','2017-09-11 14:18:00','Confirmed',1,2,'manojvarma.namburi@gmail.com'),(3,'2017-09-30','2017-09-30','09:00:00','21:00:00','2017-09-11 14:36:00','Confirmed',2,3,'jdurihf@gmail.com'),(5,'2017-10-25','2017-10-25','07:30:00','18:00:00','2017-09-11 14:45:00','Confirmed',5,5,'djuu@gmail.com'),(6,'2017-09-25','2017-09-25','07:30:00','18:00:00','2017-09-11 14:36:00','Confirmed',4,6,'dhyeo@gmail.com'),(7,'2017-01-10','2017-01-10','09:00:00','21:00:00','2017-09-11 14:36:00','Instant Booking',7,7,'suaisj@gmail.com'),(8,'2017-05-10','2017-05-10','11:00:00','13:00:00','2017-09-11 14:36:00','Confirmed',6,8,'wuehu@gmail.com'),(9,'2017-06-10','2017-06-10','07:30:00','18:00:00','2017-09-11 14:53:00','Confirmed',9,9,'wiorl@gmail.com'),(10,'2017-09-19','2017-09-19','07:30:00','22:00:00','2017-09-11 14:55:00','Confirmed',10,10,'wiof7767@gmail.com'),(11,'2017-09-30','2017-09-30','07:00:00','22:00:00','2017-09-11 14:57:00','Confirmed',11,11,'wieie656@gmail.com'),(12,'2017-09-24','2017-09-24','07:00:00','22:00:00','2017-09-11 14:36:00','Confirmed',7,12,'okfof887@gmail.com'),(13,'2017-01-10','2017-01-10','07:00:00','22:00:00','2017-09-11 14:36:00','Confirmed',5,13,'ffhueeh@gmail.com'),(14,'2017-10-24','2017-10-24','11:00:00','13:00:00','2017-09-11 14:36:00','Confirmed',2,14,'soiswjw@gmail.com'),(15,'2017-09-19','2017-09-19','07:30:00','18:00:00','2017-09-11 15:06:00','Confirmed',8,15,'duhce7e0@gmail.com'),(16,'2017-09-16','2017-09-16','07:30:00','18:00:00','2017-09-11 15:07:00','Confirmed',5,16,'dhusdsjdn@gmail.com'),(17,'2017-09-25','2017-09-25','07:30:00','18:00:00','2017-09-11 15:06:00','Confirmed',9,17,'367ndd@gmail.com'),(18,'2017-09-24','2017-09-24','07:30:00','18:00:00','2017-09-11 15:06:00','Confirmed',4,18,'s28njdnwdn@gmail.com'),(19,'2017-09-24','2017-09-24','07:30:00','18:00:00','2017-09-11 15:06:00','Confirmed',15,19,'288kskkdn@gmail.com'),(20,'2017-09-20','2017-09-20','07:30:00','18:00:00','2017-09-11 15:06:00','Confirmed',20,20,'sdhshd7y2y@gmail.com');
/*!40000 ALTER TABLE `reservation_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_manojvarman`
--

DROP TABLE IF EXISTS `review_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_manojvarman` (
  `ResID` int(11) NOT NULL,
  `ReviewID` varchar(45) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Review` varchar(200) DEFAULT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `fk_Review_ManojVarmaN_Reservation_ManojVarmaN1_idx` (`ResID`),
  CONSTRAINT `fk_Review_ManojVarmaN_Reservation_ManojVarmaN1` FOREIGN KEY (`ResID`) REFERENCES `reservation_manojvarman` (`ResID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_manojvarman`
--

LOCK TABLES `review_manojvarman` WRITE;
/*!40000 ALTER TABLE `review_manojvarman` DISABLE KEYS */;
INSERT INTO `review_manojvarman` VALUES (10,'10',4,'','2017-09-20 15:06:00'),(11,'11',5,'','2017-09-21 15:06:00'),(12,'12',3,'','2017-09-22 15:06:00'),(13,'13',4,'','2017-09-23 15:06:00'),(14,'14',4,'','2017-09-24 15:06:00'),(15,'15',5,'','2017-09-25 15:06:00'),(16,'16',3,'','2017-09-26 15:06:00'),(17,'17',5,'','2017-09-27 15:06:00'),(18,'18',5,'','2017-09-28 15:06:00'),(19,'19',4,'','2017-09-29 15:06:00'),(2,'2',3,'','2017-09-12 15:06:00'),(20,'20',4,'','2017-09-30 15:06:00'),(3,'3',4,'','2017-09-13 15:06:00'),(5,'5',5,'','2017-09-15 15:06:00'),(6,'6',4,'','2017-09-16 15:06:00'),(7,'7',3,'','2017-09-17 15:06:00'),(8,'8',4,'','2017-09-18 15:06:00'),(9,'9',5,'','2017-09-19 15:06:00');
/*!40000 ALTER TABLE `review_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_manojvarman`
--

DROP TABLE IF EXISTS `transaction_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_manojvarman` (
  `TransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `ResID` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `TransactionStatus` varchar(45) NOT NULL,
  `PaymentMethod` varchar(45) NOT NULL,
  `CardNumber` varchar(16) NOT NULL,
  `BillingAddress` varchar(45) NOT NULL,
  `BillingCity` varchar(45) NOT NULL,
  `BillingState` varchar(45) NOT NULL,
  `BillingZip` varchar(45) NOT NULL,
  `AmtPerDay` float NOT NULL,
  `DaysRent` int(11) NOT NULL,
  `TotalAmt` float NOT NULL,
  `OE_ID` int(11) NOT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `fk_Payment_ManojVarmaN_Reservation_ManojVarmaN1_idx` (`ResID`),
  KEY `fk_Transaction_ManojVarmaN_OwnerEarning_ManojVarmaN1_idx` (`OE_ID`),
  CONSTRAINT `fk_Payment_ManojVarmaN_Reservation_ManojVarmaN1` FOREIGN KEY (`ResID`) REFERENCES `reservation_manojvarman` (`ResID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transaction_ManojVarmaN_OwnerEarning_ManojVarmaN1` FOREIGN KEY (`OE_ID`) REFERENCES `ownerearning_manojvarman` (`OE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_manojvarman`
--

LOCK TABLES `transaction_manojvarman` WRITE;
/*!40000 ALTER TABLE `transaction_manojvarman` DISABLE KEYS */;
INSERT INTO `transaction_manojvarman` VALUES (2,2,'2017-09-11 15:06:00','success','Credit card','1.23E+11','7521 Frankford Rd Apt 1566','Dallas','TX','75252',30,1,30,2),(3,3,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','6301 Stonewood Dr Apt 1815','Plano','TX','75024',40,1,40,3),(5,5,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','4536 MaCallum Rd Apt 7668','Dallas','TX','75024',60,1,60,5),(6,6,'2017-09-11 15:06:00','success','Credit card','1.23E+11','7383 Ohio Rd Apt 7363','Dallas','TX','75367',70,1,70,6),(7,7,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','7027 Alvern St Apt B202','Los Angeles','CA','90045',80,1,80,7),(8,8,'2017-09-11 15:06:00','success','Credit card','1.23E+11','3595 Chaucer Dr Apt 12','Fremont','CA','94555',25,1,25,8),(9,9,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','10784 Dougherty Ave','Morgan Hill','CA','95037',27,1,27,9),(10,10,'2017-09-11 15:06:00','success','Credit card','1.23E+11','20702 EI Toro Rd Apt 108','Lake Forest','CA','92630',28,1,28,10),(11,11,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','1206 Laveta Ter ','Los Angeles','CA','90026',30,1,30,11),(12,12,'2017-09-11 15:06:00','success','Credit card','1.23E+11','1647 Blue Heron Ct #11','Lawrenceville','GA','30043',45,1,45,12),(13,13,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','86 Devon Ln, Avondale Estates','Port Wentworth','GA','31407',56,1,56,13),(14,14,'2017-09-11 15:06:00','success','Credit card','1.23E+11','1777 Harvard Ave','College Park','GA','30337',38,1,38,14),(15,15,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','325 S Point Blvd','Mc Donough','GA','30253',45,1,45,15),(16,16,'2017-09-11 15:06:00','success','Credit card','1.23E+11','3201 Sunrise Village Ln','Norcross','GA','30093',65,1,65,16),(17,17,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','950 Executive Dr','Alpharetta','GA','30005',47,1,47,17),(18,18,'2017-09-11 15:06:00','success','Credit card','1.23E+11','10 Gentrys Walk','Atlanta','GA','30341',58,1,58,18),(19,19,'2017-09-11 15:06:00','success','Debit Card','1.23E+11','9700 Medlock Crossing Pkwy','Johns Creek','GA','30022',30,1,30,19),(20,20,'2017-09-11 15:06:00','success','Credit card','1.23E+11','2151 Cumberland Pkwy SE','Atlanta','GA','30339',35,1,35,20);
/*!40000 ALTER TABLE `transaction_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_manojvarman`
--

DROP TABLE IF EXISTS `user_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_manojvarman` (
  `EmailID` varchar(100) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `MiddleName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) NOT NULL,
  `MobileNum` varchar(15) NOT NULL,
  `DOB` date NOT NULL,
  `LicenseNum` varchar(15) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Photo` blob,
  `AddressID` int(11) NOT NULL,
  PRIMARY KEY (`EmailID`),
  KEY `fk_User_ManojVarmaN_DriverLicense_ManojVarmaN1_idx` (`LicenseNum`),
  KEY `fk_User_ManojVarmaN_UserAddress_ManojVarmaN1_idx` (`AddressID`),
  CONSTRAINT `fk_User_ManojVarmaN_DriverLicense_ManojVarmaN1` FOREIGN KEY (`LicenseNum`) REFERENCES `driverlicense_manojvarman` (`LicenseNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_ManojVarmaN_UserAddress_ManojVarmaN1` FOREIGN KEY (`AddressID`) REFERENCES `useraddress_manojvarman` (`AddressID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_manojvarman`
--

LOCK TABLES `user_manojvarman` WRITE;
/*!40000 ALTER TABLE `user_manojvarman` DISABLE KEYS */;
INSERT INTO `user_manojvarman` VALUES ('1234@gmail.com','BAHUUSJSJKKSJS','Hasath','B','Sista','5124094111','1992-12-29','1987654321','Inactive','Owner','...',2),('288kskkdn@gmail.com','SKIJDMSKKALAO','Nikhil','B','Vadapalli','5124094094','1993-01-15','7838839309','Active','Guest','...',19),('367ndd@gmail.com','DS383jKKINJIKKJDI','Suhail','B','Ibrahim','5124094096','1993-01-13','9817662489','Active','Guest','...',17),('dhusdsjdn@gmail.com','IEKKWOLAAKSLSS','Monica','A','Adimoolam','5124094097','1993-01-12','4885993020','Active','Owner','...',16),('dhyeo@gmail.com','DJUUKSKIISKSS','Adithya','B','Ganpathy','5124094107','1993-01-02','2515637889','Active','Owner','...',6),('djuu@gmail.com','DJSUUSKKSIAKA','Bharath','A','Nimmagadda','5124094108','1993-01-01','3783999900','Active','Owner','...',5),('duhce7e0@gmail.com','SUUEIMDOOODLD','Archana','B','Killi','5124094098','1993-01-11','5663739930','Active','Guest','...',15),('ffhueeh@gmail.com','HYSIISKWIIWOS','Laxman','B','Ghattu','5124094100','1993-01-09','9277383839','Active','Guest','...',13),('jdurihf@gmail.com','AJNAKSKSKSSRR','Anand','A','Balan','5124094110','1992-12-30','3546829209','Active','Guest','...',3),('manojvarma.namburi@gmail.com','JJFOSMSIISJSOYS','Manoj Varma','B','Namburi','5124094998','1993-12-10','3649920090','Active','Guest','...',4),('okfof887@gmail.com','NJDIISLSSIJSKS','Tilak','A','Ghattamaneni','5124094101','1993-01-08','8475563928','Active','Owner','...',12),('s28njdnwdn@gmail.com','WUUSNAKLSOAL','Harsha','A','Yerasu','5124094095','1993-01-14','6477382920','Active','Owner','...',18),('sdhshd7y2y@gmail.com','WUIIALASIISIS','Atreya','A','Polishetty','5124094093','1993-01-16','3394884940','Active','Owner','...',20),('soiswjw@gmail.com','SJKDIIEOLSKKS','Rinu','A','Varghese','5124094099','1993-01-10','1983992839','Active','Owner','...',14),('suaisj@gmail.com','WYEAISKKDYEN','Harish','A','Popuri','5124094106','1993-01-03','6233848499','Active','Guest','...',7),('wieie656@gmail.com','JJFOSMSIISJSO','Ajay Kumar','A','Sunnapu','5124094102','1993-01-07','4858574899','Active','Guest','...',11),('wiof7767@gmail.com','QIOODMDKKSI','Mahesh','B','Gummadi','5124094103','1993-01-06','2737488393','Active','Owner','...',10),('wiorl@gmail.com','DUUEKSIIIISOS','Shanmukha','A','Koppaka','5124094104','1993-01-05','7233499923','Active','Guest','...',9),('wuehu@gmail.com','WUUENDIDJD','Tarun','B','Dande','5124094105','1993-01-04','9273774993','Active','Owner','...',8);
/*!40000 ALTER TABLE `user_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraddress_manojvarman`
--

DROP TABLE IF EXISTS `useraddress_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraddress_manojvarman` (
  `AddressID` int(11) NOT NULL AUTO_INCREMENT,
  `AddLine1` varchar(100) NOT NULL,
  `AddLine2` varchar(100) DEFAULT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Zipcode` varchar(10) NOT NULL,
  PRIMARY KEY (`AddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress_manojvarman`
--

LOCK TABLES `useraddress_manojvarman` WRITE;
/*!40000 ALTER TABLE `useraddress_manojvarman` DISABLE KEYS */;
INSERT INTO `useraddress_manojvarman` VALUES (1,'7575 Frankford Rd Apt 1314','NULL','Dallas','TX','United States','75252'),(2,'7521 Frankford Rd Apt 1566','NULL','Dallas','TX','United States','75252'),(3,'6301 Stonewood Dr Apt 1815','NULL','Plano','TX','United States','75024'),(4,'6301 Stonewood Dr Apt 1856','NULL','Plano','TX','United States','75024'),(5,'4536 MaCallum Rd Apt 7668','NULL','Dallas','TX','United States','75024'),(6,'7383 Ohio Rd Apt 7363','NULL','Dallas','TX','United States','75367'),(7,'7027 Alvern St Apt B202','NULL','Los Angeles','CA','United States','90045'),(8,'3595 Chaucer Dr Apt 12','NULL','Fremont','CA','United States','94555'),(9,'10784 Dougherty Ave','NULL','Morgan Hill','CA','United States','95037'),(10,'20702 EI Toro Rd Apt 108','NULL','Lake Forest','CA','United States','92630'),(11,'1206 Laveta Ter ','NULL','Los Angeles','CA','United States','90026'),(12,'1647 Blue Heron Ct #11','NULL','Lawrenceville','GA','United States','30043'),(13,'86 Devon Ln, Avondale Estates','NULL','Port Wentworth','GA','United States','31407'),(14,'1777 Harvard Ave','NULL','College Park','GA','United States','30337'),(15,'325 S Point Blvd','NULL','Mc Donough','GA','United States','30253'),(16,'3201 Sunrise Village Ln','NULL','Norcross','GA','United States','30093'),(17,'950 Executive Dr','NULL','Alpharetta','GA','United States','30005'),(18,'10 Gentrys Walk','NULL','Atlanta','GA','United States','30341'),(19,'9700 Medlock Crossing Pkwy','NULL','Johns Creek','GA','United States','30022'),(20,'2151 Cumberland Pkwy SE','NULL','Atlanta','GA','United States','30339');
/*!40000 ALTER TABLE `useraddress_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'turo_er'
--

--
-- Dumping routines for database 'turo_er'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-20 21:10:19
