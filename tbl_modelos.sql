/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.4.10-MariaDB : Database - db_teste
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `modelo_fipe` */

DROP TABLE IF EXISTS `tbl_models`;

CREATE TABLE `tbl_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_brand_fipe` int(11) DEFAULT NULL,
  `model` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=961 DEFAULT CHARSET=utf8mb4;

/*Data for the table `modelo_fipe` */

insert  into `tbl_models`(`id`,`code_brand_fipe`,`model`) values (1,1,'Integra'),(2,1,'Legend'),(3,1,'NSX'),(4,2,'Marrua'),(5,3,'145'),(6,3,'147'),(7,3,'155'),(8,3,'156'),(9,3,'164'),(10,3,'166'),(11,3,'2300'),(12,3,'Spider'),(13,4,'Hummer'),(14,5,'AM 825'),(15,5,'Jipe Rocsta'),(16,5,'Topic'),(17,5,'Towner'),(18,189,'DB9'),(19,189,'Rapide'),(20,189,'Rapide S'),(21,189,'Vanquish'),(22,189,'Vantage'),(23,189,'Vantage S'),(24,189,'Virage'),(25,6,'100'),(26,6,'80'),(27,6,'A1'),(28,6,'A1 Sportback'),(29,6,'A3'),(30,6,'A3 Cabriolet'),(31,6,'A3 Sedan'),(32,6,'A4'),(33,6,'A4 Avant'),(34,6,'A5'),(35,6,'A5 Cabriolet'),(36,6,'A6'),(37,6,'A6 Avant'),(38,6,'A7'),(39,6,'A8'),(40,6,'Allroad'),(41,6,'e-tron'),(42,6,'Q3'),(43,6,'Q5'),(44,6,'Q7'),(45,6,'Q8'),(46,6,'R8'),(47,6,'R8 Spyder'),(48,6,'RS e-tron'),(49,6,'RS Q3'),(50,6,'RS Q8'),(51,6,'RS2'),(52,6,'RS3 Sedan'),(53,6,'RS3 Sportback'),(54,6,'RS4'),(55,6,'RS5'),(56,6,'RS6'),(57,6,'RS6 Avant'),(58,6,'RS7'),(59,6,'S Q5'),(60,6,'S3'),(61,6,'S4'),(62,6,'S5'),(63,6,'S6'),(64,6,'S7'),(65,6,'S8'),(66,6,'TT'),(67,6,'TTRS'),(68,6,'TTS'),(69,207,'Buggy'),(70,7,'i3'),(71,7,'i8'),(72,7,'iX'),(73,7,'M135'),(74,7,'M2'),(75,7,'M235'),(76,7,'M3 Sedan'),(77,7,'M340'),(78,7,'M440i'),(79,7,'M5'),(80,7,'M8'),(81,7,'M850'),(82,7,'Serie 1'),(83,7,'Serie 2'),(84,7,'Serie 3'),(85,7,'Serie 4'),(86,7,'Serie 5'),(87,7,'Serie 6'),(88,7,'Serie 7'),(89,7,'Serie 8'),(90,7,'Serie M'),(91,7,'X1'),(92,7,'X2'),(93,7,'X2 M35'),(94,7,'X3'),(95,7,'X3 M'),(96,7,'X4'),(97,7,'X4 M'),(98,7,'X5'),(99,7,'X5 M'),(100,7,'X6'),(101,7,'X6 M'),(102,7,'X7'),(103,7,'Z3'),(104,7,'Z4'),(105,7,'Z4 M40'),(106,7,'Z8'),(107,8,'Buggy'),(108,123,'Buggy'),(109,238,'eT3'),(110,238,'HAN'),(111,238,'TAN'),(112,236,'Stark Mountain'),(113,236,'Stark Superação'),(114,10,'Deville'),(115,10,'Seville'),(116,11,'Javali'),(117,136,'Cargo'),(118,136,'Family'),(119,136,'Utility'),(120,182,'Mini Star'),(121,182,'Star Family'),(122,182,'Star Utility'),(123,161,'Arrizo 5'),(124,161,'Arrizo 5e'),(125,161,'Arrizo 6'),(126,161,'Celer'),(127,161,'Cielo'),(128,161,'Face'),(129,161,'iCar'),(130,161,'QQ'),(131,161,'S-18'),(132,161,'Tiggo'),(133,161,'Tiggo 2'),(134,161,'Tiggo 3X'),(135,161,'Tiggo 5X'),(136,161,'Tiggo 7'),(137,161,'Tiggo 8'),(138,12,'300 C'),(139,12,'300 M'),(140,12,'Caravan'),(141,12,'Cirrus'),(142,12,'Grand Caravan'),(143,12,'Le Baron'),(144,12,'Neon'),(145,12,'PT Cruiser'),(146,12,'Sebring'),(147,12,'Stratus'),(148,12,'Town & Country'),(149,12,'Vision'),(150,13,'Aircross'),(151,13,'AX'),(152,13,'Berlingo'),(153,13,'BX'),(154,13,'C3'),(155,13,'C3 Picasso'),(156,13,'C4'),(157,13,'C4 Cactus'),(158,13,'C4 Lounge'),(159,13,'C4 Pallas'),(160,13,'C4 Picasso'),(161,13,'C5'),(162,13,'C5 Break'),(163,13,'C5 Tourer'),(164,13,'C6'),(165,13,'C8'),(166,13,'DS3'),(167,13,'DS4'),(168,13,'DS5'),(169,13,'Evasion'),(170,13,'Grand C4 Picasso'),(171,13,'Jumper'),(172,13,'Jumpy'),(173,13,'Xantia'),(174,13,'Xm'),(175,13,'Xsara'),(176,13,'Xsara Picasso'),(177,13,'ZX'),(178,14,'CL-244'),(179,14,'CL-330'),(180,15,'Espero'),(181,15,'Lanos'),(182,15,'Leganza'),(183,15,'Nubira'),(184,15,'Prince Ace'),(185,15,'Racer'),(186,15,'Super Salon'),(187,15,'Tico'),(188,16,'Applause'),(189,16,'Charade'),(190,16,'Cuore'),(191,16,'Feroza'),(192,16,'Move'),(193,16,'Terios'),(194,17,'Avenger'),(195,17,'Dakota'),(196,17,'Durango'),(197,17,'Intrepid'),(198,17,'Journey'),(199,17,'Ram'),(200,17,'Ram 2500'),(201,17,'Stealth'),(202,147,'K01 Pick-up'),(203,147,'K02 Pick-up'),(204,147,'M 100'),(205,147,'Plutus'),(206,147,'Start'),(207,147,'ULC Furgao'),(208,147,'ULC Picape'),(209,147,'V21 Pick-up'),(210,147,'V22 Pick-up'),(211,147,'V25 Furgão'),(212,18,'Engesa'),(213,19,'Camper'),(214,19,'Master'),(215,20,'348'),(216,20,'355'),(217,20,'360'),(218,20,'456'),(219,20,'458'),(220,20,'488'),(221,20,'550'),(222,20,'575M'),(223,20,'599'),(224,20,'612'),(225,20,'812'),(226,20,'California'),(227,20,'F12'),(228,20,'F430'),(229,20,'F8'),(230,20,'FF'),(231,20,'GTC4'),(232,20,'Portofino'),(233,20,'Roma'),(234,20,'SF90 Spider'),(235,20,'SF90 Stradale'),(236,21,'147'),(237,21,'500'),(238,21,'Argo'),(239,21,'Brava'),(240,21,'Bravo'),(241,21,'Cinquecento'),(242,21,'Coupe'),(243,21,'Cronos'),(244,21,'Doblo'),(245,21,'Doblo Cargo'),(246,21,'Ducato'),(247,21,'Duna'),(248,21,'Elba'),(249,21,'Fiorino'),(250,21,'Freemont'),(251,21,'Grand Siena'),(252,21,'Idea'),(253,21,'Linea'),(254,21,'Marea'),(255,21,'Marea Weekend'),(256,21,'Mobi'),(257,21,'Oggi'),(258,21,'Palio'),(259,21,'Palio Adventure'),(260,21,'Palio Weekend'),(261,21,'Panorama'),(262,21,'Premio'),(263,21,'Pulse'),(264,21,'Punto'),(265,21,'Siena'),(266,21,'Stilo'),(267,21,'Strada'),(268,21,'Tempra'),(269,21,'Tipo'),(270,21,'Toro'),(271,21,'Uno'),(272,21,'Uno Furgao'),(273,21,'Uno mille'),(274,21,'Weekend'),(275,149,'Buggy Off Road'),(276,149,'Buggy Plus'),(277,149,'Buggy Vip'),(278,22,'Aerostar'),(279,22,'Aspire'),(280,22,'Belina'),(281,22,'Bronco'),(282,22,'Club Wagon'),(283,22,'Contour'),(284,22,'Corcel'),(285,22,'Courier'),(286,22,'Courier Van'),(287,22,'Crown'),(288,22,'Del Rey'),(289,22,'Ecosport'),(290,22,'Edge'),(291,22,'Escort'),(292,22,'Expedition'),(293,22,'Explorer'),(294,22,'F - 100'),(295,22,'F-1000'),(296,22,'F-150'),(297,22,'F-250'),(298,22,'Fiesta'),(299,22,'Fiesta Sedan'),(300,22,'Focus'),(301,22,'Focus Sedan'),(302,22,'Furglaine'),(303,22,'Fusion'),(304,22,'Ibiza'),(305,22,'Ka'),(306,22,'Ka+'),(307,22,'Maverick'),(308,22,'Mondeo'),(309,22,'Mustang'),(310,22,'Pampa'),(311,22,'Probe'),(312,22,'Ranger'),(313,22,'Royale'),(314,22,'Taurus'),(315,22,'Territory'),(316,22,'Thunderbird'),(317,22,'Transit'),(318,22,'Transit Minibus'),(319,22,'Transit Van'),(320,22,'Verona'),(321,22,'Versailles'),(322,22,'Windstar'),(323,190,'Aumark'),(324,190,'Minitruck'),(325,170,'Buggy'),(326,199,'EC7'),(327,199,'GC2'),(328,23,'A10'),(329,23,'Agile'),(330,23,'Astra'),(331,23,'Astra Sedan'),(332,23,'Blazer'),(333,23,'Bolt'),(334,23,'Bonanza'),(335,23,'Brasinca'),(336,23,'C-10'),(337,23,'C-20'),(338,23,'Calibra'),(339,23,'Camaro'),(340,23,'Camaro Conversível'),(341,23,'Caprice'),(342,23,'Captiva'),(343,23,'Caravan'),(344,23,'Cavalier'),(345,23,'Celta'),(346,23,'Chevette'),(347,23,'Chevy 500'),(348,23,'Cheyenne'),(349,23,'Classic'),(350,23,'Cobalt'),(351,23,'Corsa'),(352,23,'Corsa Pick-Up'),(353,23,'Corsa Sedan'),(354,23,'Corsa Wagon'),(355,23,'Corvette'),(356,23,'Cruze'),(357,23,'Cruze Sport'),(358,23,'D-10'),(359,23,'D-20'),(360,23,'Equinox'),(361,23,'Grand Blazer'),(362,23,'Ipanema'),(363,23,'Joy Hatch'),(364,23,'Joy Plus'),(365,23,'Kadett'),(366,23,'Lumina'),(367,23,'Malibu'),(368,23,'Marajo'),(369,23,'Meriva'),(370,23,'Montana'),(371,23,'Monza'),(372,23,'Omega'),(373,23,'Onix'),(374,23,'Onix Plus'),(375,23,'Opala'),(376,23,'Prisma'),(377,23,'S10'),(378,23,'Saturn'),(379,23,'Sierra'),(380,23,'Silverado'),(381,23,'Sonic'),(382,23,'Sonoma'),(383,23,'Space Van'),(384,23,'Spin'),(385,23,'Suburban'),(386,23,'Suprema'),(387,23,'Syclone'),(388,23,'Tigra'),(389,23,'Tracker'),(390,23,'Trafic'),(391,23,'Trailblazer'),(392,23,'Vectra'),(393,23,'Vectra GT'),(394,23,'Vectra GT-X'),(395,23,'Veraneio'),(396,23,'Zafira'),(397,153,'HOVER CUV'),(398,24,'BR-800'),(399,24,'Carajas'),(400,152,'Towner Furgão'),(401,152,'Towner Junior'),(402,152,'Towner Passageiro'),(403,152,'Towner Pick UP'),(404,214,'e.co Cargo'),(405,214,'e.co Tech2'),(406,214,'e.co Tech4'),(407,214,'e.co Truck'),(408,25,'Accord'),(409,25,'City'),(410,25,'City Hatchback'),(411,25,'Civic'),(412,25,'CR-V'),(413,25,'Fit'),(414,25,'HR-V'),(415,25,'Odyssey'),(416,25,'Passport'),(417,25,'Prelude'),(418,25,'WR-V'),(419,26,'Accent'),(420,26,'Atos'),(421,26,'Azera'),(422,26,'Coupê'),(423,26,'Creta'),(424,26,'Elantra'),(425,26,'Equus'),(426,26,'Excel'),(427,26,'Galloper'),(428,26,'Genesis'),(429,26,'Grand Santa Fe'),(430,26,'H1'),(431,26,'H100'),(432,26,'H100 Furgao'),(433,26,'HB20'),(434,26,'HB20S'),(435,26,'HB20X'),(436,26,'HR'),(437,26,'i30'),(438,26,'I30 CW'),(439,26,'IX35'),(440,26,'Matrix'),(441,26,'Porter'),(442,26,'S Coupê'),(443,26,'Santa Fe'),(444,26,'Sonata'),(445,26,'Terracan'),(446,26,'Trajet'),(447,26,'Tucson'),(448,26,'Veloster'),(449,26,'Vera Cruz'),(450,27,'Amigo'),(451,27,'Hombre'),(452,27,'Rodeo'),(453,208,'Daily Chassi'),(454,208,'Daily City'),(455,208,'Daily Furgão'),(456,208,'Daily Minibus'),(457,208,'Daily Vetrato'),(458,177,'E-J7'),(459,177,'e-JS1'),(460,177,'e-JS4'),(461,177,'iEV 20'),(462,177,'iEV 330P'),(463,177,'iEV 350T'),(464,177,'iEV 40'),(465,177,'iEV 750V'),(466,177,'J2'),(467,177,'J3'),(468,177,'J3 Turin'),(469,177,'J5'),(470,177,'J6'),(471,177,'T40'),(472,177,'T5'),(473,177,'T50'),(474,177,'T6'),(475,177,'T60'),(476,177,'T8'),(477,177,'T80'),(478,177,'V260'),(479,28,'Daimler'),(480,28,'E-pace'),(481,28,'F-Pace'),(482,28,'F-Type'),(483,28,'F-Type Cabriolet'),(484,28,'I-Pace'),(485,28,'S-Type'),(486,28,'Sovereign'),(487,28,'X-Type'),(488,28,'XE'),(489,28,'XF'),(490,28,'XFR'),(491,28,'XJ'),(492,28,'XJ-12'),(493,28,'XJ-8'),(494,28,'XJ6'),(495,28,'XJR'),(496,28,'XJS'),(497,28,'XK-8'),(498,28,'XKR'),(499,29,'Cherokee'),(500,29,'Commander'),(501,29,'Compass'),(502,29,'Grand Cherokee'),(503,29,'Renegade'),(504,29,'Wrangler'),(505,154,'Topic Escolar'),(506,154,'Topic Furgão'),(507,154,'Topic Van'),(508,154,'VKN Van'),(509,30,'Jipe Montez'),(510,30,'Picape Montez'),(511,31,'Besta'),(512,31,'Bongo'),(513,31,'Cadenza'),(514,31,'Carens'),(515,31,'Carnival'),(516,31,'Cerato'),(517,31,'Ceres'),(518,31,'Clarus'),(519,31,'Grand Carnival'),(520,31,'Magentis'),(521,31,'Mohave'),(522,31,'Opirus'),(523,31,'Optima'),(524,31,'Picanto'),(525,31,'Quoris'),(526,31,'Rio'),(527,31,'Sephia'),(528,31,'Shuma'),(529,31,'Sorento'),(530,31,'Soul'),(531,31,'Sportage'),(532,31,'Stinger'),(533,31,'Stonic'),(534,32,'Laika'),(535,32,'Niva'),(536,32,'Samara'),(537,171,'Aventador'),(538,171,'Gallardo'),(539,171,'Huracan'),(540,171,'Urus'),(541,33,'Defender'),(542,33,'Discovery'),(543,33,'Discovery 4'),(544,33,'Discovery Sport'),(545,33,'Evo'),(546,33,'Evoque'),(547,33,'Freelander'),(548,33,'Freelander 2'),(549,33,'Range Rover Autobiography'),(550,33,'Range Rover Sport'),(551,33,'Range Rover Velar'),(552,33,'Range Rover Vogue'),(553,34,'CT200h'),(554,34,'ES'),(555,34,'GS'),(556,34,'IS'),(557,34,'LS'),(558,34,'NX'),(559,34,'RX'),(560,34,'SC'),(561,34,'UX'),(562,168,'320'),(563,168,'530'),(564,168,'620'),(565,168,'Foison'),(566,168,'X60'),(567,168,'X80'),(568,127,'H1'),(569,35,'Elan'),(570,35,'Esprit'),(571,140,'Pick Up'),(572,140,'Scorpio'),(573,140,'Suv'),(574,36,'034031-6'),(575,36,'222'),(576,36,'228'),(577,36,'3200 GT'),(578,36,'430'),(579,36,'Coupe'),(580,36,'Ghibli'),(581,36,'Gran Turismo'),(582,36,'GranCabrio'),(583,36,'GranSport'),(584,36,'Levante'),(585,36,'Quattroporte'),(586,36,'Shamal'),(587,36,'Spyder'),(588,37,'Pick-Up'),(589,37,'Pick-Up CD'),(590,38,'323'),(591,38,'626'),(592,38,'929'),(593,38,'B 2500'),(594,38,'B2200'),(595,38,'Millenia'),(596,38,'MPV'),(597,38,'MX3'),(598,38,'MX5'),(599,38,'Navajo'),(600,38,'Protege'),(601,38,'RX7'),(602,211,'540'),(603,211,'570'),(604,211,'600'),(605,211,'720S'),(606,211,'765'),(607,211,'GT Coupé'),(608,39,'180-D'),(609,39,'190-E'),(610,39,'230-E'),(611,39,'260-E'),(612,39,'300'),(613,39,'500'),(614,39,'A-35 AMG'),(615,39,'A-45 S AMG'),(616,39,'A35 AMG'),(617,39,'AMG GT Black Series'),(618,39,'Classe A'),(619,39,'Classe A Hatch'),(620,39,'Classe A Sedan'),(621,39,'Classe A Sedan AMG'),(622,39,'Classe B'),(623,39,'Classe C'),(624,39,'Classe C Conversível'),(625,39,'Classe CL'),(626,39,'Classe Cla'),(627,39,'Classe CLC'),(628,39,'Classe CLK'),(629,39,'Classe CLS'),(630,39,'Classe E'),(631,39,'Classe G'),(632,39,'Classe GL'),(633,39,'Classe GLA'),(634,39,'Classe GLB'),(635,39,'Classe GLC'),(636,39,'Classe GLE'),(637,39,'Classe GLK'),(638,39,'Classe GLS'),(639,39,'Classe ML'),(640,39,'Classe R'),(641,39,'Classe S'),(642,39,'Classe SL'),(643,39,'Classe SLC'),(644,39,'Classe SLK'),(645,39,'Classic'),(646,39,'EQC'),(647,39,'GT'),(648,39,'GT 43 AMG'),(649,39,'GT 63'),(650,39,'GT R AMG'),(651,39,'SE-500'),(652,39,'SLS'),(653,39,'Sprinter'),(654,39,'Sprinter Chassi'),(655,39,'Sprinter Furgao'),(656,39,'Sprinter Truck'),(657,39,'Sprinter Van'),(658,39,'Vito'),(659,39,'Vito Tourer'),(660,40,'Mystique'),(661,40,'Sable'),(662,167,'550'),(663,167,'MG6'),(664,156,'Cabrio'),(665,156,'Clubman'),(666,156,'Cooper'),(667,156,'Cooper Coupe'),(668,156,'Cooper Roadster'),(669,156,'Cooper S'),(670,156,'Cooper SE'),(671,156,'Countryman'),(672,156,'One'),(673,156,'Paceman'),(674,41,'3000 GT'),(675,41,'Airtrek'),(676,41,'ASX'),(677,41,'Colt'),(678,41,'Diamant'),(679,41,'Eclipse'),(680,41,'Eclipse Cross'),(681,41,'Expo'),(682,41,'Galant'),(683,41,'Grandis'),(684,41,'L200'),(685,41,'L300'),(686,41,'Lancer'),(687,41,'Mirage'),(688,41,'Montero'),(689,41,'Outlander'),(690,41,'Pajero'),(691,41,'Pajero Dakar'),(692,41,'Pajero Full'),(693,41,'Pajero Sport'),(694,41,'Pajero TR4'),(695,41,'Space Wagon'),(696,42,'Picape BG-Truck'),(697,43,'350Z'),(698,43,'Altima'),(699,43,'AX'),(700,43,'Frontier'),(701,43,'GT-R'),(702,43,'Infiniti'),(703,43,'Kicks'),(704,43,'King Cab'),(705,43,'Leaf'),(706,43,'Livina'),(707,43,'Livina X-GEAR'),(708,43,'March'),(709,43,'Maxima'),(710,43,'Micra'),(711,43,'Murano'),(712,43,'NX'),(713,43,'Pathfinder'),(714,43,'Pick-Up'),(715,43,'Primera'),(716,43,'Quest'),(717,43,'Sentra'),(718,43,'Stanza'),(719,43,'SX'),(720,43,'Terrano'),(721,43,'Tiida'),(722,43,'Tiida Sedan'),(723,43,'Versa'),(724,43,'X-Terra'),(725,43,'X-Trail'),(726,43,'ZX'),(727,44,'106'),(728,44,'2008'),(729,44,'205'),(730,44,'206'),(731,44,'206 CC'),(732,44,'206 SW'),(733,44,'207'),(734,44,'207 Passion'),(735,44,'207 SW'),(736,44,'208'),(737,44,'3008'),(738,44,'306'),(739,44,'307'),(740,44,'307 CC'),(741,44,'307 SW'),(742,44,'308'),(743,44,'405'),(744,44,'406'),(745,44,'407'),(746,44,'407 SW'),(747,44,'408'),(748,44,'5008'),(749,44,'504'),(750,44,'505'),(751,44,'508'),(752,44,'605'),(753,44,'607'),(754,44,'806'),(755,44,'807'),(756,44,'Boxer Cargo'),(757,44,'Boxer Furgao'),(758,44,'Boxer Minibus'),(759,44,'e-208'),(760,44,'E-Expert Cargo'),(761,44,'Expert'),(762,44,'Hoggar'),(763,44,'Partner'),(764,44,'Partner Furgao'),(765,44,'RCZ'),(766,45,'Gran Voyager'),(767,45,'Sundance'),(768,46,'Trans'),(769,47,'718'),(770,47,'718 Cayman'),(771,47,'911'),(772,47,'911 Targa'),(773,47,'928'),(774,47,'968'),(775,47,'Boxster'),(776,47,'Cayenne'),(777,47,'Cayman'),(778,47,'Macan'),(779,47,'Panamera'),(780,47,'Taycan'),(781,185,'1500'),(782,185,'2500'),(783,185,'3500'),(784,186,'Link'),(785,186,'Pick-Up'),(786,186,'Van'),(787,48,'19'),(788,48,'21'),(789,48,'Captur'),(790,48,'Clio'),(791,48,'Clio Sedan'),(792,48,'Duster'),(793,48,'Duster Oroch'),(794,48,'Express'),(795,48,'Fluence'),(796,48,'Grand Tour'),(797,48,'Kangoo'),(798,48,'Kangoo Express'),(799,48,'Kwid'),(800,48,'Laguna'),(801,48,'Logan'),(802,48,'Master'),(803,48,'Megane'),(804,48,'Megane Grand Tour'),(805,48,'Megane Sedan'),(806,48,'Safrane'),(807,48,'Sandero'),(808,48,'Sandero Stepway'),(809,48,'Scenic'),(810,48,'Symbol'),(811,48,'Trafic'),(812,48,'Twingo'),(813,48,'ZOE'),(814,195,'Cullinan'),(815,195,'Dawn'),(816,195,'Ghost'),(817,195,'Phantom'),(818,195,'Wraith'),(819,49,'Mini Cooper'),(820,50,'9000'),(821,51,'SL-2'),(822,52,'Cordoba'),(823,52,'Ibiza'),(824,52,'Inca'),(825,183,'A7'),(826,183,'A9'),(827,183,'Sy1020'),(828,183,'X30'),(829,157,'fortwo'),(830,125,'Actyon'),(831,125,'Chairman'),(832,125,'Istana'),(833,125,'Korando'),(834,125,'Kyron'),(835,125,'Musso'),(836,125,'Rexton'),(837,125,'Tivoli'),(838,125,'XLV'),(839,54,'Forester'),(840,54,'Impreza'),(841,54,'Legacy'),(842,54,'Legacy SW'),(843,54,'Outback'),(844,54,'SVX'),(845,54,'Tribeca'),(846,54,'Vivio'),(847,54,'XV'),(848,55,'Baleno'),(849,55,'Grand Vitara'),(850,55,'Ignis'),(851,55,'Jimny'),(852,55,'Jimny Canvas'),(853,55,'Jimny Sierra'),(854,55,'Jimny Wide'),(855,55,'S-Cross'),(856,55,'Samurai'),(857,55,'Sidekick'),(858,55,'Super Carry Van'),(859,55,'Swift'),(860,55,'SX4'),(861,55,'Vitara'),(862,55,'Wagon'),(863,165,'Stark'),(864,56,'Avalon'),(865,56,'Bandeirante'),(866,56,'Camry'),(867,56,'Celica'),(868,56,'Corolla'),(869,56,'Corolla Cross'),(870,56,'Corona'),(871,56,'Etios'),(872,56,'Etios Cross'),(873,56,'Etios Sedán'),(874,56,'Fielder'),(875,56,'Hilux'),(876,56,'Hilux SW4'),(877,56,'Land Cruiser'),(878,56,'MR-2'),(879,56,'Paseo'),(880,56,'Previa'),(881,56,'Prius'),(882,56,'RAV4'),(883,56,'Supra'),(884,56,'T-100'),(885,56,'YARIS'),(886,56,'YARIS Sedan'),(887,57,'Pantanal'),(888,57,'RF Sport'),(889,57,'T-4'),(890,59,'Amarok'),(891,59,'Apolo'),(892,59,'Bora'),(893,59,'Caravelle'),(894,59,'Corrado'),(895,59,'Crossfox'),(896,59,'Delivery Express+'),(897,59,'Eos'),(898,59,'Eurovan'),(899,59,'Fox'),(900,59,'Fusca'),(901,59,'Gol G1'),(902,59,'Gol G2'),(903,59,'Gol G3'),(904,59,'Gol G4'),(905,59,'Gol G5'),(906,59,'Gol G6'),(907,59,'Gol G7'),(908,59,'Gol G8'),(909,59,'Golf'),(910,59,'Golf Variant'),(911,59,'Jetta'),(912,59,'Jetta Variant'),(913,59,'Kombi'),(914,59,'Logus'),(915,59,'New Beetle'),(916,59,'Nivus'),(917,59,'Parati'),(918,59,'Passat'),(919,59,'Passat CC'),(920,59,'Passat Variant'),(921,59,'Pointer'),(922,59,'Polo'),(923,59,'Polo Sedan'),(924,59,'Quantum'),(925,59,'Santana'),(926,59,'Saveiro'),(927,59,'Space Cross'),(928,59,'Spacefox'),(929,59,'T-Cross'),(930,59,'TAOS'),(931,59,'Tiguan'),(932,59,'Touareg'),(933,59,'Up!'),(934,59,'Van'),(935,59,'Virtus'),(936,59,'Voyage'),(937,58,'440'),(938,58,'460'),(939,58,'850'),(940,58,'940'),(941,58,'960'),(942,58,'C30'),(943,58,'C40'),(944,58,'C70'),(945,58,'S40'),(946,58,'S60'),(947,58,'S70'),(948,58,'S80'),(949,58,'S90'),(950,58,'V40'),(951,58,'V40 Cross Country'),(952,58,'V50'),(953,58,'V60'),(954,58,'V70'),(955,58,'XC40'),(956,58,'XC60'),(957,58,'XC90'),(958,163,'Cross'),(959,163,'Way'),(960,120,'Buggy Walk');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;