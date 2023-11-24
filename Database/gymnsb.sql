-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Nov 24, 2023 at 08:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymnsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `message`, `date`) VALUES
(11, 'The Gym is closed tomorrow due to Diwali', '2023-11-13'),
(12, 'gym is under maintainance for another two days', '2023-11-17'),
(13, 'tomorrow holiday!!!!', '2023-11-23'),
(14, 'gym will remain closed tomorrow on account of durga pooja', '2023-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL,
  `present` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `user_id`, `curr_date`, `curr_time`, `present`) VALUES
(22, '23', '2023-11-20', '10:43 PM', 1),
(41, '35', '2023-11-21', '10:42 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `amount`, `quantity`, `vendor`, `description`, `address`, `contact`, `date`) VALUES
(3, 'Treadmill', 909, 4, 'Dns Suppliers', 'For fast jogging,running,to reduce waste drastical', 'Hubli', '8521479633', '2019-03-07'),
(4, 'Vertical Press Machine', 949, 3, 'SS Industries', 'For Biceps And Triceps, Upper Back, Chest', 'Kerala', '1245558980', '2020-03-19'),
(5, 'Dumbell - Adjustable', 102, 26, 'Uptown Suppliers', 'Material: Steel, Rubber Plastic, Concrete', 'Andhra', '9875552100', '2020-03-29'),
(6, 'Multi Bench Press Machine', 219, 2, 'DnS Suppliers', '6 In 1 Multi Bench With Incline, Flat, Decline Ben', 'Delhi', '7410001010', '2020-04-05'),
(7, 'protoner rods', 1325, 5, 'SSS', 'For weight lifting', 'Hubli', '8524445452', '2023-06-03'),
(10, 'Fitness Rowing Mach', 5616, 12, 'Roww Stores', 'HIGHEST QUALITY: This best of class air rowing mac', 'Bangalore', '7412585555', '2021-06-12'),
(11, 'dumbell', 5103, 3, 'sss', 'For weight lifting', 'rrr', '8976545657', '2023-11-23'),
(12, 'dumbell', 900, 3, 'Stones and drills', 'For weight lifting', 'kochi', '8765435679', '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dor` date NOT NULL,
  `services` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `paid_date` date NOT NULL,
  `p_year` int(11) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count` int(100) NOT NULL,
  `ini_weight` int(100) NOT NULL DEFAULT 0,
  `curr_weight` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype` varchar(50) NOT NULL,
  `curr_bodytype` varchar(50) NOT NULL,
  `progress_date` date NOT NULL,
  `reminder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user_id`, `fullname`, `username`, `password`, `gender`, `dor`, `services`, `amount`, `paid_date`, `p_year`, `plan`, `address`, `contact`, `status`, `attendance_count`, `ini_weight`, `curr_weight`, `ini_bodytype`, `curr_bodytype`, `progress_date`, `reminder`) VALUES
(6, 'Prajath', 'praj', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2019-12-25', 'Fitness', 165, '2022-06-02', 2021, '3', 'Udupi', '8545878545', 'Active', 4, 54, 62, 'Slim', 'Buffed', '2023-11-23', 0),
(19, 'Sam', 'sam', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2019-04-02', 'Fitness', 55, '2021-06-11', 2021, '1', 'Delhi', '0258987850', 'Active', 23, 0, 0, '', '', '0000-00-00', 1),
(31, 'Pranathi', 'prani', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2023-11-20', 'Fitness', 55, '2023-11-21', 2023, '1', 'Banshankri', '9876543211', 'Active', 0, 50, 45, 'slim', 'fit', '2023-11-21', 0),
(32, 'Namrata', 'nams', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2023-11-06', 'Cardio', 1440, '2023-11-20', 2023, '12', 'Kumta', '68993456', 'Active', 5, 0, 0, '', '', '0000-00-00', 0),
(33, 'Gayathri', 'Gayu', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2023-11-03', 'Sauna', 35, '2023-11-21', 2023, '1', 'HSR layout', '987654357', 'Active', 2, 60, 58, 'moderate', '', '2023-11-20', 0),
(34, 'Nived', 'nivis', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '2023-10-18', 'Cardio', 40, '2023-11-23', 2023, '1', 'Mangalore', '547686543', 'Expired', 3, 82, 70, 'bulk', 'fit', '2023-11-20', 0),
(35, 'Praakhya', 'praakhya', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2023-11-14', 'Sauna', 420, '2023-11-20', 2023, '6', 'Andhra', '876546789', 'Active', 3, 45, 60, 'slim', 'fit', '2023-11-20', 0),
(36, 'Tilak', 'tilak', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '2023-11-12', 'Sauna', 1080, '2023-11-20', 2023, '12', 'Ambalpady', '8722981409', 'Active', 5, 0, 0, '', '', '0000-00-00', 1),
(37, 'neha', 'neha', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2023-11-23', 'Fitness', 165, '2023-11-23', 2023, '3', 'Banshankri', '7865879878', 'Active', 0, 0, 0, '', '', '0000-00-00', 0),
(38, 'Prams', 'Prams', 'c5f7a9549f074c11d0df48dd906209ae', 'Female', '2023-11-23', 'Sauna', 35, '2023-11-23', 0, '1', 'RR', '123456789', 'Active', 0, 0, 0, '', '', '0000-00-00', 0),
(39, 'lila', 'lila', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2023-11-25', 'Fitness', 165, '2023-11-24', 2023, '3', 'bijapur', '98765567', 'Active', 0, 0, 0, '', '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `name`, `charge`) VALUES
(1, 'Fitness', '55'),
(2, 'Sauna', '35'),
(3, 'Cardio', '40');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`id`, `name`, `message`, `status`, `date`, `user_id`) VALUES
(12, 'staff', 'asd', 'unread', '2020-04-16 22:39:59', 0),
(13, 'staff', 'asdasdas', 'unread', '2020-04-16 22:40:49', 0),
(14, 'staff', 'ASasA', 'unread', '2020-04-16 22:41:59', 0),
(15, 'staff', 'asdasdasd', 'unread', '2020-04-16 22:42:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`user_id`, `username`, `password`, `email`, `fullname`, `address`, `designation`, `gender`, `contact`) VALUES
(2, 'michelle', 'cac29d7a34687eb14b37068ee4708e7b', 'michelle@mail.com', 'Michelle R. Lane', 'Bangalore', 'Trainer', 'Female', 2147483647),
(5, 'bhavana', '81dc9bdb52d04dc20036dbd8313ed055', 'bhavanahugar@gmail.com', 'Bhavana', 'Indi', 'Cashier', 'Female', 2147483647),
(6, 'sankalp', '81dc9bdb52d04dc20036dbd8313ed055', 'idylliciconik@gmail.com', 'Sankalp', 'Chennai', 'Front Desk Staff', 'Male', 987654309),
(7, 'prajna', '81dc9bdb52d04dc20036dbd8313ed055', 'prajna@gmail.com', 'Prajna', 'Mumbai', 'Trainer', 'Female', 2147483647),
(8, 'chets', '81dc9bdb52d04dc20036dbd8313ed055', 'chetana@gmail.com', 'chetana', 'Madanpalli', 'Manager', 'Female', 98765432),
(9, 'mike', '81dc9bdb52d04dc20036dbd8313ed055', 'mike@hotmail.com', 'Mike', 'Mangalore', 'GYM Assistant', 'Male', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `task_status` varchar(50) NOT NULL,
  `task_desc` varchar(30) NOT NULL,
  `user_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `task_status`, `task_desc`, `user_id`) VALUES
(31, 'In Progress', 'I will do morning jogging', 36),
(32, 'In Progress', 'protien rich foods,balanced nu', 34),
(33, 'In Progress', '100 push-ups everyday', 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
