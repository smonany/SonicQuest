-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 04 déc. 2018 à 21:31
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `objets`
--

-- --------------------------------------------------------

--
-- Structure de la table `objets_manipulables`
--

CREATE TABLE `objets_manipulables` (
  `nom` text NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `niveau de zoom` int(11) NOT NULL,
  `icône` text NOT NULL,
  `indice` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `objets_manipulables`
--

INSERT INTO `objets_manipulables` (`nom`, `latitude`, `longitude`, `niveau de zoom`, `icône`, `indice`) VALUES
('robot', 48.833964859046, 2.3324865102768, 18, 'robot.jpg', 'Tails pourrait trouver la nouvelle base d\'Eggman à partir des données du robot.\r\nIl doit être à l\'aéroport pour réparer son avion.'),
('knuckles', 48.85302559914698, 2.3498725891113286, 16, 'knuckles.png', 'Merci beaucoup.\r\nAllons faire un peu de casse chez le savant fou !'),
('cage', 48.86086102792668, 2.3525977134704594, 16, 'cage.png', 'Ça devrait suffire pour arrêter Rouge.'),
('emerald', 48.80474361502917, 2.1204042434692387, 17, 'emerald.jpg', 'Bien. Ramenons-la à Knuckles');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
