-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 01:10 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profesio`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept`
--

CREATE TABLE `accept` (
  `from_db` varchar(100) NOT NULL,
  `to_db` varchar(100) NOT NULL,
  `cust_n` varchar(100) NOT NULL,
  `emp_n` varchar(100) NOT NULL,
  `client_address` varchar(200) NOT NULL,
  `service_needed` varchar(100) NOT NULL,
  `charges` int(100) NOT NULL,
  `date_of_service` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `email_db` varchar(50) NOT NULL DEFAULT 'no',
  `username_db` varchar(50) NOT NULL,
  `password_db` varchar(51) NOT NULL,
  `cust_id_db` varchar(11) NOT NULL,
  `deleted` varchar(5) DEFAULT 'no',
  `deactivate_db` varchar(5) NOT NULL DEFAULT 'no',
  `active_db` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`email_db`, `username_db`, `password_db`, `cust_id_db`, `deleted`, `deactivate_db`, `active_db`) VALUES
('shweta@gmail.com', 'Shweta_Pal_', 'shweta', 'C213166', 'no', 'no', 1),
('testc@gmail.com', 'Test_user_C217419', 'aaaaaaaa', 'C217419', 'no', 'no', 1),
('siddharth@gmail.com', 'Siddharth_Rajput_', 'siddharth', 'C266200', 'no', 'no', 1),
('sonali@gmail.com', 'Sonali', 'sonali', 'C3434', 'no', 'no', 1),
('nitesh@gmail.com', 'Nitesh _Nanda_', 'nitesh', 'C398299', 'no', 'no', 1),
('harshitrajpal@gmail.com', 'Harshit_Rajpal_', 'harshit', 'C439583', 'no', 'no', 1),
('kritika@gmail.com', 'Kritika_Phulli_', 'kritika', 'C452702', 'no', 'no', 1),
('sweety@gmail.com', 'Sweety_Jha_', 'sweety', 'C697145', 'no', 'no', 1),
('sachin@gmail.com', 'Sachin_Sharma_', 'sachin', 'C741224', 'no', 'no', 1),
('ramanuj@gamil.com', 'Ramanuj_Vashistha_', 'ramanuj', 'C955938', 'no', 'no', 1),
('saloni@gmailcom', 'saloni_jain_', 'saloni', 'E148938', 'no', 'no', 1),
('harshit@gmail.com', 'harshit_rajpai_', 'harshit', 'E185279', 'no', 'no', 1),
('harsh@gmail.com', 'Harsh_Chamoli_', 'harsh', 'E434939', 'no', 'no', 1),
('arpit@gmail.com', 'arpit_gupta_', 'arpit', 'E467553', 'no', 'no', 1),
('tanvi@gmail.com', 'tanvi_kalpani_', 'tanvi', 'E510343', 'no', 'no', 1),
('nishant@gmail.com', 'nishant_kaushik_', 'nishant', 'E522791', 'no', 'no', 1),
('amrit@gmaill.com', 'amrit_thulal_', 'amrit', 'E635585', 'no', 'no', 1);

-- --------------------------------------------------------

--
-- Table structure for table `circle`
--

