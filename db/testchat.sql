-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2020 at 12:49 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `reciever_id` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `reciever_id`, `message`, `time_stamp`) VALUES
(1, '1', '2', 'what''s up', '2020-03-08 05:58:05'),
(2, '2', '1', 'I''m good homie', '2020-03-08 05:58:24'),
(3, '1', '2', 'Gwapo kay ka', '2020-03-08 08:14:41'),
(4, '1', '2', 'no way', '2020-03-08 08:15:51'),
(5, '1', '2', 'no way', '2020-03-08 08:17:01'),
(6, '1', '2', 'no way', '2020-03-08 08:18:37'),
(7, '2', '1', 'no way', '2020-03-08 08:23:13'),
(8, '1', '2', 'cool', '2020-03-08 08:24:29'),
(9, '1', '2', 'cool', '2020-03-08 08:28:29'),
(10, '1', '2', 'cool', '2020-03-08 08:28:41'),
(11, '1', '2', 'cool', '2020-03-08 08:29:10'),
(12, '1', '2', 'cool', '2020-03-08 08:33:47'),
(13, '1', '2', 'a', '2020-03-08 10:53:22'),
(14, '1', '2', 'a', '2020-03-08 11:02:17'),
(15, '1', '2', 'a', '2020-03-08 11:07:12'),
(16, '1', '2', 'a', '2020-03-08 11:08:10'),
(17, '1', '2', 'a', '2020-03-08 11:08:45'),
(18, '1', '2', 'msg', '2020-03-08 11:26:45'),
(19, '', '', '', '2020-03-08 11:32:55'),
(20, '', '', '', '2020-03-08 11:34:23'),
(21, '', '', '', '2020-03-08 11:35:02'),
(22, '', '', '', '2020-03-08 11:41:07'),
(23, '1', '2', 'asd', '2020-03-08 11:43:59'),
(24, '2', '1', 'a', '2020-03-08 11:45:28'),
(25, '2', '1', 'gwapa au ka', '2020-03-08 11:45:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
