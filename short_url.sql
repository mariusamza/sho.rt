-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2019 at 03:24 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `short_url`
--

-- --------------------------------------------------------

--
-- Table structure for table `short_url`
--

DROP TABLE IF EXISTS `short_url`;
CREATE TABLE IF NOT EXISTS `short_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_url` varchar(6) NOT NULL,
  `long_url` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `short_url`
--

INSERT INTO `short_url` (`id`, `short_url`, `long_url`, `views`) VALUES
(11, 'tFqZ7l', 'https://www.techonthenet.com/mysql/order_by.php', 0),
(10, 'aiVg96', 'https://getbootstrap.com/docs/4.0/content/tables/', 0),
(9, 'KQQ1iz', 'https://youtube.com', 6),
(8, 'UTPAtA', 'http://google.com', 0),
(12, 'bn1YEC', 'https://calendar.google.com/calendar/r?pli=1', 0),
(13, 'fQARDG', 'https://www.google.com/search?q=dsadsadsada&rlz=1C1GCEA_enRO826RO826&oq=dsadsadsada&aqs=chrome..69i57j69i60l4.717j0j1&sourceid=chrome&ie=UTF-8', 0),
(14, 'PAXURS', 'https://www.google.com/search?q=dsadsadsada&rlz=1C1GCEA_enRO826RO826&oq=dsadsadsada&aqs=chrome..69i57j69i60l4.717j0j1&sourceid=chrome&ie=UTF-8', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
