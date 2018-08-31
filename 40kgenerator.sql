-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 mei 2018 om 15:59
-- Serverversie: 5.7.14
-- PHP-versie: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `40kgenerator`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `objective`
--

CREATE TABLE `objective` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(99) NOT NULL,
  `type` varchar(99) NOT NULL,
  `description` varchar(999) NOT NULL,
  `objectiveConditions` varchar(999) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `objective`
--

INSERT INTO `objective` (`id`, `number`, `name`, `type`, `description`, `objectiveConditions`) VALUES
(3, 11, 'Secure Objective One', 'Capture and Control', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(4, 12, 'Secure Objective Two', 'Capture and Control', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(5, 13, 'Secure Objective Three', 'Capture and Control', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(6, 14, 'Secure Objective Four', 'Capture and Control', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(7, 15, 'Secure Objective Five', 'Capture and Control', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(8, 16, 'Secure Objective Six', 'Capture and Control', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(9, 21, 'Secure Objective One', 'Take and Hold', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(10, 22, 'Secure Objective Two', 'Take and Hold', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(11, 23, 'Secure Objective Three', 'Take and Hold', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(12, 24, 'Secure Objective Four', 'Take and Hold', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(13, 25, 'Secure Objective Five', 'Take and Hold', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(14, 26, 'Secure Objective Six', 'Take and Hold', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.', 'A vital objective has been identified in your vicinity. You are ordered to hold it at any cost.'),
(15, 31, 'Defend Objective One', 'Storm and Defend', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.'),
(16, 32, 'Defend Objective Two', 'Storm and Defend', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.'),
(17, 33, 'Defend Objective Three', 'Storm and Defend', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.'),
(18, 34, 'Defend Objective Four', 'Storm and Defend', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.'),
(19, 35, 'Defend Objective Five', 'Storm and Defend', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.'),
(20, 36, 'Defend Objective Six', 'Storm and Defend', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.', 'You are charged with the defence of a key objective. It must not be permitted to fall into enemy hands.'),
(21, 41, 'Advance', 'Seize Ground', 'Youmust advance swiftly into no manâ€™sland to prevent your opponent seizing the battlefield.', 'Youmust advance swiftly into no manâ€™sland to prevent your opponent seizing the battlefield.'),
(22, 42, 'Behind Enemy Lines', 'Seize Ground', 'Break through the foeâ€™sarmy and cut off their lines of escape.', 'Break through the foeâ€™sarmy and cut off their lines of escape.'),
(23, 43, 'Hold the Line', 'Seize Ground', 'It is critical that no foe breaks through your defences. Maintain a strong rearguard to protect your supply lines.', 'It is critical that no foe breaks through your defences. Maintain a strong rearguard to protect your supply lines.'),
(24, 44, 'Mission Critical Objective', 'Seize Ground', 'This area is of extreme importance. You are to lead an immediate all-out assault to capture it.', 'This area is of extreme importance. You are to lead an immediate all-out assault to capture it.'),
(25, 45, 'Supremacy', 'Seize Ground', 'The battleground is won one yard at a time. Continue to establish a strong military presence in the area.', 'The battleground is won one yard at a time. Continue to establish a strong military presence in the area.'),
(26, 46, 'Domination', 'Seize Ground', 'Dominate the field of battle. Storm every site of tactical import and leave the foe with no place to hide.', 'Dominate the field of battle. Storm every site of tactical import and leave the foe with no place to hide.'),
(27, 51, 'Overwhelming Firepower', 'Purge', 'A show of strength is required. Scour the enemy from the face of the battlefield with the use of extreme firepower.', 'A show of strength is required. Scour the enemy from the face of the battlefield with the use of extreme firepower.'),
(28, 52, 'Blood And Guts', 'Purge', 'Close with the foe and engage them in hand-to-hand combat. Show them no quarter, no mercy.', 'Close with the foe and engage them in hand-to-hand combat. Show them no quarter, no mercy.'),
(29, 53, 'No Prisoners', 'Purge', 'Exterminate your enemy, show them no mercy.', 'Exterminate your enemy, show them no mercy.'),
(30, 54, 'Area Denial', 'Purge', 'It is critical that this area is dominated. No enemy vanguard or guerilla units can be allowed to disrupt our plans.', 'It is critical that this area is dominated. No enemy vanguard or guerilla units can be allowed to disrupt our plans.'),
(31, 55, 'Psychological Warfare', 'Purge', 'Break the enemyâ€™s morale, make your foes tremble before you.', 'Break the enemyâ€™s morale, make your foes tremble before you.'),
(32, 56, 'Master The Warp', 'Purge', 'Desperate times call for desperate measures â€“ harness the power of the warp to defeat your foes.', 'Desperate times call for desperate measures â€“ harness the power of the warp to defeat your foes.'),
(33, 61, 'Kingslayer', 'Annihilation', 'The enemy commander is a powerful and effective leader and should be slain as quickly as possible.', 'The enemy commander is a powerful and effective leader and should be slain as quickly as possible.'),
(34, 62, 'Witch Hunter', 'Annihilation', 'The presence of enemy psykers can no longer be tolerated. Eliminate them with extreme prejudice.', 'The presence of enemy psykers can no longer be tolerated. Eliminate them with extreme prejudice.'),
(35, 63, 'Scour The Skies', 'Annihilation', 'It is vital to maintain air superiority.', 'It is vital to maintain air superiority.'),
(36, 64, 'Assassinate', 'Annihilation', 'The enemy looks to their champions for courage. Identify and assassinate them.', 'The enemy looks to their champions for courage. Identify and assassinate them.'),
(37, 65, 'Big Game Hunter', 'Annihilation', 'The larger the foe, the greater the gloryâ€¦', 'The larger the foe, the greater the gloryâ€¦'),
(38, 66, 'Priority Orders Received', 'Annihilation', 'This mission is of the utmost importance, and cannot be entrusted to anyone else.', 'This mission is of the utmost importance, and cannot be entrusted to anyone else.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `scenario`
--

CREATE TABLE `scenario` (
  `id` int(11) NOT NULL,
  `type` varchar(99) NOT NULL,
  `title` varchar(99) NOT NULL,
  `armies` varchar(999) NOT NULL,
  `battlefield` varchar(9999) NOT NULL,
  `deployment` varchar(9999) NOT NULL,
  `firstTurn` varchar(999) NOT NULL,
  `length` varchar(999) NOT NULL,
  `victoryConditions` varchar(9999) NOT NULL,
  `strategem` varchar(9999) NOT NULL,
  `tacticalObjectives` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `objective`
--
ALTER TABLE `objective`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `scenario`
--
ALTER TABLE `scenario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `objective`
--
ALTER TABLE `objective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT voor een tabel `scenario`
--
ALTER TABLE `scenario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
