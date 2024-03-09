-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 09:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `booking_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional_information` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listing_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT 0,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent`, `icon_class`, `name`, `slug`, `thumbnail`) VALUES
(1, 0, 'fas fa-desktop', 'CSE', 'cse', '357e217eabf596a2ff8283309429aa1a.jpg'),
(2, 1, 'fas fa-check-square', 'CSE - 2021 - E3 Mini Project', 'cse-2021-e3-mini-project', NULL),
(3, 1, 'fas fa-check-square', 'CSE - 2021 - E4 Major Project', 'cse-2021-e4-major-project', NULL),
(4, 0, 'fas fa-lightbulb', 'ECE', 'ece', 'd01945525ea42f1425f46d3b6cee329e.jpg'),
(5, 4, 'fas fa-check-square', 'ECE - 2021 - E3 Mini Project', 'ece-2021-e3-mini-project', NULL),
(6, 4, 'fas fa-check-square', 'ECE - 2021 - E4 Major Project', 'ece-2021-e4-major-project', NULL),
(7, 0, 'fas fa-cogs', 'Mechanical', 'mechanical', '8f244598dfae70837edf11d11cf58d28.jpg'),
(8, 7, 'fas fa-check-square', 'Mech - 2021 - E3 Mini Project', 'mech-2021-e3-mini-project', NULL),
(9, 7, 'fas fa-check-square', 'Mech - 2021 - E4 Major Project', 'mech-2021-e4-major-project', NULL),
(10, 0, 'fas fa-bolt', 'EEE', 'eee', '1aa9db5788dd6b5b96b1a58a58a0abfd.jpg'),
(11, 10, 'fas fa-check-square', 'EEE - 2021 - E3 Mini Project', 'eee-2021-e3-mini-project', NULL),
(12, 10, 'fas fa-check-square', 'EEE - 2021 - E4 Major Project', 'eee-2021-e4-major-project', NULL),
(13, 0, 'fas fa-home', 'Civil', 'civil', '7edc77707d5186123eacf38df4cce7bd.jpg'),
(14, 13, 'fas fa-check-square', 'Civil - 2021 - E3 Mini Project', 'civil-2021-e3-mini-project', NULL),
(15, 13, 'fas fa-check-square', 'Civil - 2021 - E4 Major Project', 'civil-2021-e4-major-project', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('be15a1d9e3f81d62cde11ec147d75b733fc0541c', '::1', 1622437739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323433373733393b6c697374696e67735f766965777c733a393a226c6973745f76696577223b),
('475a3d78b6fa467a6fd9e48aa0868ff48943acbc', '::1', 1622437648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323433373536353b),
('a78e6807fc9f9ba4a723104f4aaad8e29d47d90f', '::1', 1622437879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323433373731353b6c697374696e67735f766965777c733a393a226c6973745f76696577223b),
('f2fda3dd03d1fde5ba0149aed8e3bf23a70ddc2b', '::1', 1622439391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323433393339313b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a226c6973745f76696577223b),
('e7d551888103e2c3c68adbd1835e762fca38d010', '::1', 1622439354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323433393335343b),
('e0e290b97b039b1f25cade8febf49c9776fe3e0a', '::1', 1622439382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323433393335343b),
('8d4a9f0a054f80ee16122328d6b17ceb11117b17', '::1', 1622439885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323433393838353b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a226c6973745f76696577223b),
('41d0e2e1b6dfcb949c98d045bb5f4696513688a2', '::1', 1622440641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434303634313b),
('65e55c827b83d33bd9218e50464713b99f469429', '::1', 1622441046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434313034363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2233223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31343a224d61686974686120436865657469223b757365725f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a226c6973745f76696577223b),
('e3fcc5128c9309f4f14cac67a01220682948557f', '::1', 1622441388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434313338383b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('0c257a29ae73cfa873ceabc5eda09e295542ce57', '::1', 1622441794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434313739343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('16cebcadc50dc7c2e34c182a44e5291f7f82cb84', '::1', 1622442098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434323039383b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('2624659c9bca4734f03f1aa1e6750369a984206c', '::1', 1622442801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434323830313b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('41810644e9f87db2b4435b29e42aa7ba056b5150', '::1', 1622443102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434333130323b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('9891ff4d606614e77185be6f303fd97a686a7b19', '::1', 1622443882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434333838323b),
('33428a595ddd6277b431b24adfdb15e1717334e7', '::1', 1622444835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434343833353b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('dcf54f53655b025bc30a2ed3da3ad6715184fd8a', '::1', 1622445007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323434343935303b6c697374696e67735f766965777c733a393a226c6973745f76696577223b),
('6331e323da9eb0dd3883128a2fb26daf018591e4', '::1', 1622460890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323436303838363b),
('909d803d5108ee00790d1e002345a2a87ce2dfee', '::1', 1622476664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323437363636343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a343a22416a6179223b757365725f6c6f67696e7c733a313a2231223b),
('91c637743fcd5f094f63f27c108cd9c3cf82ab71', '::1', 1622476975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323437363937353b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a343a22416a6179223b757365725f6c6f67696e7c733a313a2231223b),
('d3fb14724a87691dae7803d80e54d9e286148851', '::1', 1622477156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323437373135363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b666c6173685f6d6573736167657c733a32383a2250726f6a6563742075706461746564207375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('71663075bf7e379f32ae2829f240472bd04f9664', '::1', 1622477583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323437373538333b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('486b4581757368fca9c8b229e61de1aae44725d3', '::1', 1622477595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323437373539353b6c697374696e67735f766965777c733a393a226c6973745f76696577223b),
('cd14ae00decde688c998cdff1d454d3a75ee1587', '::1', 1622477584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323437373538333b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b666c6173685f6d6573736167657c733a32363a2250726f6a656374206164646564207375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('ff0c7b784232d810965f4531db23d38a36fcaccf', '::1', 1622477970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323437373937303b6c697374696e67735f766965777c733a393a226c6973745f76696577223b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('9f0dac166125866dc7a337c57d302d3edbb89979', '::1', 1622480035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323438303033353b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('8ce392147f42dc6923936f5a057975a1ae9ba9fd', '::1', 1622480607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323438303630373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('f57ed6693254d49ab3fbed788092bb6d7c2e3545', '::1', 1622480926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323438303932363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('70faa6d8043f8629c4f0ad2212a21f6903e6478a', '::1', 1622481370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323438313337303b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('e9178ae688e875ee95f28514131387b2adaf775e', '::1', 1622481835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323438313833353b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b666c6173685f6d6573736167657c733a32313a22536d74702073657474696e67732075706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('095b9d87b39169d9fe3c377fc86903a7ea3eb0ec', '::1', 1622482058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323438323035383b),
('d6f9a558e12b8a19b95cbddf46b5b1d55674b07a', '::1', 1622482055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323438313833353b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b666c6173685f6d6573736167657c733a32313a22536d74702073657474696e67732075706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('70fa7b33e977291c90f37f2fcd09cd1b6fee8af2', '::1', 1622482212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323438323035383b),
('7a716d09d09dbea0fd4fe123a9ceabeaa581958b', '::1', 1622517577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323531373537373b),
('095f558b83395d579e47e36dc790d674f8133284', '::1', 1622518086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323531383038363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('20e0dc2848fd583bc27a0c0c44e2fbb2aa0afff5', '::1', 1622521017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323532313031373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('a90509fe4059cabebc2ad5c29b742ba890d7371a', '::1', 1622522444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323532323434343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('bc27a75f95fae2286f2ff95b331938b9e4beb94b', '::1', 1622522460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323532323434343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('c6641e2c21d24b15ba890e59db1b1b8e8ab7c3ca', '::1', 1622534988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323533343937303b),
('5efb8718d84694ae2ed2b0eba261c26648d03a47', '::1', 1622606652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323630363635323b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a343a22416a6179223b757365725f6c6f67696e7c733a313a2231223b),
('ed81e727a9b34bf05ad63e3b5c397443fff3a680', '::1', 1622607524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323630373532343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2233223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a353a225361747961223b757365725f6c6f67696e7c733a313a2231223b),
('66c9114533e869fe2ea9ec835bacbf2c8ef249b7', '::1', 1622607889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323630373838393b),
('440dc4689dd8e28fb65e6f4d43e371f5d334eb89', '::1', 1622608944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323630383934343b),
('8a187de8b6ff2c227ef0031bc83ca3d532b1f834', '::1', 1622609435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323630393433353b),
('2d31aef2b6badcfacf6e33cb0893b6c08794a101', '::1', 1622612133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323631323133333b),
('a66010b421c8604bf19efb45b42263e8769eeb57', '::1', 1622612436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323631323433363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('a6dd83848080616d167a035230cfa1ccb235c3a0', '::1', 1622612743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323631323734333b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('77383011f5571030c99a0586045956a98d657999', '::1', 1622613196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323631333139363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('ec6df898860c5a6e90578ad460f7c32cc61c949f', '::1', 1622612979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323631323832323b),
('7f551e089182f9cd5dab519a6b3c2bbe018301b2', '::1', 1622613593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323631333539333b),
('18e3ea442d32e234e63373f9fc985444591309e0', '::1', 1622613599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323631333539333b),
('0ecdcd951660cd45bc0e6f6481e44ead1011141d', '::1', 1625937891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353933373634373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('92d2832bc93f154a1b29726489a8b11d1f2dbc7a', '::1', 1626272396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363237323339363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('e4c2f04585c09703c5ef48ec5b9d33f3fab2c880', '::1', 1626273021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363237333032313b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('7f3c76bd8b1dca755f3201dcb8231ad4d9373f55', '::1', 1626273817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363237333831373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2236223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31343a2247617574616d20526f6e616e6b69223b757365725f6c6f67696e7c733a313a2231223b),
('6c6d817c0b474473b743c2a1ee14c515391e56d6', '::1', 1626276217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363237363231373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2241646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('94efab603fcb01e0c06a8bee60ba7fa10003613c', '::1', 1626274388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363237343332313b),
('3fce583f594d153958a432d95b867648c5ad6ef6', '::1', 1626276530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363237363533303b6c697374696e67735f766965777c733a393a226c6973745f76696577223b),
('ec41c95602aa1173eea7679c3f80f13c44eff8d1', '::1', 1626276773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363237363537343b);

-- --------------------------------------------------------

--
-- Table structure for table `claimed_listing`
--

CREATE TABLE `claimed_listing` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_information` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `reply_to` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_supported` int(11) NOT NULL DEFAULT 0,
  `stripe_supported` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', NULL, 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `type`, `description`) VALUES
(1, 'banner_title', 'RGUKT Basar Engineering Projects'),
(2, 'banner_sub_title', 'RGUKT Basar Engineering Projects'),
(3, 'about_us', '<p>About us</p>\r\n'),
(4, 'terms_and_condition', '<p>Terms and conditions</p>\r\n'),
(5, 'privacy_policy', '<p>Privacy Poilicy</p>\r\n'),
(6, 'social_links', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\",\"google\":\"\",\"instagram\":\"\",\"pinterest\":\"\"}'),
(7, 'slogan', 'Find all the mini &amp; major projects of RGUKT Basar '),
(8, 'faq', '<p>Faq</p>\r\n'),
(9, 'cookie_note', 'This Website Uses Cookies To Personalize Content And Analyse Traffic In Order To Offer You A Better Experience.'),
(10, 'cookie_status', '1'),
(11, 'cookie_policy', '<h1>Cookie policy</h1>\r\n\r\n<ol>\r\n	<li>Cookies are small text files that can be used by websites to make a user&#39;s experience more efficient.</li>\r\n	<li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li>\r\n	<li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `id` int(11) NOT NULL,
  `code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photos` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `social` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `listing_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listing_thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listing_cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_meta_tags` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_modified` int(11) DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `google_analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listing`