CREATE TABLE `circle` (
  `user_1` varchar(50) NOT NULL,
  `user_2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circle`
--

INSERT INTO `circle` (`user_1`, `user_2`) VALUES
('C266200', 'E148938'),
('C266200', 'E522791'),
('C266200', 'E510343'),
('C266200', 'E489054'),
('C266200', 'E467553'),
('C266200', 'E434939'),
('C266200', 'E185279'),
('C213166', 'E148938'),
('C213166', 'E522791'),
('C213166', 'E510343'),
('C213166', 'E489054'),
('C213166', 'E467553'),
('C213166', 'E434939'),
('C213166', 'E185279'),
('C398299', 'E148938'),
('C398299', 'E522791'),
('C398299', 'E510343'),
('C398299', 'E489054'),
('C398299', 'E467553'),
('C398299', 'E434939'),
('C398299', 'E185279'),
('C439583', 'E148938'),
('C439583', 'E522791'),
('C439583', 'E510343'),
('C439583', 'E489054'),
('C439583', 'E467553'),
('C439583', 'E434939'),
('C439583', 'E185279'),
('C452702', 'E148938'),
('C452702', 'E522791'),
('C452702', 'E510343'),
('C452702', 'E489054'),
('C452702', 'E467553'),
('C452702', 'E434939'),
('C452702', 'E185279'),
('C573251', 'E148938'),
('C573251', 'E522791'),
('C573251', 'E510343'),
('C573251', 'E489054'),
('C573251', 'E467553'),
('C573251', 'E434939'),
('C573251', 'E185279'),
('C6178', 'E148938'),
('C6178', 'E522791'),
('C6178', 'E510343'),
('C6178', 'E489054'),
('C6178', 'E467553'),
('C6178', 'E434939'),
('C6178', 'E185279'),
('C697145', 'E148938'),
('C697145', 'E522791'),
('C697145', 'E510343'),
('C697145', 'E489054'),
('C697145', 'E467553'),
('C697145', 'E434939'),
('C697145', 'E185279'),
('C720548', 'E148938'),
('C720548', 'E522791'),
('C720548', 'E510343'),
('C720548', 'E489054'),
('C720548', 'E467553'),
('C720548', 'E434939'),
('C720548', 'E185279'),
('C741224', 'E148938'),
('C741224', 'E522791'),
('C741224', 'E510343'),
('C741224', 'E489054'),
('C741224', 'E467553'),
('C741224', 'E434939'),
('C741224', 'E185279'),
('C898882', 'E148938'),
('C898882', 'E522791'),
('C898882', 'E510343'),
('C898882', 'E489054'),
('C898882', 'E467553'),
('C898882', 'E434939'),
('C898882', 'E185279'),
('C955938', 'E148938'),
('C955938', 'E522791'),
('C955938', 'E510343'),
('C955938', 'E489054'),
('C955938', 'E467553'),
('C955938', 'E434939'),
('C955938', 'E185279'),
('C3434', 'E148938'),
('C3434', 'E522791'),
('C3434', 'E510343'),
('C3434', 'E489054'),
('C3434', 'E467553'),
('C3434', 'E434939'),
('C3434', 'E185279'),
('', ''),
('C955938', 'E635585');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `cust_id_db` varchar(100) NOT NULL,
  `first_name_db` varchar(21) NOT NULL,
  `last_name_db` varchar(21) NOT NULL,
  `dob_db` date NOT NULL,
  `city_db` varchar(11) NOT NULL,
  `telephone_db` text NOT NULL,
  `image_loc` varchar(100) NOT NULL DEFAULT './assets/images/profile_pics/defaults/head_emerald.png',
  `address_db` varchar(100) NOT NULL DEFAULT 'default_address',
  `deleted` varchar(5) NOT NULL DEFAULT 'no',
  `deactivate_db` varchar(5) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`cust_id_db`, `first_name_db`, `last_name_db`, `dob_db`, `city_db`, `telephone_db`, `image_loc`, `address_db`, `deleted`, `deactivate_db`) VALUES
