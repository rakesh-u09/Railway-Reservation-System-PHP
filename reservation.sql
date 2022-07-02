-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 03:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `email_id` varchar(30) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_age` int(20) NOT NULL,
  `p_gender` varchar(5) NOT NULL,
  `p_number` bigint(10) NOT NULL,
  `p_address` varchar(30) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`email_id`, `p_name`, `p_age`, `p_gender`, `p_number`, `p_address`, `p_id`) VALUES
('rakeshu_is19.rvitm@rvei.edu.in', 'Umesh', 45, 'm', 9591570910, 'sakrarayapatna, kadur', 2),
('rakesh9901182@gmail.com ', 'naresh', 20, 'm', 852852852, 'karwar', 3),
('naresg@gmail.com', 'Umesh T L', 45, 'm', 9591570910, 'padamane', 12),
('mumbaiindians@gmail.com', 'Naresh', 20, 'm', 789654123, 'kadur, Chikkamagalore', 16),
('rcbipl@gmail.com', 'Kirankumar Gouda', 84, 'm', 9482486207, 'Bharatanahalli', 18),
('rcbipl@gmail.com', 'Naresh Santosh Shet', 14, 'm', 9449174703, 'Samruddhi', 19),
('rcbipl@gmail.com', 'Naresh Santosh Shet', 21, 'o', 9449174703, 'Samruddhi', 20),
('rcbipl@gmail.com', 'Naresh Santosh Shet', 12, 'm', 9449174703, 'Samruddhi', 21),
('rcbipl@gmail.com', 'Naresh Santosh Shet', 14, 'f', 9449174703, 'Samruddhi', 22),
('mumbaiindians@gmail.com', 'Naresh Santosh Shet', 21, 'm', 9449174703, 'Samruddhi', 24),
('mumbaiindians@gmail.com', 'Naresh Santosh Shet', 24, 'm', 9449174703, 'jp nage', 30);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `name` varchar(30) NOT NULL,
  `plt_no` int(5) NOT NULL,
  `s_no` int(5) NOT NULL,
  `num_plt` int(5) NOT NULL,
  `ari_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`name`, `plt_no`, `s_no`, `num_plt`, `ari_time`) VALUES
('hubli jn', 5, 7, 20, '11:00 pm'),
('ksr bengalure', 10, 1, 11, '10:30 am'),
('kumta', 4, 6, 7, '12:00 pm'),
('mangalore', 3, 4, 5, '9:00 pm'),
('Miraj jn', 6, 5, 2, '1:00 pm'),
('mysore junction', 2, 3, 6, '8:30 am'),
('shivamogga', 3, 5, 4, '3:00 pm');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `user_id` varchar(30) NOT NULL,
  `pnr` int(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'confirmed',
  `train_num` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`user_id`, `pnr`, `status`, `train_num`) VALUES
('rakeshu_is19.rvitm@rvei.edu.in', 123456789, 'confirmed', 12725),
('rakesh9901182@gmail.com ', 741741741, 'confirmed', 16517),
('mumbaiindians@gmail.com', 852852365, 'confirmed', 16589),
('naresg@gmail.com', 852852366, 'confirmed', 12725),
('rcbipl@gmail.com', 852852367, 'confirmed', 852852),
('rcbipl@gmail.com', 852852368, 'confirmed', 16589),
('rcbipl@gmail.com', 852852369, 'confirmed', 16517),
('rcbipl@gmail.com', 852852370, 'confirmed', 16517),
('rcbipl@gmail.com', 852852371, 'confirmed', 16589),
('rcbipl@gmail.com', 852852372, 'confirmed', 16517),
('rcbipl@gmail.com', 852852373, 'confirmed', 16589),
('rcbipl@gmail.com', 852852374, 'confirmed', 16589),
('rcbipl@gmail.com', 852852375, 'confirmed', 16517),
('rcbipl@gmail.com', 852852376, 'confirmed', 12725),
('rcbipl@gmail.com', 852852377, 'confirmed', 16517),
('rcbipl@gmail.com', 852852378, 'confirmed', 16517),
('rcbipl@gmail.com', 852852379, 'confirmed', 12725),
('rcbipl@gmail.com', 852852380, 'confirmed', 12725),
('rcbipl@gmail.com', 852852381, 'confirmed', 16517),
('ipl@gmail.com', 852852382, 'confirmed', 16589),
('mumbaiindians@gmail.com', 852852383, 'confirmed', 16589),
('mumbaiindians@gmail.com', 852852384, 'confirmed', 852852),
('mumbaiindians@gmail.com', 852852385, 'confirmed', 16517),
('mumbaiindians@gmail.com', 852852386, 'confirmed', 16517),
('mumbaiindians@gmail.com', 852852387, 'confirmed', 852852),
('mumbaiindians@gmail.com', 852852388, 'confirmed', 16589);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `train_no` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `avb_seats` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`train_no`, `name`, `source`, `destination`, `avb_seats`) VALUES
(12725, 'Siddhaganga sf express', 'ksr bengalure', 'shivamogga', 100),
(16517, 'Kannur exp', 'mysore junction', 'mangalore', 92),
(16589, 'Rani Chennamma Express', 'ksr bengalure', 'Miraj jn', 94),
(852852, 'Janshatabdi', 'kumta', 'hubli jn', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email_id`, `password`) VALUES
('rcb', 'ipl@gmail.com', '123456789'),
('mumbai', 'mumbaiindians@gmail.com', '123456789'),
('Naresh', 'naresg@gmail.com', 'naresg@gmail.com'),
('rakesh', 'rakesh9901182@gmail.com ', '123456789'),
('pakesh', 'rakeshu_is19.rvitm@rvei.edu.in', '789456123'),
('rcb', 'rcbipl@gmail.com', '741741741');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `email` (`email_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`pnr`),
  ADD KEY `train-num` (`train_num`),
  ADD KEY `user-id` (`user_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`train_no`),
  ADD KEY `source_name` (`source`),
  ADD KEY `destination_name` (`destination`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `pnr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=852852389;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `email` FOREIGN KEY (`email_id`) REFERENCES `user` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `train-num` FOREIGN KEY (`train_num`) REFERENCES `train` (`train_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user-id` FOREIGN KEY (`user_id`) REFERENCES `user` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `train`
--
ALTER TABLE `train`
  ADD CONSTRAINT `destination_name` FOREIGN KEY (`destination`) REFERENCES `station` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `source_name` FOREIGN KEY (`source`) REFERENCES `station` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
