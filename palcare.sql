-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: palcareplus
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `txndate` datetime DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `txntype` varchar(45) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `receiptNo` varchar(45) DEFAULT NULL,
  `isReceipt` tinyint DEFAULT NULL,
  `paymentMode` varchar(45) DEFAULT NULL,
  `bankMode` varchar(45) DEFAULT NULL,
  `bankName` varchar(200) DEFAULT NULL,
  `txnNo` varchar(100) DEFAULT NULL,
  `chNo` varchar(45) DEFAULT NULL,
  `chdate` datetime DEFAULT NULL,
  `chBank` varchar(200) DEFAULT NULL,
  `chAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'2021-05-30 00:00:00','aa','aa',100.50,'Income','',NULL,0,'Cash','','','','',NULL,'',0.00),(2,'2021-05-31 00:00:00','gg','hh',35.00,'Income','',NULL,0,'Cash','','','','',NULL,'',0.00),(3,'2021-05-31 00:00:00','dd','fff',-56.00,'Expense','',NULL,0,'Cash','','','','',NULL,'',0.00),(4,'2021-06-13 00:00:00','cvcx','cvcv',505.00,'Income','rrrr','26',1,'Cash','','Urban bank 33','jjjjj','',NULL,'',0.00),(7,'2021-06-10 00:00:00','Contra Entry - Cash','Contra Entry',-3000.00,'Expense','',NULL,0,'Cash','','',NULL,NULL,NULL,NULL,0.00),(8,'2021-06-10 00:00:00','Contra Entry - Bank','Contra Entry',3000.00,'Income','',NULL,0,'Bank','Transfer','Urban bank 33',NULL,NULL,NULL,NULL,0.00),(9,'2021-06-13 00:00:00','Contra Entry - Bank','Contra Entry',-900.00,'Expense','',NULL,0,'Bank','Transfer','corp bank 1111',NULL,NULL,NULL,NULL,0.00),(10,'2021-06-13 00:00:00','Contra Entry - Cash','Contra Entry',900.00,'Income','',NULL,0,'Cash','','',NULL,NULL,NULL,NULL,0.00),(11,'2021-06-13 00:00:00','hhhh1','kkkk1',5551.00,'Income','ggg1',NULL,0,'Cash','','','','',NULL,'',0.00),(12,'2021-06-13 00:00:00','ccc','fff',0.00,'Income','',NULL,0,'Bank','Cheque','Urban bank 33','','',NULL,'',567.00),(13,'2021-06-13 00:00:00','kkk','yyy',222.00,'Income','',NULL,0,'Bank','Cheque','corp bank 1111','','',NULL,'',222.00),(14,'2021-06-13 00:00:00','hhh','vbb',111.00,'Income','',NULL,0,'Bank','Cheque','Urban bank 33','','1111','2021-06-30 00:00:00','bbbbb',111.00),(15,'2021-06-26 00:00:00','sdfds','sdfsdf',567.00,'Income','dsdf','27',1,'Cash','','','','',NULL,'',0.00),(16,'2021-06-26 00:00:00','dfgdf','dfgdf',-678.00,'Expense','fgdg','28',1,'Cash','','','','',NULL,'',0.00),(17,'2021-06-26 00:00:00','cvb','cvbc',678.00,'Income','vbc','29',1,'Cash','','','','',NULL,'',0.00),(18,'2021-06-26 00:00:00','xcv','vb',345.00,'Income','xcv','30',1,'Cash','','','','',NULL,'',0.00),(19,'2021-05-30 00:00:00','dsfs','sfdsd',-456.00,'Expense','dff','31',1,'Cash','','','','',NULL,'',0.00),(20,'2021-06-09 00:00:00','cvbcv','cbcv',4568.00,'Income','vbcb','32',1,'Cash','','','','',NULL,'',0.00);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `IsCash` tinyint DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'Cash In Hand',1),(2,'corp bank 1111',0),(3,'Urban bank 33',0);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `center`
--

DROP TABLE IF EXISTS `center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `center` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Desc` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `RegNo` varchar(45) DEFAULT NULL,
  `AddressMal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LocationMal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NameMal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ReceiptNo` int DEFAULT NULL,
  `MedExpiryDays` int DEFAULT NULL,
  `MedThresholdCount` int DEFAULT NULL,
  `ValidTill` varchar(255) DEFAULT NULL,
  `TodayAPI` varchar(255) DEFAULT NULL,
  `DescMal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `center`
--

