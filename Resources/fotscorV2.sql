-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 13 jan. 2020 à 15:41
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

--
-- Déchargement des données de la table `competition`
--

INSERT INTO `competition` (`id`, `code`, `name`, `logo`, `onHoverLogo`) VALUES
(2014, 'PD', 'Primera Division', 'FOTSCOR/Resources/Logos/PrimeraDivision/ComptitionLogo/Logo/PrimeraDivision.png', 'FOTSCOR/Resources/Logos/PrimeraDivision/ComptitionLogo/OnHoverLogo/PrimeraDivisionHover.png'),
(2019, 'SA', 'Serie A', 'FOTSCOR/Resources/Logos/SerieA/ComptitionLogo/Logo/SerieA.png', 'FOTSCOR/Resources/Logos/SerieA/ComptitionLogo/OnHoverLogo/SerieAHover.png');

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
(40, 'US Lecce', 'FOTSCOR/Resources/Logos/SerieA/TeamsLogo/USLecce.png'),
(41, 'Germany', 'https://images.vexels.com/media/users/3/152460/isolated/preview/825e80bac186d247dd9332f1440d20df-logotipo-del-equipo-de-f-tbol-de-alemania-by-vexels.png'),
(42, 'Spain', 'https://www.trzcacak.rs/myfile/detail/126-1262059_spain-national-football-team-logo-png-spain-national.png'),
(43, ' Portugal', 'https://www.futboldecostarica.com/wp-content/uploads/2016/06/portugal-official-logo-soccer.png'),
(44, ' England', 'https://www.stickpng.com/assets/images/5b43227ae99939b4572e329c.png'),
(45, 'France', 'https://pngimage.net/wp-content/uploads/2018/06/france-football-logo-png-8.png'),
(46, 'Denmark', 'https://cdn.freelogovectors.net/wp-content/uploads/2018/03/danish_football_association-logo.png'),
(47, 'Italy', 'http://www.logo-designer.co/wp-content/uploads/2017/10/2017-italy-football-logo-figc-2018-world-cup.png'),
(48, 'Switzerland', 'https://www.pngkey.com/png/detail/105-1050508_switzerland-national-football-team-switzerland-football-logo.png'),
(49, 'Ukraine', 'https://i.pinimg.com/originals/27/cd/5f/27cd5fcfe5b9431136556b5acd6d9e34.png'),
(50, 'Sweden', 'https://upload.wikimedia.org/wikipedia/ar/archive/3/35/20180720000737%21Sweden_national_football_team_logo.png'),
(51, 'Poland', 'https://cdn.freelogovectors.net/wp-content/uploads/2018/03/polish_football_association_logo.png'),
(52, 'Czech Republic', 'https://1.bp.blogspot.com/-5eAqM5fFTbY/WC-CzCy1v-I/AAAAAAABFzc/yU4wQMwQsL4W4YJ_Y-vLCnMFt2MZQqWUgCLcB/s400/REP.%2BTCHECA%2BESCUDO%2B2.png'),
(53, 'Croatia', 'https://seeklogo.com/images/C/croacia-logo-59BE0ED23D-seeklogo.com.png'),
(54, 'Turkey', 'https://i.pinimg.com/originals/76/67/58/766758439534dbbe0ff2e08a82b89460.png'),
(55, 'Belgium', 'https://brandslogo.net/wp-content/uploads/2013/09/urbsfa-kbvb-vector-logo.png'),
(56, 'Russia', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/65/Russia_national_football_team_crest.svg/1200px-Russia_national_football_team_crest.svg.png'),
(57, 'Austria', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Coat_of_arms_of_Austria.svg/1200px-Coat_of_arms_of_Austria.svg.png'),
(58, 'Wales', 'https://www.clipartkey.com/mpngs/m/136-1369666_wales-national-soccer-team-logo-wales-football-team.png'),
(59, 'Finland', 'https://upload.wikimedia.org/wikipedia/fi/thumb/f/f3/Suomen_Palloliiton_maajoukkuetunnus.svg/593px-Suomen_Palloliiton_maajoukkuetunnus.svg.png'),
(60, 'Netherlands', 'https://upload.wikimedia.org/wikipedia/it/4/45/Scudo_nazionale_calcio_femminile_Paesi_Bassi.png'),
(71, 'Fluminense FC', 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Fluminense_fc_logo.svg/1200px-Fluminense_fc_logo.svg.png'),
(72, 'CA Mineiro', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Atletico_mineiro_galo.png'),
(73, 'Grêmio FBPA', 'https://i.pinimg.com/originals/2e/6a/74/2e6a74e655769475c28bbb5af5d9964e.png'),
(74, 'CA Paranaense', 'https://www.logofootball.net/wp-content/uploads/Athletico-Paranaense-Logo.png'),
(75, 'SE Palmeiras', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Palmeiras_logo.svg/1200px-Palmeiras_logo.svg.png'),
(76, 'Botafogo FR', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Botafogo_de_Futebol_e_Regatas_logo.svg/1200px-Botafogo_de_Futebol_e_Regatas_logo.svg.png'),
(77, 'Cruzeiro EC', 'https://upload.wikimedia.org/wikipedia/en/9/9a/Cruzeiro_ec_crest.png'),
(78, 'Chapecoense AF', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/1149.png'),
(79, 'Avaí FC', 'https://1.bp.blogspot.com/-Y4dDdAYT7GI/XM751Iln46I/AAAAAAAAs8s/C29ISZ-ZsMUTZLiDxT50SLxq-brVoqGTgCLcBGAs/s1600/Avai-Futebol-Clube-SC-1985.png'),
(80, 'São Paulo FC', 'https://i.pinimg.com/originals/78/de/54/78de548066c67ce08670bb61bbeb0c3c.png'),
(81, 'EC Bahia', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/1853.png'),
(82, 'SC Corinthians Paulista', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Sport_Club_Corinthians_Paulista_crest.svg/1200px-Sport_Club_Corinthians_Paulista_crest.svg.png'),
(83, 'CR Vasco da Gama', 'https://upload.wikimedia.org/wikipedia/fr/thumb/1/1a/ClubDeRegatasVascoDaGama.svg/1200px-ClubDeRegatasVascoDaGama.svg.png'),
(84, 'CR Flamengo', 'https://www.logofootball.net/wp-content/uploads/CR-Flamengo-Logo.png'),
(85, 'Ceará SC', 'https://upload.wikimedia.org/wikipedia/en/7/7d/Cear%C3%A1_SC.pngs'),
(86, 'Fortaleza EC', 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Escudo_do_Fortaleza_EC.png'),
(87, 'CS Alagoano', 'https://www.logofootball.net/wp-content/uploads/CS-Alagoano-Logo-750x750.png'),
(88, 'Goiás EC', 'https://upload.wikimedia.org/wikipedia/en/a/a4/Goi%C3%A1s_Esporte_Clube.png'),
(89, 'SC Internacional', 'https://pbs.twimg.com/media/CaKELSmWwAA75ov.png'),
(90, 'Santos FC', 'https://logodownload.org/wp-content/uploads/2017/02/ponte-preta-logo-escudo-6.png');

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