('C213166', 'Shweta', 'Pal', '2019-03-05', 'Gurgaon', '2147483647', './assets/images/uploads/57efc1195e0e6f6111bb4a740b6fbbc6.jpg', 'default_address', 'no', 'no'),
('C217419', 'Test', 'user', '2019-07-16', 'Delhi', '9711718152', './assets/images/profile_pics/defaults/head_emerald.png', 'Saket', 'no', 'no'),
('C266200', 'Siddharth', 'Rajput', '1991-03-05', 'Rajouri', '987654388', './assets/images/uploads/7ed3590fd622cd828fc6739e73246702.jpg', 'default_address', 'no', 'no'),
('C3434', 'Sonali', 'Sah', '2019-06-06', 'Delhi', '123456789', './assets/images/uploads/5b4a1f5ba2155b8218ac8b3eed758ee4.png', 'default_address', 'no', 'no'),
('C398299', 'Nitesh ', 'Nanda', '1996-06-21', 'Delhi', '2147483647', './assets/images/uploads/5871fa707c6434d4cf9fcc806feafc77.jpg', 'default_address', 'no', 'no'),
('C439583', 'Harshit', 'Rajpal', '2019-10-24', 'Delhi', '1234567889', './assets/images/uploads/392b142ce46a332cb630e956db7b73a4.jpg', 'default_address', 'no', 'no'),
('C452702', 'Kritika', 'Phulli', '2019-12-07', 'Dwarka', '2147483647', './assets/images/uploads/23a8e531bb2168ce663987636d572ca4.jpg', 'default_address', 'no', 'no'),
('C697145', 'Sweety', 'Jha', '1995-01-03', 'Hauz Khas', '2147483647', './assets/images/uploads/c0eba91eb66c24cfc501bdf66646665f.jpg', 'default_address', 'no', 'no'),
('C741224', 'Sachin', 'Sharma', '1998-06-03', 'Chandigarh', '2147483647', './assets/images/uploads/692904c79357b0c5d2b03b9a3f60fb1d.jpg', 'default_address', 'no', 'no'),
('C955938', 'Ramanuj', 'Vashistha', '2019-12-20', 'Dwarka', '2147483647', './assets/images/uploads/9d3ea20be7f53c64e60c884cdfe654d6.jpg', 'default_address', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id_db` varchar(11) NOT NULL,
  `first_name_db` varchar(21) NOT NULL,
  `last_name_db` varchar(21) NOT NULL,
  `experience_db` int(50) NOT NULL DEFAULT '0',
  `address_db` varchar(50) NOT NULL,
  `city_db` varchar(11) NOT NULL,
  `telephone_db` text NOT NULL,
  `profession_db` varchar(12) NOT NULL,
  `charges_db` int(11) NOT NULL,
  `age_db` int(100) NOT NULL DEFAULT '0',
  `gender_db` varchar(10) NOT NULL DEFAULT 'male',
  `dob_db` date NOT NULL,
  `image_loc` varchar(100) NOT NULL DEFAULT './assets/images/profile_pics/defaults/head_emerald.png',
  `deleted` varchar(5) NOT NULL DEFAULT 'no',
  `deactivated` varchar(5) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id_db`, `first_name_db`, `last_name_db`, `experience_db`, `address_db`, `city_db`, `telephone_db`, `profession_db`, `charges_db`, `age_db`, `gender_db`, `dob_db`, `image_loc`, `deleted`, `deactivated`) VALUES
('E148938', 'Saloni', 'Jain', 2, 'Greater Noida', 'Noida', '2147483647', 'Gardener', 500, 23, 'male', '1995-07-30', './assets/images/uploads/f5094180ee256b79fe8cb2e8bc1891e7.jpg', 'no', 'no'),
('E185279', 'Harshit', 'Bhan', 3, 'Greater Noida', 'Noida', '2147483647', 'Technician', 500, 19, 'male', '1993-02-12', './assets/images/uploads/c3db17f9d8a1d6df5699ff9f6084bd01.jpg', 'no', 'no'),
('E434939', 'Harsh', 'Chamoli', 5, 'Hyderabad', 'Hyderabad', '2147483647', 'Architect', 900, 35, 'male', '2019-04-25', './assets/images/uploads/b9edbeac220cf1f4db61c91f2c979ee0.jpg', 'no', 'no'),
('E467553', 'Arpit', 'Gupta', 9, 'East Delhi', 'Delhi', '2147483647', 'Labourer', 650, 38, 'male', '1993-08-29', './assets/images/uploads/f8bf4ef97363d7c5fa99bfc4e7f0f805.jpg', 'no', 'no'),
('E510343', 'Tanvi', 'Kapani', 13, 'South Delhi', 'Delhi', '2147483647', 'Tutor', 990, 31, 'male', '2019-05-21', './assets/images/uploads/325d6bca9e8b9e535e4ce1f627727ae3.jpg', 'no', 'no'),
('E522791', 'Nishant', 'kaushik', 10, 'Gurgaon sec 9', 'Gurgaon', '2147483647', 'Tutor', 900, 35, 'male', '2019-09-27', './assets/images/uploads/f6cad7a6ff019b70e9690df8c647e1de.jpg', 'no', 'no'),
('E635585', 'Amrit', 'Thulal', 14, 'New Delhi', 'Delhi', '1234567899', 'Tutor', 990, 16, 'male', '1985-08-06', './assets/images/uploads/a8d0c7d361239978dc290dcb70e87206.jpg', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `from_id_db` varchar(100) NOT NULL,
  `to_id_db` varchar(100) NOT NULL,
  `from_name_db` varchar(30) NOT NULL,
  `to_name_db` varchar(30) NOT NULL,
  `message_db` text NOT NULL,
  `time_stanp_db` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`from_id_db`, `to_id_db`, `from_name_db`, `to_name_db`, `message_db`, `time_stanp_db`) VALUES