--

INSERT INTO `listing` (`id`, `code`, `name`, `description`, `categories`, `amenities`, `photos`, `video_url`, `video_provider`, `tags`, `address`, `email`, `phone`, `website`, `social`, `user_id`, `latitude`, `longitude`, `country_id`, `city_id`, `status`, `listing_type`, `listing_thumbnail`, `listing_cover`, `seo_meta_tags`, `meta_description`, `date_added`, `date_modified`, `is_featured`, `google_analytics_id`) VALUES
(1, 'b98c211e1dbab620a1539720006168e4', 'Project Management System', 'Being in such a big college, we need an application to showcase our projects to other students and the people outside. \r\n\r\nThis way, we can have a record of all the projects done by the students which would further help other students.\r\n\r\nThe main objective of our project management system is to create a directory of all the mini and major projects done by the students of RGUKT Basar which will be helpful in future references for other students.', '[\"1\",\"2\"]', '[]', '[\"9b2b9e3110f658ba68c67f176b62ffa8.jpg\",\"84c35909dafe5e2c802606019507b504.jpg\",\"02ebb4daed00b448073db006896b8be7.jpg\",\"8471a9497e1e6cf7784e9013d6275b3a.jpg\",\"b400bf97349aed16cc58adefbde3384c.jpg\",\"c2f06ebb28b21d1fc4a0249aad294e10.jpg\",\"39322d37a8005dc519829490733acd85.jpg\"]', 'https://www.youtube.com/watch?v=JIKyxfZrsx4', 'youtube', NULL, NULL, 'https://github.com/GautamRonanki/gautamronanki', 'https://drive.google.com/file/d/17CjKQQRsOMXe1-5CDmfanYdwEXC9lhUH/preview', 'https://www.rgukt.ac.in/', '{\"facebook\":\"https:\\/\\/docs.google.com\\/presentation\\/d\\/e\\/2PACX-1vTm7AKVxYpcLsWp6uWKihcVCGxHJnxwlS1-V64Te3IWlbY1slO5GnKFuFiO4gTImw\\/embed?start=false&amp;loop=false&amp;delayms=3000\",\"twitter\":\"https:\\/\\/en.wikipedia.org\\/wiki\\/Project_management\",\"linkedin\":null}', 1, NULL, NULL, NULL, NULL, 'active', 'shop', '908efdd1e624c7545d63f669d28a8334.jpg', 'fb8ddae47b245498817bdd4d282ddd6a.jpg', 'project,project management', '', '1622140200', 1622485800, 0, ''),
(2, 'dc4afb0fa630ceb1dbb62b0849fc67c1', 'Chat Room System', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pharetra a purus ac tempus. Phasellus ac dui vulputate, venenatis magna vitae, dignissim est. Praesent et elit tincidunt, malesuada dolor non, sollicitudin justo. Donec eu orci vestibulum, mattis tortor commodo, egestas magna. Praesent in nisi vitae dui ornare sollicitudin. Nam vulputate sed lorem sit amet fermentum. Quisque congue purus risus, molestie auctor libero blandit at. Etiam auctor lectus ac ultricies feugiat. Morbi convallis at metus at fringilla.\r\n\r\n\r\nHEAD\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pharetra a purus ac tempus. Phasellus ac dui vulputate, venenatis magna vitae, dignissim est. Praesent et elit tincidunt, malesuada dolor non, sollicitudin justo. Donec eu orci vestibulum, mattis tortor commodo, egestas magna. Praesent in nisi vitae dui ornare sollicitudin. Nam vulputate sed lorem sit amet fermentum. Quisque congue purus risus, molestie auctor libero blandit at. Etiam auctor lectus ac ultricies feugiat. Morbi convallis at metus at fringilla.', '[\"2\",\"1\"]', '[]', '[\"200218cf729e03e283411ea2e766c986.jpg\",\"28f0c531e5bf57316a90485375db19d1.jpg\",\"7842f27baa723a548fa77a145dea7433.jpg\",\"ad133c83f836389248d10a4c5722b92b.jpg\"]', 'https://www.youtube.com/watch?v=MSrXs_kfajk', 'youtube', NULL, NULL, '#', 'https://drive.google.com/file/d/17CjKQQRsOMXe1-5CDmfanYdwEXC9lhUH/preview', 'https://www.stunxt.com', '{\"facebook\":\"#\",\"twitter\":\"#\",\"linkedin\":\"\"}', 1, NULL, NULL, NULL, NULL, 'active', 'general', '2d5cc2b66317af5f4cd0dd5391970f22.jpg', '434f1a9d1b054fda91b0d2c5c455538a.jpg', '', '', '1622313000', 1622399400, 0, ''),
(4, '4e3766e8612d0a5b2b7f70dcd25e2d62', 'Pollution management', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin convallis, felis et ullamcorper egestas, dolor dolor scelerisque quam, et lacinia magna tortor ac justo. Proin a nibh eu orci lacinia commodo. Suspendisse ornare fermentum quam, ac euismod libero maximus vel. Mauris eget risus ligula. Praesent interdum eget nisl sed tincidunt. \r\n\r\nABOUT:\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin convallis, felis et ullamcorper egestas, dolor dolor scelerisque quam, et lacinia magna tortor ac justo. Proin a nibh eu orci lacinia commodo. Suspendisse ornare fermentum quam, ac euismod libero maximus vel. Mauris eget risus ligula. Praesent interdum eget nisl sed tincidunt. ', '[\"4\",\"5\"]', '[]', '[\"867d5ee17e56baf453a3cea5c5784f9e.jpg\",\"14a3f78c874de93642273d1999166e70.jpg\"]', 'https://www.youtube.com/watch?v=MSrXs_kfajk', 'youtube', NULL, NULL, '#', 'https://drive.google.com/file/d/17CjKQQRsOMXe1-5CDmfanYdwEXC9lhUH/preview', '#', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":null}', 4, NULL, NULL, NULL, NULL, 'active', 'shop', '3d97d4ada372430c223b2f06442276a1.jpg', '035fdf8ec1b7bb4072c61b471c5b9322.jpg', '', '', '1622399400', 1622399400, 0, ''),
(5, '5b6f943271cd8cb7ad37c42808b094dd', 'Electrical Management', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin convallis, felis et ullamcorper egestas, dolor dolor scelerisque quam, et lacinia magna tortor ac justo. Proin a nibh eu orci lacinia commodo. Suspendisse ornare fermentum quam, ac euismod libero maximus vel. Mauris eget risus ligula. Praesent interdum eget nisl sed tincidunt. \r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin convallis, felis et ullamcorper egestas, dolor dolor scelerisque quam, et lacinia magna tortor ac justo. Proin a nibh eu orci lacinia commodo. Suspendisse ornare fermentum quam, ac euismod libero maximus vel. Mauris eget risus ligula. Praesent interdum eget nisl sed tincidunt. ', '[\"10\",\"11\"]', '[]', '[\"1850892ef3f9c18544b84c85ec647a50.jpg\",\"109b6bf5dc10189be4bbc0c8aa5d6b4b.jpg\"]', 'https://www.youtube.com/watch?v=MSrXs_kfajk', 'youtube', NULL, NULL, '#', 'https://drive.google.com/file/d/17CjKQQRsOMXe1-5CDmfanYdwEXC9lhUH/preview', '#', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":null}', 1, NULL, NULL, NULL, NULL, 'active', 'shop', '568f578be3a492273e00b615aa8d12b9.jpg', 'bb317a0b384153aaa8bf8ec074b9f982.jpg', '', '', '1622399400', NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `validity` int(11) NOT NULL DEFAULT 0 COMMENT 'validity should be in days',
  `ability_to_add_video` int(11) NOT NULL DEFAULT 0,
  `ability_to_add_contact_form` int(11) NOT NULL DEFAULT 0,
  `number_of_photos` int(11) NOT NULL DEFAULT 0,
  `number_of_tags` int(11) NOT NULL DEFAULT 0,
  `number_of_categories` int(11) NOT NULL DEFAULT 0,
  `is_recommended` int(11) NOT NULL DEFAULT 0,
  `package_type` int(11) NOT NULL DEFAULT 0,
  `number_of_listings` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `price`, `validity`, `ability_to_add_video`, `ability_to_add_contact_form`, `number_of_photos`, `number_of_tags`, `number_of_categories`, `is_recommended`, `package_type`, `number_of_listings`, `featured`) VALUES
(1, '1 Project', 1, 100000000, 1, 0, 10, 10, 2, 0, 1, 1, 0),
(2, '2 Project', 2, 1000000, 1, 0, 10, 10, 2, 0, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `package_purchased_history`
--

CREATE TABLE `package_purchased_history` (
  `id` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` int(11) DEFAULT NULL,
  `amount_paid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_date` int(11) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package_purchased_history`
--

INSERT INTO `package_purchased_history` (`id`, `package_id`, `user_id`, `expired_date`, `amount_paid`, `purchase_date`, `payment_method`) VALUES
(1, 1, 2, 2147483647, NULL, 1622313000, 'offline'),
(3, 2, 3, 2147483647, NULL, 1622313000, 'offline'),
(4, 2, 4, 2147483647, NULL, 1622399400, 'offline'),
(5, 2, 5, 2147483647, NULL, 1622399400, 'offline'),
(6, 2, 5, 2147483647, NULL, 1622572200, 'offline'),
(7, 2, 6, 2147483647, NULL, 1626201000, 'offline');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `listing_id`, `name`, `variant`, `price`, `photo`) VALUES
(1, 1, 'Ajay Bathula', 'Ui,UX,Front-end', 'B161248', '53215db3a332f3cb590c36c601375a13.jpg'),
(2, 1, 'Satya', 'HTML,CSS,Front-end', 'B161274', '38a289a4f5b9b8f9bffa8d2077039c03.jpg'),
(3, 3, 'Ayush', 'UI,Ux', 'B161248', NULL),
(4, 4, 'Gautam Ronanki', 'PHP,MySQL', 'B161545', '5f5dbaee79ab23d9ddc84dbb22c090a2.jpg'),
(5, 5, 'Satya', 'HTML,CSS', 'B161248', '369b3e994b81bd41c9432d3634ccebb6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reported_listing`
--

CREATE TABLE `reported_listing` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL DEFAULT 0,
  `reporter_id` int(11) NOT NULL DEFAULT 0,
  `report` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_added` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `review_comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_rating` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `listing_id`, `reviewer_id`, `review_comment`, `review_rating`, `timestamp`) VALUES
(1, 1, 4, 'Really Done a great job by the team. it will be very useful for students for project references.\r\nEveryone list your project here.', 5, 1622572200);

-- --------------------------------------------------------

--
-- Table structure for table `review_wise_quality`
--

CREATE TABLE `review_wise_quality` (
  `id` int(11) NOT NULL,
  `rating_from` float DEFAULT NULL,
  `rating_to` float DEFAULT NULL,
  `quality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review_wise_quality`
--

INSERT INTO `review_wise_quality` (`id`, `rating_from`, `rating_to`, `quality`) VALUES
(1, 1, 1.5, 'Bad!!'),
(2, 1.6, 2.8, 'Not Bad'),
(3, 2.9, 3.4, 'So So'),
(4, 3.5, 4.5, 'Good'),
(5, 4.6, 5, 'Awesome');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`) VALUES
(1, 'website_title', 'RGUKT-B Projects'),
(2, 'system_title', 'RGUKT-B Projects'),
(4, 'system_email', 'rguktbprojects@gmail.com'),
(5, 'address', 'RGUKT Basar'),
(6, 'phone', '+91 99999 99999'),
(7, 'vat_percentage', NULL),
(8, 'country_id', '98'),
(9, 'text_align', NULL),
(10, 'currency_position', 'left'),
(11, 'language', 'english'),
(12, 'purchase_code', 'your-purchase-code'),
(13, 'timezone', 'Asia/Kolkata'),
(14, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R\",\"production_client_id\":\"1234\"}]'),
(15, 'stripe', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_c6VvBEbwHFdulFZ62q1IQrar\",\"secret_key\":\"sk_test_9IMkiM6Ykxr1LCe2dJ3PgaxS\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(18, 'system_currency', 'INR'),
(19, 'paypal_currency', 'USD'),
(20, 'stripe_currency', 'USD'),
(21, 'youtube_api_key', ''),
(22, 'vimeo_api_key', ''),
(23, 'protocol', 'smtp'),
(24, 'smtp_host', 'ssl://smtp.googlemail.com'),
(25, 'smtp_port', '465'),
(26, 'smtp_user', 'rguktbprojects@gmail.com'),
(27, 'smtp_pass', 'cse-miniproject'),
(28, 'social_links', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}'),
(29, 'about', ''),
(30, 'term_and_condition', ''),
(31, 'privacy_policy', ''),
(32, 'faq', ''),
(35, 'footer_text', 'RGUKT Basar'),
(36, 'footer_link', 'https://www.rgukt.ac.in/'),
(37, 'version', '2.7'),
(38, 'meta_keyword', 'RGUKT Basar,RGUKT-B Projects,RGUKT Basar Projects'),
(39, 'meta_description', 'RGUKT-Basar Projects'),
(40, 'map_access_token', ''),
(41, 'max_zoom_level', '18'),
(42, 'min_zoom_listings_page', '2'),
(43, 'min_zoom_directory_page', '2'),
(44, 'default_location', '40.702210, -74.015880'),
(45, 'active_map', 'openstreetmap'),
(46, 'recaptcha_sitekey', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(47, 'recaptcha_secretkey', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `time_configuration`
--

CREATE TABLE `time_configuration` (
  `id` int(11) UNSIGNED NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `saturday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sunday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wednesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thursday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time_configuration`
--

INSERT INTO `time_configuration` (`id`, `listing_id`, `saturday`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
(1, 1, '-', '-', '-', '-', '-', '-', '-'),
(2, 2, '-', '-', '-', '-', '-', '-', '-'),
(3, 3, 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed'),
(4, 4, '-', '-', '-', '-', '-', '-', '-'),
(5, 5, '-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `social` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `wishlists` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `address`, `phone`, `website`, `social`, `about`, `password`, `role_id`, `wishlists`, `verification_code`, `is_verified`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '{\"1\":\"1\"}', NULL, 1),
(3, 'Satya', 'satya@gmail.com', NULL, '', NULL, '{\"facebook\":null,\"twitter\":null,\"linkedin\":null}', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '[]', 'a97cae17ee6d688124462bd699957d6c', 1),
(4, 'CSE Project Coordinator', 'cseco@gmail.com', NULL, '', NULL, '{\"facebook\":null,\"twitter\":null,\"linkedin\":null}', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '[]', '2b0fb2118405bbbaef20f71b3a5bdac4', 1),
(5, 'Ayush', 'gautamronanki1412@gmail.com', NULL, '', NULL, '{\"facebook\":null,\"twitter\":null,\"linkedin\":null}', NULL, '8087d53e13760d218698f0cc7001bd4cddb0c8b3', 2, '[]', 'a4668ce30d9cf85e910d65300b74f075', 1),
(6, 'Gautam Ronanki', 'teamlead@gmail.com', NULL, '', NULL, '{\"facebook\":null,\"twitter\":null,\"linkedin\":null}', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '[]', '5c4369d3a5cbd98f8eade6c279f6ab32', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimed_listing`
--
ALTER TABLE `claimed_listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_purchased_history`
--
ALTER TABLE `package_purchased_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reported_listing`
--
ALTER TABLE `reported_listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `review_wise_quality`
--
ALTER TABLE `review_wise_quality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_configuration`
--
ALTER TABLE `time_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `claimed_listing`
--
ALTER TABLE `claimed_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_purchased_history`
--
ALTER TABLE `package_purchased_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reported_listing`
--
ALTER TABLE `reported_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review_wise_quality`
--
ALTER TABLE `review_wise_quality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `time_configuration`
--
ALTER TABLE `time_configuration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
