-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CAR`
--

DROP TABLE IF EXISTS `CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CAR` (
  `CAR_VIN` varchar(45) NOT NULL,
  `car_make` varchar(45) NOT NULL,
  `car_model` varchar(45) NOT NULL,
  `car_type` varchar(45) NOT NULL,
  `car_price` varchar(45) NOT NULL,
  `car_color` varchar(45) NOT NULL,
  `LOT_NUM` int NOT NULL,
  PRIMARY KEY (`CAR_VIN`),
  KEY `LOT_NUM_idx` (`LOT_NUM`),
  CONSTRAINT `LOT_NUM` FOREIGN KEY (`LOT_NUM`) REFERENCES `LOTS` (`LOT_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAR`
--

LOCK TABLES `CAR` WRITE;
/*!40000 ALTER TABLE `CAR` DISABLE KEYS */;
INSERT INTO `CAR` VALUES ('1B3AS76F93D246837','Dodge','Neon','Compact Car','5995','Blue',5),('1C3ADEAZ4EV300027','Dodge','SRT Viper','Luxury Car','119600','Green',4),('1D3HW48N35S326709','Dodge','Dakota','Pickup','8015','Blue',2),('1D7HU18258SS50035','Dodge','Ram 1500','Pickup','40275','White',3),('1FD8X3GT0GEA29104','Ford','F-350 Super Duty','Pickup','47494','Silver',10),('1FDNF21S23ED84267','Ford','GT','Exotic Car','1700000','Blue',15),('1FTFW1CF0EKG02648','Ford','Mustang GTD','Super Car','300000','Silver',18),('1FTHW25G6VEB58789','Ford','GT350','Super Car','61635','Black',17),('1FTZR44U57PB00226','Ford','Ranger','Pickup','6578','Orange',9),('1G1JA5SH4C4134548','Chevy ','Camaro ','Sports Car','30900','Yellow',21),('1G6AE5SSXG0105224','Cadillac','ATS','Luxury Car','45790','Red',8),('1G6DH8E36E0125008','Cadillac','CTS','Luxury Car','53690','Black',6),('1GCRKPE01BZ278777','Chevy ','Corvet C8','Sports Car','1700000','White',20),('1GYS4LEF9BR375633','Cadillac','Escalade','Luxury Car','81895','Red',7),('1HGCGY160XA600131','Honda','Accord','Compact Car','3000','Blue',12),('2FTPX17Z13CA51279','Ford','Mustang ','Coupe Car ','30920','Red',14),('2FTZF0829WCB13541','Ford ','Mustang GT','Sports Car','50705','Blue',19),('2HGFA15857H010509','Honda','Civic','Compact Car','13100','Silver',11),('3C63R3FL6FG602712','Dodge ','Challenger Hellcat ','Sports Car','68600','White',23),('3D6WX46D48G149696','Dodge ','Charger Hellcat ','Sports Car','79445','Purple',24),('3D7ML46A08G136092','Dodge','Ram 3500','Pickup','80675','Red',1),('3FABPAAJ2BN230754','Ford','GT500','Super Car','76820','White',16),('3G1TB5DGXBL0002EX','Chevy ','Camaro SS','Sports Car','47300','Blue',22),('JHMGE8H81AS897620','Honda','Fit','Compact Car','7000','Yellow',13);
/*!40000 ALTER TABLE `CAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `CUS_CODE` int NOT NULL AUTO_INCREMENT,
  `cus_fname` varchar(45) NOT NULL,
  `cus_lname` varchar(45) NOT NULL,
  `cus_phone_num` varchar(45) NOT NULL,
  `cus_email_address` varchar(45) NOT NULL,
  `cus_zipcode` varchar(45) NOT NULL,
  `cus_license_num` varchar(45) NOT NULL,
  `cus_address` varchar(45) NOT NULL,
  PRIMARY KEY (`CUS_CODE`),
  UNIQUE KEY `CUS_CODE_UNIQUE` (`CUS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,'Billy','Firani','6032528589','firani5634@otemdi.com','46342','999000680','7201 Acacia Ave. Villa Park, IL 60181'),(2,'Maxwell','Rycroft','3479005738','Maxwell_Rycroft5355@bcfhs.design','33442','A0002144','9179 W. West Street Piscataway, NJ 08854'),(3,'Lucas','Vintin','8645249887','Lucas_Vinton1477@ohqqh.name','95050','94-33-0101','40 Sussex Ave. Logansport, IN 46947'),(4,'Nicholas','Cowan','2764857543','Nicholas_Cowan2158@iaart.online','60099','G544-061-73-925-0','7267 Brook St. Coventry, RI 02816'),(5,'Kieth','Rothwell','3473122750','Kieth_Rothwell746@ptr6k.site','45011','H00000002','229 East Ave. Satellite Beach, FL 32937'),(6,'Alexander','Bennett','7793669749','Alexander_Bennett475@mpibr.catering','30721','0299-11-6078','8 Warren Lane Houston, TX 77016'),(7,'Ron','Walsh','3856702012','Ron_Walsh6182@fhuux.info','20715','D400-7836-0001','8105 North Pine Drive Logansport, IN 46947'),(8,'Javier','Nayler','7078455310','Javier_Nayler8282@avn7d.directory','23820','123AB9755','83 East Bear Hill St. Lansdowne, PA 19050'),(9,'Estrella','Yard','8626594174','Estrella_Yard515@v1wn5.center','60076','K00-09-7443','54 Southampton Street Bronx, NY 10451'),(10,'Ronald','Durrant','5778087441','Ronald_Durrant1600@dvqq2.online','57103','V12-345-678','888 East Lake St. Upper Marlboro, MD 20772'),(11,'Anthony','Webster','2259000894','Anthony_Webster4778@yvu30.org','24060','7000100','63 Columbia Street Long Beach, NY 11561'),(12,'Luna','Silva','8305727040','Luna_Silva3494@voylg.software','34135','15000','79 Temple Drive Snellville, GA 30039'),(13,'Nicole','Windsor','5024357431','Nicole_Windsor2519@bu2lo.app','93035','S-514-778-616-977','122 Franklin Dr. Goose Creek, SC 29445'),(14,'Juliette','Smith','6197233066','Juliette_Smith1032@voylg.website','44870','125-01-2050','8282 Clark Street Uniondale, NY 11553'),(15,'Lauren','Stark','4788093192','Lauren_Stark701@xtwt3.auction','27265','2102201','28 Glen Ridge St. Casselberry, FL 32707'),(16,'Enoch','Holmes','4475541172','Enoch_Holmes2091@ohqqh.info','33442','13696424','296 High Noon Rd. Streamwood, IL 60107'),(17,'Barney','Williams','7738039730','Barney_Williams5471@iaart.host','34491','8013303159','356 Campfire Dr. Wausau, WI 54401'),(18,'Logan','Ross','6085858642','Logan_Ross9595@ds59r.works','79106','TL545796','83B Howard Rd. Bethel Park, PA 15102'),(19,'Megan','Gregory','8729242454','Megan_Gregory3243@3wbkp.ca','11787','B000062835','69 S. Mulberry Street Waterloo, IA 50701'),(20,'Evelynn','Lowe','4355358079','Evelynn_Lowe5200@xqj6f.shop','11423','2858889','15 North Chapel Street Eden Prairie, MN 55347'),(21,'Mya','Morrow','7268654966','Mya_Morrow4375@xqj6f.services','11714','100179226','7944 E. York Street Falls Church, VA 22041'),(22,'Ellen','Robertson','3088966123','Ellen_Robertson7448@gkvds.site','20164','616775','4 Walt Whitman Circle Yakima, WA 98908'),(23,'Jaylene','Cowan','8405036744','Jaylene_Cowan5248@jcf8v.edu','2864','101915638','5 Thatcher Street Wantagh, NY 11793'),(24,'Alan','Kennedy','8608694512','Alan_Kennedy8498@cke3u.ca','1420','17600550','8431 Stillwater Lane Bemidji, MN 56601');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE` (
  `EMP_CODE` int NOT NULL AUTO_INCREMENT,
  `emp_phone_num` varchar(45) NOT NULL,
  `emp_email_address` varchar(45) NOT NULL,
  `emp_fname` varchar(45) NOT NULL,
  `emp_lname` varchar(45) NOT NULL,
  `emp_GDN_num` varchar(45) NOT NULL,
  `emp_status` varchar(45) NOT NULL,
  PRIMARY KEY (`EMP_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (301,'333-301-2009','mak.yuk@example.com','Makoto','Yuki','3301','Active'),(302,'333-302-2009','jun.ior@example.com','Junpei','Iori','3302','Active'),(303,'333-303-2009','yuk.tak@example.com','Yukari','Takeba','3303','Active'),(304,'333-304-2009','aki.san@example.com','Akihiko','Sanada','3304','Active'),(305,'333-305-2009','mit.kir@example.com','Mitsuru','Kirijo','3305','On Leave'),(306,'333-306-2009','aig.kir@example.com','Aigis','Kirijo','3306','On Leave'),(307,'333-307-2009','kor.ama@example.com','Koromaru','Amada','3307','Active'),(308,'333-308-2009','ken.ama@example.com','Ken','Amada','3308','Active'),(309,'333-309-2009','shi.ara@example.com','Shinjiro','Aragaki','3309','Inactive'),(310,'333-310-2009','fuu.yam@example.com','Fuuka','Yamagishi','3310','Active'),(401,'444-401-2011','yu.nar@example.com','Yu','Narukami','4401','Inactive'),(402,'444-402-2011','yos.han@example.com','Yosuke','Hanamura','4402','Temporary'),(403,'444-403-2011','chi.sat@example.com','Chie','Satonaka','4403','Active'),(404,'444-404-2011','yuk.ama@example.com','Yukiko','Amagi','4404','Temporary'),(405,'444-405-2011','kan.tat@example.com','Kanji','Tatsumi','4405','Active'),(406,'444-406-2011','ted.kum@example.com','Teddie','Kuma','4406','Inactive'),(407,'444-407-2011','nao.shi@example.com','Naoto','Shirogane','4407','Active'),(408,'444-408-2011','ris.kuc@example.com','Rise','Kuchikawa','4408','Inactive'),(501,'555-501-2016','ren.ama@example.com','Ren','Amamiya','5501','Active'),(502,'555-502-2016','ryu.sak@example.com','Ryuji','Sakamoto','5502','Active'),(503,'555-503-2016','ann.tak@example.com','Ann','Takamaki','5503','Temporary'),(504,'555-504-2016','yus.kit@example.com','Yusuke','Kitagawa','5504','Active'),(505,'555-505-2016','mak.nii@example.com','Makoto','Niijima','5505','On Leave'),(506,'555-506-2016','fut.sak@example.com','Futaba','Sakura','5506','Inactive'),(507,'555-507-2016','har.oku@example.com','Haru','Okumura','5507','Inactive'),(508,'555-508-2016','gor.ake@example.com','Goro','Akechi','5508','Active'),(509,'555-509-2016','mor.mon@example.com','Morgana','Mona','5509','On Leave');
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JOB`
--

DROP TABLE IF EXISTS `JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JOB` (
  `JOB_CODE` int NOT NULL,
  `job_type` varchar(45) NOT NULL,
  `job_yearly_salary` double NOT NULL,
  `JOB_EMP_CODE` int NOT NULL,
  `job_senority` int NOT NULL,
  PRIMARY KEY (`JOB_CODE`),
  KEY `EMP_CODE_idx` (`JOB_EMP_CODE`),
  CONSTRAINT `JOB_EMP_CODE` FOREIGN KEY (`JOB_EMP_CODE`) REFERENCES `EMPLOYEE` (`EMP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOB`
--

LOCK TABLES `JOB` WRITE;
/*!40000 ALTER TABLE `JOB` DISABLE KEYS */;
INSERT INTO `JOB` VALUES (1,'sales consultant',60000,308,2),(2,'manager',120000,304,2),(3,'Garage worker',67198,301,3),(4,'employee',80000,303,1),(5,'janitor',40000,304,1),(6,'sales associate',47354,305,1),(7,'photographer rep',74000,306,1),(8,'user car technician',47159,501,3),(9,'new car technician',40676,310,3),(10,'auto porter',29250,307,1),(11,'lot attendant',32463,308,1),(12,'dealership technician',54684,502,3),(13,'receptionist',35619,309,1),(14,'outside parts sale associate',48000,401,1),(15,'parts counter person',29386,402,1),(16,'parts runner',37417,403,1),(17,'automotive lube tech',30534,302,3),(18,'general sales manager',127000,404,2),(19,'warehouse associate',37883,405,1),(20,'staff accountant',81985,406,1),(21,'automotive title clerk',40320,407,1),(22,'automotive parts specialist',49225,408,1),(23,'part-time receptionist',34028,503,1),(24,'product specialist',51342,504,1);
/*!40000 ALTER TABLE `JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LABOR`
--

DROP TABLE IF EXISTS `LABOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LABOR` (
  `LABOR_NUM` int NOT NULL AUTO_INCREMENT,
  `LABOR_EMP_CODE` int NOT NULL,
  `LABOR_SERVICE_NUM` int NOT NULL,
  `labor_hours_worked` double NOT NULL,
  `labor_total_cost` double NOT NULL,
  `labor_date_start` date NOT NULL,
  `labor_date_completion` date NOT NULL,
  PRIMARY KEY (`LABOR_NUM`),
  UNIQUE KEY `LABOR_NUM_UNIQUE` (`LABOR_NUM`),
  KEY `EMP_CODE_idx` (`LABOR_EMP_CODE`),
  KEY `SERVICE_NUM_idx` (`LABOR_SERVICE_NUM`),
  CONSTRAINT `LABOR_EMP_CODE` FOREIGN KEY (`LABOR_EMP_CODE`) REFERENCES `EMPLOYEE` (`EMP_CODE`),
  CONSTRAINT `LABOR_SERVICE_NUM` FOREIGN KEY (`LABOR_SERVICE_NUM`) REFERENCES `SERVICE` (`SERVICE_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LABOR`
--

LOCK TABLES `LABOR` WRITE;
/*!40000 ALTER TABLE `LABOR` DISABLE KEYS */;
INSERT INTO `LABOR` VALUES (1,301,1,6,40,'2024-04-02','2024-04-02'),(2,501,2,48,300,'2024-05-08','2024-05-09'),(3,501,3,10,100,'2024-04-07','2024-04-07'),(4,301,4,6,40,'2024-04-17','2024-04-17'),(5,310,5,72,450,'2024-05-02','2024-05-05'),(6,310,6,72,450,'2024-05-17','2024-05-20'),(7,502,7,96,500,'2024-07-10','2024-07-14'),(8,502,8,96,500,'2024-06-05','2024-06-09'),(9,302,9,6,50,'2024-05-09','2024-05-09'),(10,302,10,6,50,'2024-05-05','2024-05-05'),(11,302,11,6,50,'2024-05-20','2024-05-20'),(12,302,12,6,50,'2024-06-09','2024-06-09'),(13,301,13,6,40,'2024-07-01','2024-07-01'),(14,301,14,6,40,'2024-08-14','2024-08-14'),(15,301,15,6,40,'2024-05-05','2024-05-05'),(16,501,16,72,375,'2024-04-15','2024-04-18'),(17,501,17,24,150,'2024-04-15','2024-04-20'),(18,501,18,120,500,'2024-10-10','2024-10-15'),(19,502,19,120,525,'2024-08-10','2024-08-15'),(20,502,20,96,500,'2024-09-13','2024-09-17'),(21,502,21,48,500,'2024-11-06','2024-11-08'),(22,310,22,72,350,'2024-06-10','2024-06-13'),(23,302,23,6,50,'2024-06-13','2024-06-13'),(24,310,24,96,456,'2024-07-08','2024-07-12');
/*!40000 ALTER TABLE `LABOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOTS`
--

DROP TABLE IF EXISTS `LOTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOTS` (
  `LOT_NUM` int NOT NULL AUTO_INCREMENT,
  `lot_location` varchar(45) NOT NULL,
  `lot_total_cars` int NOT NULL,
  `lot_total_employee` int NOT NULL,
  PRIMARY KEY (`LOT_NUM`),
  UNIQUE KEY `LOT_NUM_UNIQUE` (`LOT_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOTS`
--

LOCK TABLES `LOTS` WRITE;
/*!40000 ALTER TABLE `LOTS` DISABLE KEYS */;
INSERT INTO `LOTS` VALUES (1,'EchoPark Automotive San Antonio',1359,32),(2,'AutoSavvy San Antonio',2925,35),(3,'AutoNation USA San Antonio',551,21),(4,'Carvana San Antonio',1320,34),(5,'Resel Felts Motor Company',484,22),(6,'Jordan Motorcars San Antonio',102,15),(7,'CarMax',525,23),(8,'Gunn Honda',991,35),(9,'North Park Lexus',1234,25),(10,'Red McCombs Drive Away Motors Central',594,20),(11,'South Texas Auto',556,26),(12,'Ingram Park Chrysler Jeep Dodge Ram',475,23),(13,'Red McCombs Toyota Sales',679,31),(14,'Principle MINI of San Antonio',789,26),(15,'Ancira Nissan',407,22),(16,'San Pedro Auto Sales',889,35),(17,'Integrity Auto Group',440,23),(18,'IKENNA AUTO SALES',59,10),(19,'North Park certified pre owned',379,23),(20,'Joe Garza used Cars',220,20),(21,'Fast Lane Auto Sales',378,27),(22,'Rubens Auto Sales',990,28),(23,'Novak Motorcars',1220,32),(24,'Gunn Acura',699,28);
/*!40000 ALTER TABLE `LOTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MANUFACTURER`
--

DROP TABLE IF EXISTS `MANUFACTURER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MANUFACTURER` (
  `MANU_CODE` int NOT NULL,
  `MANU_PART_NUM` varchar(45) NOT NULL,
  `manu_location` varchar(45) NOT NULL,
  `manu_phone_num` varchar(45) NOT NULL,
  `manu_area_code` varchar(45) NOT NULL,
  PRIMARY KEY (`MANU_CODE`),
  KEY `PART_NUM_idx` (`MANU_PART_NUM`),
  CONSTRAINT `MANU_PART_NUM` FOREIGN KEY (`MANU_PART_NUM`) REFERENCES `PARTS` (`PART_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MANUFACTURER`
--

LOCK TABLES `MANUFACTURER` WRITE;
/*!40000 ALTER TABLE `MANUFACTURER` DISABLE KEYS */;
INSERT INTO `MANUFACTURER` VALUES (1,'2','Roseville, Michigan','456-9876','231'),(2,'4','Houston, Texas','342-6787','281'),(3,'7','New York City, New York','242-3476','212'),(4,'8','Las Vegas, Nevada','789-9876','702'),(5,'11','Los Angeles, California','555-1234','310'),(6,'13','Chicago, Illinois','888-5678','312'),(7,'15','Phillidelphia, Pennsylvania','456-7890','267'),(8,'14','Phoenix, Arizona','678-4321','602'),(9,'16','San Antonio, Texas','777-9999','210'),(10,'19','Jacksonville, Florida','123-4567','904'),(11,'21','Nashville, Tennessee','987-6543','615'),(12,'22','Boston, Massachusetts','555-1234','617'),(13,'24','Austin, Texas','888-9999','512'),(14,'1','Louisville, Kentucky','321-6789','502'),(15,'3','Albuquerque, New Mexico','534-2103','505'),(16,'5','Rio Grande Valley, Texas','777-8888','956'),(17,'6','Kansas City, Missouri','000-9876','816'),(18,'9','Omaha, New England','456-0072','402'),(19,'10','Wichita, Kansas','656-0987','316'),(20,'12','Cincinnati, Ohio','987-0987','513'),(21,'17','Cleveland, Ohio','367-7865','216'),(22,'18','Pittsburgh, Pennsylvania','100-8999','412'),(23,'20','St. Louis, Missourie','999-8888','314'),(24,'23','Fort Worth, Texas','333-4456','817');
/*!40000 ALTER TABLE `MANUFACTURER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARTS`
--

DROP TABLE IF EXISTS `PARTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PARTS` (
  `PART_NUM` varchar(45) NOT NULL,
  `part_type` varchar(45) NOT NULL,
  `part_qty` int NOT NULL,
  `part_order_date` date NOT NULL,
  `part_price` double NOT NULL,
  `part_manufacturer` varchar(45) NOT NULL,
  `PARTS_SERVICE_NUM` int NOT NULL,
  PRIMARY KEY (`PART_NUM`),
  KEY `SERVICE_NUM_idx` (`PARTS_SERVICE_NUM`),
  CONSTRAINT `PARTS_SERVICE_NUM` FOREIGN KEY (`PARTS_SERVICE_NUM`) REFERENCES `SERVICE` (`SERVICE_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARTS`
--

LOCK TABLES `PARTS` WRITE;
/*!40000 ALTER TABLE `PARTS` DISABLE KEYS */;
INSERT INTO `PARTS` VALUES ('1','Catalytic converter',1,'2024-05-08',381.97,'AM General',2),('10','Shocks',1,'2024-11-06',689,'GM',21),('11','Camshafts',1,'2024-06-10',364,'Kenworth',22),('12','Brake pads',1,'2024-07-08',478.24,'Lincoln',24),('13','Pistons',1,'2024-05-02',1500,'Anteros Coachworks',5),('14','Tires',4,'2024-05-17',583.96,'Autocar',6),('15','Radiators',1,'2024-04-15',998,'Cadillac',16),('16','Muffles',1,'2024-10-10',500,'ElDorado',18),('17','Air Filters',1,'2024-08-10',115,'FCA',19),('18','Transmission',1,'2024-09-13',3695,'Ford',20),('19','Bumper',1,'2024-11-06',3995,'GM',21),('2','Turbos',1,'2024-05-02',925.88,'Anteros Coachworks',5),('20','Hood',1,'2024-05-08',450,'AM General',2),('21','Rims',1,'2024-06-10',2795,'Kenworth',22),('22','Fenders',1,'2024-07-10',1979.1,'Trion Supercars',7),('23','Windshields',1,'2024-06-05',1800,'Bremach',8),('24','Windshield Wipers',1,'2024-07-08',250,'Lincoln',24),('3','Superchargers',1,'2024-05-17',5583.3,'Autocar',6),('4','Headlights',1,'2024-07-10',213.65,'Blue Bird',7),('5','Fog Lights',4,'2024-06-05',276.73,'Bremach',8),('6','Alternator',1,'2024-04-15',516,'Cadillac',16),('7','Sparkplugs',1,'2024-10-10',203,'EIDorado',18),('8','Battery',1,'2024-08-10',309,'FCA',19),('9','Brakes',1,'2024-09-13',500,'Ford',20);
/*!40000 ALTER TABLE `PARTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALES_RECORD`
--

DROP TABLE IF EXISTS `SALES_RECORD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SALES_RECORD` (
  `INV_NUM` int NOT NULL AUTO_INCREMENT,
  `CAR_VIN` varchar(45) NOT NULL,
  `CUS_CODE` int NOT NULL,
  `inv_total_price` double NOT NULL,
  `inv_date` date NOT NULL,
  PRIMARY KEY (`INV_NUM`),
  KEY `CAR_VIN_idx` (`CAR_VIN`),
  KEY `CUS_CODE_idx` (`CUS_CODE`),
  CONSTRAINT `CAR_VIN` FOREIGN KEY (`CAR_VIN`) REFERENCES `CAR` (`CAR_VIN`),
  CONSTRAINT `CUS_CODE` FOREIGN KEY (`CUS_CODE`) REFERENCES `CUSTOMER` (`CUS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALES_RECORD`
--

LOCK TABLES `SALES_RECORD` WRITE;
/*!40000 ALTER TABLE `SALES_RECORD` DISABLE KEYS */;
INSERT INTO `SALES_RECORD` VALUES (1,'3D7ML46A08G136092',1,20000,'2024-01-05'),(2,'1D3HW48N35S326709',2,25000,'2024-01-15'),(3,'1D7HU18258SS50035',3,-10000,'2024-02-08'),(4,'1C3ADEAZ4EV300027',4,30000,'2024-02-28'),(5,'1B3AS76F93D246837',5,18000,'2024-03-10'),(6,'1G6DH8E36E0125008',6,22000,'2024-03-19'),(7,'1GYS4LEF9BR375633',7,27000,'2024-04-05'),(8,'1G6AE5SSXG0105224',8,-5000,'2024-04-23'),(9,'1FTZR44U57PB00226',9,32000,'2024-05-20'),(10,'1FD8X3GT0GEA29104',10,15000,'2024-05-30'),(11,'2HGFA15857H010509',11,28000,'2024-06-09'),(12,'1HGCGY160XA600131',12,16000,'2024-06-12'),(13,'JHMGE8H81AS897620',13,20000,'2024-07-14'),(14,'2FTPX17Z13CA51279',14,-8000,'2024-07-18'),(15,'1FDNF21S23ED84267',15,35000,'2024-08-04'),(16,'3FABPAAJ2BN230754',16,21000,'2024-08-25'),(17,'1FTHW25G6VEB58789',17,33000,'2024-09-10'),(18,'1FTFW1CF0EKG02648',18,24000,'2024-09-22'),(19,'2FTZF0829WCB13541',19,-4000,'2024-10-17'),(20,'1GCRKPE01BZ278777',20,26000,'2024-10-27'),(21,'1G1JA5SH4C4134548',21,29000,'2024-11-02'),(22,'3G1TB5DGXBL0002EX',22,23000,'2024-11-29'),(23,'3C63R3FL6FG602712',23,30000,'2024-12-07'),(24,'3D6WX46D48G149696',24,19000,'2024-12-14');
/*!40000 ALTER TABLE `SALES_RECORD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SERVICE`
--

DROP TABLE IF EXISTS `SERVICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SERVICE` (
  `SERVICE_NUM` int NOT NULL AUTO_INCREMENT,
  `SERVICE_CAR_VIN` varchar(45) NOT NULL,
  `SERVICE_ EMP_CODE` int NOT NULL,
  `service_type` varchar(45) NOT NULL,
  `service_price` double NOT NULL,
  `service_warranty` varchar(45) NOT NULL,
  PRIMARY KEY (`SERVICE_NUM`),
  KEY `CAR_VIN_idx` (`SERVICE_CAR_VIN`),
  KEY `EMP_CODE_idx` (`SERVICE_ EMP_CODE`),
  CONSTRAINT `SERVICE_CAR_VIN` FOREIGN KEY (`SERVICE_CAR_VIN`) REFERENCES `CAR` (`CAR_VIN`),
  CONSTRAINT `SERVICE_EMP_CODE` FOREIGN KEY (`SERVICE_ EMP_CODE`) REFERENCES `EMPLOYEE` (`EMP_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERVICE`
--

LOCK TABLES `SERVICE` WRITE;
/*!40000 ALTER TABLE `SERVICE` DISABLE KEYS */;
INSERT INTO `SERVICE` VALUES (1,'3D7ML46A08G136092',301,'Inspection',100,'N/A'),(2,'1D3HW48N35S326709',501,'used car repair',831.97,'3 years'),(3,'1D7HU18258SS50035',501,'user car inspection',300,'N/A'),(4,'1C3ADEAZ4EV300027',301,'inspection',100,'N/A'),(5,'1B3AS76F93D246837',310,'new car repair',2425.88,'5 years'),(6,'1G6DH8E36E0125008',310,'new car repair',6167.26,'5 years'),(7,'1GYS4LEF9BR375633',502,'dealership car repair',2192.75,'8 years'),(8,'1G6AE5SSXG0105224',502,'dealership car repair',2076.73,'8 years'),(9,'1FTZR44U57PB00226',302,'car lube',100,'N/A'),(10,'1FD8X3GT0GEA29104',302,'car lube',100,'N/A'),(11,'2HGFA15857H010509',302,'car lube',100,'N/A'),(12,'1HGCGY160XA600131',302,'car lube',100,'N/A'),(13,'JHMGE8H81AS897620',301,'inspection',100,'N/A'),(14,'2FTPX17Z13CA51279',301,'inspection',100,'N/A'),(15,'1FDNF21S23ED84267',301,'inspection',100,'N/A'),(16,'3FABPAAJ2BN230754',501,'used car repair',1514,'3 years'),(17,'1FTHW25G6VEB58789',501,'used car inspection',300,'N/A'),(18,'1FTFW1CF0EKG02648',501,'used car repair',703,'3 years'),(19,'2FTZF0829WCB13541',502,'dealership car repair',1500,'10 years'),(20,'1GCRKPE01BZ278777',502,'dealership car repair',4195,'8 years'),(21,'1G1JA5SH4C4134548',502,'dealership car repair',4684,'9 years'),(22,'3G1TB5DGXBL0002EX',310,'new car repair',3159,'5 years'),(23,'3C63R3FL6FG602712',302,'car lube',100,'N/A'),(24,'3D6WX46D48G149696',310,'new car repair',1068,'4 years');
/*!40000 ALTER TABLE `SERVICE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 13:03:31