('C213166', 'E148938', 'Shweta_Pal', 'Saloni_Jain', 'hi,saloni, i am sweta pal i am sending you request please accept.', '2019-06-25 16:55:41'),
('E434939', 'C213166', 'Harsh_Chamoli', 'Shweta_Pal', 'hello Shweta pal, I would love to work for you,since I am moving to greater kailash next week', '2019-06-26 16:05:24'),
('C213166', 'E434939', 'Shweta_Pal', 'Harsh_Chamoli', 'ok, i am sending you request please accept', '2019-06-26 16:06:45'),
('E434939', 'C213166', 'Harsh_Chamoli', 'Shweta_Pal', 'thankyou for your service request', '2019-06-27 04:30:56'),
('C213166', 'E434939', 'Shweta_Pal', 'Harsh_Chamoli', 'request accepted,thankyou.', '2019-06-27 04:31:23'),
('E434939', 'C266200', 'Harsh_Chamoli', 'Siddharth_Rajput', 'hey I want to serve you', '2019-06-27 06:23:05'),
('C213166', 'E434939', 'Shweta_Pal', 'Harsh_Chamoli', 'hiii\n', '2019-06-27 06:26:26'),
('E434939', 'C439583', 'Harsh_Chamoli', 'Harshit_Rajpal', 'hello harshit', '2019-06-27 06:28:49'),
('C213166', 'E185279', 'Shweta_Pal', 'Harshit_Bhan', 'hi', '2019-06-27 09:26:14'),
('C213166', 'E434939', 'Shweta_Pal', 'Harsh_Chamoli', 'hello\n', '2019-06-27 09:27:05'),
('E434939', 'C213166', 'Harsh_Chamoli', 'Shweta_Pal', 'hey', '2019-06-27 09:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `noti_id_db` varchar(50) NOT NULL,
  `user_to_db` varchar(50) NOT NULL,
  `user_from_db` varchar(50) NOT NULL,
  `message_db` varchar(500) NOT NULL DEFAULT 'no',
  `is_notification_db` varchar(5) NOT NULL DEFAULT 'no',
  `date_time_db` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `opened_db` varchar(11) NOT NULL DEFAULT 'no',
  `viewed_db` varchar(12) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`noti_id_db`, `user_to_db`, `user_from_db`, `message_db`, `is_notification_db`, `date_time_db`, `opened_db`, `viewed_db`) VALUES
