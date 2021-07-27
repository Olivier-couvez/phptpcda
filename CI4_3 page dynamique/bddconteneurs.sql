-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 09 Novembre 2015 à 19:37
-- Version du serveur: 5.5.28-log
-- Version de PHP: 5.4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bddconteneurs`
--
DROP DATABASE IF EXISTS `bddconteneurs`;
CREATE DATABASE `bddconteneurs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bddconteneurs`;

-- --------------------------------------------------------

--
-- Structure de la table `camion`
--

DROP TABLE IF EXISTS `camion`;
CREATE TABLE IF NOT EXISTS `camion` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VolumeMax` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `camion`
--

INSERT INTO `camion` (`Id`, `VolumeMax`) VALUES
(1, 20),
(2, 30);

-- --------------------------------------------------------

--
-- Structure de la table `collecte`
--

DROP TABLE IF EXISTS `collecte`;
CREATE TABLE IF NOT EXISTS `collecte` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CollecteOK` int(10) DEFAULT NULL,
  `VolumeCollecte` int(10) DEFAULT NULL,
  `TourneeOptimiseeId` int(10) NOT NULL,
  `ConteneurId` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Est affecté` (`ConteneurId`),
  KEY `Est affecté2` (`TourneeOptimiseeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `conteneur`
--

DROP TABLE IF EXISTS `conteneur`;
CREATE TABLE IF NOT EXISTS `conteneur` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `TourneeStandardId` int(10) DEFAULT NULL,
  `AddrEmplacement` varchar(255) DEFAULT NULL,
  `LatLng` varchar(255) DEFAULT NULL,
  `RefSigfox` varchar(255) DEFAULT NULL,
  `CoefSurface` float DEFAULT NULL,
  `VolumeMax` float DEFAULT NULL,
  `VolumeMesureActuel` float DEFAULT NULL,
  `DateDerniereCollecte` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Est associé` (`TourneeStandardId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Contenu de la table `conteneur`
--

INSERT INTO `conteneur` (`Id`, `TourneeStandardId`, `AddrEmplacement`, `LatLng`, `RefSigfox`, `CoefSurface`, `VolumeMax`, `VolumeMesureActuel`, `DateDerniereCollecte`) VALUES
(1, 3, 'rue(s) Ferdinand Bart 62400 BÉTHUNE', '50.534600,2.637667', '1', 2, 4, 1, '2015-11-09'),
(2, 3, '92 avenue du 8 mai 1945 62400 BÉTHUNE', '50.531224,2.650400', '2', 2, 4, 1, '2015-11-09'),
(3, 3, 'rue(s) de Lille 62400 BÉTHUNE', '50.525624,2.651850', '3', 2, 4, 1, '2015-11-09'),
(4, 3, 'rue(s) du Docteur Dhénin 62400 BÉTHUNE', '50.521624,2.631383', '4', 2, 4, 1, '2015-11-09'),
(5, 3, 'rue(s) de Fouquereuil 62232 FOUQUEREUIL', '50.518274,2.603889', '5', 2, 4, 1, '2015-11-09'),
(6, 3, 'chemin(s) du Paradis 62131 VERQUIN', '50.509961,2.633486', '6', 2, 4, 1, '2015-11-09'),
(7, 3, 'place Roger Salengro 62131 VERQUIN', '50.500325,2.636139', '7', 2, 4, 1, '2015-11-09'),
(8, 3, 'rue(s) Jean Jaurès 62113 LABOURSE', '50.500380,2.685688', '8', 2, 4, 1, '2015-11-09'),
(9, 3, 'rue(s) Mongy 62113 SAILLY-LABOURSE', '50.502230,2.698130', '9', 2, 4, 1, '2015-11-09'),
(10, 3, 'route(s) Nationale 62113 SAILLY-LABOURSE', '50.505463,2.688680', '10', 2, 4, 1, '2015-11-09'),
(11, 3, 'rue(s) Alfred Gosselin 62660 BEUVRY', '50.517063,2.682483', '11', 2, 4, 1, '2015-11-09'),
(12, 3, 'rue(s) du 8 Mai 62400 ESSARS', '50.550147,2.660073', '12', 2, 4, 1, '2015-11-09'),
(13, 3, 'rue(s) Rabat 62400 BÉTHUNE', '50.548453,2.645355', '13', 2, 4, 1, '2015-11-09'),
(14, 3, 'route(s) d''Armentières 62400 ESSARS', '50.543237,2.654650', '14', 2, 4, 1, '2015-11-09'),
(15, 3, '2 rue(s) du Renouveau 62232 VENDIN-LÈS-BÉTHUNE', '50.540547,2.608050', '15', 2, 4, 1, '2015-11-09'),
(16, 3, 'rue(s) du 8 Mai 62232 HINGES', '50.566857,2.621331', '16', 2, 4, 1, '2015-11-09'),
(17, 3, 'La Place 62920 GONNEHEM', '50.562153,2.576083', '17', 2, 4, 1, '2015-11-09'),
(18, 3, 'rue(s) des Ecoles 62350 MONT-BERNANCHON', '50.583863,2.588330', '18', 2, 4, 1, '2015-11-09'),
(19, 4, '821 rue(s) d''Armentières 59850 NIEPPE', '50.700920,2.849267', '19', 2, 4, 1, '2015-11-09'),
(20, 4, 'avenue du Cimetière 59850 NIEPPE', '50.700384,2.854206', '20', 2, 4, 1, '2015-11-09'),
(21, 4, 'rue(s) de la Warnave 59850 NIEPPE', '50.689613,2.850089', '21', 2, 4, 1, '2015-11-09'),
(22, 4, 'ruelle(s) du Clos Bailly 59850 NIEPPE', '50.685420,2.840917', '22', 2, 4, 1, '2015-11-09'),
(23, 4, '15 rue(s) des Fusillés 59280 ARMENTIERES', '50.690653,2.881056', '23', 2, 4, 1, '2015-11-09'),
(24, 4, 'rue(s) du Pont de Bois 59280 ARMENTIERES', '50.691153,2.885317', '24', 2, 4, 1, '2015-11-09'),
(25, 4, '18 place de la République 59116 HOUPLINES', '50.689904,2.901559', '25', 2, 4, 1, '2015-11-09'),
(26, 4, 'rue(s) du Maréchal Foch 59280 ARMENTIERES', '50.686948,2.880076', '26', 2, 4, 1, '2015-11-09'),
(27, 4, '25 rue(s) du Chevalier de la Barre 59116 HOUPLINES', '50.685291,2.899788', '27', 2, 4, 1, '2015-11-09'),
(28, 4, '72 rue(s) de Lille 59280 ARMENTIERES', '50.683675,2.879478', '28', 2, 4, 1, '2015-11-09'),
(29, 4, 'ruelle(s) du Clos Bailly 59850 NIEPPE', '50.685420,2.840917', '29', 2, 4, 1, '2015-11-09'),
(30, 4, 'rue(s) d''Armentières 59193 ERQUINGHEM-LYS', '50.680737,2.859856', '30', 2, 4, 1, '2015-11-09'),
(31, 4, 'rue(s) Delpierre 59193 ERQUINGHEM-LYS', '50.676447,2.845583', '31', 2, 4, 1, '2015-11-09'),
(32, 4, 'rue(s) de la Douane 59193 ERQUINGHEM-LYS', '50.674560,2.836850', '32', 2, 4, 1, '2015-11-09'),
(33, 4, 'rue(s) des Tilleuls 59932 LA CHAPELLE D''ARMENTIERES', '50.676978,2.877198', '33', 2, 4, 1, '2015-11-09'),
(34, 4, '141 rue(s) Omer Ollivier 59932 LA CHAPELLE D''ARMENTIERES', '50.671634,2.888457', '34', 2, 4, 1, '2015-11-09'),
(35, 4, 'rue(s) de Rio 59932 LA CHAPELLE D''ARMENTIERES', '50.672373,2.902223', '35', 2, 4, 1, '2015-11-09'),
(36, 4, 'rue(s) Ambroise Paré 59932 LA CHAPELLE D''ARMENTIERES', '50.656208,2.899346', '36', 2, 4, 1, '2015-11-09'),
(37, 4, 'rue(s) Louis Bouquet 62840 FLEURBAIX', '50.643307,2.830900', '37', 2, 4, 1, '2015-11-09'),
(38, 5, 'chemin(s) Haut 59270 SAINT-JANS-CAPPEL', '50.763717,2.719717', '38', 2, 4, 1, '2015-11-09'),
(39, 5, 'rue(s) Jean Moulin 59270 BAILLEUL', '50.743733,2.735854', '39', 2, 4, 1, '2015-11-09'),
(40, 5, 'rue(s) Paul Perrier 59270 BAILLEUL', '50.737483,2.739671', '40', 2, 4, 1, '2015-11-09'),
(41, 5, 'rue(s) Route de Meteren 59270 BAILLEUL', '50.738651,2.724100', '41', 2, 4, 1, '2015-11-09'),
(42, 5, 'rue(s) Belle Croix 59270 BAILLEUL', '50.711853,2.682011', '42', 2, 4, 1, '2015-11-09'),
(43, 5, 'rue(s) de l''Abbé Lemire 59232 VIEUX-BERQUIN', '50.694397,2.641701', '43', 2, 4, 1, '2015-11-09'),
(44, 5, '44 rue(s) de l''Eglsie 59270 STRAZEELE', '50.727783,2.632879', '44', 2, 4, 1, '2015-11-09'),
(45, 5, 'rue(s) de Flêtre 59270 MERRIS', '50.723583,2.659473', '45', 2, 4, 1, '2015-11-09'),
(46, 6, 'avenue Henri Puchois 62840 LAVENTIE', '50.624097,2.769260', '46', 2, 4, 1, '2015-11-09'),
(47, 6, 'rue(s) Robert Parfait 62840 LAVENTIE', '50.625897,2.772801', '47', 2, 4, 1, '2015-11-09'),
(48, 6, 'rue(s) du Quai 59940 ESTAIRES', '50.642197,2.721780', '48', 2, 4, 1, '2015-11-09'),
(49, 6, 'rue(s) du Duc de Berry 59253 LA GORGUE', '50.636780,2.705770', '49', 2, 4, 1, '2015-11-09'),
(50, 6, 'rue(s) des Briquetteries 62136 LESTREM', '50.621227,2.686750', '50', 2, 4, 1, '2015-11-09'),
(51, 6, 'rue(s) d''Estaires 59940 NEUF-BERQUIN', '50.659840,2.672923', '51', 2, 4, 1, '2015-11-09');

-- --------------------------------------------------------

--
-- Structure de la table `tourneeoptimisee`
--

DROP TABLE IF EXISTS `tourneeoptimisee`;
CREATE TABLE IF NOT EXISTS `tourneeoptimisee` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `TourneeStandardId` int(10) NOT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Est basé sur` (`TourneeStandardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tourneestandard`
--

DROP TABLE IF EXISTS `tourneestandard`;
CREATE TABLE IF NOT EXISTS `tourneestandard` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `CamionId` int(10) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `JourCollecte` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Utilise` (`CamionId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `tourneestandard`
--

INSERT INTO `tourneestandard` (`Id`, `CamionId`, `Nom`, `JourCollecte`) VALUES
(3, 1, 'Béthune', 'lundi'),
(4, 1, 'Armentières', 'mardi'),
(5, 2, 'Bailleul', 'mercredi'),
(6, 2, 'Estaires', 'jeudi');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `collecte`
--
ALTER TABLE `collecte`
  ADD CONSTRAINT `Est affecté` FOREIGN KEY (`ConteneurId`) REFERENCES `conteneur` (`Id`),
  ADD CONSTRAINT `Est affecté2` FOREIGN KEY (`TourneeOptimiseeId`) REFERENCES `tourneeoptimisee` (`Id`);

--
-- Contraintes pour la table `conteneur`
--
ALTER TABLE `conteneur`
  ADD CONSTRAINT `Est associé` FOREIGN KEY (`TourneeStandardId`) REFERENCES `tourneestandard` (`Id`);

--
-- Contraintes pour la table `tourneeoptimisee`
--
ALTER TABLE `tourneeoptimisee`
  ADD CONSTRAINT `Est basé sur` FOREIGN KEY (`TourneeStandardId`) REFERENCES `tourneestandard` (`Id`);

--
-- Contraintes pour la table `tourneestandard`
--
ALTER TABLE `tourneestandard`
  ADD CONSTRAINT `Utilise` FOREIGN KEY (`CamionId`) REFERENCES `camion` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
