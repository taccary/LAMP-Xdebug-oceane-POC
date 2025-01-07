USE mediateq;
-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mediateq
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `nbExemplaire` int(11) DEFAULT NULL,
  `dateCommande` date DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `idDocument` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_1` (`idDocument`),
  CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`idDocument`) REFERENCES `document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descripteur`
--

DROP TABLE IF EXISTS `descripteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descripteur` (
  `id` int(11) NOT NULL,
  `libelle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descripteur`
--

LOCK TABLES `descripteur` WRITE;
/*!40000 ALTER TABLE `descripteur` DISABLE KEYS */;
INSERT INTO `descripteur` VALUES
(1,'Presse économique'),
(2,'Presse culturelle'),
(3,'Presse sportive'),
(4,'Presse loisir'),
(5,'Presse Actualités'),
(10000,'Humour'),
(10001,'Bande dessinée'),
(10002,'Science Fiction'),
(10003,'Biographie'),
(10004,'Historique'),
(10006,'Roman'),
(10007,'Aventures'),
(10008,'Essai'),
(10009,'Documentaire'),
(10010,'Technique'),
(10011,'Voyages'),
(10012,'Drame'),
(10013,'Comédie'),
(10014,'Policier');
/*!40000 ALTER TABLE `descripteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `commandeEnCours` int(11) DEFAULT NULL,
  `idPublic` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_1` (`idPublic`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`idPublic`) REFERENCES `public` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES
(1,'Quand sort la recluse','https://static.fnac-static.com/multimedia/Images/FR/NR/31/b0/84/8695857/1507-1/tsp20230105062957/Quand-sort-la-recluse.jpg',NULL,2),
(2,'Un pays à l\'aube','https://focus.telerama.fr/274x369/100/2021/08/19/-multimedia-images_produits-ZoomPE-7-6-3-9782743619367-tsp20130903072409-Un-pays-a-l-aube.jpg',NULL,2),
(3,'Et je danse aussi','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61WW6LGkopL.jpg',NULL,3),
(4,'L\'armée furieuse','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/414cv83qQUL._SX307_BO1,204,203,200_.jpg',NULL,2),
(5,'Les anonymes','https://www.livredepoche.com/sites/default/files/styles/manual_crop_269_435/public/images/livres/couv/9782253157113-001-T.jpeg?itok=YjJE2a5e',NULL,2),
(6,'La marque jaune','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91xG9uGkBBL.jpg',NULL,3),
(7,'Dans les coulisses du musée','https://www.livredepoche.com/sites/default/files/styles/manual_crop_269_435/public/images/livres/couv/9782253144908-001-T.jpeg?itok=mVyZ5mV6',NULL,3),
(8,'Histoire du juif errant','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91mNV9BiLrL.jpg',NULL,2),
(9,'Pars vite et reviens tard','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71FfPsoF65L.jpg',0,2),
(10,'Le vestibule des causes perdues','https://www.babelio.com/couv/CVT_Le-vestibule-des-causes-perdues_4311.jpeg',0,2),
(11,'L\'ile des oublies','https://www.livredepoche.com/sites/default/files/images/livres/couv/9782253161677-001-T.jpeg',0,2),
(12,'La souris bleue','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41QCZD0X+HS._SX307_BO1,204,203,200_.jpg',0,2),
(13,'Sacré Pêre Noël','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/817UlBu9XML.jpg',0,2),
(14,'Mauvaise étoile','https://www.livredepoche.com/sites/default/files/styles/manual_crop_269_435/public/images/livres/couv/9782253176077-001-T.jpeg?itok=qP8a2k-X',0,2),
(15,'La confrérie des téméraires','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/715vQyw5GFL.jpg',0,2),
(16,'Le butin du requin','https://www.actes-sud.fr/sites/default/files/couvertures/9782330121877.jpg',0,2),
(17,'Catastrophes au Brésil','https://static.fnac-static.com/multimedia/Images/FR/NR/dd/ea/6d/7203549/1507-1/tsp20230221075906/Les-39-cles-Cahill-contre-Vesper.jpg',0,2),
(18,'Le Routard - Maroc','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91j1+5tonlL.jpg',0,2),
(19,'Guide Vert - Iles Canaries','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81vH6kVUOML.jpg',0,2),
(20,'Guide Vert - Irlande','https://static.fnac-static.com/multimedia/Images/FR/NR/c2/f7/ad/11401154/1507-1/tsp20220418082938/Guide-Vert-Irlande.jpg',0,2),
(21,'Les déferlantes','https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41XbNQNHHEL._SX307_BO1,204,203,200_.jpg',0,2),
(22,'Une part de Ciel','https://static.fnac-static.com/multimedia/Images/FR/NR/b8/0e/7c/8130232/1507-1/tsp20210114102306/Une-part-de-ciel.jpg',0,2),
(23,'Le secret du janissaire','https://www.bedetheque.com/media/Couvertures/Couv_270396.jpg',0,2),
(24,'Pavillon noir','https://images.epagine.fr/430/9782840551430_1_75.jpg',0,2),
(25,'L\'archipel du danger','https://cdn.cultura.com/cdn-cgi/image/width=768/media/pim/TITELIVE/35_9782840552369_1_75.jpg',0,2),
(26,'Agence tout risques','https://fr.web.img5.acsta.net/medias/nmedia/18/73/05/71/19447495.jpg',NULL,3);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvd`
--

