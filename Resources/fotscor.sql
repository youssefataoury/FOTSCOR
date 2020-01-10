-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 10 jan. 2020 à 16:23
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fotscor`
--

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

DROP TABLE IF EXISTS `competition`;
CREATE TABLE IF NOT EXISTS `competition` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `onHoverLogo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

DROP TABLE IF EXISTS `participation`;
CREATE TABLE IF NOT EXISTS `participation` (
  `teamId` int(11) NOT NULL,
  `competitionId` int(255) NOT NULL,
  `saison` varchar(255) NOT NULL,
  KEY `teamId` (`teamId`),
  KEY `competitionId` (`competitionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2015 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`id`, `name`, `logo`) VALUES
(16, 'Deportivo Alavés', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/DeportivoAlavés.png'),
(15, 'Real Valladolid CF', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/RealValladolidCF.png'),
(14, 'Valencia CF', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/ValenciaCF.png'),
(13, 'Villarreal CF', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/VillarrealCF.png'),
(12, 'Real Sociedad de Fútbol', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/RealSociedaddeFútbol.png'),
(11, 'Real Betis Balompié', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/RealBetisBalompié.png'),
(10, 'RCD Mallorca', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/RCDMallorca.png'),
(9, 'Levante UD', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/LevanteUD.png'),
(8, 'Real Madrid CF', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/RealMadridCF.png'),
(7, 'Granada CF', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/GranadaCF.png'),
(6, 'Getafe CF', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/GetafeCF.png'),
(5, 'FC Barcelona', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/FCBarcelona.png'),
(4, 'RCD Espanyol de Barcelona', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/RCDEspanyoldeBarcelona.png'),
(3, 'CA Osasuna', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/CAOsasuna.png'),
(2, 'Club Atlético de Madrid', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/ClubAtléticodeMadrid.png'),
(1, 'Athletic Club', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/AthleticClub.png'),
(17, 'SD Eibar', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/SDEibar.png'),
(18, 'RC Celta de Vigo', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/RCCeltadeVigo.png'),
(19, 'Sevilla FC', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/SevillaFC.png'),
(20, 'CD Leganés', 'FOTSCOR/Resources/Logos/PrimeraDivision/TeamsLogo/CDLeganés.png'),
(21, 'AC Milan', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/ACMilan.png'),
(22, 'ACF Fiorentina', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/ACFFiorentina.png'),
(23, 'AS Roma', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/AS Roma.png'),
(24, 'Atalanta BC', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/AtalantaBC.png'),
(25, 'Bologna FC 1909', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/BolognaFC1909.png'),
(26, 'Cagliari Calcio', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/CagliariCalcio.png'),
(27, 'Genoa CFC', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/GenoaCFC.png'),
(28, 'FC Internazionale Milano', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/FCInternazionaleMilano.png'),
(29, 'Juventus FC', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/JuventusFC.png'),
(30, 'SS Lazio', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/SSLazio.png'),
(31, 'Parma Calcio 1913', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/ParmaCalcio1913.png'),
(32, 'SSC Napoli', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/SSCNapoli.png'),
(33, 'Udinese Calcio', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/UdineseCalcio.png'),
(34, 'Brescia Calcio', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/BresciaCalcio.png'),
(35, 'Hellas Verona FC', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/HellasVeronaFC.png'),
(36, 'US Sassuolo Calcio', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/USSassuoloCalcio.png'),
(37, 'UC Sampdoria', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/UCSampdoria.png'),
(38, 'Torino FC', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/TorinoFC.png'),
(39, 'SPAL 2013', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/SPAL2013.png'),
(40, 'US Lecce', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/USLecce.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` int(255) NOT NULL,
  `password` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `userId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL,
  `homeTeam` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `awayTeam` int(11) DEFAULT NULL,
  KEY `userId` (`userId`),
  KEY `matchId` (`matchId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_match`
--

DROP TABLE IF EXISTS `_match`;
CREATE TABLE IF NOT EXISTS `_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homeTeam` int(11) NOT NULL,
  `awayTeam` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `_date` date NOT NULL,
  `_time` time(6) NOT NULL,
  `homeTeamScore` int(11) DEFAULT NULL,
  `awayTeamScore` int(11) DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  `competition` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `homeTeam` (`homeTeam`),
  KEY `awayTeam` (`awayTeam`),
  KEY `competition` (`competition`),
  KEY `winner` (`winner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
