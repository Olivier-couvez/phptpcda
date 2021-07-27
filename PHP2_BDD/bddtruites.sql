-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Sam 21 Mars 2015 à 18:34
-- Version du serveur: 5.5.28-log
-- Version de PHP: 5.4.9

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bddtruites`
--
DROP DATABASE IF EXISTS `bddtruites`;
CREATE DATABASE `bddtruites` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bddtruites`;

-- --------------------------------------------------------

--
-- Structure de la table `bassin`
--

DROP TABLE IF EXISTS `bassin`;
CREATE TABLE IF NOT EXISTS `bassin` (
  `idBassin` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `refCapteur` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idBassin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `bassin`
--

INSERT INTO `bassin` (`idBassin`, `nom`, `description`, `photo`, `refCapteur`) VALUES
(1, 'Bassin du Hem', '20 hectares dans le centre d''Armentières.', 'bassins1.jpg', 'E4FD'),
(2, 'Bassin du Héron', '15 hectares au centre de Villeneuve-d''Ascq.', 'bassins2.jpg', '842A'),
(3, 'Bassin de l''arc en ciel', '5 hectares au coeur des flandres. ', 'bassins3.jpg', '850E');

-- --------------------------------------------------------

--
-- Structure de la table `temperature`
--

DROP TABLE IF EXISTS `temperature`;
CREATE TABLE IF NOT EXISTS `temperature` (
  `idTemp` int(11) NOT NULL AUTO_INCREMENT,
  `temp` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idBassin` int(11) NOT NULL,
  PRIMARY KEY (`idTemp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15; ;

--
-- Contenu de la table `temperature`
--

INSERT INTO `temperature` (`idTemp`, `temp`, `date`, `idBassin`) VALUES
(1, 11.3, '2015-03-21 08:05:20', 1),
(2, 11.7, '2015-03-21 12:00:00', 1),
(3, 11.8, '2015-03-21 16:00:00', 1),
(4, 9.8, '2015-03-21 04:00:00', 2),
(5, 10.1, '2015-03-21 08:00:00', 2),
(6, 10.2, '2015-03-21 20:00:00', 1),
(7, 10.3, '2015-03-21 22:00:00', 1),
(8, 10.3, '2015-03-21 12:00:00', 2),
(9, 10.3, '2015-03-21 16:00:00', 2),
(10, 10.0, '2015-03-21 20:00:00', 2),
(11, 9.8, '2015-03-21 04:00:00', 3),
(12, 10.3, '2015-03-21 08:00:00', 3),
(13, 10.5, '2015-03-21 12:00:00', 3),
(14, 10.6, '2015-03-21 16:00:00', 3);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE USER 'bts'@'localhost' IDENTIFIED BY 'snir';
GRANT USAGE ON * . * TO 'bts'@'localhost' IDENTIFIED BY 'snir' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;
GRANT SELECT, INSERT, UPDATE, DELETE ON `bddtruites` . * TO 'bts'@'localhost';
