-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 08, 2018 at 03:29 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs_5420_04`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` text,
  `projectedLatitude` decimal(8,6) DEFAULT NULL,
  `projectedLongitude` decimal(9,6) DEFAULT NULL,
  `projectedRadius` decimal(10,0) DEFAULT NULL,
  `threatLevel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `projectedLatitude`, `projectedLongitude`, `projectedRadius`, `threatLevel`) VALUES
(3, 'Battle of Los Angeles', NULL, NULL, NULL, 'LOW'),
(4, 'Maury Island Incident', NULL, NULL, NULL, 'LOW'),
(5, 'Kenneth Arnold UFO Sighting', NULL, NULL, NULL, 'LOW'),
(7, 'Roswell UFO Incident', NULL, NULL, NULL, 'LOW'),
(8, 'Mantell UFO Incident', NULL, NULL, NULL, 'LOW'),
(9, 'Chiles-Whitted UFO Encounter', NULL, NULL, NULL, 'LOW'),
(10, 'Gorman Dogfight', NULL, NULL, NULL, 'LOW'),
(11, 'McMinnville UFO Photographs', NULL, NULL, NULL, 'LOW'),
(12, 'Mariana UFO Incident', NULL, NULL, NULL, 'LOW'),
(13, 'Lubbock Lights', NULL, NULL, NULL, 'LOW'),
(14, 'Carson Sink UFO Incident', NULL, NULL, NULL, 'LOW'),
(15, 'Orfeo Angelucci Files', NULL, NULL, NULL, 'LOW'),
(16, '1952 Washington D.C. UFO Incident', NULL, NULL, NULL, 'LOW'),
(17, 'Flatwoods Monster', NULL, NULL, NULL, 'LOW'),
(18, 'Ellsworth UFO Sighting', NULL, NULL, NULL, 'LOW'),
(19, 'Felix Moncla Crash', NULL, NULL, NULL, 'LOW'),
(20, 'Levelland UFO Case', NULL, NULL, NULL, 'LOW'),
(21, 'Betty and Barney Hill Abduction', NULL, NULL, NULL, 'LOW'),
(22, 'Lonnie Zamora Incident', NULL, NULL, NULL, 'LOW'),
(23, 'Exeter Incident', NULL, NULL, NULL, 'LOW'),
(24, 'Kecksburg UFO Incident', NULL, NULL, NULL, 'LOW'),
(25, 'Portage County UFO Chase', NULL, NULL, NULL, 'LOW'),
(26, 'Jimmy Carter UFO Incident', NULL, NULL, NULL, 'LOW'),
(27, 'Pascagoula Abduction', NULL, NULL, NULL, 'LOW'),
(28, 'Stonehenge Incident', NULL, NULL, NULL, 'LOW'),
(29, 'Travis Walton Abduction', NULL, NULL, NULL, 'LOW'),
(30, 'Allagash Abductions', NULL, NULL, NULL, 'LOW'),
(31, 'Val Johnson Incident', NULL, NULL, NULL, 'LOW'),
(32, 'Cash-Landrum Incident', NULL, NULL, NULL, 'LOW'),
(33, 'Gulf Breeze UFO Incident', NULL, NULL, NULL, 'LOW'),
(34, 'Phoenix Lights', NULL, NULL, NULL, 'LOW'),
(35, 'Black Triangle', NULL, NULL, NULL, 'LOW'),
(36, 'Chicago UFO Sightings', NULL, NULL, NULL, 'LOW'),
(37, 'Van Buren Sighting', NULL, NULL, NULL, 'LOW'),
(38, 'Charlotte Sighting', NULL, NULL, NULL, 'LOW'),
(39, 'Honolulu Sighting', NULL, NULL, NULL, 'LOW'),
(40, 'Stephenville Sighting', NULL, NULL, NULL, 'LOW'),
(41, 'Morristown UFO', NULL, NULL, NULL, 'LOW'),
(42, '2014 Texas UFO Sightings', NULL, NULL, NULL, 'LOW'),
(43, '2018 Arizona UFO Sightings', NULL, NULL, NULL, 'LOW');

-- --------------------------------------------------------

--
-- Table structure for table `sightings`
--

CREATE TABLE `sightings` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `city` text CHARACTER SET utf8mb4,
  `state` text CHARACTER SET utf8mb4,
  `latitude` decimal(8,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `eventId` int(11) DEFAULT NULL,
  `credibility` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sightings`
--

INSERT INTO `sightings` (`id`, `date`, `city`, `state`, `latitude`, `longitude`, `sourceId`, `userId`, `eventId`, `credibility`) VALUES
(1, '1942-02-24 00:00:00', 'Los Angeles', 'California', 34.052200, 118.243700, NULL, 9, 3, 0),
(2, '1947-06-21 00:00:00', 'Maury Island', 'Washington', 47.377000, 122.429800, NULL, 9, 4, 0),
(3, '1947-06-24 00:00:00', 'Maury Island', 'Washington', 47.377000, 122.429800, NULL, 9, 4, 0),
(4, '1947-07-07 00:00:00', 'Helena', 'Montana', 46.589100, 112.039100, NULL, 9, NULL, 0),
(5, '1947-07-14 00:00:00', 'Roswell', 'New Mexico', 33.581000, 105.146000, NULL, 9, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `bio` text,
  `remember_token` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `hash`, `active`, `bio`, `remember_token`, `name`, `updated_at`, `created_at`) VALUES
(8, NULL, NULL, NULL, 'altaeg@gmail.com', '$2y$10$AzwDCHwyqEjnuWofw7edfuyGcS3wBBLuInWVI4HeZ6.KLDccMQXCy', NULL, 0, NULL, 'fjXU3tTYBVz6VyhjmV4wKTlze8G1FB5cV8qEipBlNQqfaFEKQTGLMqc9L4HC', 'Alta', '2018-10-07 20:29:58', '2018-10-07 20:29:58'),
(9, NULL, NULL, NULL, '9854ryoung@gmail.com', '$2y$10$UEfrlkwK/8Zd1a6kdxj62embp3WJOzaUe5fJJwznqOHjtoPacb2cK', NULL, 0, NULL, NULL, 'Ryan Young', '2018-10-08 02:36:59', '2018-10-08 02:36:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sightings`
--
ALTER TABLE `sightings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `EVENT` (`eventId`),
  ADD KEY `SOURCE` (`sourceId`),
  ADD KEY `USER` (`userId`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `sightings`
--
ALTER TABLE `sightings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sightings`
--
ALTER TABLE `sightings`
  ADD CONSTRAINT `fk_sightings_events_eventid` FOREIGN KEY (`eventId`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `fk_sightings_users_userid` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
