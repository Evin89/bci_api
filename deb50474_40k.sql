-- phpMyAdmin SQL Dump
-- version 4.0.10.19
-- https://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 28 mei 2018 om 09:59
-- Serverversie: 10.0.29-MariaDB-cll-lve
-- PHP-versie: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `deb50474_40k`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `scenario`
--

CREATE TABLE IF NOT EXISTS `scenario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(99) NOT NULL,
  `title` varchar(99) NOT NULL,
  `armies` varchar(999) NOT NULL,
  `battlefield` varchar(9999) NOT NULL,
  `deployment` varchar(9999) NOT NULL,
  `firstTurn` varchar(999) NOT NULL,
  `length` varchar(999) NOT NULL,
  `victoryConditions` varchar(9999) NOT NULL,
  `strategem` varchar(9999) NOT NULL,
  `tacticalObjectives` varchar(9999) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
