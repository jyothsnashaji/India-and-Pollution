-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 05:40 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evs`
--

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `username` varchar(255) NOT NULL,
  `complain_id` int(255) NOT NULL,
  `complain` text NOT NULL,
  `locality` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `authority` varchar(255) NOT NULL,
  `authority_mail` varchar(255) NOT NULL,
  `upvote` int(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mail_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`username`, `complain_id`, `complain`, `locality`, `city`, `authority`, `authority_mail`, `upvote`, `image_path`, `date`, `subject`, `mail_status`) VALUES
('jyothsna', 143959, 'cde', 'fge', 'ghi', 'MDDA', 'jyothsnasahij99@gmail.com', 1, 'files/pp.jpeg', '2019-10-26', 'abc', 1),
('jyoths', 880160, 'hgjhg', 'Calicut', 'Calicut', 'MDDA', 'jyothsnasahij99@gmail.com', 0, 'files/', '2019-10-26', 'ghmjhv', 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL,
  `description` text NOT NULL,
  `hosted_by` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event`, `place`, `date`, `description`, `hosted_by`, `image_path`) VALUES
(1, 'abc', 'ijk', '2019-10-29 10:59:00.000000', 'cde', 'jyothsna', 'files/');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `phone` bigint(255) NOT NULL,
  `age` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `state`, `phone`, `age`, `gender`, `address`, `city`) VALUES
(1, 'jyothsna', '1234', '', '', '', '', 0, 0, '', '', ''),
(2, 'jyoths', '1234', 'Jyothsna', 'Shaji', 'jyothsnashaji99@gmail.com', 'Kerala', 9207746246, 20, 'female', 'Room number 116, Block 3, Ladies Hostel, National Institute of Technology', 'Calicut');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
