-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 01:14 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-tenis`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnikID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnikID`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'petar', 'petar');

-- --------------------------------------------------------

--
-- Table structure for table `mec`
--

CREATE TABLE `mec` (
  `mecID` int(11) NOT NULL,
  `teniserID` int(30) NOT NULL,
  `protivnik` varchar(100) NOT NULL,
  `datum` date DEFAULT NULL,
  `faza` varchar(30) NOT NULL,
  `turnirID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mec`
--

INSERT INTO `mec` (`mecID`, `teniserID`, `protivnik`, `datum`, `faza`, `turnirID`) VALUES
(1, 7, 'Rafael Nadal', '2022-06-14', 'Finale', 3),
(2, 1, 'Stefanos Tsitsipas', '2022-11-19', 'Polufinale', 4),
(3, 7, 'Novak Djokovic', '2022-03-17', 'Cetvrtfinale', 7),
(4, 4, 'Holger Rune', '2023-01-28', 'Polufinale', 6),
(5, 5, 'Carlos Alcaraz', '2022-06-15', 'Finale', 1),
(6, 7, 'Casper Ruud', '2022-04-19', '1. faza', 5),
(7, 4, 'Felix Auger-Aliassime', '2022-11-01', '2. faza', 1),
(8, 8, 'Taylor Fritz', '2022-07-17', 'Polufinale', 5),
(9, 8, 'Rafael Nadal', '2022-11-27', 'Finale', 3),
(10, 2, 'Stefanos Tsitsipas', '2022-07-25', 'Cetvrtfinale', 1),
(12, 8, 'Daniil Medvedev', '2022-03-11', '2. faza', 2),
(42, 8, 'Daniil Medvedev', '2023-04-28', 'Finale', 5);

-- --------------------------------------------------------

--
-- Table structure for table `teniser`
--

CREATE TABLE `teniser` (
  `teniserID` int(11) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `zemlja` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teniser`
--

INSERT INTO `teniser` (`teniserID`, `ime`, `prezime`, `zemlja`) VALUES
(1, 'Carlos', 'Alcaraz', 'Spanija'),
(2, 'Rafael', 'Nadal', 'Spanija'),
(3, 'Stefanos', 'Tsitsipas', 'Grcka'),
(4, 'Casper', 'Ruud', 'Norveska'),
(5, 'Daniil', 'Medvedev', 'Rusija'),
(6, 'Felix', 'Auger-Aliassime', 'Kanada'),
(7, 'Andrey', 'Rublev', 'Rusija'),
(8, 'Novak', 'Djokovic', 'Srbija'),
(9, 'Taylor', 'Fritz', 'SAD'),
(10, 'Holger', 'Rune', 'Danska');

-- --------------------------------------------------------

--
-- Table structure for table `turnir`
--

CREATE TABLE `turnir` (
  `turnirID` int(11) NOT NULL,
  `naziv` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `turnir`
--

INSERT INTO `turnir` (`turnirID`, `naziv`) VALUES
(1, 'Australian Open'),
(2, 'Indian Wells'),
(3, 'Monte Carlo Rolex Masters'),
(4, 'French Open'),
(5, 'Wimbledon'),
(6, 'Davis Cup'),
(7, 'US Open');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnikID`);

--
-- Indexes for table `mec`
--
ALTER TABLE `mec`
  ADD PRIMARY KEY (`mecID`);

--
-- Indexes for table `teniser`
--
ALTER TABLE `teniser`
  ADD PRIMARY KEY (`teniserID`);

--
-- Indexes for table `turnir`
--
ALTER TABLE `turnir`
  ADD PRIMARY KEY (`turnirID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnikID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mec`
--
ALTER TABLE `mec`
  MODIFY `mecID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teniser`
--
ALTER TABLE `teniser`
  MODIFY `teniserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `turnir`
--
ALTER TABLE `turnir`
  MODIFY `turnirID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