('N3526125', 'E434939', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 09:21:23', 'no', 'no'),
('N7214884', 'C213166', 'E434939', 'Your service request has been accepted by:Shweta Pal', 'yes', '2019-06-26 09:21:35', 'no', 'no'),
('N2342712', 'E434939', 'C213166', 'Your client details are Name:Shweta Pal<br> Location:default_address Gurgaon<br>Customer Identification Code:C213166', 'yes', '2019-06-26 09:21:35', 'no', 'no'),
('N9027003', 'E434939', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 09:25:47', 'no', 'no'),
('N3909377', 'C213166', 'E434939', 'Your service request has been accepted by:Harsh Chamoli', 'yes', '2019-06-26 09:25:56', 'no', 'no'),
('N9738225', 'E434939', 'C213166', 'Your client details are Name:Shweta Pal<br> Location:default_address Gurgaon<br>Customer Identification Code:C213166', 'yes', '2019-06-26 09:25:57', 'no', 'no'),
('N6916874', 'E467553', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 20:38:16', 'no', 'no'),
('N9264764', 'E467553', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 20:42:16', 'no', 'no'),
('N8186490', 'E467553', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 20:45:07', 'no', 'no'),
('N8045952', 'E467553', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 20:45:20', 'no', 'no'),
('N6639671', 'E467553', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 20:50:25', 'no', 'no'),
('N861559', 'E467553', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 20:50:31', 'no', 'no'),
('N2584929', '', '', 'You have got a request from:', 'yes', '2019-06-26 21:11:47', 'no', 'no'),
('N4686914', '', '', 'You have got a request from:', 'yes', '2019-06-26 21:12:04', 'no', 'no'),
('N1347614', 'E148938', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 21:13:37', 'no', 'no'),
('N4856506', 'E148938', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 21:13:56', 'no', 'no'),
('N2013', 'E1', 'c1', 'You have a message from E434939', 'no', '0000-00-00 00:00:00', 'no', 'no'),
('N689703', 'E148938', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 22:33:20', 'no', 'no'),
('N6626939', 'E148938', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 22:34:41', 'no', 'no'),
('N1181227', 'C213166', 'E148938', 'Your service request has been accepted by:Saloni Jain', 'yes', '2019-06-26 22:36:12', 'no', 'no'),
('N6903310', 'E148938', 'C213166', 'Your client details are Name:Shweta Pal<br> Location:default_address Gurgaon<br>Customer Identification Code:C213166', 'yes', '2019-06-26 22:36:12', 'no', 'no'),
('N1179412', 'E148938', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 22:39:31', 'no', 'no'),
('N5668679', 'E510343', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 23:21:16', 'no', 'no'),
('N6219863', 'E434939', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 23:25:13', 'no', 'no'),
('N9902505', 'E434939', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-26 23:30:54', 'no', 'no'),
('N3037261', 'C213166', 'E434939', 'Your service request has been accepted by:Harsh Chamoli', 'yes', '2019-06-26 23:32:22', 'no', 'no'),
('N1426304', 'E434939', 'C213166', 'Your client details are Name:Shweta Pal<br> Location:default_address Gurgaon<br>Customer Identification Code:C213166', 'yes', '2019-06-26 23:32:22', 'no', 'no'),
('N4400833', 'E434939', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-27 00:15:51', 'no', 'no'),
('N2319974', 'E467553', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-27 02:22:59', 'no', 'no'),
('N9895626', 'E185279', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-27 02:25:29', 'no', 'no'),
('N4269472', 'E434939', 'C213166', 'You have got a request from:Shweta', 'yes', '2019-06-27 02:27:52', 'no', 'no'),
('N788170', 'C213166', 'E434939', 'Your service request has been accepted by:Harsh Chamoli', 'yes', '2019-06-27 02:28:20', 'no', 'no'),
('N575676', 'E434939', 'C213166', 'Your client details are Name:Shweta Pal<br> Location:default_address Gurgaon<br>Customer Identification Code:C213166', 'yes', '2019-06-27 02:28:20', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `user_id_db` varchar(50) NOT NULL,
  `post_text_db` text NOT NULL,
  `time_db` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_loc` varchar(500) NOT NULL DEFAULT './assets/images/profile_pics/defaults/head_emerald.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`user_id_db`, `post_text_db`, `time_db`, `image_loc`) VALUES
('C213166', 'Hello,circle i am seeking around 20 for my new project,we are building apartment in Greater kailash,interested people connect through chatroom.', '2019-06-25 09:30:34', './assets/images/uploads/57efc1195e0e6f6111bb4a740b6fbbc6.jpg'),
('C266200', 'hello guys,we are dealing with water leakage in our house,for a very long time,we need a very skilled plumber who can fix this problem,please connect.', '2019-06-25 09:36:16', './assets/images/uploads/7ed3590fd622cd828fc6739e73246702.jpg'),
('C3434', 'hey guys,i have started a coaching institute where me and colleagues will me teaching Maths,Physics and Chemistry for class 10 to 12 student please connect. ', '2019-06-25 09:44:34', './assets/images/uploads/5b4a1f5ba2155b8218ac8b3eed758ee4.png'),
('C398299', 'hello,guys I am new to this place,hope it helps me hire some good people in marketing industry.', '2019-06-25 09:46:47', './assets/images/uploads/5871fa707c6434d4cf9fcc806feafc77.jpg'),
('C439583', 'hello guys i am seeking gardener,for my villa,please connect with me.', '2019-06-25 09:48:12', './assets/images/uploads/392b142ce46a332cb630e956db7b73a4.jpg'),
('C452702', 'hello guys i am an event planner,i am planning a wedding Monday next week,I need about 20 skilled workers for the job and arrangement for wedding bands please connect.', '2019-06-25 09:51:49', './assets/images/uploads/23a8e531bb2168ce663987636d572ca4.jpg'),
('C697145', 'hey,guys this place has helped me earn good money,thanks. ', '2019-06-25 09:53:48', './assets/images/uploads/c0eba91eb66c24cfc501bdf66646665f.jpg'),
('C741224', 'hey guys i am seeking home tutor for my child who is in 9th standard please connect. ', '2019-06-25 09:58:23', './assets/images/uploads/692904c79357b0c5d2b03b9a3f60fb1d.jpg'),
('C955938', 'Hey Guys,I am a working professional,my wife is pregnant since 5 months,she lives along at home and no one to take care of her,we are seeking a midwife who can help her during this period,thanks. ', '2019-06-25 10:03:22', './assets/images/uploads/9d3ea20be7f53c64e60c884cdfe654d6.jpg'),
('E148938', 'hey,guys i am very skilled gardener,i have been doing it since 5 years,i have a lot of free time now, and i love gardening,interested people please connect to me via chat room.', '2019-06-25 10:30:48', './assets/images/uploads/f5094180ee256b79fe8cb2e8bc1891e7.jpg'),
('E185279', 'hey guys i am Technician looking for a job in Noida.', '2019-06-25 10:34:26', './assets/images/uploads/c3db17f9d8a1d6df5699ff9f6084bd01.jpg'),
('E539262', 'Guys, my field of specialization is home tution,please connect with me,i can teach anything.', '2019-06-25 15:03:02', './assets/images/profile_pics/defaults/head_emerald.png'),
('E434939', 'hey guys, i am an architect, moved to Hyderabad few days ago, I am very skilled in my task,with very good profile and experience,please connect with me.', '2019-06-25 15:06:03', './assets/images/uploads/b9edbeac220cf1f4db61c91f2c979ee0.jpg'),
('E467553', 'hey guys I am Labour,and work on daily basis and meet the daily chores according,to the kind of work i have been assigned,getting a job daily is not easy,please hire me i can do any sort of work.', '2019-06-25 15:09:55', './assets/images/uploads/f8bf4ef97363d7c5fa99bfc4e7f0f805.jpg'),
('E510343', 'i am a home Tutor and love giving teaching,I can teach students of all classes 1 standard to 10 standard.', '2019-06-25 15:30:40', './assets/images/uploads/325d6bca9e8b9e535e4ce1f627727ae3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `emp_id_db` varchar(21) NOT NULL,
  `Behaviour` int(5) NOT NULL DEFAULT '0',
  `Punctuality` int(5) NOT NULL DEFAULT '0',
  `Working_Skill` int(5) NOT NULL DEFAULT '0',
  `Rating` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`emp_id_db`, `Behaviour`, `Punctuality`, `Working_Skill`, `Rating`) VALUES
('E113265', 0, 0, 0, 0),
('E120995', 0, 0, 0, 0),
('E148938', 5, 5, 5, 1),
('E185279', 0, 0, 0, 0),
('E270051', 0, 0, 0, 0),
('E388760', 0, 0, 0, 0),
('E434939', 5, 5, 4, 3),
('E467553', 0, 0, 0, 0),
('E468321', 0, 0, 0, 0),
('E510343', 0, 0, 0, 0),
('E522791', 0, 0, 0, 0),
('E594782', 0, 0, 0, 0),
('E635585', 5, 5, 5, 10),
('E664798', 0, 0, 0, 0),
('E707447', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `review_db`
--

CREATE TABLE `review_db` (
  `emp_id_db` varchar(21) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_db`
--

INSERT INTO `review_db` (`emp_id_db`, `Comment`, `timestamp`) VALUES
('E434939', 'good', '2019-06-27 06:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `cust_id_db` varchar(50) NOT NULL,
  `emp_id_db` varchar(50) NOT NULL,
  `cust_name` text NOT NULL,
  `emp_name` text NOT NULL,
  `client_address` varchar(1000) NOT NULL,
  `service_needed` text NOT NULL,
  `charges` int(255) NOT NULL,
  `date_of_service` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`cust_id_db`, `emp_id_db`, `cust_name`, `emp_name`, `client_address`, `service_needed`, `charges`, `date_of_service`) VALUES
('', '', '', '', '', '', 0, '2019-06-26 21:11:47'),
('', '', '', '', '', '', 0, '2019-06-26 21:12:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`cust_id_db`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cust_id_db`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id_db`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`emp_id_db`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
