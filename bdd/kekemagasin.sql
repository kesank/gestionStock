-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 14 Janvier 2020 à 06:19
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

--
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `kekemagasin`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `codeart` varchar(5) NOT NULL,
  `libelle` varchar(10) NOT NULL,
  `prix` int(5) NOT NULL,
  `numcat` varchar(5) NOT NULL,
  PRIMARY KEY (`codeart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`codeart`, `libelle`, `prix`, `numcat`) VALUES
('001', 'pc', 25000, '001'),
('002', 'cable', 1000, '001'),
('003', 'facade', 15000, '001'),
('004', 'baterie', 16000, '001'),
('005', 'R45', 250, 'C01');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `codecat` varchar(5) NOT NULL,
  `nomcat` varchar(20) NOT NULL,
  PRIMARY KEY (`codecat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`codecat`, `nomcat`) VALUES
('C01', 'Informatiq'),
('C02', 'Divers'),
('C03', 'Electronique');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE IF NOT EXISTS `facture` (
  `numfact` int(5) NOT NULL AUTO_INCREMENT,
  `nomclient` varchar(50) NOT NULL,
  `libelle` varchar(20) NOT NULL,
  `prixuni` int(5) NOT NULL,
  `quantite` int(5) NOT NULL,
  `prixtotal` int(5) NOT NULL,
  PRIMARY KEY (`numfact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `matricule` varchar(5) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `role` varchar(15) NOT NULL,
  `motdepass` varchar(5) NOT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`matricule`, `nom`, `role`, `motdepass`) VALUES
('B/001', 'keke', 'Administrateur', '1234');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
