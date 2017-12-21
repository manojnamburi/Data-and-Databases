CREATE DATABASE  IF NOT EXISTS `turo_dm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `turo_dm`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: turo_dm
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
-- Table structure for table `dim_car_manojvarman`
--

DROP TABLE IF EXISTS `dim_car_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_car_manojvarman` (
  `Car_Key` int(11) NOT NULL,
  `YearOfMfg` year(4) NOT NULL,
  `Make` varchar(45) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Transmission` varchar(45) NOT NULL,
  `Odometer` varchar(45) NOT NULL,
  `Trim` varchar(45) DEFAULT NULL,
  `Style` varchar(45) DEFAULT NULL,
  `SalvageTitle` tinyint(4) NOT NULL,
  `LicPlateNum` varchar(45) NOT NULL,
  `LPIssState` varchar(45) NOT NULL,
  `LPIssCountry` varchar(45) NOT NULL,
  `Photo` blob,
  `Category` varchar(45) NOT NULL,
  `Color` varchar(45) NOT NULL,
  `CarDescription` varchar(100) NOT NULL,
  `AdvNotice` int(11) NOT NULL,
  `ShortestTrip` int(11) NOT NULL,
  `LongestTrip` int(11) NOT NULL,
  `DirectDlvry` tinyint(4) NOT NULL,
  `ResWOapproval` tinyint(4) NOT NULL,
  `AvailableDate` date NOT NULL,
  `Features` varchar(45) NOT NULL,
  `Flag` tinyint(4) NOT NULL,
  `ListingPrice` float DEFAULT NULL,
  `SystemEstPrice` float NOT NULL,
  PRIMARY KEY (`Car_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_car_manojvarman`
--

LOCK TABLES `dim_car_manojvarman` WRITE;
/*!40000 ALTER TABLE `dim_car_manojvarman` DISABLE KEYS */;
INSERT INTO `dim_car_manojvarman` VALUES (0,0000,'NA','NA','NA','NA','NA','NA',0,'NA','NA','NA',NULL,'NA','NA','NA',0,0,0,0,0,'0000-00-00','0',0,0,0),(1,2008,'Honda','Accord','Automatic','1000','DX','Hatchback',1,'123HG67','TX','USA','','Economy','Black','Car in very good condition',1,1,3,1,1,'2017-09-19','1',1,20,20),(2,2008,'Toyota','Corolla','Manual','9768','LX','Hatchback',1,'536HH76','TX','USA','','Family','Yellow','Nicely maintained',2,1,3,0,1,'2017-09-29','1',1,30,30),(3,2008,'Mitsubhishi','Lancer','Automatic','3788.7','LS','Hatchback',1,'567HY89','TX','USA','','Luxury','Red','No issues',3,1,3,1,1,'2017-09-28','1',1,40,40),(4,2009,'Ford','Fiesta','Automatic','7464','EX','Hatchback',1,'435DR89','TX','USA','','Sports','White','Perfect for long drives',4,1,4,1,1,'2017-10-19','1',1,50,50),(5,2010,'Lincoln','Navigator','Automatic','6788.4','GL','Hatchback',1,'986YR89','TX','USA','','Commercial','Grey','Car in very good condition',1,1,4,1,0,'2017-10-29','1',1,60,60),(6,2011,'Honda','Civic','Automatic','6789','SE','Hatchback',1,'282HUD9','TX','USA','','Economy','Black','Nicely maintained',2,1,4,1,0,'2017-10-28','1',1,70,65),(7,2012,'Chevrolet','Optra','Automatic','8837','GT','Hatchback',1,'789ER00','TX','USA','','Family','Yellow','No issues',3,1,4,1,0,'2017-10-15','1',1,80,80),(8,2013,'Honda','City','Automatic','3673','DX','Hatchback',1,'356GT88','TX','USA','','Economy','Red','Perfect for long drives',4,1,3,0,1,'2017-10-05','1',1,25,25),(9,2014,'Toyota','Camry','Automatic','13889','LX','Hatchback',1,'373DT88','TX','USA','','Family','White','Car in very good condition',1,1,3,0,1,'2017-10-06','1',1,27,27),(10,2009,'Mitsubhishi','Mirage','Automatic','2377','LS','Hatchback',1,'300HF98','TX','USA','','Luxury','Grey','Nicely maintained',2,1,3,0,1,'2017-09-19','1',1,28,28),(11,2010,'Ford','Figo','Automatic','13999','EX','Hatchback',1,'289KI36','TX','USA','','Family','Black','No issues',1,2,3,0,0,'2017-09-29','1',1,30,28),(12,2011,'Lincoln','Continental','Manual','6547.7','GL','Hatchback',1,'279HF00','TX','USA','','Luxury','Yellow','Perfect for long drives',2,2,4,0,0,'2017-09-28','1',1,45,45),(13,2012,'Honda','Accord','Manual','6547.9','SE','Hatchback',1,'383HE99','TX','USA','','Economy','Red','Car in very good condition',1,2,4,0,0,'2017-10-15','1',1,56,56),(14,2013,'Chevrolet','Cruize','Automatic','4563','GT','Hatchback',1,'456JJ90','TX','USA','','Luxury','White','Nicely maintained',2,2,4,0,1,'2017-10-28','1',1,38,38),(15,2014,'Honda','Civic','Automatic','7378','DX','Hatchback',1,'278KD69','TX','USA','','Economy','Grey','No issues',1,1,3,0,1,'2017-09-19','1',1,45,45),(16,2005,'Toyota','Corolla','Automatic','4567','LX','Hatchback',1,'082HK88','TX','USA','','Luxury','Black','Perfect for long drives',2,1,3,0,1,'2017-09-19','1',1,65,64),(17,2007,'Mitsubhishi','Lancer','Manual','6579','LS','Hatchback',1,'356IE09','TX','USA','','Sports','Yellow','Car in very good condition',1,1,3,0,0,'2017-09-29','1',1,47,47),(18,2006,'Mitsubhishi','Eclipse','Manual','2789','EX','Hatchback',1,'257UW99','TX','USA','','Economy','Red','Nicely maintained',2,1,3,1,0,'2017-09-28','1',1,58,58),(19,2010,'Ford','Fiesta','Automatic','8900','GL','Hatchback',1,'272JJ09','TX','USA','','Economy','White','No issues',1,1,3,1,0,'2017-09-28','1',1,30,29),(20,2010,'Honda','Civic','Automatic','1000','DX','Hatchback',1,'278YE90','TX','USA','','Economy','Grey','Nicely maintained',2,1,3,1,0,'2017-09-29','1',1,35,35);
/*!40000 ALTER TABLE `dim_car_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_carresdate_manojvarman`
--

DROP TABLE IF EXISTS `dim_carresdate_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_carresdate_manojvarman` (
  `CarResDate_Key` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Day` int(11) NOT NULL,
  `Month` varchar(45) NOT NULL,
  `Year` int(4) NOT NULL,
  `Week` varchar(45) NOT NULL,
  `FiscalYear` int(4) NOT NULL,
  `Quarter` int(1) NOT NULL,
  `FiscalQuarter` int(1) NOT NULL,
  PRIMARY KEY (`CarResDate_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_carresdate_manojvarman`
--

LOCK TABLES `dim_carresdate_manojvarman` WRITE;
/*!40000 ALTER TABLE `dim_carresdate_manojvarman` DISABLE KEYS */;
INSERT INTO `dim_carresdate_manojvarman` VALUES (0,'0000-00-00',0,'0',0,'NA',0,0,0),(1,'2017-09-15',15,'9',2017,'Thursday',2017,3,1),(2,'2017-09-25',25,'9',2017,'Monday',2017,3,1),(3,'2017-09-30',30,'9',2017,'Tuesday',2017,3,1),(4,'2017-10-15',15,'10',2017,'Thursday',2017,4,2),(5,'2017-10-25',25,'10',2017,'Wednesday',2017,4,2),(6,'2017-09-25',25,'9',2017,'Saturday',2017,3,1),(7,'2017-10-01',1,'10',2017,'Sunday',2017,4,2),(8,'2017-10-05',5,'10',2017,'Monday',2017,4,2),(9,'2017-10-06',6,'10',2017,'Tuesday',2017,4,2),(10,'2017-09-19',19,'9',2017,'Thursday',2017,3,1),(11,'2017-09-30',30,'9',2017,'Monday',2017,3,1),(12,'2017-09-24',24,'9',2017,'Tuesday',2017,3,1),(13,'2017-10-01',1,'10',2017,'Thursday',2017,4,2),(14,'2017-10-24',24,'10',2017,'Wednesday',2017,4,2),(15,'2017-09-19',19,'9',2017,'Saturday',2017,3,1),(16,'2017-09-16',16,'9',2017,'Sunday',2017,3,1),(17,'2017-09-25',25,'9',2017,'Monday',2017,3,1),(18,'2017-09-24',24,'9',2017,'Tuesday',2017,3,1),(19,'2017-09-24',24,'9',2017,'Monday',2017,3,1),(20,'2017-09-20',20,'9',2017,'Tuesday',2017,3,1);
/*!40000 ALTER TABLE `dim_carresdate_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_chargetype_manojvarman`
--

DROP TABLE IF EXISTS `dim_chargetype_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_chargetype_manojvarman` (
  `Charge_Key` int(11) NOT NULL,
  `ChargeType` varchar(100) NOT NULL,
  PRIMARY KEY (`Charge_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_chargetype_manojvarman`
--

LOCK TABLES `dim_chargetype_manojvarman` WRITE;
/*!40000 ALTER TABLE `dim_chargetype_manojvarman` DISABLE KEYS */;
INSERT INTO `dim_chargetype_manojvarman` VALUES (0,'NA'),(1,'One day charge'),(2,'Extra miles driven'),(3,'Scratches '),(4,'Side mirror broken'),(5,'viper broke'),(6,'Car wheel flattened'),(7,'headlight damaged'),(8,'seat damage'),(9,'bumper damage'),(10,'audio system damage'),(11,'AC damage'),(12,'bikerack damage'),(13,'Sunroof damage'),(14,'side indicator damage'),(15,'rear light damage'),(16,'ABC damage'),(17,'charge for XYZ'),(18,'charge for DEF'),(19,'charge for IJK'),(20,'charge for LMN');
/*!40000 ALTER TABLE `dim_chargetype_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_date_manojvarman`
--

DROP TABLE IF EXISTS `dim_date_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_date_manojvarman` (
  `Date_Key` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Day` int(11) NOT NULL,
  `Month` varchar(45) NOT NULL,
  `Year` int(4) NOT NULL,
  `Week` varchar(45) NOT NULL,
  `FiscalYear` int(4) NOT NULL,
  `Quarter` int(1) NOT NULL,
  `FiscalQuarter` int(1) NOT NULL,
  PRIMARY KEY (`Date_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_date_manojvarman`
--

LOCK TABLES `dim_date_manojvarman` WRITE;
/*!40000 ALTER TABLE `dim_date_manojvarman` DISABLE KEYS */;
INSERT INTO `dim_date_manojvarman` VALUES (0,'0000-00-00',0,'0',0,'NA',0,0,0),(1,'2017-09-15',15,'9',2017,'Thursday',2017,3,1),(2,'2017-09-25',25,'9',2017,'Monday',2017,3,1),(3,'2017-09-30',30,'9',2017,'Tuesday',2017,3,1),(4,'2017-10-15',15,'10',2017,'Thursday',2017,4,2),(5,'2017-10-25',25,'10',2017,'Wednesday',2017,4,2),(6,'2017-09-25',25,'9',2017,'Saturday',2017,3,1),(7,'2017-10-01',1,'10',2017,'Sunday',2017,4,2),(8,'2017-10-05',5,'10',2017,'Monday',2017,4,2),(9,'2017-10-06',6,'10',2017,'Tuesday',2017,4,2),(10,'2017-09-19',19,'9',2017,'Thursday',2017,3,1),(11,'2017-09-30',30,'9',2017,'Monday',2017,3,1),(12,'2017-09-24',24,'9',2017,'Tuesday',2017,3,1),(13,'2017-10-01',1,'10',2017,'Thursday',2017,4,2),(14,'2017-10-24',24,'10',2017,'Wednesday',2017,4,2),(15,'2017-09-19',19,'9',2017,'Saturday',2017,3,1),(16,'2017-09-16',16,'9',2017,'Sunday',2017,3,1),(17,'2017-09-25',25,'9',2017,'Monday',2017,3,1),(18,'2017-09-24',24,'9',2017,'Tuesday',2017,3,1),(19,'2017-09-24',24,'9',2017,'Monday',2017,3,1),(20,'2017-09-20',20,'9',2017,'Tuesday',2017,3,1);
/*!40000 ALTER TABLE `dim_date_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_guest_manojvarman`
--

DROP TABLE IF EXISTS `dim_guest_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_guest_manojvarman` (
  `Guest_Key` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Photo` blob,
  `BillingAdd` varchar(45) NOT NULL,
  `BillingState` varchar(45) NOT NULL,
  `BillingCity` varchar(45) NOT NULL,
  `Zipcode` varchar(45) NOT NULL,
  `LicNumber` varchar(45) NOT NULL,
  `CardNum` varchar(45) NOT NULL,
  `PaymentType` varchar(45) NOT NULL,
  `Facebook` varchar(45) DEFAULT NULL,
  `Google` varchar(45) DEFAULT NULL,
  `Flag` tinyint(4) NOT NULL,
  PRIMARY KEY (`Guest_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_guest_manojvarman`
--

LOCK TABLES `dim_guest_manojvarman` WRITE;
/*!40000 ALTER TABLE `dim_guest_manojvarman` DISABLE KEYS */;
INSERT INTO `dim_guest_manojvarman` VALUES (0,'NA','NA','NA','NA','0000-00-00',NULL,'NA','NA','NA','NA','NA','NA','NA','NA','NA',1),(1,'Vijay','Kommandi','5124094111','1234@gmail.com','1992-12-29','','7575 Frankford Rd Apt 1314','TX','Dallas','75252','1987654321','1.23E+11','Debit Card','1234@gmail.com','1234@gmail.com',1),(2,'Anand','Balan','5124094110','jdurihf@gmail.com','1992-12-30','','7521 Frankford Rd Apt 1566','TX','Dallas','75252','3546829209','1.23E+11','Debit Card','jdurihf@gmail.com','jdurihf@gmail.com',1),(3,'Manoj Varma','Namburi','5124094998','manojvarma.namburi@gmail.com','1993-12-10','','6301 Stonewood Dr Apt 1815','TX','Plano','75024','3649920090','1.23E+11','Debit Card','manojvarma.namburi@gmail.com','manojvarma.namburi@gmail.com',1),(4,'Hari','Yarrapatruni','5124094108','djuu@gmail.com','1993-01-01','','6301 Stonewood Dr Apt 1856','TX','Plano','75024','3783999900','1.23E+11','Debit Card','djuu@gmail.com','djuu@gmail.com',1),(5,'Mohan','Kodali','5124094107','dhyeo@gmail.com','1993-01-02','','4536 MaCallum Rd Apt 7668','TX','Dallas','75024','2515637889','1.23E+11','Debit Card','dhyeo@gmail.com','dhyeo@gmail.com',1),(6,'Sriram','Poranki','5124094106','suaisj@gmail.com','1993-01-03','','7383 Ohio Rd Apt 7363','TX','Dallas','75367','6233848499','1.23E+11','Credit Card','suaisj@gmail.com','suaisj@gmail.com',1),(7,'SaiTarun','Dande','5124094105','wuehu@gmail.com','1993-01-04','','7027 Alvern St Apt B202','CA','Los Angeles','90045','9273774993','1.23E+11','Credit Card','wuehu@gmail.com','wuehu@gmail.com',1),(8,'Hemanth','Koppaka','5124094104','wiorl@gmail.com','1993-01-05','','3595 Chaucer Dr Apt 12','CA','Fremont','94555','7233499923','1.23E+11','Credit Card','wiorl@gmail.com','wiorl@gmail.com',1),(9,'Vikas','Gummadi','5124094103','wiof7767@gmail.com','1993-01-06','','10784 Dougherty Ave','CA','Morgan Hill','95037','2737488393','1.23E+11','Credit Card','wiof7767@gmail.com','wiof7767@gmail.com',1),(10,'Ajay Kumar','Geddam','5124094102','wieie656@gmail.com','1993-01-07','','20702 EI Toro Rd Apt 108','CA','Lake Forest','92630','4858574899','1.23E+11','Credit Card','wieie656@gmail.com','wieie656@gmail.com',1),(11,'Tilak','Ghattamaneni','5124094101','okfof887@gmail.com','1993-01-08','','1206 Laveta Ter ','CA','Los Angeles','90026','8475563928','1.23E+11','Credit Card','okfof887@gmail.com','okfof887@gmail.com',1),(12,'Subbaraju','RudraRaju','5124094100','ffhueeh@gmail.com','1993-01-09','','1647 Blue Heron Ct #11','GA','Lawrenceville','30043','9277383839','1.23E+11','Credit Card','ffhueeh@gmail.com','ffhueeh@gmail.com',1),(13,'Ritu','Balani','5124094099','soiswjw@gmail.com','1993-01-10','','86 Devon Ln, Avondale Estates','GA','Port Wentworth','31407','1983992839','1.23E+11','Credit Card','soiswjw@gmail.com','soiswjw@gmail.com',1),(14,'Rashmi','Savla','5124094098','duhce7e0@gmail.com','1993-01-11','','1777 Harvard Ave','GA','College Park','30337','5663739930','1.23E+11','Credit Card','duhce7e0@gmail.com','duhce7e0@gmail.com',1),(15,'Anusha','Morukutla','5124094097','dhusdsjdn@gmail.com','1993-01-12','','325 S Point Blvd','GA','Mc Donough','30253','4885993020','1.23E+11','Credit Card','dhusdsjdn@gmail.com','dhusdsjdn@gmail.com',1),(16,'Suhail','Ibrahim','5124094096','367ndd@gmail.com','1993-01-13','','3201 Sunrise Village Ln','GA','Norcross','30093','9817662489','1.23E+11','Credit Card','367ndd@gmail.com','367ndd@gmail.com',1),(17,'Harshavardhan','Yerasu','5124094095','s28njdnwdn@gmail.com','1993-01-14','','950 Executive Dr','GA','Alpharetta','30005','6477382920','1.23E+11','Credit Card','s28njdnwdn@gmail.com','s28njdnwdn@gmail.com',1),(18,'Tarak','Vadapalli','5124094094','288kskkdn@gmail.com','1993-01-15','','10 Gentrys Walk','GA','Atlanta','30341','7838839309','1.23E+11','Credit Card','288kskkdn@gmail.com','288kskkdn@gmail.com',1),(19,'Atreya','Polishetty','5124094093','sdhshd7y2y@gmail.com','1993-01-16','','9700 Medlock Crossing Pkwy','GA','Johns Creek','30022','3394884940','1.23E+11','Credit Card','sdhshd7y2y@gmail.com','sdhshd7y2y@gmail.com',1),(20,'Sashi','Kanth','5124094092','ajsiijdnd@gmail.com','1993-01-17','','2151 Cumberland Pkwy SE','GA','Atlanta','30339','2738849004','1.23E+11','Credit Card','ajsiijdnd@gmail.com','ajsiijdnd@gmail.com',1);
/*!40000 ALTER TABLE `dim_guest_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_location_manojvarman`
--

DROP TABLE IF EXISTS `dim_location_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_location_manojvarman` (
  `Location_Key` int(11) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Zipcode` varchar(45) NOT NULL,
  PRIMARY KEY (`Location_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_location_manojvarman`
--

LOCK TABLES `dim_location_manojvarman` WRITE;
/*!40000 ALTER TABLE `dim_location_manojvarman` DISABLE KEYS */;
INSERT INTO `dim_location_manojvarman` VALUES (0,'NA','NA','NA','NA'),(1,'7575 Frankford Rd Apt 1314','Dallas','TX','75252'),(2,'7521 Frankford Rd Apt 1566','Dallas','TX','75252'),(3,'6301 Stonewood Dr Apt 1815','Plano','TX','75024'),(4,'6301 Stonewood Dr Apt 1856','Plano','TX','75024'),(5,'4536 MaCallum Rd Apt 7668','Dallas','TX','75024'),(6,'7383 Ohio Rd Apt 7363','Dallas','TX','75367'),(7,'7027 Alvern St Apt B202','Los Angeles','CA','90045'),(8,'3595 Chaucer Dr Apt 12','Fremont','CA','94555'),(9,'10784 Dougherty Ave','Morgan Hill','CA','95037'),(10,'20702 EI Toro Rd Apt 108','Lake Forest','CA','92630'),(11,'1206 Laveta Ter ','Los Angeles','CA','90026'),(12,'1647 Blue Heron Ct #11','Lawrenceville','GA','30043'),(13,'86 Devon Ln, Avondale Estates','Port Wentworth','GA','31407'),(14,'1777 Harvard Ave','College Park','GA','30337'),(15,'325 S Point Blvd','Mc Donough','GA','30253'),(16,'3201 Sunrise Village Ln','Norcross','GA','30093'),(17,'950 Executive Dr','Alpharetta','GA','30005'),(18,'10 Gentrys Walk','Atlanta','GA','30341'),(19,'9700 Medlock Crossing Pkwy','Johns Creek','GA','30022'),(20,'2151 Cumberland Pkwy SE','Atlanta','GA','30339');
/*!40000 ALTER TABLE `dim_location_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_owner_manojvarman`
--

DROP TABLE IF EXISTS `dim_owner_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_owner_manojvarman` (
  `Owner_Key` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Photo` blob,
  `BillingAdd` varchar(45) NOT NULL,
  `BillingState` varchar(45) NOT NULL,
  `BillingCity` varchar(45) NOT NULL,
  `Zipcode` varchar(45) NOT NULL,
  `LicNumber` varchar(45) NOT NULL,
  `CardNum` varchar(45) NOT NULL,
  `PaymentType` varchar(45) NOT NULL,
  `Facebook` varchar(45) DEFAULT NULL,
  `Google` varchar(45) DEFAULT NULL,
  `Flag` tinyint(4) NOT NULL,
  PRIMARY KEY (`Owner_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_owner_manojvarman`
--

LOCK TABLES `dim_owner_manojvarman` WRITE;
/*!40000 ALTER TABLE `dim_owner_manojvarman` DISABLE KEYS */;
INSERT INTO `dim_owner_manojvarman` VALUES (0,'NA','NA','NA','NA','0000-00-00','?','NA','NA','NA','NA','NA','NA','NA','NA','NA',1),(1,'Hasath','Sista','5124094111','1234@gmail.com','1992-12-29','','7575 Frankford Rd Apt 1314','TX','Dallas','75252','1987654321','1.23E+11','Debit Card','1234@gmail.com','1234@gmail.com',1),(2,'Anand','Balan','5124094110','jdurihf@gmail.com','1992-12-30','','7521 Frankford Rd Apt 1566','TX','Dallas','75252','3546829209','1.23E+11','Debit Card','jdurihf@gmail.com','jdurihf@gmail.com',1),(3,'Manoj Varma','Namburi','5124094998','manojvarma.namburi@gmail.com','1993-12-10','','6301 Stonewood Dr Apt 1815','TX','Plano','75024','3649920090','1.23E+11','Debit Card','manojvarma.namburi@gmail.com','manojvarma.namburi@gmail.com',1),(4,'Bharath','Nimmagadda','5124094108','djuu@gmail.com','1993-01-01','','6301 Stonewood Dr Apt 1856','TX','Plano','75024','3783999900','1.23E+11','Debit Card','djuu@gmail.com','djuu@gmail.com',1),(5,'Adithya','Ganpathy','5124094107','dhyeo@gmail.com','1993-01-02','','4536 MaCallum Rd Apt 7668','TX','Dallas','75024','2515637889','1.23E+11','Debit Card','dhyeo@gmail.com','dhyeo@gmail.com',1),(6,'Harish','Popuri','5124094106','suaisj@gmail.com','1993-01-03','','7383 Ohio Rd Apt 7363','TX','Dallas','75367','6233848499','1.23E+11','Credit Card','suaisj@gmail.com','suaisj@gmail.com',1),(7,'Tarun','Dande','5124094105','wuehu@gmail.com','1993-01-04','','7027 Alvern St Apt B202','CA','Los Angeles','90045','9273774993','1.23E+11','Credit Card','wuehu@gmail.com','wuehu@gmail.com',1),(8,'Shanmukha','Koppaka','5124094104','wiorl@gmail.com','1993-01-05','','3595 Chaucer Dr Apt 12','CA','Fremont','94555','7233499923','1.23E+11','Credit Card','wiorl@gmail.com','wiorl@gmail.com',1),(9,'Mahesh','Gummadi','5124094103','wiof7767@gmail.com','1993-01-06','','10784 Dougherty Ave','CA','Morgan Hill','95037','2737488393','1.23E+11','Credit Card','wiof7767@gmail.com','wiof7767@gmail.com',1),(10,'Ajay Kumar','Sunnapu','5124094102','wieie656@gmail.com','1993-01-07','','20702 EI Toro Rd Apt 108','CA','Lake Forest','92630','4858574899','1.23E+11','Credit Card','wieie656@gmail.com','wieie656@gmail.com',1),(11,'Tilak','Ghattamaneni','5124094101','okfof887@gmail.com','1993-01-08','','1206 Laveta Ter ','CA','Los Angeles','90026','8475563928','1.23E+11','Credit Card','okfof887@gmail.com','okfof887@gmail.com',1),(12,'Laxman','Ghattu','5124094100','ffhueeh@gmail.com','1993-01-09','','1647 Blue Heron Ct #11','GA','Lawrenceville','30043','9277383839','1.23E+11','Credit Card','ffhueeh@gmail.com','ffhueeh@gmail.com',1),(13,'Rinu','Varghese','5124094099','soiswjw@gmail.com','1993-01-10','','86 Devon Ln, Avondale Estates','GA','Port Wentworth','31407','1983992839','1.23E+11','Credit Card','soiswjw@gmail.com','soiswjw@gmail.com',1),(14,'Archana','Killi','5124094098','duhce7e0@gmail.com','1993-01-11','','1777 Harvard Ave','GA','College Park','30337','5663739930','1.23E+11','Credit Card','duhce7e0@gmail.com','duhce7e0@gmail.com',1),(15,'Monica','Adimoolam','5124094097','dhusdsjdn@gmail.com','1993-01-12','','325 S Point Blvd','GA','Mc Donough','30253','4885993020','1.23E+11','Credit Card','dhusdsjdn@gmail.com','dhusdsjdn@gmail.com',1),(16,'Suhail','Ibrahim','5124094096','367ndd@gmail.com','1993-01-13','','3201 Sunrise Village Ln','GA','Norcross','30093','9817662489','1.23E+11','Credit Card','367ndd@gmail.com','367ndd@gmail.com',1),(17,'Harsha','Yerasu','5124094095','s28njdnwdn@gmail.com','1993-01-14','','950 Executive Dr','GA','Alpharetta','30005','6477382920','1.23E+11','Credit Card','s28njdnwdn@gmail.com','s28njdnwdn@gmail.com',1),(18,'Nikhil','Vadapalli','5124094094','288kskkdn@gmail.com','1993-01-15','','10 Gentrys Walk','GA','Atlanta','30341','7838839309','1.23E+11','Credit Card','288kskkdn@gmail.com','288kskkdn@gmail.com',1),(19,'Atreya','Polishetty','5124094093','sdhshd7y2y@gmail.com','1993-01-16','','9700 Medlock Crossing Pkwy','GA','Johns Creek','30022','3394884940','1.23E+11','Credit Card','sdhshd7y2y@gmail.com','sdhshd7y2y@gmail.com',1),(20,'Sashi','Kanth','5124094092','ajsiijdnd@gmail.com','1993-01-17','','2151 Cumberland Pkwy SE','GA','Atlanta','30339','2738849004','1.23E+11','Credit Card','ajsiijdnd@gmail.com','ajsiijdnd@gmail.com',1);
/*!40000 ALTER TABLE `dim_owner_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_booking_manojvarman`
--

DROP TABLE IF EXISTS `fact_booking_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_booking_manojvarman` (
  `BookingNum` varchar(45) NOT NULL,
  `Guest_Key` int(11) NOT NULL,
  `Owner_Key` int(11) NOT NULL,
  `Car_Key` int(11) NOT NULL,
  `Location_Key` int(11) NOT NULL,
  `CarResDate_Key` int(11) NOT NULL,
  `BookingDate_Key` int(11) NOT NULL,
  `Charge_Key` int(11) NOT NULL,
  `AmountPaid` float NOT NULL,
  `OwnerShare` float NOT NULL,
  KEY `fk_Booking_CarReservedDate_idx` (`CarResDate_Key`),
  KEY `fk_Booking_Guest1_idx` (`Guest_Key`),
  KEY `fk_Booking_Owner1_idx` (`Owner_Key`),
  KEY `fk_Booking_Car1_idx` (`Car_Key`),
  KEY `fk_Booking_Location1_idx` (`Location_Key`),
  KEY `fk_Booking_Date1_idx` (`BookingDate_Key`),
  KEY `fk_Fact_Booking_ManojVarmaN_ChargeType1_idx` (`Charge_Key`),
  CONSTRAINT `fk_Booking_Car1` FOREIGN KEY (`Car_Key`) REFERENCES `dim_car_manojvarman` (`Car_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Booking_CarReservedDate` FOREIGN KEY (`CarResDate_Key`) REFERENCES `dim_carresdate_manojvarman` (`CarResDate_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Booking_Date1` FOREIGN KEY (`BookingDate_Key`) REFERENCES `dim_date_manojvarman` (`Date_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Booking_Guest1` FOREIGN KEY (`Guest_Key`) REFERENCES `dim_guest_manojvarman` (`Guest_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Booking_Location1` FOREIGN KEY (`Location_Key`) REFERENCES `dim_location_manojvarman` (`Location_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Booking_Owner1` FOREIGN KEY (`Owner_Key`) REFERENCES `dim_owner_manojvarman` (`Owner_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_Booking_ManojVarmaN_ChargeType1` FOREIGN KEY (`Charge_Key`) REFERENCES `dim_chargetype_manojvarman` (`Charge_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_booking_manojvarman`
--

LOCK TABLES `fact_booking_manojvarman` WRITE;
/*!40000 ALTER TABLE `fact_booking_manojvarman` DISABLE KEYS */;
INSERT INTO `fact_booking_manojvarman` VALUES ('123A',1,1,1,1,1,1,1,20,16),('123A',1,1,1,1,2,1,2,5,5),('123A',1,1,1,1,2,1,1,20,16),('123B',2,2,2,2,3,2,1,30,27),('123B',2,2,2,2,5,2,3,10,10),('123B',2,2,2,2,4,2,1,30,27),('123B',2,2,2,2,5,2,1,30,27),('123C',3,3,3,3,5,3,1,40,36),('123D',4,4,4,4,6,4,1,50,45),('123E',5,5,5,5,7,5,1,60,54),('123F',6,6,6,6,8,6,1,65,58.5),('123G',7,7,7,7,9,7,1,80,72),('123H',8,8,8,8,10,8,1,25,22.5),('123I',9,9,9,9,11,9,1,27,24.3),('123J',10,10,10,10,12,10,1,28,25.2),('123K',11,11,11,11,13,11,1,28,25.2),('123L',12,12,12,12,14,12,1,45,40.5),('123M',13,13,13,13,15,13,1,56,50.4),('123N',14,14,14,14,16,14,1,38,34.2),('123O',15,15,15,15,17,15,1,45,40.5);
/*!40000 ALTER TABLE `fact_booking_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_review_manojvarman`
--

DROP TABLE IF EXISTS `fact_review_manojvarman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_review_manojvarman` (
  `Guest_Guest_Key` int(11) NOT NULL,
  `Owner_Key` int(11) NOT NULL,
  `Car_Key` int(11) NOT NULL,
  `Location_Key` int(11) NOT NULL,
  `Date_Key` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Review` varchar(100) NOT NULL,
  KEY `fk_Review_Guest1_idx` (`Guest_Guest_Key`),
  KEY `fk_Review_Owner1_idx` (`Owner_Key`),
  KEY `fk_Review_Car1_idx` (`Car_Key`),
  KEY `fk_Review_Location1_idx` (`Location_Key`),
  KEY `fk_Review_Date1_idx` (`Date_Key`),
  CONSTRAINT `fk_Review_Car1` FOREIGN KEY (`Car_Key`) REFERENCES `dim_car_manojvarman` (`Car_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Review_Date1` FOREIGN KEY (`Date_Key`) REFERENCES `dim_date_manojvarman` (`Date_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Review_Guest1` FOREIGN KEY (`Guest_Guest_Key`) REFERENCES `dim_guest_manojvarman` (`Guest_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Review_Location1` FOREIGN KEY (`Location_Key`) REFERENCES `dim_location_manojvarman` (`Location_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Review_Owner1` FOREIGN KEY (`Owner_Key`) REFERENCES `dim_owner_manojvarman` (`Owner_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_review_manojvarman`
--

LOCK TABLES `fact_review_manojvarman` WRITE;
/*!40000 ALTER TABLE `fact_review_manojvarman` DISABLE KEYS */;
INSERT INTO `fact_review_manojvarman` VALUES (1,1,1,1,5,5,'Car was very smooth'),(2,2,2,2,6,5,'Enjoyed the trip'),(3,3,3,3,7,5,'Great place to rent a car'),(4,4,4,4,8,2,'Car was very smooth'),(5,5,5,5,9,5,'Enjoyed the trip'),(6,6,6,6,10,4,'Great place to rent a car'),(7,7,7,7,11,4,'Car was very smooth'),(8,8,8,8,5,4,'Enjoyed the trip'),(9,9,9,9,6,4,'Great place to rent a car'),(10,10,10,10,7,3,'Car was very smooth'),(11,11,11,11,8,5,'Enjoyed the trip'),(12,12,12,12,9,2,'Great place to rent a car'),(13,13,13,13,10,5,'Car was very smooth'),(14,14,14,14,11,3,'Enjoyed the trip'),(15,15,15,15,5,5,'Great place to rent a car'),(16,16,16,16,6,2,'Car was very smooth'),(17,17,17,17,7,4,'Enjoyed the trip'),(18,18,18,18,8,4,'Great place to rent a car'),(19,19,19,19,9,3,'Car was very smooth'),(20,20,20,20,10,5,'Enjoyed the trip');
/*!40000 ALTER TABLE `fact_review_manojvarman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'turo_dm'
--

--
-- Dumping routines for database 'turo_dm'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 20:22:55
