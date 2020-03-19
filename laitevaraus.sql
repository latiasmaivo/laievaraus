-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19.03.2020 klo 10:13
-- Palvelimen versio: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laitevaraus`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `kayttajat`
--

CREATE TABLE `kayttajat` (
  `kayttajaID` int(11) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `sahkoposti` varchar(255) NOT NULL,
  `salasana` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `kayttajat`
--

INSERT INTO `kayttajat` (`kayttajaID`, `nimi`, `sahkoposti`, `salasana`, `created_at`) VALUES
(1, 'testi', 'testi@e.fi', '$2y$10$LbgOO9J1v.oUaai1ikJSTOUd8ognr.y/amL7x4wROF32MLLLb8ana', '2020-03-04 13:32:21'),
(2, 'jeff', 'jeff@e.fi', '$2y$10$cwb02y.Pe0DVYpaLT3hoNefJIS00M/e5OZhQ7Jmu8JM/1uxaGNWJC', '2020-03-05 09:25:48'),
(3, 'Testi', 'pekka@pekka.fi', '$2y$10$Y70HQsDd4EU6WvWA3eXZuOWRLUx7zUd1sgBx4DiYDINByZrxt6fhS', '2020-03-05 09:48:00');

-- --------------------------------------------------------

--
-- Rakenne taululle `laite`
--

CREATE TABLE `laite` (
  `laiteID` int(11) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kategoria` varchar(255) NOT NULL,
  `saatavuus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `laite`
--

INSERT INTO `laite` (`laiteID`, `nimi`, `kategoria`, `saatavuus`) VALUES
(7, 'Harkko Jailio', 'kategoria', 'Saatavilla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kayttajat`
--
ALTER TABLE `kayttajat`
  ADD PRIMARY KEY (`kayttajaID`);

--
-- Indexes for table `laite`
--
ALTER TABLE `laite`
  ADD PRIMARY KEY (`laiteID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kayttajat`
--
ALTER TABLE `kayttajat`
  MODIFY `kayttajaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `laite`
--
ALTER TABLE `laite`
  MODIFY `laiteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
