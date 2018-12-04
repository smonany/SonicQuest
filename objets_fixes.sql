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
-- Structure de la table `objets_fixes`
--

CREATE TABLE `objets_fixes` (
  `nom` text NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `niveau de zoom` int(11) NOT NULL,
  `icône` text NOT NULL,
  `indice` text,
  `objet_a_appliquer` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `objets_fixes`
--

INSERT INTO `objets_fixes` (`nom`, `latitude`, `longitude`, `niveau de zoom`, `icône`, `indice`, `objet_a_appliquer`) VALUES
('tails', 48.73190787474534, 2.3669528961181645, 14, 'tails.png', 'La base d\'Eggman se situe au point de coordonnées [48.861, 2.353].', 'robot'),
('cadenas', 48.86086102792668, 2.3525977134704594, 16, 'cadens.jpg', 'Il faut trouver quelqu\'un qui puisse casser le verrou, quelqu\'un comme Knuckles.\r\nIl est à Notre Dame.', 'knuckles'),
('knuckles', 48.85302559914698, 2.3498725891113286, 16, 'knuckles.png', 'Knuckles ne viendra aider que lorsqu\'il aura récupéré la Master Emerald, volée par Rouge.\r\nRouge voudra sûrement voler les bijoux entreposés au Grand Palais', 'emerald'),
('espio', 48.86612631167763, 2.31238603591919, 16, 'espio.png', 'La prochaine cible de Rouge sera au château de Versailles.\r\nOn a préparé un piège mais il nous manque une cage.\r\nOn se retrouve à Versailles.', NULL),
('rouge', 48.80474361502917, 2.1204042434692387, 17, 'rouge.png', 'Je lui ai volé ça : il avait l\'air d\'y tenir.\r\nJe l\'ai entendu parler de la capture de Sonic et d\'une \"Dame de Fer\".', 'cage'),
('sonic', 48.86024694402132, 2.2924464941024785, 18, 'sonic.jpg', 'J\'ai entendu Eggman dire qu\'il avait posé une bombe dans la ville !\r\nIl a dit qu\'elle passerait inaperçue là où elle était et il a fait allusion aux 7Emeuraudes du Chaos...', NULL),
('bombe', 48.85703876250805, 2.3118656873703007, 18, 'bombe.jpeg', NULL, 'code');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