DROP TABLE IF EXISTS `dvd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvd` (
  `idDocument` int(11) NOT NULL,
  `synopsis` varchar(100) DEFAULT NULL,
  `réalisateur` varchar(50) DEFAULT NULL,
  `duree` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`idDocument`),
  CONSTRAINT `dvd_ibfk_1` FOREIGN KEY (`idDocument`) REFERENCES `document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvd`
--

LOCK TABLES `dvd` WRITE;
/*!40000 ALTER TABLE `dvd` DISABLE KEYS */;
/*!40000 ALTER TABLE `dvd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `est_decrit_par_2`
--

DROP TABLE IF EXISTS `est_decrit_par_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `est_decrit_par_2` (
  `idDocument` int(11) NOT NULL,
  `idDescripteur` int(11) NOT NULL,
  PRIMARY KEY (`idDocument`,`idDescripteur`),
  KEY `id_1` (`idDescripteur`),
  CONSTRAINT `est_decrit_par_2_ibfk_1` FOREIGN KEY (`idDocument`) REFERENCES `document` (`id`),
  CONSTRAINT `est_decrit_par_2_ibfk_2` FOREIGN KEY (`idDescripteur`) REFERENCES `descripteur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `est_decrit_par_2`
--

LOCK TABLES `est_decrit_par_2` WRITE;
/*!40000 ALTER TABLE `est_decrit_par_2` DISABLE KEYS */;
INSERT INTO `est_decrit_par_2` VALUES
(1,10008),
(1,10014),
(3,10006),
(3,10011);
/*!40000 ALTER TABLE `est_decrit_par_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etat`
--

DROP TABLE IF EXISTS `etat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etat` (
  `id` int(11) NOT NULL,
  `libelle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etat`
--

LOCK TABLES `etat` WRITE;
/*!40000 ALTER TABLE `etat` DISABLE KEYS */;
INSERT INTO `etat` VALUES
(1,'neuf'),
(2,'usagé'),
(3,'détérioré'),
(4,'inutilisable');
/*!40000 ALTER TABLE `etat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`localhost`*/ /*!50003 TRIGGER `test` BEFORE INSERT ON `etat` FOR EACH ROW BEGIN
  
  DECLARE inutile INT;
  SET inutile = NEW.id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exemplaire` (
  `idDocument` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `dateAchat` date DEFAULT NULL,
  `idRayon` int(11) NOT NULL,
  `idEtat` int(11) NOT NULL,
  PRIMARY KEY (`idDocument`,`numero`),
  KEY `id` (`idRayon`),
  KEY `id_1` (`idEtat`),
  CONSTRAINT `exemplaire_ibfk_1` FOREIGN KEY (`idDocument`) REFERENCES `document` (`id`),
  CONSTRAINT `exemplaire_ibfk_2` FOREIGN KEY (`idRayon`) REFERENCES `rayon` (`id`),
  CONSTRAINT `exemplaire_ibfk_3` FOREIGN KEY (`idEtat`) REFERENCES `etat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplaire`
--

LOCK TABLES `exemplaire` WRITE;
/*!40000 ALTER TABLE `exemplaire` DISABLE KEYS */;
INSERT INTO `exemplaire` VALUES
(1,1,'2023-01-15',1,1),
(1,2,'2023-02-20',2,2),
(1,3,'2023-03-10',3,3),
(2,1,'2023-07-02',1,1),
(3,1,'2023-04-05',2,1),
(3,2,'2023-05-12',3,2),
(3,3,'2023-06-08',1,3),
(3,4,'2023-11-10',2,2),
(4,1,'2023-07-15',2,2),
(6,1,'2023-07-20',3,3),
(8,1,'2023-08-05',1,1),
(10,1,'2023-08-10',2,2),
(12,1,'2023-08-15',3,3),
(14,1,'2023-09-02',1,1),
(16,1,'2023-09-10',2,2),
(18,1,'2023-09-15',3,3),
(20,1,'2023-10-05',1,1),
(22,1,'2023-10-10',2,2),
(24,1,'2023-10-15',3,3),
(26,1,'2023-11-02',1,1);
/*!40000 ALTER TABLE `exemplaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livre` (
  `idDocument` int(11) NOT NULL,
  `ISBN` char(13) DEFAULT NULL,
  `auteur` varchar(50) DEFAULT NULL,
  `collection` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idDocument`),
  CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`idDocument`) REFERENCES `document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre`
--

LOCK TABLES `livre` WRITE;
/*!40000 ALTER TABLE `livre` DISABLE KEYS */;
INSERT INTO `livre` VALUES
(1,'1234569877896','Fred Vargas','Commissaire Adamsberg'),
(2,'1236547896541','Dennis Lehanne',''),
(3,'6541236987410','Anne-Laure Bondoux',''),
(4,'3214569874123','Fred Vargas','Commissaire Adamsberg'),
(5,'3214563214563','RJ Ellory',''),
(6,'3213213211232','Edgar P. Jacobs','Blake et Mortimer'),
(7,'6541236987541','Kate Atkinson',''),
(8,'1236987456321','Jean d\'Ormesson',''),
(9,'3,21E+12','Fred Vargas','Commissaire Adamsberg'),
(10,'3,21E+12','Manon Moreau',''),
(11,'3,21E+12','Victoria Hislop',''),
(12,'3,21E+12','Kate Atkinson',''),
(13,'3,21E+12','Raymond Briggs',''),
(14,'3,21E+12','RJ Ellory',''),
(15,'3,21E+12','Floriane Turmeau',''),
(16,'3,21E+12','Julian Press',''),
(17,'3,21E+12','Philippe Masson',''),
(18,'3,21E+12','','Guide du Routard'),
(19,'3,21E+12','','Guide Vert'),
(20,'3,21E+12','','Guide Vert'),
(21,'3,21E+12','Claudie Gallay',''),
(22,'3,21E+12','Claudie Gallay',''),
(23,'3,21E+12','Ayrolles - Masbou','De cape et de crocs'),
(24,'3,21E+12','Ayrolles - Masbou','De cape et de crocs'),
(25,'3,21E+12','Ayrolles - Masbou','De cape et de crocs');
/*!40000 ALTER TABLE `livre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parution`
--

DROP TABLE IF EXISTS `parution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parution` (
  `idRevue` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `dateParution` date DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `idEtat` int(11) NOT NULL,
  PRIMARY KEY (`idRevue`,`numero`),
  KEY `id` (`idEtat`),
  CONSTRAINT `parution_ibfk_1` FOREIGN KEY (`idRevue`) REFERENCES `revue` (`id`),
  CONSTRAINT `parution_ibfk_2` FOREIGN KEY (`idEtat`) REFERENCES `etat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parution`
--

LOCK TABLES `parution` WRITE;
/*!40000 ALTER TABLE `parution` DISABLE KEYS */;
INSERT INTO `parution` VALUES
(10001,154,'2021-07-01',NULL,1),
(10001,155,'2021-08-01',NULL,1),
(10001,156,'2021-09-01',NULL,1),
(10001,157,'2021-10-01',NULL,1),
(10001,158,'2021-11-01',NULL,1),
(10001,159,'2021-12-01',NULL,1),
(10001,160,'2023-01-01','lien vers la photo de janvier 2023',1),
(10001,161,'2023-02-01','lien vers la photo de février 2023',1),
(10002,2154,'2021-07-01','lien vers la photo de juillet 2021',1),
(10002,2155,'2021-08-01',NULL,1),
(10002,2156,'2021-09-01',NULL,1),
(10002,2157,'2021-10-01',NULL,1),
(10002,2158,'2021-11-01',NULL,1),
(10002,2159,'2021-12-01',NULL,1),
(10002,2160,'2023-01-01','lien vers la photo de janvier 2023',1),
(10002,2161,'2023-02-01','lien vers la photo de février 2023',1),
(10003,215,'2021-02-01',NULL,1),
(10003,216,'2021-03-01',NULL,1),
(10003,217,'2021-04-01',NULL,1),
(10003,218,'2021-05-01',NULL,1),
(10003,219,'2021-06-01',NULL,1),
(10003,220,'2021-07-01',NULL,1),
(10003,221,'2023-01-15','lien vers la photo de janvier 2023',1),
(10003,222,'2023-02-15','lien vers la photo de février 2023',1),
(10004,163,'2023-01-10','lien vers la photo de janvier 2023',1),
(10004,164,'2023-02-10','lien vers la photo de février 2023',1),
(10005,323,'2023-01-20','lien vers la photo de janvier 2023',1),
(10005,324,'2023-02-20','lien vers la photo de février 2023',1),
(10005,3215,'2021-11-20',NULL,1),
(10005,3216,'2021-11-21',NULL,1),
(10005,3217,'2021-11-22',NULL,1),
(10005,3218,'2021-11-23',NULL,1),
(10005,3219,'2021-11-24',NULL,1),
(10005,3220,'2021-11-25',NULL,1),
(10006,223,'2023-01-05','lien vers la photo de janvier 2023',1),
(10006,224,'2023-02-05','lien vers la photo de février 2023',1),
(10007,163,'2023-01-08','lien vers la photo de janvier 2023',1),
(10007,164,'2023-02-08','lien vers la photo de février 2023',1),
(10008,223,'2023-01-02','lien vers la photo de janvier 2023',1),
(10008,224,'2023-02-02','lien vers la photo de février 2023',1),
(10009,163,'2023-01-02','lien vers la photo de janvier 2023',1),
(10009,164,'2023-02-02','lien vers la photo de février 2023',1),
(10010,323,'2023-01-03','lien vers la photo de janvier 2023',1),
(10010,324,'2023-02-03','lien vers la photo de février 2023',1),
(10011,223,'2023-01-01','lien vers la photo de janvier 2023',1),
(10011,224,'2023-02-01','lien vers la photo de février 2023',1);
/*!40000 ALTER TABLE `parution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public`
--

DROP TABLE IF EXISTS `public`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `public` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public`
--

LOCK TABLES `public` WRITE;
/*!40000 ALTER TABLE `public` DISABLE KEYS */;
INSERT INTO `public` VALUES
(1,'Jeunesse'),
(2,'Adultes'),
(3,'Tous publics'),
(4,'Ados');
/*!40000 ALTER TABLE `public` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rayon`
--

DROP TABLE IF EXISTS `rayon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rayon` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rayon`
--

LOCK TABLES `rayon` WRITE;
/*!40000 ALTER TABLE `rayon` DISABLE KEYS */;
INSERT INTO `rayon` VALUES
(1,'Romans'),
(2,'Science-fiction'),
(3,'Policier'),
(4,'Jeunesse'),
(5,'Biographie');
/*!40000 ALTER TABLE `rayon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revue`
--

DROP TABLE IF EXISTS `revue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revue` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `empruntable` char(1) DEFAULT NULL,
  `periodicite` varchar(2) DEFAULT NULL,
  `delai_miseadispo` int(11) DEFAULT NULL,
  `dateFinAbonnement` date DEFAULT NULL,
  `idDescripteur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_1` (`idDescripteur`),
  CONSTRAINT `revue_ibfk_2` FOREIGN KEY (`idDescripteur`) REFERENCES `descripteur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revue`
--

LOCK TABLES `revue` WRITE;
/*!40000 ALTER TABLE `revue` DISABLE KEYS */;
INSERT INTO `revue` VALUES
(10001,'Arts Magazine','O','MS',52,'2022-03-31',2),
(10002,'Alternatives Economiques','O','HB',52,'2022-04-30',1),
(10003,'Challenges','O','HB',26,'2022-02-28',1),
(10004,'Rock and Folk','O','MS',52,'2022-10-31',2),
(10005,'Les Echos','N','QT',5,'2022-12-31',1),
(10006,'L\'Equipe','N','QT',5,'2022-01-31',3),
(10007,'Telerama','O','HB',26,'2022-01-31',2),
(10008,'L\'Obs','O','HB',26,'2022-01-31',5),
(10009,'Le Monde','N','QT',5,'2022-01-31',5),
(10010,'L\'Equipe Magazine','O','HB',12,'2022-01-31',3),
(10011,'Geo','O','MS',52,'2022-01-31',2);
/*!40000 ALTER TABLE `revue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 14:53:53
