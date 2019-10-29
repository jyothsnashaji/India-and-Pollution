-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 29, 2019 at 12:27 PM
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
(1, 1, '', '2019-10-28 20:11:15.476398', 'kjkj'),
(1, 2, 'jyothsna', '2019-10-28 20:24:18.589656', 'jkkjn'),
(1, 3, 'jyothsna', '2019-10-28 20:24:46.207831', ',khnjnn'),
(1, 4, 'jyothsna', '2019-10-28 20:48:29.340669', 'hjhjh'),
(1, 5, 'jyothsna', '2019-10-28 20:48:38.430443', 'hjhjh'),
(1, 6, 'amalu', '2019-10-29 10:42:34.943172', 'hi');

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
  `date` datetime(6) NOT NULL,
  `place` varchar(255) NOT NULL,
  `image_path` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `description`, `hosted_by`, `date`, `place`, `image_path`) VALUES
(1, 'mnwed', 'rffgtgggt', 'amalu', '2019-01-10 10:00:00.000000', 'frfrf', 'download.jpeg'),
(2, 'deded', 'frdfref', 'amalu', '2019-10-24 10:00:00.000000', 'argrgreg', 'download.jpeg');

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
(1, 'jyothsna', '2019-10-28 18:52:11.490684', 0, 'hjgjhgjhg'),
(2, 'jyothsna', '2019-10-28 18:56:54.596773', 0, 'lojlhyjxfjf'),
(3, '', '2019-10-28 19:46:12.839679', 0, ''),
(4, 'amalu', '2019-10-29 10:01:27.944401', 0, 'jhfhgfhgbc');

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
(1, 'jyothsna', '1234', '', 0, ''),
(2, 'jyoths', '1234', 'jyothsnashaji99@gmail.com', 9207746246, 'Calicut'),
(3, 'sangeeth', '1234', 'efef', 13213, 'tvm'),
(4, 'sangeeth', '1234', 'jyothsnashaji99@gmail.com', 231231, 'Calicut'),
(5, 'sreeraj', '1234', 'jyothsnashaji99@gmail.com', 9207746246, 'Calicut'),
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
(1, 'amalu', 1);

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
  MODIFY `comment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `volunteer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