LOCK TABLES `center` WRITE;
/*!40000 ALTER TABLE `center` DISABLE KEYS */;
INSERT INTO `center` VALUES (1,'MySql','Address2','Palliative Care & Rehabilitation Society1','Location1','112233445','111/112','വ്പാ','വ്','പാലിയേറ്റീവ് വ്',32,4,30,'Vb/rmpNkzy1RKv6wSjj4oh1MRe6lCpNwVHZhuuMD6SNqx7FpYe+z3pdeQ+9q2Ml51DE8ymUSNB1dSzNq7eQRLN8im1fUcZAfzI6QN1819tlrjtPLxntFH8FFB6WPtPAU','4z4JPjCNiHvX+cktrCTwup/Rc8WHR6Zxya2LLlqIbNH/REIel38qLdmpBPPu/sMXP4RuY4u7OCo0zH1+vfEypmaQP8KtdWA/l0twgxqiKqJGmIQVarOKoAy36u4T00TB','പാലിയേറ്റീവ് കെയർ & റീഹാബിലിറ്റേഷൻ സൊസൈറ്റി വ്');
/*!40000 ALTER TABLE `center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis`
--

LOCK TABLES `diagnosis` WRITE;
/*!40000 ALTER TABLE `diagnosis` DISABLE KEYS */;
INSERT INTO `diagnosis` VALUES (1,'Cancer'),(2,'Diag3'),(3,'aa1');
/*!40000 ALTER TABLE `diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `eno` varchar(45) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `name_lower` varchar(200) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `damage` int DEFAULT NULL,
  `inuse` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'E1','Wheel chair1','wheel chair1',10,11,2),(2,'E2','BED1','bed1',39,551,73);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipmentdispose`
--

DROP TABLE IF EXISTS `equipmentdispose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmentdispose` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EquipmentId` int NOT NULL,
  `Eno` varchar(45) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Desc` varchar(200) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `TxnDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmentdispose`
--

LOCK TABLES `equipmentdispose` WRITE;
/*!40000 ALTER TABLE `equipmentdispose` DISABLE KEYS */;
INSERT INTO `equipmentdispose` VALUES (1,2,'E2','BED1','dddd',2,'2021-06-20 00:00:00'),(2,2,'E2','BED1','dddd',2,'2021-06-20 00:00:00'),(3,1,'E1','Wheel chair','ddggg',2,'2021-06-20 00:00:00'),(4,2,'E2','BED1','asdad',3,'2021-06-20 00:00:00'),(5,2,'E2','BED1','test',5,'2021-06-27 00:00:00');
/*!40000 ALTER TABLE `equipmentdispose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipmenttracker`
--

DROP TABLE IF EXISTS `equipmenttracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmenttracker` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EquipmentId` int NOT NULL,
  `patientname` varchar(200) DEFAULT NULL,
  `pno` varchar(45) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `outdate` datetime DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmenttracker`
--

LOCK TABLES `equipmenttracker` WRITE;
/*!40000 ALTER TABLE `equipmenttracker` DISABLE KEYS */;
INSERT INTO `equipmenttracker` VALUES (1,2,'temp pat','4567/2021',2,'2021-06-01 00:00:00',NULL),(2,2,'pat 1','1111/2021',1,'2021-06-02 00:00:00','2021-06-19 00:00:00'),(3,2,'pat 3','3333/2021',3,'2021-05-30 00:00:00','2021-06-20 00:00:00'),(4,1,'pat 1','1111/2021',2,'2021-06-01 00:00:00',NULL);
/*!40000 ALTER TABLE `equipmenttracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expensetype`
--

DROP TABLE IF EXISTS `expensetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expensetype` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ExpenseType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensetype`
--

LOCK TABLES `expensetype` WRITE;
/*!40000 ALTER TABLE `expensetype` DISABLE KEYS */;
INSERT INTO `expensetype` VALUES (1,'salary12'),(2,'Fuel3');
/*!40000 ALTER TABLE `expensetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homecareplan`
--

DROP TABLE IF EXISTS `homecareplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homecareplan` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Pno` varchar(45) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homecareplan`
--

LOCK TABLES `homecareplan` WRITE;
/*!40000 ALTER TABLE `homecareplan` DISABLE KEYS */;
INSERT INTO `homecareplan` VALUES (1,'1111/2021','2021-06-01 00:00:00','Doctor','pat 1'),(2,'1111/2021','2021-06-02 00:00:00','Nurse','pat 1'),(3,'1111/2021','2021-06-03 00:00:00','Volunteer','pat 1'),(4,'3333/2021','2021-05-31 00:00:00','Nurse','pat 3');
/*!40000 ALTER TABLE `homecareplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incometype`
--

DROP TABLE IF EXISTS `incometype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incometype` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IncomeType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incometype`
--

LOCK TABLES `incometype` WRITE;
/*!40000 ALTER TABLE `incometype` DISABLE KEYS */;
INSERT INTO `incometype` VALUES (1,'Box collection'),(2,'Donation 1');
/*!40000 ALTER TABLE `incometype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `msg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'a','L498SHBXa1H0cVP+YMouzgJR6mC53h1fH1RARK7Jlh/jcBRQbkrUwb0P2Yjw6rrLPE/QE7qsKwgUxCNkCZVQSIfteo0AynztiJeADjT/qh59Bp4fhkk2nOPUDn7/8Fv2');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Mno` varchar(45) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `NameLower` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'M1','Dolo','dolo'),(2,'M2','Crosin','crosin'),(3,'M3','Aspirin','aspirin');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicinehistory`
--

DROP TABLE IF EXISTS `medicinehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicinehistory` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MedicineId` int DEFAULT NULL,
  `txnDate` datetime DEFAULT NULL,
  `mno` varchar(45) DEFAULT NULL,
  `medName` varchar(200) DEFAULT NULL,
  `txnType` varchar(45) DEFAULT NULL,
  `desc` varchar(45) DEFAULT NULL,
  `openingMain` int DEFAULT NULL,
  `openingSub` int DEFAULT NULL,
  `openingAKit` int DEFAULT NULL,
  `openingBKit` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `closingMain` int DEFAULT NULL,
  `closingSub` int DEFAULT NULL,
  `closingAKit` int DEFAULT NULL,
  `closingBKit` int DEFAULT NULL,
  `pno` varchar(45) DEFAULT NULL,
  `patientName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicinehistory`
--

LOCK TABLES `medicinehistory` WRITE;
/*!40000 ALTER TABLE `medicinehistory` DISABLE KEYS */;
INSERT INTO `medicinehistory` VALUES (1,1,'2021-06-27 00:00:00','M1','Dolo','Add','To main stock',0,0,0,0,23,23,0,0,0,'',''),(2,2,'2021-06-27 00:00:00','M2','Crosin','Add','To main stock',0,0,0,0,50,50,0,0,0,'',''),(3,3,'2021-06-27 00:00:00','M3','Aspirin','Add','To main stock',0,0,0,0,35,35,0,0,0,'',''),(4,1,'2021-06-27 00:00:00','M1','Dolo','Transfer','Main to Sub',23,0,0,0,20,3,20,0,0,'',''),(5,1,'2021-06-27 00:00:00','M1','Dolo','Transfer','Sub to A Kit',3,20,0,0,10,3,10,10,0,'',''),(6,1,'2021-06-27 00:00:00','M1','Dolo','Transfer','Sub to B Kit',3,10,10,0,2,3,8,10,2,'','');
/*!40000 ALTER TABLE `medicinehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicinepurchase`
--

DROP TABLE IF EXISTS `medicinepurchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicinepurchase` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MedicineId` int NOT NULL,
  `invdate` datetime DEFAULT NULL,
  `invno` varchar(45) DEFAULT NULL,
  `batchno` varchar(45) DEFAULT NULL,
  `expdate` datetime NOT NULL,
  `mfgdate` datetime DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `dealer` varchar(100) DEFAULT NULL,
  `mainStock` int DEFAULT NULL,
  `subStock` int DEFAULT NULL,
  `return` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicinepurchase`
--

LOCK TABLES `medicinepurchase` WRITE;
/*!40000 ALTER TABLE `medicinepurchase` DISABLE KEYS */;
INSERT INTO `medicinepurchase` VALUES (1,1,NULL,'','','2021-07-01 00:00:00',NULL,0.00,'',3,8,0),(2,2,NULL,'','','2021-07-02 00:00:00',NULL,0.00,'',50,0,0),(3,3,NULL,'','','2021-07-03 00:00:00',NULL,0.00,'',35,0,0);
/*!40000 ALTER TABLE `medicinepurchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicinestock`
--

DROP TABLE IF EXISTS `medicinestock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicinestock` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MedicineId` int NOT NULL,
  `Main` int DEFAULT NULL,
  `Sub` int DEFAULT NULL,
  `A_kit` int DEFAULT NULL,
  `B_kit` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `medicinestock_medicine_idx` (`MedicineId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicinestock`
--

LOCK TABLES `medicinestock` WRITE;
/*!40000 ALTER TABLE `medicinestock` DISABLE KEYS */;
INSERT INTO `medicinestock` VALUES (1,1,3,8,10,2),(2,2,50,0,0,0),(3,3,35,0,0,0);
/*!40000 ALTER TABLE `medicinestock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panjayath`
--

DROP TABLE IF EXISTS `panjayath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panjayath` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panjayath`
--

LOCK TABLES `panjayath` WRITE;
/*!40000 ALTER TABLE `panjayath` DISABLE KEYS */;
INSERT INTO `panjayath` VALUES (1,'Alankode'),(2,'Nannamukku11');
/*!40000 ALTER TABLE `panjayath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PNo` varchar(45) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Age` varchar(45) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Grade` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Panjayath` varchar(100) DEFAULT NULL,
  `WardNo` varchar(45) DEFAULT NULL,
  `Phone1` varchar(45) DEFAULT NULL,
  `Phone2` varchar(45) DEFAULT NULL,
  `RegDate` datetime DEFAULT NULL,
  `ExpDate` datetime DEFAULT NULL,
  `DropDate` datetime DEFAULT NULL,
  `Volunteer` varchar(100) DEFAULT NULL,
  `Diagnosis` varchar(100) DEFAULT NULL,
  `Temp` tinyint DEFAULT NULL,
  `Route` varchar(100) DEFAULT NULL,
  `HomeCarePlan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `PNo_UNIQUE` (`PNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'1111/2021','pat 1','23','aadress','Grade A','M','Alankode','19','111111111','22222222','2021-06-01 00:00:00',NULL,NULL,'shakeeb11','Cancer',0,'route 23','2'),(2,'2222/2021','pat 2','23','','Grade B','M','','','','','2021-06-02 00:00:00',NULL,'2021-06-20 00:00:00','','',0,'',''),(3,'3333/2021','pat 3','33','','Grade D','T','','','','',NULL,'2021-06-15 00:00:00',NULL,'','',0,'',''),(4,'4567/2021','temp pat','34','','Grade C','M','','','','','2021-06-01 00:00:00',NULL,NULL,'','',1,'',''),(5,'j3456/2021','pppppp','34','','Grade B','M','','','','','2021-05-01 00:00:00',NULL,NULL,'','',0,'','');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rehabilitation`
--

DROP TABLE IF EXISTS `rehabilitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rehabilitation` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Pno` varchar(45) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rehabilitation`
--

LOCK TABLES `rehabilitation` WRITE;
/*!40000 ALTER TABLE `rehabilitation` DISABLE KEYS */;
INSERT INTO `rehabilitation` VALUES (1,'1111/2021','2021-06-01 00:00:00','aa',3),(2,'1111/2021','2021-06-07 00:00:00','bb',5),(3,'3333/2021','2021-05-31 00:00:00','cc11',111);
/*!40000 ALTER TABLE `rehabilitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'route 1'),(2,'route 23');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES (1,'shakeeb11','ckm11','998611'),(2,'11','11','11'),(3,'bb','cc','22333');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'palcareplus'
--
/*!50003 DROP PROCEDURE IF EXISTS `log_msg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `log_msg`(IN in_msg VARCHAR(255))
BEGIN
 insert into log values(in_msg);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddAccountLedger` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddAccountLedger`(
IN p_in_txndate datetime,
IN p_in_desc varchar(200),
IN p_in_type varchar(45),
IN p_in_amount DECIMAL(10,2),
IN p_in_txntype varchar(45),
IN p_in_name varchar(200),
IN p_in_isReceipt tinyint,
IN p_in_paymentMode varchar(45),
IN p_in_bankMode varchar(45),
IN p_in_bankName varchar(200),
IN p_in_txnNo varchar(100),
IN p_in_chNo varchar(45),
IN p_in_chdate datetime,
IN p_in_chBank varchar(200),
IN p_in_chAmount DECIMAL(10,2),
OUT p_out int
)
BEGIN
	
    Declare p_receiptNo int;
    
	IF extract(year from p_in_txndate) = 1 THEN
		SET p_in_txndate = NULL;
	END IF;
	
	IF extract(year from p_in_chdate) = 1 THEN
		SET p_in_chdate = NULL;
	END IF;
	
    IF p_in_bankMode = "Cheque" THEN
		SET p_in_chAmount = p_in_amount;
        SET p_in_amount = 0;
	END IF;
    
    IF p_in_isReceipt = 1 THEN
		update center set receiptno = receiptno + 1 where id = 1; 
		select receiptno into p_receiptNo from center  where id = 1; 
	END IF;
    
	INSERT INTO `account`
		(
		`txndate`,
		`desc`,
		`type`,
		`amount`,
		`txntype`,
		`name`,
		`receiptNo`,
		`isReceipt`,
		`paymentMode`,
		`bankMode`,
		`bankName`,
		`txnNo`,
		`chNo`,
		`chdate`,
		`chBank`,
		`chAmount`)
		VALUES
		(
        p_in_txndate,
        p_in_desc,
		p_in_type,
        p_in_amount,
        p_in_txntype,
        p_in_name,
        p_receiptNo,
        p_in_isReceipt,
        p_in_paymentMode,
        p_in_bankMode,
        p_in_bankName,
        p_in_txnNo,
        p_in_chNo,
        p_in_chdate,
        p_in_chBank,
        p_in_chAmount
        );
        
        set p_out =  LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddBank` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddBank`(
IN p_in_name varchar(200)
)
BEGIN
	INSERT INTO `bank`
	(`Name`)
	VALUES
	(p_in_name );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddCE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddCE`(
IN p_in_txndate datetime,
IN p_in_source varchar(45),
IN p_in_bankName varchar(200),
IN p_in_amount DECIMAL(10,2)
)
BEGIN
	
    IF p_in_source = "Cash" THEN
		INSERT INTO `account`
		(
		`txndate`,
		`desc`,
		`type`,
		`amount`,
		`txntype`,
		`name`,
		`isReceipt`,
		`paymentMode`,
		`bankMode`,
		`bankName`,
        `chAmount`
		)
		VALUES
		(
        p_in_txndate,
        "Contra Entry - Cash", -- p_in_desc
		"Contra Entry", -- p_in_type
        p_in_amount * -1,
        "Expense", --  p_in_txntype
        "", -- p_in_name
        0, -- p_in_isReceipt
        "Cash", -- p_in_paymentMode
        "", -- p_in_bankMode
        "", -- p_in_bankName
        0 --  `chAmount`
        );
        
        INSERT INTO `account`
		(
		`txndate`,
		`desc`,
		`type`,
		`amount`,
		`txntype`,
		`name`,
		`isReceipt`,
		`paymentMode`,
		`bankMode`,
		`bankName`,
		`chAmount`
		)
		VALUES
		(
        p_in_txndate,
        "Contra Entry - Bank", -- p_in_desc
		"Contra Entry", -- p_in_type
        p_in_amount,
        "Income", --  p_in_txntype
        "", -- p_in_name
        0, -- p_in_isReceipt
        "Bank", -- p_in_paymentMode
        "Transfer", -- p_in_bankMode
        p_in_bankName,
        0 --  `chAmount`
        );
	ELSE
		INSERT INTO `account`
		(
		`txndate`,
		`desc`,
		`type`,
		`amount`,
		`txntype`,
		`name`,
		`isReceipt`,
		`paymentMode`,
		`bankMode`,
		`bankName`,
        `chAmount`
		)
		VALUES
		(
        p_in_txndate,
        "Contra Entry - Bank", -- p_in_desc
		"Contra Entry", -- p_in_type
        p_in_amount * -1,
        "Expense", --  p_in_txntype
        "", -- p_in_name
        0, -- p_in_isReceipt
        "Bank", -- p_in_paymentMode
        "Transfer", -- p_in_bankMode
        p_in_bankName,
        0 --  `chAmount`
        );
        
        INSERT INTO `account`
		(
		`txndate`,
		`desc`,
		`type`,
		`amount`,
		`txntype`,
		`name`,
		`isReceipt`,
		`paymentMode`,
		`bankMode`,
		`bankName`,
        `chAmount`
		)
		VALUES
		(
        p_in_txndate,
        "Contra Entry - Cash", -- p_in_desc
		"Contra Entry", -- p_in_type
        p_in_amount,
        "Income", --  p_in_txntype
        "", -- p_in_name
        0, -- p_in_isReceipt
        "Cash", -- p_in_paymentMode
        "", -- p_in_bankMode
        "", -- p_in_bankName
        0 --  `chAmount`
        );
	END IF;
    	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddDiagnosis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddDiagnosis`(
IN p_in_name varchar(100)
)
BEGIN
	INSERT INTO `diagnosis`
	(`Name`)
	VALUES
	(p_in_name );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddEquipment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddEquipment`(
IN p_in_name varchar(200),
IN p_in_name_lower varchar(200),
IN p_in_stock int,
IN p_in_inuse int,
IN p_in_damage int
)
BEGIN
	declare p_eno varchar(10);
    
    IF NOT EXISTS (SELECT 1 FROM `equipment` where name_lower = p_in_name_lower) THEN
    	select concat('E',ifnull(max(id),0) +1) into p_eno from `equipment`;
      	INSERT INTO `equipment`
		(`eno`,	`name`,	`name_lower`, stock, damage, inuse)
		VALUES (p_eno,p_in_name,p_in_name_lower,p_in_stock, p_in_damage, p_in_inuse );
	ELSE
		UPDATE `equipment`
		SET
		`stock` = p_in_stock,
		`damage` = p_in_damage,
		`inuse` = p_in_inuse
		WHERE `name_lower` = p_in_name_lower;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddExpenseType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddExpenseType`(
IN p_in_expensetype varchar(100)
)
BEGIN
	INSERT INTO `expensetype`
	(`ExpenseType`)
	VALUES
	(p_in_expensetype );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddHomeCarePlan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddHomeCarePlan`(
IN p_in_pno varchar(45),
IN p_in_name varchar(200),
IN p_in_type varchar(45),
IN p_in_date datetime
)
BEGIN

	IF extract(year from p_in_date) = 1 THEN
		SET p_in_date = NULL;
	END IF;

	INSERT INTO `homecareplan`
	(`Pno`,
	`Date`,
	`Type`,
    `PatientName`)
	VALUES
	(p_in_pno,
    p_in_date,
    p_in_type,
    p_in_name
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddIncomeType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddIncomeType`(
IN p_in_incometype varchar(100)
)
BEGIN
	INSERT INTO `incometype`
	(`IncomeType`)
	VALUES
	(p_in_incometype );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddMedicine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddMedicine`(
IN p_in_txndate datetime,
IN p_in_name varchar(200),
IN p_in_name_lower varchar(200),
IN p_in_stock_main int,
IN p_in_purchase_invdate datetime,
IN p_in_purchase_invno varchar(45),
IN p_in_purchase_batchno varchar(45),
IN p_in_purchase_expdate datetime,
IN p_in_purchase_mfgdate datetime,
IN p_in_purchase_rate decimal(10,2),
IN p_in_purchase_dealer varchar(200),
IN p_in_purchase_mainStock int
)
BEGIN
	declare p_mno varchar(10);
    declare p_m_id int;
    
    IF NOT EXISTS (SELECT 1 FROM `medicine` where NameLower = p_in_name_lower) THEN
    	
        select concat('M',ifnull(max(id),0) +1) into p_mno from `medicine`;
        
    	IF extract(year from p_in_purchase_invdate) = 1 THEN
			SET p_in_purchase_invdate = NULL;
		END IF;
		
		IF extract(year from p_in_purchase_expdate) = 1 THEN
			SET p_in_purchase_expdate = NULL;
		END IF;
		
		IF extract(year from p_in_purchase_mfgdate) = 1 THEN
			SET p_in_purchase_mfgdate = NULL;
		END IF;

		INSERT INTO `medicine`
		(`Mno`,	`Name`,	`NameLower`)
		VALUES (p_mno,p_in_name,p_in_name_lower);

		set p_m_id =  LAST_INSERT_ID();
         
        INSERT INTO `medicinestock`
		(`MedicineId`,`Main`,`Sub`,	`A_kit`,`B_kit`)
		VALUES (p_m_id, p_in_stock_main, 0, 0, 0);
         
        INSERT INTO `medicinepurchase`
		(
		`MedicineId`,
		`invdate`,
		`invno`,
		`batchno`,
		`expdate`,
		`mfgdate`,
		`rate`,
		`dealer`,
		`mainStock`,
		`subStock`,
		`return`)
		VALUES
		(
		p_m_id,
		p_in_purchase_invdate,
		p_in_purchase_invno,
		p_in_purchase_batchno,
		p_in_purchase_expdate,
		p_in_purchase_mfgdate,
		p_in_purchase_rate,
		p_in_purchase_dealer,
		p_in_purchase_mainStock,
		0,
		0);
 		
        CALL `spr_AddMedicineHistory`
		(p_m_id, 
		p_in_txndate, 
		p_mno, 
		p_in_name,
		'Add', -- txnType
		'To main stock', -- desc
		0, -- openingMain
        0, -- openingSub
        0, -- openingAKit
        0, -- openingBKit
		p_in_stock_main, -- qty
		p_in_stock_main, -- closingMain
		0, -- closingSub
        0, -- closingAKit
        0, -- closingBKit
        '', -- pno
        '' -- patientName
        );
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddMedicineHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddMedicineHistory`(
IN p_in_m_id int,
IN p_in_txnDate datetime,
IN p_in_mno varchar(45),
IN p_in_medName varchar(200),
IN p_in_txnType varchar(45),
IN p_in_desc varchar(45),
IN p_in_openingMain int,
IN p_in_openingSub int,
IN p_in_openingAKit int,
IN p_in_openingBKit int,
IN p_in_qty int,
IN p_in_closingMain int,
IN p_in_closingSub int,
IN p_in_closingAKit int,
IN p_in_closingBKit int,
IN p_in_pno varchar(45),
IN p_in_patientName  varchar(200)
)
BEGIN
	
    INSERT INTO `medicinehistory`
	(
	`MedicineId`,
	`txnDate`,
	`mno`,
	`medName`,
	`txnType`,
	`desc`,
	`openingMain`,
	`openingSub`,
	`openingAKit`,
	`openingBKit`,
	`qty`,
	`closingMain`,
	`closingSub`,
	`closingAKit`,
	`closingBKit`,
	`pno`,
	`patientName`)
	VALUES
	(
	p_in_m_id,
	p_in_txnDate,
	p_in_mno,
	p_in_medName,
	p_in_txnType,
	p_in_desc,
	p_in_openingMain,
	p_in_openingSub,
	p_in_openingAKit,
	p_in_openingBKit,
	p_in_qty,
	p_in_closingMain,
	p_in_closingSub,
	p_in_closingAKit,
	p_in_closingBKit,
	p_in_pno,
	p_in_patientName);

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddPanjayath` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddPanjayath`(
IN p_in_name varchar(100)
)
BEGIN
	INSERT INTO `panjayath`
	(`Name`)
	VALUES
	(p_in_name );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddPatient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddPatient`(
IN p_in_pno varchar(45),
IN p_in_name varchar(200),
IN p_in_age varchar(45),
IN p_in_address varchar(255),
IN p_in_grade varchar(45),
IN p_in_gender varchar(45),
IN p_in_panjayath varchar(100),
IN p_in_wardno varchar(45),
IN p_in_phone1 varchar(45),
IN p_in_phone2 varchar(45),
IN p_in_regdate datetime,
IN p_in_expdate datetime,
IN p_in_dropdate datetime,
IN p_in_volunteer varchar(100),
IN p_in_diagnosis varchar(100),
IN p_in_temp tinyint,
IN p_in_route varchar(100),
IN p_in_homecareplan varchar(45),
OUT p_out varchar(10)
)
BEGIN
	
    IF EXISTS (SELECT 1 FROM patient where PNo = p_in_pno) THEN
    	SET p_out = "1";
    ELSE
    	IF extract(year from p_in_regdate) = 1 THEN
			SET p_in_regdate = NULL;
		END IF;
		
		IF extract(year from p_in_expdate) = 1 THEN
			SET p_in_expdate = NULL;
		END IF;
		
		IF extract(year from p_in_dropdate) = 1 THEN
			SET p_in_dropdate = NULL;
		END IF;

		INSERT INTO `patient`
		(
		`PNo`,
		`Name`,
		`Age`,
		`Address`,
		`Grade`,
		`Gender`,
		`Panjayath`,
		`WardNo`,
		`Phone1`,
		`Phone2`,
		`RegDate`,
		`ExpDate`,
		`DropDate`,
		`Volunteer`,
		`Diagnosis`,
		`Temp`,
		`Route`,
		`HomeCarePlan`)
		VALUES
		(
		p_in_pno,
		p_in_name,
		p_in_age,
		p_in_address,
		p_in_grade,
		p_in_gender,
		p_in_panjayath,
		p_in_wardno,
		p_in_phone1,
		p_in_phone2,
		p_in_regdate,
		p_in_expdate,
		p_in_dropdate,
		p_in_volunteer,
		p_in_diagnosis,
		p_in_temp,
		p_in_route,
		p_in_homecareplan
		);
        
        SET p_out = "0";
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddRehabilitation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddRehabilitation`(
IN p_in_pno varchar(45),
IN p_in_desc varchar(200),
IN p_in_qty int,
IN p_in_date datetime
)
BEGIN

	IF extract(year from p_in_date) = 1 THEN
		SET p_in_date = NULL;
	END IF;

	INSERT INTO `rehabilitation`
	(`Pno`,
	`Date`,
	`Description`,
    `Quantity`)
	VALUES
	(p_in_pno,
    p_in_date,
    p_in_desc,
    p_in_qty
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddRoute` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddRoute`(
IN p_in_name varchar(100)
)
BEGIN
	INSERT INTO `route`
	(`Name`)
	VALUES
	(p_in_name );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_AddVolunteer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_AddVolunteer`(
IN p_in_name varchar(100),
IN p_in_location varchar(100),
IN p_in_phone varchar(45)
)
BEGIN
	INSERT INTO `volunteer`
	(`Name`,
	`Location`,
	`Phone`)
	VALUES
	(p_in_name,
    p_in_location,
    p_in_phone
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_DisposeEquipment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_DisposeEquipment`(
IN p_in_txndate datetime,
IN p_in_id int,
IN p_in_desc varchar(200),
IN p_in_eno varchar(45),
IN p_in_qty int,
IN p_in_name varchar(200),
OUT p_out int
)
BEGIN
	
    Declare p_receiptNo int;
    
	IF extract(year from p_in_txndate) = 1 THEN
		SET p_in_txndate = NULL;
	END IF;
	
	IF EXISTS (SELECT 1 FROM `equipment` where Id = p_in_id) THEN
      	INSERT INTO `equipmentdispose`
			(
			`EquipmentId`,
			`Eno`,
			`Name`,
			`Desc`,
			`Qty`,
			`TxnDate`)
			VALUES
			(
			p_in_id,
			p_in_eno,
			p_in_name,
			p_in_desc,
			p_in_qty,
			p_in_txndate);
         
        set p_out =  LAST_INSERT_ID();
        
		UPDATE `equipment`
		SET
		damage = (damage - p_in_qty)
		WHERE Id = p_in_id;
	END IF;
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetAccountLedger` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetAccountLedger`(
IN p_in_fromdate datetime,
IN p_in_todate datetime
)
BEGIN

SELECT 
	`account`.`Id`,
    `account`.`txndate`,
    `account`.`desc`,
    `account`.`type`,
    `account`.`amount`,
    `account`.`txntype`,
    `account`.`name`,
    `account`.`receiptNo`,
    `account`.`isReceipt`,
    `account`.`paymentMode`,
    `account`.`bankMode`,
    `account`.`bankName`,
    `account`.`txnNo`,
    `account`.`chNo`,
    `account`.`chdate`,
    `account`.`chBank`,
    `account`.`chAmount`
FROM `account`
WHERE 
	(`account`.`txntype` = 'Income' OR `account`.`txntype` = 'Expense') AND
    `account`.`amount` != 0 AND
    `account`.`txndate` >= p_in_fromdate AND
    `account`.`txndate` <= p_in_todate
;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetAccountReceipt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetAccountReceipt`(
IN p_in_id varchar(2000)
)
BEGIN

SELECT 
	`account`.`Id`,
    `account`.`txndate`,
    `account`.`desc`,
    `account`.`type`,
    `account`.`amount`,
    `account`.`txntype`,
    `account`.`name`,
    `account`.`receiptNo`,
    `account`.`isReceipt`,
    `account`.`paymentMode`,
    `account`.`bankMode`,
    `account`.`bankName`,
    `account`.`txnNo`,
    `account`.`chNo`,
    `account`.`chdate`,
    `account`.`chBank`,
    `account`.`chAmount`
FROM `account`
WHERE FIND_IN_SET(Id, p_in_id)
	and isReceipt = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetBankList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetBankList`()
BEGIN
	select Id, Name,IsCash from bank order by Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetCenterDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetCenterDetails`()
BEGIN
SELECT `center`.`Id` AS _id,
    `center`.`Name`,
    `center`.`Address`,
    `center`.`Desc`,
    `center`.`Location`,
    `center`.`Phone`,
    `center`.`RegNo`,
    `center`.`AddressMal`,
     `center`.`DescMal`,
    `center`.`LocationMal`,
    `center`.`NameMal`,
    `center`.`ReceiptNo`,
    `center`.`MedExpiryDays`,
    `center`.`MedThresholdCount`,
    `center`.`ValidTill`,
    `center`.`TodayAPI`
FROM `center`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetChequeReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetChequeReport`(
IN p_in_status varchar(20)
)
BEGIN

	IF p_in_status = 'All' THEN
		SELECT 
			Id,txndate,`desc`,`type`,amount,txntype,`name`,receiptNo,isReceipt,paymentMode,bankMode,
			bankName,txnNo,chNo,chdate,chBank,chAmount
		FROM `account`
		WHERE 
			bankMode = "Cheque";
    ELSEIF p_in_status = 'Pending' THEN
		SELECT 
			Id,txndate,`desc`,`type`,amount,txntype,`name`,receiptNo,isReceipt,paymentMode,bankMode,
			bankName,txnNo,chNo,chdate,chBank,chAmount
		FROM `account`
		WHERE 
			bankMode = "Cheque" AND
            amount = 0;
    ELSEIF p_in_status = 'Cleared' THEN
		SELECT 
			Id,txndate,`desc`,`type`,amount,txntype,`name`,receiptNo,isReceipt,paymentMode,bankMode,
			bankName,txnNo,chNo,chdate,chBank,chAmount
		FROM `account`
		WHERE 
			bankMode = "Cheque" AND
            amount != 0;
    END IF;

	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetCheques` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetCheques`()
BEGIN
SELECT 
	`account`.`Id`,
    `account`.`txndate`,
    `account`.`desc`,
    `account`.`type`,
    `account`.`amount`,
    `account`.`txntype`,
    `account`.`name`,
    `account`.`receiptNo`,
    `account`.`isReceipt`,
    `account`.`paymentMode`,
    `account`.`bankMode`,
    `account`.`bankName`,
    `account`.`txnNo`,
    `account`.`chNo`,
    `account`.`chdate`,
    `account`.`chBank`,
    `account`.`chAmount`
FROM `account`
WHERE 
    `account`.`amount` = 0 AND
    `account`.`bankMode` = 'Cheque'
;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetDashboard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetDashboard`()
BEGIN

	select sum(Main) Main, Sum(Sub) Sub, Sum(A_kit) A_Kit, Sum(B_kit) B_Kit
	from medicinestock;
    
    select Grade, Count(Id) total from patient group by Grade;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetDiagnosisList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetDiagnosisList`()
BEGIN
	select Id, Name from diagnosis order by Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetDisposeReceipt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetDisposeReceipt`(
IN p_in_id varchar(2000)
)
BEGIN

	SELECT
		`equipmentdispose`.`EquipmentId`,
		`equipmentdispose`.`Eno`,
		`equipmentdispose`.`Name`,
		`equipmentdispose`.`Desc`,
		`equipmentdispose`.`Qty`,
		`equipmentdispose`.`TxnDate`
	FROM `equipmentdispose`
    WHERE FIND_IN_SET(Id, p_in_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetEquipmentDisposeReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetEquipmentDisposeReport`(
IN p_in_fromDate datetime,
IN p_in_toDate datetime
)
BEGIN

	SELECT 
		`equipmentdispose`.`Id`,
		`equipmentdispose`.`EquipmentId`,
		`equipmentdispose`.`Eno`,
		`equipmentdispose`.`Name`,
		`equipmentdispose`.`Desc`,
		`equipmentdispose`.`Qty`,
		`equipmentdispose`.`TxnDate`
	FROM `equipmentdispose`
    WHERE
		TxnDate >= p_in_fromDate AND
        TxnDate <= p_in_toDate;		   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetEquipmentReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetEquipmentReport`(
IN p_in_eno varchar(45)
)
BEGIN

	IF p_in_eno = '' THEN
		select
			t.Id,
			t.patientname,
			t.qty,
			t.outdate,
			t.indate,
            t.pno,
			e.name
		from 
		equipmenttracker t
		inner join equipment e on t.equipmentid = e.id
        order by e.name;
		
    ELSE
		select
			t.Id,
			t.patientname,
			t.qty,
			t.outdate,
			t.indate,
            t.pno,
			e.name
		from 
		equipmenttracker t
		inner join equipment e on t.equipmentid = e.id
		where e.eno = p_in_eno
		order by e.name;
         
    END IF;
		   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetEquipments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetEquipments`()
BEGIN
	
   SELECT `equipment`.`Id`,
		`equipment`.`eno`,
		`equipment`.`name`,
		`equipment`.`name_lower`,
		`equipment`.`stock`,
		`equipment`.`damage`,
		`equipment`.`inuse`
	FROM `equipment`
    ORDER BY `equipment`.`name`;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetEquipmentTracker` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetEquipmentTracker`(
IN p_in_eno varchar(45)
)
BEGIN

	select
		t.Id,
		t.patientname,
        t.qty,
        t.outdate,
        t.indate
    from 
	equipmenttracker t
	inner join equipment e on t.equipmentid = e.id
	where e.eno = p_in_eno
    order by t.outdate;
		   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetExpenseTypeList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetExpenseTypeList`()
BEGIN
	select Id, ExpenseType from expensetype order by ExpenseType;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetHomeCarePlan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetHomeCarePlan`(
IN p_in_fromdate datetime,
IN p_in_todate datetime
)
BEGIN

	SELECT `homecareplan`.`Id`,
		`homecareplan`.`Pno`,
		`homecareplan`.`Date`,
		`homecareplan`.`Type`,
		`homecareplan`.`PatientName`
	FROM `homecareplan`
    where `homecareplan`.`Date` >= p_in_fromdate and
		`homecareplan`.`Date` <= p_in_todate
	order by `homecareplan`.`Date`
    ;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetHomeCarePlanList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetHomeCarePlanList`(
IN p_in_pno varchar(45)
)
BEGIN
	SELECT 
    `Id`,
    `Date`,
    `Type`,
    `PatientName`
FROM `homecareplan`
where Pno = p_in_pno
order by `Date`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetIncomeTypeList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetIncomeTypeList`()
BEGIN
	select Id, IncomeType from incometype order by IncomeType;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetLoginDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetLoginDetails`(
IN p_in_UserName varchar(45)
)
BEGIN
 select password from login where username = p_in_UserName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetMedicineHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetMedicineHistory`(
IN p_in_mno varchar(50),
IN p_in_fromDate datetime,
IN p_in_toDate datetime
)
BEGIN

	SELECT 
		`medicinehistory`.`Id`,
		`medicinehistory`.`MedicineId`,
		`medicinehistory`.`txnDate`,
		`medicinehistory`.`mno`,
		`medicinehistory`.`medName`,
		`medicinehistory`.`txnType`,
		`medicinehistory`.`desc`,
		`medicinehistory`.`openingMain`,
		`medicinehistory`.`openingSub`,
		`medicinehistory`.`openingAKit`,
		`medicinehistory`.`openingBKit`,
		`medicinehistory`.`qty`,
		`medicinehistory`.`closingMain`,
		`medicinehistory`.`closingSub`,
		`medicinehistory`.`closingAKit`,
		`medicinehistory`.`closingBKit`,
		`medicinehistory`.`pno`,
		`medicinehistory`.`patientName`
	FROM `medicinehistory`
    WHERE
		mno = p_in_mno AND
        txnDate >= p_in_fromDate AND
        txnDate <= p_in_toDate;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetMedicinePatientHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetMedicinePatientHistory`(
IN p_in_pno varchar(20)
)
BEGIN
	
    select 
		txnDate,
        medName,
        qty
	from medicinehistory
	WHERE pno = p_in_pno
    order by txnDate;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetMedicinePurchaseDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetMedicinePurchaseDetails`(
IN p_in_mno varchar(20)
)
BEGIN

	select p.`Id`,
		p.`MedicineId`,
		p.`invdate`,
		p.`invno`,
		p.`batchno`,
		p.`expdate`,
		p.`mfgdate`,
		p.`rate`,
		p.`dealer`,
		p.`mainStock`,
		p.`subStock`,
		p.`return`
	from medicinepurchase p
	inner join medicine m on p.MedicineId = m.Id
	where m.Mno = p_in_mno;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetMedicines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetMedicines`()
BEGIN
	
    select 
		m.id,
		m.mno,
		m.name,
		st.main,
		st.sub,
		st.A_kit,
		st.B_kit 
	from medicine m
	inner join medicinestock st on m.id = st.MedicineId
    order by m.name;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetMedicineStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetMedicineStock`(
IN p_in_mno varchar(20)
)
BEGIN
	
    select 
		st.main,
		st.sub,
		st.A_kit,
		st.B_kit 
	from medicine m
	inner join medicinestock st on m.id = st.MedicineId
   WHERE m.Mno = p_in_mno;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetPanjayathList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetPanjayathList`()
BEGIN
	select Id, Name from panjayath order by Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetPatientDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetPatientDetails`(
IN p_in_pno varchar(20)
)
BEGIN

	select 
	`Id`,`PNo`,`Name`,`Age`,`Address`,`Grade`,`Gender`,`Panjayath`,`WardNo`,`Phone1`,`Phone2`,
	`RegDate`,`ExpDate`,`DropDate`,`Volunteer`,`Diagnosis`,`Temp`,`Route`,`HomeCarePlan`
	from patient
	where Pno = p_in_pno;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetPatientList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetPatientList`(
IN p_in_status varchar(20)
)
BEGIN

	IF p_in_status = 'Active' THEN
		select 
		`Id`,`PNo`,`Name`,`Age`,`Address`,`Grade`,`Gender`,`Panjayath`,`WardNo`,`Phone1`,`Phone2`,
		`RegDate`,`ExpDate`,`DropDate`,`Volunteer`,`Diagnosis`,`Temp`,`Route`,`HomeCarePlan`
		from patient
        where ExpDate is null and DropDate is null and Temp = 0
        Order by `Name`;
	ELSEIF p_in_status = 'Expired' THEN
		select 
		`Id`,`PNo`,`Name`,`Age`,`Address`,`Grade`,`Gender`,`Panjayath`,`WardNo`,`Phone1`,`Phone2`,
		`RegDate`,`ExpDate`,`DropDate`,`Volunteer`,`Diagnosis`,`Temp`,`Route`,`HomeCarePlan`
		from patient
        where ExpDate is not null
        Order by `Name`;
    ELSEIF p_in_status = 'Temp' THEN
		select 
		`Id`,`PNo`,`Name`,`Age`,`Address`,`Grade`,`Gender`,`Panjayath`,`WardNo`,`Phone1`,`Phone2`,
		`RegDate`,`ExpDate`,`DropDate`,`Volunteer`,`Diagnosis`,`Temp`,`Route`,`HomeCarePlan`
		from patient
         where Temp = 1
         Order by `Name`;
    ELSEIF p_in_status = 'Dropout' THEN 
		select 
		`Id`,`PNo`,`Name`,`Age`,`Address`,`Grade`,`Gender`,`Panjayath`,`WardNo`,`Phone1`,`Phone2`,
		`RegDate`,`ExpDate`,`DropDate`,`Volunteer`,`Diagnosis`,`Temp`,`Route`,`HomeCarePlan`
		from patient
        where DropDate is not null
        Order by `Name`;
    ELSEIF p_in_status = 'ActiveWithTemp' THEN 
		select 
		`Id`,`PNo`,`Name`,`Age`,`Address`,`Grade`,`Gender`,`Panjayath`,`WardNo`,`Phone1`,`Phone2`,
		`RegDate`,`ExpDate`,`DropDate`,`Volunteer`,`Diagnosis`,`Temp`,`Route`,`HomeCarePlan`
		from patient
        where ExpDate is null and DropDate is null
        Order by `Name`;
	ELSEIF p_in_status = 'All' THEN 
		select 
		`Id`,`PNo`,`Name`,`Age`,`Address`,`Grade`,`Gender`,`Panjayath`,`WardNo`,`Phone1`,`Phone2`,
		`RegDate`,`ExpDate`,`DropDate`,`Volunteer`,`Diagnosis`,`Temp`,`Route`,`HomeCarePlan`
		from patient
        Order by `Name`;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetRehabilitation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetRehabilitation`(
IN p_in_pno varchar(45)
)
BEGIN
	SELECT 
    `Id`,
    `Date`,
    `Description`,
    `Quantity`
FROM `rehabilitation`
where Pno = p_in_pno
order by `Date`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetReportExpiry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetReportExpiry`(
IN p_in_fromDate datetime,
IN p_in_toDate datetime
)
BEGIN

	SELECT 
		m.Id, m.Name, m.Mno, p.expdate, p.mainStock, p. subStock  
	from medicinepurchase p
	inner join medicine m on p.MedicineId = m.id
    WHERE
		p.expdate >= p_in_fromDate AND
        p.expdate <= p_in_toDate AND
        (p.mainStock > 0 OR p.subStock > 0) AND
        p.`return` = 0
    ORDER BY p.expdate;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetReportExpiryCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetReportExpiryCount`(
IN p_in_fromDate datetime,
IN p_in_toDate datetime
)
BEGIN

	SELECT 
		Count(Id) as medCount
	FROM medicinepurchase
    WHERE
		expdate >= p_in_fromDate AND
        expdate <= p_in_toDate AND
        (mainStock > 0 OR subStock > 0) AND
        `return` = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetReportReceipts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetReportReceipts`(
IN p_in_fromdate datetime,
IN p_in_todate datetime
)
BEGIN

SELECT 
	`account`.`Id`,
    `account`.`txndate`,
    `account`.`desc`,
    `account`.`type`,
    `account`.`amount`,
    `account`.`txntype`,
    `account`.`name`,
    `account`.`receiptNo`,
    `account`.`isReceipt`,
    `account`.`paymentMode`,
    `account`.`bankMode`,
    `account`.`bankName`,
    `account`.`txnNo`,
    `account`.`chNo`,
    `account`.`chdate`,
    `account`.`chBank`,
    `account`.`chAmount`
FROM `account`
WHERE 
	(`account`.`txntype` = 'Income' OR `account`.`txntype` = 'Expense') AND
    `account`.`isReceipt` = 1 AND
    `account`.`txndate` >= p_in_fromdate AND
    `account`.`txndate` <= p_in_todate
;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetReportThreshold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetReportThreshold`(
IN p_in_thresholdCount int
)
BEGIN

	select m.Name, m.Mno, s.Main
	from medicinestock s
	inner join medicine m on s.MedicineId = m.id
    where s.Main > 0 AND s.Main <= p_in_thresholdCount
    order by m.Name;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetReportThresholdCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetReportThresholdCount`(
IN p_in_thresholdCount int
)
BEGIN

	SELECT 
		Count(Id) as medCount
	FROM medicinepurchase
    WHERE
		mainStock > 0 AND 
        mainStock <= p_in_thresholdCount AND
        `return` = 0;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetRouteList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetRouteList`()
BEGIN
	select Id, Name from route order by Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_GetVolunteerList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_GetVolunteerList`()
BEGIN
	select Id, Name, Location, Phone from volunteer order by Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_MedicineInbound` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_MedicineInbound`(
IN p_in_txndate datetime,
IN p_in_mno varchar(45),
IN p_in_purchase_invdate datetime,
IN p_in_purchase_invno varchar(45),
IN p_in_purchase_batchno varchar(45),
IN p_in_purchase_expdate datetime,
IN p_in_purchase_mfgdate datetime,
IN p_in_purchase_rate decimal(10,2),
IN p_in_purchase_dealer varchar(200),
IN p_in_qty int
)
BEGIN

    Declare p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id INT;
    Declare p_med_name varchar(200);
    
    IF EXISTS (SELECT 1 FROM `medicine` where Mno = p_in_mno) THEN
    	
		select 
			s.Main, s.Sub, s.A_kit, s.B_kit, s.MedicineId, m.Name 
			into p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, p_med_name
		from medicinestock s
		inner join medicine m on s.MedicineId = m.Id
		where m.Mno = p_in_mno;
        
        IF extract(year from p_in_purchase_invdate) = 1 THEN
			SET p_in_purchase_invdate = NULL;
		END IF;
		
		IF extract(year from p_in_purchase_expdate) = 1 THEN
			SET p_in_purchase_expdate = NULL;
		END IF;
		
		IF extract(year from p_in_purchase_mfgdate) = 1 THEN
			SET p_in_purchase_mfgdate = NULL;
		END IF;

        update medicinestock 
		set Main = (Main + p_in_qty)
		where MedicineId = p_m_id;
         
        INSERT INTO `medicinepurchase`
		(
		`MedicineId`,
		`invdate`,
		`invno`,
		`batchno`,
		`expdate`,
		`mfgdate`,
		`rate`,
		`dealer`,
		`mainStock`,
		`subStock`,
		`return`)
		VALUES
		(
		p_m_id,
		p_in_purchase_invdate,
		p_in_purchase_invno,
		p_in_purchase_batchno,
		p_in_purchase_expdate,
		p_in_purchase_mfgdate,
		p_in_purchase_rate,
		p_in_purchase_dealer,
		p_in_qty,
		0,
		0);
 		
        CALL `spr_AddMedicineHistory`
		(p_m_id, 
		p_in_txndate, 
		p_in_mno, 
		p_med_name,
		'Inbound', -- txnType
		'To main stock', -- desc
		p_openMain, -- openingMain
        p_openSub, -- openingSub
        p_openAKit, -- openingAKit
        p_openBKit, -- openingBKit
		p_in_qty, -- qty
		(p_openMain + p_in_qty), -- closingMain
		p_openSub, -- closingSub
        p_openAKit, -- closingAKit
        p_openBKit, -- closingBKit
        '', -- pno
        '' -- patientName
        );
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_MedicineReturn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_MedicineReturn`(
IN p_in_txndate datetime,
IN p_in_mno varchar(45),
IN p_in_mainRet int,
IN p_in_mainStock int,
IN p_in_subRet int,
IN p_in_subStock int,
IN p_in_purId int
)
BEGIN

    Declare p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id INT;
    Declare p_med_name varchar(200);
    
    IF EXISTS (SELECT 1 FROM `medicine` where Mno = p_in_mno) THEN
    	
        select 
			s.Main, s.Sub, s.A_kit, s.B_kit, s.MedicineId, m.Name 
			into p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, p_med_name
		from medicinestock s
		inner join medicine m on s.MedicineId = m.Id
		where m.Mno = p_in_mno;
        
        update medicinestock 
			set Main = (Main - p_in_mainRet),
			Sub = (Sub - p_in_subRet)
		where MedicineId = p_m_id;
        
        update medicinepurchase
			set mainStock =  (mainStock - p_in_mainRet),
            subStock =  (subStock - p_in_subRet)
		where Id = p_in_purId;
        
        INSERT INTO `medicinepurchase`
		(
		`MedicineId`,
		`invdate`,
		`invno`,
		`batchno`,
		`expdate`,
		`mfgdate`,
		`rate`,
		`dealer`,
		`mainStock`,
		`subStock`,
		`return`)
		VALUES
		(
		p_m_id,
		p_in_txndate,
		'',
		'',
		p_in_txndate,
		null,
		0,
		'',
		(p_in_mainRet + p_in_subRet),
		0,
		1);
        
        CALL `spr_AddMedicineHistory`
		(p_m_id, 
		p_in_txndate, 
		p_in_mno, 
		p_med_name,
		'Return', -- txnType
		'Return stock', -- desc
		p_openMain, -- openingMain
        p_openSub, -- openingSub
        p_openAKit, -- openingAKit
        p_openBKit, -- openingBKit
		(p_in_mainRet + p_in_subRet), -- qty
		(p_openMain - p_in_mainRet), -- closingMain
		(p_openSub - p_in_subRet), -- closingSub
        p_openAKit, -- closingAKit
        p_openBKit, -- closingBKit
        '', -- pno
        '' -- patientName
        );
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_MedicineTransfer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_MedicineTransfer`(
IN p_in_txndate datetime,
IN p_in_mno varchar(45),
IN p_in_qty int,
IN p_in_source varchar(50),
IN p_in_transferto varchar(50)
)
BEGIN

    Declare p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, p_purId, p_purMainStock, p_qty INT;
    Declare p_med_name varchar(200);
    DEClARE curPurch 
		CURSOR FOR 
			select 
			p.Id, p.mainStock 
		from 
			medicinepurchase p
			inner join medicine m on p.MedicineId = m.Id
		where 
			m.Mno = p_in_mno
			and p.mainStock > 0
			and p.expdate is not null
            and `return` = 0
		order by p.expdate;
    
    IF EXISTS (SELECT 1 FROM `medicine` where Mno = p_in_mno) THEN
    	
        SET p_qty = p_in_qty;
        
		select 
			s.Main, s.Sub, s.A_kit, s.B_kit, s.MedicineId, m.Name 
			into p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, p_med_name
		from medicinestock s
		inner join medicine m on s.MedicineId = m.Id
		where m.Mno = p_in_mno;
        
        update medicinestock 
		set Main = (Main - p_in_qty),
        Sub = (Sub + p_in_qty)
		where MedicineId = p_m_id;

        OPEN curPurch;
        
        transferLoop: LOOP
			FETCH curPurch INTO p_purId, p_purMainStock;
                        
            IF p_purMainStock <= p_qty THEN
				update medicinepurchase
				set 
					subStock = (subStock + mainStock),
					mainStock = 0
				where Id = p_purId;
                SET p_qty = p_qty - p_purMainStock;
            ELSE
				update medicinepurchase
				set 
					subStock = (subStock + p_qty),
					mainStock = (mainStock - p_qty)
				where Id = p_purId;
                SET p_qty = 0;
            END IF;

			IF p_qty = 0 THEN
				LEAVE transferLoop;
			END IF;
        END LOOP transferLoop;
        CLOSE curPurch;

        CALL `spr_AddMedicineHistory`
		(p_m_id, 
		p_in_txndate, 
		p_in_mno, 
		p_med_name,
		'Transfer', -- txnType
		'Main to Sub', -- desc
		p_openMain, -- openingMain
        p_openSub, -- openingSub
        p_openAKit, -- openingAKit
        p_openBKit, -- openingBKit
		p_in_qty, -- qty
		(p_openMain - p_in_qty), -- closingMain
		(p_openSub + p_in_qty), -- closingSub
        p_openAKit, -- closingAKit
        p_openBKit, -- closingBKit
        '', -- pno
        '' -- patientName
        );
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_MedicineTransferKitStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_MedicineTransferKitStock`(
IN p_in_txndate datetime,
IN p_in_mno varchar(45),
IN p_in_qty int,
IN p_in_stocktype varchar(50),
IN p_in_pno varchar(50),
IN p_in_patientname varchar(200)
)
BEGIN

    Declare p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, 
		p_purId, p_purSubStock, p_closeAKit, p_closeBKit INT;
    Declare p_med_name varchar(200);
        
    IF EXISTS (SELECT 1 FROM `medicine` where Mno = p_in_mno) THEN
        
		select 
			s.Main, s.Sub, s.A_kit, s.B_kit, s.MedicineId, m.Name 
			into p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, p_med_name
		from medicinestock s
		inner join medicine m on s.MedicineId = m.Id
		where m.Mno = p_in_mno;
        
        IF p_in_stocktype = "A Kit" THEN
			update medicinestock 
			set A_kit = (A_kit - p_in_qty)
			where MedicineId = p_m_id;
            
            SET p_closeAKit = p_openAKit - p_in_qty;
            SET p_closeBKit = p_openBKit;
            
        ELSE
			update medicinestock 
			set B_kit = (B_kit - p_in_qty)
			where MedicineId = p_m_id;
            
            SET p_closeAKit = p_openAKit;
            SET p_closeBKit = p_openBKit - p_in_qty;
            
        END IF;
        
        CALL `spr_AddMedicineHistory`
		(p_m_id, 
		p_in_txndate, 
		p_in_mno, 
		p_med_name,
		'Transfer', -- txnType
		CONCAT(p_in_stocktype, ' to OP'), -- desc
		p_openMain, -- openingMain
        p_openSub, -- openingSub
        p_openAKit, -- openingAKit
        p_openBKit, -- openingBKit
		p_in_qty, -- qty
		p_openMain, -- closingMain
		p_openSub, -- closingSub
        p_closeAKit, -- closingAKit
        p_closeBKit, -- closingBKit
        p_in_pno, -- pno
        p_in_patientname -- patientName
        );
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_MedicineTransferSubStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_MedicineTransferSubStock`(
IN p_in_txndate datetime,
IN p_in_mno varchar(45),
IN p_in_qty int,
IN p_in_source varchar(50),
IN p_in_transferto varchar(50),
IN p_in_pno varchar(50),
IN p_in_patientname varchar(200)
)
BEGIN

    Declare p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, 
		p_purId, p_purSubStock, p_qty ,p_closeAKit, p_closeBKit INT;
    Declare p_med_name varchar(200);
    DEClARE curPurch 
		CURSOR FOR 
			select 
			p.Id, p.subStock 
		from 
			medicinepurchase p
			inner join medicine m on p.MedicineId = m.Id
		where 
			m.Mno = p_in_mno
			and p.subStock > 0
			and p.expdate is not null
            and `return` = 0
		order by p.expdate;
    
    IF EXISTS (SELECT 1 FROM `medicine` where Mno = p_in_mno) THEN
    	
        SET p_qty = p_in_qty;
        
		select 
			s.Main, s.Sub, s.A_kit, s.B_kit, s.MedicineId, m.Name 
			into p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, p_med_name
		from medicinestock s
		inner join medicine m on s.MedicineId = m.Id
		where m.Mno = p_in_mno;
        
        update medicinestock 
		set Sub = (Sub - p_in_qty)
		where MedicineId = p_m_id;
        
        IF p_in_transferto = "A Kit" THEN
			update medicinestock 
			set A_kit = (A_kit + p_in_qty)
			where MedicineId = p_m_id;
            
            SET p_closeAKit = p_openAKit + p_in_qty;
            SET p_closeBKit = p_openBKit;
            
        ELSEIF p_in_transferto = "B Kit" THEN
			update medicinestock 
			set B_kit = (B_kit + p_in_qty)
			where MedicineId = p_m_id;
            
            SET p_closeAKit = p_openAKit;
            SET p_closeBKit = p_openBKit + p_in_qty;
            
        ELSE
			SET p_closeAKit = p_openAKit;
			SET p_closeBKit = p_openBKit;
        END IF;
        
        OPEN curPurch;
        
        transferLoop: LOOP
			FETCH curPurch INTO p_purId, p_purSubStock;
                       
            IF p_purSubStock <= p_qty THEN
				update medicinepurchase
				set 
					subStock = 0
				where Id = p_purId;
                SET p_qty = p_qty - p_purSubStock;
            ELSE
				update medicinepurchase
				set 
					subStock = (subStock - p_qty)
				where Id = p_purId;
                SET p_qty = 0;
            END IF;
            
            IF p_qty = 0 THEN
				LEAVE transferLoop;
			END IF;
        
        END LOOP transferLoop;
        CLOSE curPurch;
        
        CALL `spr_AddMedicineHistory`
		(p_m_id, 
		p_in_txndate, 
		p_in_mno, 
		p_med_name,
		'Transfer', -- txnType
		CONCAT('Sub to ', p_in_transferto), -- desc
		p_openMain, -- openingMain
        p_openSub, -- openingSub
        p_openAKit, -- openingAKit
        p_openBKit, -- openingBKit
		p_in_qty, -- qty
		(p_openMain), -- closingMain
		(p_openSub - p_in_qty), -- closingSub
        p_closeAKit, -- closingAKit
        p_closeBKit, -- closingBKit
        p_in_pno, -- pno
        p_in_patientname -- patientName
        );
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_ProcessCheque` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_ProcessCheque`(
IN p_in_txndate datetime,
IN p_in_id int
)
BEGIN

	declare p_amount DECIMAL(10,2);
	select chAmount into p_amount from `account` where `Id` = p_in_id;

	UPDATE `account`
	SET
	`txndate` = p_in_txndate,
	`amount` = p_amount
	WHERE `Id` = p_in_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_ReportAccountDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_ReportAccountDetails`(
IN p_in_fromdate datetime,
IN p_in_todate datetime,
IN p_in_txntype varchar(20)
)
BEGIN

SELECT 
    `account`.`type`,
    `account`.`txntype`,
    sum(`account`.`amount`) amt
FROM `account`
WHERE 
	`account`.`txndate` >= p_in_fromdate AND 
    `account`.`txndate` <= p_in_todate AND 
    `account`.`amount` != 0 AND
    `account`.`txntype` = p_in_txntype
GROUP BY
	 `account`.`type`, `account`.`txntype`
ORDER BY `account`.`type`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_ReportDaybookBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_ReportDaybookBalance`(
IN p_in_fromdate datetime
)
BEGIN

select bankname, sum(amount) amt from account
where txndate < p_in_fromdate
group by bankname;

select bankname, sum(amount) amt from account
where txndate <= p_in_fromdate
group by bankname;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_ReportDaybookLedger` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_ReportDaybookLedger`(
IN p_in_fromdate datetime
)
BEGIN

SELECT `account`.`Id`,
    `account`.`type`,
    `account`.`amount`,
    `account`.`txntype`,
    `account`.`bankName`
FROM `account`
WHERE `account`.`txndate` = p_in_fromdate
	AND `account`.`amount` != 0
ORDER BY `account`.`type`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_ReportMonthlyBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_ReportMonthlyBalance`(
IN p_in_fromdate datetime,
IN p_in_todate datetime
)
BEGIN

select bankname, sum(amount) amt from account
where txndate < p_in_fromdate
group by bankname;

select bankname, sum(amount) amt from account
where txndate <= p_in_todate
group by bankname;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_ReturnEquipment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_ReturnEquipment`(
IN p_in_indate datetime,
IN p_in_eno varchar(45),
IN p_in_qty int,
IN p_in_id int
)
BEGIN
	
	IF EXISTS (SELECT 1 FROM `equipment` where eno = p_in_eno) THEN
   
		UPDATE `equipment`
		SET
		stock = (stock + p_in_qty),
		inuse = (inuse - p_in_qty)
		WHERE eno = p_in_eno;
    
		UPDATE `equipmenttracker`
        SET indate = p_in_indate
		WHERE Id = p_in_id;
        
	END IF;
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_TransferEquipment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_TransferEquipment`(
IN p_in_outdate datetime,
IN p_in_eno varchar(45),
IN p_in_qty int,
IN p_in_pno varchar(45),
IN p_in_patientname varchar(200)
)
BEGIN
	
    Declare p_e_id int;
	
	IF EXISTS (SELECT 1 FROM `equipment` where eno = p_in_eno) THEN
    
		select Id into p_e_id from equipment where eno = p_in_eno;
    
		UPDATE `equipment`
		SET
		stock = (stock - p_in_qty),
		inuse = (inuse + p_in_qty)
		WHERE Id = p_e_id;
    
		INSERT INTO `equipmenttracker`
		(
		`EquipmentId`,
		`patientname`,
		`pno`,
		`qty`,
		`outdate`,
		`indate`)
		VALUES
		(
		p_e_id,
		p_in_patientname,
		p_in_pno,
		p_in_qty,
		p_in_outdate,
		null);
        
	END IF;
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateAccountLedger` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateAccountLedger`(
IN p_in_id int,
IN p_in_desc varchar(200),
IN p_in_type varchar(45),
IN p_in_amount DECIMAL(10,2),
IN p_in_name varchar(200),
IN p_in_isReceipt tinyint,
IN p_in_paymentMode varchar(45),
IN p_in_bankMode varchar(45),
IN p_in_bankName varchar(200),
IN p_in_txnNo varchar(100),
IN p_in_chNo varchar(45),
IN p_in_chdate datetime,
IN p_in_chBank varchar(200)
)
BEGIN
	
    Declare p_receiptNo int;
    declare p_chAmount DECIMAL(10,2);

	IF extract(year from p_in_chdate) = 1 THEN
		SET p_in_chdate = NULL;
	END IF;
	
    IF p_in_bankMode = "Cheque" THEN
		SET p_chAmount = p_in_amount;
        SET p_in_amount = 0;
	ELSE
		SET p_chAmount = 0;
	END IF;
    
    IF p_in_isReceipt = 1 THEN
		update center set receiptno = receiptno + 1 where id = 1; 
		select receiptno into p_receiptNo from center  where id = 1; 
	ELSE
		SET p_receiptNo = NULL;
	END IF;
    
	UPDATE `account`
	SET
	`desc` = p_in_desc,
	`type` = p_in_type,
	`amount` = p_in_amount,
	`name` = p_in_name,
	`receiptNo` = p_receiptNo,
	`isReceipt` = p_in_isReceipt,
	`paymentMode` = p_in_paymentMode,
	`bankMode` = p_in_bankMode,
	`bankName` = p_in_bankName,
	`txnNo` = p_in_txnNo,
	`chNo` = p_in_chNo,
	`chdate` = p_in_chdate,
	`chBank` = p_in_chBank,
	`chAmount` = p_chAmount
	WHERE `Id` = p_in_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateBank` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateBank`(
IN p_in_id INT,
IN p_in_name varchar(200)
)
BEGIN
	UPDATE `bank`
	SET
	`Name` = p_in_name
	WHERE `Id` =p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateCenter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateCenter`(
IN p_in_name varchar(255),
IN p_in_address varchar(255),
IN p_in_desc varchar(255),
IN p_in_location varchar(255),
IN p_in_phone varchar(45),
IN p_in_regno varchar(45),
IN p_in_addressMal nvarchar(255),
IN p_in_locationMal nvarchar(255),
IN p_in_nameMal nvarchar(255),
IN p_in_medExpiryDays int,
IN p_in_medThresholdCount int,
IN p_in_descMal nvarchar(255)
)
BEGIN
	UPDATE center
	SET
	`Name` = p_in_name,
	`Address` = p_in_address,
	`Desc` = p_in_desc,
	`Location` = p_in_location,
	`Phone` = p_in_phone,
	`RegNo` = p_in_regno,
	`AddressMal` = p_in_addressMal,
	`LocationMal` =p_in_locationMal,
	`NameMal` =p_in_nameMal,
	`MedExpiryDays` = p_in_medExpiryDays,
	`MedThresholdCount` =p_in_medThresholdCount,
	`DescMal` = p_in_descMal;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateDiagnosis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateDiagnosis`(
IN p_in_id INT,
IN p_in_name varchar(100)
)
BEGIN
	UPDATE `diagnosis`
	SET
	`Name` = p_in_name
	WHERE `Id` =p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateEquipment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateEquipment`(
IN p_in_id int,
IN p_in_name varchar(200),
IN p_in_name_lower varchar(200),
IN p_in_stock int,
IN p_in_inuse int,
IN p_in_damage int
)
BEGIN

	UPDATE `equipment`
	SET
    `name` = p_in_name,
    `name_lower` = p_in_name_lower,
	`stock` = p_in_stock,
	`damage` = p_in_damage,
	`inuse` = p_in_inuse
	WHERE `Id` = p_in_id;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateExpenseType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateExpenseType`(
IN p_in_id INT,
IN p_in_expensetype varchar(100)
)
BEGIN
	UPDATE `expensetype`
	SET
	`ExpenseType` = p_in_expensetype
	WHERE `Id` =p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateHomeCarePlan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateHomeCarePlan`(
IN p_in_id int,
IN p_in_type varchar(45),
IN p_in_date datetime
)
BEGIN
	UPDATE `homecareplan`
	SET
	`Type` = p_in_type,
	`Date` = p_in_date
	WHERE `Id` = p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateIncomeType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateIncomeType`(
IN p_in_id INT,
IN p_in_incometype varchar(100)
)
BEGIN
	UPDATE `incometype`
	SET
	`IncomeType` = p_in_incometype
	WHERE `Id` =p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateMedicine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateMedicine`(
IN p_in_id INT,
IN p_in_name varchar(200),
IN p_in_name_lower varchar(200)
)
BEGIN
	UPDATE `medicine`
	SET
	`Name` = p_in_name,
    `NameLower` = p_in_name_lower
	WHERE `Id` = p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateMedicineStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateMedicineStock`(
IN p_in_purid INT,
IN p_in_mno varchar(20),
IN p_in_mainDiff int,
IN p_in_mainNew int,
IN p_in_subDiff int,
IN p_in_subNew int,
IN p_in_txndate datetime
)
BEGIN
	
    Declare p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id INT;
    Declare p_med_name varchar(200);
    
    select 
		s.Main, s.Sub, s.A_kit, s.B_kit, s.MedicineId, m.Name 
        into p_openMain, p_openSub, p_openAKit, p_openBKit, p_m_id, p_med_name
    from medicinestock s
    inner join medicine m on s.MedicineId = m.Id
    where m.Mno = p_in_mno;
    
    update medicinestock 
    set Main = (Main - p_in_mainDiff),
    Sub = (Sub - p_in_subDiff)
    where MedicineId = p_m_id;
    
    update medicinepurchase
    set mainStock = p_in_mainNew,
		subStock = p_in_subNew
    where id = p_in_purid;

	 CALL `spr_AddMedicineHistory`
		(p_m_id, 
		p_in_txndate, 
		p_in_mno, 
		p_med_name,
		'Edit', -- txnType
		'Edit stock', -- desc
		p_openMain, -- openingMain
        p_openSub, -- openingSub
        p_openAKit, -- openingAKit
        p_openBKit, -- openingBKit
		0, -- qty
		(p_openMain - p_in_mainDiff), -- closingMain
		(p_openSub - p_in_subDiff), -- closingSub
        p_openAKit, -- closingAKit
        p_openBKit, -- closingBKit
        '', -- pno
        '' -- patientName
        );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdatePanjayath` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdatePanjayath`(
IN p_in_id INT,
IN p_in_name varchar(100)
)
BEGIN
	UPDATE `panjayath`
	SET
	`Name` = p_in_name
	WHERE `Id` =p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdatePatient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdatePatient`(
IN p_in_id int,
IN p_in_name varchar(200),
IN p_in_age varchar(45),
IN p_in_address varchar(255),
IN p_in_grade varchar(45),
IN p_in_gender varchar(45),
IN p_in_panjayath varchar(100),
IN p_in_wardno varchar(45),
IN p_in_phone1 varchar(45),
IN p_in_phone2 varchar(45),
IN p_in_regdate datetime,
IN p_in_expdate datetime,
IN p_in_dropdate datetime,
IN p_in_volunteer varchar(100),
IN p_in_diagnosis varchar(100),
IN p_in_temp tinyint,
IN p_in_route varchar(100),
IN p_in_homecareplan varchar(45)

)
BEGIN
	UPDATE `patient`
	SET
	`Name` = p_in_name,
	`Age` = p_in_age,
	`Address` = p_in_address,
	`Grade` = p_in_grade,
	`Gender` = p_in_gender,
	`Panjayath` = p_in_panjayath,
	`WardNo` = p_in_wardno,
	`Phone1` = p_in_phone1,
	`Phone2` = p_in_phone2,
	`RegDate` = p_in_regdate,
	`ExpDate` = p_in_expdate,
	`DropDate` = p_in_dropdate,
	`Volunteer` = p_in_volunteer,
	`Diagnosis` = p_in_diagnosis,
	`Temp` = p_in_temp,
	`Route` = p_in_route,
	`HomeCarePlan` = p_in_homecareplan
	WHERE `Id` = p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateRehabilitation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateRehabilitation`(
IN p_in_id int,
IN p_in_desc varchar(200),
IN p_in_qty int
)
BEGIN
	UPDATE `rehabilitation`
	SET
	`Description` = p_in_desc,
	`Quantity` = p_in_qty
	WHERE `Id` = p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateRoute` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateRoute`(
IN p_in_id INT,
IN p_in_name varchar(100)
)
BEGIN
	UPDATE `route`
	SET
	`Name` = p_in_name
	WHERE `Id` =p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spr_UpdateVolunteer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spr_UpdateVolunteer`(
IN p_in_id INT,
IN p_in_name varchar(100),
IN p_in_location varchar(100),
IN p_in_phone varchar(45)
)
BEGIN
	UPDATE `volunteer`
	SET
	`Name` = p_in_name,
	`Location` = p_in_location,
	`Phone` = p_in_phone
	WHERE `Id` =p_in_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-27 20:39:43
