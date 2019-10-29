-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 29, 2019 at 07:06 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `post_id` int(255) NOT NULL,
  `comment_id` int(255) NOT NULL,
  `commented_by` varchar(255) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`post_id`, `comment_id`, `commented_by`, `time`, `comment`) VALUES
(5, 7, 'amalu', '2019-10-29 15:28:24.910912', 'The raising temperatures ad unprecedented rains denote a grave situation'),
(6, 8, 'sangeeth', '2019-10-29 15:33:23.503359', 'The meteors destroyed  them'),
(5, 9, 'sangeeth', '2019-10-29 15:34:10.241826', 'Greta says so. Greta is great!'),
(7, 10, 'jyothsna', '2019-10-29 15:40:33.421123', 'no'),
(5, 11, 'jyothsna', '2019-10-29 16:18:10.899334', 'Very Relevant Question');

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
  `event_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `hosted_by` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) NOT NULL,
  `image_path` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `description`, `hosted_by`, `date`, `place`, `image_path`) VALUES
(3, 'Plantation Drive', 'One of the best and most effective way to combat the menace of air pollution is by planting trees,', 'jyothsna', '2019-10-30', 'MB Ground', 'plantation.jpeg'),
(4, 'Beach Clean Up', 'Beach cleanups are volunteer activities that take place on a regular basis along coastlines around the world. ', 'sangeeth', '2019-10-31', 'Calicut', 'beach.jpeg'),
(5, 'Nature Trek', 'The Nature Trek encompasses a journey through rustic railway tracks, exhilarating tunnels, mystic terrains, imposing waterfalls and gorges.\r\n', 'jyothsna', '2019-11-27', 'Thiruvananthapuram', 'trek.jpeg'),
(6, 'Reilef Efforts', 'Disaster response requires rapid mobilization, but the help must be of the right type.', 'sreeraj', '2019-11-25', 'Thiruvananthapuram', 'relief.jpeg'),
(7, 'Blood Donation Drive', 'Giving blood is a simple thing to do, but it can make a big difference in the lives of others. ', 'amalu', '2019-11-28', 'Audi', 'donation.png'),
(8, 'Workshop on Alternative Sources of Energy', ' The two major motives for conserving energy are to save on utility bills and protect the environment. ', 'sreeraj', '2019-11-27', 'Calicut', 'energy.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(255) NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `upvote` int(100) NOT NULL,
  `post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `posted_by`, `time`, `upvote`, `post`) VALUES
(5, 'sreeraj', '2019-10-29 15:01:09.297708', 0, 'Is Climate Change Real?'),
(6, 'amalu', '2019-10-29 15:30:45.889150', 0, 'Where did the dinosaurs go?'),
(7, 'sangeeth', '2019-10-29 15:37:03.491419', 0, 'Can development justify deforestation? '),
(8, 'jyothsna', '2019-10-29 15:39:54.878893', 0, 'How far can government policies aid in conservation');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `phone`, `city`) VALUES
(1, 'Jyothsna', '1234', '', 0, ''),
(2, 'jyoths', '1234', 'jyothsnashaji99@gmail.com', 9207746246, 'Calicut'),
(3, 'Sangeeth', '1234', 'efef', 13213, 'tvm'),
(4, 'sangeeth', '1234', 'jyothsnashaji99@gmail.com', 231231, 'Calicut'),
(5, 'Sreeraj', '1234', 'jyothsnashaji99@gmail.com', 9207746246, 'Calicut'),
(6, 'amalu', '1234', 'jyothsnashaji99@gmail.com', 9207746246, 'Calicut'),
(7, 'amalu', '1234', 'jyothsnashaji99@gmail.com', 9207746246, 'Calicut');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `volunteer_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `event_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`volunteer_id`, `username`, `event_id`) VALUES
(1, 'amalu', 1),
(2, 'jyothsna', 3),
(5, 'jyothsna', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`volunteer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `volunteer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
