-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2017 at 09:00 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lan_id` int(100) NOT NULL,
  `fullname` varchar(10) NOT NULL,
  `about` varchar(255) NOT NULL,
  `votecount` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lan_id`, `fullname`, `about`, `votecount`) VALUES
(1, 'CSE406: Advanced Java Programming', 'CSE406 is', 5),
(2, 'CSE504: Storage Technology Foundation', 'CSE504 is', 6),
(3, 'CSE327: Simulation and Modelling', 'CSE327 is', 21),
(4, 'CSE434: Game Development in Unity 3D', 'CSE434 is', 17),
(5, 'CSE304: Computer Graphics and Visualization', 'CSE304 is ', 14),
(6, 'INT411: Software Project Management', 'INT411 is ', 34),
(7, 'INT402: Modern Web Programming Tools and Techniques', 'INT402 is ', 24),
(8, 'CSE493: Linux System Administration', 'CSE493 is ', 12),
(9, 'CSE436: Blockchain', 'CSE436 is ', 7),
(10,'CSE403: Network Security and Cryptography', 'CSE403 is ', 17);

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

CREATE TABLE `loginusers` (
  `id` int(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rank` varchar(80) NOT NULL DEFAULT 'voter',
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginusers`
--

INSERT INTO `loginusers` (`id`, `username`, `password`, `rank`, `status`) VALUES
(47, 'helllo', 'b373c043b854b0ebb97afe9b0ba47059', 'voter', 'ACTIVE'),
(46, 'jaha', 'e3df9353ab12391b79865f25a0d7068e', 'voter', 'ACTIVE'),
(45, 'action', '1ace9555f0aafb4fe1e75309e8f79e4d', 'voter', 'ACTIVE'),
(44, 'arjun', '451d3eb1573c7ebb70c08dfee9766509', 'voter', 'ACTIVE'),
(43, 'niku19', 'ac61ebbe84c06debaa78c0a832330164', 'voter', 'ACTIVE'),
(42, 'ejjhed', 'b3f70c0d1b269668e937741a5d5797ab', 'voter', 'ACTIVE'),
(41, 'Anirban', '9a7108cfaa7f51efb5fcda9e9d4b7a90', 'voter', 'ACTIVE'),
(40, 'dnddd', 'b5d165334b465a7fc42310750430b3f9', 'voter', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'NOTVOTED',
  `voted` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`firstname`, `lastname`, `username`, `status`, `voted`) VALUES
('sdjdjdj', 'djdjddjj', 'helllo', 'VOTED', 'INT411'),
('Anirban', 'oodoododo', 'jaha', 'NOTVOTED', NULL),
('Anirban', 'Dutta', 'action', 'VOTED', 'INT402'),
('Anirban', 'Dutta', 'arjun', 'NOTVOTED', NULL),
('janemaan', 'lohiid', 'niku19', 'VOTED', 'CSE436'),
('asdhk', 'ddddnd', 'ejjhed', 'NOTVOTED', NULL),
('Anirban', 'Dutta', 'Anirban', 'VOTED', 'INT411'),
('ndndnd', 'dhbhdd', 'dnddd', 'NOTVOTED', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lan_id`);

--
-- Indexes for table `loginusers`
--
ALTER TABLE `loginusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lan_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `loginusers`
--
ALTER TABLE `loginusers`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

