-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 09:58 PM
-- Server version: 10.3.24-MariaDB-2
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readerscorner_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `floor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apartment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `building`, `title`, `street`, `state`, `floor`, `phone`, `apartment`, `city_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '36A', '36A Nozha street , El Nozha Aparment : 6 Floor : 2 , cairo , Egypt', 'Nozha street', 'El Nozha', '2', '01022052546', '6', 1, 1, '2021-02-28 19:49:29', '2021-02-28 19:49:29'),
(2, 'Villa 25', 'Villa 25 mohandeseen village , Alexandria , alexandria , Egypt', 'mohandeseen village', 'Alexandria', NULL, '01022052542', NULL, 2, 1, '2021-02-28 19:49:29', '2021-02-28 19:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `ages`
--

CREATE TABLE `ages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ages`
--

INSERT INTO `ages` (`id`, `title`, `slug`, `order_by`, `created_at`, `updated_at`) VALUES
(1, 'from 0 to 3', 'from-0-to-3', 1, '2021-02-28 19:49:29', '2021-02-28 19:49:29'),
(2, 'from 3 to 5', 'from-3-to-5', 1, '2021-02-28 19:49:29', '2021-02-28 19:49:29'),
(3, 'from 5 to 7', 'from-5-to-7', 1, '2021-02-28 19:49:29', '2021-02-28 19:49:29'),
(4, 'from 7 to 9', 'from-7-to-9', 1, '2021-02-28 19:49:29', '2021-02-28 19:49:29'),
(5, 'from 9 to 11', 'from-9-to-11', 1, '2021-02-28 19:49:30', '2021-02-28 19:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` tinyint(4) NOT NULL DEFAULT 1,
  `top` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `author_slug`, `order_by`, `top`, `created_at`, `updated_at`) VALUES
(1, 'Felicity Brooks', 'Felicity-Brooks', 1, 1, '2021-02-28 19:49:30', '2021-02-28 19:49:30'),
(2, 'Ben Denne', 'Ben-Denne', 1, 1, '2021-02-28 19:49:30', '2021-02-28 19:49:30'),
(3, 'Sam Taplin', 'Sam-Taplin', 1, 1, '2021-02-28 19:49:30', '2021-02-28 19:49:30'),
(4, 'Rachel Firth', 'Rachel-Firth', 1, 1, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(5, 'Alex Frith', 'Alex-Frith', 1, 1, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(6, 'Susan B. Neuman', 'Susan-B.-Neuman', 1, 1, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(7, 'Kate Howard', 'Kate-Howard', 1, 1, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(8, 'Greg Farshtey', 'Greg-Farshtey', 1, 1, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(9, 'Tracey West', 'Tracey-West', 1, 1, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(10, 'Scholastic Inc.', 'Scholastic-Inc.', 1, 1, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(11, 'Trey King', 'Trey-King', 1, 0, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(12, 'Samantha Brooke', 'Samantha-Brooke', 1, 0, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(13, 'Anne Capeci', 'Anne-Capeci', 1, 0, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(14, 'Fiona Watt', 'Fiona-Watt', 1, 0, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(15, 'S. A. M. TAPLIN', 'S.-A.-M.-TAPLIN', 1, 0, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(16, 'Susanna DAVIDSON', 'Susanna-DAVIDSON', 1, 0, '2021-02-28 19:49:31', '2021-02-28 19:49:31'),
(17, 'Henry Brook', 'Henry-Brook', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(18, 'Katie Daynes', 'Katie-Daynes', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(19, 'Rob Lloyd Jones', 'Rob-Lloyd-Jones', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(20, 'Gill Harvey', 'Gill-Harvey', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(21, 'Emily Bone', 'Emily-Bone', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(22, 'Brigid Avison', 'Brigid-Avison', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(23, 'Anna Milbourne', 'Anna-Milbourne', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(24, 'Catriona Clarke', 'Catriona-Clarke', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(25, 'Lisa Jane Gillespie', 'Lisa-Jane-Gillespie', 1, 0, '2021-02-28 19:49:32', '2021-02-28 19:49:32'),
(26, 'Stephanie Turnbull', 'Stephanie-Turnbull', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(27, 'Rebecca Gilpin', 'Rebecca-Gilpin', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(28, 'Lucy Bowman', 'Lucy-Bowman', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(29, 'James Maclaine', 'James-Maclaine', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(30, 'Various Artists', 'Various-Artists', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(31, 'Emma Helbrough', 'Emma-Helbrough', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(32, 'USBORNE', 'USBORNE', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(33, 'Michael Aaron Frishkopf', 'Michael-Aaron-Frishkopf', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(34, 'Salman Rushdie', 'Salman-Rushdie', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(35, 'Lucy Foley', 'Lucy-Foley', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(36, 'Daisy Johnson', 'Daisy-Johnson', 1, 0, '2021-02-28 19:49:33', '2021-02-28 19:49:33'),
(37, 'Malcolm Gladwell', 'Malcolm-Gladwell', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(38, 'Bernardine Evaristo', 'Bernardine-Evaristo', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(39, 'Rick Riordan', 'Rick-Riordan', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(40, 'Gary Vaynerchuk', 'Gary-Vaynerchuk', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(41, 'Ayse Kulin', 'Ayse-Kulin', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(42, 'Heather Morris', 'Heather-Morris', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(43, 'Jim Clifton', 'Jim-Clifton', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(44, 'Emma Mitchell', 'Emma-Mitchell', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(45, 'Dixe Wills', 'Dixe-Wills', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(46, 'Bill Clinton', 'Bill-Clinton', 1, 0, '2021-02-28 19:49:34', '2021-02-28 19:49:34'),
(47, 'Henry Marsh', 'Henry-Marsh', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(48, 'Esi Edugyan', 'Esi-Edugyan', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(49, 'Richard Powers', 'Richard-Powers', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(50, 'Alice Clark-Platts', 'Alice-Clark-Platts', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(51, 'John Flanagan', 'John-Flanagan', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(52, 'Meg Medina', 'Meg-Medina', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(53, 'Clare Mackintosh', 'Clare-Mackintosh', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(54, 'Erin Kelly', 'Erin-Kelly', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(55, 'Philippa Gregory', 'Philippa-Gregory', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(56, 'Phaedra Patrick', 'Phaedra-Patrick', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(57, 'William Shakespeare', 'William-Shakespeare', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(58, 'Helena Duggan', 'Helena-Duggan', 1, 0, '2021-02-28 19:49:35', '2021-02-28 19:49:35'),
(59, 'Amanda Brown', 'Amanda-Brown', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(60, 'Delia Owens', 'Delia-Owens', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(61, 'Sarah Carroll', 'Sarah-Carroll', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(62, 'Danielle Steel', 'Danielle-Steel', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(63, 'Laura Jane Williams', 'Laura-Jane-Williams', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(64, 'Cassandra Clare', 'Cassandra-Clare', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(65, 'Michelle Harrison', 'Michelle-Harrison', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(66, 'Celia Haddon', 'Celia-Haddon', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(67, 'Dean Burnett', 'Dean-Burnett', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(68, 'JP. DELANEY', 'JP.-DELANEY', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(69, 'Kate Atkinson', 'Kate-Atkinson', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(70, 'Sylvia Day', 'Sylvia-Day', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(71, 'Walter Mischel', 'Walter-Mischel', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(72, 'Jojo Moyes', 'Jojo-Moyes', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(73, 'Karen M. McManus', 'Karen-M.-McManus', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(74, 'April Tucholke', 'April-Tucholke', 1, 0, '2021-02-28 19:49:36', '2021-02-28 19:49:36'),
(75, 'Horace Greasley', 'Horace-Greasley', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(76, 'Kayte Nunn', 'Kayte-Nunn', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(77, 'David Baldacci', 'David-Baldacci', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(78, 'Sally Piper', 'Sally-Piper', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(79, 'Maggie Stiefvater', 'Maggie-Stiefvater', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(80, 'Alice Peterson', 'Alice-Peterson', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(81, 'Seth Godin', 'Seth-Godin', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(82, 'Caroline England', 'Caroline-England', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(83, 'Yuval Noah Harari', 'Yuval-Noah-Harari', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(84, 'Steve Cavanagh', 'Steve-Cavanagh', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(85, 'Viktor Emil Frankl', 'Viktor-Emil-Frankl', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(86, 'M. J. Ford', 'M.-J.-Ford', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(87, 'Kevin Brooks', 'Kevin-Brooks', 1, 0, '2021-02-28 19:49:37', '2021-02-28 19:49:37'),
(88, 'Kim Lock', 'Kim-Lock', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(89, 'Gillian Flynn', 'Gillian-Flynn', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(90, 'S. K. Tremayne', 'S.-K.-Tremayne', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(91, 'Robert Bryndza', 'Robert-Bryndza', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(92, 'Elly Griffiths', 'Elly-Griffiths', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(93, 'Michael E. Porter', 'Michael-E.-Porter', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(94, 'Dale Carnegie Training (Firm)', 'Dale-Carnegie-Training-(Firm)', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(95, 'Simon Sinek', 'Simon-Sinek', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(96, 'Debbie Howells', 'Debbie-Howells', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(97, 'Lucy Clarke', 'Lucy-Clarke', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(98, 'Claire Allan', 'Claire-Allan', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(99, 'Sam Carrington', 'Sam-Carrington', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(100, 'Phoebe Morgan', 'Phoebe-Morgan', 1, 0, '2021-02-28 19:49:38', '2021-02-28 19:49:38'),
(101, 'Anna Todd', 'Anna-Todd', 1, 0, '2021-02-28 19:49:39', '2021-02-28 19:49:39'),
(102, 'Dan Brown', 'Dan-Brown', 1, 0, '2021-02-28 19:49:39', '2021-02-28 19:49:39'),
(103, 'Paula Rawsthorne', 'Paula-Rawsthorne', 1, 0, '2021-02-28 19:49:39', '2021-02-28 19:49:39'),
(104, 'Arundhati Roy', 'Arundhati-Roy', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(105, 'Kristin Hannah', 'Kristin-Hannah', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(106, 'Elizabeth Laird', 'Elizabeth-Laird', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(107, 'Katy Mahood', 'Katy-Mahood', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(108, 'Gordon Korman', 'Gordon-Korman', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(109, 'Suzanne Selfors', 'Suzanne-Selfors', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(110, 'Dan Wells', 'Dan-Wells', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(111, 'Laura Purcell', 'Laura-Purcell', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(112, 'Ishmael Beah', 'Ishmael-Beah', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(113, 'Harlan Coben', 'Harlan-Coben', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(114, 'June Sarpong', 'June-Sarpong', 1, 0, '2021-02-28 19:49:40', '2021-02-28 19:49:40'),
(115, 'Laura Sebastian', 'Laura-Sebastian', 1, 0, '2021-02-28 19:49:41', '2021-02-28 19:49:41'),
(116, 'Bridget Collins', 'Bridget-Collins', 1, 0, '2021-02-28 19:49:41', '2021-02-28 19:49:41'),
(117, 'Adams Media', 'Adams-Media', 1, 0, '2021-02-28 19:49:41', '2021-02-28 19:49:41'),
(118, 'DEBBIE. JOHNSON', 'DEBBIE.-JOHNSON', 1, 0, '2021-02-28 19:49:41', '2021-02-28 19:49:41'),
(119, 'Victoria Aveyard', 'Victoria-Aveyard', 1, 0, '2021-02-28 19:49:41', '2021-02-28 19:49:41'),
(120, 'Sally Rooney', 'Sally-Rooney', 1, 0, '2021-02-28 19:49:41', '2021-02-28 19:49:41'),
(121, 'Fredrik Backman', 'Fredrik-Backman', 1, 0, '2021-02-28 19:49:42', '2021-02-28 19:49:42'),
(122, 'Katerina Diamond', 'Katerina-Diamond', 1, 0, '2021-02-28 19:49:42', '2021-02-28 19:49:42'),
(123, 'Jessie Burton', 'Jessie-Burton', 1, 0, '2021-02-28 19:49:42', '2021-02-28 19:49:42'),
(124, 'Fiona Barton', 'Fiona-Barton', 1, 0, '2021-02-28 19:49:42', '2021-02-28 19:49:42'),
(125, 'DANIEL. COLE', 'DANIEL.-COLE', 1, 0, '2021-02-28 19:49:42', '2021-02-28 19:49:42'),
(126, 'Penelope Fitzgerald', 'Penelope-Fitzgerald', 1, 0, '2021-02-28 19:49:43', '2021-02-28 19:49:43'),
(127, 'Cath Weeks', 'Cath-Weeks', 1, 0, '2021-02-28 19:49:43', '2021-02-28 19:49:43'),
(128, 'Cara Hunter', 'Cara-Hunter', 1, 0, '2021-02-28 19:49:43', '2021-02-28 19:49:43'),
(129, 'Sophie McKenzie', 'Sophie-McKenzie', 1, 0, '2021-02-28 19:49:43', '2021-02-28 19:49:43'),
(130, 'Harper Lee', 'Harper-Lee', 1, 0, '2021-02-28 19:49:43', '2021-02-28 19:49:43'),
(131, 'Philippa East', 'Philippa-East', 1, 0, '2021-02-28 19:49:43', '2021-02-28 19:49:43'),
(132, 'P. Z. Reizin', 'P.-Z.-Reizin', 1, 0, '2021-02-28 19:49:44', '2021-02-28 19:49:44'),
(133, 'James Swain', 'James-Swain', 1, 0, '2021-02-28 19:49:44', '2021-02-28 19:49:44'),
(134, 'Helen Walmsley-Johnson', 'Helen-Walmsley-Johnson', 1, 0, '2021-02-28 19:49:44', '2021-02-28 19:49:44'),
(135, 'JORDAN B. PETERSON', 'JORDAN-B.-PETERSON', 1, 0, '2021-02-28 19:49:44', '2021-02-28 19:49:44'),
(136, 'Michel Bussi', 'Michel-Bussi', 1, 0, '2021-02-28 19:49:44', '2021-02-28 19:49:44'),
(137, 'Alafair Burke', 'Alafair-Burke', 1, 0, '2021-02-28 19:49:44', '2021-02-28 19:49:44'),
(138, 'Samantha King', 'Samantha-King', 1, 0, '2021-02-28 19:49:44', '2021-02-28 19:49:44'),
(139, 'Timothy Revell', 'Timothy-Revell', 1, 0, '2021-02-28 19:49:44', '2021-02-28 19:49:44'),
(140, 'Rumer Godden', 'Rumer-Godden', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(141, 'Stefan Buczacki', 'Stefan-Buczacki', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(142, 'Marcus Chown', 'Marcus-Chown', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(143, 'Caroline Taggart', 'Caroline-Taggart', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(144, 'Patricia Highsmith', 'Patricia-Highsmith', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(145, 'Leanda de Lisle', 'Leanda-de-Lisle', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(146, 'Jane Corry', 'Jane-Corry', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(147, 'Colleen Hoover', 'Colleen-Hoover', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(148, 'Adam Kay', 'Adam-Kay', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(149, 'Luke Allnutt', 'Luke-Allnutt', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(150, 'Angie Sage', 'Angie-Sage', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(151, 'Angie Thomas', 'Angie-Thomas', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(152, 'John Green', 'John-Green', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(153, 'Kiersten White', 'Kiersten-White', 1, 0, '2021-02-28 19:49:45', '2021-02-28 19:49:45'),
(154, 'Suzy Reading', 'Suzy-Reading', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(155, 'Stephen Chbosky', 'Stephen-Chbosky', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(156, 'Mitch Albom', 'Mitch-Albom', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(157, 'Nicola Yoon', 'Nicola-Yoon', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(158, 'Sharon M. Draper', 'Sharon-M.-Draper', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(159, 'David McClay', 'David-McClay', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(160, 'Annie Ward', 'Annie-Ward', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(161, 'Antonio Iturbe', 'Antonio-Iturbe', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(162, 'Catherine Bennetto', 'Catherine-Bennetto', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(163, 'C. J. Skuse', 'C.-J.-Skuse', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(164, 'Edith Eger', 'Edith-Eger', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(165, 'Emily Gunnis', 'Emily-Gunnis', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(166, 'Sarah J. Naughton', 'Sarah-J.-Naughton', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(167, 'Erin Green', 'Erin-Green', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(168, 'Colin Rushton', 'Colin-Rushton', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(169, 'Sean Covey', 'Sean-Covey', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(170, 'Carl Chinn', 'Carl-Chinn', 1, 0, '2021-02-28 19:49:46', '2021-02-28 19:49:46'),
(171, 'Dean Koontz', 'Dean-Koontz', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(172, 'Emma Haughton', 'Emma-Haughton', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(173, 'Donna O. Hill', 'Donna-O.-Hill', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(174, 'Tallia Storm', 'Tallia-Storm', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(175, 'Raymond E. Feist', 'Raymond-E.-Feist', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(176, 'Kenneth H. Blanchard', 'Kenneth-H.-Blanchard', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(177, 'B. P. Walter', 'B.-P.-Walter', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(178, 'Ella Dove', 'Ella-Dove', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(179, 'Michelle Roehm McCann', 'Michelle-Roehm-McCann', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(180, 'Rolf Dobelli', 'Rolf-Dobelli', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(181, 'Neil Gaiman', 'Neil-Gaiman', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(182, 'Gary Paulsen', 'Gary-Paulsen', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(183, 'Lauren Oliver', 'Lauren-Oliver', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(184, 'Sharon Bolton', 'Sharon-Bolton', 1, 0, '2021-02-28 19:49:47', '2021-02-28 19:49:47'),
(185, 'Melanie Blake', 'Melanie-Blake', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(186, 'Ann Cleeves', 'Ann-Cleeves', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(187, 'B. A. Paris', 'B.-A.-Paris', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(188, 'Raṇajīta Dhīra', 'Raṇajīta-Dhīra', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(189, 'Margaret Atwood', 'Margaret-Atwood', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(190, 'H. E. Bates', 'H.-E.-Bates', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(191, 'Gary John Bishop', 'Gary-John-Bishop', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(192, 'KATIE. LOWE', 'KATIE.-LOWE', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(193, 'Frances Hodgson Burnett', 'Frances-Hodgson-Burnett', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(194, 'Katy Moran', 'Katy-Moran', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(195, 'Ali Hafez', 'Ali-Hafez', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(196, 'Vita Sackville-West', 'Vita-Sackville-West', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(197, 'C. J. Cooke', 'C.-J.-Cooke', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(198, 'Helen Dunmore', 'Helen-Dunmore', 1, 0, '2021-02-28 19:49:48', '2021-02-28 19:49:48'),
(199, 'Michael Robotham', 'Michael-Robotham', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(200, 'Z. Oko', 'Z.-Oko', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(201, 'John Grisham', 'John-Grisham', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(202, 'Cecelia Ahern', 'Cecelia-Ahern', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(203, 'Richard Phillips', 'Richard-Phillips', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(204, 'Jo Walton', 'Jo-Walton', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(205, 'Becca Fitzpatrick', 'Becca-Fitzpatrick', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(206, 'Robin Sharma', 'Robin-Sharma', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(207, 'Elif Shafak', 'Elif-Shafak', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(208, 'Anne O\'Brien', 'Anne-O\'Brien', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(209, 'Linwood Barclay', 'Linwood-Barclay', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(210, 'Jennifer Armintrout', 'Jennifer-Armintrout', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(211, 'Seth C. Adams', 'Seth-C.-Adams', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(212, 'Jacqui Rose', 'Jacqui-Rose', 1, 0, '2021-02-28 19:49:49', '2021-02-28 19:49:49'),
(213, 'Wendy Spinale', 'Wendy-Spinale', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(214, 'Camilla Grebe', 'Camilla-Grebe', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(215, 'Kiran Millwood Hargrave', 'Kiran-Millwood-Hargrave', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(216, 'Shona MacLean', 'Shona-MacLean', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(217, 'Janice Pariat', 'Janice-Pariat', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(218, 'Louise Rennison', 'Louise-Rennison', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(219, 'Tom Wood', 'Tom-Wood', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(220, 'Katy Colins', 'Katy-Colins', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(221, 'Jessica Shirvington', 'Jessica-Shirvington', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(222, 'Alyson Noėl', 'Alyson-Noėl', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(223, 'Spencer Johnson', 'Spencer-Johnson', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(224, 'Elizabeth Norris', 'Elizabeth-Norris', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(225, 'Chris Brookmyre', 'Chris-Brookmyre', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(226, 'Tamsin Grey', 'Tamsin-Grey', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(227, 'Veronica Roth', 'Veronica-Roth', 1, 0, '2021-02-28 19:49:50', '2021-02-28 19:49:50'),
(228, 'Amy Heydenrych', 'Amy-Heydenrych', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(229, 'Cass Green', 'Cass-Green', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(230, 'Peter Robinson', 'Peter-Robinson', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(231, 'Edward Morgan Forster', 'Edward-Morgan-Forster', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(232, 'John Fullerton', 'John-Fullerton', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(233, 'James Swallow', 'James-Swallow', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(234, 'Lee Child', 'Lee-Child', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(235, 'John Gray', 'John-Gray', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(236, 'Leigh Russell', 'Leigh-Russell', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(237, 'Julie Cohen', 'Julie-Cohen', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(238, 'Asia Mackay', 'Asia-Mackay', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(239, 'Liane Moriarty', 'Liane-Moriarty', 1, 0, '2021-02-28 19:49:51', '2021-02-28 19:49:51'),
(240, 'Jamie McGuire', 'Jamie-McGuire', 1, 0, '2021-02-28 19:49:52', '2021-02-28 19:49:52'),
(241, 'Richard Montanari', 'Richard-Montanari', 1, 0, '2021-02-28 19:49:52', '2021-02-28 19:49:52'),
(242, 'Rupi Kaur', 'Rupi-Kaur', 1, 0, '2021-02-28 19:49:52', '2021-02-28 19:49:52'),
(243, 'Holly Bourne', 'Holly-Bourne', 1, 0, '2021-02-28 19:49:52', '2021-02-28 19:49:52'),
(244, 'Sara Barnard', 'Sara-Barnard', 1, 0, '2021-02-28 19:49:52', '2021-02-28 19:49:52'),
(245, 'ELIZABETH J. CHURCH', 'ELIZABETH-J.-CHURCH', 1, 0, '2021-02-28 19:49:52', '2021-02-28 19:49:52'),
(246, 'Arwen Elys Dayton', 'Arwen-Elys-Dayton', 1, 0, '2021-02-28 19:49:53', '2021-02-28 19:49:53'),
(247, 'Alex Lake', 'Alex-Lake', 1, 0, '2021-02-28 19:49:53', '2021-02-28 19:49:53'),
(248, 'C. L. Taylor', 'C.-L.-Taylor', 1, 0, '2021-02-28 19:49:53', '2021-02-28 19:49:53'),
(249, 'Mason Cross', 'Mason-Cross', 1, 0, '2021-02-28 19:49:53', '2021-02-28 19:49:53'),
(250, 'Craig Callender', 'Craig-Callender', 1, 0, '2021-02-28 19:49:53', '2021-02-28 19:49:53'),
(251, 'Matt Haig', 'Matt-Haig', 1, 0, '2021-02-28 19:49:53', '2021-02-28 19:49:53'),
(252, 'Rachel Caine', 'Rachel-Caine', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(253, 'Anthony Riches', 'Anthony-Riches', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(254, 'Martin Davies', 'Martin-Davies', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(255, 'Stephen Fry', 'Stephen-Fry', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(256, 'Simon Scarrow', 'Simon-Scarrow', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(257, 'Patrick Ness', 'Patrick-Ness', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(258, 'Ken Blanchard', 'Ken-Blanchard', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(259, 'George R. R. Martin', 'George-R.-R.-Martin', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(260, 'Shane Peacock', 'Shane-Peacock', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(261, 'Norah McClintock', 'Norah-McClintock', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(262, 'Sigmund Brouwer', 'Sigmund-Brouwer', 1, 0, '2021-02-28 19:49:54', '2021-02-28 19:49:54'),
(263, 'Eric Walters', 'Eric-Walters', 1, 0, '2021-02-28 19:49:55', '2021-02-28 19:49:55'),
(264, 'Gill Sims', 'Gill-Sims', 1, 0, '2021-02-28 19:49:55', '2021-02-28 19:49:55'),
(265, 'Robert Bolton', 'Robert-Bolton', 1, 0, '2021-02-28 19:49:56', '2021-02-28 19:49:56'),
(266, 'JENNIE. LAMBERT MILLER (VICTORIA.)', 'JENNIE.-LAMBERT-MILLER-(VICTORIA.)', 1, 0, '2021-02-28 19:49:56', '2021-02-28 19:49:56'),
(267, 'Anthony Robbins', 'Anthony-Robbins', 1, 0, '2021-02-28 19:49:56', '2021-02-28 19:49:56'),
(268, 'Lisa Thompson', 'Lisa-Thompson', 1, 0, '2021-02-28 19:49:56', '2021-02-28 19:49:56'),
(269, 'Erin Hunter', 'Erin-Hunter', 1, 0, '2021-02-28 19:49:56', '2021-02-28 19:49:56'),
(270, 'Eleonora Barsotti', 'Eleonora-Barsotti', 1, 0, '2021-02-28 19:49:56', '2021-02-28 19:49:56'),
(271, 'Trace Moroney', 'Trace-Moroney', 1, 0, '2021-02-28 19:49:56', '2021-02-28 19:49:56'),
(272, 'Elizabeth Golding', 'Elizabeth-Golding', 1, 0, '2021-02-28 19:49:57', '2021-02-28 19:49:57'),
(273, 'Elena Favilli', 'Elena-Favilli', 1, 0, '2021-02-28 19:49:57', '2021-02-28 19:49:57'),
(274, 'Steve Parker', 'Steve-Parker', 1, 0, '2021-02-28 19:49:57', '2021-02-28 19:49:57'),
(275, 'Claire Chabot', 'Claire-Chabot', 1, 0, '2021-02-28 19:49:57', '2021-02-28 19:49:57'),
(276, 'David Hawcock', 'David-Hawcock', 1, 0, '2021-02-28 19:49:57', '2021-02-28 19:49:57'),
(277, 'Bérengère Motuelle', 'Bérengère-Motuelle', 1, 0, '2021-02-28 19:49:57', '2021-02-28 19:49:57'),
(278, 'Piccolia,', 'Piccolia,', 1, 0, '2021-02-28 19:49:57', '2021-02-28 19:49:57'),
(279, 'John Farndon', 'John-Farndon', 1, 0, '2021-02-28 19:49:58', '2021-02-28 19:49:58'),
(280, 'Hanna Pang', 'Hanna-Pang', 1, 0, '2021-02-28 19:49:58', '2021-02-28 19:49:58'),
(281, 'Claire Bertholet', 'Claire-Bertholet', 1, 0, '2021-02-28 19:49:58', '2021-02-28 19:49:58'),
(282, 'Sarah Pitt', 'Sarah-Pitt', 1, 0, '2021-02-28 19:49:58', '2021-02-28 19:49:58'),
(283, 'Stephanie Moss', 'Stephanie-Moss', 1, 0, '2021-02-28 19:49:58', '2021-02-28 19:49:58'),
(284, 'Giovanna Mantegazza', 'Giovanna-Mantegazza', 1, 0, '2021-02-28 19:49:58', '2021-02-28 19:49:58'),
(285, 'Conn Iggulden', 'Conn-Iggulden', 1, 0, '2021-02-28 19:49:59', '2021-02-28 19:49:59'),
(286, 'Jo Salter', 'Jo-Salter', 1, 0, '2021-02-28 19:49:59', '2021-02-28 19:49:59'),
(287, 'John Clancy', 'John-Clancy', 1, 0, '2021-02-28 19:49:59', '2021-02-28 19:49:59'),
(288, 'Tanith Carey', 'Tanith-Carey', 1, 0, '2021-02-28 19:49:59', '2021-02-28 19:49:59'),
(289, 'Robert Arp', 'Robert-Arp', 1, 0, '2021-02-28 19:49:59', '2021-02-28 19:49:59'),
(290, 'Hans Rosling', 'Hans-Rosling', 1, 0, '2021-02-28 19:49:59', '2021-02-28 19:49:59'),
(291, 'Rosanna Davison', 'Rosanna-Davison', 1, 0, '2021-02-28 19:49:59', '2021-02-28 19:49:59'),
(292, 'Kathi Wagner', 'Kathi-Wagner', 1, 0, '2021-02-28 19:49:59', '2021-02-28 19:49:59'),
(293, 'Malcolm Swanston', 'Malcolm-Swanston', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(294, 'Katie Rose Johnston', 'Katie-Rose-Johnston', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(295, 'Greg Kroening', 'Greg-Kroening', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(296, 'Holde Kreul', 'Holde-Kreul', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(297, 'Sarah Dennis', 'Sarah-Dennis', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(298, 'Claire Summerscale', 'Claire-Summerscale', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(299, 'Dorling Kindersley Publishing Staff', 'Dorling-Kindersley-Publishing-Staff', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(300, 'Yoga Sivananda', 'Yoga-Sivananda', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(301, 'Colm Williamson', 'Colm-Williamson', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(302, 'Ross Bayton', 'Ross-Bayton', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(303, 'KAY MAGUIRE', 'KAY-MAGUIRE', 1, 0, '2021-02-28 19:50:00', '2021-02-28 19:50:00'),
(304, 'Graham Lawton', 'Graham-Lawton', 1, 0, '2021-02-28 19:50:01', '2021-02-28 19:50:01'),
(305, 'Peter Chrisp', 'Peter-Chrisp', 1, 0, '2021-02-28 19:50:01', '2021-02-28 19:50:01'),
(306, 'Jason Barlow', 'Jason-Barlow', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(307, 'Danielle Smith-Llera', 'Danielle-Smith-Llera', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(308, 'Dorling Kindersley', 'Dorling-Kindersley', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(309, 'Matthew Brehm', 'Matthew-Brehm', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(310, 'Geoffrey Fisher', 'Geoffrey-Fisher', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(311, 'Modern Books', 'Modern-Books', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(312, 'Harriet de Winton', 'Harriet-de-Winton', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(313, 'Acland Geddes', 'Acland-Geddes', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(314, 'Jack Stein', 'Jack-Stein', 1, 0, '2021-02-28 19:50:02', '2021-02-28 19:50:02'),
(315, 'Chris Packham', 'Chris-Packham', 1, 0, '2021-02-28 19:50:03', '2021-02-28 19:50:03'),
(316, 'Natalie Labarre', 'Natalie-Labarre', 1, 0, '2021-02-28 19:50:03', '2021-02-28 19:50:03'),
(317, 'Carol Vorderman', 'Carol-Vorderman', 1, 0, '2021-02-28 19:50:03', '2021-02-28 19:50:03'),
(318, 'Louise Parker', 'Louise-Parker', 1, 0, '2021-02-28 19:50:03', '2021-02-28 19:50:03'),
(319, 'Ben Brooks', 'Ben-Brooks', 1, 0, '2021-02-28 19:50:04', '2021-02-28 19:50:04'),
(320, 'Tom Phillips', 'Tom-Phillips', 1, 0, '2021-02-28 19:50:04', '2021-02-28 19:50:04'),
(321, 'Joel Levy', 'Joel-Levy', 1, 0, '2021-02-28 19:50:04', '2021-02-28 19:50:04'),
(322, 'Anne Rooney', 'Anne-Rooney', 1, 0, '2021-02-28 19:50:04', '2021-02-28 19:50:04'),
(323, 'Professor Brian Cox', 'Professor-Brian-Cox', 1, 0, '2021-02-28 19:50:04', '2021-02-28 19:50:04'),
(324, 'Chris Whales', 'Chris-Whales', 1, 0, '2021-02-28 19:50:05', '2021-02-28 19:50:05'),
(325, 'Chas Newkey-Burden', 'Chas-Newkey-Burden', 1, 0, '2021-02-28 19:50:05', '2021-02-28 19:50:05'),
(326, 'Ripley', 'Ripley', 1, 0, '2021-02-28 19:50:05', '2021-02-28 19:50:05'),
(327, 'Broomfield Publishing', 'Broomfield-Publishing', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(328, 'Derek Harvey', 'Derek-Harvey', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(329, 'Joanne Randolph', 'Joanne-Randolph', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(330, 'Jenny Jacoby', 'Jenny-Jacoby', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(331, 'Tracey Steffora', 'Tracey-Steffora', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(332, 'Grace Jones', 'Grace-Jones', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(333, 'Susan Meredith', 'Susan-Meredith', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(334, 'Belinda Gallagher', 'Belinda-Gallagher', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(335, 'Sharon Katz Cooper', 'Sharon-Katz-Cooper', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(336, 'Steve Martin', 'Steve-Martin', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(337, 'Tessa Wardley', 'Tessa-Wardley', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(338, 'David Clayton', 'David-Clayton', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(339, 'Villager Jim', 'Villager-Jim', 1, 0, '2021-02-28 19:50:06', '2021-02-28 19:50:06'),
(340, 'Millie Marotta', 'Millie-Marotta', 1, 0, '2021-02-28 19:50:07', '2021-02-28 19:50:07'),
(341, 'Sarah Creese', 'Sarah-Creese', 1, 0, '2021-02-28 19:50:07', '2021-02-28 19:50:07'),
(342, 'Darren Shan', 'Darren-Shan', 1, 0, '2021-02-28 19:50:07', '2021-02-28 19:50:07'),
(343, 'Douglas Adams', 'Douglas-Adams', 1, 0, '2021-02-28 19:50:07', '2021-02-28 19:50:07'),
(344, 'Kazu Kibuishi', 'Kazu-Kibuishi', 1, 0, '2021-02-28 19:50:07', '2021-02-28 19:50:07'),
(345, 'Dav Pilkey', 'Dav-Pilkey', 1, 0, '2021-02-28 19:50:07', '2021-02-28 19:50:07'),
(346, 'Suzanne Collins', 'Suzanne-Collins', 1, 0, '2021-02-28 19:50:07', '2021-02-28 19:50:07'),
(347, 'M. Martin Ann', 'M.-Martin-Ann', 1, 0, '2021-02-28 19:50:07', '2021-02-28 19:50:07'),
(348, 'Ann M. Martin', 'Ann-M.-Martin', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(349, 'Thea Stilton', 'Thea-Stilton', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(350, 'Allison Lassieur', 'Allison-Lassieur', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(351, 'Sophie Anderson', 'Sophie-Anderson', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(352, 'Catherine Coe', 'Catherine-Coe', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(353, 'Olivia Tuffin', 'Olivia-Tuffin', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(354, 'Carly Anne West', 'Carly-Anne-West', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(355, 'Scott Cawthon', 'Scott-Cawthon', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(356, 'R. L. Stine', 'R.-L.-Stine', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(357, 'James Patterson', 'James-Patterson', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(358, 'J. K. Rowling', 'J.-K.-Rowling', 1, 0, '2021-02-28 19:50:08', '2021-02-28 19:50:08'),
(359, 'Terry Deary', 'Terry-Deary', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(360, 'Jenny Nimmo', 'Jenny-Nimmo', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(361, 'Tui Sutherland', 'Tui-Sutherland', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(362, 'Garth Nix', 'Garth-Nix', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(363, 'Pamela Butchart', 'Pamela-Butchart', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(364, 'Mark Walden', 'Mark-Walden', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(365, 'Enid Blyton', 'Enid-Blyton', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(366, 'Dustin Brady', 'Dustin-Brady', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(367, 'Jim Benton', 'Jim-Benton', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(368, 'Anita Ganeri', 'Anita-Ganeri', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(369, 'Paula Harrison', 'Paula-Harrison', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(370, 'Roald Dahl', 'Roald-Dahl', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(371, 'Rachel Renée Russell', 'Rachel-Renée-Russell', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(372, 'Andrews Mcmeel Publishing', 'Andrews-Mcmeel-Publishing', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(373, 'George Beard', 'George-Beard', 1, 0, '2021-02-28 19:50:09', '2021-02-28 19:50:09'),
(374, 'Dav Pilkey (1966- author)', 'Dav-Pilkey-(1966--author)', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(375, 'Sarah Mlynowski', 'Sarah-Mlynowski', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(376, 'Tessa Roehl', 'Tessa-Roehl', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(377, 'Suzanne Francis', 'Suzanne-Francis', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(378, 'Julie Sykes', 'Julie-Sykes', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(379, 'Make Believe Ideas', 'Make-Believe-Ideas', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(380, 'Gillian Shields', 'Gillian-Shields', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(381, 'Ben Mantle', 'Ben-Mantle', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(382, 'Rebecca Patterson', 'Rebecca-Patterson', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(383, 'CORDEROY TRACEY', 'CORDEROY-TRACEY', 1, 0, '2021-02-28 19:50:10', '2021-02-28 19:50:10'),
(384, 'Timothy Knapman', 'Timothy-Knapman', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(385, 'Steve Smallman', 'Steve-Smallman', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(386, 'Jonny Lambert', 'Jonny-Lambert', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(387, 'John Kelly', 'John-Kelly', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(388, 'Tracey Corderoy', 'Tracey-Corderoy', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(389, 'Allan Ahlberg', 'Allan-Ahlberg', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(390, 'Ladybird', 'Ladybird', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(391, 'Catherine Baker', 'Catherine-Baker', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(392, 'Ladybird Ladybird', 'Ladybird-Ladybird', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(393, 'Ronne Randall', 'Ronne-Randall', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(394, 'Rudyard Kipling', 'Rudyard-Kipling', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(395, 'Jillian Powell', 'Jillian-Powell', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(396, 'Coleen Degnan-Veness', 'Coleen-Degnan-Veness', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(397, 'Mark Sperring', 'Mark-Sperring', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(398, 'Julia Donaldson', 'Julia-Donaldson', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(399, 'Rebecca Cobb', 'Rebecca-Cobb', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(400, 'Elissa Elwick', 'Elissa-Elwick', 1, 0, '2021-02-28 19:50:11', '2021-02-28 19:50:11'),
(401, 'Jeff Brown', 'Jeff-Brown', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(402, 'Sally Sutton', 'Sally-Sutton', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(403, 'Tony Ross', 'Tony-Ross', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(404, 'Neville Astley', 'Neville-Astley', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(405, 'Phil Roxbee Cox', 'Phil-Roxbee-Cox', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(406, 'Eric Hill', 'Eric-Hill', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(407, 'Hill;; Eric', 'Hill;;-Eric', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(408, 'Alison Kelly', 'Alison-Kelly', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(409, 'Aesop', 'Aesop', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(410, 'Allison Kelly', 'Allison-Kelly', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(411, 'Alexandra Robinson', 'Alexandra-Robinson', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(412, 'Mary Atkinson', 'Mary-Atkinson', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(413, 'Lucy Waterhouse', 'Lucy-Waterhouse', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(414, 'Rosie Greening', 'Rosie-Greening', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(415, 'Penelope Arlon', 'Penelope-Arlon', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(416, 'Russell PUNTER', 'Russell-PUNTER', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(417, 'Lesley Sims', 'Lesley-Sims', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(418, 'Mairi Mackinnon', 'Mairi-Mackinnon', 1, 0, '2021-02-28 19:50:12', '2021-02-28 19:50:12'),
(419, 'Rico Green', 'Rico-Green', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(420, 'Caroline Pitcher', 'Caroline-Pitcher', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(421, 'Linda Jennings', 'Linda-Jennings', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(422, 'Inc. Scholastic', 'Inc.-Scholastic', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(423, 'Nicholas Pearson', 'Nicholas-Pearson', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(424, 'Judith Hann', 'Judith-Hann', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(425, 'Malorie Blackman', 'Malorie-Blackman', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(426, 'George Orwell', 'George-Orwell', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(427, 'Sue Wallman', 'Sue-Wallman', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(428, 'Giovanni Dienstmann', 'Giovanni-Dienstmann', 1, 0, '2021-02-28 19:50:13', '2021-02-28 19:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping` double(8,2) UNSIGNED DEFAULT NULL,
  `discount_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `old_price` double(8,2) UNSIGNED DEFAULT NULL,
  `qty` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` tinyint(4) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `order_by`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'kids', 'kids', 1, NULL, '2021-02-28 19:49:29', '2021-02-28 19:49:29'),
(2, 'fiction', 'kids-fiction', 1, 1, NULL, NULL),
(3, 'nonfiction', 'kids-nonfiction', 1, 1, NULL, NULL),
(4, 'Adults', 'Adults', 1, NULL, '2021-02-28 19:49:29', '2021-02-28 19:49:29'),
(5, 'fiction', 'Adults-fiction', 1, 4, NULL, NULL),
(6, 'nonfiction', 'Adults-nonfiction', 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 3, '2021-02-28 19:53:08', '2021-02-28 19:53:08'),
(2, 3, 4, '2021-02-28 19:53:08', '2021-02-28 19:53:08'),
(3, 3, 5, '2021-02-28 19:53:08', '2021-02-28 19:53:08'),
(4, 3, 6, '2021-02-28 19:53:09', '2021-02-28 19:53:09'),
(5, 3, 7, '2021-02-28 19:53:09', '2021-02-28 19:53:09'),
(6, 3, 8, '2021-02-28 19:53:09', '2021-02-28 19:53:09'),
(7, 3, 9, '2021-02-28 19:53:09', '2021-02-28 19:53:09'),
(8, 3, 10, '2021-02-28 19:53:09', '2021-02-28 19:53:09'),
(9, 3, 11, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(10, 3, 12, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(11, 3, 13, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(12, 3, 14, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(13, 3, 15, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(14, 3, 16, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(15, 3, 17, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(16, 3, 18, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(17, 3, 19, '2021-02-28 19:53:10', '2021-02-28 19:53:10'),
(18, 3, 20, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(19, 3, 21, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(20, 3, 22, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(21, 3, 23, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(22, 3, 24, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(23, 3, 25, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(24, 3, 26, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(25, 3, 27, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(26, 3, 28, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(27, 3, 29, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(28, 3, 30, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(29, 3, 31, '2021-02-28 19:53:11', '2021-02-28 19:53:11'),
(30, 3, 32, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(31, 3, 33, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(32, 3, 34, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(33, 3, 35, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(34, 3, 36, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(35, 3, 37, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(36, 3, 38, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(37, 3, 39, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(38, 3, 40, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(39, 3, 41, '2021-02-28 19:53:12', '2021-02-28 19:53:12'),
(40, 3, 42, '2021-02-28 19:53:13', '2021-02-28 19:53:13'),
(41, 3, 43, '2021-02-28 19:53:13', '2021-02-28 19:53:13'),
(42, 3, 44, '2021-02-28 19:53:13', '2021-02-28 19:53:13'),
(43, 3, 45, '2021-02-28 19:53:13', '2021-02-28 19:53:13'),
(44, 3, 46, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(45, 3, 47, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(46, 3, 48, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(47, 3, 49, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(48, 3, 50, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(49, 3, 51, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(50, 3, 52, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(51, 3, 53, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(52, 3, 54, '2021-02-28 19:53:14', '2021-02-28 19:53:14'),
(53, 3, 55, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(54, 3, 56, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(55, 3, 57, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(56, 3, 58, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(57, 3, 59, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(58, 3, 60, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(59, 3, 61, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(60, 3, 62, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(61, 3, 63, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(62, 3, 64, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(63, 3, 65, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(64, 3, 66, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(65, 3, 67, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(66, 3, 68, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(67, 3, 69, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(68, 3, 70, '2021-02-28 19:53:15', '2021-02-28 19:53:15'),
(69, 3, 71, '2021-02-28 19:53:16', '2021-02-28 19:53:16'),
(70, 3, 72, '2021-02-28 19:53:16', '2021-02-28 19:53:16'),
(71, 3, 73, '2021-02-28 19:53:17', '2021-02-28 19:53:17'),
(72, 3, 74, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(73, 3, 75, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(74, 3, 76, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(75, 3, 77, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(76, 3, 78, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(77, 3, 79, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(78, 3, 80, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(79, 3, 81, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(80, 3, 82, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(81, 3, 83, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(82, 3, 84, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(83, 3, 85, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(84, 3, 86, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(85, 3, 87, '2021-02-28 19:53:18', '2021-02-28 19:53:18'),
(86, 3, 88, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(87, 3, 89, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(88, 3, 90, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(89, 3, 91, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(90, 3, 92, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(91, 3, 93, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(92, 3, 94, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(93, 3, 95, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(94, 3, 96, '2021-02-28 19:53:19', '2021-02-28 19:53:19'),
(95, 3, 97, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(96, 3, 98, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(97, 3, 99, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(98, 3, 100, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(99, 3, 101, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(100, 3, 102, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(101, 3, 103, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(102, 3, 104, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(103, 3, 105, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(104, 3, 106, '2021-02-28 19:53:20', '2021-02-28 19:53:20'),
(105, 3, 107, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(106, 3, 108, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(107, 3, 109, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(108, 3, 110, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(109, 3, 111, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(110, 3, 112, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(111, 3, 113, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(112, 3, 114, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(113, 3, 115, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(114, 3, 116, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(115, 3, 117, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(116, 3, 118, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(117, 3, 119, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(118, 3, 120, '2021-02-28 19:53:21', '2021-02-28 19:53:21'),
(119, 3, 121, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(120, 3, 122, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(121, 3, 123, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(122, 3, 124, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(123, 3, 125, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(124, 3, 126, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(125, 3, 127, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(126, 3, 128, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(127, 3, 129, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(128, 3, 130, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(129, 3, 131, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(130, 3, 132, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(131, 3, 133, '2021-02-28 19:53:22', '2021-02-28 19:53:22'),
(132, 3, 134, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(133, 3, 135, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(134, 3, 136, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(135, 3, 137, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(136, 3, 138, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(137, 3, 139, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(138, 3, 140, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(139, 3, 141, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(140, 3, 142, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(141, 3, 143, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(142, 3, 144, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(143, 3, 145, '2021-02-28 19:53:23', '2021-02-28 19:53:23'),
(144, 3, 146, '2021-02-28 19:53:24', '2021-02-28 19:53:24'),
(145, 3, 147, '2021-02-28 19:53:24', '2021-02-28 19:53:24'),
(146, 3, 148, '2021-02-28 19:53:24', '2021-02-28 19:53:24'),
(147, 3, 149, '2021-02-28 19:53:24', '2021-02-28 19:53:24'),
(148, 3, 150, '2021-02-28 19:53:24', '2021-02-28 19:53:24'),
(149, 3, 151, '2021-02-28 19:53:24', '2021-02-28 19:53:24'),
(150, 3, 152, '2021-02-28 19:53:24', '2021-02-28 19:53:24'),
(151, 3, 153, '2021-02-28 19:53:24', '2021-02-28 19:53:24'),
(152, 3, 154, '2021-02-28 19:53:25', '2021-02-28 19:53:25'),
(153, 3, 155, '2021-02-28 19:53:25', '2021-02-28 19:53:25'),
(154, 3, 156, '2021-02-28 19:53:25', '2021-02-28 19:53:25'),
(155, 3, 157, '2021-02-28 19:53:25', '2021-02-28 19:53:25'),
(156, 3, 158, '2021-02-28 19:53:25', '2021-02-28 19:53:25'),
(157, 3, 159, '2021-02-28 19:53:25', '2021-02-28 19:53:25'),
(158, 3, 160, '2021-02-28 19:53:25', '2021-02-28 19:53:25'),
(159, 3, 161, '2021-02-28 19:53:26', '2021-02-28 19:53:26'),
(160, 3, 162, '2021-02-28 19:53:26', '2021-02-28 19:53:26'),
(161, 3, 163, '2021-02-28 19:53:26', '2021-02-28 19:53:26'),
(162, 3, 164, '2021-02-28 19:53:26', '2021-02-28 19:53:26'),
(163, 3, 165, '2021-02-28 19:53:26', '2021-02-28 19:53:26'),
(164, 3, 166, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(165, 3, 167, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(166, 3, 168, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(167, 3, 169, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(168, 3, 171, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(169, 3, 172, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(170, 3, 173, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(171, 3, 174, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(172, 3, 175, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(173, 3, 176, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(174, 3, 177, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(175, 3, 178, '2021-02-28 19:53:27', '2021-02-28 19:53:27'),
(176, 3, 179, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(177, 3, 180, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(178, 3, 181, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(179, 3, 182, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(180, 3, 183, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(181, 3, 184, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(182, 3, 185, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(183, 3, 186, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(184, 3, 187, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(185, 3, 188, '2021-02-28 19:53:28', '2021-02-28 19:53:28'),
(186, 3, 189, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(187, 3, 190, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(188, 3, 191, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(189, 3, 192, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(190, 3, 193, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(191, 3, 194, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(192, 3, 195, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(193, 3, 196, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(194, 3, 197, '2021-02-28 19:53:29', '2021-02-28 19:53:29'),
(195, 3, 198, '2021-02-28 19:53:30', '2021-02-28 19:53:30'),
(196, 3, 199, '2021-02-28 19:53:30', '2021-02-28 19:53:30'),
(197, 3, 200, '2021-02-28 19:53:30', '2021-02-28 19:53:30'),
(198, 3, 201, '2021-02-28 19:53:30', '2021-02-28 19:53:30'),
(199, 3, 202, '2021-02-28 19:53:30', '2021-02-28 19:53:30'),
(200, 3, 203, '2021-02-28 19:53:30', '2021-02-28 19:53:30'),
(201, 3, 204, '2021-02-28 19:53:30', '2021-02-28 19:53:30'),
(202, 3, 205, '2021-02-28 19:53:30', '2021-02-28 19:53:30'),
(203, 3, 206, '2021-02-28 19:53:31', '2021-02-28 19:53:31'),
(204, 3, 207, '2021-02-28 19:53:31', '2021-02-28 19:53:31'),
(205, 3, 208, '2021-02-28 19:53:31', '2021-02-28 19:53:31'),
(206, 3, 209, '2021-02-28 19:53:31', '2021-02-28 19:53:31'),
(207, 3, 210, '2021-02-28 19:53:31', '2021-02-28 19:53:31'),
(208, 3, 211, '2021-02-28 19:53:31', '2021-02-28 19:53:31'),
(209, 3, 212, '2021-02-28 19:53:31', '2021-02-28 19:53:31'),
(210, 3, 213, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(211, 3, 214, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(212, 3, 215, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(213, 3, 216, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(214, 3, 217, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(215, 3, 218, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(216, 3, 219, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(217, 3, 220, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(218, 3, 221, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(219, 3, 222, '2021-02-28 19:53:32', '2021-02-28 19:53:32'),
(220, 3, 223, '2021-02-28 19:53:33', '2021-02-28 19:53:33'),
(221, 3, 224, '2021-02-28 19:53:33', '2021-02-28 19:53:33'),
(222, 3, 225, '2021-02-28 19:53:33', '2021-02-28 19:53:33'),
(223, 3, 226, '2021-02-28 19:53:33', '2021-02-28 19:53:33'),
(224, 3, 227, '2021-02-28 19:53:33', '2021-02-28 19:53:33'),
(225, 3, 228, '2021-02-28 19:53:33', '2021-02-28 19:53:33'),
(226, 3, 229, '2021-02-28 19:53:33', '2021-02-28 19:53:33'),
(227, 3, 230, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(228, 3, 231, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(229, 3, 232, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(230, 3, 233, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(231, 3, 234, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(232, 3, 235, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(233, 3, 236, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(234, 3, 237, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(235, 3, 238, '2021-02-28 19:53:34', '2021-02-28 19:53:34'),
(236, 3, 239, '2021-02-28 19:53:35', '2021-02-28 19:53:35'),
(237, 3, 240, '2021-02-28 19:53:35', '2021-02-28 19:53:35'),
(238, 3, 241, '2021-02-28 19:53:35', '2021-02-28 19:53:35'),
(239, 3, 242, '2021-02-28 19:53:35', '2021-02-28 19:53:35'),
(240, 3, 243, '2021-02-28 19:53:35', '2021-02-28 19:53:35'),
(241, 3, 244, '2021-02-28 19:53:36', '2021-02-28 19:53:36'),
(242, 3, 245, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(243, 3, 246, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(244, 3, 247, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(245, 3, 248, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(246, 3, 249, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(247, 3, 250, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(248, 3, 251, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(249, 3, 252, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(250, 3, 253, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(251, 3, 254, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(252, 3, 255, '2021-02-28 19:53:37', '2021-02-28 19:53:37'),
(253, 3, 256, '2021-02-28 19:53:38', '2021-02-28 19:53:38'),
(254, 3, 257, '2021-02-28 19:53:38', '2021-02-28 19:53:38'),
(255, 3, 258, '2021-02-28 19:53:38', '2021-02-28 19:53:38'),
(256, 3, 259, '2021-02-28 19:53:38', '2021-02-28 19:53:38'),
(257, 3, 260, '2021-02-28 19:53:38', '2021-02-28 19:53:38'),
(258, 3, 261, '2021-02-28 19:53:38', '2021-02-28 19:53:38'),
(259, 3, 262, '2021-02-28 19:53:38', '2021-02-28 19:53:38'),
(260, 3, 263, '2021-02-28 19:53:39', '2021-02-28 19:53:39'),
(261, 3, 264, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(262, 3, 265, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(263, 3, 266, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(264, 3, 267, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(265, 3, 268, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(266, 3, 269, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(267, 3, 270, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(268, 3, 271, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(269, 3, 272, '2021-02-28 19:53:40', '2021-02-28 19:53:40'),
(270, 3, 273, '2021-02-28 19:53:41', '2021-02-28 19:53:41'),
(271, 3, 274, '2021-02-28 19:53:41', '2021-02-28 19:53:41'),
(272, 3, 275, '2021-02-28 19:53:41', '2021-02-28 19:53:41'),
(273, 3, 276, '2021-02-28 19:53:41', '2021-02-28 19:53:41'),
(274, 3, 277, '2021-02-28 19:53:41', '2021-02-28 19:53:41'),
(275, 3, 278, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(276, 3, 279, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(277, 3, 280, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(278, 3, 281, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(279, 3, 282, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(280, 3, 283, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(281, 3, 284, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(282, 3, 285, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(283, 3, 286, '2021-02-28 19:53:42', '2021-02-28 19:53:42'),
(284, 3, 287, '2021-02-28 19:53:43', '2021-02-28 19:53:43'),
(285, 3, 288, '2021-02-28 19:53:43', '2021-02-28 19:53:43'),
(286, 3, 289, '2021-02-28 19:53:43', '2021-02-28 19:53:43'),
(287, 3, 290, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(288, 3, 291, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(289, 3, 292, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(290, 3, 293, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(291, 3, 294, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(292, 3, 295, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(293, 3, 296, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(294, 3, 297, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(295, 3, 298, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(296, 3, 299, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(297, 3, 300, '2021-02-28 19:53:44', '2021-02-28 19:53:44'),
(298, 3, 301, '2021-02-28 19:53:45', '2021-02-28 19:53:45'),
(299, 3, 302, '2021-02-28 19:53:45', '2021-02-28 19:53:45'),
(300, 3, 303, '2021-02-28 19:53:45', '2021-02-28 19:53:45'),
(301, 3, 304, '2021-02-28 19:53:45', '2021-02-28 19:53:45'),
(302, 3, 305, '2021-02-28 19:53:45', '2021-02-28 19:53:45'),
(303, 3, 306, '2021-02-28 19:53:45', '2021-02-28 19:53:45'),
(304, 3, 307, '2021-02-28 19:53:46', '2021-02-28 19:53:46'),
(305, 3, 308, '2021-02-28 19:53:46', '2021-02-28 19:53:46'),
(306, 3, 309, '2021-02-28 19:53:46', '2021-02-28 19:53:46'),
(307, 3, 310, '2021-02-28 19:53:46', '2021-02-28 19:53:46'),
(308, 3, 311, '2021-02-28 19:53:46', '2021-02-28 19:53:46'),
(309, 3, 312, '2021-02-28 19:53:46', '2021-02-28 19:53:46'),
(310, 3, 313, '2021-02-28 19:53:47', '2021-02-28 19:53:47'),
(311, 3, 314, '2021-02-28 19:53:47', '2021-02-28 19:53:47'),
(312, 3, 315, '2021-02-28 19:53:48', '2021-02-28 19:53:48'),
(313, 3, 316, '2021-02-28 19:53:48', '2021-02-28 19:53:48'),
(314, 3, 317, '2021-02-28 19:53:48', '2021-02-28 19:53:48'),
(315, 3, 318, '2021-02-28 19:53:48', '2021-02-28 19:53:48'),
(316, 3, 319, '2021-02-28 19:53:49', '2021-02-28 19:53:49'),
(317, 3, 320, '2021-02-28 19:53:49', '2021-02-28 19:53:49'),
(318, 3, 321, '2021-02-28 19:53:49', '2021-02-28 19:53:49'),
(319, 3, 322, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(320, 3, 323, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(321, 3, 324, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(322, 3, 325, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(323, 3, 326, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(324, 3, 327, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(325, 3, 328, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(326, 3, 329, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(327, 3, 330, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(328, 3, 331, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(329, 3, 332, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(330, 3, 333, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(331, 3, 334, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(332, 3, 335, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(333, 3, 336, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(334, 3, 337, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(335, 3, 338, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(336, 3, 339, '2021-02-28 19:53:50', '2021-02-28 19:53:50'),
(337, 3, 340, '2021-02-28 19:53:51', '2021-02-28 19:53:51'),
(338, 3, 341, '2021-02-28 19:53:51', '2021-02-28 19:53:51'),
(339, 3, 342, '2021-02-28 19:53:51', '2021-02-28 19:53:51'),
(340, 3, 343, '2021-02-28 19:53:51', '2021-02-28 19:53:51'),
(341, 3, 344, '2021-02-28 19:53:51', '2021-02-28 19:53:51'),
(342, 3, 345, '2021-02-28 19:53:51', '2021-02-28 19:53:51'),
(343, 3, 346, '2021-02-28 19:53:51', '2021-02-28 19:53:51'),
(344, 3, 347, '2021-02-28 19:53:51', '2021-02-28 19:53:51'),
(345, 3, 348, '2021-02-28 19:53:52', '2021-02-28 19:53:52'),
(346, 3, 349, '2021-02-28 19:53:52', '2021-02-28 19:53:52'),
(347, 3, 350, '2021-02-28 19:53:52', '2021-02-28 19:53:52'),
(348, 3, 351, '2021-02-28 19:53:52', '2021-02-28 19:53:52'),
(349, 3, 352, '2021-02-28 19:53:52', '2021-02-28 19:53:52'),
(350, 3, 353, '2021-02-28 19:53:52', '2021-02-28 19:53:52'),
(351, 3, 354, '2021-02-28 19:53:52', '2021-02-28 19:53:52'),
(352, 3, 355, '2021-02-28 19:53:52', '2021-02-28 19:53:52'),
(353, 3, 356, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(354, 3, 357, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(355, 3, 358, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(356, 3, 359, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(357, 3, 360, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(358, 3, 361, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(359, 3, 362, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(360, 3, 363, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(361, 3, 364, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(362, 3, 365, '2021-02-28 19:53:53', '2021-02-28 19:53:53'),
(363, 3, 366, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(364, 3, 367, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(365, 3, 368, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(366, 3, 369, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(367, 3, 377, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(368, 3, 378, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(369, 3, 379, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(370, 2, 409, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(371, 2, 410, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(372, 2, 411, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(373, 2, 412, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(374, 2, 413, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(375, 2, 414, '2021-02-28 19:53:54', '2021-02-28 19:53:54'),
(376, 2, 415, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(377, 2, 416, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(378, 2, 417, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(379, 2, 418, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(380, 2, 419, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(381, 2, 420, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(382, 2, 421, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(383, 2, 422, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(384, 2, 423, '2021-02-28 19:53:55', '2021-02-28 19:53:55'),
(385, 2, 424, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(386, 2, 425, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(387, 2, 426, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(388, 2, 427, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(389, 2, 428, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(390, 2, 429, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(391, 2, 430, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(392, 2, 431, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(393, 2, 432, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(394, 2, 433, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(395, 2, 434, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(396, 2, 435, '2021-02-28 19:53:56', '2021-02-28 19:53:56'),
(397, 2, 436, '2021-02-28 19:53:57', '2021-02-28 19:53:57'),
(398, 2, 437, '2021-02-28 19:53:57', '2021-02-28 19:53:57'),
(399, 2, 438, '2021-02-28 19:53:57', '2021-02-28 19:53:57'),
(400, 2, 439, '2021-02-28 19:53:57', '2021-02-28 19:53:57'),
(401, 2, 440, '2021-02-28 19:53:57', '2021-02-28 19:53:57'),
(402, 2, 441, '2021-02-28 19:53:57', '2021-02-28 19:53:57'),
(403, 2, 442, '2021-02-28 19:53:58', '2021-02-28 19:53:58'),
(404, 2, 443, '2021-02-28 19:53:58', '2021-02-28 19:53:58'),
(405, 2, 444, '2021-02-28 19:53:58', '2021-02-28 19:53:58'),
(406, 1, 445, '2021-02-28 19:53:58', '2021-02-28 19:53:58'),
(407, 1, 446, '2021-02-28 19:53:58', '2021-02-28 19:53:58'),
(408, 1, 447, '2021-02-28 19:53:59', '2021-02-28 19:53:59'),
(409, 1, 448, '2021-02-28 19:53:59', '2021-02-28 19:53:59'),
(410, 1, 449, '2021-02-28 19:53:59', '2021-02-28 19:53:59'),
(411, 1, 450, '2021-02-28 19:53:59', '2021-02-28 19:53:59'),
(412, 1, 451, '2021-02-28 19:53:59', '2021-02-28 19:53:59'),
(413, 1, 452, '2021-02-28 19:53:59', '2021-02-28 19:53:59'),
(414, 1, 453, '2021-02-28 19:53:59', '2021-02-28 19:53:59'),
(415, 1, 454, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(416, 1, 455, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(417, 1, 456, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(418, 1, 457, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(419, 1, 458, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(420, 1, 459, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(421, 1, 460, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(422, 1, 461, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(423, 1, 462, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(424, 1, 463, '2021-02-28 19:54:00', '2021-02-28 19:54:00'),
(425, 1, 464, '2021-02-28 19:54:01', '2021-02-28 19:54:01'),
(426, 1, 465, '2021-02-28 19:54:01', '2021-02-28 19:54:01'),
(427, 1, 466, '2021-02-28 19:54:01', '2021-02-28 19:54:01'),
(428, 1, 467, '2021-02-28 19:54:01', '2021-02-28 19:54:01'),
(429, 1, 468, '2021-02-28 19:54:02', '2021-02-28 19:54:02'),
(430, 1, 469, '2021-02-28 19:54:02', '2021-02-28 19:54:02'),
(431, 1, 470, '2021-02-28 19:54:02', '2021-02-28 19:54:02'),
(432, 1, 471, '2021-02-28 19:54:03', '2021-02-28 19:54:03'),
(433, 1, 472, '2021-02-28 19:54:04', '2021-02-28 19:54:04'),
(434, 1, 473, '2021-02-28 19:54:05', '2021-02-28 19:54:05'),
(435, 1, 474, '2021-02-28 19:54:05', '2021-02-28 19:54:05'),
(436, 1, 475, '2021-02-28 19:54:05', '2021-02-28 19:54:05'),
(437, 1, 476, '2021-02-28 19:54:05', '2021-02-28 19:54:05'),
(438, 1, 477, '2021-02-28 19:54:05', '2021-02-28 19:54:05'),
(439, 1, 478, '2021-02-28 19:54:05', '2021-02-28 19:54:05'),
(440, 2, 479, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(441, 2, 480, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(442, 2, 481, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(443, 2, 482, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(444, 2, 483, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(445, 2, 484, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(446, 2, 485, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(447, 2, 486, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(448, 2, 487, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(449, 4, 488, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(450, 4, 489, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(451, 4, 490, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(452, 4, 491, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(453, 4, 492, '2021-02-28 19:54:06', '2021-02-28 19:54:06'),
(454, 4, 493, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(455, 4, 494, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(456, 4, 495, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(457, 4, 496, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(458, 4, 497, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(459, 4, 498, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(460, 4, 499, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(461, 4, 500, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(462, 4, 501, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(463, 4, 502, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(464, 4, 503, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(465, 4, 504, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(466, 4, 505, '2021-02-28 19:54:07', '2021-02-28 19:54:07'),
(467, 4, 506, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(468, 4, 507, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(469, 4, 508, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(470, 4, 509, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(471, 4, 510, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(472, 4, 511, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(473, 4, 512, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(474, 4, 513, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(475, 4, 514, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(476, 4, 515, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(477, 4, 516, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(478, 4, 517, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(479, 4, 518, '2021-02-28 19:54:08', '2021-02-28 19:54:08'),
(480, 4, 519, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(481, 4, 520, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(482, 4, 521, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(483, 4, 522, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(484, 4, 523, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(485, 4, 524, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(486, 4, 525, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(487, 4, 526, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(488, 4, 527, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(489, 4, 528, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(490, 4, 529, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(491, 4, 530, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(492, 4, 531, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(493, 4, 532, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(494, 4, 533, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(495, 1, 534, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(496, 1, 535, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(497, 1, 536, '2021-02-28 19:54:09', '2021-02-28 19:54:09'),
(498, 1, 537, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(499, 1, 538, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(500, 1, 539, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(501, 1, 540, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(502, 1, 541, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(503, 1, 542, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(504, 1, 543, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(505, 1, 544, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(506, 1, 545, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(507, 1, 546, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(508, 1, 547, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(509, 1, 548, '2021-02-28 19:54:10', '2021-02-28 19:54:10'),
(510, 1, 549, '2021-02-28 19:54:11', '2021-02-28 19:54:11'),
(511, 1, 550, '2021-02-28 19:54:11', '2021-02-28 19:54:11'),
(512, 1, 551, '2021-02-28 19:54:11', '2021-02-28 19:54:11'),
(513, 1, 552, '2021-02-28 19:54:11', '2021-02-28 19:54:11'),
(514, 1, 553, '2021-02-28 19:54:11', '2021-02-28 19:54:11'),
(515, 1, 554, '2021-02-28 19:54:11', '2021-02-28 19:54:11'),
(516, 1, 555, '2021-02-28 19:54:12', '2021-02-28 19:54:12'),
(517, 1, 556, '2021-02-28 19:54:12', '2021-02-28 19:54:12'),
(518, 3, 557, '2021-02-28 19:54:12', '2021-02-28 19:54:12'),
(519, 3, 558, '2021-02-28 19:54:12', '2021-02-28 19:54:12'),
(520, 3, 559, '2021-02-28 19:54:12', '2021-02-28 19:54:12'),
(521, 3, 560, '2021-02-28 19:54:13', '2021-02-28 19:54:13'),
(522, 3, 561, '2021-02-28 19:54:13', '2021-02-28 19:54:13'),
(523, 3, 562, '2021-02-28 19:54:13', '2021-02-28 19:54:13'),
(524, 3, 563, '2021-02-28 19:54:13', '2021-02-28 19:54:13'),
(525, 3, 564, '2021-02-28 19:54:13', '2021-02-28 19:54:13'),
(526, 3, 565, '2021-02-28 19:54:13', '2021-02-28 19:54:13'),
(527, 3, 566, '2021-02-28 19:54:13', '2021-02-28 19:54:13'),
(528, 3, 567, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(529, 3, 568, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(530, 3, 569, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(531, 3, 570, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(532, 3, 571, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(533, 3, 572, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(534, 3, 573, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(535, 3, 574, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(536, 3, 575, '2021-02-28 19:54:14', '2021-02-28 19:54:14'),
(537, 3, 576, '2021-02-28 19:54:15', '2021-02-28 19:54:15'),
(538, 3, 577, '2021-02-28 19:54:15', '2021-02-28 19:54:15'),
(539, 3, 578, '2021-02-28 19:54:15', '2021-02-28 19:54:15'),
(540, 3, 579, '2021-02-28 19:54:15', '2021-02-28 19:54:15'),
(541, 3, 580, '2021-02-28 19:54:15', '2021-02-28 19:54:15'),
(542, 3, 581, '2021-02-28 19:54:15', '2021-02-28 19:54:15'),
(543, 3, 582, '2021-02-28 19:54:16', '2021-02-28 19:54:16'),
(544, 3, 583, '2021-02-28 19:54:16', '2021-02-28 19:54:16'),
(545, 3, 584, '2021-02-28 19:54:16', '2021-02-28 19:54:16'),
(546, 3, 585, '2021-02-28 19:54:17', '2021-02-28 19:54:17'),
(547, 3, 586, '2021-02-28 19:54:17', '2021-02-28 19:54:17'),
(548, 3, 587, '2021-02-28 19:54:17', '2021-02-28 19:54:17'),
(549, 3, 588, '2021-02-28 19:54:17', '2021-02-28 19:54:17'),
(550, 3, 589, '2021-02-28 19:54:17', '2021-02-28 19:54:17'),
(551, 3, 590, '2021-02-28 19:54:17', '2021-02-28 19:54:17'),
(552, 3, 591, '2021-02-28 19:54:17', '2021-02-28 19:54:17'),
(553, 3, 592, '2021-02-28 19:54:17', '2021-02-28 19:54:17'),
(554, 3, 593, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(555, 3, 594, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(556, 3, 595, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(557, 3, 596, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(558, 3, 597, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(559, 3, 598, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(560, 3, 599, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(561, 3, 600, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(562, 3, 601, '2021-02-28 19:54:18', '2021-02-28 19:54:18'),
(563, 3, 602, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(564, 3, 603, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(565, 3, 604, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(566, 3, 605, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(567, 3, 606, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(568, 3, 607, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(569, 3, 608, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(570, 3, 609, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(571, 3, 610, '2021-02-28 19:54:19', '2021-02-28 19:54:19'),
(572, 3, 611, '2021-02-28 19:54:20', '2021-02-28 19:54:20'),
(573, 3, 612, '2021-02-28 19:54:20', '2021-02-28 19:54:20'),
(574, 3, 613, '2021-02-28 19:54:20', '2021-02-28 19:54:20'),
(575, 3, 614, '2021-02-28 19:54:20', '2021-02-28 19:54:20'),
(576, 3, 615, '2021-02-28 19:54:20', '2021-02-28 19:54:20'),
(577, 3, 616, '2021-02-28 19:54:20', '2021-02-28 19:54:20'),
(578, 3, 617, '2021-02-28 19:54:21', '2021-02-28 19:54:21'),
(579, 3, 618, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(580, 3, 619, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(581, 3, 620, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(582, 3, 621, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(583, 3, 622, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(584, 3, 623, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(585, 3, 624, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(586, 3, 625, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(587, 3, 626, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(588, 3, 627, '2021-02-28 19:54:22', '2021-02-28 19:54:22'),
(589, 3, 628, '2021-02-28 19:54:23', '2021-02-28 19:54:23'),
(590, 3, 629, '2021-02-28 19:54:23', '2021-02-28 19:54:23'),
(591, 3, 630, '2021-02-28 19:54:23', '2021-02-28 19:54:23'),
(592, 3, 631, '2021-02-28 19:54:23', '2021-02-28 19:54:23'),
(593, 3, 632, '2021-02-28 19:54:23', '2021-02-28 19:54:23'),
(594, 3, 633, '2021-02-28 19:54:23', '2021-02-28 19:54:23'),
(595, 3, 634, '2021-02-28 19:54:23', '2021-02-28 19:54:23'),
(596, 3, 635, '2021-02-28 19:54:24', '2021-02-28 19:54:24'),
(597, 3, 636, '2021-02-28 19:54:24', '2021-02-28 19:54:24'),
(598, 3, 637, '2021-02-28 19:54:24', '2021-02-28 19:54:24'),
(599, 3, 638, '2021-02-28 19:54:24', '2021-02-28 19:54:24'),
(600, 3, 639, '2021-02-28 19:54:24', '2021-02-28 19:54:24'),
(601, 3, 640, '2021-02-28 19:54:24', '2021-02-28 19:54:24'),
(602, 3, 641, '2021-02-28 19:54:24', '2021-02-28 19:54:24'),
(603, 3, 642, '2021-02-28 19:54:24', '2021-02-28 19:54:24'),
(604, 3, 643, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(605, 3, 644, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(606, 3, 645, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(607, 3, 646, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(608, 3, 647, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(609, 3, 648, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(610, 3, 649, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(611, 3, 650, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(612, 3, 651, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(613, 3, 652, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(614, 3, 653, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(615, 3, 654, '2021-02-28 19:54:25', '2021-02-28 19:54:25'),
(616, 3, 655, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(617, 3, 656, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(618, 3, 657, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(619, 3, 658, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(620, 3, 659, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(621, 3, 660, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(622, 3, 661, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(623, 3, 662, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(624, 3, 663, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(625, 3, 664, '2021-02-28 19:54:26', '2021-02-28 19:54:26'),
(626, 3, 665, '2021-02-28 19:54:27', '2021-02-28 19:54:27'),
(627, 3, 666, '2021-02-28 19:54:27', '2021-02-28 19:54:27'),
(628, 3, 667, '2021-02-28 19:54:27', '2021-02-28 19:54:27'),
(629, 3, 668, '2021-02-28 19:54:27', '2021-02-28 19:54:27'),
(630, 3, 669, '2021-02-28 19:54:27', '2021-02-28 19:54:27'),
(631, 3, 670, '2021-02-28 19:54:27', '2021-02-28 19:54:27'),
(632, 3, 671, '2021-02-28 19:54:27', '2021-02-28 19:54:27'),
(633, 3, 672, '2021-02-28 19:54:27', '2021-02-28 19:54:27'),
(634, 3, 673, '2021-02-28 19:54:28', '2021-02-28 19:54:28'),
(635, 3, 674, '2021-02-28 19:54:28', '2021-02-28 19:54:28'),
(636, 3, 675, '2021-02-28 19:54:28', '2021-02-28 19:54:28'),
(637, 3, 676, '2021-02-28 19:54:28', '2021-02-28 19:54:28'),
(638, 3, 677, '2021-02-28 19:54:28', '2021-02-28 19:54:28'),
(639, 3, 678, '2021-02-28 19:54:28', '2021-02-28 19:54:28'),
(640, 3, 679, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(641, 3, 680, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(642, 3, 681, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(643, 3, 682, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(644, 3, 683, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(645, 3, 684, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(646, 3, 685, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(647, 3, 686, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(648, 3, 687, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(649, 3, 688, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(650, 3, 689, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(651, 3, 690, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(652, 3, 691, '2021-02-28 19:54:29', '2021-02-28 19:54:29'),
(653, 3, 692, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(654, 3, 693, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(655, 3, 694, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(656, 3, 695, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(657, 3, 696, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(658, 3, 697, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(659, 3, 698, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(660, 3, 699, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(661, 3, 700, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(662, 3, 701, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(663, 3, 702, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(664, 3, 703, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(665, 3, 704, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(666, 3, 705, '2021-02-28 19:54:30', '2021-02-28 19:54:30'),
(667, 3, 706, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(668, 3, 707, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(669, 3, 708, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(670, 3, 709, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(671, 3, 710, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(672, 3, 711, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(673, 3, 712, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(674, 3, 713, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(675, 3, 714, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(676, 3, 715, '2021-02-28 19:54:31', '2021-02-28 19:54:31'),
(677, 3, 716, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(678, 3, 717, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(679, 3, 718, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(680, 3, 719, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(681, 3, 720, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(682, 3, 721, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(683, 3, 722, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(684, 3, 723, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(685, 3, 724, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(686, 3, 725, '2021-02-28 19:54:32', '2021-02-28 19:54:32'),
(687, 3, 726, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(688, 3, 727, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(689, 3, 728, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(690, 3, 729, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(691, 3, 730, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(692, 3, 731, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(693, 3, 732, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(694, 3, 733, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(695, 3, 734, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(696, 3, 735, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(697, 3, 736, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(698, 3, 737, '2021-02-28 19:54:33', '2021-02-28 19:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_fee` double(8,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `shipping_fee`, `created_at`, `updated_at`) VALUES
(1, 'cairo', 45.00, NULL, NULL),
(2, 'alexandria', 80.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(8,2) UNSIGNED NOT NULL,
  `type` enum('percent','fixed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'percent',
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `value`, `type`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'TWINITY', 20.00, 'fixed', '2021-02-17', NULL, NULL),
(2, 'EXPIRED', 20.00, 'fixed', '2021-02-12', NULL, NULL),
(3, 'TEN', 10.00, 'percent', '2021-02-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_users`
--

CREATE TABLE `coupon_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expires_at` date NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main` tinyint(1) NOT NULL DEFAULT 0,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'home', 'home', NULL, NULL),
(2, 'bestseller', 'bestseller', NULL, NULL),
(3, 'deals', 'deals', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `key_product`
--

CREATE TABLE `key_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `key_product`
--

INSERT INTO `key_product` (`id`, `key_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-02-28 19:55:53', '2021-02-28 19:55:53'),
(2, 1, 2, '2021-02-28 19:55:54', '2021-02-28 19:55:54'),
(3, 1, 3, '2021-02-28 19:55:54', '2021-02-28 19:55:54'),
(4, 1, 4, '2021-02-28 19:55:54', '2021-02-28 19:55:54'),
(5, 1, 5, '2021-02-28 19:55:54', '2021-02-28 19:55:54'),
(6, 1, 6, '2021-02-28 19:55:55', '2021-02-28 19:55:55'),
(7, 1, 7, '2021-02-28 19:55:55', '2021-02-28 19:55:55'),
(8, 1, 8, '2021-02-28 19:55:55', '2021-02-28 19:55:55'),
(9, 1, 9, '2021-02-28 19:55:55', '2021-02-28 19:55:55'),
(10, 1, 10, '2021-02-28 19:55:55', '2021-02-28 19:55:55'),
(11, 1, 11, '2021-02-28 19:55:56', '2021-02-28 19:55:56'),
(12, 1, 12, '2021-02-28 19:55:56', '2021-02-28 19:55:56'),
(13, 2, 525, '2021-02-28 19:55:56', '2021-02-28 19:55:56'),
(14, 2, 437, '2021-02-28 19:55:56', '2021-02-28 19:55:56'),
(15, 2, 86, '2021-02-28 19:55:56', '2021-02-28 19:55:56'),
(16, 2, 399, '2021-02-28 19:55:56', '2021-02-28 19:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, NULL),
(2, 'Arabic', 'ar', NULL, NULL),
(3, 'Frensh', 'fr', NULL, NULL),
(4, 'Germany', 'gr', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_02_13_222037_create_categories_table', 1),
(10, '2021_02_13_230204_create_ages_table', 1),
(11, '2021_02_13_230650_create_authors_table', 1),
(12, '2021_02_13_231006_create_languages_table', 1),
(13, '2021_02_13_232121_create_coupons_table', 1),
(14, '2021_02_13_232659_create_coupon_users_table', 1),
(15, '2021_02_13_233007_create_cities_table', 1),
(16, '2021_02_13_233531_create_addresses_table', 1),
(17, '2021_02_14_003247_create_products_table', 1),
(18, '2021_02_14_175504_create_product_fails_table', 1),
(19, '2021_02_14_175612_create_prices_table', 1),
(20, '2021_02_15_080926_create_keys_table', 1),
(21, '2021_02_15_083159_create_key_product_table', 1),
(22, '2021_02_15_192306_create_cart_table', 1),
(23, '2021_02_15_231738_create_category_product_table', 1),
(24, '2021_02_15_232054_create_cart_product_table', 1),
(25, '2021_02_16_053821_create_orders_table', 1),
(26, '2021_02_16_053844_create_order_product_table', 1),
(27, '2021_02_16_071135_create_stock_table', 1),
(28, '2021_02_20_003138_create_sliders_table', 1),
(29, '2021_02_20_112403_create_deals_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('22e7d571e068d2abf6ac7b501844d8b8fa1fb2e7c6a8845d1407cdc2bfe90619236ecfb9e750ee35', 1, 1, NULL, '[\"*\"]', 0, '2021-02-28 22:24:53', '2021-02-28 22:24:53', '2022-03-01 00:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Password Grant Client', 'g4gbQhrlY99Ynx9Fuh2XcxSq4bR2AaG56qLIfqAY', 'users', 'http://localhost', 0, 1, 0, '2021-02-28 19:49:28', '2021-02-28 19:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('58368ff9f54fe9f6569e0db5d9e440b159e8a9a96cde8119dab5495c9a12399b733714eb056f2c98', '22e7d571e068d2abf6ac7b501844d8b8fa1fb2e7c6a8845d1407cdc2bfe90619236ecfb9e750ee35', 0, '2022-03-01 00:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accept_order_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double(8,2) UNSIGNED NOT NULL,
  `shipping` double(8,2) UNSIGNED NOT NULL,
  `subtotal` double(8,2) UNSIGNED NOT NULL,
  `status` enum('pending','shipping','shipped') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'shipping',
  `discount_value` double(8,2) UNSIGNED DEFAULT NULL,
  `discount_percent` int(10) UNSIGNED DEFAULT NULL,
  `gateway` enum('card','cod') COLLATE utf8_unicode_ci NOT NULL,
  `error` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `old_price` double(8,2) UNSIGNED DEFAULT NULL,
  `qty` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `old_price` double(8,2) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `price`, `old_price`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 227.50, NULL, 2, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(2, 175.00, NULL, 3, '2021-02-28 19:54:33', '2021-02-28 19:54:33'),
(3, 175.00, NULL, 4, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(4, 175.00, NULL, 5, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(5, 227.50, NULL, 6, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(6, 100.00, NULL, 7, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(7, 100.00, NULL, 8, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(8, 100.00, NULL, 9, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(9, 100.00, NULL, 10, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(10, 100.00, NULL, 11, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(11, 100.00, NULL, 12, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(12, 100.00, NULL, 13, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(13, 100.00, NULL, 14, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(14, 100.00, NULL, 15, '2021-02-28 19:54:34', '2021-02-28 19:54:34'),
(15, 100.00, NULL, 16, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(16, 100.00, NULL, 17, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(17, 100.00, NULL, 18, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(18, 100.00, NULL, 19, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(19, 192.50, NULL, 20, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(20, 227.50, NULL, 21, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(21, 425.00, NULL, 22, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(22, 325.00, NULL, 23, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(23, 275.00, NULL, 24, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(24, 275.00, NULL, 25, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(25, 250.00, NULL, 26, '2021-02-28 19:54:35', '2021-02-28 19:54:35'),
(26, 200.00, NULL, 27, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(27, 250.00, NULL, 28, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(28, 250.00, NULL, 29, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(29, 250.00, NULL, 30, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(30, 375.00, NULL, 31, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(31, 150.00, NULL, 32, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(32, 150.00, NULL, 33, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(33, 150.00, NULL, 34, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(34, 150.00, NULL, 35, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(35, 150.00, NULL, 36, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(36, 150.00, NULL, 37, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(37, 150.00, NULL, 38, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(38, 150.00, NULL, 39, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(39, 150.00, NULL, 40, '2021-02-28 19:54:36', '2021-02-28 19:54:36'),
(40, 1500.00, NULL, 41, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(41, 150.00, NULL, 42, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(42, 150.00, NULL, 43, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(43, 150.00, NULL, 44, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(44, 150.00, NULL, 45, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(45, 150.00, NULL, 46, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(46, 150.00, NULL, 47, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(47, 150.00, NULL, 48, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(48, 150.00, NULL, 49, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(49, 105.00, NULL, 50, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(50, 1050.00, NULL, 51, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(51, 240.00, NULL, 52, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(52, 500.00, NULL, 53, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(53, 500.00, NULL, 54, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(54, 325.00, NULL, 55, '2021-02-28 19:54:37', '2021-02-28 19:54:37'),
(55, 375.00, NULL, 56, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(56, 250.00, NULL, 57, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(57, 425.00, NULL, 58, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(58, 400.00, NULL, 59, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(59, 540.00, NULL, 60, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(60, 500.00, NULL, 61, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(61, 375.00, NULL, 62, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(62, 680.00, NULL, 63, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(63, 375.00, NULL, 64, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(64, 350.00, NULL, 65, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(65, 500.00, NULL, 66, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(66, 475.00, NULL, 67, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(67, 375.00, NULL, 68, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(68, 475.00, NULL, 69, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(69, 375.00, NULL, 70, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(70, 380.00, NULL, 71, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(71, 340.00, NULL, 72, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(72, 225.00, NULL, 73, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(73, 200.00, NULL, 74, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(74, 225.00, NULL, 75, '2021-02-28 19:54:38', '2021-02-28 19:54:38'),
(75, 200.00, NULL, 76, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(76, 120.00, NULL, 77, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(77, 175.00, NULL, 78, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(78, 225.00, NULL, 79, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(79, 225.00, NULL, 80, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(80, 225.00, NULL, 81, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(81, 175.00, NULL, 82, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(82, 200.00, NULL, 83, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(83, 200.00, NULL, 84, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(84, 200.00, NULL, 85, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(85, 175.00, NULL, 86, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(86, 250.00, NULL, 87, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(87, 225.00, NULL, 88, '2021-02-28 19:54:39', '2021-02-28 19:54:39'),
(88, 225.00, NULL, 89, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(89, 225.00, NULL, 90, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(90, 200.00, NULL, 91, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(91, 250.00, NULL, 92, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(92, 225.00, NULL, 93, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(93, 225.00, NULL, 94, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(94, 200.00, NULL, 95, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(95, 200.00, NULL, 96, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(96, 225.00, NULL, 97, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(97, 225.00, NULL, 98, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(98, 225.00, NULL, 99, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(99, 225.00, NULL, 100, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(100, 200.00, NULL, 101, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(101, 200.00, NULL, 102, '2021-02-28 19:54:40', '2021-02-28 19:54:40'),
(102, 200.00, NULL, 103, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(103, 250.00, NULL, 104, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(104, 200.00, NULL, 105, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(105, 275.00, NULL, 106, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(106, 225.00, NULL, 107, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(107, 225.00, NULL, 108, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(108, 225.00, NULL, 109, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(109, 225.00, NULL, 110, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(110, 200.00, NULL, 111, '2021-02-28 19:54:41', '2021-02-28 19:54:41'),
(111, 175.00, NULL, 112, '2021-02-28 19:54:42', '2021-02-28 19:54:42'),
(112, 200.00, NULL, 113, '2021-02-28 19:54:42', '2021-02-28 19:54:42'),
(113, 225.00, NULL, 114, '2021-02-28 19:54:42', '2021-02-28 19:54:42'),
(114, 200.00, NULL, 115, '2021-02-28 19:54:42', '2021-02-28 19:54:42'),
(115, 200.00, NULL, 116, '2021-02-28 19:54:42', '2021-02-28 19:54:42'),
(116, 500.00, NULL, 117, '2021-02-28 19:54:42', '2021-02-28 19:54:42'),
(117, 325.00, NULL, 118, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(118, 520.00, NULL, 119, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(119, 325.00, NULL, 120, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(120, 425.00, NULL, 121, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(121, 225.00, NULL, 122, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(122, 225.00, NULL, 123, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(123, 200.00, NULL, 124, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(124, 200.00, NULL, 125, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(125, 200.00, NULL, 126, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(126, 225.00, NULL, 127, '2021-02-28 19:54:43', '2021-02-28 19:54:43'),
(127, 225.00, NULL, 128, '2021-02-28 19:54:44', '2021-02-28 19:54:44'),
(128, 200.00, NULL, 129, '2021-02-28 19:54:44', '2021-02-28 19:54:44'),
(129, 225.00, NULL, 130, '2021-02-28 19:54:44', '2021-02-28 19:54:44'),
(130, 200.00, NULL, 131, '2021-02-28 19:54:44', '2021-02-28 19:54:44'),
(131, 175.00, NULL, 132, '2021-02-28 19:54:44', '2021-02-28 19:54:44'),
(132, 175.00, NULL, 133, '2021-02-28 19:54:44', '2021-02-28 19:54:44'),
(133, 225.00, NULL, 134, '2021-02-28 19:54:44', '2021-02-28 19:54:44'),
(134, 175.00, NULL, 135, '2021-02-28 19:54:44', '2021-02-28 19:54:44'),
(135, 225.00, NULL, 136, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(136, 200.00, NULL, 137, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(137, 200.00, NULL, 138, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(138, 200.00, NULL, 139, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(139, 200.00, NULL, 140, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(140, 250.00, NULL, 141, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(141, 200.00, NULL, 142, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(142, 225.00, NULL, 143, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(143, 300.00, NULL, 144, '2021-02-28 19:54:45', '2021-02-28 19:54:45'),
(144, 200.00, NULL, 145, '2021-02-28 19:54:46', '2021-02-28 19:54:46'),
(145, 350.00, NULL, 146, '2021-02-28 19:54:46', '2021-02-28 19:54:46'),
(146, 100.00, NULL, 147, '2021-02-28 19:54:46', '2021-02-28 19:54:46'),
(147, 225.00, NULL, 148, '2021-02-28 19:54:46', '2021-02-28 19:54:46'),
(148, 225.00, NULL, 149, '2021-02-28 19:54:46', '2021-02-28 19:54:46'),
(149, 200.00, NULL, 150, '2021-02-28 19:54:46', '2021-02-28 19:54:46'),
(150, 225.00, NULL, 151, '2021-02-28 19:54:46', '2021-02-28 19:54:46'),
(151, 200.00, NULL, 152, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(152, 200.00, NULL, 153, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(153, 225.00, NULL, 154, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(154, 270.00, NULL, 155, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(155, 200.00, NULL, 156, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(156, 200.00, NULL, 157, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(157, 200.00, NULL, 158, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(158, 200.00, NULL, 159, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(159, 200.00, NULL, 160, '2021-02-28 19:54:47', '2021-02-28 19:54:47'),
(160, 225.00, NULL, 161, '2021-02-28 19:54:48', '2021-02-28 19:54:48'),
(161, 225.00, NULL, 162, '2021-02-28 19:54:48', '2021-02-28 19:54:48'),
(162, 200.00, NULL, 163, '2021-02-28 19:54:48', '2021-02-28 19:54:48'),
(163, 200.00, NULL, 164, '2021-02-28 19:54:48', '2021-02-28 19:54:48'),
(164, 200.00, NULL, 165, '2021-02-28 19:54:49', '2021-02-28 19:54:49'),
(165, 375.00, NULL, 166, '2021-02-28 19:54:49', '2021-02-28 19:54:49'),
(166, 200.00, NULL, 167, '2021-02-28 19:54:49', '2021-02-28 19:54:49'),
(167, 250.00, NULL, 168, '2021-02-28 19:54:49', '2021-02-28 19:54:49'),
(168, 225.00, NULL, 169, '2021-02-28 19:54:50', '2021-02-28 19:54:50'),
(169, 200.00, NULL, 170, '2021-02-28 19:54:50', '2021-02-28 19:54:50'),
(170, 200.00, NULL, 171, '2021-02-28 19:54:50', '2021-02-28 19:54:50'),
(171, 225.00, NULL, 172, '2021-02-28 19:54:50', '2021-02-28 19:54:50'),
(172, 425.00, NULL, 173, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(173, 375.00, NULL, 174, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(174, 375.00, NULL, 175, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(175, 250.00, NULL, 176, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(176, 225.00, NULL, 177, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(177, 500.00, NULL, 178, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(178, 200.00, NULL, 179, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(179, 225.00, NULL, 180, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(180, 225.00, NULL, 181, '2021-02-28 19:54:51', '2021-02-28 19:54:51'),
(181, 200.00, NULL, 182, '2021-02-28 19:54:52', '2021-02-28 19:54:52'),
(182, 200.00, NULL, 183, '2021-02-28 19:54:52', '2021-02-28 19:54:52'),
(183, 200.00, NULL, 184, '2021-02-28 19:54:52', '2021-02-28 19:54:52'),
(184, 200.00, NULL, 185, '2021-02-28 19:54:52', '2021-02-28 19:54:52'),
(185, 200.00, NULL, 186, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(186, 200.00, NULL, 187, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(187, 200.00, NULL, 188, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(188, 200.00, NULL, 189, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(189, 325.00, NULL, 190, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(190, 200.00, NULL, 191, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(191, 200.00, NULL, 192, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(192, 200.00, NULL, 193, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(193, 200.00, NULL, 194, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(194, 375.00, NULL, 195, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(195, 325.00, NULL, 196, '2021-02-28 19:54:53', '2021-02-28 19:54:53'),
(196, 200.00, NULL, 197, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(197, 225.00, NULL, 198, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(198, 200.00, NULL, 199, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(199, 225.00, NULL, 200, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(200, 250.00, NULL, 201, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(201, 200.00, NULL, 202, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(202, 200.00, NULL, 203, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(203, 250.00, NULL, 204, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(204, 225.00, NULL, 205, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(205, 200.00, NULL, 206, '2021-02-28 19:54:54', '2021-02-28 19:54:54'),
(206, 250.00, NULL, 207, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(207, 225.00, NULL, 208, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(208, 225.00, NULL, 209, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(209, 225.00, NULL, 210, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(210, 225.00, NULL, 211, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(211, 175.00, NULL, 212, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(212, 200.00, NULL, 213, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(213, 200.00, NULL, 214, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(214, 250.00, NULL, 215, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(215, 225.00, NULL, 216, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(216, 200.00, NULL, 217, '2021-02-28 19:54:55', '2021-02-28 19:54:55'),
(217, 200.00, NULL, 218, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(218, 200.00, NULL, 219, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(219, 225.00, NULL, 220, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(220, 200.00, NULL, 221, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(221, 225.00, NULL, 222, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(222, 200.00, NULL, 223, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(223, 175.00, NULL, 224, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(224, 250.00, NULL, 225, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(225, 275.00, NULL, 226, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(226, 225.00, NULL, 227, '2021-02-28 19:54:56', '2021-02-28 19:54:56'),
(227, 225.00, NULL, 228, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(228, 150.00, NULL, 229, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(229, 225.00, NULL, 230, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(230, 200.00, NULL, 231, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(231, 200.00, NULL, 232, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(232, 200.00, NULL, 233, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(233, 200.00, NULL, 234, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(234, 200.00, NULL, 235, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(235, 200.00, NULL, 236, '2021-02-28 19:54:57', '2021-02-28 19:54:57'),
(236, 200.00, NULL, 237, '2021-02-28 19:54:58', '2021-02-28 19:54:58'),
(237, 125.00, NULL, 238, '2021-02-28 19:54:58', '2021-02-28 19:54:58'),
(238, 200.00, NULL, 239, '2021-02-28 19:54:58', '2021-02-28 19:54:58'),
(239, 275.00, NULL, 240, '2021-02-28 19:54:58', '2021-02-28 19:54:58'),
(240, 100.00, NULL, 241, '2021-02-28 19:54:58', '2021-02-28 19:54:58'),
(241, 325.00, NULL, 242, '2021-02-28 19:54:58', '2021-02-28 19:54:58'),
(242, 375.00, NULL, 243, '2021-02-28 19:54:59', '2021-02-28 19:54:59'),
(243, 325.00, NULL, 244, '2021-02-28 19:54:59', '2021-02-28 19:54:59'),
(244, 250.00, NULL, 245, '2021-02-28 19:54:59', '2021-02-28 19:54:59'),
(245, 100.00, NULL, 246, '2021-02-28 19:54:59', '2021-02-28 19:54:59'),
(246, 180.00, NULL, 247, '2021-02-28 19:54:59', '2021-02-28 19:54:59'),
(247, 325.00, NULL, 248, '2021-02-28 19:54:59', '2021-02-28 19:54:59'),
(248, 275.00, NULL, 249, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(249, 225.00, NULL, 250, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(250, 175.00, NULL, 251, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(251, 175.00, NULL, 252, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(252, 175.00, NULL, 253, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(253, 225.00, NULL, 254, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(254, 225.00, NULL, 255, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(255, 225.00, NULL, 256, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(256, 225.00, NULL, 257, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(257, 225.00, NULL, 258, '2021-02-28 19:55:00', '2021-02-28 19:55:00'),
(258, 175.00, NULL, 259, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(259, 175.00, NULL, 260, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(260, 250.00, NULL, 261, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(261, 140.00, NULL, 262, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(262, 225.00, NULL, 263, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(263, 175.00, NULL, 264, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(264, 225.00, NULL, 265, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(265, 200.00, NULL, 266, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(266, 225.00, NULL, 267, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(267, 200.00, NULL, 268, '2021-02-28 19:55:01', '2021-02-28 19:55:01'),
(268, 225.00, NULL, 269, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(269, 175.00, NULL, 270, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(270, 240.00, NULL, 271, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(271, 200.00, NULL, 272, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(272, 200.00, NULL, 273, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(273, 175.00, NULL, 274, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(274, 225.00, NULL, 275, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(275, 225.00, NULL, 276, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(276, 200.00, NULL, 277, '2021-02-28 19:55:02', '2021-02-28 19:55:02'),
(277, 200.00, NULL, 278, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(278, 200.00, NULL, 279, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(279, 200.00, NULL, 280, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(280, 100.00, NULL, 281, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(281, 175.00, NULL, 282, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(282, 175.00, NULL, 283, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(283, 175.00, NULL, 284, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(284, 175.00, NULL, 285, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(285, 225.00, NULL, 286, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(286, 225.00, NULL, 287, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(287, 225.00, NULL, 288, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(288, 200.00, NULL, 289, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(289, 225.00, NULL, 290, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(290, 200.00, NULL, 291, '2021-02-28 19:55:03', '2021-02-28 19:55:03'),
(291, 175.00, NULL, 292, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(292, 175.00, NULL, 293, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(293, 200.00, NULL, 294, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(294, 200.00, NULL, 295, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(295, 225.00, NULL, 296, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(296, 200.00, NULL, 297, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(297, 225.00, NULL, 298, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(298, 225.00, NULL, 299, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(299, 200.00, NULL, 300, '2021-02-28 19:55:04', '2021-02-28 19:55:04'),
(300, 200.00, NULL, 301, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(301, 225.00, NULL, 302, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(302, 200.00, NULL, 303, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(303, 250.00, NULL, 304, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(304, 175.00, NULL, 305, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(305, 200.00, NULL, 306, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(306, 200.00, NULL, 307, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(307, 225.00, NULL, 308, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(308, 200.00, NULL, 309, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(309, 100.00, NULL, 310, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(310, 250.00, NULL, 311, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(311, 200.00, NULL, 312, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(312, 200.00, NULL, 313, '2021-02-28 19:55:05', '2021-02-28 19:55:05'),
(313, 250.00, NULL, 314, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(314, 200.00, NULL, 315, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(315, 225.00, NULL, 316, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(316, 225.00, NULL, 317, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(317, 225.00, NULL, 318, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(318, 100.00, NULL, 319, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(319, 300.00, NULL, 320, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(320, 200.00, NULL, 321, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(321, 200.00, NULL, 322, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(322, 225.00, NULL, 323, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(323, 225.00, NULL, 324, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(324, 225.00, NULL, 325, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(325, 250.00, NULL, 326, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(326, 250.00, NULL, 327, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(327, 200.00, NULL, 328, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(328, 200.00, NULL, 329, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(329, 225.00, NULL, 330, '2021-02-28 19:55:06', '2021-02-28 19:55:06'),
(330, 200.00, NULL, 331, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(331, 200.00, NULL, 332, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(332, 225.00, NULL, 333, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(333, 250.00, NULL, 334, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(334, 200.00, NULL, 335, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(335, 200.00, NULL, 336, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(336, 200.00, NULL, 337, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(337, 200.00, NULL, 338, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(338, 200.00, NULL, 339, '2021-02-28 19:55:07', '2021-02-28 19:55:07'),
(339, 200.00, NULL, 340, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(340, 200.00, NULL, 341, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(341, 200.00, NULL, 342, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(342, 200.00, NULL, 343, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(343, 200.00, NULL, 344, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(344, 200.00, NULL, 345, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(345, 225.00, NULL, 346, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(346, 225.00, NULL, 347, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(347, 225.00, NULL, 348, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(348, 200.00, NULL, 349, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(349, 225.00, NULL, 350, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(350, 200.00, NULL, 351, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(351, 200.00, NULL, 352, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(352, 200.00, NULL, 353, '2021-02-28 19:55:08', '2021-02-28 19:55:08'),
(353, 225.00, NULL, 354, '2021-02-28 19:55:09', '2021-02-28 19:55:09'),
(354, 250.00, NULL, 355, '2021-02-28 19:55:09', '2021-02-28 19:55:09'),
(355, 200.00, NULL, 356, '2021-02-28 19:55:09', '2021-02-28 19:55:09'),
(356, 200.00, NULL, 357, '2021-02-28 19:55:09', '2021-02-28 19:55:09'),
(357, 200.00, NULL, 358, '2021-02-28 19:55:09', '2021-02-28 19:55:09'),
(358, 200.00, NULL, 359, '2021-02-28 19:55:09', '2021-02-28 19:55:09'),
(359, 200.00, NULL, 360, '2021-02-28 19:55:09', '2021-02-28 19:55:09'),
(360, 200.00, NULL, 361, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(361, 340.00, NULL, 362, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(362, 250.00, NULL, 363, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(363, 275.00, NULL, 364, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(364, 250.00, NULL, 365, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(365, 175.00, NULL, 366, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(366, 175.00, NULL, 367, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(367, 250.00, NULL, 368, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(368, 140.00, NULL, 369, '2021-02-28 19:55:10', '2021-02-28 19:55:10'),
(369, 70.00, NULL, 370, '2021-02-28 19:55:11', '2021-02-28 19:55:11'),
(370, 200.00, NULL, 371, '2021-02-28 19:55:11', '2021-02-28 19:55:11'),
(371, 275.00, NULL, 372, '2021-02-28 19:55:11', '2021-02-28 19:55:11'),
(372, 275.00, NULL, 373, '2021-02-28 19:55:11', '2021-02-28 19:55:11'),
(373, 300.00, NULL, 374, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(374, 725.00, NULL, 375, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(375, 725.00, NULL, 376, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(376, 325.00, NULL, 1, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(377, 250.00, NULL, 377, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(378, 200.00, NULL, 378, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(379, 200.00, NULL, 379, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(380, 125.00, NULL, 380, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(381, 100.00, NULL, 381, '2021-02-28 19:55:12', '2021-02-28 19:55:12'),
(382, 300.00, NULL, 382, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(383, 300.00, NULL, 383, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(384, 250.00, NULL, 384, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(385, 500.00, NULL, 385, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(386, 175.00, NULL, 386, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(387, 175.00, NULL, 387, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(388, 175.00, NULL, 388, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(389, 325.00, NULL, 389, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(390, 250.00, NULL, 390, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(391, 175.00, NULL, 391, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(392, 250.00, NULL, 392, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(393, 120.00, NULL, 393, '2021-02-28 19:55:13', '2021-02-28 19:55:13'),
(394, 100.00, NULL, 394, '2021-02-28 19:55:14', '2021-02-28 19:55:14'),
(395, 250.00, NULL, 395, '2021-02-28 19:55:14', '2021-02-28 19:55:14'),
(396, 325.00, NULL, 396, '2021-02-28 19:55:14', '2021-02-28 19:55:14'),
(397, 425.00, NULL, 397, '2021-02-28 19:55:14', '2021-02-28 19:55:14'),
(398, 500.00, NULL, 398, '2021-02-28 19:55:14', '2021-02-28 19:55:14'),
(399, 500.00, NULL, 399, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(400, 100.00, NULL, 400, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(401, 100.00, NULL, 401, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(402, 100.00, NULL, 402, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(403, 100.00, NULL, 403, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(404, 200.00, NULL, 404, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(405, 200.00, NULL, 405, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(406, 200.00, NULL, 406, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(407, 100.00, NULL, 407, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(408, 200.00, NULL, 408, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(409, 500.00, NULL, 409, '2021-02-28 19:55:15', '2021-02-28 19:55:15'),
(410, 325.00, NULL, 410, '2021-02-28 19:55:16', '2021-02-28 19:55:16'),
(411, 325.00, NULL, 411, '2021-02-28 19:55:16', '2021-02-28 19:55:16'),
(412, 425.00, NULL, 412, '2021-02-28 19:55:16', '2021-02-28 19:55:16'),
(413, 600.00, NULL, 413, '2021-02-28 19:55:16', '2021-02-28 19:55:16'),
(414, 325.00, NULL, 414, '2021-02-28 19:55:17', '2021-02-28 19:55:17'),
(415, 750.00, NULL, 415, '2021-02-28 19:55:17', '2021-02-28 19:55:17'),
(416, 625.00, NULL, 416, '2021-02-28 19:55:17', '2021-02-28 19:55:17'),
(417, 550.00, NULL, 417, '2021-02-28 19:55:17', '2021-02-28 19:55:17'),
(418, 200.00, NULL, 418, '2021-02-28 19:55:17', '2021-02-28 19:55:17'),
(419, 425.00, NULL, 419, '2021-02-28 19:55:17', '2021-02-28 19:55:17'),
(420, 250.00, NULL, 420, '2021-02-28 19:55:17', '2021-02-28 19:55:17'),
(421, 325.00, NULL, 421, '2021-02-28 19:55:18', '2021-02-28 19:55:18'),
(422, 200.00, NULL, 422, '2021-02-28 19:55:18', '2021-02-28 19:55:18'),
(423, 340.00, NULL, 423, '2021-02-28 19:55:18', '2021-02-28 19:55:18'),
(424, 325.00, NULL, 424, '2021-02-28 19:55:18', '2021-02-28 19:55:18'),
(425, 475.00, NULL, 425, '2021-02-28 19:55:18', '2021-02-28 19:55:18'),
(426, 250.00, NULL, 426, '2021-02-28 19:55:19', '2021-02-28 19:55:19'),
(427, 375.00, NULL, 427, '2021-02-28 19:55:19', '2021-02-28 19:55:19'),
(428, 425.00, NULL, 428, '2021-02-28 19:55:19', '2021-02-28 19:55:19'),
(429, 375.00, NULL, 429, '2021-02-28 19:55:19', '2021-02-28 19:55:19'),
(430, 350.00, NULL, 430, '2021-02-28 19:55:19', '2021-02-28 19:55:19'),
(431, 500.00, NULL, 431, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(432, 325.00, NULL, 432, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(433, 500.00, NULL, 433, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(434, 625.00, NULL, 434, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(435, 475.00, NULL, 435, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(436, 425.00, NULL, 436, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(437, 250.00, NULL, 437, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(438, 625.00, NULL, 438, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(439, 200.00, NULL, 439, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(440, 450.00, NULL, 440, '2021-02-28 19:55:20', '2021-02-28 19:55:20'),
(441, 250.00, NULL, 441, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(442, 475.00, NULL, 442, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(443, 625.00, NULL, 443, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(444, 325.00, NULL, 444, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(445, 375.00, NULL, 445, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(446, 425.00, NULL, 446, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(447, 650.00, NULL, 447, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(448, 250.00, NULL, 448, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(449, 750.00, NULL, 449, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(450, 625.00, NULL, 450, '2021-02-28 19:55:21', '2021-02-28 19:55:21'),
(451, 375.00, NULL, 451, '2021-02-28 19:55:22', '2021-02-28 19:55:22'),
(452, 375.00, NULL, 452, '2021-02-28 19:55:22', '2021-02-28 19:55:22'),
(453, 500.00, NULL, 453, '2021-02-28 19:55:22', '2021-02-28 19:55:22'),
(454, 500.00, NULL, 454, '2021-02-28 19:55:22', '2021-02-28 19:55:22'),
(455, 200.00, NULL, 455, '2021-02-28 19:55:22', '2021-02-28 19:55:22'),
(456, 200.00, NULL, 456, '2021-02-28 19:55:22', '2021-02-28 19:55:22'),
(457, 150.00, NULL, 457, '2021-02-28 19:55:22', '2021-02-28 19:55:22'),
(458, 260.00, NULL, 458, '2021-02-28 19:55:23', '2021-02-28 19:55:23'),
(459, 625.00, NULL, 459, '2021-02-28 19:55:23', '2021-02-28 19:55:23'),
(460, 290.00, NULL, 460, '2021-02-28 19:55:23', '2021-02-28 19:55:23'),
(461, 325.00, NULL, 461, '2021-02-28 19:55:23', '2021-02-28 19:55:23'),
(462, 500.00, NULL, 462, '2021-02-28 19:55:23', '2021-02-28 19:55:23'),
(463, 500.00, NULL, 463, '2021-02-28 19:55:23', '2021-02-28 19:55:23'),
(464, 325.00, NULL, 464, '2021-02-28 19:55:23', '2021-02-28 19:55:23'),
(465, 750.00, NULL, 465, '2021-02-28 19:55:24', '2021-02-28 19:55:24'),
(466, 225.00, NULL, 466, '2021-02-28 19:55:24', '2021-02-28 19:55:24'),
(467, 225.00, NULL, 467, '2021-02-28 19:55:24', '2021-02-28 19:55:24'),
(468, 225.00, NULL, 468, '2021-02-28 19:55:25', '2021-02-28 19:55:25'),
(469, 225.00, NULL, 469, '2021-02-28 19:55:25', '2021-02-28 19:55:25'),
(470, 210.00, NULL, 470, '2021-02-28 19:55:25', '2021-02-28 19:55:25'),
(471, 175.00, NULL, 471, '2021-02-28 19:55:25', '2021-02-28 19:55:25'),
(472, 200.00, NULL, 472, '2021-02-28 19:55:25', '2021-02-28 19:55:25'),
(473, 200.00, NULL, 473, '2021-02-28 19:55:25', '2021-02-28 19:55:25'),
(474, 200.00, NULL, 474, '2021-02-28 19:55:26', '2021-02-28 19:55:26'),
(475, 200.00, NULL, 475, '2021-02-28 19:55:26', '2021-02-28 19:55:26'),
(476, 150.00, NULL, 476, '2021-02-28 19:55:26', '2021-02-28 19:55:26'),
(477, 175.00, NULL, 477, '2021-02-28 19:55:26', '2021-02-28 19:55:26'),
(478, 200.00, NULL, 478, '2021-02-28 19:55:27', '2021-02-28 19:55:27'),
(479, 250.00, NULL, 479, '2021-02-28 19:55:27', '2021-02-28 19:55:27'),
(480, 250.00, NULL, 480, '2021-02-28 19:55:27', '2021-02-28 19:55:27'),
(481, 375.00, NULL, 481, '2021-02-28 19:55:27', '2021-02-28 19:55:27'),
(482, 225.00, NULL, 482, '2021-02-28 19:55:27', '2021-02-28 19:55:27'),
(483, 250.00, NULL, 483, '2021-02-28 19:55:28', '2021-02-28 19:55:28'),
(484, 250.00, NULL, 484, '2021-02-28 19:55:28', '2021-02-28 19:55:28'),
(485, 65.00, NULL, 485, '2021-02-28 19:55:28', '2021-02-28 19:55:28'),
(486, 65.00, NULL, 486, '2021-02-28 19:55:28', '2021-02-28 19:55:28'),
(487, 75.00, NULL, 487, '2021-02-28 19:55:28', '2021-02-28 19:55:28'),
(488, 175.00, NULL, 488, '2021-02-28 19:55:28', '2021-02-28 19:55:28'),
(489, 175.00, NULL, 489, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(490, 175.00, NULL, 490, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(491, 175.00, NULL, 491, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(492, 175.00, NULL, 492, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(493, 175.00, NULL, 493, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(494, 175.00, NULL, 494, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(495, 175.00, NULL, 495, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(496, 175.00, NULL, 496, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(497, 325.00, NULL, 497, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(498, 325.00, NULL, 498, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(499, 325.00, NULL, 499, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(500, 325.00, NULL, 500, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(501, 325.00, NULL, 501, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(502, 325.00, NULL, 502, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(503, 325.00, NULL, 503, '2021-02-28 19:55:29', '2021-02-28 19:55:29'),
(504, 325.00, NULL, 504, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(505, 200.00, NULL, 505, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(506, 200.00, NULL, 506, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(507, 560.00, NULL, 507, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(508, 220.00, NULL, 508, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(509, 220.00, NULL, 509, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(510, 220.00, NULL, 510, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(511, 240.00, NULL, 511, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(512, 240.00, NULL, 512, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(513, 240.00, NULL, 513, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(514, 150.00, NULL, 514, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(515, 200.00, NULL, 515, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(516, 130.00, NULL, 516, '2021-02-28 19:55:30', '2021-02-28 19:55:30'),
(517, 130.00, NULL, 517, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(518, 210.00, NULL, 518, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(519, 210.00, NULL, 519, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(520, 160.00, NULL, 520, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(521, 160.00, NULL, 521, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(522, 160.00, NULL, 522, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(523, 200.00, NULL, 523, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(524, 200.00, NULL, 524, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(525, 200.00, NULL, 525, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(526, 260.00, NULL, 526, '2021-02-28 19:55:31', '2021-02-28 19:55:31'),
(527, 260.00, NULL, 527, '2021-02-28 19:55:32', '2021-02-28 19:55:32'),
(528, 125.00, NULL, 528, '2021-02-28 19:55:32', '2021-02-28 19:55:32'),
(529, 175.00, NULL, 529, '2021-02-28 19:55:32', '2021-02-28 19:55:32'),
(530, 200.00, NULL, 530, '2021-02-28 19:55:32', '2021-02-28 19:55:32'),
(531, 200.00, NULL, 531, '2021-02-28 19:55:32', '2021-02-28 19:55:32'),
(532, 200.00, NULL, 532, '2021-02-28 19:55:32', '2021-02-28 19:55:32'),
(533, 225.00, NULL, 533, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(534, 175.00, NULL, 534, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(535, 175.00, NULL, 535, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(536, 225.00, NULL, 536, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(537, 225.00, NULL, 537, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(538, 225.00, NULL, 538, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(539, 210.00, NULL, 539, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(540, 210.00, NULL, 540, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(541, 200.00, NULL, 541, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(542, 200.00, NULL, 542, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(543, 210.00, NULL, 543, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(544, 240.00, NULL, 544, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(545, 240.00, NULL, 545, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(546, 240.00, NULL, 546, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(547, 225.00, NULL, 547, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(548, 150.00, NULL, 548, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(549, 180.00, NULL, 549, '2021-02-28 19:55:33', '2021-02-28 19:55:33'),
(550, 180.00, NULL, 550, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(551, 180.00, NULL, 551, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(552, 180.00, NULL, 552, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(553, 200.00, NULL, 553, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(554, 200.00, NULL, 554, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(555, 200.00, NULL, 555, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(556, 200.00, NULL, 556, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(557, 150.00, NULL, 557, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(558, 150.00, NULL, 558, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(559, 150.00, NULL, 559, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(560, 150.00, NULL, 560, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(561, 180.00, NULL, 561, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(562, 180.00, NULL, 562, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(563, 150.00, NULL, 563, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(564, 150.00, NULL, 564, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(565, 150.00, NULL, 565, '2021-02-28 19:55:34', '2021-02-28 19:55:34'),
(566, 130.00, NULL, 566, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(567, 140.00, NULL, 567, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(568, 140.00, NULL, 568, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(569, 130.00, NULL, 569, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(570, 175.00, NULL, 570, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(571, 175.00, NULL, 571, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(572, 175.00, NULL, 572, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(573, 175.00, NULL, 573, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(574, 175.00, NULL, 574, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(575, 175.00, NULL, 575, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(576, 200.00, NULL, 576, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(577, 225.00, NULL, 577, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(578, 175.00, NULL, 578, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(579, 175.00, NULL, 579, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(580, 175.00, NULL, 580, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(581, 200.00, NULL, 581, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(582, 225.00, NULL, 582, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(583, 225.00, NULL, 583, '2021-02-28 19:55:35', '2021-02-28 19:55:35'),
(584, 220.00, NULL, 584, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(585, 200.00, NULL, 585, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(586, 260.00, NULL, 586, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(587, 260.00, NULL, 587, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(588, 200.00, NULL, 588, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(589, 120.00, NULL, 589, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(590, 120.00, NULL, 590, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(591, 120.00, NULL, 591, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(592, 120.00, NULL, 592, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(593, 200.00, NULL, 593, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(594, 200.00, NULL, 594, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(595, 200.00, NULL, 595, '2021-02-28 19:55:36', '2021-02-28 19:55:36'),
(596, 200.00, NULL, 596, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(597, 200.00, NULL, 597, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(598, 260.00, NULL, 598, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(599, 120.00, NULL, 599, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(600, 120.00, NULL, 600, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(601, 120.00, NULL, 601, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(602, 120.00, NULL, 602, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(603, 120.00, NULL, 603, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(604, 120.00, NULL, 604, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(605, 180.00, NULL, 605, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(606, 180.00, NULL, 606, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(607, 225.00, NULL, 607, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(608, 225.00, NULL, 608, '2021-02-28 19:55:37', '2021-02-28 19:55:37'),
(609, 150.00, NULL, 609, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(610, 150.00, NULL, 610, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(611, 150.00, NULL, 611, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(612, 150.00, NULL, 612, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(613, 175.00, NULL, 613, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(614, 175.00, NULL, 614, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(615, 175.00, NULL, 615, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(616, 175.00, NULL, 616, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(617, 175.00, NULL, 617, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(618, 175.00, NULL, 618, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(619, 175.00, NULL, 619, '2021-02-28 19:55:38', '2021-02-28 19:55:38'),
(620, 175.00, NULL, 620, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(621, 175.00, NULL, 621, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(622, 175.00, NULL, 622, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(623, 175.00, NULL, 623, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(624, 175.00, NULL, 624, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(625, 175.00, NULL, 625, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(626, 175.00, NULL, 626, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(627, 175.00, NULL, 627, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(628, 100.00, NULL, 628, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(629, 100.00, NULL, 629, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(630, 100.00, NULL, 630, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(631, 100.00, NULL, 631, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(632, 100.00, NULL, 632, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(633, 100.00, NULL, 633, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(634, 100.00, NULL, 634, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(635, 100.00, NULL, 635, '2021-02-28 19:55:39', '2021-02-28 19:55:39'),
(636, 100.00, NULL, 636, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(637, 100.00, NULL, 637, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(638, 100.00, NULL, 638, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(639, 100.00, NULL, 639, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(640, 100.00, NULL, 640, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(641, 100.00, NULL, 641, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(642, 100.00, NULL, 642, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(643, 100.00, NULL, 643, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(644, 100.00, NULL, 644, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(645, 100.00, NULL, 645, '2021-02-28 19:55:40', '2021-02-28 19:55:40'),
(646, 100.00, NULL, 646, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(647, 100.00, NULL, 647, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(648, 100.00, NULL, 648, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(649, 100.00, NULL, 649, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(650, 100.00, NULL, 650, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(651, 100.00, NULL, 651, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(652, 100.00, NULL, 652, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(653, 100.00, NULL, 653, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(654, 100.00, NULL, 654, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(655, 100.00, NULL, 655, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(656, 100.00, NULL, 656, '2021-02-28 19:55:41', '2021-02-28 19:55:41'),
(657, 100.00, NULL, 657, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(658, 100.00, NULL, 658, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(659, 300.00, NULL, 659, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(660, 150.00, NULL, 660, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(661, 175.00, NULL, 661, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(662, 150.00, NULL, 662, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(663, 150.00, NULL, 663, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(664, 175.00, NULL, 664, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(665, 150.00, NULL, 665, '2021-02-28 19:55:42', '2021-02-28 19:55:42'),
(666, 150.00, NULL, 666, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(667, 150.00, NULL, 667, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(668, 150.00, NULL, 668, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(669, 150.00, NULL, 669, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(670, 150.00, NULL, 670, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(671, 150.00, NULL, 671, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(672, 150.00, NULL, 672, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(673, 150.00, NULL, 673, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(674, 150.00, NULL, 674, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(675, 150.00, NULL, 675, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(676, 150.00, NULL, 676, '2021-02-28 19:55:43', '2021-02-28 19:55:43'),
(677, 150.00, NULL, 677, '2021-02-28 19:55:44', '2021-02-28 19:55:44'),
(678, 250.00, NULL, 678, '2021-02-28 19:55:44', '2021-02-28 19:55:44'),
(679, 250.00, NULL, 679, '2021-02-28 19:55:44', '2021-02-28 19:55:44'),
(680, 150.00, NULL, 680, '2021-02-28 19:55:44', '2021-02-28 19:55:44'),
(681, 125.00, NULL, 681, '2021-02-28 19:55:44', '2021-02-28 19:55:44'),
(682, 125.00, NULL, 682, '2021-02-28 19:55:44', '2021-02-28 19:55:44'),
(683, 125.00, NULL, 683, '2021-02-28 19:55:45', '2021-02-28 19:55:45'),
(684, 125.00, NULL, 684, '2021-02-28 19:55:45', '2021-02-28 19:55:45'),
(685, 125.00, NULL, 685, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(686, 125.00, NULL, 686, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(687, 125.00, NULL, 687, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(688, 125.00, NULL, 688, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(689, 100.00, NULL, 689, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(690, 100.00, NULL, 690, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(691, 100.00, NULL, 691, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(692, 100.00, NULL, 692, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(693, 100.00, NULL, 693, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(694, 100.00, NULL, 694, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(695, 100.00, NULL, 695, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(696, 100.00, NULL, 696, '2021-02-28 19:55:46', '2021-02-28 19:55:46'),
(697, 100.00, NULL, 697, '2021-02-28 19:55:47', '2021-02-28 19:55:47'),
(698, 100.00, NULL, 698, '2021-02-28 19:55:47', '2021-02-28 19:55:47'),
(699, 100.00, NULL, 699, '2021-02-28 19:55:47', '2021-02-28 19:55:47'),
(700, 100.00, NULL, 700, '2021-02-28 19:55:48', '2021-02-28 19:55:48'),
(701, 100.00, NULL, 701, '2021-02-28 19:55:48', '2021-02-28 19:55:48'),
(702, 100.00, NULL, 702, '2021-02-28 19:55:48', '2021-02-28 19:55:48'),
(703, 100.00, NULL, 703, '2021-02-28 19:55:48', '2021-02-28 19:55:48'),
(704, 100.00, NULL, 704, '2021-02-28 19:55:48', '2021-02-28 19:55:48'),
(705, 100.00, NULL, 705, '2021-02-28 19:55:48', '2021-02-28 19:55:48'),
(706, 100.00, NULL, 706, '2021-02-28 19:55:48', '2021-02-28 19:55:48'),
(707, 100.00, NULL, 707, '2021-02-28 19:55:48', '2021-02-28 19:55:48'),
(708, 100.00, NULL, 708, '2021-02-28 19:55:49', '2021-02-28 19:55:49'),
(709, 100.00, NULL, 709, '2021-02-28 19:55:49', '2021-02-28 19:55:49'),
(710, 260.00, NULL, 710, '2021-02-28 19:55:49', '2021-02-28 19:55:49'),
(711, 125.00, NULL, 711, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(712, 125.00, NULL, 712, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(713, 125.00, NULL, 713, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(714, 125.00, NULL, 714, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(715, 125.00, NULL, 715, '2021-02-28 19:55:50', '2021-02-28 19:55:50');
INSERT INTO `prices` (`id`, `price`, `old_price`, `product_id`, `created_at`, `updated_at`) VALUES
(716, 125.00, NULL, 716, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(717, 125.00, NULL, 717, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(718, 125.00, NULL, 718, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(719, 125.00, NULL, 719, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(720, 125.00, NULL, 720, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(721, 125.00, NULL, 721, '2021-02-28 19:55:50', '2021-02-28 19:55:50'),
(722, 125.00, NULL, 722, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(723, 125.00, NULL, 723, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(724, 125.00, NULL, 724, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(725, 125.00, NULL, 725, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(726, 125.00, NULL, 726, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(727, 125.00, NULL, 727, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(728, 125.00, NULL, 728, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(729, 150.00, NULL, 729, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(730, 250.00, NULL, 730, '2021-02-28 19:55:51', '2021-02-28 19:55:51'),
(731, 250.00, NULL, 731, '2021-02-28 19:55:52', '2021-02-28 19:55:52'),
(732, 175.00, NULL, 732, '2021-02-28 19:55:52', '2021-02-28 19:55:52'),
(733, 175.00, NULL, 733, '2021-02-28 19:55:52', '2021-02-28 19:55:52'),
(734, 180.00, NULL, 734, '2021-02-28 19:55:52', '2021-02-28 19:55:52'),
(735, 150.00, NULL, 735, '2021-02-28 19:55:52', '2021-02-28 19:55:52'),
(736, 150.00, NULL, 736, '2021-02-28 19:55:52', '2021-02-28 19:55:52'),
(737, 150.00, NULL, 737, '2021-02-28 19:55:52', '2021-02-28 19:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `age_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(1, 'Garden Sounds', 'Garden-Sounds', 'http://books.google.com/books/content?id=tnyMjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tnyMjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409597698', 'A delightful and enjoyable sound book filled with gentle sounds of the garden. A great book to entertain young children, while allowing them to exploring the world around them. Illustrations: Full colour throughout', NULL, 1, 1, 1, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(2, 'First Encyclopedia of Seas and Oceans', 'First-Encyclopedia-of-Seas-and-Oceans', 'http://books.google.com/books/content?id=CDUicAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=CDUicAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409525073', 'This enclyclopedia introduces young readers to the wonders of the sea. Filled with information on waves, currents, marine life and ocean exploration, this book answers such questions as \'How deep is the ocean?\' \'Which fish can blow itself up like a balloon?\' and \'How do dolphins use sound to hunt?\'', NULL, 2, 1, 1, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(3, 'First Encyclopedia of Dinosaurs and Prehistoric Life', 'First-Encyclopedia-of-Dinosaurs-and-Prehistoric-Life', 'http://books.google.com/books/content?id=S51JcgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=S51JcgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409520979', 'For use in schools and libraries only. Presents facts about dinosaurs, their origin, their diversity, and their final extinction, with Internet links for further information.', NULL, 3, 1, 1, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(4, 'First Encyclopedia of Science', 'First-Encyclopedia-of-Science', 'http://books.google.com/books/content?id=ljplcgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ljplcgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409522447', 'Introduces major topics in the sciences, and suggests related activities.', NULL, 4, 1, 1, '2021-02-28 19:50:14', '2021-02-28 19:50:14'),
(5, 'Lift the Flap Atlas', 'Lift-the-Flap-Atlas', 'http://books.google.com/books/content?id=YwZNwgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YwZNwgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746098479', 'Children can explore the world one flap at a time with this colorful new atlas.', NULL, 5, 1, 1, '2021-02-28 19:50:14', '2021-02-28 19:50:14'),
(6, 'Old MacDonald Had a Farm', 'Old-MacDonald-Had-a-Farm', 'http://books.google.com/books/content?id=XHDbjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=XHDbjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409510093', '', NULL, NULL, 1, 1, '2021-02-28 19:50:14', '2021-02-28 19:50:14'),
(7, 'Go, Cub!', 'Go,-Cub!', 'http://books.google.com/books/content?id=cNuHswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cNuHswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008266554', 'National Geographic Primary Readers is a high-interest series of beginning reading books that have been developed in consultation with education experts. The books pair magnificent National Geographic photographs with lively text by skilled children\'s book authors across four reading levels. Level 1: Early readerThese books contain simple sentences and are just right for kids who can decode with ease and are beginning to read fluently. They are ideal for readers of Yellow and Blue banded books. Join the little lion cub on his day of adventures on the African savanna. Watch him run, jump, play, eat, and sleep, cuddle with Mum, and roll around with his brother and sister. Told in simple yet lively text, Go, Cub! will enchant kids who are just beginning their reading journey.', NULL, 6, 1, 1, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(8, 'Techno Strike!', 'Techno-Strike!', 'http://books.google.com/books/content?id=RnbYnQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=RnbYnQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545663847', 'Five ninja try to rescue Sensei Wu and stop the mechanical Overlord, but in order to do so, they must fight past the Nindroids and perform a system reboot on the robot ninja.', NULL, 7, 1, 1, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(9, 'Way of the Ninja', 'Way-of-the-Ninja', '', '', '9780545401135', 'Kai\'s sister, Nya, is kidnapped and he must learn Spinjitzu from Sensei Wu, a mysterious old man, to rescue her.', NULL, 8, 1, 1, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(10, 'The Titanium Ninja', 'The-Titanium-Ninja', 'http://books.google.com/books/content?id=ZcHEoAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ZcHEoAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545663861', 'When the Overlord returns, transforming into the powerful Golden Master, it\'s up to ninja Cole, Jay, Kai, Zane, and Lloyd to defeat him.', NULL, 9, 1, 1, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(11, 'The Quest for the Crystal (Lego Ninjago: Reader #14)', 'The-Quest-for-the-Crystal-(Lego-Ninjago:-Reader-#14)', 'http://books.google.com/books/content?id=-JnqsgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=-JnqsgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545905893', 'The wisecracking ninja are back with all-new adventures! An all-new adventure based on the latest season of the hit LEGO® Ninjago(tm) TV show on Cartoon Network!', NULL, 10, 1, 1, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(12, 'Sidekick Showdown!', 'Sidekick-Showdown!', 'http://books.google.com/books/content?id=3JRMjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3JRMjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338047424', 'When Harley Quinn(TM) and her friends capture Superman(TM), Batman(TM) and Wonder Woman(TM), it\'s up to their sidekicks to save the day! Robin(TM), Batgirl(TM), and Supergirl(TM) willl have to use teamwork and friendship to get the job done-but will it be enough?!', NULL, 11, 1, 1, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(13, 'Magic School Bus Rides Again', 'Magic-School-Bus-Rides-Again', 'http://books.google.com/books/content?id=SxrFtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SxrFtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338253795', 'Hop aboard the Magic School Bus for a whole new adventure about camouflage that is out of this world. Includes stickers!', NULL, 12, 1, 1, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(14, 'The Magic School Bus Rides the Wind', 'The-Magic-School-Bus-Rides-the-Wind', 'http://books.google.com/books/content?id=gHa6AAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gHa6AAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780439801089', 'Ms. Frizzle and her class climb aboard the Magic Bus and follow a kite that has broken free on a windy day, and during the chase they learn about sailboats, weather balloons, windmills, and other things which use energy from the wind.', NULL, 13, 1, 1, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(15, 'Lego Ninjago: The Rescue Mission (Reader #11)', 'Lego-Ninjago:-The-Rescue-Mission-(Reader-#11)', 'http://books.google.com/books/content?id=pZG_oAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=pZG_oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545746397', 'Ninjago: Rebooted! The wisecracking ninja are back with all-new adventures. An all-new adventure based on the latest season of the hit LEGO Ninjago TV show!', NULL, 422, 1, 1, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(16, 'Day of the Departed (LEGO Ninjago: Reader)', 'Day-of-the-Departed-(LEGO-Ninjago:-Reader)', 'http://books.google.com/books/content?id=S1oQDQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=S1oQDQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338113693', 'A new adventure based on the popular Cartoon Network animated series features the hijinks of the LEGO Ninjago Masters of Spinjitzu.', NULL, 7, 1, 1, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(17, 'Rise of the Snakes', 'Rise-of-the-Snakes', '', '', '9780545435925', 'Lord Gardamon\'s son, Lloyd, attempts to seize power in the land of Ninjago after his father\'s retreat, and although the ninjas do not take him seriously at first, Lloyd becomes a real threat when he awakens a race of snake-headed beasts.', NULL, 9, 1, 1, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(18, 'Secrets of Spinjitzu', 'Secrets-of-Spinjitzu', '', '', '9780545607988', 'Attack of the Nindroids: The Ninjago battle the evil ninja robots known as the Nindroids.', NULL, 9, 1, 1, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(19, 'Pop-Up Jungle', 'Pop-Up-Jungle', 'http://books.google.com/books/content?id=L6U8rgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=L6U8rgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409550310', 'Creep through the dense undergrowth of the jungle to discover a whole menagerie of exotic animals, just waiting to leap off the pages of this busy pop-up book. Illustrations are brought to life in a riot of colour and detail as you turn each page to see a 3-dimensional scene emerge.', NULL, 14, 1, 1, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(20, 'Nursery Rhymes Keyboard Book', 'Nursery-Rhymes-Keyboard-Book', 'http://books.google.com/books/content?id=9StExAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9StExAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474967570', 'This new title in our range of keyboard books has ten well-loved nursery rhymes for children to learn on the electronic keyboard in the book. Beautifully illustrated animal scenes bring each rhyme to life, and the words are given alongside the notes so you can sing along as you play. Part of a growing range of Usborne music books, including Famous Classical Tunes Keyboard Book, Big Keyboard Book and Drum Kit Book. A perfect way for little children to take their first steps towards learning the piano. Coloured dots for each note and step-by-step instructions make it very simple to follow.', NULL, 3, 1, 1, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(21, 'My First Xylophone Book', 'My-First-Xylophone-Book', 'http://books.google.com/books/content?id=g2mQtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=g2mQtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474932370', 'Young children can discover the magic of making music with the real xylophone attached to the front of this charming book. Using the high-quality xylophone and clear, simple instructions, they can learn to play a selection of well-known tunes, including Hey Diddle Diddle, Old MacDonald and Twinkle Twinkle Little Star. Delightful illustrations help to bring each tune to life. A perfect introduction to music-making for little children.', NULL, 3, 1, 1, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(22, 'Drumming for Beginners', 'Drumming-for-Beginners', 'http://books.google.com/books/content?id=tHwmtgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tHwmtgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474948531', 'With seven different drum buttons arranged in the shape of a drum kit, and several tunes to play along to, this fun book will provide hours of entertainment for budding drummers. Simple instructions help children to get the hang of it, and lively animal illustrations add to the fun. This is a perfect way to introduce children to the joys of making music. It builds on the success of First Drumming Book by adding more drums, different tunes, and new activities. An excellent and unusual gift.', NULL, 15, 1, 1, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(23, 'Twas the Night Before Christmas', 'Twas-the-Night-Before-Christmas', 'http://books.google.com/books/content?id=74vTtQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=74vTtQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474952866', 'This classic Christmas poem is brought wonderfully to life with gorgeous artwork and stunning pops. Peek inside a cosy house, all ready for Chrstimas, marvel at Santa and his reindeer, flying across the sky and revel in the magic of Christmas. The latest in the Usborne pop-up series following on from the success of Usborne\'s Pop-Up Fairy Tales. A winning combination of classic Christmas poem and pop-up book, making it the perfect Chrstimas gift. Stunning pop-ups to bring the poem to life and an abbreivated version of the poem makes it accessible to young children.', NULL, 16, 1, 1, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(24, 'Snow White', 'Snow-White', 'http://books.google.com/books/content?id=Zbo8tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Zbo8tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474940955', 'See the classic fairy tale spring to life in this beautiful pop-up book. Scenes include the Wicked Queen and her mirror, the seven dwarfs emerging from their cottage, Snow White taking a bite of the apple and the prince\'s rescue. Ingenious pops combine movement with detailed scenes. A beautiful book to give and to treasure. This is the second title in an exciting new fairy tale pop-up series to complement the hugely successful peep-inside series. Each title is beautifully illustrated with lively accompanying text detailed pop ups to bring the stories to life.', NULL, 16, 1, 1, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(25, 'What\'s Happening to Me? (Boy)', 'What\'s-Happening-to-Me?-(Boy)', 'http://books.google.com/books/content?id=0h0SswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0h0SswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409599609', 'Library Friendly Edition of original- A sensitive, detailed and informative guide to male puberty, this book will prove invaluable for both young boys and their parents alike, tackling key subjects from the physical changes that occur at this time to the emotional upheaval this can cause.', NULL, 5, 1, 1, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(26, 'Artificial Intelligence', 'Artificial-Intelligence', 'http://books.google.com/books/content?id=XDbZjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=XDbZjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409598640', 'An exciting look into the fascinating world of artificial intelligence; what it is, how it\'s used in industry and war, how it will affect our future. Written in an engaging way with plenty of facts, comic strip sections, dramatic photographic illustrations this book is bound to grip the attention of even reluctant readers.', NULL, 17, 1, 1, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(27, 'Lift-the-Flap First Questions and Answers What Makes it Rain?', 'Lift-the-Flap-First-Questions-and-Answers-What-Makes-it-Rain?', 'http://books.google.com/books/content?id=gBnVsgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gBnVsgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409598817', 'Flap book tackling some of the difficult questions small children ask.', NULL, 18, 1, 1, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(28, 'See Inside First World War', 'See-Inside-First-World-War', 'http://books.google.com/books/content?id=9cyRMQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9cyRMQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409531708', 'This is a fascinating flap book packed with essential information about the First World War, from the start of the conflict in 1914, to its resolution in 1918.', NULL, 19, 1, 1, '2021-02-28 19:50:18', '2021-02-28 19:50:18'),
(29, 'The Complete Book of Riding and Pony Care', 'The-Complete-Book-of-Riding-and-Pony-Care', 'http://books.google.com/books/content?id=VUOStAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VUOStAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474948562', 'This informative guide to riding and pony care is suitable for all horse enthusiasts, from complete beginners to experienced riders. Filled with photographs, detailed illustrations and simple, informative text, this book provides an inspirational guide to the world of horse riding. Covers everything from the basics, such as how to clean a saddle, right up to what to do if a horse bolts, preparing for a country ride and facing the challenge of a three-day event. New edition of 9781409555490.', NULL, 20, 1, 1, '2021-02-28 19:50:18', '2021-02-28 19:50:18'),
(30, 'Big Picture Atlas', 'Big-Picture-Atlas', 'http://books.google.com/books/content?id=mbOwjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=mbOwjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409598701', 'A wonderfully big Picture Atlas for children to learn the basis of world geography. Lots of busy maps with fun illustrations to learn about the food and culture of other countries as well as capital cities. Putting pictures onto facts helps with memory and this big, satisfying book will help children memorize geography facts with ease.', NULL, 21, 1, 1, '2021-02-28 19:50:18', '2021-02-28 19:50:18'),
(31, 'I Wonder why I Sleep and Other Questions about My Body', 'I-Wonder-why-I-Sleep-and-Other-Questions-about-My-Body', '', '', '9780753440742', 'Favorite questions such as, Why do I get hiccups? ; What makes me sneeze? ; What is sleepwalking? are answered in this lively look at the human body.', NULL, 22, 1, 1, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(32, 'Tadpoles and Frogs', 'Tadpoles-and-Frogs', 'http://books.google.com/books/content?id=9lFkAAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9lFkAAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746074558', 'How do tadpoles turn into frogs? What is the biggest frog in the world? How do frogs catch flies? In this book, youll find the answers and lots more about the wonderful world of frogs. Tadpoles and Frogs is part of an exciting series of books for children who are beginning to read on their own. The easy-to-read text has been specially written with the help of a reading expert.', NULL, 23, 1, 1, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(33, 'Rainforests', 'Rainforests', 'http://books.google.com/books/content?id=ExXeNQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ExXeNQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746090077', 'An illustrated presentation of the rainforest and its creatures and plants, and covers its products, such as soap, chocolate, bananas, and kawakawa, and the destruction of the lush habitat that results in extinction of animals such as the Bali tiger.', NULL, 24, 1, 1, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(34, 'Trees', 'Trees', 'http://books.google.com/books/content?id=5TvjPQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=5TvjPQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746090220', 'Explore the wonderful world of trees from the deepest roots to the highest treetops. Find out how trees can make their own food and grow in unlikely places.', NULL, 25, 1, 1, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(35, 'Caterpillars and Butterflies', 'Caterpillars-and-Butterflies', 'http://books.google.com/books/content?id=BrAQAAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BrAQAAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746074473', 'Describes how a caterpillar develops into a butterfly, and discusses moths and the feeding habits and defenses of butterflies.', NULL, 26, 1, 1, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(36, 'Spiders', 'Spiders', 'http://books.google.com/books/content?id=_IpOAAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_IpOAAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746074794', 'What do spiders eat? How many eyes does a spider have? Which kind of spider lives underwater? In this book you\'ll find the answers and lots more about the fascinating world of spiders.', NULL, 27, 1, 1, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(37, 'Bugs', 'Bugs', 'http://books.google.com/books/content?id=TOpJPgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TOpJPgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746080375', 'Open this book and enter the amazing world of creepy-crawlies, from beautiful beetles to menacing mantids. Discover how bugs live, hunt and defend themselves; come face to face with the deadliest species, and find out why we cant live without bugs.', NULL, 28, 1, 1, '2021-02-28 19:50:20', '2021-02-28 19:50:20'),
(38, 'Bees and Wasps', 'Bees-and-Wasps', 'http://books.google.com/books/content?id=zEmyNAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zEmyNAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409544876', '\"What do bees and wasps eat? What type of nests do they make? How do bees make honey? In this book you\';; find the answers and lots more about the fascinating lives of bees and wasps\"--Page 2 of cover.', NULL, 29, 1, 1, '2021-02-28 19:50:20', '2021-02-28 19:50:20'),
(39, 'Ants', 'Ants', 'http://books.google.com/books/content?id=cmOCjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cmOCjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409581604', 'A simple introduction to the lives of ants, this colourful book describes where they live, what they eat, how they behave and how much weight they can carry. Children can dip into this informative book and learn lots of facts for school research or general interest.', NULL, 28, 1, 1, '2021-02-28 19:50:20', '2021-02-28 19:50:20'),
(40, 'USBORNE BEGINNERS NATURE', 'USBORNE-BEGINNERS-NATURE', '', '', '9781474974028', '', NULL, 30, 1, 1, '2021-02-28 19:50:20', '2021-02-28 19:50:20'),
(41, 'Bears', 'Bears', 'http://books.google.com/books/content?id=FFckuQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=FFckuQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746080467', 'In this book you\'ll find the answers and learn lots more about the fascinating world of bears.Bears is part of an exciting series of books for children who are beginning to read on their own. The easy to read text has been specifically written with the help of a reading expert.Ages 4+', NULL, 31, 1, 1, '2021-02-28 19:50:21', '2021-02-28 19:50:21'),
(42, 'Dangerous Animals', 'Dangerous-Animals', 'http://books.google.com/books/content?id=2KyYKAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2KyYKAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746088630', 'A fantastic brand new addition to the Beginners series, which is designed to provide an informative introduction to non-fiction subjects for young readers. Ages 4+', NULL, 27, 1, 1, '2021-02-28 19:50:21', '2021-02-28 19:50:21'),
(43, 'Elephants', 'Elephants', 'http://books.google.com/books/content?id=LukBtwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=LukBtwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409530497', 'This is a lively introduction to the fascinating world of elephants, complete with amazing photographs, step-by-step illustrations, and weird and wonderful facts.', NULL, 29, 1, 1, '2021-02-28 19:50:22', '2021-02-28 19:50:22'),
(44, 'BEGINNERS FARM ANIMALS', 'BEGINNERS-FARM-ANIMALS', '', '', '9780746074763', 'From hens and chickens to crocodiles and geese, this book provides information about farm animals for children who are just beginning to read. With photographs and interesting and amusing facts such as did you know that one ostrich egg could make an omelette big enough to feed twelve people?', NULL, 32, 1, 1, '2021-02-28 19:50:22', '2021-02-28 19:50:22'),
(45, 'Monkeys', 'Monkeys', 'http://books.google.com/books/content?id=7c7DbwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=7c7DbwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409523079', 'Usborne Beginners are colourful information books for children beginning to read on their own. Vivid, full colour illustrations and photographs on every page, accompanied by short, informative text. Developed with reading experts at the University of Roehampton.', NULL, 28, 1, 1, '2021-02-28 19:50:22', '2021-02-28 19:50:22'),
(46, 'Penguins', 'Penguins', 'http://books.google.com/books/content?id=wU5XPgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=wU5XPgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746099667', 'Examines the physical characteristics, behavior, habitat, nutritional needs, and life cycle of penguins and lists websites where readers can find more information.', NULL, 21, 1, 1, '2021-02-28 19:50:22', '2021-02-28 19:50:22'),
(47, 'Sharks', 'Sharks', 'http://books.google.com/books/content?id=thNwPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=thNwPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780746074756', '\'Usborne Beginners\' are information books for children beginning to read on their own. Full colour illustrations and photographs on every page, accompanied by short, informative text. Developed with reading experts at the University of Roehampton. Carefully selected Internet links to exciting websites to find out more.', NULL, 24, 1, 1, '2021-02-28 19:50:23', '2021-02-28 19:50:23'),
(48, 'Tigers', 'Tigers', 'http://books.google.com/books/content?id=CMyipwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=CMyipwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409530671', 'Simple text and photographs provide an introduction to tigers, covering physical characteristics, behaviors, diet, life cycle, and conservation.', NULL, 29, 1, 1, '2021-02-28 19:50:23', '2021-02-28 19:50:23'),
(49, 'Wolves', 'Wolves', 'http://books.google.com/books/content?id=NCwkmgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=NCwkmgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409530695', 'The association of wolves with superstition and folklore has led to an uneasy and fearful relationship between man and wolf. Here readers can find out the real facts about wolves and how they live.', NULL, 29, 1, 1, '2021-02-28 19:50:23', '2021-02-28 19:50:23'),
(50, 'Usborne Beginners Animals Box Set', 'Usborne-Beginners-Animals-Box-Set', '', '', '9781474936286', '', NULL, NULL, 1, 1, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(51, 'Disney Frozen Ultimate Carry Pack', 'Disney-Frozen-Ultimate-Carry-Pack', 'http://books.google.com/books/content?id=BbbJzQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BbbJzQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788108850', '', NULL, NULL, 1, 1, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(52, 'Music and Media in the Arab World', 'Music-and-Media-in-the-Arab-World', 'http://books.google.com/books/content?id=KANOAYzkhA8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=KANOAYzkhA8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9789774162930', 'Since the turn of the twentieth century the dramatic rise of mass media has profoundly transformed music practices in the Arab world. Music has adapted to successive forms of media disseminationfrom phonograph cylinders to MP3seach subjected to the political and economic forces of its particular era and region. Carried by mass media, the broader culture of Arab music has been thoroughly transformed as well. Simultaneously, mass mediated music has become a powerful social force. While parallel processes have unfolded worldwide, their implications in the Arabic-speaking world have thus far received little scholarly attention. This provocative volume features sixteen new essays examining these issues, especially televised music and the controversial new genre of the music video. Perceptive voicesboth emerging and establishedrepresent a wide variety of academic disciplines. Incisive essays by Egyptian critics display the textures of public Arabic discourse to an English readership. Authors address the key issues of contemporary Arab societygender and sexuality, Islam, class, economy, power, and nationas refracted through the culture of mediated music. Interconnected by a web of recurrent concepts, this collection transcends music to become an important resource for the study of contemporary Arab society and culture. Contributors: Wael Abdel Fattah, Yasser Abdel-Latif, Moataz Abdel Aziz, Tamim Al-Barghouti, Mounir Al Wassimi, Walter Armbrust, Elisabeth Cestor, Hani Darwish, Walid El Khachab, Abdel-Wahab Elmessiri, James Grippo, Patricia Kubala, Katherine Meizel, Zein Nassar, Ibrahim Saleh, Laith Ulaby.', NULL, 33, 1, 1, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(53, 'Quichotte', 'Quichotte', 'http://books.google.com/books/content?id=DlnqwQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=DlnqwQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781787331914', '***SHORTLISTED FOR THE BOOKER PRIZE 2019*** In a tour-de-force that is both an homage to an immortal work of literature and a modern masterpiece about the quest for love and family, Booker Prize-winning, internationally bestselling author Salman Rushdie has created a dazzling Don Quixote for the modern age. Inspired by the Cervantes classic, Sam DuChamp, mediocre writer of spy thrillers, creates Quichotte, a courtly, addled salesman obsessed with television, who falls in impossible love with the TV star Salman R. Together with his (imaginary) son Sancho, Quichotte sets off on a picaresque quest across America to prove worthy of her hand, gallantly braving the tragicomic perils of an age where \'Anything-Can-Happen\'. Meanwhile his creator, in a midlife crisis, has equally urgent challenges of his own. Just as Cervantes wrote Don Quixote to satirise the culture of his time, Rushdie takes the reader on a wild ride through a country on the verge of moral and spiritual collapse, with the kind of storytelling magic that is the hallmark of his work. The fully realised lives of DuChamp and Quichotte intertwine in a profoundly human quest for love and a wickedly entertaining portrait of an age in which fact is so often indiscernible from fiction. **A DAILY TELEGRAPH BOOK OF THE YEAR**', NULL, 34, 1, 1, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(54, 'The Hunting Party', 'The-Hunting-Party', 'http://books.google.com/books/content?id=3VQCtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3VQCtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008297114', '*The Sunday Times Top 5 bestseller* EVERYONE\'S INVITED. EVERYONE\'S A SUSPECT. AND EVERYONE\'S TALKING ABOUT IT. \'Ripping, riveting\' A. J. Finn\'Clever, twisty and sleek\' Daily Mail\'Unputdownable\' John Boyne\'Foley is superb\' The Times\'Chilling\' Adele Parks\'Terrific, riveting\' Dinah Jefferies In a remote hunting lodge, deep in the Scottish wilderness, old friends gather. The beautiful oneThe golden coupleThe volatile oneThe new parentsThe quiet oneThe city boyThe outsider The victim. Not an accident - a murder among friends.', NULL, 35, 1, 1, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(55, 'Everything Under', 'Everything-Under', 'http://books.google.com/books/content?id=mZ7vswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=mZ7vswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781910702345', '**SHORTLISTED FOR THE MAN BOOKER PRIZE 2018** \'Daisy Johnson is a new goddamn swaggering monster of fiction.\' Lauren Groff Words are important to Gretel, always have been. As a child, she lived on a canal boat with her mother, and together they invented a language that was just their own. She hasn\'t seen her mother since the age of sixteen, though - almost a lifetime ago - and those memories have faded. Now Gretel works as a lexicographer, updating dictionary entries, which suits her solitary nature. A phone call from the hospital interrupts Gretel\'s isolation and throws up questions from long ago. She begins to remember the private vocabulary of her childhood. She remembers other things, too: the wild years spent on the river; the strange, lonely boy who came to stay on the boat one winter; and the creature in the water - a canal thief? - swimming upstream, getting ever closer. In the end there will be nothing for Gretel to do but go back. Daisy Johnson\'s debut novel turns classical myth on its head and takes readers to a modern-day England unfamiliar to most. As daring as it is moving, Everything Under is a story of family and identity, of fate, language, love and belonging that leaves you unsettled and unstrung.', NULL, 36, 1, 1, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(56, 'Blink', 'Blink', 'http://books.google.com/books/content?id=z7G13xBtfkQC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=z7G13xBtfkQC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141014593', 'Intuition is not some magical property that arises unbidden from the depths of our mind. It is a product of long hours and intelligent design, of meaningful work environments and particular rules and principles. This book shows us how we can hone our instinctive ability to know in an instant, helping us to bring out the best in our thinking and become better decision-makers in our homes, offices and in everyday life. Just as he did with his revolutionary theory of the tipping point, Gladwell reveals how the power of ‘blink’ could fundamentally transform our relationships, the way we consume, create and communicate, how we run our businesses and even our societies.You’ll never think about thinking in the same way again.', NULL, 37, 1, 1, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(57, 'Girl, Woman, Other', 'Girl,-Woman,-Other', 'http://books.google.com/books/content?id=bmctugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bmctugEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241364901', 'With her historic Booker win, Bernardine Evaristo is the author everyone is talking about. The standout book of 2019, Girl, Woman, Other is the number book you need to read this year. ***WINNER OF THE BOOKER PRIZE 2019*** SUNDAY TIMES BESTSELLER This is Britain as you\'ve never read it. This is Britain as it has never been told. From Newcastle to Cornwall, from the birth of the twentieth century to the teens of the twenty-first, Girl Woman Other follows a cast of twelve characters on their personal journeys through this country and the last hundred years. They\'re each looking for something - a shared past, an unexpected future, a place to call home, somewhere to fit in, a lover, a missed mother, a lost father, even just a touch of hope . . . \'Masterful . . . A choral love song to black womanhood in modern Great Britain\' Elle \'Exceptional. Ambitious, flowing and all-encompassing, an offbeat narrative that\'ll leave your mind in an invigorated whirl... [It] unites poetry, social history, women\'s voices and beyond. You have to order it right now\' Stylist \'Bernardine Evaristo can take any story from any time and turn it into something vibrating with life\' Ali Smith, author of How to be both \'Sparkling, inventive\' Sunday Times \'Funny, sad, tender and true, deserves to win awards\' Red \'Brims with vitality\' Financial Times SHORTLISTED FOR THE GORDON BURN PRIZE 2019', NULL, 38, 1, 1, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(58, 'Heroes of Olympus, The , Book Three: The Mark of Athena', 'Heroes-of-Olympus,-The-,-Book-Three:-The-Mark-of-Athena', '', '', '9781423140603', '\"The Greek and Roman demigods will have to cooperate in order to defeat the giants released by the Earth Mother, Gaea. Then they will have to sail together to the ancient land--Greece itself--to find the Doors of Death\"--', NULL, 39, 1, 1, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(59, 'The Thank You Economy', 'The-Thank-You-Economy', 'http://books.google.com/books/content?id=Z1AJB-S8RK4C&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Z1AJB-S8RK4C&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780061914188', 'If this were 1923, this book would have been called \"Why Radio Is Going to Change the Game\" . . . If it were 1995, it would be \"Why Amazon Is Going to Take Over the Retailing World\" . . . The Thank You Economy is about something big, something greater than any single revolutionary platform. It isn\'t some abstract concept or wacky business strategy—it\'s real, and every one of us is doing business in it every day, whether we choose to recognize it or not. It\'s the way we communicate, the way we buy and sell, the way businesses and consumers interact online and offline. The Internet, where the Thank You Economy was born, has given consumers back their voice, and the tremendous power of their opinions via social media means that companies and brands have to compete on a whole different level than they used to. Gone are the days when a blizzard of marketing dollars could be used to overwhelm the airwaves, shut out the competition, and grab customer awareness. Now customers\' demands for authenticity, originality, creativity, honesty, and good intent have made it necessary for companies and brands to revert to a level of customer service rarely seen since our great-grandparents\' day, when business owners often knew their customers personally, and gave them individual attention. Here renowned entrepreneur Gary Vaynerchuk reveals how companies big and small can scale that kind of personal, one-on-one attention to their entire customer base, no matter how large, using the same social media platforms that carry consumer word of mouth. The Thank You Economy offers compelling, data-driven evidence that we have entered into an entirely new business era, one in which the companies that see the biggest returns won\'t be the ones that can throw the most money at an advertising campaign, but will be those that can prove they care about their customers more than anyone else. The businesses and brands that harness the word-of-mouth power from social media, those that can shift their culture to be more customer-aware and fan-friendly, will pull away from the pack and profit in today\'s markets. Filled with Vaynerchuk\'s irrepressible candor and wit, as well as real-world examples of companies that are profiting by putting Thank You Economy principles into practice, The Thank You Economy reveals how businesses can harness all the changes and challenges inherent in social media and turn them into tremendous opportunities for profit and growth.', NULL, 40, 1, 1, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(60, 'Without a Country', 'Without-a-Country', 'http://books.google.com/books/content?id=ZxGrswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ZxGrswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781503900974', 'From the international bestselling author of Last Train to Istanbul comes a novel based on true events that explores the depths of pride, devotion, and persistence as four generations of a family struggle to forge their destinies. As Hitler\'s reign of terror begins to loom large over Germany, Gerhard and Elsa Schliemann--like other German Jews--must flee with their children in search of sanctuary. But life elsewhere in Europe offers few opportunities for medical professor Gerhard and his fellow scientists. Then they discover an unexpected haven in Turkey, where universities and hospitals welcome them as valuable assets. But despite embracing their adopted land, personal and political troubles persist. Military coups bring unrest and uncertainty to the country, intermarriage challenges the cultural identity of Gerhard and Elsa\'s descendants, and anti-Semitism once again threatens their future in the place they call home. From World War II to the age of social media, one family\'s generations find their way through love and loss, sacrifice and salvation, tragedy and triumph--with knowledge hard won and passion heartfelt.', NULL, 41, 1, 1, '2021-02-28 19:50:26', '2021-02-28 19:50:26'),
(61, 'Cilka\'s Journey', 'Cilka\'s-Journey', 'http://books.google.com/books/content?id=q97swQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=q97swQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781785769047', 'In 1942 Cilka is just sixteen years old when she is taken to Auschwitz-Birkenau Concentration Camp. The Commandant at Birkenau, Schwarzhuber, notices her long beautiful hair, and forces her separation from the other women prisoners. Cilka learns quickly that power, even unwillingly given, equals survival. After liberation, Cilka is charged as a collaborator for sleeping with the enemy and sent to a desolate, brutal prison camp in Siberia known as Vorkuta, inside the Arctic Circle. Innocent and imprisoned once again, Cilka faces challenges both new and horribly familiar. When she makes an impression on a female doctor, Cilka is taken under her wing and begins to tend to the ill in the camp, struggling to care for them under unimaginable conditions. Cilka finds endless resources within herself as she confronts death and faces terror, each day a battle for survival. And when she nurses a man called Aleksandr, Cilka finds that despite everything that has happened to her, there is room in her heart for love. Based on what is known of Cilka\'s time in Auschwitz, and on the experience of women in Siberian prison camps, Cilka\'s Journey is the breathtaking sequel to The Tattooist of Auschwitz. A powerful testament to the triumph of the human will in adversity, Cilka\'s Journey will make you weep, but it will also leave you with the remarkable story of one woman\'s fierce determination to survive, against all odds.', NULL, 42, 1, 1, '2021-02-28 19:50:26', '2021-02-28 19:50:26'),
(62, 'It\'s the Manager', 'It\'s-the-Manager', 'http://books.google.com/books/content?id=UJc1vgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=UJc1vgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781595622242', 'Packed with 52 discoveries from Gallup’s largest study on the future of work, It’s the Manager shows leaders how to adapt their organizations to rapid change, ranging from new workplace demands to managing remote employees, a diverse workforce, the rise of artificial intelligence, gig workers, and attracting – and keeping – today’s best employees. Who is the most important person in your organization to lead your teams through these changes? Gallup research reveals: It’s your managers. While the world’s workplace has been going through extraordinary historical change, the practice of management has been stuck in time for more than 30 years. The new workforce – especially younger generations – wants their work to have deep mission and purpose, and they don’t want old-style command-and-control bosses. They want coaches who inspire them, communicate with them frequently, and develop their strengths. Packed with 52 discoveries from Gallup’s largest study on the future of work, It’s the Manager shows leaders how to adapt their organizations to rapid change, ranging from new workplace demands to the challenges of managing remote employees, a diverse workforce, the rise of artificial intelligence, gig workers, and attracting – and keeping – today’s best employees. Who is the most important person in your organization to lead your teams through these changes? Decades of global Gallup research reveal: It’s your managers. They are the ones who make or break your organization’s success. When you build great managers -- ones who can maximize the potential of every team member -- you will see organic revenue and profit growth, and you will deliver to a every one of your employees what they most want today: a great job and a great life. This is the future of work. It’s the Manager includes exclusive content from Gallup Access -- Gallup’s new workplace platform, chock full of additional content, tools, and solutions for business. Your book comes with a code for the CliftonStrengths assessment, which will reveal users’ Top 5 strengths.', NULL, 43, 1, 1, '2021-02-28 19:50:26', '2021-02-28 19:50:26'),
(63, 'The Wild Remedy', 'The-Wild-Remedy', 'http://books.google.com/books/content?id=cqlluQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cqlluQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781789290424', 'Emma Mitchell has suffered with depression for 25 years. In 2003, she left the city and began to take walks in the countryside around her new home, photographing, collecting and drawing as she went. Each walk was as medicinal as any talking therapy or pharmaceutical. Emma\'s moving and candid account of her year is a powerful testament to how reconnecting with nature may offer some answers to today\'s mental health epidemic. While charting her own seasonal highs and lows, she also explains the science behind such changes, calling on new research into such areas as forest bathing and the ways in which our bodies and minds respond to wildlife. Filled with Emma\'s beautiful drawings, paintings and photography, this is a truly unique book for anyone who has ever felt drawn to nature and wondered about its influence over us.', NULL, 44, 1, 1, '2021-02-28 19:50:27', '2021-02-28 19:50:27'),
(64, 'Tiny Castles', 'Tiny-Castles', 'http://books.google.com/books/content?id=VnGxxwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VnGxxwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749581978', 'The very first compendium of Britain\'s most interesting diminutive castles, written in an amusing, accessible style. Praised by BBC Countryfile Magazine for writing \'intelligently and amusingly, with evident excitement and imagination\', Dixe Wills unleashes his trademark style on the tiniest castles in Britain. Beautifully presented in full colour throughout, the book uncovers over 60 of the country\'s loveliest and most compelling castles. No crumbling ruins are included here - only only relatively complete castles with enough features intact to explore and enjoy are listed, although all are delightfully diminutive. From Henry VIII\'s beautifully preserved St Mawes Castle in Cornwall to Scalloway Castle in Shetland, where it is said the blood and hair of the cruel Earl Patrick\'s tenants were used in the mortar., many of these tiny fortresses occupy a unique place in history.', NULL, 45, 1, 1, '2021-02-28 19:50:27', '2021-02-28 19:50:27');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(65, 'The President Is Missing', 'The-President-Is-Missing', 'http://books.google.com/books/content?id=BvDsswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BvDsswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781780898391', '\'The dream team delivers big time ... Clinton\'s insider secrets and Patterson\'s storytelling genius make this the political thriller of the decade.\' - Lee Child ________________________________ The President is Missing. The world is in shock. But the reason he\'s missing is much worse than anyone can imagine. With details only a President could know, and the kind of suspense only James Patterson can deliver. ________________________________ \'A bullet train of a thriller. The Day of the Jackal for the twenty-first century.\' - A.J. Finn, author of The Woman in the Window \'This book moves like Air Force One. Big and fast.\' - Michael Connelly, author of the Harry Bosch series \'The President Is Missing is a big, splashy juggernaut of a novel, combining thrills with a truly authentic look at the inner happenings in Washington. I read it in one gulp. You will too.\' - Harlan Coben, #1 bestselling author of Don\'t Let Go \'Yes, The President is Missing is fiction - it\'s a thriller - but James Patterson and I have come up with three of the most frightening days in the history of the presidency. And it could really happen... These days, the seemingly impossible can happen. And it happens so fast. I believe that readers will not soon forget President Jonathan Duncan and his story.\' - Bill Clinton \'Needless to say, we had some great conversations about the presidency, what life in Washington is really like, and about the state of America and the rest of the world.\' - James Patterson \'I felt like I was right along with the characters for the shocking twists and turns you\'ll never guess are coming. Patterson and Clinton have created a truly unique character in their \'missing\' President. The President is Missing puts the listener inside the White House and inside the mind of a President grappling with extraordinary circumstances.\' - Dennis Quaid on the audiobook of The President is Missing \'Relentless in its plotting and honest in its examination of issues that strike close to our hearts.\' - Jeffery Deaver \'A first-rate collaboration from a couple of real pros! Engrossing from page one.\' - David Baldacci \'vivid, engrossing - and authentically frightening.\' - Carl Hiaasen, author of Razor Girl \'The President is Missing is more than a thriller - it\'s a skeleton key that lets you inside the head of a U.S. president.\' - Brad Meltzer, author of The Escape Artist \'From the pens of two American icons comes a political thriller that rocks... a helluva story.\' - Nelson DeMille, author of The Cuban Affair \'The President Is Missing is heart-pounding, gripping, terrifying... a genuinely masterful thriller. My knuckles are still white!\' - Louise Penny, #1 bestselling author of Glass Houses \'Marry the political savvy of Bill Clinton with the craftsmanship of James Patterson and you get a fabulously entertaining thriller that is meticulous in its portrayal of Washington politics, gripping in its pacing, and harrowing in its depiction of the perils of cyberwarfare.\' - Ron Chernow, #1 bestselling and Pulitzer Prize-winning author of Alexander Hamilton and Grant \'Compelling from page one. A fantastic read!\' - Mary Higgins Clark, #1 bestselling author of I\'ve Got My Eyes on You', NULL, 46, 1, 1, '2021-02-28 19:50:27', '2021-02-28 19:50:27'),
(66, 'Admissions', 'Admissions', 'http://books.google.com/books/content?id=NK7mnAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=NK7mnAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474603867', 'Henry Marsh has spent a lifetime operating on the surgical frontline. There have been exhilarating highs and devastating lows, but his love for the practice of neurosurgery has never wavered. Prompted by his retirement from his full-time job in the NHS, and through his continuing work in Nepal and Ukraine, Henry has been forced to reflect more deeply about what forty years spent handling the human brain has taught him. Moving between encounters with patients in his London hospital, to those he treats in the more extreme circumstances of his work abroad, Henry faces up to the burden of responsibility that can come with trying to reduce human suffering. Unearthing memories of his early days as a medical student, and the experiences that shaped him as a young surgeon, he explores the difficulties of a profession that deals in probabilities rather than certainties, and where the overwhelming urge to prolong life can come at a tragic cost for both patients and for those who love them. In this searing, provocative and deeply personal memoir, the bestselling author of Do No Harm finds new purpose in his own life as he approaches the end of his professional career, and a fresh understanding of what matters to us all in the end.', NULL, 47, 1, 1, '2021-02-28 19:50:28', '2021-02-28 19:50:28'),
(67, 'Washington Black', 'Washington-Black', 'http://books.google.com/books/content?id=D7aUngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=D7aUngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781846689598', 'FROM THE MAN BOOKER AND ORANGE PRIZE SHORTLISTED AUTHOR OF HALF BLOOD BLUES\'A masterpiece\' Attica Locke\'High adventure fraught with cliffhanger twists mark this runaway-slave narrative, which leaps, sails, and soars ... broadens inventive possibilities for the antebellum novel\' Kirkus starred review When two English brothers take the helm of a Barbados sugar plantation, Washington Black - an eleven year-old field slave - finds himself selected as personal servant to one of these men. The eccentric Christopher \'Titch\' Wilde is a naturalist, explorer, scientist, inventor and abolitionist, whose single-minded pursuit of the perfect aerial machine mystifies all around him. Titch\'s idealistic plans are soon shattered and Washington finds himself in mortal danger. They escape the island together, but then then Titch disappears and Washington must make his way alone, following the promise of freedom further than he ever dreamed possible. From the blistering cane fields of Barbados to the icy wastes of the Canadian Arctic, from the mud-drowned streets of London to the eerie deserts of Morocco, Washington Black teems with all the strangeness and mystery of life. Inspired by a true story, Washington Black is the extraordinary tale of a world destroyed and made whole again.', NULL, 48, 1, 1, '2021-02-28 19:50:28', '2021-02-28 19:50:28'),
(68, 'The Overstory', 'The-Overstory', 'http://books.google.com/books/content?id=jO7FwAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=jO7FwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781785151637', 'SHORTLISTED FOR THE MAN BOOKER PRIZE 2018\'Autumn makes me think of leaves, which makes me think of trees, which makes me think of The Overstory,the best novel ever written about trees, and really, just one of the best novels, period.? - Ann Patchett\'It\'s a masterpiece.\' - Tim Winton\'It?s not possible for Powers to write an uninteresting book.\' - Margaret AtwoodA monumental novel about trees and people by one of our most \'prodigiously talented\' (The New York Times Book Review) novelists.The Overstoryunfolds in concentric rings of interlocking fables that range from antebellum New York to the late twentieth-century Timber Wars of the Pacific Northwest and beyond-An Air Force loadmaster in the Vietnam War is shot out of the sky, then saved by falling into a banyan.An artist inherits a hundred years of photographic portraits, all of the same doomed American chestnut.A hard-partying undergraduate in the late 1980s electrocutes herself, dies and is sent back into life by creatures of air and light.A hearing- and speech-impaired scientist discovers that trees are communicating with one another.These four, and five other strangers - each summoned in different ways by trees - are brought together in a last and violent stand to save the continent?s few remaining acres of virgin forest.There is a world alongside ours - vast, slow, interconnected, resourceful, magnificently inventive and almost invisible to us. This is the story of a handful of people who learn how to see that world and who are drawn up into its unfolding catastrophe.', NULL, 49, 1, 1, '2021-02-28 19:50:28', '2021-02-28 19:50:28'),
(69, 'The Flower Girls', 'The-Flower-Girls', 'http://books.google.com/books/content?id=YCCFDwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YCCFDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781526602145', '\'Tense, intriguing and memorable. I couldn\'t put it down\' Sophie HannahTHREE CHILDREN WENT OUT TO PLAY. ONLY TWO CAME BACK. The Flower Girls. Laurel and Primrose. One convicted of murder, the other given a new identity.Now, nineteen years later, another child has gone missing.And the Flower Girls are about to hit the headlines all over again...', NULL, 50, 1, 1, '2021-02-28 19:50:28', '2021-02-28 19:50:28'),
(70, 'The Caldera', 'The-Caldera', 'http://books.google.com/books/content?id=TTA7DwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TTA7DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780399163586', 'On a mission to rescue Empress Justina\'s son from his pirate kidnappers, Hal and the brotherband crew set sail amid stormy seas to the island of Santorillos where they encounter a formidable obstacle, a caldera.', NULL, 51, 1, 1, '2021-02-28 19:50:29', '2021-02-28 19:50:29'),
(71, 'Yaqui Delgado Wants to Kick Your Ass', 'Yaqui-Delgado-Wants-to-Kick-Your-Ass', 'http://books.google.com/books/content?id=1DMS_CTfmwkC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=1DMS_CTfmwkC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780763658595', 'Informed that a bully she does not know is determined to beat her up Latin American teen Piddy Sanchez struggles to learn more about the father she has never met, until the bully\'s gang forces her to confront more difficult challenges.', NULL, 52, 1, 1, '2021-02-28 19:50:29', '2021-02-28 19:50:29'),
(72, 'I See You', 'I-See-You', 'http://books.google.com/books/content?id=b1wRswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=b1wRswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751554144', 'The twisty, gripping number one bestseller from Richard and Judy Book Club winner Clare Mackintosh, author of I Let You Go. When Zoe Walker sees her photo in the classifieds section of a London newspaper, she is determined to find out why it\'s there. There\'s no explanation: just a grainy image, a website address and a phone number. She takes it home to her family, who are convinced it\'s just someone who looks like Zoe. But the next day the advert shows a photo of a different woman, and another the day after that. Is it a mistake? A coincidence? Or is someone keeping track of every move they make . . . If you like Shari Lapena, Paula Hawkins, Rachel Abbott, B A Paris, Fiona Barton, Ruth Ware and CL Taylor, you\'ll love this gripping psychological thriller. **Let Me Lie, the sensational third thriller by Clare Mackintosh is available for pre-order now** Praise for I See You: \'[Clare Mackintosh] hits the jackpot again with a breathless thriller based on a brilliant idea . . . This is an excellent race-against-time thriller with shoals of red herrings to tease and taunt readers all the way. It\'s a must-finish-at-all-costs job\' Daily Mail \'A chilling and original story that should make everybody reconsider the predictability of their behaviour - kept me reading until dawn\', Rachel Abbott, author of The Sixth Window \'Accomplished, Addictive and Thought-Provoking - you\'ll never feel the same about taking the tube again\' B A Paris, author of The Breakdown and Behind Closed Doors \'I See You stands out from the crowd with flawless plotting and an eye for detail which will send a satisfying chill through its readers. I loved it!\' Renee Knight, author of Disclaimer \'Wonderfully sinister. Had me looking over my shoulder every time I travelled on the tube\' Fiona Barton, author of The Widow \'Compelling and suffused with menace\' Sunday Mirror \'Heart-stoppingly excellent\' CL Taylor, author of The Lie \'I See You is both a compelling portrayal of modern family life and a superbly twisty thriller that keeps you guessing until the very last page. An edge of the seat read\' Kate Hamer, author of The Girl in the Red Coat \'Anyone who\'s ever looked over their shoulder when they heard footsteps behind them, or quickened their pace in a deserted underpass, will shudder with recognition at Clare Mackintosh\'s deliciously creepy tale of urban paranoia\' Ruth Ware, author of In a Dark, Dark Wood \'I was gripped from the very first page. Creepy and compelling with a twist I didn\'t see coming. I loved it\' Claire Douglas, author of The Sisters \'As creepy as they come . . . We raced through this deeply unsettling thriller in two days . . . and looked over our shoulder the whole time\' Heat \'Another edge-of-your-seat thriller . . . a terrifyingly plausible plot and gasp-inducing ending\' Good Housekeeping \'With I See You, Clare Mackintosh has achieved something not every author can and produced a book superior to her phenomenal debut. I had chills the entire way through and I can\'t wait to read whatever she comes up with next\' Jenny Blackhurst, author of How I Lost You', NULL, 53, 1, 1, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(73, 'Stone Mothers', 'Stone-Mothers', 'http://books.google.com/books/content?id=LbuXwwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=LbuXwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781444797305', '\'The Victorians used to call their mental hospitals stone mothers,\' I say. \'They thought the design of the building could literally nurse the sick back to health.\' Marianne grew up in the shadow of the old asylum, a place that still haunts her dreams. She was seventeen when she fled the town, her family, her boyfriend Jesse and the body they buried. Now, forced to return, she can feel the past closing around her. And Jesse, who never forgave her for leaving, is finally threatening to expose the truth. Marianne will do anything to protect the life she\'s built; the husband and daughter who must never know. Even if it means turning to her worst enemy... But Marianne may not know the whole story - and she isn\'t the only one with secrets they\'d kill to keep. A lifetime ago, a patient escaped Nazareth mental asylum. They covered their tracks carefully. Or so they thought. Thirty years ago, Marianne Smy committed a crime then fled from her home to leave the past behind. Or so she thought. Now, Marianne has been forced to return. Nazareth asylum has been converted to luxury flats, but its terrible hold on her is still strong. A successful academic, a loving mother and a loyal wife, she fears her secret being revealed and her world shattering. She is right to be scared.', NULL, 54, 1, 1, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(74, 'Tidelands', 'Tidelands', 'http://books.google.com/books/content?id=r1WnxQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=r1WnxQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471172755', '\'Gregory is an experienced storyteller and doesn\'t let you down. Tidelands is a gripping and intelligent portrait of a woman fighting to survive in a hostile world\' THE TIMES THE BRAND NEW SERIES FROM THE SUNDAY TIMES NUMBER ONE BESTSELLING AUTHOR England 1648. A dangerous time for a woman to be different . . . Midsummer\'s Eve, 1648, and England is in the grip of civil war between renegade King and rebellious Parliament. The struggle reaches every corner of the kingdom, even to the remote Tidelands - the marshy landscape of the south coast. Alinor, a descendant of wise women, crushed by poverty and superstition, waits in the graveyard under the full moon for a ghost who will declare her free from her abusive husband. Instead she meets James, a young man on the run, and shows him the secret ways across the treacherous marsh, not knowing that she is leading disaster into the heart of her life. Suspected of possessing dark secrets in superstitious times, Alinor\'s ambition and determination mark her out from her neighbours. This is the time of witch-mania, and Alinor, a woman without a husband, skilled with herbs, suddenly enriched, arouses envy in her rivals and fear among the villagers, who are ready to take lethal action into their own hands. \'The first in a planned series . . . The author crafts her material with effortless ease. Her grasp of social mores is brilliant, the love story rings true and the research is, as ever, of the highest calibre\' Elizabeth Buchan, Daily Mail \'Vivid and beguiling - Philippa Gregory at her best\' woman&home \'A compelling novel that shines a light on the struggles of 17th century women\' Daily Mirror \'The novel\'s power lies in Gregory\'s evocative portrayal of the tidelands and the everyday lives of those who are bound to them\' Sunday Express \'Philippa Gregory returns with an English Civil War novel that excels in everything she does best. Historical events are written with breathless immediacy, keeping the reader enthralled even if they know the outcome. She pays close attention to the plight of women in the past, so often unchanged despite men\'s wars, and gives them a voice . . . Fans will not be disappointed\' Alys Key, The i \'Shines a light on the struggles of 17th century women . . . If this novel is the first sign of what\'s to come then readers are in for a treat\' Emma Lee-Potter, Daily Express \'Tidelands evokes a world of suspense and superstition. Its fascinating fictional heroine, Alinor, is caught in a net of in-between spaces . . . I was completely swept up in this wonderful, immersive story set in the English Civil War when women who lived unconventional lives risked being accused of witchcraft\' Tina Jackson, Writing Magazine', NULL, 55, 1, 1, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(75, 'Phaedra Patrick Book 4', 'Phaedra-Patrick-Book-4', 'http://books.google.com/books/content?id=wnWQwwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=wnWQwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008237677', '\'A wonderfully hope-filled story\' Sarah Haywood, bestselling author \'This charming novel will warm your heart\' The People\'s Friend \'The perfect summer read!\' Suzy K Quinn, bestselling author ***', NULL, 56, 1, 1, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(76, 'Much Ado about Nothing', 'Much-Ado-about-Nothing', 'http://books.google.com/books/content?id=0BC9C63mlCoC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0BC9C63mlCoC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781411401013', 'Presents the original text of Shakespeare\'s play side by side with a modern version, with marginal notes and explanations and full descriptions of each character.', NULL, 57, 1, 1, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(77, 'A Place Called Perfect', 'A-Place-Called-Perfect', 'http://books.google.com/books/content?id=g3W9tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=g3W9tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474924160', 'Violet never wanted to move to Perfect. Who wants to live in a town where everyone has to wear glasses to stop them going blind? And who wants to be neat and tidy and perfectly behaved all the time? Violet quickly discovers there\'s something weird going on in the town - she keeps hearing voices, her mam is acting strange and her dad has disappeared. When she meets Boy she realizes that her dad is not the only person to have vanished ... and that the mysterious Watchers are guarding a perfectly creepy secret!', NULL, 58, 1, 1, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(78, 'The Prison Doctor', 'The-Prison-Doctor', 'http://books.google.com/books/content?id=QO_7uQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=QO_7uQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008311445', 'SUNDAY TIMES TOP TEN BESTSELLER As seen on BBC Breakfast Horrifying, heartbreaking and eye-opening, these are the stories, the patients and the cases that have characterised a career spent being a doctor behind bars. Violence. Drugs. Suicide. Welcome to the world of a Prison Doctor. Dr Amanda Brown has treated inmates in the UK\'s most infamous prisons - first in young offenders\' institutions, then at the notorious Wormwood Scrubs and finally at Europe\'s largest women-only prison in Europe, Bronzefield. From miraculous pregnancies to dirty protests, and from violent attacks on prisoners to heartbreaking acts of self-harm, she has witnessed it all. In this eye-opening, inspirational memoir, Amanda reveals the stories, the patients and the cases that have shaped a career helping those most of us would rather forget. Despite their crimes, she is still their doctor. p> Despite their crimes, she is still their doctor.', NULL, 59, 1, 1, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(79, 'Where the Crawdads Sing', 'Where-the-Crawdads-Sing', 'http://books.google.com/books/content?id=v3nZvQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=v3nZvQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781472154668', '*The multi-million copy bestseller* Soon to be a major film A Number One New York Times Bestseller \'Painfully beautiful\' New York Times \'Unforgettable . . . as engrossing as it is moving\' Daily Mail \'A rare achievement\' The Times \'I can\'t even express how much I love this book!\' Reese Witherspoon ------------------------------------------------- For years, rumors of the \'Marsh Girl\' have haunted Barkley Cove, a quiet town on the North Carolina coast. So in late 1969, when handsome Chase Andrews is found dead, the locals immediately suspect Kya Clark, the so-called Marsh Girl. But Kya is not what they say. Sensitive and intelligent, she has survived for years alone in the marsh that she calls home, finding friends in the gulls and lessons in the sand. Then the time comes when she yearns to be touched and loved. When two young men from town become intrigued by her wild beauty, Kya opens herself to a new life - until the unthinkable happens. ------------------------------------------------- \'[It] will reach a huge audience though the writer\'s old-fashioned talents for compelling character, plotting and landscape description\' The Guardian \'For sheer escapism pick up Where The Crawdads Sing . . . there is writing that takes your breath away\' The Times \'All is not as it seems in this heartbreaking coming-of-age bestseller\' The i newspaper', NULL, 60, 1, 1, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(80, 'I Let You Go', 'I-Let-You-Go', 'http://books.google.com/books/content?id=p0KxoQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=p0KxoQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751554151', 'THE SENSATIONAL SUNDAY TIMES BESTSELLER A tragic accident. It all happened so quickly. She couldn\'t have prevented it. Could she? In a split second, Jenna Gray\'s world descends into a nightmare. Her only hope of moving on is to walk away from everything she knows to start afresh. Desperate to escape, Jenna moves to a remote cottage on the Welsh coast, but she is haunted by her fears, her grief and her memories of a cruel November night that changed her life forever. Slowly, Jenna begins to glimpse the potential for happiness in her future. But her past is about to catch up with her, and the consequences will be devastating . . .', NULL, 53, 1, 1, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(81, 'The Words That Fly Between Us', 'The-Words-That-Fly-Between-Us', 'http://books.google.com/books/content?id=2UF2tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2UF2tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471160646', 'A beautiful, powerful story about finding the strength and words to face your fears, from the author of The Girl in Between From the outside, it looks like Lucy has the perfect life. She has everything. Everything that money can buy. But money can\'t buy Lucy the words she needs to stand up to her bully of a father, the words to escape her suffocating family life, the words to become the person she wants to be. Then Lucy finds an escape route. Every attic on her street is connected, and as she starts to explore the secret lives of her neighbours, Lucy realizes that she is not the only one to suffer in silence. But can she find the strength to climb down and face her fears? \"A wonderful, thought-provoking family drama about finding the power to stand up for yourself\" - Katherine Webber \'Written with a startling observance and bright-hearted clarity, this quietly uplifting book depicts the unspoken tensions, and fears in Lucy\'s seemingly perfect, affluent home\' - Cerrie Burnell​ Praise for The Girl in Between: \'Perfect for fans of David Almond and Katherine Rundell\' - The Guardian \'A compelling and heart-breaking debut with an unexpecting twist, reminiscent of A Monster Calls\' - Glamour magazine \'Pitch-perfect Dublin voice\' - Irish Times \'The Girl in Between\'grabbed me from the start and held on so tight it left bruises\' - Geraldine McCaughrean \'In turns beautiful, devastating and ultimately uplifting, The Girl in Between demands re-reading\' - Zana Fraillon, author of The Bone Sparrow \'Dark, sometimes profound, this is the kind of book that envelops readers in its world, sending them blinking into the light with the voice and images still ringing in their heads\' LoveReading4Kids.co.uk \'A descriptive story that\'s intriguing, emotionally engaging ... with a twist at the end.\' The Book Bag', NULL, 61, 1, 1, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(82, 'The Duchess', 'The-Duchess', 'http://books.google.com/books/content?id=wVXgswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=wVXgswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509800278', 'Orphaned. Betrayed. Determined. Angélique Latham grew up at the magnificent Belgrave Castle with her father, the Duke of Westerfield, after the death of her mother. But when he dies, her half-brothers brutally deny her very existence and send her out into the world alone. At eighteen, Angélique has a keen mind, remarkable beauty and an envelope of money her late father pressed upon her. Unable to secure employment, Angélique desperately makes her way to Paris. To survive, she will need all her resources - and one bold stroke of fortune. Angélique takes an unfamiliar and unimaginable path in setting up what becomes a highly successful business. But she lives on the edge of scandal; can she ever make a life for herself? From England to Paris and New York, Danielle Steel paints a captivating portrait of a woman of unquenchable spirit in The Duchess.', NULL, 62, 1, 1, '2021-02-28 19:50:32', '2021-02-28 19:50:32'),
(83, 'Our Stop', 'Our-Stop', 'http://books.google.com/books/content?id=OQz0uQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=OQz0uQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008320522', '\'Joyful, romantic and life-affirming.\' Red Magazine \'It had me totally gripped.\' Beth O\'Leary, author of The Flatshare \'A love story that is guaranteed to make you smile.\' Closer What if you almost missed the love of your life? Nadia gets the 7.30 train every morning without fail. Well, except if she oversleeps or wakes up at her friend Emma\'s after too much wine. Daniel really does get the 7.30 train every morning, which is easy because he hasn\'t been able to sleep properly since his dad died. One morning, Nadia\'s eye catches sight of a post in the daily paper: To the cute girl with the coffee stains on her dress. I\'m the guy who\'s always standing near the doors... Drink sometime? So begins a not-quite-romance of near-misses, true love, and the power of the written word. A #1 ebook bestseller, this wonderful will-they-won\'t-they romance is perfect for those who loved Beth O\'Leary\'s The Flatshare and Mhairi McFarlane\'s Don\'t You Forget About Me. ****** What readers are saying about Our Stop... \'What a gorgeous, quirky and heart-warming story. It\'s a Sliding Doors for our modern generation and I greedily devoured every page.\' \'Honest, refreshing, brave, progressive, insightful, warm, uplifting and, above all, inspirational. A book that has genuinely had a positive impact on my life. A must-read!\' \'This book delivered in bucket loads - and then some! It is funny, thoughtful, witty, charming and respectful, and was a thoroughly entertaining read that I would really love to see adapted into a film someday!\' \'This is not your stereotypical boy-meets-girl chick lit ... This is an innovative, modern day Sliding Doors style chick lit where you follow the #OurStop journey with Daniel and Nadia.\' \'This book is an ode to You\'ve Got Mail!! It was funny, romantic, simple, yet filled with so much emotion.\'', NULL, 63, 1, 1, '2021-02-28 19:50:32', '2021-02-28 19:50:32'),
(84, 'The Red Scrolls of Magic', 'The-Red-Scrolls-of-Magic', 'http://books.google.com/books/content?id=DdPEwgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=DdPEwgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471162169', 'From #1 New York Times bestseller Cassandra Clare and award-winner Wesley Chu comes the first book in a new series that follows High Warlock Magnus Bane and Alec Lightwood as they tour the world after the Mortal War. The Red Scrolls of Magic is a Shadowhunters novel. All Magnus Bane wanted was a vacation--a lavish trip across Europe with Alec Lightwood, the Shadowhunter who against all odds is finally his boyfriend. But as soon as the pair settles in Paris, an old friend arrives with news about a demon-worshipping cult called the Crimson Hand that is bent on causing chaos around the world. A cult that was apparently founded by Magnus himself. Years ago. As a joke. Now Magnus and Alec must race across Europe to track down the Crimson Hand and its elusive new leader before the cult can cause any more damage. As if it wasn\'t bad enough that their romantic getaway has been sidetracked, demons are now dogging their every step, and it is becoming harder to tell friend from foe. As their quest for answers becomes increasingly dire, Magnus and Alec will have to trust each other more than ever--even if it means revealing the secrets they\'ve both been keeping.', NULL, 64, 1, 1, '2021-02-28 19:50:32', '2021-02-28 19:50:32'),
(85, 'The Other Alice', 'The-Other-Alice', 'http://books.google.com/books/content?id=TW_8rQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TW_8rQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471124273', 'What happens when a tale with real magic, that was supposed to be finished, never was? This is a story about one of those stories . . . Midge loves riddles, his cat, Twitch, and - most of all - stories. Especially because he\'s grown up being read to by his sister Alice, a brilliant writer. When Alice goes missing and a talking cat turns up in her bedroom, Midge searches Alice\'s stories for a clue. Soon he discovers that her secret book, The Museum of Unfinished Stories, is much more than just a story. In fact, he finds two of its characters wandering around town. But every tale has its villains - and with them leaping off the page, Midge, Gypsy and Piper must use all their wits and cunning to work out how the story ends and find Alice. If they fail, a more sinister finale threatens them all . . . A rich and twisting tale of magic, riddles and the power of imagination, from a classic author. \'An exciting, original, gripping adventure, embroidered with riddles and curses, laced with dry wit, and which gallops along at a terrific pace\'Daily Mail \'Beautifully written... a true testament to the power of storytelling\' Guardian \'A story brimming with magic, riddles and extremely mischievous ink. Wonderful storytelling\' Abi Elphinstone, author of the Dreamsnatcher series', NULL, 65, 1, 1, '2021-02-28 19:50:32', '2021-02-28 19:50:32'),
(86, '100 Ways to Be As Happy As Your Dog', '100-Ways-to-Be-As-Happy-As-Your-Dog', 'http://books.google.com/books/content?id=TQsXtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TQsXtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781473689190', '\"Animal behaviour expert and bestselling author Celia Haddon shows you 100 ways in which you, too, can master the art of being happy by learning from your favourite canine companions.\"--Provided by publisher.', NULL, 66, 1, 1, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(87, 'The Idiot Brain', 'The-Idiot-Brain', 'http://books.google.com/books/content?id=C5o_vgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=C5o_vgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781783350827', 'SHORTLISTED FOR THE GOODREADS BEST SCIENCE & TECHNOLOGY BOOK AWARD Motion sickness. Nightmares. Forgetting people\'s names. Why did I walk into this room? For something supposedly so brilliant and evolutionarily advanced, the human brain is pretty messy, fallible and disorganised. In The Idiot Brain neuroscientist Dean Burnett celebrates the imperfections of the human brain in all their glory, and the impact of these quirks on our daily lives. Expertly researched and entertainingly written, this book is for anyone who has wondered why their brain seems to be sabotaging their life, and what on earth it is really up to.', NULL, 67, 1, 1, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(88, 'The Perfect Wife', 'The-Perfect-Wife', 'http://books.google.com/books/content?id=aFV8wgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=aFV8wgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781786488558', 'THE ENTHRALLING NEW PSYCHOLOGICAL THRILLER FROM THE BESTSELLING AUTHOR OF THE GIRL BEFORE \"There\'s something I have to explain, my love,\" he says, taking your hand in his. \"That wasn\'t a dream. It was an upload.\" Abbie wakes in a hospital bed with no memory of how she got there. The man by her side explains that he\'s her husband. He\'s a titan of the tech world, the founder of one of Silicon Valley\'s most innovative startups. He tells Abbie she\'s a gifted artist, a doting mother to their young son, and the perfect wife. Five years ago, she suffered a terrible accident. Her return from the abyss is a miracle of science, a breakthrough in artificial intelligence that has taken him half a decade to achieve. But as Abbie pieces together memories of her marriage, she begins questioning her husband\'s motives - and his version of events. Can she trust him when he says he wants them to be together for ever? And what really happened to her, half a decade ago? ********** See what everyone is saying about JP Delaney, the hottest new name in psychological thrillers: \'DAZZLING\' - Lee Child \'ADDICTIVE\' - Daily Express \'DEVASTATING\' - Daily Mail \'INGENIOUS\' - New York Times \'COMPULSIVE\' - Glamour Magazine \'ELEGANT\' - Peter James \'SEXY\' - Mail on Sunday \'ENTHRALLING\' - Woman and Home \'ORIGINAL\' - The Times \'RIVETING\' - Lisa Gardner \'CREEPY\' - Heat \'SATISFYING\' - Reader\'s Digest \'SUPERIOR\' - The Bookseller \'MORE THAN A MATCH FOR PAULA HAWKINS\' - Sunday Times', NULL, 68, 1, 1, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(89, 'Transcription', 'Transcription', 'http://books.google.com/books/content?id=kwxwuQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=kwxwuQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780552776653', '\"In 1940, eighteen-year old Juliet Armstrong is reluctantly recruited into the world of espionage. Sent to an obscure department of MI5 tasked with monitoring the comings and goings of British Fascist sympathisers, she discovers the work to be by turns both tedious and terrifying. But after the war has ended, she presumes the events of those years have been relegated to the past forever. Ten years later, now a radio producer at the BBC, Juliet is unexpectedly confronted by figures from her past. A different war is being fought now, on a different battleground, but Juliet finds herself once more under threat. A bill of reckoning is due, and she finally begins to realise that there is no action without consequence.\" --Cover.', NULL, 69, 1, 1, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(90, 'Butterfly in Frost', 'Butterfly-in-Frost', 'http://books.google.com/books/content?id=RskoxQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=RskoxQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781542016735', 'From #1 New York Times bestselling phenomenon Sylvia Day comes a hotly anticipated and passionate new love story. Once, I would never have imagined myself here. But I\'m settled now. In a place I love, in a home I renovated, spending time with new friends I adore, and working a job that fulfills me. I am reconciling the past and laying the groundwork for the future. Then Garrett Frost moves in next door. He\'s obstinate and too bold, a raging force of nature that disrupts the careful order of my life. I recognize the ghosts that haunt him, the torment driving him. Garrett would be risky in any form, but wounded, he\'s far more dangerous. I fear I\'m too fragile for the storm raging inside him, too delicate to withstand the pain that buffets him. But he\'s too determined...and too tempting. And sometimes hope soars above even the iciest desolation. Emotional and heartrending, Butterfly in Frost marks a brilliant return by global sensation Sylvia Day, the #1 international multimillion bestselling author of the Crossfire saga.', NULL, 70, 1, 1, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(91, 'The Marshmallow Test', 'The-Marshmallow-Test', 'http://books.google.com/books/content?id=oaiGCgAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=oaiGCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780552168861', 'A child is presented with a marshmallow and given a choice: Eat this one now, or wait and enjoy two later. What will she do? And what are the implications for her behaviour later in life? Walter Mischel\'s now iconic \'marshmallow test,\' one of the most famous experiments in the history of psychology, proved that the ability to delay gratification is critical to living a successful and fulfilling life: self-control not only predicts higher marks in school, better social and cognitive functioning, and a greater sense of self-worth; it also helps us manage stress, pursue goals more effectively, and cope with painful emotions. But is willpower prewired, or can it be taught? In his groundbreaking new book, Dr. Mischel draws on decades of compelling research and life examples to explore the nature of willpower, identifying the cognitive skills and mental mechanisms that enable it and showing how these can be applied to challenges in everyday life--from weight control to quitting smoking, overcoming heartbreak, making major decisions, and planning for retirement. With profound implications for the choices we make in parenting, education, public policy and self-care, The Marshmallow Test will change the way we think about who we are and what we can be. And since, as Mischel argues, a life with too much self-control can be as unfulfilling as one with too little, this book will also teach you when it\'s time to ring the bell and enjoy that marshmallow.', NULL, 71, 1, 1, '2021-02-28 19:50:34', '2021-02-28 19:50:34'),
(92, 'The Guest List', 'The-Guest-List', 'http://books.google.com/books/content?id=S3w4zQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=S3w4zQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008297190', '', NULL, 35, 1, 1, '2021-02-28 19:50:34', '2021-02-28 19:50:34'),
(93, 'Me Before You', 'Me-Before-You', 'http://books.google.com/books/content?id=8GNA-OzYFuwC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8GNA-OzYFuwC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780718157838', 'Lou Clark knows lots of things. She knows how many footsteps there are between the bus stop and home. She knows she likes working in The Buttered Bun tea shop and she knows she might not love her boyfriend Patrick. Will Traynor knows his motorcycle accident took away his desire to live. He knows everything feels very small and rather joyless now and he knows exactly how he\'s going to put a stop to that. What Will doesn\'t know is that Lou is about to burst into his world in a riot of colour. And neither of them knows they\'re going to change the other for all time.', NULL, 72, 1, 1, '2021-02-28 19:50:34', '2021-02-28 19:50:34'),
(94, 'Two Can Keep a Secret', 'Two-Can-Keep-a-Secret', 'http://books.google.com/books/content?id=zrdKuQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zrdKuQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141375656', '_____ A perfect town is hiding secrets. Two teenagers are dead. Two murders unsolved. And a killer who claims to be coming back. _____ Ellery\'s never been to Echo Ridge, but she\'s heard all about it. It\'s where her aunt went missing at age sixteen, never to return. Where a Homecoming Queen\'s murder five years ago made national news. And where Ellery now has to live with a grandmother she barely knows, after her failed-actress mother lands in rehab. _____ Malcolm grew up in the shadow of the Homecoming Queen\'s death. His older brother was the prime suspect and left Echo Ridge in disgrace. His mother\'s remarriage vaulted them to Echo Ridge\'s upper crust, but it could all change when mysterious threats around town hint that a killer plans to strike again. And the return of Malcolm\'s brother doesn\'t help matters. But his return is just a coincidence... isn\'t it? Ellery and Malcolm both know it\'s hard to let go when you don\'t have closure. Then another girl disappears. As they race to unravel what happened, they realise every secret has layers in Echo Ridge. The truth might be closer to home than either of them want to believe. And somebody would kill to keep it hidden.', NULL, 73, 1, 1, '2021-02-28 19:50:35', '2021-02-28 19:50:35'),
(95, 'The Seven Endless Forests', 'The-Seven-Endless-Forests', 'http://books.google.com/books/content?id=Y9wDyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Y9wDyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471170027', 'The gorgeous standalone companion to the critically acclaimed fantasy, The Boneless Mercies.', NULL, 74, 1, 1, '2021-02-28 19:50:35', '2021-02-28 19:50:35'),
(96, 'Do the Birds Still Sing in Hell?', 'Do-the-Birds-Still-Sing-in-Hell?', 'http://books.google.com/books/content?id=zs7lxQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zs7lxQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781789461619', 'The incredible true story of how of one British soldier escaped a prisoner war camp 200 times to see the girl he loved.', NULL, 75, 1, 1, '2021-02-28 19:50:35', '2021-02-28 19:50:35'),
(97, 'The Forgotten Letters of Esther Durrant', 'The-Forgotten-Letters-of-Esther-Durrant', 'http://books.google.com/books/content?id=Om-8wQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Om-8wQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409190561', '\'I loved this exquisitely written novel and drank in every word. The Forgotten Letters of Esther Durrant is a reminder of the redemptive nature of love, and that it can be found in the most unexpected places.\' Fiona Valpy, bestselling author of The Dressmaker\'s Gift and The Beekeeper\'s Promise An abandoned woman... 1951. Esther Durrant, a young mother, is committed to an asylum by her husband. Run by a pioneering psychiatrist, the hospital is at first Esther\'s prison - but can captivity lead to freedom? A forbidden love... 2018. When free-spirited marine scientist Rachel Parker is forced to take shelter on an isolated island off the Cornish Coast during a research posting, she discovers a collection of hidden love letters. Captivated by their passion and tenderness, Rachel is determined to find the intended recipient. A dangerous secret... Meanwhile, in London, Eve is helping her grandmother write her memoirs. When she is contacted by Rachel, it sets in motion a chain of events that threatens to reveal secrets kept buried for more than sixty years. Three women bound together by a heartbreaking secret. A love story that needs to be told. This beautifully haunting and atmospheric novel, will sweep fans of Kate Morton, Elizabeth Gilbert and Emily Gunnis away this summer. \'If you enjoyed \"City of Girls,\" by Elizabeth Gilbert, read \"The Forgotten Letters of Esther Durrant,\" by Kayte Nunn\' Washington Post NetGalley reviewers are falling in love with The Forgotten Letters of Esther Durrant: \'Loved, loved this book. The multi layers wove an intriguing tale, and this was a well researched engaging and heart rending story.\' \'Beautifully written\' \'An absorbing tale set mainly in the Channel Islands. I wanted to know what the resolution would be, so stayed up to read to the end!\' Praise for Katye Nunn\'s The Botanist\'s Daughter: \'A sweeping and exotic read. I was completely swept away. Perfect for readers of Kate Morton.\' Lorna Cook, bestselling author of \'The Forgotten Village\' \'The whole book is a delight... Perfect reading whilst sipping a g & t in a beautiful garden somewhere in the sun!\' Rosanna Ley, bestselling author of \'The Lemon Tree Hotel\' \'I loved this book and really look forward to reading the next book by Kayte Nunn; perfect for reading in the garden with a glass of something cold.\' Bookliterat \'Fast-moving and full of surprises...while delivering a poignant and heart-warming story of romance and new beginnings \' Kate Forsyth \'The Botanist\'s Daughter is a quick paced but mysterious read, which transports you across time and place and is filled with an abundance of flowers.\' Foreword Books \'The Botanist\'s Daughter is an intriguing story about the strength of women who, for their own reasons, are willing to travel halfway across the world and end up with the same goal. It\'s also a family mystery that slowly reveals its secrets, just like a blooming flower.\' The Bookish Gurl 5/5 stars', NULL, 76, 1, 1, '2021-02-28 19:50:35', '2021-02-28 19:50:35'),
(98, 'One Good Deed', 'One-Good-Deed', 'http://books.google.com/books/content?id=iahfyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=iahfyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781529027501', 'Murder and family secrets, a touch of romance and deeply-felt revenge - with the twist of all twists - make up the perfect page-turning thriller, One Good Deed, from one of the world\'s bestselling thriller writers, David Baldacci. \'One of his finest books. Great character, great story, great portrait of an era\' Bill Clinton In 1949, Aloysius Archer arrives in the dusty Southern town of Poca City. He has nothing but a handful of dollars, the clothes he\'s wearing and an appointment with his new parole officer. After his wartime experiences in Italy and a prison sentence for a crime he didn\'t commit, Archer is looking for a fresh start and a peaceful life. On his first night of freedom, Archer meets local business tycoon Hank Pittleman, who promises Archer handsome compensation to work as his debt collector. Yet Archer takes on more than he bargains for, as he becomes embroiled in a long-running feud between the drought-struck town\'s most dangerous residents. When one of them dies, the authorities label Archer as their number one suspect. A bloody game is being played above and below the law. Everybody playing has a deeply buried secret, and Archer must uncover them all - if he\'s to avoid going back behind bars.', NULL, 77, 1, 1, '2021-02-28 19:50:36', '2021-02-28 19:50:36');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(99, 'The Geography of Friendship: Women\'s Weekly Book of the Month', 'The-Geography-of-Friendship:-Women\'s-Weekly-Book-of-the-Month', 'http://books.google.com/books/content?id=CbARugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=CbARugEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781789550184', 'Women\'s Weekly Book Club Great Read When three women set off on a hike through the wilderness they are anticipating the adventure of a lifetime. Over the next five days, as they face up to the challenging terrain, it soon becomes clear they are not alone. Lisa, Samantha and Nicole have known each other since school. Lisa is a fighter, Samantha a peacekeeper and Nicole a rule follower. United they bring out the best in one another. Only once it is too late for them to turn back do they appreciate the danger they are in. Their friendship is tested, and each of them must make a choice that will change their lives forever. What Reviewers and Readers Say: \'The atmosphere is so charged, I often found myself clenching my jaw and getting goosebumps as I read. The descriptions of the Australian bush are so vibrant and evocative... The bush feels alive in this book - vast, daunting and full of lurking dangers... Heartbreakingly honest and fiercely emotional... a remarkable book that is bound to appeal to fans of Jane Harper and Liane Moriarty\' Honey \'Piper gloriously demonstrates how to hook your readers and make them desperate to know the ending... Piper\'s novel is an exploration of how the past can come to define ourselves, and a testament to the bonds of complicated friendship and to the relentless, isolating and utterly terrifying nature of the Australian bush\' Books + Publishing Review \'There\'s a little bit of Big Little Lies about this deft and powerful study of female friendships under pressure... this lyrical Queensland-based author has a style and tone all of her own which sucks you in and holds you in its seductive embrace, almost unable to breathe... a page-turner... a book dripping in the raw beauty of the Australian landscape\' Women\'s Weekly Australia \'Piper has achieved that glorious, decisive moment in any great novel where the reader becomes desperate to know the ending. If you loved Jane Harper\'s Force of Nature, prepare yourself for another page-turning adventure\' Readings Monthly \'An ambitiousnovel\' Weekend Australian', NULL, 78, 1, 1, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(100, 'The Raven Boys', 'The-Raven-Boys', 'http://books.google.com/books/content?id=81i1LgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=81i1LgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407134611', 'This is the first book in a brand new series from bestselling author, Maggie Stiefvater. Fans of SHIVER (9781407115009), LINGER (9781407121086) and FOREVER (9781407121116) will love this new quartet! Blue has spent the majority of her sixteen years being told that if she kisses her true love, he will die. When Blue meets Gansey\'s spirit on the corpse road she knows there is only one reason why - either he is her true love or she has killed him. Determined to find out the truth, Blue becomes involved with the Raven Boys, four boys from the local private school (lead by Gansey) who are on a quest to discover Glendower - a lost ancient Welsh King who is buried somewhere along the Virginia ley line. Whoever finds him will be granted a supernatural favour. Never before has Blue felt such magic around her. But is Gansey her true love? She can\'t imagine a time she would feel like that, and she is adamant not to be the reason for his death. Where will fate lead them? Look out for the next book, THE DREAM THIEVES, out 18th September 2013!', NULL, 79, 1, 1, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(101, 'If You Were Here', 'If-You-Were-Here', 'http://books.google.com/books/content?id=50DisgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=50DisgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471153525', '\'\'If You Were Here is a moving and emotional story about facing a life-altering dilemma head-on and summoning the courage to cope with it\'\' JILL MANSELL \'\'A beautiful story about living life to the fullest and having the courage to overcome adversity\'\' PAIGE TOON When her daughter Beth dies suddenly, Peggy Andrews is left to pick up the pieces and take care of her granddaughter Flo. But sorting through Beth\'\'s things reveals a secret never told: Beth was sick, with the same genetic condition that claimed her father\'\'s life, and now Peggy must decide whether to keep the secret or risk destroying her granddaughter\'\'s world. Five years later, Flo is engaged and moving to New York with her fiancé. Peggy never told her what she discovered, but with Flo looking towards her future, Peggy realises it\'\'s time to come clean and reveal that her granddaughter\'\'s life might also be at risk. As Flo struggles to decide her own path, she is faced with the same life-altering questions her mother asked herself years before: if a test could decide your future, would you take it? An emotional, inspiring and uplifting novel, IF YOU WERE HERE will break your heart and put it back together again. The brand new novel from the acclaimed author of A Song for Tomorrow, perfect for fans of Hannah Beckerman, Dani Atkins and Jill Mansell EVERYONE is talking about If You Were Here: \'\'A moving, beautifully written emotional roller coaster of a book that is utterly absorbing\'\' Heat \'\'If You Were Here is a powerful, moving and well researched multi-generational tale filled with characters you really care about and who will stay with you long after you read the final page. A must read!\'\' MIKE GAYLE, bestselling author of The Man I Think I Know \'\'The decision to live in blissful ignorance or face reality head-on is at the emotional core of this beautifully written tale\'\' WOMAN \'\'A compelling story about family love at its most complicated. Alice has created characters with real warmth and heart, who take on a life of their own and will go on existing in readers\'\' heads long after the last page has been turned\'\' DAISY BUCHANAN \'\'A courageous story, beautifully told, full of hope and heart. I was invested from the very first page\'\' HEIDI SWAIN \'\'An emotional, thought-provoking romance told with compassion and hope\'\' My Weekly \'\'A gorgeous book. Life-affirming, clever and packed full of emotion\'\' ANSTEY HARRIS, bestselling author of The Truths and Triumphs of Grace Atherton \'\'A thought-provoking, beautiful book\'\' Fabulous \'\'Alice demonstrates yet again a remarkable ability to open up her readers\'\' hearts and draw us into her story as if it were our own. I loved it\'\' KATE FURNIVALL \'\'Full of heart-warming characters, it\'\'ll make you think about how much you want to know about your future\'\' Prima \'\'A beautiful story about making difficult choices, but ultimately - about choosing to live\'\' RACHEL CULLEN, author of Running for my Life \'\'An unforgettable rollercoaster of a book\'\' AMANDA BROOKE \'\'Stunning and captivating\'\' KATIE MARSH, bestselling author of This Beautiful Life \'\'A beautifully structured, big-hearted novel which ultimately explores how true love - be that romantic, familial and everything in between - conquers all. I looked forward to going to bed every night to read it. Utterly life-affirming and just gorgeous\'\' KATY REGAN', NULL, 80, 1, 1, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(102, 'One Wish', 'One-Wish', 'http://books.google.com/books/content?id=rGB0ngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rGB0ngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471121654', 'Having the ability to see fairies means that Tanya Fairchild\'s life has never been easy. After all, real fairies are nothing like the ones in books; ones that grant wishes or leave money for teeth. Real fairies don\'t like to be talked about, and they cast spells if Tanya steps out of line. The most she\'s ever received in exchange for one of her teeth is a chewed up toffee. Of course, it would help if Tanya knew someone - anyone - else who could see them, too . . . When Tanya meets Ratty, she finds not only that can he see fairies, but that he has a fairy friend, Turpin. Turpin is rude and spiteful, but funny and loyal too. When Ratty goes missing, Tanya discovers her new friend has another extraordinary ability; an ability that has the potential to destroy them both . . .', NULL, 65, 1, 1, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(103, 'Permission Marketing', 'Permission-Marketing', 'http://books.google.com/books/content?id=W7ITAQAAIAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=W7ITAQAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781416526667', 'Whether it is the TV commercial that breaks into our favourite programme or the telemarketing phone call that disrupts a family meal, traditional advertising is based on the hope of snaring our attention away from whatever we are doing. Seth Godin calls this Interruption Marketing, and, as companies are discovering, it no longer works. Instead of annoying potential customers by interrupting their most coveted commodity, time, Permission Marketing offers consumers incentives to voluntarily accept advertising. Now the Internet pioneer who has dramatically improved marketing effectiveness in media introduces a fundamentally different way of thinking about advertising products and services. By reaching out to only those individuals who have expressed an interest in learning more about a product, Permission Marketing enables companies to develop long-term relationships with customers, create trust, build brand awareness, and greatly improve the chances of making a sale.', NULL, 81, 1, 1, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(104, 'My Husband\'s Lies', 'My-Husband\'s-Lies', 'http://books.google.com/books/content?id=8fHaswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8fHaswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008260255', '\"On the afternoon of Nick and Lisa\'s wedding, their close friend is found poised on a hotel window ledge, ready to jump. As the shock hits their friendship group, they soon realise that none of them are being as honest with themselves - or with each other - as they think. And there are secrets lurking that could destroy everything.\"--Provided by publisher.', NULL, 82, 1, 1, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(105, 'Sapiens', 'Sapiens', 'http://books.google.com/books/content?id=uJ_CoAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=uJ_CoAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780099590088', 'THE SUNDAY TIMES BESTSELLER Planet Earth is 4.5 billion years old. In just a fraction of that time, one species among countless others has conquered it. Us. We are the most advanced and most destructive animals ever to have lived. What makes us brilliant? What makes us deadly? What makes us Sapiens? In this bold and provocative book, Yuval Noah Harari explores who we are, how we got here and where weâe(tm)re going. Sapiens is a thrilling account of humankindâe(tm)s extraordinary history âe\" from the Stone Age to the Silicon Age âe\" and our journey from insignificant apes to rulers of the world âe~It tackles the biggest questions of history and of the modern world, and it is written in unforgettably vivid language. You will love it!âe(tm) Jared Diamond, author of Guns, Germs and Steel For more, visit www.ynharari.com', NULL, 83, 1, 1, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(106, 'The Defence', 'The-Defence', 'http://books.google.com/books/content?id=FBu9ngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=FBu9ngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409152316', '\'Everything a great thriller should be and I can\'t wait to see more of Eddie Flynn.\' Mark Billingham \'So Hollywood, punchy and cool and pacy as hell.\' Eva Dolan Eddie Flynn has 48 hours to save his daughter... Eddie Flynn used to be a con artist. Then he became a lawyer. Turned out the two weren\'t that different. It\'s been over a year since Eddie vowed never to set foot in a courtroom again. But now he doesn\'t have a choice. Olek Volchek, the infamous head of the Russian mafia in New York, has strapped a bomb to Eddie\'s back and kidnapped his ten-year-old daughter, Amy. Eddie only has forty-eight hours to defend Volchek in an impossible murder trial - and win - if he wants to save his daughter. Under the scrutiny of the media and the FBI, Eddie must use his razor-sharp wit and every con-artist trick in the book to defend his \'client\' and ensure Amy\'s safety. With the timer on his back ticking away, can Eddie convince the jury of the impossible? Praise for race-against-time legal thriller writer, Steve Cavanagh: \'A gripping, twisty thriller\' Ian Rankin, number 1 bestselling author of Rather Be The Devil \'Legal thrillers are my blind spot, but I\'ll always make an exception for Steve Cavanagh. Quite simply, THE PLEA is one of the most purely entertaining books you\'ll read this year. It\'s a blast.\' John Connolly, bestselling author of the Charlie Parker series \'In the crowded field of legal thrillers, Steve Cavanagh stands head and shoulders above the competition, with his skilfully plotted, action-packed and big-hearted Eddie Flynn novels . . . highly intelligent, twist-laden and absolutely unputdownable\' Eva Dolan, author of the critically acclaimed Tell No Tales \'A cleverly constructed legal thriller combined with a classic locked-room mystery. Eddie Flynn is fast becoming one of my favourite fictional heroes and Cavanagh one of my favourite thriller writers.\' S.J.I. Holliday, author of Black Wood \'Raymond Chandler could have created Eddie Flynn. THE PLEA is Phillip Marlowe and Michael Connolly\'s Mickey Haller combined, with a bit of Jim Thompson\'s THE GRIFTERS thrown in. A superb read with a main character destined to be one of the most talked about in crime fiction.\' Howard Linskey, author of The Search If you like John Grisham, Lee Child and Michael Connelly, you will LOVE the gripping and twisty Eddie Flynn series: 1. The Defence 2. The Plea 3. The Liar * Each Eddie Flynn thriller can be read as a standalone or in series order *', NULL, 84, 1, 1, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(107, 'The Liar', 'The-Liar', 'http://books.google.com/books/content?id=hRczswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=hRczswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409152392', '***WINNER OF THE CWA GOLD DAGGER AWARD 2018*** A MISSING GIRL. A DESPERATE FATHER. A CASE WHICH WILL TEAR THEM APART. \'Plotting that takes the breath away\' Ian Rankin \'A fantastic thriller writer\' Mark Billingham * * * * * WHO IS DEADLIER ... Leonard Howell\'s worst nightmare has come true: his daughter Caroline has been kidnapped. He can\'t rely on the cops, so Howell calls the only man he trusts to get her back. THE MAN WHO KNOWS THE TRUTH Eddie Flynn knows what it\'s like to lose a daughter and vows to bring Caroline home safe. Once a con artist, now a hotshot criminal attorney, Flynn is no stranger to the shady New York underworld. ... OR THE ONE WHO BELIEVES A LIE? However, as he steps back into his old life, Flynn realizes that the rules of the game have changed - and that he is being played. But who is pulling the strings? And is anyone in this twisted case telling the truth...? * * * * * An ingenious plot, gripping action and characters who leap off the page: discover why readers love Steve Cavanagh: \'Cavanagh stands head and shoulders above the competition, with his skilfully plotted, action-packed and big-hearted Eddie Flynn novels . . . highly intelligent, twist-laden and absolutely unputdownable\' Eva Dolan, author of the critically acclaimed Tell No Tales \'What a thriller! Breathlessly brilliant and fiendishly clever\' Miranda Dickinson \'A cleverly constructed legal thriller combined with a classic locked-room mystery. Eddie Flynn is fast becoming one of my favourite fictional heroes and Cavanagh one of my favourite thriller writers.\' S.J.I. Holliday, author of Black Wood \'Raymond Chandler could have created Eddie Flynn. THE PLEA is Phillip Marlowe and Michael Connolly\'s Mickey Haller combined, with a bit of Jim Thompson\'s THE GRIFTERS thrown in. A superb read with a main character destined to be one of the most talked about in crime fiction.\' Howard Linskey, author of The Search * If you like John Grisham, Lee Child and Michael Connelly, you will LOVE the gripping and twisty Eddie Flynn series: 1. The Defence 2. The Plea 3. The Liar * Each Eddie Flynn thriller can be read as a standalone or in series order *', NULL, 84, 1, 1, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(108, 'The Plea', 'The-Plea', 'http://books.google.com/books/content?id=HXiIDAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=HXiIDAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409152354', 'Your client is innocent. Your wife is guilty. Who would you fight for? * \'Quite simply, THE PLEA is one of the most purely entertaining books you\'ll read this year\' John Connolly \'A gripping thriller\' Ian Rankin * When David Child, a major client of a corrupt New York law firm, is arrested for murder, the FBI ask con artist-turned-lawyer Eddie Flynn to persuade him to testify against the firm. Eddie is not someone who is easily coerced, but when the FBI reveal that they have incriminating files on his wife, he knows he has no choice. But Eddie is convinced the man is innocent, despite overwhelming evidence to the contrary. With the FBI putting pressure on him to secure the deal, Eddie must find a way to prove his client\'s innocence. But the stakes are high - his wife is in danger. And not just from the FBI . . . * Praise for race-against-time legal thriller writer, Steve Cavanagh: \'A fantastic thriller writer\' Mark Billingham \'Cavanagh stands head and shoulders above the competition, with his skilfully plotted, action-packed and big-hearted Eddie Flynn novels . . . highly intelligent, twist-laden and absolutely unputdownable\' Eva Dolan, author of the critically acclaimed Tell No Tales \'What a thriller! Breathlessly brilliant and fiendishly clever\' Miranda Dickinson \'A cleverly constructed legal thriller combined with a classic locked-room mystery. Eddie Flynn is fast becoming one of my favourite fictional heroes and Cavanagh one of my favourite thriller writers.\' S.J.I. Holliday, author of Black Wood \'Raymond Chandler could have created Eddie Flynn. THE PLEA is Phillip Marlowe and Michael Connolly\'s Mickey Haller combined, with a bit of Jim Thompson\'s THE GRIFTERS thrown in. A superb read with a main character destined to be one of the most talked about in crime fiction.\' Howard Linskey, author of The Search * If you like John Grisham, Lee Child and Michael Connelly, you will LOVE the gripping and twisty Eddie Flynn series: 1. The Defence 2. The Plea 3. The Liar 4. Thirteen * Each Eddie Flynn thriller can be read as a standalone or in series order *', NULL, 84, 1, 1, '2021-02-28 19:50:38', '2021-02-28 19:50:38'),
(109, 'Man\'s Search for Meaning', 'Man\'s-Search-for-Meaning', 'http://books.google.com/books/content?id=VsoliwGIMZUC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VsoliwGIMZUC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781844132393', '16 MILLION COPIES SOLD \'A book to read, to cherish, to debate, and one that will ultimately keep the memories of the victims alive\' John Boyne, author of The Boy in the Striped Pyjamas A prominent Viennese psychiatrist before the war, Viktor Frankl was uniquely able to observe the way that both he and others in Auschwitz coped (or didn\'t) with the experience. He noticed that it was the men who comforted others and who gave away their last piece of bread who survived the longest - and who offered proof that everything can be taken away from us except the ability to choose our attitude in any given set of circumstances. The sort of person the concentration camp prisoner became was the result of an inner decision and not of camp influences alone. Frankl came to believe man\'s deepest desire is to search for meaning and purpose. This outstanding work offers us all a way to transcend suffering and find significance in the art of living.', NULL, 85, 1, 1, '2021-02-28 19:50:38', '2021-02-28 19:50:38'),
(110, 'Keep Her Close', 'Keep-Her-Close', 'http://books.google.com/books/content?id=3XiYtQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3XiYtQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008293772', '', NULL, 86, 1, 1, '2021-02-28 19:50:38', '2021-02-28 19:50:38'),
(111, 'The Snake Trap', 'The-Snake-Trap', 'http://books.google.com/books/content?id=aIAbrgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=aIAbrgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447238980', 'Following a death-defying escape from the hands of a criminal overlord, young PI Travis Delaney thinks he might finally be getting closer to finding out who killed his parents, and why. But things are about to get a whole lot more deadly. One moment Travis is trapped in an armed face-off in the offices of Delaney & Co, private investigators. The next, terrorists have stormed the building and he\'s been abducted. As the truth begins to emerge, Travis is faced with the ultimate dilemma: How do you choose between saving your own life or saving the life of someone you love? Following a death-defying escape from the hands of a criminal overlord, young PI Travis Delaney thinks he might finally be getting closer to finding out who killed his parents, and why. But things are about to get a whole lot more deadly. One moment Travis is trapped in an armed face-off in the offices of Delaney & Co, private investigators. The next, terrorists have stormed the building and he\'s been abducted. Kept captive alongside Winston, the rogue security officer who Travis believes is responsible for his parents\' death, Travis is quickly plagued by more questions than answers. As the truth begins to emerge, Travis is faced with the ultimate dilemma: how do you choose between saving your own life or saving the life of someone you love?', NULL, 87, 1, 1, '2021-02-28 19:50:39', '2021-02-28 19:50:39'),
(112, 'The Good Mother', 'The-Good-Mother', 'http://books.google.com/books/content?id=nzNDjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=nzNDjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751565300', 'One ordinary afternoon, Fairlie Winter receives a devastating phone call - her best friend is dead. Jenna Rudolph was a devoted mother and wife and has left behind her young son, Henry, and her grief-stricken husband, Ark. The circumstances surrounding Jenna\'s death, while tragic, seem to be clear-cut yet Fairlie can\'t shake the feeling that Jenna was hiding something. And then Fairlie receives a letter. From Jenna. Posted before she died. The contents of that letter force Fairlie on a journey to discover the truth - a truth that she may not be ready for. Driven by her need for answers, she uncovers a horrifying past of two desperate mothers and the tragic choices they made for their children and she must ask herself, is there such a thing as loving your child too much? Heart-breaking, tender and dramatic, The Good Mother is a story about the price of motherhood and the unthinkable things we do in the name of love.', NULL, 88, 1, 1, '2021-02-28 19:50:39', '2021-02-28 19:50:39'),
(113, 'Sharp Objects', 'Sharp-Objects', 'http://books.google.com/books/content?id=YdJ9AAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YdJ9AAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780753822210', 'Some scars never heal . . . An addictive thriller from the author of the mega bestseller GONE GIRL. When two girls are abducted and killed in Missouri, journalist Camille Preaker is sent back to her home town to report on the crimes. Long-haunted by a childhood tragedy and estranged from her mother for years, Camille suddenly finds herself installed once again in her family\'s mansion, reacquainting herself with her distant mother and the half-sister she barely knows - a precocious 13-year-old who holds a disquieting grip on the town. As Camille works to uncover the truth about these violent crimes, she finds herself identifying with the young victims - a bit too strongly. Clues keep leading to dead ends, forcing Camille to unravel the psychological puzzle of her own past to get at the story. Dogged by her own demons, Camille will have to confront what happened to her years before if she wants to survive this homecoming.', NULL, 89, 1, 1, '2021-02-28 19:50:39', '2021-02-28 19:50:39'),
(114, 'The Fire Child', 'The-Fire-Child', 'http://books.google.com/books/content?id=vw2LDAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vw2LDAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008105860', 'The chilling new psychological thriller by S. K. Tremayne, author of the Sunday Times No. 1 bestseller, THE ICE TWINS. IT TOOK ONLY SIX WORDS TO SHATTER HER DREAMS... When Rachel marries handsome David and moves to a beautiful house in Cornwall, she gains wealth, love, and an affectionate stepson, Jamie. But then Jamie\'s behaviour changes, and her perfect life begins to unravel. He makes disturbing predictions, claiming to be haunted by the spectre of his late mother. As September slips away and December looms, Rachel grows increasingly suspicious of her husband - and begins to suspect there might be truth in Jamie\'s words: \'YOU WILL BE DEAD BY CHRISTMAS\'', NULL, 90, 1, 1, '2021-02-28 19:50:39', '2021-02-28 19:50:39'),
(115, 'The Night Stalker', 'The-Night-Stalker', 'http://books.google.com/books/content?id=w_HpswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=w_HpswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751571295', '\'Absolutely brilliant ...impossible to put this book down! ... A must read\' The Quiet Knitter If the Night Stalker is watching, you\'re already dead... In the dead of a swelteringly hot summer\'s night, Detective Erika Foster is called to a murder scene. The victim, a doctor, is found suffocated in bed. His wrists are bound and his eyes bulging through a clear plastic bag tied tight over his head. A few days later, another victim is found dead, in exactly the same circumstances. As Erika and her team start digging deeper, they discover a calculated serial killer - stalking their victims before choosing the right moment to strike. The victims are all single men, with very private lives. Why are their pasts shrouded in secrecy? And what links them to the killer? As a heat wave descends upon London, Erika will do everything to stop the Night Stalker before the body count rises, even if it means risking her job. But the victims might not be the only ones being watched... Erika\'s own life could be on the line. The global bestselling author of The Girl in the Ice is back with a heart-racing, electrifying thriller. If you love Angela Marsons, Rachel Abbott and Peter James, you\'ll be hooked on Robert Bryndza. Read what people are saying about The Night Stalker \'The Night Stalker is dark, fast-paced and shot through with wit and psychological insight. I couldn\'t put it down.\' Mark Edwards \'Erika is fast becoming one of my favourite detectives...I absolutely loved this heart-pounding, fast-paced, chilling crime thriller.\' The Book Review Caf� \'Just when I thought it couldn\'t get any better...From the first page, we\'re sucked in with tension that had me holding my breath.\' The Suspense is Thrilling Me \'A truly brilliant crime series...The Night Stalker made me feel like I had been swept up in a whirlwind and had me clinging on for dear life, only letting me go right at the very end.\' By The Letter Book Reviews \'Intense, suspenseful, and clever??...a gripping page turner that is disturbingly real, and I highly recommend it.\' What\'s Better Than Books? \'A truly fantastic and exciting serial killer chiller!\' Booklover Catlady \'The Night Stalker is a very gripping, engaging read full of nail-biting tension. Once I started reading it, I couldn\'t stop!...an amazing work of fiction no reader of the crime genre should miss.\' Relax and Read Reviews \'I think any fans of a good police procedural will become completely engaged in this series featuring a gritty and determined strong female lead.\' Carrie\'s Book Reviews \'This book grabbed me by the throat and didn\'t let go till I got to the end.\' Sincerely Book Angels The Night Stalker now a Wall Street Journal #1 best seller', NULL, 91, 1, 1, '2021-02-28 19:50:40', '2021-02-28 19:50:40'),
(116, 'The Giver of Stars', 'The-Giver-of-Stars', 'http://books.google.com/books/content?id=X-_nwgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=X-_nwgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780718183202', 'THE SPELLBINDING SUNDAY TIMES BESTSELLER & REESE WITHERSPOON BOOK CLUB PICK - FROM THE AUTHOR OF ME BEFORE YOU \'Inspiring and wildly romantic\' DAILY MAIL BOOKS OF THE YEAR \'Her best novel yet. The most appealing thing is Moyes\' wonderful way with romance\' THE TIMES ___________ The greatest love story is the one you least expect . . . Alice is stifled, bored, and misunderstood. So when she meets wealthy and handsome American, Bennett Van Cleve, she is quickly swept off her feet. Marrying him and moving to America seems like a great adventure - but life as a newlywed in stuffy Baileyville, Kentucky, is not at all what she hoped for. Until, that is, she responds to a call for volunteers to start a travelling library, surprising herself by saying yes, before her husband can say no . . . Led by feisty and rebellious Margery O\'Hare, this unlikely group of women travel far and wide on their mission to bring books and reading to those that need it, and Alice finally finds the freedom, friendship and love that she\'s been looking for. But not everyone approves of what they are doing, especially her new father-in-law. And when the town turns against them, will their belief in each other and their work be enough? The Giver of Stars is a mesmerising tale of female friendship, romance, and the wonder of books and reading, inspired by a remarkable true story. __________ GOOD HOUSEKEEPING BOOKS OF THE YEAR \'So amazing and transportive. I\'m the biggest Jojo Moyes fan. It is so beautifully written\' REESE WITHERSPOON \'Extraordinary. The best thing she has written since Me Before You\' METRO \'An entertaining, immersive and moving read\' THE SUNDAY TIMES \'Intensely moving and crammed with romance and emotion\' SUN \'Packed full of romance, tension and brilliantly drawn characters\' SUNDAY POST \'A beautiful, special novel. I loved it and didn\'t want it to end!\' LIANE MORIARTY, author of Big Little Lies \'Moyes\' best yet\' SUNDAY POST \'My favourite of 2019\' 5***** READER REVIEW \'Epic\' DAVID NICHOLLS, bestselling author of One Day \'I laughed and I cried. Could not put it down\' 5***** READER REVIEW \'The most sweeping, dramatic, richly evocative book, full of brilliantly feisty women\' SOPHIE KINSELLA, bestselling author of The Confessions of a Shopaholic', NULL, 72, 1, 1, '2021-02-28 19:50:40', '2021-02-28 19:50:40'),
(117, 'The Stranger Diaries', 'The-Stranger-Diaries', 'http://books.google.com/books/content?id=QVPBtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=QVPBtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781786487391', 'THE TIMES CRIME BOOK OF THE YEAR THE RADIO 2 BOOK CLUB PICK \'Utterly bewitching ... a pitch-perfect modern Gothic\' AJ FINN, author of THE WOMAN IN THE WINDOW \'Compelling, intelligent and increasingly mesmerising\' PETER JAMES \'At once a homage to the Gothic thriller, and a re-imagining, it is goose-bump spooky, smart, and haunting, in every sense. I loved this book! And you will too\' LOUISE PENNY A dark story has been brought to terrifying life. Can the ending be rewritten in time? Clare Cassidy is no stranger to tales of murder. As a literature teacher specialising in the Gothic writer R.M. Holland, she teaches a short course on them every year. Then Clare\'s life and work collide tragically when one of her colleagues is found dead, a line from an R.M. Holland story by her body. The investigating police detective is convinced the writer\'s works somehow hold the key to the case. Not knowing who to trust, and afraid that the killer is someone she knows, Clare confides her darkest suspicions and fears about the case to her journal. Then one day she notices some other writing in the diary. Writing that isn\'t hers...', NULL, 92, 1, 1, '2021-02-28 19:50:40', '2021-02-28 19:50:40'),
(118, 'Competitive Advantage', 'Competitive-Advantage', 'http://books.google.com/books/content?id=PpZxQgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PpZxQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780743260879', 'Now beyond its eleventh printing and translated into twelve languages, Michael Porter’s The Competitive Advantage of Nations has changed completely our conception of how prosperity is created and sustained in the modern global economy. Porter’s groundbreaking study of international competitiveness has shaped national policy in countries around the world. It has also transformed thinking and action in states, cities, companies, and even entire regions such as Central America. Based on research in ten leading trading nations, The Competitive Advantage of Nations offers the first theory of competitiveness based on the causes of the productivity with which companies compete. Porter shows how traditional comparative advantages such as natural resources and pools of labor have been superseded as sources of prosperity, and how broad macroeconomic accounts of competitiveness are insufficient. The book introduces Porter’s “diamond,” a whole new way to understand the competitive position of a nation (or other locations) in global competition that is now an integral part of international business thinking. Porter\'s concept of “clusters,” or groups of interconnected firms, suppliers, related industries, and institutions that arise in particular locations, has become a new way for companies and governments to think about economies, assess the competitive advantage of locations, and set public policy. Even before publication of the book, Porter’s theory had guided national reassessments in New Zealand and elsewhere. His ideas and personal involvement have shaped strategy in countries as diverse as the Netherlands, Portugal, Taiwan, Costa Rica, and India, and regions such as Massachusetts, California, and the Basque country. Hundreds of cluster initiatives have flourished throughout the world. In an era of intensifying global competition, this pathbreaking book on the new wealth of nations has become the standard by which all future work must be measured.', NULL, 93, 1, 1, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(119, 'How to Win Friends and Influence People in the Digital Age', 'How-to-Win-Friends-and-Influence-People-in-the-Digital-Age', 'http://books.google.com/books/content?id=4AKsuQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4AKsuQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857207289', 'Since its initial publication, How to Win Friends and Influence People has sold a total of 15 million copies. The book continues to sell briskly today, but Carnegie never anticipated the ways in which the digital age would provide new tools and challenges for winning friends and influencing people. The advent of social networking sites, the dominance of email, and the ways in which the Internet has supplanted face-to-face interactions have made Carnegie\'s precepts all the more immediate and vital. Brent Cole, working in tandem with Dale Carnegie & Associates, Inc., has reimagined the original book for the digital age, updating and reframing Carnegie\'s insights about communication, self expression, and leadership.', NULL, 94, 1, 1, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(120, 'Find Your Why', 'Find-Your-Why', 'http://books.google.com/books/content?id=zYCkDAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zYCkDAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241279267', 'Simon Sinek\'s recent video on \'The Millennial Question\' went viral with over 150 million views. Find Your Why is the follow up to Start with Why, the global bestseller and the subject of the third most watched TED Talk of all time. With Start With Why, Simon Sinek inspired a movement to build a world in which the vast majority of us can feel safe while we are at work and fulfilled when we go home at night. Now, along with two of his colleagues, Peter Docker and David Mead, Sinek has created a guide to the most important step any business can take- finding your why. This easy-to-follow guide starts with the search for your personal why, and then expands to helping your colleagues find your organization\'s why. With detailed instructions on every stage in the process, the book also answer common concerns, such as- What if my why sounds like my competitor\'s? Can you have more than one why? And, if my work doesn\'t match my why, what do I do? Whether you\'re entry level or a CEO, whether your team is run by the founder or a recent hire, these simple steps will lead you on a path to a more fulfilling life and long-term success for you and your colleagues.', NULL, 95, 1, 1, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(121, 'The Death of Her', 'The-Death-of-Her', 'http://books.google.com/books/content?id=xYjTswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=xYjTswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509834662', 'The Death of Her is a haunting psychological thriller from Debbie Howells, author of the bestselling Richard and Judy Book Club success The Bones of You. A woman\'s body is discovered on a Cornish farm, battered and left for dead in a maize field. Airlifted to hospital, her life hanging in the balance, no one\'s sure who she is. Three days later she comes round, but her memory is damaged. She knows her name - Evie - but no more, until she remembers another name. Angel - her three-year-old daughter. As the police circulate Evie\'s photo, someone recognizes her. Charlotte knew her years ago, at school, when another child went missing. Leah Danning, who vanished whilst in Evie\'s care. When the police search Evie\'s home, there\'s no sign of Angel. More disturbingly, there\'s no evidence that she ever lived there, forcing the police to question whether Evie\'s having some kind of breakdown. But even from the darkest place she\'s ever known, Evie believes her daughter is alive. The police remain unconvinced - unaware that on the fringes of Evie\'s life, there\'s someone else. Someone hidden, watching her every move, with their own agenda and their own twisted version of reality.', NULL, 96, 1, 1, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(122, 'No Escape', 'No-Escape', 'http://books.google.com/books/content?id=UUSZswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=UUSZswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008293406', '*Previously published as The Blue* \'A thrilling page turner . . . a beautifully written, compelling mystery that you won\'t want to put down\' C.L. Taylor When there\'s danger in paradise, will you be the one to stay alive? With a quick spin of the globe, Kitty and Lana escape their grey reality and journey to the Philippines. There they discover The Blue - a beautiful yacht, with a wandering crew. They spend day after languorous day exploring the pristine white beaches and swimming beneath the stars, and Lanadrifts further away from the long-buried secrets of home. But the tide turns when death creeps quietly on deck. A dangerous swell of mistrust and lies threatens to bring the crew\'s adventures to an end - but some won\'t let paradise go...whatever the price.', NULL, 97, 1, 1, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(123, 'Her Name Was Rose', 'Her-Name-Was-Rose', 'http://books.google.com/books/content?id=c_kStAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=c_kStAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008275051', '\'AMAZING. I read it in one go. I was totally hooked.\' MARIAN KEYES \'Utterly addictive. Compulsive, twisty, tense.\' CLAIRE DOUGLAS, author of Local Girl Missing Her name was Rose. You watched her die. And her death has created a vacancy. When Emily lets a stranger step out in front of her, she never imagines that split second will change her life. But after Emily watches a car plough into the young mother - killing her instantly - she finds herself unable to move on. And then she makes a decision she can never take back. Because Rose had everything Emily had ever dreamed of. A beautiful, loving family, a great job and a stunning home. And now Rose\'s husband misses his wife, and their son needs a mother. Why couldn\'t Emily fill that space? But as Emily is about to discover, no one\'s life is perfect ... and not everything is as it seems.', NULL, 98, 1, 1, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(124, 'One Little Lie', 'One-Little-Lie', 'http://books.google.com/books/content?id=6Z4DtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6Z4DtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008300814', '\'I\'m Alice. And my son is a murderer.\' Deborah\'s son was killed four years ago.Alice\'s son is in prison for committing that crime. Deborah would give anything to have her boy back, and Alice would do anything to right her son\'s wrongs. Driven by guilt and the need for redemption, Alice has started a support group for parents with troubled children. But as the network begins to grow, she soon finds out just how easy it is for one little lie to spiral out of control... They call it mother\'s intuition, but can you ever really know your own child? A twisty and unnerving thriller about the price of motherhood and the unthinkable things we do to protect our children. Perfect for fans of B A Paris and Clare Mackintosh.', NULL, 99, 1, 1, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(125, 'The Doll House', 'The-Doll-House', 'http://books.google.com/books/content?id=YPaNuQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YPaNuQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008320669', 'You never know who\'s watching... Corinne\'s life might look perfect on the outside, but after three failed IVF attempts it\'s her last chance to have a baby. And when she finds a tiny part of a doll house outside her flat, it feels as if it\'s a sign. But as more pieces begin to turn up, Corinne realises that they are far too familiar. Someone knows about the miniature rocking horse and the little doll with its red velvet dress. Someone has been inside her house... How does the stranger know so much about her life? How long have they been watching? And what are they waiting for...?', NULL, 100, 1, 1, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(126, 'Nothing More', 'Nothing-More', 'http://books.google.com/books/content?id=vK-oDAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vK-oDAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781501152870', '', NULL, 101, 1, 1, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(127, 'Origin', 'Origin', 'http://books.google.com/books/content?id=pNGnswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=pNGnswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780552174169', 'The spellbinding new Robert Langdon novelfrom the author of The Da Vinci Code. Robert Langdon, Harvard professor of symbology and religious iconology, arrives at the Guggenheim Museum Bilbao to attend the unveiling of a discovery that owill change the face of science forevero. The evening\'s host is his friend and former student, Edmond Kirsch, a forty-year-old tech magnate whose dazzling inventions and audacious predictions have made him a controversial figure around the world. This evening is to be no exception- he claims he will reveal an astonishing scientific breakthrough to challenge the fundamentals of human existence. But Langdon and several hundred other guests are left reeling when the meticulously orchestrated evening is blown apart before Kirsch\'s precious discovery can be revealed. With his life under threat, Langdon is forced into a desperate bid to escape, along with the museum\'s director, Ambra Vidal. Together they flee to Barcelona on a perilous quest to locate a cryptic password that will unlock Kirsch\'s secret. In their path lie dark forces which will do anything to stop them. To evade a tormented enemy who is one step ahead of them at every turn, Langdon and Vidal must navigate labyrinthine passageways of hidden history and ancient religion. On a trail marked only by enigmatic symbols and elusive modern art, Langdon and Vidal uncover the clues that will bring them face-to-face with a world-shaking truth that has remained buried - until now. \'Dan Brown is the master of the intellectual cliffhanger\' Wall Street Journal \'As engaging a hero as you could wish for\' Mail on Sunday \'For anyone who wants more brain-food than thrillers normally provide\' Sunday Times', NULL, 102, 1, 1, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(128, 'Shell', 'Shell', 'http://books.google.com/books/content?id=J2t1swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=J2t1swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407180250', 'What if you thought you had died, only to wake up in someone else\'s body? When Lucy, a teen diagnosed with terminal cancer wakes up cancer-free, it should be a dream come true. But faced with a life she didn\'t choose and trapped in a new body, Lucy must face the biggest question of all . . . How far would you go to save the one you love?', NULL, 103, 1, 1, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(129, 'The God of Small Things', 'The-God-of-Small-Things', 'http://books.google.com/books/content?id=TivPHPkYx_EC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TivPHPkYx_EC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780006550686', 'A banquet for all the senses, said Newsweek of this bestselling and Booker Prize-winning literary novel--a richly textured first book about the tragic decline of one family whose members suffer the terrible consequences of forbidden love.', NULL, 104, 1, 1, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(130, 'Fly Away', 'Fly-Away', 'http://books.google.com/books/content?id=vHr8AgAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vHr8AgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447229544', 'How do you hold yourself together when your world has fallen apart . . . Celebrity news reporter and presenter, Tully Hart, has hit rock bottom. Kate Ryan had been her best friend for more than thirty years. They’d lived, laughed, danced and cried together. Kate had been her anchor, and now Tully was cast adrift – not knowing how she was going to survive. Kate’s daughter, Marah, was only sixteen years old when her mother died. Consumed with guilt over the fights they’d had during the last months of Kate’s life, Marah runs away and becomes a drop-out in society, maintaining no contact with her family. Tully’s mother, Cloud, a child of the Sixties, has lived a world of her own dependent on drugs for most of her adult life. She now wants to prove that she can help her daughter. But what will it take for Tully to forgive? And then something momentous happens which causes each one of them to realise what they’ve done, and what they have become. FLY AWAY is the story of three women who have lost their way and need each other – plus a miracle – to transform their lives.', NULL, 105, 1, 1, '2021-02-28 19:50:43', '2021-02-28 19:50:43');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(131, 'A Little Piece of Ground', 'A-Little-Piece-of-Ground', 'http://books.google.com/books/content?id=6BGlswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6BGlswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509887637', 'In Elizabeth Laird\'s A Little Piece of Ground, twelve-year-old Karim Aboudi and his family are trapped in their Ramallah home by a strict curfew. Israeli tanks control the city in response to a Palestinian suicide bombing. Karim longs to play football with his mates - being stuck inside with his teenage brother and fearful parents is driving him crazy. When the curfew ends, he and his friend discover an unused patch of ground that\'s the perfect site for a football pitch. Nearby, an old car hidden intact under bulldozed buildings makes a brilliant den. But in this city there\'s constant danger, even for schoolboys. And when Israeli soldiers find Karim outside during the next curfew, it seems impossible that he will survive . . .\'A fine book, and a daring book\' Michael Morpurgo', NULL, 106, 1, 1, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(132, 'Oranges in No Man\'s Land', 'Oranges-in-No-Man\'s-Land', 'http://books.google.com/books/content?id=S3HFDAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=S3HFDAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509802920', 'Since her father left Lebanon to find work and her mother tragically died in a shell attack, ten-year-old Ayesha has been living in the bomb-ravaged city of Beirut with her granny and her two younger brothers. The city has been torn in half by civil war and a desolate, dangerous no man\'s land divides the two sides. Only militiamen and tanks dare enter this deadly zone, but when Granny falls desperately ill Ayesha sets off on a terrifying journey to reach a doctor living in enemy territory.', NULL, 106, 1, 1, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(133, 'Entanglement', 'Entanglement', 'http://books.google.com/books/content?id=4Ms5swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4Ms5swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008245689', 'A wise debut\' Observer \'A hugely impressive debut\' Stella Duffy \'Beautifully written\' Hannah Beckerman \'A really accomplished debut\' Red Magazine On a hot October day in a London park, Stella sits in her red wedding dress opposite John. Pregnant and lost in thoughts of the future, she has no idea that lying in the grass, a stone\'s throw away, is a man called Charlie. From this moment, Stella and Charlie\'s lives are bound together in ways they could never imagine. But all they have is a shared glance and a feeling: have we met before? Entanglement is a bewitching novel of love and sacrifice which explores how our choices can reverberate across the generations, and the sparks of hope they can ignite.', NULL, 107, 1, 1, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(134, 'Restart', 'Restart', 'http://books.google.com/books/content?id=_F7IAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_F7IAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338053807', 'When Chase returns to middle school after falling off the roof and losing his memory, he learns that the person he was before the amnesia is not someone he likes.', NULL, 108, 1, 1, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(135, 'Smells Like Treasure', 'Smells-Like-Treasure', '', '', '9780316044028', 'Homer Pudding and his treasure-sniffing best friend, Dog, are about to go on an all-new adventure! When Homer receives a mysterious note emblazoned with the letters L.O.S.T., he knows the moment he has been waiting for has finally arrived. It is time to meet the Society of Legends, Objects, Secrets, and Treasures and become a true adventurer. With Dog at his side, everything seems to be going as planned...until an unexpected opponent challenges Homer\'s spot. They are tasked with a dangerous quest, and only the one who solves the clues and reaches the treasure first will be given membership. Their hunt for treasure takes them on an unforgettable journey full of hazards, mysteries, and surprises!', NULL, 109, 1, 1, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(136, 'Ruins', 'Ruins', 'http://books.google.com/books/content?id=RhJ4ngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=RhJ4ngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007465248', 'As a war between the humans and the Partials looms, Samm finds himself trapped beyond a toxic wasteland, and Kira finds herself under the control of Dr. Morgan who is desperate to save the Partials.', NULL, 110, 1, 1, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(137, 'The Silent Companions', 'The-Silent-Companions', 'http://books.google.com/books/content?id=Vl9LDwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Vl9LDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408888032', 'As featured on the Radio 2 Book Club. Some doors are locked for a reason...Newly married, newly widowed Elsie is sent to see out her pregnancy at her late husband\'s crumbling country estate, The Bridge.With her new servants resentful and the local villagers actively hostile, Elsie only has her husband\'s awkward cousin for company. Or so she thinks. For inside her new home lies a locked room, and beyond that door lies a two-hundred-year-old diary and a deeply unsettling painted wooden figure - a Silent Companion - that bears a striking resemblance to Elsie herself...', NULL, 111, 1, 1, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(138, 'A Long Way Gone', 'A-Long-Way-Gone', 'http://books.google.com/books/content?id=FgtoPgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=FgtoPgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007247097', 'This is how wars are fought now by children, hopped up on drugs, and wielding AK-47s. In the more than fifty violent conflicts going on worldwide, it is estimated that there are some 300,000 child soldiers. Ishmael Beah used to be one of them. How does one become a killer? How does one stop? Child soldiers have been profiled by journalists, and novelists have struggled to imagine their lives. But it is rare to find a first-person account from someone who endured this hell and survived. In\" A Long Way Gone Beah,\" now twenty-six years old, tells a riveting story in his own words: how, at the age of twelve, he fled attacking rebels and wandered a land rendered unrecognizable by violence. By thirteen, he\'d been picked up by the government army, and Beah, at heart a gentle boy, found that he was capable of truly terrible acts. This is a rare and mesmerizing account, told with real literary force and heartbreaking honesty.', NULL, 112, 1, 1, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(139, 'Don\'t Let Go', 'Don\'t-Let-Go', 'http://books.google.com/books/content?id=rRzUwAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rRzUwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781784751159', '***THE GLOBAL #1 BESTSELLER*** __________________________ A SMALL TOWN IS HIDING BIG SECRETS ... Fifteen years ago in New Jersey, a teenage boy and girl were found dead. Most people concluded it was a tragic suicide pact. The dead boy\'s brother, Nap Dumas, did not. Now Nap is a cop - but he\'s a cop who plays by his own rules, and who has never made peace with his past. And when the past comes back to haunt him, Nap discovers secrets can kill... __________________________ From the international bestselling author of Homeand Fool Me Once, and the creator of the Netflix hit Safe. __________________________ \'The modern master of the hook and twist, luring you in on the first page only to shock you on the last\' - Dan Brown \'Coben is a phenomenon- the most reliable of American thriller-writers, the least likely to disappoint ... the true mystery is Coben\'s extraordinary capacity to keep writing such wonderful thrillers\' - The Times \'As moreishas ever\' - Sunday Times \'Simply one of the all-time greats - pick up any one of his thrillers and you\'ll find a riveting, twisty, surprising story with a big, beating heart at its core.\' - Gillian Flynn \'Harlan Coben is a folk poet of the suburbsand his well-tuned new mystery, Don\'t Let Go shows why ... This kind of writing is what we call poetry.\' - New York Times', NULL, 113, 1, 1, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(140, 'Diversify', 'Diversify', 'http://books.google.com/books/content?id=HIzKtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=HIzKtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008242084', 'Could inclusivity be the key to success? The truth is, inclusion is better for everyone. In this empowering call to arms, updated for 2019, June Sarpong MBE proves why. Putting the spotlight on groups who are often marginalised in our society, including women, ethnic minorities, those living with disabilities, and the LGBTQ+ community, Diversify uncovers the hidden cost of exclusion and shows how a new approach to how we learn, live and do business can solve some of the most stubborn challenges we face. With unshakeable case studies, brand-new research from Oxford University, and six revolutionary steps to help you overcome unconscious bias, this book will help you become part of a better society. The old way isn\'t working. This is a case for change. [Taken from Blackwell\'s website].', NULL, 114, 1, 1, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(141, 'Ash Princess', 'Ash-Princess', 'http://books.google.com/books/content?id=gENUswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gENUswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509855209', 'Theodosia was six when her country was invaded and her mother, the Queen of Flame and Fury, was murdered before her eyes. Ten years later, Theo has learned to survive under the relentless abuse of the Kaiser and his court as the ridiculed Ash Princess. When the Kaiser forces her to execute her last hope of rescue, Theo can\'t ignore her feelings and memories any longer. She vows revenge, throwing herself into a plot to seduce and murder the Kaiser\'s warrior son with the help of a group of magically gifted and volatile rebels. But Theo doesn\'t expect to develop feelings for the Prinz. Forced to make impossible choices and unable to trust even those who are on her side, Theo will have to decide how far she\'s willing to go to save her people and how much of herself she\'s willing to sacrifice to become Queen.From author Laura Sebastian comes Ash Princess, a nail-biting YA fantasy debut full of daring and vengeance.', NULL, 115, 1, 1, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(142, 'The Binding', 'The-Binding', 'http://books.google.com/books/content?id=ipvOwQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ipvOwQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008272142', 'LOSE YOURSELF IN THE BREAKOUT SENSATION OF THE YEAR SHORTLISTED FOR WATERSTONES BOOK OF THE YEAR 2019 \'Brilliant\' Joanna Cannon \'Spellbinding\' Guardian \'Magic\' Erin Kelly \'Immersive\' Sunday Times \'Gorgeous\' Stella Duffy \'Astounding\' Anna Mazzola Emmett Farmer is a binder\'s apprentice. His job is to hand-craft beautiful books and, within each, to capture something unique and extraordinary: a memory. If you have something you want to forget, or a secret to hide, he can bind it - and you will never have to remember the pain it caused. In a vault under his mentor\'s workshop, row upon row of books - and secrets - are meticulously stored and recorded. Then one day Emmett makes an astonishing discovery: one of the volumes has his name on it.', NULL, 116, 1, 1, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(143, 'Simple Acts of Kindness', 'Simple-Acts-of-Kindness', 'http://books.google.com/books/content?id=0EA5DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=0EA5DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781507205679', 'Practice kindness every day with these easy, accessible activities that range from helping the elderly to supporting animal welfare to protecting the local environment. In Simple Acts of Kindness, you’ll discover many ways to bring help and happiness to those around you, including: -Calling your elderly relatives just to say hello -Bringing a box of doughnuts to the office to share with your coworkers -Thanking your driver as you get off the bus These simple activities make it easy to be kinder every day and provide support to those who need it most. With this book in hand, you can easily make a positive difference in today’s society.', NULL, 117, 1, 1, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(144, 'Maybe One Day', 'Maybe-One-Day', 'http://books.google.com/books/content?id=uONyyQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=uONyyQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409187981', '\'A laugh-cry lovely book from first page to last.\' Milly Johnson For years, Jess has been told that the only man she ever loved abandoned her when she needed him most. But when she discovers a hidden box of cards and letters, she realises her life has been built on a foundation of lies. Fuelled by the words of the man she thought she\'d lost, she follows in his footsteps, tracing his path in the hope she might find him again. Though years have passed and people change, in her heart Jess hopes that, maybe one day, they will be whole again. A tender and moving novel that will break your heart and put it back together again. Praise for Maybe One Day: \'Clever and wise, brimming with warmth and poignancy. For all of us who have ever harboured a \'what might have been\' regret, this is a must-read.\' Carmel Harrington \'A heart-warming story... There\'s humour, tears and above all, hope.\' Catherine Isaac', NULL, 118, 1, 1, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(145, 'Broken Throne', 'Broken-Throne', 'http://books.google.com/books/content?id=PZ7lwAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PZ7lwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409178811', 'The perfect addition to the #1 New York Times bestselling Red Queen series,Broken Throne features three brand-new novellas, alongside two previously published novellas, Steel Scars and Queen Song- as well as never-before-seen maps, flags, bonus scenes, journal entries, and much more exclusive content.Fans will be delighted to catch up with beloved characters after the drama of War Storm and be excited to hear from brand-new voices as well. This stunning collection is not to be missed.', NULL, 119, 1, 1, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(146, 'Mr Salary', 'Mr-Salary', 'http://books.google.com/books/content?id=YRw4ugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YRw4ugEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780571351954', 'My love for him felt so total and so annihilating that it was often impossible for me to see him clearly at all. Years ago, Sukie moved in with Nathan because her mother was dead and her father was difficult, and she had nowhere else to go. Now they are on the brink of the inevitable. Sally Rooney is one of the most acclaimed young talents of recent years. With her minute attention to the power dynamics in everyday speech, she builds up sexual tension and throws a deceptively low-key glance at love and death.', NULL, 120, 1, 1, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(147, 'A Man Called Ove', 'A-Man-Called-Ove', 'http://books.google.com/books/content?id=_Ii2oQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_Ii2oQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781444775815', 'The million-copy bestselling phenomenon, Fredrik Backman\'s heartwarming debut is a funny, moving, uplifting tale of love and community that will leave you with a spring in your step. Perfect for fans of Rachel Joyce\'s The Unlikely Pilgrimage of Harold Fry, Graeme Simsion\'s The Rosie Project and David Nicholl\'s US. New York Times bestseller \'Warm, funny, and almost unbearably moving\' Daily Mail \'Rescued all those men who constantly mean to read novels but never get round to it\' Spectator Books of the Year At first sight, Ove is almost certainly the grumpiest man you will ever meet. He thinks himself surrounded by idiots - neighbours who can\'t reverse a trailer properly, joggers, shop assistants who talk in code, and the perpetrators of the vicious coup d\'etat that ousted him as Chairman of the Residents\' Association. He will persist in making his daily inspection rounds of the local streets. But isn\'t it rare, these days, to find such old-fashioned clarity of belief and deed? Such unswerving conviction about what the world should be, and a lifelong dedication to making it just so? In the end, you will see, there is something about Ove that is quite irresistible...', NULL, 121, 1, 1, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(148, 'Britt-Marie Was Here', 'Britt-Marie-Was-Here', 'http://books.google.com/books/content?id=c2GoDAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=c2GoDAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781473617230', 'The number 1 European bestseller by the author of New York Times bestseller and international phenomenon A Man Called Ove, Britt-Marie was Here is a funny, poignant and uplifting tale of love, community, and second chances. For as long as anyone can remember, Britt-Marie has been an acquired taste. It\'s not that she\'s judgemental, or fussy, or difficult - she just expects things to be done in a certain way. A cutlery drawer should be arranged in the right order, for example (forks, knives, then spoons). We\'re not animals, are we? But behind the passive-aggressive, socially awkward, absurdly pedantic busybody is a woman who has more imagination, bigger dreams and a warmer heart than anyone around her realizes. So when Britt-Marie finds herself unemployed, separated from her husband of 20 years, left to fend for herself in the miserable provincial backwater that is Borg - of which the kindest thing one can say is that it has a road going through it - and somehow tasked with running the local football team, she is a little unprepared. But she will learn that life may have more to offer her that she\'s ever realised, and love might be found in the most unexpected of places.', NULL, 121, 1, 1, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(149, 'The Angel', 'The-Angel', 'http://books.google.com/books/content?id=JyRFvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=JyRFvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008209131', 'The Queen of Grip-lit is back... \'A terrific story, originally told. All hail the new Queen of Crime!\' HEAT \'A web of a plot that twists and turns and keeps the reader on the edge of their seat. This formidable debut is a page-turner, but don\'t read it before bed if you\'re easily spooked!\' SUN THE TRUTH WON\'T STAY LOCKED UP FOREVER', NULL, 122, 1, 1, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(150, 'The Confession', 'The-Confession', 'http://books.google.com/books/content?id=3-PzywEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3-PzywEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509886197', 'The sensational Sunday Times bestseller from Jessie Burton, the million-copy bestselling author of The Miniaturist and The Muse. When Elise Morceau meets the writer Constance Holden, she quickly falls under her spell. Connie is sophisticated, bold and alluring - everything Elise feels she is not. She follows Connie to LA, but in this city of strange dreams and razzle-dazzle, Elise feels even more out of her depth and makes an impulsive decision that will change her life forever. Three decades later, Rose Simmons is trying to uncover the story of her mother, who disappeared when she was a baby. Having learned that the last person to see her was a now reclusive novelist, Rose finds herself at the door of Constance Holden\'s house in search of a confession . . . \'Without doubt one of the best novels of recent years\' - Elizabeth Day', NULL, 123, 1, 1, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(151, 'The Child', 'The-Child', 'http://books.google.com/books/content?id=IvMltAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=IvMltAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780552172455', 'THE SUNDAY TIMES BESTSELLER, NOW A RICHARD AND JUDY BOOK CLUB PICK \'Clever and compelling. You\'ll love THE CHILD\' Clare Mackintosh, author of LET ME LIE \'An engrossing, irresistible story about the coming to light of a long-buried secret. An absolutely fabulous read - I loved it!\' Shari Lapena, author of THE COUPLE NEXT DOOR \'Tense, tantalising and ultimately very satisfying . . . definitely one of the year\'s must-reads\' Lee Child ******** When a paragraph in an evening newspaper reveals a decades-old tragedy, most readers barely give it a glance. But for three strangers it\'s impossible to ignore. For one woman, it\'s a reminder of the worst thing that ever happened to her. For another, it reveals the dangerous possibility that her darkest secret is about to be discovered. And for the third, a journalist, it\'s the first clue in a hunt to uncover the truth. The Child\'s story will be told. ******** \'I loved this gripping story that kept me guessing to the end\' Liz Nugent \'Fiona Barton is a major new talent\' M J Arlidge', NULL, 124, 1, 1, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(152, 'UNTITLED COLE 3 OF 3', 'UNTITLED-COLE-3-OF-3', '', '', '9781409168867', '', NULL, 125, 1, 1, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(153, 'The Bookshop', 'The-Bookshop', 'http://books.google.com/books/content?id=LzrzEIM6B7YC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=LzrzEIM6B7YC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780006543541', '\"A gem, a vintage narrative...a classic whose force as a piece of physical and moral map-making has not merely lasted but has actually improved in the passage of years.\" \'New York Times\' In the small East Anglian coastal town of Hardborough, Florence Green decides, against polite but ruthless local opposition, to open a bookshop. Hardborough quickly becomes a battleground - for Florence has tried to change the way things have always been done. As a result, she has to take on not only the people who have made themselves important, but natural and even supernatural forces too. Her fate will strike a chord with anyone who knows that life has treated them with less than justice. \"Penelope Fitzgerald\'s resources of odd people are impressively rich. And this is not just a gallery of quirky still lives; these people appear in vignettes, wryly, even comically animated...A marvellously piercing fiction.\" \'TLS\' \"Solid and satisfying. Every action in it matters, however small.\" \'Spectator\'', NULL, 126, 1, 1, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(154, 'The Wife\'s Shadow', 'The-Wife\'s-Shadow', 'http://books.google.com/books/content?id=pN9eswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=pN9eswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780349418698', '\'If you enjoyed BBC\'s Doctor Foster, then you will happily devour this novel about a woman hiding a dark past\' Woman and Home Every woman has a secret... From one of Elle magazine\'s \'authors to watch\' comes a suspenseful and emotionally fraught novel about how little we really know the person we marry. For fans of The Affair and Dr Foster. Everyone admires Suzy and her doll\'s house life. She has a gorgeous family, a beautiful home and a successful business. But Suzy hasn\'t always been in control. In her past lies a shadowy tale of fear and instability - a life that she once ran away from, and has hidden from ever since. When Suzy starts being followed, she fears that her past may finally be catching up with her. And when she finds herself unable to do what to her is the most important thing - keep her loved ones safe - she has to decide how far she\'d be willing to go to win everything back. Even if it means sacrificing everything she knows and loves... \'A very involving story\' Morning Star What readers are saying about The Wife\'s Shadow: \'I couldn\'t put it down\' ***** \'Gripping from beginning to end\' ***** \'Beautifully written... darkly twisted... loved every minute\' ***** \'What an addictive read!\' ***** \'A gripping page turner\' *****', NULL, 127, 1, 1, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(155, 'War Storm', 'War-Storm', 'http://books.google.com/books/content?id=49m_ugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=49m_ugEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409175995', 'The #1 bestselling Red Queen series by Victoria Aveyard comes to a stunning conclusion in this fourth and final book. VICTORY COMES AT A PRICE. Mare Barrow learned this all too well when Cal\'s betrayal nearly destroyed her. Now determined to protect her heart-and secure freedom for Reds and newbloods like her-Mare resolves to overthrow the kingdom of Norta once and for all . . . starting with the crown on Maven\'s head. But no battle is won alone, and before the Reds may rise as one, Mare must side with the boy who broke her heart in order to defeat the boy who almost broke her. Cal\'s powerful Silver allies, alongside Mare and the Scarlet Guard, prove a formidable force. But Maven is driven by an obsession so deep, he will stop at nothing to have Mare as his own again, even if it means demolish everything - and everyone - in his path. War is coming, and all Mare has fought for hangs in the balance. Will victory be enough to topple the Silver kingdoms? Or will the little lightning girl be forever silenced? In the epic conclusion to Victoria Aveyard\'s stunning series, Mare must embrace her fate and summon all her power . . . For all will be tested, but not all will survive. Read the international bestselling RED QUEEN series in full: Book 1: RED QUEEN Book 2: GLASS SWORD Book 3: KING\'S CAGE Book 4: WAR STORM *********', NULL, 119, 1, 1, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(156, 'All the Rage', 'All-the-Rage', 'http://books.google.com/books/content?id=sJ_XwAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=sJ_XwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241985113', 'A teenage girl is found wandering the outskirts of Oxford, dazed and distressed. The story she tells is terrifying. Yet she refuses to press charges. DI Fawley investigates, but there\'s little he can do without the girl\'s co-operation. Is she hiding something, and if so, what?', NULL, 128, 1, 1, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(157, 'Girl, Missing', 'Girl,-Missing', 'http://books.google.com/books/content?id=PFEOkAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PFEOkAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471147999', 'Lauren has always known she was adopted but when a little research turns up the possibility that she was snatched from an American family as a baby, suddenly Lauren\'s life seems like a sham. How can she find her biological parents? And are her adoptive parents really responsible for kidnapping her? She manages to persuade her family to takea trip across the Atlantic where she runs away to try and find the truth. But the circumstances of her disappearance are murky and Lauren\'s kidnappers are still at large and willing to do anything to keep her silent...Ten years on from its first publication, Girl, Missing has sold over 150,000 copies in the UK alone and won countless awards and prizes. This new edition of the bestseller includes exclusive extra content from Sophie and is a must for fans and readers that are yet to discover this modern classic.', NULL, 129, 1, 1, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(158, 'To Kill a Mockingbird', 'To-Kill-a-Mockingbird', 'http://books.google.com/books/content?id=VnHDCQAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VnHDCQAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781784752637', '\'Shoot all the Bluejays you want, if you can hit \'em, but remember it\'s a sin to kill a Mockingbird.\'A lawyer\'s advice to his children as he defends the real mockingbird of Harper Lee\'s classic novel - a black man charged with the rape of a white girl. Through the young eyes of Scout and Jem Finch, Harper Lee explores with exuberant humour the irrationality of adult attitudes to race and class in the Deep South of the thirties. The conscience of a town steeped in prejudice, violence and hypocrisy is pricked by the stamina of one man\'s struggle for justice. But the weight of history will only tolerate so much-', NULL, 130, 1, 1, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(159, 'Little White Lies', 'Little-White-Lies', 'http://books.google.com/books/content?id=wkE2wwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=wkE2wwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008344016', '\'Breathtaking suspense. A phenomenal talent\' HOLLY SEDDON \'Terrifically engaging\' JO SPAIN \'Addictive. I couldn\'t put it down\' PHOEBE MORGAN \'With manipulations and secrets, nothing becomes clear until the very end\' CANDIS MAGAZINE She only looked away for a second... Anne White only looked away for a second, but that\'s all it took to lose sight of her young daughter. But seven years later, Abigail is found. And as Anne struggles to connect with her teenage daughter, she begins to question how much Abigail remembers about the day she disappeared... Addictive, edge-of-your-seat dark women\'s fiction perfect for fans of Heidi Perks, Sophie Hannah and Lisa Jewell What readers are saying about LITTLE WHITE LIES \'Worth far more than five stars and definitely one of my favourite books of this year\' \'Hooked me in from the opening paragraph, and never let go, I loved everything about it \' \'I was desperate to find out the truth about what happened to Abigail and just when I thought it was over another twist took me completely by surprise\' \'This was a \'heart in your mouth\' read from page one. . . . 5 stars.\' \'The ending is so tense and exciting I hardly dared breathe!\'', NULL, 131, 1, 1, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(160, 'Happiness for Humans', 'Happiness-for-Humans', 'http://books.google.com/books/content?id=e9B9tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=e9B9tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751566727', '\'Loved this book. Funny, quirky, unexpected\' Jojo Moyes \'Very clever and great fun\' Kate Eberlen \'Bridget Jones\' diary for the digital age\' Daily Record Happiness for Humans is a joyful, romantic and very funny story, perfect for readers who loved The Rosie Project and Eleanor Oliphant is Completely Fine. Do you believe in soulmates? Aiden does. So when his colleague, Jen, is dumped unceremoniously by her dreadful boyfriend, Aiden decides to take matters - and Jen\'s life - into his own hands. Scouring the internet for a suitable partner for Jen, Aiden finds Tom. He\'d be perfect for Jen apart from one minor detail: Tom lives in New York. Luckily for Jen and Tom, Aiden\'s not just an interfering colleague. In fact, Aiden isn\'t exactly human - he\'s a very complicated artificial intelligence. As Jen and Tom\'s romance grows, Aiden begins to take more and more risks to make sure that they can be together. But what will happen if they realise how they met...and that somebody else is pulling the strings? \'This is Jane Austen\'s Emma for the digital age\' - Keith Stuart, bestselling author of A Boy Made of Blocks \'So funny, clever and timely. I loved it\' - Martha Kearney \'This clever novel will appeal to David Nicholls fans. It\'s witty and great fun\' - Daily Mail \'This funny, madcap romp for the digital-age, featuring believably flawed characters (not all human), deserves to be a hit... like David Nicholls\' One Day or Graeme Simsion\'s The Rosie Project, it should appeal to male and female readers.\' - Sunday Times \'The most charming book I\'ve read in ages\' - Image magazine \'You\'ll love this quirky, brilliantly funny love story... If you use Siri, Alexa or Google Assistant, prepare to have your heart warmed - and be a little bit scared!\' - Fabulous magazine \'This screwball comedy is touching and hilarious\' - Sunday Mirror \'One of the most uplifting and romantic novels I\'ve read in a long time\' - Sarra Manning, Red magazine \'Funny and clever\' - Good Housekeeping Humans meets The Rosie Project . . . A real smiler of a book - Nina Pottell, Prima', NULL, 132, 1, 1, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(161, 'The King Tides', 'The-King-Tides', 'http://books.google.com/books/content?id=rFkduwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rFkduwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781503901681', 'Reality and illusion blur in this Washington Post bestseller that Michael Connelly calls \"a hundred percent adrenaline rush disguised as a detective novel.\" Nicki Pearl is the perfect daughter--every parent\'s dream. And that of strangers, too. Wherever she goes, she\'s being watched. Each stalker is different from the last, except for one thing--their alarming obsession with Nicki. Desperate times call for desperate measures, and Nicki\'s father is turning to someone who can protect her: retired private detective and ex-Navy SEAL Jon Lancaster. Teaming up with FBI agent and former abduction victim Beth Daniels, Lancaster can help--his way. He\'s spent most of his career dispatching creeps who get off on terrorizing the vulnerable. Unlicensed, and unrestricted, he plays dirty...But this case is unusual. Why so many men? Why this one girl? Does Nicki have something to hide? Or do her parents? Trawling the darkest depths of southern Florida, Lancaster faces a growing tide of secrets and deception. And the deeper he digs, the more he realizes that finding the truth won\'t be easy. Because there\'s more to this case than meets the eye.', NULL, 133, 1, 1, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(162, 'Noughts and Crosses', 'Noughts-and-Crosses', 'http://books.google.com/books/content?id=If0SvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=If0SvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141378640', 'Sephy is a Cross - a member of the dark-skinned ruling class. Callum is a nought - a \'colourless\' member of the underclass who were once slaves to the Crosses. The two have been friends since early childhood. But that\'s as far as it can go. Against a background of prejudice, distrust and mounting terrorist violence, a romance builds between Sephy and Callum - a romance that is to lead both of them into terrible danger . . .', NULL, 425, 1, 1, '2021-02-28 19:50:48', '2021-02-28 19:50:48'),
(163, 'King\'s Cage', 'King\'s-Cage', 'http://books.google.com/books/content?id=HQlctAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=HQlctAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409150763', '*** PRE-ORDER WAR STORM NOW - THE FOURTH & FINAL BOOK IN THE RED QUEEN SERIES! *** The third novel in the #1 bestselling RED QUEEN series by Victoria Aveyard ALL WILL BURN. Mare Barrow is a prisoner, powerless without her lightning, tormented by her mistakes. She lives at the mercy of a boy she once loved, a boy made of lies and betrayal. Now a king, Maven continues weaving his web in an attempt to maintain control over his country - and his prisoner. As Mare remains trapped in the palace, the remnants of the Red Rebellion continue organizing and expanding. As they prepare for war, no longer able to linger in the shadows, Cal - the exiled prince with his own claim on Mare\'s heart - will stop at nothing to bring her back. Blood will turn on blood and allegiances will be tested on every side. If the Lightning Girl\'s spark is gone, who will light the way for the rebellion? ********* Read the bestselling RED QUEEN series in full: Book 1: RED QUEEN Book 2: GLASS SWORD Book 3: KING\'S CAGE Book 4: WAR STORM *********', NULL, 119, 1, 1, '2021-02-28 19:50:48', '2021-02-28 19:50:48'),
(164, 'Glass Sword', 'Glass-Sword', 'http://books.google.com/books/content?id=2xFVjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2xFVjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409150749', 'From the NEW YORK TIMES number one bestselling author of RED QUEEN. If there\'s one thing Mare Barrow knows, it\'s that she\'s different. Mare\'s blood is red - the colour of common folk - but her Silver ability, the power to control lightning, has turned her into a weapon that the royal court wants to control. Pursued by the vengeful Silver king, Mare sets out to find and recruit other Red-and-Silver fighters to join the rebellion. But Mare finds herself on a deadly path, at risk of becoming exactly the kind of monster she is trying to defeat. Will she shatter under the weight of the lives that are the cost of rebellion? Or have treachery and betrayal hardened her forever?', NULL, 119, 1, 1, '2021-02-28 19:50:48', '2021-02-28 19:50:48'),
(165, 'Look What You Made Me Do', 'Look-What-You-Made-Me-Do', 'http://books.google.com/books/content?id=FlQyswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=FlQyswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509848737', 'Not all abuse leaves a mark - a powerful memoir of coercive control Helen\'s first husband controlled her life, from the people she saw to what was in her bank account. He alienated her from friends and family and even from their three daughters. Eventually, he threw her out and she painfully began to rebuild her life.Then, divorced and in her early forties, she met Franc. Kind, charming, considerate Franc. For ten years she would be in his thrall, even when he too was telling her what to wear, what to eat, even what to think. Look What You Made Me Do is her candid and utterly gripping memoir of how she was trapped by a smiling abuser, not once but twice. It is a vital guide to recognising, understanding and surviving this sinister form of abuse and its often terrible legacy. It is also an inspirational account of how one woman found the courage to walk away.', NULL, 134, 1, 1, '2021-02-28 19:50:48', '2021-02-28 19:50:48'),
(166, 'Red Queen', 'Red-Queen', 'http://books.google.com/books/content?id=2GUSngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2GUSngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409150725', 'This is a world divided by blood - red or silver. The Reds are commoners, ruled by a Silver elite in possession of god-like superpowers. And to Mare Barrow, a seventeen-year-old Red girl from the poverty-stricken Stilts, it seems like nothing will ever change. That is, until she finds herself working in the Silver Palace. Here, surrounded by the people she hates the most, Mare discovers that, despite her red blood, she possesses a deadly power of her own. One that threatens to destroy the balance of power. Fearful of Mare\'s potential, the Silvers hide her in plain view, declaring her a long-lost Silver princess, now engaged to a Silver prince. Despite knowing that one misstep would mean her death, Mare works silently to help the Red Guard, a militant resistance group, and bring down the Silver regime. But this is a world of betrayal and lies, and Mare has entered a dangerous dance - Reds against Silvers, prince against prince, and Mare against her own heart . . .', NULL, 119, 1, 1, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(167, '12 RULES FOR LIFE', '12-RULES-FOR-LIFE', '', '', '9780141988511', '', NULL, 135, 1, 1, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(168, 'Black Water Lilies', 'Black-Water-Lilies', 'http://books.google.com/books/content?id=BwtSvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BwtSvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474601764', '\'Ends with one of the most reverberating shocks in modern crime fiction\' Sunday Times This is the story of a mystery, of thirteen days that begin with one murder and end with another. Jérôme Morval, a man whose passion for art was matched only by his passion for women, has been found dead in the stream that runs through the gardens at Giverny, where Monet did his famous paintings. In Jérôme\'s pocket is a postcard of Monet\'s Water Lilies with the words: Eleven years old. Happy Birthday. Entangled in the mystery are three women: a young painting prodigy, the seductive village schoolteacher and an old widow who watches over the village from a mill by the stream. All three of them share a secret. But what do they know about the discovery of Jérôme Morval\'s corpse? And what is the connection to the mysterious Black Water Lilies, a rumoured masterpiece by Monet that has never been found... \'This elegant crime mystery shimmers as delicately as the paintings of Claude Monet that lie at its heart . . . A bestseller in France, it is a dazzling, unexpected and haunting masterpiece\' Daily Mail \'An enchanting tale that kept me absolutely hooked as Bussi cleverly breaks all the perceived rules of plotting in a story containing riddles within riddles . . . stunning\' Daily Express', NULL, 136, 1, 1, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(169, 'The Ex', 'The-Ex', 'http://books.google.com/books/content?id=awmXjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=awmXjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780571328161', '', NULL, 137, 1, 1, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(170, 'The Choice', 'The-Choice', 'http://books.google.com/books/content?id=LQXqnAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=LQXqnAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780349414683', '***THE TOP-TEN EBOOK BESTSELLER*** \'Beautifully written, taunt, tense and very clever. Definitely one to watch out for in 2017\' Claire Douglas, Sunday Times bestselling author of Last Seen Alive. For fans of The Couple Next Door, I See You and He Said/She Said, The Choice is a hypnotic suspense debut from a remarkable new talent and explores the terrifying Sophie\'s Choice scenario: What if you had to choose between your children? Then: Madeleine lived for her children. She\'d always believed she\'d die for them too. But on the morning of her twins\' tenth birthday her love was put to the test when a killer knocked on their door and forced her to make a devastating choice: which child should live, and which should die - her son, or her daughter? Now: Madeleine stands silent on the periphery of her fractured family, trying desperately to unravel why her world was so suddenly blown apart. But as memories of everything leading up to that tragic day return in agonising flashes, she begins to realise her family\'s life still hangs terrifyingly in the balance... \'Astonishing\' Karen Dionne \'Nail-biting\' Saskia Sarginson \'Brilliant\' Lisa Hall \'Mind-twisting\' Alex Caan \'Exceptional\' Claire Allan \'Enthralling\' Liz Loves Books \'Devastating\' Eleanor Moran \'Addictive\' Netgalley reviewer', NULL, 138, 1, 1, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(171, 'Man vs Maths', 'Man-vs-Maths', 'http://books.google.com/books/content?id=JbhTMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=JbhTMQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781781316900', 'What is the mathematics behind a twitter trend? Does my food really have an equation? And, is there really an algorithm for Love? Mathematics is inescapable. Wherever you go, whatever you do, however you live your life, mathematics plays a role. From searching for love to donating a kidney, the mathematics governing our world is fascinating, and far reaching. Using interesting anecdotes, simple analogies, and easy explanations, Man vs Maths will distill the complexities of some of the most absorbing mathematics of modern life. Along the way we will look at why Netflix offered a $1 million prize for help with their mathematics, why the universe has a favourite number, and how knowing a little mathematics can improve your life.', NULL, 139, 1, 1, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(172, 'The Confession', 'The-Confession-9781509886142', 'http://books.google.com/books/content?id=srlpwgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=srlpwgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509886142', 'The sensational new novel from the million-copy bestselling author of The Miniaturist and The Muse.One winter\'s afternoon on Hampstead Heath in 1980, Elise Morceau meets Constance Holden and quickly falls under her spell. Connie is bold and alluring, a successful writer whose novel is being turned into a major Hollywood film. Elise follows Connie to LA, a city of strange dreams and swimming pools and late-night gatherings of glamorous people. But whilst Connie thrives on the heat and electricity of this new world where everyone is reaching for the stars and no one is telling the truth, Elise finds herself floundering. When she overhears a conversation at a party that turns everything on its head, Elise makes an impulsive decision that will change her life forever.Three decades later, Rose Simmons is seeking answers about her mother, who disappeared when she was a baby. Having learned that the last person to see her was Constance Holden, a reclusive novelist who withdrew from public life at the peak of her fame, Rose is drawn to the door of Connie\'s imposing house in search of a confession ... From the million-copy bestselling author of The Miniaturist and The Muse, this is a luminous, powerful and deeply moving novel about secrets and storytelling, motherhood and friendship, and how we lose and find ourselves.PRAISE FOR THE CONFESSION \'Dazzlingly good. The Confession is that rare thing: an utterly engrossing novel which asks big questions without ever once losing sight of the storyteller\'s need to entertain and move. I turned the final pages in tears and I know already I shall return to it again and again. Without doubt one of the best novels of recent years.\' Elizabeth Day, author of The Party and How To Fail\'I haven\'t enjoyed a book so much in a long time . . . I lost myself in the story, not wanting to come up for air. A bold, intelligent, wonderful novel\' Sarah Winman, author of Tin Man\'Burton is asking important questions in The Confession - questions about motherhood, art and creativity, love, friendship - and in doing this, she has created three utterly fascinating characters. Connie, Elise, and Rose are complicated; complex in ways that women are so rarely allowed to be in literature, demanding that their stories be heard. This is a beautiful novel and one that will stay with me for a very long time\' Louise O\'Neill, author of Only Ever Yours\'an absorbing, intelligent piece of storytelling\' Guardian', NULL, 123, 1, 1, '2021-02-28 19:50:50', '2021-02-28 19:50:50');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(173, 'Earth to Earth', 'Earth-to-Earth', 'http://books.google.com/books/content?id=KRIjtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=KRIjtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781910787748', 'From the earliest pagan sites to modern urban cemeteries, burial grounds have alwaysenjoyed a sacred, protected status in the history of society. Consequently they have becometranquil oases in which wildlife can flourish - a microcosm of the natural habitat long sincedisappeared from the surrounding area. In Earth to Earth, Professor Stefan Buczacki uncovers the wild animals and plants that thriveamongst the headstones, from the graveyard beetle to the mighty yew. He also explores thehistory of churchyards and the landscape, as well as what can be done to conserve themfor future generations. Accompanied by specially commissioned illustrations by Felicity Price-Smith and selectedquotations, this beautiful gift book reveals the natural secrets to be found in God\'s Acre.', NULL, 141, 1, 1, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(174, 'Infinity in the Palm of Your Hand', 'Infinity-in-the-Palm-of-Your-Hand', 'http://books.google.com/books/content?id=yNXOswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=yNXOswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781782439493', 'Did you know that you could fit the whole human race in the volume of a sugar cube? Or that the electrical energy in a single mosquito is enough to cause a global mass extinction? Or that we are all, in fact, living in a giant hologram? Or perhaps, most importantly of all, out there in the universe there are an infinite number of copies of you reading an infinite number of copies of this? Using these impossible-sounding truths, Marcus Chown reveals some of the most significant scientific discoveries in human history about who we are, where we came from and the complexities and wonders of our universe. Witty, engaging and accessible, Infinity in the Palm of Your Hand brings to life the forces that rule our universe and reveals the intriguing details of our existence.', NULL, 142, 1, 1, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(175, 'All That Glisters ...', 'All-That-Glisters-...', 'http://books.google.com/books/content?id=6WoqtQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6WoqtQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781782439974', 'Quotations - or snippets from them - are commonly used in everyday speech, most often without the speaker knowing where they came from. From words of comfort to advice for the lovelorn, you can bet that someone, somewhere has come up with phraseology that perfectly sums up whatever situation you find yourself in and put it more succinctly than you could ever dream of.In All That Glisters . Caroline Taggart presents some of the pithiest, wisest and most fascinating quotations we should all know, detailing where the quotation has come from and why it may be useful when searching for an elegant or informed line to illustrate a point, spice up conversation or impress one\'s friends.Part of the pleasure of this book is to reveal the provenance of the well-worn quote (or misquote) - my cup runneth over, ay, there\'s the rub, to err is human, the spice of life - but also to introduce some less familiar ones. Most of the quotations included are from classic sources - from the Bible, the works of Shakespeare, other poets, classical authors, Dickens (God bless us everyone, waiting for something to turn up, very humble), Charlotte Bronte (Reader, I married him) and George Bernard Shaw (who didn\'t actually say Youth is wasted on the young, but may have said something like it. Somewhere. No one seems to know for sure).This entertaining and informed - but not too serious - take on the wit and wisdom of the last 2000 years is ideal for modern readers who like their knowledge in tweet-sized chunks.', NULL, 143, 1, 1, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(176, 'Edith\'s Diary', 'Edith\'s-Diary', 'http://books.google.com/books/content?id=hydzngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=hydzngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780349004556', 'Edith Howland\'s diary is her most precious possession, and as she is moving house she is making sure it\'s safe. A suburban housewife in fifties America, she is moving to Brunswick with her husband Brett and her beloved son, Cliffie, to start a new life for them all. She is optimistic, but most of all she has high hopes for her new venture with Brett, a local newspaper, the Brunswick Corner Bugle. Life seems full of promise, and indeed, to read her diary, filled with her most intimate feelings and revelations, you would never think otherwise. Strange, then, that reality is so dangerously different . . .', NULL, 144, 1, 1, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(177, 'White King', 'White-King', 'http://books.google.com/books/content?id=e9gPMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=e9gPMQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780701185862', 'Less than forty years after the golden age of Elizabeth I, England was at war with itself. The bloody, devastating civil wars set family against family, friend against friend. At the head of this disintegrating kingdom was Charles I. His rule would change the face of the monarchy for ever. Charles I\'s reign is one of the most dramatic in history, yet Charles the man remains elusive. Too often he is recalled as weak and stupid, his wife, Henrietta Maria, as spoilt and silly: the cause of his ruin. In this portrait -- informed by newly disclosed manuscripts, including letters between the king and his queen -- Leanda de Lisle uncovers a Charles I who was principled and brave, but also fatally blinkered. He is revealed as a complex man who pays the price for bringing radical change; Henrietta Maria as a warrior queen and political player as impressive as any Tudor. Here too are the cousins who befriended and betrayed them: the peacocking Henry Holland, whose brother engineered the king\'s fall; and the magnetic \'last Boleyn girl\', Lucy Carlisle. This is a tragic story for our times, of populist politicians and religious war, of a new media and the reshaping of nations, in which women vied with men for power. For Charles it ended on the scaffold. Condemned as a traitor and murderer, he was also heralded as a martyr: his reign destined to sow the seeds of democracy across Britain and the New World.', NULL, 145, 1, 1, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(178, 'I Made a Mistake', 'I-Made-a-Mistake', 'http://books.google.com/books/content?id=PETTxgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PETTxgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241984659', 'IT STARTED WITH A KISS... AND ENDED WITH MURDER. The darkly addictive new novel from the Sunday Times bestselling author of I Looked Away, Blood Sisters and My Husband\'s Wife. -------------------------------------------------------- In Poppy Page\'s mind, there are two types of women in this world: those who are faithful to their husbands, and those who are not. Until now, Poppy has never questioned which she was. But when handsome, charming Matthew Gordon walks back into her life after almost two decades, that changes. Poppy makes a single mistake - and that mistake will be far more dangerous than she could imagine. Someone is going to pay for it with their life . . . -------------------------------------------------------- WHAT PEOPLE ARE SAYING ABOUT I MADE A MISTAKE \'Absolutely brilliant...full of twists and turns that left me positively breathless\' Angela Marsons \'A python of a book; it draws you in gently at first and then the coils of tension begin to tighten and refuse to let you go...\' Jane Shemilt \'A chilling maze of twists and turns, bestseller Jane Corry\'s latest thriller will have you hooked from page one\' OK \'Readers you are in for a tremendous treat - a roller-coaster of a ride that will leave you screaming, \'No!\' on more than one occasion\' Carol Wyer \'What an addictive read! Extremely clever storytelling with terrific pace and real emotional depth too. I loved it\' Teresa Driscoll \'Corry often explores darker themes, and those living on the fringes of society and this book is no exception: gritty, real, interesting and clever. Highly recommended\' Gillian McAllister \'Jane Corry\'s psychological thrillers have sold more than a million copies so far, and this is the most gripping yet\' Sunday Express \'I Made a Mistake is an absorbing and gripping masterpiece, skilfully plotted with superbly drawn characters who will stay with you long after you\'ve finished reading\' Kathryn Croft \'I love all Jane Corry\'s books but this is her best yet. So clever, compulsive and twisty with a reveal I never saw coming. Superb\' Claire Douglas \'Fans of Louise Doughty and Clare Mackintosh will love I Made a Mistake. Exhilarating and heartbreaking in equal measure, this story will stay with me for a long time\' Nuala Ellwood', NULL, 146, 1, 1, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(179, 'November 9', 'November-9', 'http://books.google.com/books/content?id=7CHdsgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=7CHdsgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471154621', 'Fallon meets Ben, an aspiring novelist, the day before her scheduled cross-country move. Their untimely attraction leads them to spend Fallon\'s last day in L.A. together, and her eventful life becomes the creative inspiration Ben has always sought for his novel. Over time and amidst the various relationships and tribulations of their own separate lives, they continue to meet on the same date every year. Until one day Fallon becomes unsure if Ben has been telling her the truth or fabricating a perfect reality for the sake of the ultimate plot twist. Can Ben\'s relationship with Fallon - and simultaneously his novel - be considered a love story if it ends in heartbreak?', NULL, 147, 1, 1, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(180, 'This is Going to Hurt', 'This-is-Going-to-Hurt', 'http://books.google.com/books/content?id=ps1CswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ps1CswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509858637', 'THE MILLION COPY BESTSELLER BOOK OF THE YEAR AT THE NATIONAL BOOK AWARDS \'Painfully funny. The pain and the funniness somehow add up to something entirely good, entirely noble and entirely loveable.\' - Stephen Fry Welcome to the life of a junior doctor: 97-hour weeks, life and death decisions, a constant tsunami of bodily fluids, and the hospital parking meter earns more than you. Scribbled in secret after endless days, sleepless nights and missed weekends, Adam Kay\'s This is Going to Hurt provides a no-holds-barred account of his time on the NHS front line. Hilarious, horrifying and heartbreaking, this diary is everything you wanted to know - and more than a few things you didn\'t - about life on and off the hospital ward. Sunday Times Number One Bestseller for over eight months and winner of a record FOUR National Book Awards: Book of the Year, Non-Fiction Book of the Year, New Writer of the Year and Zoe Ball Book Club Book of the Year. This edition includes extra diary entries and a new afterword by the author.', NULL, 148, 1, 1, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(181, 'We Own the Sky', 'We-Own-the-Sky', 'http://books.google.com/books/content?id=QdRTswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=QdRTswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409172284', '\'Prepare to weep - I defy anyone to read this and not have a tear in their eye.\' reviewer, 5 stars \"Anyone who wishes David Nicholls would write faster needs to grab this with both hands.\" Jill Mansell An emotional page-turner with a heart-pounding dilemma. Fans of Jodi Picoult, David Nicholls and Jojo Moyes will love We Own The Sky. Anna and Rob were the perfect couple with their whole lives in front of them. When beautiful baby boy Jack came along, their world seemed complete. But when tragedy strikes they are faced with an impossible choice. They have one chance to save their child, but at what cost? \"...a touching narrative of first love and fatherhood\" The Sunday Times **** Praise for We Own The Sky \'A beautiful, hugely emotional story.\' - The Sun \'A heartbreaking read about love and loss.\' - Bella Magazine \'Prepare to have your heart wrenched by this emotion-drenched story.\' - Sunday Mirror \'This tender depiction of a father\'s love for his son is utterly heartbreaking and will stay with you long after the book has finished.\' - The Express \'Deeply affecting. A beautiful, remarkable book.\' - Lucy Diamond, author of The Secrets of Happiness Utterly beautiful, heartbreaking and ultimately uplifting. - Rachael Lucas, author of The State of Grace What an incredible book this is - such gut-wrenching honesty and depth of emotion. Anyone who wishes David Nicholls would write faster needs to grab this with both hands. It\'s a truly stunning achievement. - Jill Mansell Beautifully rendered and profoundly moving, We Own the Sky illustrates the lengths we\'ll go to for those we love. Luke Allnutt is a major new talent in fiction and his debut is not to be missed. - Camille Pagán, bestselling author of Life and Other Near-Death Experiences ***** What readers are saying about We Own The Sky: Emotional and moving. - 5* review, Amazon This is a truly beautiful story told from the heart and written with such great feeling. - 5* review, Amazon I loved this book for its honesty, it\'s rawness and for its abundance of pure love. It made me laugh, it made me cry, and it will, I know, stay with me for a very long time. - 5* review, Amazon We Own The Sky by Luke Allnutt is a story about despair and fear, but it is also sprinkled throughout with hope and love - the love one has for their child and how far you would go for them. A stunning debut and should be on everyone\'s to-read list this year. - 5* review, Amazon', NULL, 149, 1, 1, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(182, 'Syren', 'Syren', 'http://books.google.com/books/content?id=aA6IIavq7rQC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=aA6IIavq7rQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781408814895', 'The Magykal bestselling series relaunched with a fabulous new jacket design across the series. Enter the world of Septimus Heap, Wizard Apprentice. Magyk is his destiny.', NULL, 150, 1, 1, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(183, 'Physik', 'Physik', 'http://books.google.com/books/content?id=6hwc8qXemx8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=6hwc8qXemx8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781408814918', 'The Magykal bestselling series relaunched with a fabulous new jacket design across the series. Enter the world of Septimus Heap, Wizard Apprentice. Magyk is his destiny.', NULL, 150, 1, 1, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(184, 'Queste', 'Queste', 'http://books.google.com/books/content?id=gk7Uwp7Dtk4C&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gk7Uwp7Dtk4C&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408814901', 'The Magykal bestselling series relaunched with a fabulous new jacket design across the series. Enter the world of Septimus Heap, Wizard Apprentice. Magyk is his destiny.', NULL, 150, 1, 1, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(185, 'The Hate U Give', 'The-Hate-U-Give', 'http://books.google.com/books/content?id=MHAJMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=MHAJMQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781406372151', 'A powerful and brave YA novel about what prejudice looks like in the 21st century. Sixteen-year-old Starr lives in two worlds: the poor neighbourhood where she was born and raised and her posh high school in the suburbs. The uneasy balance between them is shattered when Starr is the only witness to the fatal shooting of her unarmed best friend, Khalil, by a police officer. Now what Starr says could destroy her community. It could also get her killed. Inspired by the Black Lives Matter movement, this is a powerful and gripping YA novel about one girl\'s struggle for justice. Movie rights have been sold to Fox, with Amandla Stenberg (The Hunger Games) to star. Inspired by the Black Lives Matter movement. Movie rights sold to Fox 2000 after a heated bidding war. George Tillman Jr is to direct (Men of Honor) and Amandla Stenberg (The Hunger Games) to star. To date rights have sold in 12 territories, with multiple-way auctions in the UK and the US.', NULL, 151, 1, 1, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(186, 'On the Come Up', 'On-the-Come-Up', 'http://books.google.com/books/content?id=RJP2swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=RJP2swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781406372168', 'From the visionary Angie Thomas comes a story about hip-hop, prejudice, and fighting for your dreams. Sixteen-year-old Bri wants to be one of the greatest rappers of all time. It\'s hard to get your come up, though, when you\'re labeled \"trouble\" at school and your fridge at home is empty after your mom loses her job. But Bri\'s success is all that stands between her family and homelessness, so she doesn\'t just want to make it - she has to. Even if it means becoming exactly what the public expects her to be.', NULL, 151, 1, 1, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(187, 'The Fault in Our Stars', 'The-Fault-in-Our-Stars', 'http://books.google.com/books/content?id=4JEnMQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4JEnMQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141345659', 'John Green\'s witty yet heart-breaking tour de force. The multi-million #1 bestseller, now a major motion picture starring Shailene Woodley and Ansel Elgort. \"I fell in love the way you fall asleep: slowly, then all at once.\"Despite the tumor-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis. But when a gorgeous plot twist named Augustus Waters suddenly appears at Cancer Kid Support Group, Hazel\'s story is about to be completely rewritten.Insightful, bold, irreverent, and raw, The Fault in Our Stars is award-winning author John Green\'s most ambitious and heartbreaking work yet, brilliantly exploring the funny, thrilling, and tragic business of being alive and in love.Sunday Times (Culture)\'A touching, often fiercely funny novel\'The Sun on Sunday (Fabulous Magazine)\'So good I think it should be compulsory reading for everyone!\'Daily Express\'John Green brilliantly captures the voices of a young generation while instilling it with the wisdom of a life that has lived too much yet will never live enough.Rather than depressing, the book is filled with dark humour and is written with a beautiful simplicity that draws the reader in so deeply that it\'s not just the twist and turns but the gently bends and curves that you feel tugging at your emotions... No doubt in the end you will cry but you will also feel that you have discovered a little something about living\'Daily Telegraph\'The novel, written for teenagers, but proving even more popular with adults\'The Metro - 2013 Best FictionThe YA crossover hit of the year. The love affair of two terminally ill teenagers could be mawkish. In fact, it\'s funny, clever, irreverent and life-affirming.The Guardian\'A Smart Book\'Grazia\'So good!\'Good Housekeeping\'John Green may write for young adults, but his intelligent sensitive style means The Fault in Our Starsdefies categorisation... as funny as it is heartbreaking... we defy you not to fall in love with its main characters, Hazel and Augustus.\'The Tablet\'A humourous and poignant love story... It\'s terrifically funny... as well as a moving exploration of loss and grief. And no, it\'s so much not just for teenage cancer sufferers... it\'s for everyone.\'Bliss\'If you need inspiration when it comes to making the most of a moment, this one is for you\'Mizz\'Exploring the funny, thrilling and tragic business of being alive and in love, this is a life-affirming tale of two teenagers who are terminally ill. Insightful, bold, irreverent and raw, if this doesn\'t make you cry, it\'ll definitely make you think, laugh and maybe even fall in love yourself!\'** A thought-provoking love story from the New York Times bestselling author of Looking for Alaska, An Abundance of Katherines, Paper Towns and - with David Levithan - Will Grayson, Will Grayson.** John Green has over 2.3 million Twitter followers, and more than 2.1 million subscribers to Vlogbrothers, the YouTube channel he created with his brother, Hank. ** The Fault in Our Stars will capture a crossover audience in the same vein as Zadie Smith, David Nicholls\' One Day and Before I Die by Jenny Downham. ** \'Electric . . . Filled with staccato bursts of humor and tragedy\' - Jodi Picoult** \'A novel of life and death and the people caught in between, The Fault in Our Stars is John Green at his best. You laugh, you cry, and then you come back for more\' - Markus Zusak, author of The Book ThiefJohn Green is an award-winning, New York Times bestselling author whose many accolades include the Printz Medal, a Printz Honor, and the Edgar Award. With his brother, Hank, John is one half of the Vlogbrothers (youtube.com/vlogbrothers), one of the most popular online video projects in the world. John lives with his wife and children in Indianapolis, Indiana.', NULL, 152, 2, 1, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(188, 'Chosen', 'Chosen', 'http://books.google.com/books/content?id=W5WhxAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=W5WhxAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471183270', 'Nina continues to learn how to use her slayer powers against enemies old and new in this second novel in the New York Times bestselling series from Kiersten White, set in the world of Buffy the Vampire Slayer. Now that Nina has turned the Watcher\'s Castle into a utopia for hurt and lonely demons, she\'s still waiting for the utopia part to kick in. With her sister Artemis gone and only a few people remaining at the castle--including her still-distant mother--Nina has her hands full. Plus, though she gained back her Slayer powers from Leo, they\'re not feeling quite right after being held by the seriously evil succubus Eve, a.k.a. fake Watcher\'s Council member and Leo\'s mom. And while Nina is dealing with the darkness inside, there\'s also a new threat on the outside, portended by an odd triangle symbol that seems to be popping up everywhere, in connection with Sean\'s demon drug ring as well as someone a bit closer to home. Because one near-apocalypse just isn\'t enough, right? The darkness always finds you. And once again, it\'s coming for the Slayer. \"Will get Buffy fans up in their feels.\" --Entertainment Weekly on Slayer', NULL, 153, 2, 1, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(189, 'Stand Tall like a Mountain', 'Stand-Tall-like-a-Mountain', 'http://books.google.com/books/content?id=N_JiuAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=N_JiuAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781912023950', 'Stand Tall Like a Mountain is specifically designed to help parents empower their children to: - Learn tools for dealing with everyday emotions - Express how they are feeling - Learn about their bodies and minds in easy-to-read and understandable language - Develop tools for nourishment and coping with challenges - Use easy and fun yoga poses to promote positive feelings We teach our children how to brush their teeth and cross the road safely; this book is about broadening their toolkit to include emotional first aid. Suzy Reading introduces practices to encourage noticing emotions, feeling calm, expressing feelings, falling asleep more easily, coping with anger and feelings of anxiety and nurturing confidence and kindness. Children are natural masters of curiosity and mindfulness, so the learning is not a one-way street. The book encourages parents to observe and seek opportunities to learn from their children too.', NULL, 154, 2, 1, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(190, 'The Perks of Being a Wallflower', 'The-Perks-of-Being-a-Wallflower', 'http://books.google.com/books/content?id=apKEMAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=apKEMAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471116148', 'Shy, introspective, intelligent beyond his years, caught between trying to live his life and trying to run from it, Charlie is attempting to navigate through the uncharted territory of high school. The world of first dates and mixed tapes, family dramas and new friends. The world of sex, drugs, and music - when all one requires to feel infinite is that perfect song on that perfect drive. Standing on the fringes of life Charlie has a unique perspective of the world around him, but there comes a time to stop being a wallflower and see what it looks like from the dance floor. This haunting novel about the dilemma of passivity vs. passion has become a modern classic. Charlie\'s letters are singular and unique, hilarious and devastating and through Charlie, Stephen Chbosky has created a deeply affecting story that will spirit you back to those wild and poignant roller coaster days known as growing up.', NULL, 155, 2, 1, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(191, 'The Next Person You Meet in Heaven', 'The-Next-Person-You-Meet-in-Heaven', 'http://books.google.com/books/content?id=PIyfvgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PIyfvgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751571905', 'Fifteen years ago, in Mitch Albom\'s beloved novel, The Five People You Meet in Heaven, the world fell in love with Eddie, a grizzled war veteran- turned-amusement park mechanic who died saving the life of a young girl named Annie. Eddie\'s journey to heaven taught him that every life matters. Now, in this magical sequel, Mitch Albom reveals Annie\'s story. The accident that killed Eddie left an indelible mark on Annie. It took her left hand, which needed to be surgically reattached. Injured, scarred, and unable to remember why, Annie\'s life is forever changed by a guilt-ravaged mother who whisks her away from the world she knew. Bullied by her peers and haunted by something she cannot recall, Annie struggles to find acceptance as she grows. When, as a young woman, she reconnects with Paulo, her childhood love, she believes she has finally found happiness. As the novel opens, Annie is marrying Paulo. But when her wedding night day ends in an unimaginable accident, Annie finds herself on her own heavenly journey - and an inevitable reunion with Eddie, one of the five people who will show her how her life mattered in ways she could not have fathomed. Poignant and beautiful, filled with unexpected twists, The Next Person You Meet in Heaven reminds us that not only does every life matter, but that every ending is also a beginning - we only need to open our eyes to see it.', NULL, 156, 2, 1, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(192, 'Everything, Everything', 'Everything,-Everything', 'http://books.google.com/books/content?id=2sdlCgAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2sdlCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780552574235', 'You\'ve seen the amazing trailer for Everything, Everything starring Amandla Stenberg and Nick Robinson . . . Now read the incredible #1 New York Times bestselling story before you see the movie, in cinemas soon. \'Can\'t wait to see this! Absolutely loved the book\' - Zoella Maddy is allergic to the world; stepping outside the sterile sanctuary of her home could kill her. But then Olly moves in next door. And just like that, Maddy realizes there\'s more to life than just being alive. You only get one chance at first love. And Maddy is ready to risk everything, everything to see where it leads. \'Powerful, lovely, heart-wrenching, and so absorbing I devoured it in one sitting\' - Jennifer Niven, author of All the Bright Places And don\'t miss Nicola Yoon\'s #1 New York Times bestseller The Sun Is Also a Star, in which two teens are brought together just when the universe is sending them in opposite directions.', NULL, 157, 2, 1, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(193, 'Out of My Mind', 'Out-of-My-Mind', 'http://books.google.com/books/content?id=KGhGmiAG5MsC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=KGhGmiAG5MsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781416971719', 'Considered by many to be mentally retarded, a brilliant, impatient fifth-grader with cerebral palsy discovers a technological device that will allow her to speak for the first time.', NULL, 158, 2, 1, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(194, 'Dear Mr Murray', 'Dear-Mr-Murray', 'http://books.google.com/books/content?id=CtsvswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=CtsvswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781473662698', 'The publishing house of John Murray was founded in Fleet Street in 1768 and remained a family firm over seven generations. Published to coincide with this \'remarkable achievement\' and in the anniversary year, Dear Mr Murray is a collection of some of the best letters from the hundreds of thousands held in the John Murray Archive. They reveal not only the story of some of the most interesting and influential books in history but also the remarkable friendships - as well as occasional animosities - between author and publisher, as well as readers, editors, printers and illustrators. Despite the incredible number of letters that were retained by the Murray family, some failed to arrive, others were delayed and some barely survived, but longevity added to the reputation and fame of John Murray and a correspondent in Canada who addressed his letter merely to \'John Murray, The World-wide famous Book & Publishing House, London, England\' as early as 1932 could be confident that his letter would arrive. Intended to entertain and inspire, and spanning more than two hundred years, Dear Mr Murray is full of literary history and curiosities: from Charles Darwin\'s response to the negative reviews of On the Origin of Species to Adrian Conan Doyle challenging Harold Nicolson to a duel for insulting his father in the press; from David Livingstone\'s displeasure at the proposed drawing of a lion to represent his near-death encounter in Missionary Travels to William Makepeace Thackeray apologising for his drunken behaviour; from Byron berating John Murray for being fooled by his girlfriend\'s forgery of his signature to the poet James Hogg so desperate for money that he claims he won\'t be able to afford a Christmas goose; and from Jane Austen expressing concern about printing delays to Patrick Leigh Fermor beseeching Jock Murray not to visit him until he\'d completed A Time of Gifts. Complemented by illustrations and reproductions of letters and envelopes, this is the perfect gift for book lovers everywhere.', NULL, 159, 2, 1, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(195, 'Beautiful Bad', 'Beautiful-Bad', 'http://books.google.com/books/content?id=Oj-EtQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Oj-EtQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781787472761', '\'Ward writes with the same compelling energy as you get in a blockbuster Netflix series\' Daily Mail \'Compelling. Filled with unexpected twists... a riveting read\' Sarah Pekkanen, author of The Wife Between Us Maddie and Ian\'s romance began when he was serving in the British Army and she was a travel writer visiting her best friend Jo in Europe. Now sixteen years later, married with a beautiful son, Charlie, they are living the perfect suburban life in Middle America. But when an accident leaves Maddie badly scarred, she begins attending therapy, where she gradually reveals her fears about Ian\'s PTSD; her concerns for the safety of their young son Charlie; and the couple\'s tangled and tumultuous past with Jo. From the Balkans to England, Iraq to Manhattan, and finally to an ordinary family home in Kansas, the years of love and fear, adventure and suspicion culminate in The Day of the Killing, when a frantic 911 call summons the police to the scene of shocking crime. But what in this beautiful home has gone so terribly bad? Perfect for fans of The Woman in the Window and The Wife Between Us.', NULL, 160, 2, 1, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(196, 'Lady Midnight', 'Lady-Midnight', 'http://books.google.com/books/content?id=ysjgjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ysjgjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471116636', 'The Shadowhunters of Los Angeles star in the first novel in Cassandra Clare\'s newest series, The Dark Artifices, a sequel to the internationally bestselling Mortal Instruments series. Lady Midnight is a Shadowhunters novel. It\'s been five years since the events of City of Heavenly Fire that brought the Shadowhunters to the brink of oblivion. Emma Carstairs is no longer a child in mourning, but a young woman bent on discovering what killed her parents and avenging her losses. Together with her parabatai Julian Blackthorn, Emma must learn to trust her head and her heart as she investigates a demonic plot that stretches across Los Angeles, from the Sunset Strip to the enchanted sea that pounds the beaches of Santa Monica. If only her heart didn\'t lead her in treacherous directions... Making things even more complicated, Julian\'s brother Mark-who was captured by the faeries five years ago-has been returned as a bargaining chip. The faeries are desperate to find out who is murdering their kind-and they need the Shadowhunters\' help to do it. But time works differently in faerie, so Mark has barely aged and doesn\'t recognize his family. Can he ever truly return to them? Will the faeries really allow it? Glitz, glamours, and Shadowhunters abound in this heartrending opening to Cassandra Clare\'s Dark Artifices series.', NULL, 64, 2, 1, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(197, 'The Librarian of Auschwitz', 'The-Librarian-of-Auschwitz', 'http://books.google.com/books/content?id=r5s3vwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=r5s3vwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781529104776', 'For readers of The Tattooist of Auschwitz and The Choice: this is the story of the smallest library in the world - and the most dangerous. \'It wasn\'t an extensive library. In fact, it consisted of eight books and some of them were in poor condition. But they were books. In this incredibly dark place, they were a reminder of less sombre times, when words rang out more loudly than machine guns...\' Fourteen-year-old Dita is one of the many imprisoned by the Nazis at Auschwitz. Taken, along with her mother and father, from the Terezín ghetto in Prague, Dita is adjusting to the constant terror that is life in the camp. When Jewish leader Freddy Hirsch asks Dita to take charge of the eight precious books the prisoners have managed to smuggle past the guards, she agrees. And so Dita becomes the secret librarian of Auschwitz, responsible for the safekeeping of the small collection of titles, as well as the \'living books\' - prisoners of Auschwitz who know certain books so well, they too can be \'borrowed\' to educate the children in the camp. But books are extremely dangerous. They make people think. And nowhere are they more dangerous than in Block 31 of Auschwitz, the children\'s block, where the slightest transgression can result in execution, no matter how young the transgressor... The Sunday Times bestseller for readers of The Boy in the Striped Pyjamas, The Tattooist of Auschwitz and The Choice. Based on the incredible and moving true story of Dita Kraus, holocaust survivor and secret librarian for the children\'s block in Auschwitz.', NULL, 161, 2, 1, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(198, 'How Not to Fall in Love, Actually', 'How-Not-to-Fall-in-Love,-Actually', 'http://books.google.com/books/content?id=SmLbjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SmLbjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471160004', 'Emma has a job in television which is distinctly less glamourous and exciting than it sounds. She\'s managed to claw her way up the ranks from Tea-Maker and Rubbish-Collector to 2nd Assistant Director (heavy on the \'assistant\'. Even heavier on the \'2nd\'). So when she finds she\'s accidentally very pregnant and at the same time accidentally very sacked (well, less accidentally: she did tell her boss to stick his job up his bum), she knows things are going to have to change. Luckily she\'s also accidentally the heir to a lovely cottage in Wimbledon, with a crazy Doberman-owning octogenarian as a neighbour and a rather sexy guy as an accidental tenant. But this baby is coming whether she likes it or not, and she needs to become the sort of person who can look after herself let alone another human being - and quickly.', NULL, 162, 2, 1, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(199, 'Run Away', 'Run-Away', 'http://books.google.com/books/content?id=lDLyvQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=lDLyvQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781784751173', '\"Run Away confirms one of the world\'s finest thriller writers is at the very top of his game.\" PETER JAMES \"Coben never, ever lets you down - but this one is really special.\" LEE CHILD ______________________ YOUR DAUGHTER IS MISSING. YOU\'LL RISK ANYTHING TO FIND HER. And then you see her, frightened and clearly in trouble. You approach her, beg her to come home. SHE RUNS. You follow her into a dark, dangerous world where no-one is safe and murder is commonplace. NOW IT\'S YOUR LIFE ON THE LINE... ______________________ \"The modern master of the hook and twist\" DAN BROWN \"A twisty thriller that\'ll keep you up way past any sensible lights out time\" HEAT \"Wonderful ... yet another winner\" RICHARD OSMAN \"The king of twisty thrillers returns. This is worth turning off your phone for!\" CLOSER \" Coben\'s writing and storytelling are firing on all cylinders and the seemingly straightforward tale takes a sharp turn when it\'s least expected\" DAILY MAIL \"Run Away is Harlan Coben at the height of his narrative mastery... as a thriller it\'s a narcotic... unmissable.\" SHOTS MAGAZINE \"The award-winning Coben once again gets his hook into you and twists to keep you snared.\" RTE GUIDE \"Few of Harlan Coben\'s thrillers are anything less than gripping, but every now and again he writes one that exceeds his own high standards. Run Away is one.\" THE TIMES ONLINE \"A twisty, disturbing and poignant thriller\" WOMAN', NULL, 113, 2, 1, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(200, 'Start with why', 'Start-with-why', 'http://books.google.com/books/content?id=n00dkgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=n00dkgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241958223', 'Why are some people and organisations more inventive, pioneering and successful than others?And why are they able to repeat their success again and again? Because in business, it doesn\'t matter what you do, it matters why you do it. Steve Jobs, the Wright Brothers, and Martin Luther King have one thing in common - they started with why. This book is for anyone who wants to inspire others, or to be inspired. www.startwithwhy.com Jacket design: Base Art Co.', NULL, 95, 2, 1, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(201, 'Finding Cinderella', 'Finding-Cinderella', 'http://books.google.com/books/content?id=8QPnngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8QPnngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471137150', 'A chance encounter in the dark leads eighteen-year-old Daniel and the girl who stumbles across him to profess their love for each other. But this love has conditions: they agree it will last only one hour, and it will be only make-believe. When their hour is up and the girl rushes off like Cinderella, Daniel tries to convince himself that what happened between them seemed perfect only because they were pretending it was. Moments like that happen only in fairy tales. One year and one bad relationship later, his disbelief in love-at-first-sight is stripped away the day he meets Six: a girl with a strange name and an even stranger personality. Unfortunately for Daniel, finding true love doesn\'t guarantee a happily ever after . . . it only further threatens it. Will an unbearable secret from the past jeopardize Daniel and Six\'s only chance at saving each other?', NULL, 147, 2, 1, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(202, 'Sweetpea', 'Sweetpea', 'http://books.google.com/books/content?id=RqXwAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=RqXwAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008216719', '\'If you like your thrillers darkly comic and outrageous this ticks all the boxes\' The SunThe last person who called me \'Sweetpea\' ended up dead... I haven\'t killed anyone for three years and I thought that when it happened again I\'d feel bad. Like an alcoholic taking a sip of whisky. But no. Nothing. I had a blissful night\'s sleep. Didn\'t wake up at all. And for once, no bad dream either. This morning I feel balanced. Almost sane, for once. Rhiannon is your average girl next door, settled with her boyfriend and little dog...but she\'s got a killer secret. Although her childhood was haunted by a famous crime, Rhinannon\'s life is normal now that her celebrity has dwindled. By day her job as an editorial assistant is demeaning and unsatisfying. By evening she dutifully listens to her friend\'s plans for marriage and babies whilst secretly making a list. A kill list. From the man on the Lidl checkout who always mishandles her apples, to the driver who cuts her off on her way to work, to the people who have got it coming, Rhiannon\'s ready to get her revenge. Because the girl everyone overlooks might be able to get away with murder...', NULL, 163, 2, 1, '2021-02-28 19:50:55', '2021-02-28 19:50:55'),
(203, 'The Choice', 'The-Choice-9781846045127', 'http://books.google.com/books/content?id=viHZtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=viHZtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781846045127', 'THE AWARDWINNING INTERNATIONAL BESTSELLER \'Eger\'s remarkable spirit shines through in every word\' Stylist In 1944, sixteen-year-old Edith Eger was sent to Auschwitz. There she endured unimaginable experiences, including being made to dance for the infamous Josef Mengele. Over the coming months, her bravery helped her sister to survive and led to her bunkmates rescuing her during a death march. When their camp was finally liberated, Edith was pulled from a pile of bodies, barely alive. In The Choice, Edith Eger shares her life, remarkable because her years in the concentration camp encouraged her to find a hope and resilience that most of us would never think was possible. It wasn\'t easy but, as she tried to find a future for herself after the Second World War, partly by helping many others through their own versions of trauma, she discovered an honesty, strength and empowerment within herself that makes for a memorable and inspiring read. Compelling, truly remarkable, and ultimately triumphant, The Choice is the unforgettable memoir of a woman who has seen the worst and lived the best.', NULL, 164, 2, 1, '2021-02-28 19:50:55', '2021-02-28 19:50:55'),
(204, 'The Lost Child', 'The-Lost-Child', 'http://books.google.com/books/content?id=VT4-wwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VT4-wwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781472255051', 'A tragic death. A missing baby. A long-kept secret... 1960. Thirteen-year-old Rebecca lives in fear of her father\'s temper. As a storm batters Seaview Cottage one night, she hears a visitor at the door and a violent argument ensues. By the time the police arrive, Rebecca\'s parents are dead and the visitor has fled. No one believes Rebecca heard a stranger downstairs... 2014. Iris, a journalist, is sent to cover the story of a new mother on the run with her desperately ill baby. But fatefully the trail leads to the childhood home of Iris\'s own mother, Rebecca...Seaview Cottage. As Iris races to unravel what happened the night Rebecca\'s parents were killed, it\'s time for Seaview Cottage to give up its secrets. Read The Lost Child, the heart-wrenching new novel from the author of The Girl in the Letter. If you love the novels of Kate Morton and Lucinda Riley, you will love this.', NULL, 165, 2, 1, '2021-02-28 19:50:55', '2021-02-28 19:50:55'),
(205, 'The Mothers', 'The-Mothers', 'http://books.google.com/books/content?id=BgYYyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BgYYyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409184607', '\'Original and stylish... will keep you guessing to the last page\' - SHARON BOLTON \'A meticulously plotted exploration of friendship, foe-ship and the lies that bind, which builds to a gripping and powerful conclusion\' - CARA HUNTER Five Women. They meet at their NCT Group. The only thing they have in common is they\'re all pregnant. Five Secrets. Three years later, they are all good friends. Aren\'t they? One Missing Husband. Now the police have come knocking. Someone knows something. And the trouble with secrets is that someone always tells. For fans of Big Little Lies, The Rumour and I Invited Her In, this is first class psychological suspense from the critically acclaimed Sarah J Naughton. \'Gripping, tense, taut and brilliant. You\'ll be begging your friends to read it so you can discuss it over and over again.\' - Rebecca Reid, Grazia **** \'I love a book filled with secrets and Sarah J Naugton\'s awesome new book is crammed full of them!\' - NetGalley reviewer, 5 stars \'Blimey, what a book! The Mothers front cover gives little away about the extraordinary journey readers are taken on over the course of this book. Part police investigation, part psychological mystery, part woman-affirming literature.\' - NetGalley reviewer, 5 stars \'Wow! What an exhilarating read this turned out to be! Sizzling with tension, this had me on the edge of my seat and up until the wee hours as I couldn\'t put it down.\' - NetGalley reviewer, 5 stars', NULL, 166, 2, 1, '2021-02-28 19:50:55', '2021-02-28 19:50:55');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(206, 'Taking a Chance on Love', 'Taking-a-Chance-on-Love', 'http://books.google.com/books/content?id=HHrjxQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=HHrjxQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781472263575', 'A warm, uplifting novel from the author of New Beginnings at Rose Cottage. Perfect for fans of Lucy Diamond, Sarah Morgan and Holly Martin. One question can change everything. Meet Carmen, Polly and Dana - all happy and successful women, with very different views on relationships. Carmen has made a life with Elliot for the past eight years. She\'s ready for the next step but a proposal seems to be as far away as ever. Polly is devoted to her family. But after her parents\' bitter divorce, she\'s wary of marriage - even after sharing twenty years and one son with Fraser. Single mother Dana longs for companionship, despite her dedication to raising her son Luke. Finding the right person to bring into their lives feels impossible - until a unique way to select a potential Mr Right comes along. With 29th February fast approaching, will they each take the chance this Leap Year to take control of their fates? Don\'t miss New Beginnings at Rose Cottage from Erin Green in which three women who discover that it\'s never too late for a fresh start - or to change your life story.', NULL, 167, 2, 1, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(207, 'The Saboteur of Auschwitz', 'The-Saboteur-of-Auschwitz', 'http://books.google.com/books/content?id=Ys6-xQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Ys6-xQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781787833296', 'For fans of The Tattooist of Auschwitz, The Librarian of Auschwitz and The Choice, this is the incredible true story of a British soldier POW. In 1942, young British soldier Arthur Dodd was taken prisoner by the German Army and transported to Oswiecim in Polish Upper Silesia. The Germans gave it another name, now synonymous with mankind\'s darkest hours. They called it Auschwitz. Forced to do hard labour, starved and savagely beaten, Arthur thought his life would end in Auschwitz. Determined to go down fighting, he sabotaged Nazi industrial work, risked his life to alleviate the suffering of the Jewish prisoners and aided a partisan group planning a mass break-out. This shocking true story sheds new light on the operations at the camp, exposes a hierarchy of prisoner treatment by the SS and presents the largely unknown story of the military POWs held there.', NULL, 168, 2, 1, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(208, '4 Disciplines of Execution', '4-Disciplines-of-Execution', 'http://books.google.com/books/content?id=3jeCngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3jeCngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857205834', 'The Four Disciplines of Execution is about a simple, proven formula for reaching the goals you want to reach as a business or individual. In Covey\'s experience, the thing that most undermines the ability to execute goals is what he calls the Whirlwind: those urgent tasks that must be done simply to keep an organization alive. As Covey shows, the only way to execute new, important goals is to separate those goals from the Whirlwind. The Four Disciplines allow leaders to create a strategy that requires a change in behaviour, since only by ensuring that everyone on the team understands the goal, knows what to do to reach it and knows whether progress is being made, will a leader produce consistent breakthrough results while sustaining the urgent work of the Whirlwind. The Four Disciplines of Execution are:1. Focus on the Wildly Important; 2. Act on the Lead Measures; 3. Keep a Compelling Scoreboard; 4. Create a Cadence of Accountability. For more than a decade FranklinCovey has been studying what it takes to achieve important goals, and in this book they share success stories from a wide range of companies that have implemented the Four Disciplines to result in greater profits, increased market share and improved customer satisfaction. This way of thinking is essential to any company that wants to not only weather, but thrive in this economy.', NULL, 169, 2, 1, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(209, 'Peaky Blinders', 'Peaky-Blinders', 'http://books.google.com/books/content?id=3miGxgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3miGxgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781789461725', '', NULL, 170, 2, 1, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(210, 'The Eyes of Darkness', 'The-Eyes-of-Darkness', 'http://books.google.com/books/content?id=6mezjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6mezjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781472240293', 'If you delight in the suspense of Stephen King and The Stranger by Harlan Coben chilled you to the bone (in the best possible way), you\'ll love The Eyes of Darkness - the classic thriller by Sunday Times and New York Times bestselling author Dean Koontz. \'Not just a master of our darkest dreams but also a literary juggler\' - The Times. Tina Evans can think of no better time for a fresh start. It\'s been a year of unbelievable heartache since her son Danny\'s death. Now the Vegas show that she directed is about to premiere, so she vows to out her grief behind her. Only there is a message for Tina, scrawled on the chalkboard in Danny\'s room. Two words that will send Tina on a terrifying journey... NOT DEAD. This book was originally published under the pseudonym Leigh Nichols.', NULL, 171, 2, 1, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(211, 'Cruel Heart Broken', 'Cruel-Heart-Broken', 'http://books.google.com/books/content?id=vLGMjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vLGMjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474906494', 'Laurie is a good girl - so everyone thinks. But seven months ago she did something that she can\'t undo and it\'s tearing her apart. Charlie used to be her best friend. He\'s done something he regrets too...and now someone has died. Two impulsive decisions. Two toxic secrets. Too many hearts broken. Partly inspired by a true story, this is a heart-wrenching novel about impulsive mistakes, and their devastating consequences', NULL, 172, 2, 1, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(212, 'Pop Girl', 'Pop-Girl', 'http://books.google.com/books/content?id=uCLejwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=uCLejwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407159393', 'After an I-still-can\'t-believe-it brush with fame, teen singing sensation Storm Hall is determined to keep her star on the rise. She records a demo, and soon her all-time favourite label wants to sign her. And is mega-hottie rock god Jase Mahone flirting with her? A hotel suite in London, fancy cars, parties - Storm\'s finally living the dream! But life as a pop star means letting go of her old life, even the people she loves most. Is this really the dream she wants?', NULL, 174, 2, 1, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(213, 'In Bloom', 'In-Bloom', 'http://books.google.com/books/content?id=qgnmswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=qgnmswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008216726', 'Darkly comic crime sequel to Sweetpea, following girl-next-door serial killer Rhiannon as she\'s now caught between the urge to kill and her unborn baby stopping her. If only they knew the real truth. It should be my face on those front pages. My headlines. I did those things, not him. I just want to stand on that doorstep and scream it: IT WAS ME. ME. ME. ME. ME! Rhiannon Lewis has successfully fooled the world and framed her cheating fianc� Craig for the depraved and bloody killing spree she committed. She should be ecstatic that she\'s free. Except for one small problem. She\'s pregnant with her ex lover\'s child. The ex-lover she only recently chopped up and buried in her in-laws garden. And as much as Rhiannon wants to continue making her way through her kill lists, a small voice inside is trying to make her stop. But can a killer\'s urges ever really be curbed?', NULL, 163, 2, 1, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(214, 'Forever', 'Forever', 'http://books.google.com/books/content?id=KnXqngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=KnXqngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545682800', 'A human girl and her werewolf boyfriend must fight for their love as death comes closing in.', NULL, 79, 2, 1, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(215, 'King of Ashes', 'King-of-Ashes', 'http://books.google.com/books/content?id=bcgrvAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bcgrvAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007264865', 'A new novel from internationally bestselling author Raymond E. Feist. The world of Garn once boasted five great kingdoms, until the King of Ithrace was defeated and every member of his family executed by Lodavico, the ruthless King of Sandura, a man with ambitions to rule the world. Ithrace\'s ruling family were the legendary Firemanes, and represented a great danger to the other kings. Now four great kingdoms remain, on the brink of war. But rumour has it that the newborn son of the last king of Ithrace survived, carried off during battle and sequestered by the Quelli Nacosti, a secret society whose members are trained to infiltrate and spy upon the rich and powerful throughout Garn. Terrified that this may be true, and that the child will grow to maturity with bloody revenge in his heart, the four kings have placed a huge bounty on the child\'s head. In the small village of Oncon, Declan is apprenticed to a master blacksmith, learning the secrets of producing the mythical king\'s steel. Oncon is situated in the Covenant, a neutral region lying between two warring kingdoms. Since the Covenant was declared, the region has existed in peace, until violence explodes as slavers descend upon the village to capture young men to press as soldiers for Sandura. Declan must escape, to take his priceless knowledge to Baron Daylon Dumarch, ruler of Marquensas, perhaps the only man who can defeat Lodavico of Sandura, who has now allied himself with the fanatical Church of the One, which is marching across the continent, imposing its extreme form of religion upon the population and burning unbelievers as they go. Meanwhile, on the island of Coaltachin, the secret domain of the Quelli Nacosti, three friends are being schooled in the deadly arts of espionage and assassination: Donte, son of one of the most powerful masters of the order; Hava, a serious girl with fighting abilities that can set any opponent on their back; and Hatu, a strange, conflicted lad in whom fury and calm war constantly, whose hair is a bright and fiery shade of red...', NULL, 175, 2, 1, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(216, 'Linger', 'Linger', 'http://books.google.com/books/content?id=VUcgnwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VUcgnwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407145778', 'The #1 bestselling SHIVER, LINGER and FOREVER trilogy rejacketed for a new generation of fans. In SHIVER, Grace and Sam found each other. Now, in LINGER, they must fight to be together. For Grace, this means defying her parents and keeping dangerous secrets. For Sam, it means grappling with his werewolf past ... and figuring out a way to survive the future. But just when they manage to find happiness, Grace finds herself changing in ways she could never have expected...', NULL, 79, 2, 1, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(217, 'Forever', 'Forever-9781407145785', 'http://books.google.com/books/content?id=Slk0ngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Slk0ngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407145785', 'The #1 bestselling SHIVER, LINGER and FOREVER trilogy rejacketed for a new generation of fans. In SHIVER, Grace and Sam found each other. In LINGER, they fought to be together. Now, in FOREVER, the stakes are even higher than before. Wolves are being hunted. Lives are being threatened. And love is harder and harder to hold on to as death comes closing in.', NULL, 79, 2, 1, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(218, 'Sinner', 'Sinner', 'http://books.google.com/books/content?id=-roUrgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=-roUrgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407145730', 'You thought it ended with FOREVER, but there\'s another story to tell - the one of Cole and Isabel. SINNER follows Cole St. Clair, a pivotal character from the #1 bestselling Shiver Trilogy. found. Cole St. Clair has come to California for one reason: to get back Isabel Culpeper. She fled from his damaged, drained life, and damaged and drained it even more. He doesn\'t just want her. He needs her. lost. Isabel is trying to build herself a life in Los Angeles. It\'s not really working. She can play the game as well as all the other fakes. But what\'s the point? What is there to win? sinner. Cole and Isabel share a past that never seemed to have a future. They have the power to love each other and the power to tear each other apart. The only thing for certain is that they cannot let go.', NULL, 79, 2, 1, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(219, 'Putting the One Minute Manager to Work', 'Putting-the-One-Minute-Manager-to-Work', 'http://books.google.com/books/content?id=ypaMRBrDHpMC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ypaMRBrDHpMC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007109623', 'How to applu the key techniques learnt in One-Minute Manager. This is the companion to the original blockbuster bestseller which has transformed business around the world.', NULL, 176, 2, 1, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(220, 'Hold Your Breath', 'Hold-Your-Breath', 'http://books.google.com/books/content?id=tM50xQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tM50xQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008309640', 'If you go down to the woods today, you\'re in for a big surprise... \'Exceptional\' A.J. Finn \'A smart thriller\' Gillian McAllister \'Creepy, absorbing and unnerving\' T.M. Logan Kitty Marchland has always known that her family aren\'t like others. But when her father uproots them to a remote cottage in the woods, she realises that her parents are keeping secrets from her - secrets that could unravel everything. Years later, Kitty starts to question what really happened out in the forest. When the police revisit a suspicious death, she must examine her most painful memories - and this time, there\'s nowhere to hide... A gripping and suspenseful thriller that will captivate you from first to last page. Perfect for fans of Ruth Ware and Cass Green.', NULL, 177, 2, 1, '2021-02-28 19:50:58', '2021-02-28 19:50:58'),
(221, 'Girl, Woman, Other', 'Girl,-Woman,-Other-9780241984994', 'http://books.google.com/books/content?id=75dKyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=75dKyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241984994', 'BRITISH BOOK AWARDS AUTHOR & FICTION BOOK OF THE YEAR 2020 WINNER OF THE BOOKER PRIZE 2019 THE SUNDAY TIMES 1# BESTSELLER \'The most absorbing book I read all year.\' Roxane Gay ____________________________ This is Britain as you\'ve never read it. This is Britain as it has never been told. From Newcastle to Cornwall, from the birth of the twentieth century to the teens of the twenty-first, Girl, Woman, Other follows a cast of twelve characters on their personal journeys through this country and the last hundred years. They\'re each looking for something - a shared past, an unexpected future, a place to call home, somewhere to fit in, a lover, a missed mother, a lost father, even just a touch of hope . . . ____________________________ \'[Bernardine Evaristo] is one of the very best that we have\' Nikesh Shukla on Twitter \'A choral love song to black womanhood in modern Great Britain\' Elle \'Beautifully interwoven stories of identity, race, womanhood, and the realities of modern Britain. The characters are so vivid, the writing is beautiful and it brims with humanity\' Nicola Sturgeon on Twitter \'Bernardine Evaristo can take any story from any time and turn it into something vibrating with life\' Ali Smith, author of How to be both \'Exceptional. You have to order it right now\' Stylist \'Sparkling, inventive\' Sunday Times', NULL, 38, 2, 1, '2021-02-28 19:50:58', '2021-02-28 19:50:58'),
(222, 'Five Steps to Happy', 'Five-Steps-to-Happy', 'http://books.google.com/books/content?id=wG4PwwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=wG4PwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409184584', '\'An up-lit treasure\' Red magazine Life can change in a heartbeat... When struggling actress Heidi has a life-changing accident aged 32, her world falls apart. Stuck in hospital and unable to walk, her only companion is Maud, the elderly lady in the bed next to hers. Heidi misses her flatmate, her life, her freedom - surely 32 is too young to be an amputee? But when Maud\'s aloof but attractive grandson Jack pays a visit to the ward, Heidi realises that her life isn\'t over just because it\'s different. It might not look like the life she dreamed of, but it\'s the one she\'s got - and there\'s a lot she still wants to tick off her bucket list. With Jack at her side, will Heidi take the first step back to happiness? Or is there one more surprise still in store...? A feel-good read based on the inspiring true story of journalist Ella Dove. Sometimes all it takes is one small step...', NULL, 178, 2, 1, '2021-02-28 19:50:58', '2021-02-28 19:50:58'),
(223, 'Girls Who Rocked the World', 'Girls-Who-Rocked-the-World', 'http://books.google.com/books/content?id=hr14swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=hr14swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471171017', '\"The future belongs to those who believe in the beauty of their dreams\" Eleanor Roosevelt Get ready to meet some incredible young women who made their mark on the world before turning twenty and prove that when it comes to having an impact, there\'s no such thing as too young! Whether designing famous monuments, fighting for their countries\' freedom or being political pioneers these gutsy girls have changed the way we view the world and ourselves. From Florence Nightingale to Anna Pavlova, Coco Chanel to Eva Per�n, The Bront� Sisters to Indira Gandhi, this book features women from across history and around the globe, who have all achieved remarkable things. Interspersed with the amazing accounts of girls throughout history are stories of powerful young women who are changing the world right now - girls like Winter Vinecki, the creator of the non-profit organization Team Winter, and Jazmin Whitley, the youngest designer to show at L.A. Fashion Week. It\'s never too soon to start making a difference - be inspired and empowered by this fun collection that shows girls really can rock the world!', NULL, 179, 2, 1, '2021-02-28 19:50:58', '2021-02-28 19:50:58'),
(224, 'The Art of the Good Life', 'The-Art-of-the-Good-Life', 'http://books.google.com/books/content?id=3Zl_tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3Zl_tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781473667525', 'The indispensable new work from the author of the international and Sunday Times bestseller The Art of Thinking Clearly Have you ever... · Spent too long on a powerpoint presentation? · Lost sight of what makes you happy? · Failed to reach a long-term goal? · Become infuriated by queuing, tax or parking tickets? · Broken a promise you knew you\'d keep? Since the dawn of civilization, we\'ve been asking ourselves what it means to live a good life: how should I live, what will truly make be happy, how much should I earn, how should I spend my time? In the absence of a single simple answer, what we need is a toolkit of mental models, a guide to practical living. In The Art of the Good Life, you\'ll find fifty-two intellectual shortcuts for wiser thinking and better decisions, at home and at work. They may not guarantee you a good life, but they\'ll give you a better chance.', NULL, 180, 2, 1, '2021-02-28 19:50:59', '2021-02-28 19:50:59'),
(225, 'Linger', 'Linger-9780545682794', 'http://books.google.com/books/content?id=op8RnwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=op8RnwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545682794', 'As Grace hides her deep love for Sam from her parents and Sam struggles to release his werewolf past and claim a human future, a new wolf named Cole wins Isabel\'s heart, but his own past threatens to destroy the whole pack.', NULL, 79, 2, 1, '2021-02-28 19:50:59', '2021-02-28 19:50:59'),
(226, 'Norse Mythology', 'Norse-Mythology', 'http://books.google.com/books/content?id=dVoJtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=dVoJtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408891957', 'THE NO. 1 SUNDAY TIMES AND NEW YORK TIMES BESTSELLER \'With the deftest of touches, the characters are once again brought to life\' JOANNE HARRIS\'The halls of Valhalla have been crying out for Gaiman to tell their stories\' OBSERVERThe great Norse myths, which have inspired so much of modern fiction, are dazzlingly retold by Neil Gaiman. Tales of dwarfs and frost giants, of treasure and magic, and of Asgard, home to the gods: Odin the all-father, highest and oldest of the Aesir; his mighty son Thor, whose hammer Mjollnir makes the mountain giants tremble; Loki, wily and handsome, reliably unreliable in his lusts; and Freya, more beautiful than the sun or the moon, who spurns those who seek to control her. From the dawn of the world to the twilight of the gods, this is a thrilling, vivid retelling of the Norse myths from the award-winning, bestselling Neil Gaiman.*This book has been printed with two different cover designs. We are unable to accept requests for a specific cover. The different covers will be assigned to orders at random*', NULL, 181, 2, 1, '2021-02-28 19:50:59', '2021-02-28 19:50:59'),
(227, 'Big Sky', 'Big-Sky', 'http://books.google.com/books/content?id=Xs5lyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Xs5lyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780552776660', 'THE NUMBER ONE SUNDAY TIMES BESTSELLER: THE RETURN OF JACKSON BRODIE, \'LIKE ALL GOOD DETECTIVES, A HERO FOR MEN AND WOMEN ALIKE\' (The Times) \'Big Sky is laced with Atkinson\'s sharp, dry humour, and one of the joys of the Brodie novels has always been that they are so funny\' (Observer) Jackson Brodie has relocated to a quiet seaside village in North Yorkshire, in the occasional company of his recalcitrant teenage son Nathan and ageing Labrador Dido, both at the discretion of his former partner Julia. It\'s a picturesque setting, but there\'s something darker lurking behind the scenes. Jackson\'s current job, gathering proof of an unfaithful husband for his suspicious wife, seems straightforward, but a chance encounter with a desperate man on a crumbling cliff leads him into a sinister network--and back into the path of someone from his past. Old secrets and new lies intersect in this breathtaking new literary crime novel, both sharply funny and achingly sad, by one of the most dazzling and surprising writers at work today.', NULL, 69, 2, 1, '2021-02-28 19:50:59', '2021-02-28 19:50:59'),
(228, 'Hatchet', 'Hatchet', 'http://books.google.com/books/content?id=FgZLMfXGO8EC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=FgZLMfXGO8EC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780330439725', 'After a plane crash, thirteen-year-old Brian spends fifty-four days in the wilderness, learning to survive initially with only the aid of a hatchet given him by his mother, and learning also to survive his parents\' divorce.', NULL, 182, 2, 1, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(229, 'The Giver of Stars', 'The-Giver-of-Stars-9780718183219', 'http://books.google.com/books/content?id=jgg-zQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=jgg-zQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780718183219', 'Als het huwelijk van een vrouw vanaf het begin inhoudsloos is, sluit ze zich aan bij de \'paardenbibliotheek\' van Kentucky en leert ware vriendschap en liefde kennen.', NULL, 72, 2, 1, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(230, 'The Shrunken Head', 'The-Shrunken-Head', 'http://books.google.com/books/content?id=MLo7jwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=MLo7jwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781444777215', 'The book is about, among other things: the strongest boy in the world, a talking cockatoo, a faulty mind reader, a beautiful bearded lady and a nervous magician, an old museum, and a shrunken head. Blessed with extraordinary abilities, orphans Philippa, Sam, and Thomas have grown up happily in Dumfrey\'s Dime Museum of Freaks, Oddities, and Wonders. Philippa is a powerful mentalist, Sam is the world\'s strongest boy, and Thomas can squeeze himself into a space no bigger than a bread box. The children live happily with museum owner Mr. Dumfrey, alongside other misfits. But when a fourth child, Max, a knife-thrower, joins the group, it sets off an unforgettable chain of events. When the museum\'s Amazonian shrunken head is stolen, the four are determined to get it back. But their search leads them to a series of murders and an explosive secret about their pasts.', NULL, 183, 2, 1, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(231, 'Shiver', 'Shiver', 'http://books.google.com/books/content?id=53ysngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=53ysngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407145761', 'The #1 bestselling SHIVER, LINGER and FOREVER trilogy rejacketed for a new generation of fans. This chilling love story will have you hooked from the very first page. When a local boy is killed by wolves, Grace\'s small town becomes a place of fear. But Grace is fascinated by the pack, and finds herself drawn to a yellow-eyed wolf. There\'s something about him - something almost human. Then Grace meets a yellow-eyed boy whose familiarity takes her breath away...', NULL, 79, 2, 1, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(232, 'The Craftsman', 'The-Craftsman', 'http://books.google.com/books/content?id=FegHtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=FegHtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409174134', 'He makes his living from death. But is he capable of murder? Florence Lovelady\'s career was made when she convicted coffin-maker Larry Grassbrook of a series of child murders 30 years ago. Like something from our worst nightmares, the victims were buried, but while they were still alive. Larry confessed the crimes; it was an open and shut case. But now he\'s dead, and events from the past start to repeat themselves. Did she get it wrong all those years ago? Or is there something much darker at play?', NULL, 184, 2, 1, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(233, 'The Thunder Girls', 'The-Thunder-Girls', 'http://books.google.com/books/content?id=2sqOwgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2sqOwgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781529017434', 'Jackie Collins for a new generation. The Thunder Girls is a blockbuster novel, filled with obsession, addiction, betrayal and revenge, that charts the rise and fall of an 80s girl band from Melanie Blake, a true insider of the music business. Perfect for fans of Tasmina Perry and Daisy Jones and The Six. Soon to be a nationwide play with an all star cast.THEChrissie, Roxanne, Carly and Anita, an eighties pop sensation outselling and out-classing their competition. Until it all comes to an abrupt end and three of their careers are over, and so is their friendship. THUNDERThirty years later, their old record label wants the band back together for a huge money-making concert. But the wounds are deep and some need this gig more than others.In those decades apart life was far from the dream they were living as members of The Thunder Girls. Breakdowns, bankruptcy, addiction and divorce have been a constant part of their lives. They\'ve been to hell and back, and some are still there. GIRLSCan the past be laid to rest for a price, or is there more to this reunion than any of them could possibly know? Whilst they all hunger for a taste of success a second time around, someone is plotting their downfall in the deadliest way possible . . .', NULL, 185, 2, 1, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(234, 'Thin Air', 'Thin-Air', 'http://books.google.com/books/content?id=ZbM1DwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ZbM1DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447202103', 'Thin Air is the sixth book in Ann Cleeves\' Shetland series - now a major BBC One drama starring Douglas Henshall as detective Jimmy Perez, Shetland. A group of old university friends leave the bright lights of London and travel to Unst, Shetland\'s most northerly island, to celebrate the marriage of one of their friends to a Shetlander. But late on the night of the wedding party, one of them, Eleanor, disappears - apparently into thin air. It\'s mid-summer, a time of light nights and unexpected mists. The following day, Eleanor\'s friend Polly receives an email. It appears to be a suicide note, saying she\'ll never be found alive. And then Eleanor\'s body is discovered, lying in a small loch close to the cliff edge. Detectives Jimmy Perez and Willow Reeves are dispatched to Unst to investigate. Before she went missing, Eleanor claimed to have seen the ghost of a local child who drowned in the 1920s. Her interest in the ghost had seemed unhealthy - obsessive, even - to her friends: an indication of a troubled mind. But Jimmy and Willow are convinced that there is more to Eleanor\'s death than they first thought. Is there a secret that lies behind the myth? One so shocking that someone would kill - many years later - to protect? Ann Cleeves\' striking Shetland novel explores the tensions between tradition and modernity that lie deep at the heart of a community, and how events from the past can have devastating effects on the present.Also available in the Shetland series are Raven Black, White Nights, Red Bones, Blue Lightning and Dead Water.', NULL, 186, 2, 1, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(235, 'Bring Me Back', 'Bring-Me-Back', 'http://books.google.com/books/content?id=TJCHswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TJCHswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008244873', 'The million-copy bestselling author returns with a breathtaking thriller. \'We\'re in a new Golden Age of suspense writing now, because of amazing books like Bring Me Back\' Lee Child \'An addictive new voice in suspense fiction\' Sophie Hannah \'Made me stay up way beyond my bedtime!\' Jane Corry Finn and Layla: young and in love, their whole lives ahead of them. Driving back from a holiday in France one night, Finn pulls in to a service station, leaving Layla alone in the car. When he returns, minutes later, Layla has vanished, never to be seen again. That\'s the story Finn tells the police. It\'s the truth - but not the whole truth. Twelve years later, Finn has built a new life with Ellen, Layla\'s sister, when he receives a phone call. Someone has seen Layla. But is it her - or someone pretending to be her? If it is her, what does she want? And what does she know about the night she disappeared? Bring Me Back is the utterly compelling, white-knuckle thriller from Sunday Times bestseller B A Paris. \'An addictive new voice in suspense fiction\' Sophie Hannah \'Just finished this BRILLIANT book...Clever, addictive and twisty, I couldn\'t sleep until I found out the truth...The twist floored me! Utterly compelling from beginning to end\' Claire Douglas \'Made me stay up way beyond my bedtime! BA Paris has a knack for getting into your head.\' Jane Corry \'A page-turning masterpiece\' Amanda Prowse \'A tale of dark secrets, with mystery and intrigue building up and up to an ending with a fabulous twist. I devoured it - I couldn\'t turn the pages quick enough.\' Mel Sherratt \'This book is compulsive reading from start to finish. A perfectly crafted work of art, seamless and mesmerising. I envy those yet to read it for the pleasure they have in store.\' Amanda Robson \'A cracking page turner with a killer twist.\' Camilla Way \'An incredibly pacy, heart-pounding thriller - the twist at the end left me reeling. B A Paris does it again in this exhilarating exploration of love, jealousy and betrayal. A must read for 2018!\' Phoebe Morgan \'Bring Me Back will not leave your hands until you have turned the last page!\' Wendy Walker \'Bring Me Back is AWESOME. That final twist!\' Lisa Hall \'Great read and OMG that ending\' Annabel Kantaria', NULL, 187, 2, 1, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(236, 'Cold Earth', 'Cold-Earth', 'http://books.google.com/books/content?id=YKkWDgAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YKkWDgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447278221', 'Cold Earth is the seventh book in Ann Cleeves\' Shetland series - a major BBC One drama starring Douglas Henshall.In the dark days of a Shetland winter, torrential rain triggers a landslide that crosses the main Lerwick-Sumburgh road and sweeps down to the sea. At the burial of his old friend Magnus Tait, Jimmy Perez watches the flood of mud and peaty water smash through a croft house in its path. Everyone thinks the croft is uninhabited, but in the wreckage he finds the body of a dark-haired woman wearing a red silk dress. In his mind, she shares his Mediterranean ancestry and soon he becomes obsessed with tracing her identity. Then it emerges that she was already dead before the landslide hit the house. Perez knows he must find out who she was, and how she died.Also available in the Shetland series are Raven Black, White Nights, Red Bones, Blue Lightning, Dead Water and Thin Air.', NULL, 186, 2, 1, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(237, 'Jerūsallama hāle dūra hai', 'Jerūsallama-hāle-dūra-hai', '', '', '9788175993488', 'Travelogue, covering different places of the world.', NULL, 188, 2, 1, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(238, 'Harbour Street', 'Harbour-Street', 'http://books.google.com/books/content?id=Y7M1DwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Y7M1DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447202097', 'WINNER OF THE CRIME WRITERS\' ASSOCIATION DIAMOND DAGGER AWARD 2017\"One of the best natural writers of detective fiction\" Sunday ExpressHarbour Street is the sixth book in Ann Cleeves\' crime novel series Vera - which is a major TV detective drama starring Brenda Blethyn on ITV. A KILLING. In Newcastle, Detective Joe Ashworth and his daughter Jessie travel home on the busy Metro. The train is stopped unexpectedly, and Jessie sees that one woman doesn\'t leave with the other passengers: Margaret Krukowski has been fatally stabbed. A WITNESS. No one saw the murder take place. How can this be, when the train was packed? Searching for a lead, DI Vera Stanhope heads to the quiet Northumberland town of Mardle to investigate. She can feel in her bones that the local residents know more than they are letting on: a killer is among them.A SECRET.Just days later, a second woman is murdered. Retracing the victims\' final steps, Vera finds herself searching deep into the hidden past of this seemingly innocent neighbourhood, led by clues that keep revolving around one street: why are the residents of Harbour Street so reluctant to speak? DI Vera Stanhope is back. And she wants answers.', NULL, 186, 2, 1, '2021-02-28 19:51:02', '2021-02-28 19:51:02'),
(239, 'Those Who Walk Away', 'Those-Who-Walk-Away', 'http://books.google.com/books/content?id=fF1dngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=fF1dngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780349004860', 'The honeymoon is over; the bride dead by her own hand. Ray Garrett, the grieving husband, convinces the police in Rome of his innocence, but not his father-in-law, Ed Coleman, who shoots him at point-blank range and leaves him for dead. Ray survives and follows Coleman to Venice, where the two fall into an eerie game of cat-and-mouse - Coleman obsessed with vengeance and Ray determined to save his reputation, and himself. Each is at once the hunter and the hunted in a tense duel that, as each manages to walk away, draws them nearer to death.', NULL, 144, 2, 1, '2021-02-28 19:51:02', '2021-02-28 19:51:02'),
(240, 'Hag-Seed', 'Hag-Seed', 'http://books.google.com/books/content?id=6biDvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6biDvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780099594024', 'Selected as a Book of the Year -- Observer, Sunday Times, Times, Guardian, i magazine \'It\'s got a thunderstorm in it. And revenge. Definitely revenge.\' Felix is at the top of his game as Artistic Director of the Makeshiweg Theatre Festival. His productions have amazed and confounded. Now he\'s staging a Tempest like no other: not only will it boost his reputation, it will heal emotional wounds. Or that was the plan. Instead, after an act of unforeseen treachery, Felix is living in exile in a backwoods hovel, haunted by memories of his beloved lost daughter, Miranda. And also brewing revenge. After twelve years, revenge finally arrives in the shape of a theatre course at a nearby prison. Here, Felix and his inmate actors will put on his Tempest and snare the traitors who destroyed him. It\'s magic! But will it remake Felix as his enemies fall? Margaret Atwood\'s novel take on Shakespeare\'s play of enchantment, revenge and second chances leads us on an interactive, illusion-ridden journey filled with new surprises and wonders of its own.', NULL, 189, 2, 1, '2021-02-28 19:51:02', '2021-02-28 19:51:02'),
(241, 'In the Heart of the Country', 'In-the-Heart-of-the-Country', 'http://books.google.com/books/content?id=AXJMnwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=AXJMnwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781906509835', 'A beautifully written and wonderfully evocative volume offering descriptive imagery of rural England; the countryside and its people.', NULL, 190, 2, 1, '2021-02-28 19:51:02', '2021-02-28 19:51:02'),
(242, 'Stop Doing That Sh*t', 'Stop-Doing-That-Sh*t', 'http://books.google.com/books/content?id=l_sjwQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=l_sjwQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008344412', 'From the author of the New York Times and international bestseller Unfu*k Yourself Gary John Bishop presents a no-holds-barred guide to breaking through our cycles of self-sabotage to get what we want out of life. In Unfu*k Yourself, Gary John Bishop told us it was time to stop making excuses- to recognize and take responsibility for the negative self-talk holding us back. In Stop Doing That Sh*t, he builds on that message, teaching us how to stop self-sabotaging behavior. Bishop explains how our destructive cycles come down to the way that we\'re wired. He then identifies different types of people and the ways we fu*k ourselves over: We can\'t save money. We land in the same type of toxic relationship. We\'re stuck in a rut at work. Analysing why we act the way we do, including what our common grenades are that blow up our lives, Bishop then shows how we can interrupt the cycle and stop self-sabotaging our lives. Written in the same in your face style as Unfu*k Yourself, Stop Doing that Sh*t will help us get in touch with our psychological machinery so we learn to interrupt negative thoughts and behaviour before they start, allowing us to give our attention to something else, and start to find success in the areas we thought we never could. We can take back our lives. We may have fu*ked up in the past, but Stop Doing That Sh*t will show us how to break the patterns in order to live the lives we yearn to have.', NULL, 191, 2, 1, '2021-02-28 19:51:03', '2021-02-28 19:51:03'),
(243, 'FURIES.', 'FURIES.', '', '', '9780008288983', '', NULL, 192, 2, 1, '2021-02-28 19:51:03', '2021-02-28 19:51:03'),
(244, 'A Little Princess', 'A-Little-Princess', 'http://books.google.com/books/content?id=rrBMMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rrBMMQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407172699', 'Sent to an English boarding school from her home in India, privileged Sara Crewe becomes a show pupil - a \"little princess\" with luxuries bestowed upon her because of her father\'s wealth. But when her father dies, Sara\'s whole life is turned upside down as she is transformed from princess to pauper. Abused by Miss Minchin, the spiteful headmistress who treats her like a slave, Sara finds protection in her imagination and sisterly love in her friend Becky. As she struggles to hold on to the memory of her beloved father, Sara learns that strength doesn\'t come from wealth - it comes from love. After all, real little princesses are made with kindness.', NULL, 193, 2, 1, '2021-02-28 19:51:03', '2021-02-28 19:51:03'),
(245, 'Bloodline Rising', 'Bloodline-Rising', 'http://books.google.com/books/content?id=cafDPQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cafDPQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781406310238', 'This is the breath-taking second title in Katy Moran\'s \"Bloodline\" series. The Ghost is the fastest, most cunning young criminal in Constantinople. Skilled at lying and deceit, he has the power to twist the minds of men, bending them to his will. He is both invisible and invincible. Or at least he thinks so - till the day his father returns from the desert. A ruthless barbarian assassin, Essa is not pleased to discover that his wild son Cai has become the city\'s most notorious thief. But sinister forces are moving against Cai and he finds himself captive on a trading ship.The Ghost no longer, he is now a slave. But luck has not deserted him completely - the ship is bound for Britain, the home his barbarian parents fled, long ago. When he becomes a slave to Wulfhere, prince of Mercia, Cai soon discovers that his Anglish masters know more about his family than he does - what secrets have his mother and father been keeping from him? As Cai sharpens his skills of subterfuge and persuasion, war threatens, and he must choose: will he use his phenomenal talents for good, or evil?', NULL, 194, 2, 1, '2021-02-28 19:51:03', '2021-02-28 19:51:03'),
(246, 'The Forgotten Art of Happiness', 'The-Forgotten-Art-of-Happiness', 'http://books.google.com/books/content?id=bnmIuwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bnmIuwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781724560629', '\"Ali Zakaria provides advice that is both simple and wise, both rigorous and practical. Read the book, apply its lessons, and enjoy higher levels of fulfillment and happiness\"Tal Ben-ShaharThe best-selling author of Happier: Learn the Secrets to Daily Joy and Lasting Fulfillment and lecturer on positive psychology at Harvard University.\"This book is not some lightweight personal development book about happiness, it is a down-to-earth and practical guide to happiness that includes specific tactics and strategies to help you improve your overall happiness\"Eric EdmeadesSerial Entrepreneur, International Business Speaker, and Author.\"Great, authentic book that\'s full of practical ideas. The fact that all ideas are tested by the author means that you too can do it to enjoy a happier life.\" Mohamed Tohami,Chief Dreamer and Founder, the Passion PointThey say there is scientific proof that happiness is simply a choice you can make. That, however, couldn\'t be further from the truth.As you will discover throughout the course of this book, happiness is more than a mere decision. It\'s taking life one step a time, adjusting your mindset and your choices as you travel through life\'s journey.More than that, you can never really be happy if you don\'t answer those questions that you constantly avoid. Why should I be happy? How can I forgive myself? What about the negative influences that surround me?Judge, author and founder of \"A Space To Be\" Ali Zakaria, has organized innumerable workshops and group discussions that have helped countless people discover who they really are...and now it\'s YOUR turn.Why Are You Still Postponing Happiness?Click \'Add To Cart\', Give This Book A Thorough Read & Become Your Own Beacon Of Happiness!', NULL, 195, 2, 1, '2021-02-28 19:51:04', '2021-02-28 19:51:04'),
(247, 'The Happy Countryman', 'The-Happy-Countryman', 'http://books.google.com/books/content?id=iVnTnQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=iVnTnQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781906509828', 'An enchanting tribute to English country life.', NULL, 190, 2, 1, '2021-02-28 19:51:04', '2021-02-28 19:51:04'),
(248, 'English Country Houses', 'English-Country-Houses', 'http://books.google.com/books/content?id=gfUBoQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gfUBoQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781910065112', '\"There is nothing quite like the English country house anywhere else in the world.\" So pronounces Vita Sackville-West in the beautiful essay that opens English Country Houses, a brief history of the English country house from the Middle Ages to the twentieth century. People may know of Sackville West\'s novels, or her passion for gardening, or her relationship with Virginia Woolf, but few know of her efforts to boost the morale of her beloved England during World War II. Sackville-West spent her childhood years at Knole House, a stately country home that deeply influenced her life and work. In entertaining and accessible prose she brings a deep affection to the task of boosting the morale of a country beset by war. This volume in the Britain in Pictures series is a love letter to the elegant homes of the English countryside and served as a balm to a besieged country. Writing at the height of the Blitz, as cities lay in smoldering ruins after relentless bombing, Sackville-West demonstrates a yearning for the safety provided by these exceptional buildings. We discover the architecture of the stately houses, with details conveyed in such entertaining and vivid prose that the buildings and surrounding areas come to life. The story is not just about the buildings, however, but also about the people who built and lived in them, from the most common of squires to the highest-born kings and queens. Equal parts architectural history and cultural history, this insider\'s view is quintessentially British. Its elegant package, with a ribbon for bookmarking, makes it the perfect gift for any Anglophile.', NULL, 196, 2, 1, '2021-02-28 19:51:04', '2021-02-28 19:51:04');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(249, 'I Know My Name', 'I-Know-My-Name', 'http://books.google.com/books/content?id=uYRwvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=uYRwvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008237530', '...But what if that\'s the only thing you can remember? What would you do? If you woke up on a deserted island, with no recollection of who you are and no idea how you got there, surrounded by four strangers? Your only clue to your identity is an unspeakable yearning to have a baby back in your arms. What would you do? If you were a devoted husband and father with a beautiful, successful wife, and one day you arrived home to find your wife gone, and your children alone in the house? A nationwide hunt begins for Eloise Shelley. A sweep of the family home reveals that the baby cameras were bugged - someone was spying on the Shelleys. Can we ever really know what goes on behind closed doors? Who was Eloise? Finding out might just cost her her life...', NULL, 197, 2, 1, '2021-02-28 19:51:04', '2021-02-28 19:51:04'),
(250, 'The Ingo Chronicles: the Deep', 'The-Ingo-Chronicles:-the-Deep', 'http://books.google.com/books/content?id=7u67uAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=7u67uAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007464128', 'In the depths of the ocean, a monster is stirring. Only one girl - half Mer, half human - has travelled to the bottom of the sea and returned alive. With the help of her friend the whale, Sapphy must return to the Deep to fight this terrifying creature - and her brother Conor and Mer friend Faro will not let her go alone.', NULL, 198, 2, 1, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(251, 'Ingo Chronicles', 'Ingo-Chronicles', 'http://books.google.com/books/content?id=lCKyuAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=lCKyuAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007464111', '\"I can\'t go back in the house. I\'m restless, prickling all over. The wind hits me like slaps from huge invisible hands. But it\'s not the wind that worries me. It\'s something else, beyond the storm...\" Sapphire and Conor can\'t forget their adventures in Ingo, the mysterious world beneath the sea. They long to see their Mer friends Faro and Elvira, and swim with the dolphins once more. But a crisis is brewing far below the ocean\'s surface, where the wisest of the Mer guards the Tide Knot. And soon both Sapphire and Conor will be drawn into Ingo\'s troubled waters...', NULL, 198, 2, 1, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(252, 'The Crossing of Ingo', 'The-Crossing-of-Ingo', 'http://books.google.com/books/content?id=9cnCuAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9cnCuAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007464135', '\"No human has ever made the Crossing of Ingo - the most dangerous journey young Mer have to face. Sappphy and Conor have been chosen for this epic challenge, and the future of both Air and Ingo depends on their success. But Ervys, his followers and new recruits, the sharks, are deteremined to stop them - dead or alive ...\" Back cover.', NULL, 198, 2, 1, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(253, 'The Drowning Man', 'The-Drowning-Man', 'http://books.google.com/books/content?id=x1wKQgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=x1wKQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751544220', 'A lost child. A shattered past. A life going under . . . Vincent Ruiz is lucky to be alive. A bullet in the leg, another through the hand, he is discovered clinging to a buoy in the River Thames, losing blood and consciousness fast. It takes six days for him to come out of his coma, and when he does, his nightmare is only just beginning. Because Vincent has no recollection of what happened, and nobody believes him. A mile away from his body, a boat was found covered in blood -- Vincent\'s and that of three others. Forensics say at least one of them must be dead. Vincent, a police detective, had signed his service pistol out of the station armoury, despite being on leave. Many murder suspects fake amnesia, and the investigating team are not sure this case is any different . . . The only clue is a picture in his pocket, a photograph of a young girl, Mickey Carlyle, who disappeared three years ago. And though Mickey is presumed dead, Vincent has the nagging doubt that she is alive and in terrible danger . . .', NULL, 199, 2, 1, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(254, 'The Racketeer', 'The-Racketeer', 'http://books.google.com/books/content?id=Gv8_NAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Gv8_NAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781444729764', 'Number One bestseller John Grisham returns with his most suspenseful thriller yet. Given the importance of what they do, and the controversies that often surround them, and the violent people they sometimes confront, it is remarkable that in the history of the USA only four active federal judges have been murdered. Judge Raymond Fawcett just became number five. His body was found in the small basement of a lakeside cabin he had built himself and frequently used on weekends. When he did not show up for a trial on Monday morning, his law clerks panicked, called the FBI, and in due course the agents found the crime scene. There was no forced entry, no struggle, just two dead bodies - Judge Fawcett and his young secretary. I did not know Judge Fawcett, but I know who killed him, and why. I am a lawyer, and I am in prison. It\'s a long story.', NULL, 201, 2, 1, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(255, 'The Litigators', 'The-Litigators', 'http://books.google.com/books/content?id=QQZupwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=QQZupwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781444729726', 'Law firm partners Oscar Finley and Wally Figg see a chance for huge financial gain when they learn of a pending class action lawsuit against the makers of Krayoxx, a popular cholesterol-reducing drug suspected of causing heart attacks.', NULL, 201, 2, 1, '2021-02-28 19:51:06', '2021-02-28 19:51:06'),
(256, 'Calico Joe', 'Calico-Joe', 'http://books.google.com/books/content?id=8ktSMAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8ktSMAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781444744668', 'Thirty years have passed since eleven-year-old Paul Tracy watched his troubled father, Warren, a pitcher for the New York Mets, clash with his childhood hero, the Cubs\' golden-boy Joe Castle, in a contest from which no winners emerged. Now the news that his father is dying brings the memory of that day flooding back. Deciding that it\'s time to face up to what really happened on that baseball field in 1973, father and son make their way to Calico Rock, Arkansas, where either redemption or rejection awaits them.', NULL, 201, 2, 1, '2021-02-28 19:51:06', '2021-02-28 19:51:06'),
(257, 'Nineteen Eighty-Four', 'Nineteen-Eighty-Four', 'http://books.google.com/books/content?id=BjSbO-pY5t8C&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BjSbO-pY5t8C&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141187761', 'One of Britain\'s most popular novels, George Orwell\'s dystopian tale \'Nineteen Eighty-Four\' is set in a society terrorised by a totalitarian ideology propagated by The Party. Winston Smith works for the Ministry of Truth in London, chief city of Airstrip One. Big Brother stares out from every poster, the Thought Police uncover every act of betrayal. When Winston finds love with Julia, he discovers that life does not have to be dull and deadening, and awakens to new possibilities. Despite the police helicopters that hover and circle overhead, Winston and Julia begin to question the Party; they are drawn towards conspiracy. Yet Big Brother will not tolerate dissent - even in the mind. For those with original thoughts they invented Room 101... \'Nineteen Eighty-Four\' is George Orwell\'s terrifying vision of a totalitarian future in which everything and everyone is slave to a tyrannical regime. The novel also coined many new words and phrases which regularly appear in popular culture, such as \'Big Brother\', \'thoughtcrime\', \'doublethink\' and \'Newspeak\'.', NULL, 426, 2, 1, '2021-02-28 19:51:07', '2021-02-28 19:51:07'),
(258, 'One Hundred Names', 'One-Hundred-Names', 'http://books.google.com/books/content?id=gmwfMgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gmwfMgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007477203', 'The uplifting and thoughtful novel from the uniquely talented author. Everyone has a story to tell... Journalist Kitty Logan\'s career has been destroyed by scandal, and she now faces losing the woman who guided her and taught her everything she knew. At her mentor\'s bedside, Kitty asks her - what is the one story she always wanted to write? The answer lies in a file buried in Constance\'s office: a list of one hundred names. There is no synopsis, no explanation, nothing else to explain what the story is or who these people are. The list is simply a mystery. But before Kitty can talk to her friend, it is too late. With everything to prove, Kitty is assigned the most important task of her life - to write the story her mentor never had the opportunity to. Kitty has to not only track down and meet the people on the list, but find out what connects them. And, in the process of hearing ordinary people\'s stories, she uncovers Constance\'s - and starts to understand her own...', NULL, 202, 2, 1, '2021-02-28 19:51:07', '2021-02-28 19:51:07'),
(259, 'Captain Phillips', 'Captain-Phillips', 'http://books.google.com/books/content?id=beHxAQAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=beHxAQAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857502469', '8th April 2009 was just an ordinary day for 53 -year-old Richard Phillips, captain of the United States-registered cargo vessel, the Maersk Alabama, as it headed towards the port of Mombasa. Ordinary that is until, two hundred or so miles off the east coast of Africa, armed Somali pirates attacked and boarded the freighter.', NULL, 203, 2, 1, '2021-02-28 19:51:07', '2021-02-28 19:51:07'),
(260, 'Half a Crown', 'Half-a-Crown', 'http://books.google.com/books/content?id=fLO7ngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=fLO7ngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781472112996', 'In 1941 the European war ended in the Farthing Peace, a rapprochement between Britain and Nazi Germany. The balls and banquets of Britain\'s upper class never faltered, while British ships ferried \"undesirables\" across the Channel to board the cattle cars headed east. Peter Carmichael is commander of the Watch, Britain\'s distinctly British secret police. It\'s his job to warn the Prime Minister of treason, to arrest plotters, and to discover Jews. The midnight knock of a Watchman is the most dreaded sound in the realm. Now, in 1960, a global peace conference is convening in London, where Britain, Germany, and Japan will oversee the final partition of the world. Hitler is once again on British soil. So is the long exiled Duke of Windsor - and the rising gangs of \"British Power\" streetfighters, who consider the Government \"soft,\" may be the former king\'s bid to stage a coup d\'état. Amidst all this, two of the most unlikely persons in the realm will join forces to oppose the fascists: a debutante whose greatest worry until now has been where to find the right string of pearls, and the Watch Commander himself.', NULL, 204, 2, 1, '2021-02-28 19:51:08', '2021-02-28 19:51:08'),
(261, 'Farthing', 'Farthing', 'http://books.google.com/books/content?id=8j1QngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8j1QngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781472112972', 'Dark, addictive, award-winning alt-hostory. the first in Jo Walton\'s small change trilogy.', NULL, 204, 2, 1, '2021-02-28 19:51:08', '2021-02-28 19:51:08'),
(262, 'HAUNTED B SPL', 'HAUNTED-B-SPL', 'http://books.google.com/books/content?id=IU2RrgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=IU2RrgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509807550', '', NULL, NULL, 2, 1, '2021-02-28 19:51:09', '2021-02-28 19:51:09'),
(263, 'Finale', 'Finale', '', '', '9781471123658', '', NULL, 205, 2, 1, '2021-02-28 19:51:09', '2021-02-28 19:51:09'),
(264, 'Monk Who Sold His Ferrari', 'Monk-Who-Sold-His-Ferrari', 'http://books.google.com/books/content?id=3s16PwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3s16PwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780061125898', 'Wisdom to Create a Life of Passion, Purpose, and Peace This inspiring tale provides a step-by-step approach to living with greater courage, balance, abundance, and joy. A wonderfully crafted fable, The Monk Who Sold His Ferrari tells the extraordinary story of Julian Mantle, a lawyer forced to confront the spiritual crisis of his out-of-balance life. On a life-changing odyssey to an ancient culture, he discovers powerful, wise, and practical lessons that teach us to: Develop Joyful Thoughts, Follow Our Life\'s Mission and Calling, Cultivate Self-Discipline and Act Courageously, Value Time as Our Most Important Commodity, Nourish Our Relationships, and Live Fully, One Day at a Time.', NULL, 206, 2, 1, '2021-02-28 19:51:10', '2021-02-28 19:51:10'),
(265, 'The Perks of Being a Wallflower', 'The-Perks-of-Being-a-Wallflower-9781847394071', 'http://books.google.com/books/content?id=7ipXPgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=7ipXPgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781847394071', 'Charlie, an adolescent high-school freshman, who has been \"dented\" by tragedy, is introduced to love, literature, pot, and self-awareness.', NULL, 155, 2, 1, '2021-02-28 19:51:10', '2021-02-28 19:51:10'),
(266, 'Honour', 'Honour', 'http://books.google.com/books/content?id=W87lrQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=W87lrQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241972946', 'My mother died twice. I promised myself I would not let her story be forgotten . . . Pembe and Adem Toprak leave Turkey for London. There they make new lives for their family. Yet the traditions and beliefs of their home come with them - carried in the blood of their children, Iskender and Esma. Trapped by past mistakes, the Toprak children find their lives torn apart and transformed by a brutal and chilling crime. Set in Turkey and London in the 1970s,Honourexplores pain and loss, loyalty and betrayal, the clash of tradition and modernity, as well as the love and heartbreak that can tear any family apart. \'Vivid storytelling, a gripping novel . . . scenes blaze with the force of parable.\' Sunday Telegraph \'A stunning novel. Exotic, evocative and utterly gripping.\' The Times \'Moving, subtle and ultimately hopeful, Honour is further proof that Shafak is the most exciting Turkish novelist to reach western readers in years.\' Irish Times \'Extraordinarily skilfully crafted . . . with Shakespearean twists and turns, omens and enigmas, prophecies and destinies.\' Independent', NULL, 207, 2, 1, '2021-02-28 19:51:10', '2021-02-28 19:51:10'),
(267, 'Virgin Widow', 'Virgin-Widow', 'http://books.google.com/books/content?id=m0_YQgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=m0_YQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780778303756', 'I was a penniless, landless petitioner, my Neville blood a curse, my future dependent on the charity of those who despised me Anne Neville is the heiress and daughter of the greatest powerbroker in the land, Warwick the Kingmaker. Trapped in a deadly tangle of political intrigue, she is a pawn in an uncertain game, used by the houses of Neville, York and Lancaster alike. In England\'s glittering, treacherous court, not all wish to see the Nevilles raised high. The Earl of Warwick\'s ambition and pride lead him into an attempt to depose the Yorkist King; his treason forces his family into exile. Humiliated and powerless in a foreign land, Anne must find the courage and the wit to survive in such a dangerous man\'s world. Compulsively readable, Anne O Brien vividly evokes the story of Richard III\'s queen with a passion and vibrancy reminiscent of Phillipa Gregory and Alison Weir. Better than Philippa Gregory - The Bookseller Anne O Brien has joined the exclusive club of excellent historical novelists. - Sunday Express', NULL, 208, 2, 1, '2021-02-28 19:51:10', '2021-02-28 19:51:10'),
(268, 'Elevator Pitch', 'Elevator-Pitch', 'http://books.google.com/books/content?id=mPWlyQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=mPWlyQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008332037', 'De burgemeester van New York moet zien te achterhalen wie de liften in de stad gesaboteerd heeft.', NULL, 209, 2, 1, '2021-02-28 19:51:11', '2021-02-28 19:51:11'),
(269, 'The Turning', 'The-Turning', 'http://books.google.com/books/content?id=urbpQgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=urbpQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780778303985', 'I am no coward. I want to make that perfectly clear. But after my life turned into a horror movie, I take fear a lot more seriously now. I finally became Dr Carrie Ames just eight months ago. Then I was attacked in the hospital morgue by a vampire. Now I m a vampire and it turns out I have a blood tie to the monster who sired me. And of course he\'s one of the most evil vampires on earth. With my sire hell-bent on turning me into a soulless killer and his sworn enemy set to exterminate me, things couldn\'t get much worse except I m attracted to them both. Drinking blood, living as an immortal demon and being a pawn between two warring vampire factions isn\'t exactly how I\'d imagined my future. But, as my father used to say, the only way to conquer fear is to face it. So that ­s what I ll do. Fangs bared. Love Sookie Stackhouse and Bella Swan? It ­s time to meet newly turned vampire Carrie Ames.', NULL, 210, 2, 1, '2021-02-28 19:51:11', '2021-02-28 19:51:11'),
(270, 'If You Go Down to the Woods', 'If-You-Go-Down-to-the-Woods', 'http://books.google.com/books/content?id=hljjswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=hljjswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008280253', 'GET READY FOR THE MOST POWERFUL AND EMOTIONAL DEBUT THRILLER OF 2018! Perfect for fans of It by Stephen King, The Chalk Man by C. J. Tudor and the TV show Stranger Things. We were so young when it all happened. Just 13-years-old, making the most of the long, hot, lazy days of summer, thinking we had the world at our feet. That was us - me, Fat Bobby, Jim and Tara - the four members of the Outsiders\' Club. The day we found a burnt-out car in the woods was the day everything changed. Cold, hard cash in the front seat and a body in the trunk... it started out as a mystery we were desperate to solve. Then, the Collector arrived. He knew we had found his secret. And suddenly, our summer of innocence turned into the stuff of nightmares. Nothing would ever be the same again...', NULL, 211, 2, 1, '2021-02-28 19:51:11', '2021-02-28 19:51:11'),
(271, 'Toxic', 'Toxic', 'http://books.google.com/books/content?id=UkeDtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=UkeDtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008287283', 'Sometimes love is toxic... Bree Dwyer is desperate to escape her husband, take the children and run. But he\'s always watching. And she always gets caught. Until her first love, Alfie Jennings, returns to Essex... Gangsters Alfie and Vaughn have been out of the game for a while, but a life of crime is one you never forget. To get back on top they need serious money, because loyalty and power don\'t come for free. One dangerous job and they\'ll have the payoff they need. And Alfie isn\'t going to let anyone get in the way, least of all a pretty face like Bree. It\'s time to show Essex what they\'re made of. And this time, Alfie and Vaughn aren\'t backing down.', NULL, 212, 2, 1, '2021-02-28 19:51:12', '2021-02-28 19:51:12'),
(272, 'Umberland (Everland, Book 2)', 'Umberland-(Everland,-Book-2)', 'http://books.google.com/books/content?id=vLOVtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vLOVtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545953191', 'The second book in the epic Everland trilogy now in paperback! Gwen, Pete, and the others have escaped from Everland. But the safe haven they hoped to find at Alnwick Castle doesn\'t exist. With the Queen of England on her deathbed, Duchess Alyssa has stepped in, but things have gotten worse as the cure Doc created for the Horologia virus has mutated, accelerating the disease. The only possible solution he can think of is to go back to the virus\'s origin: an extinct poisonous apple. Legend has it a tree bearing the apple might be found at the center of a deadly labyrinth hidden deep within Germany. A place that no one in their right mind enters. With no other options, Alyssa sets out with only her sword, her wits, and the help of Maddox Hadder, a wild boy who oversees the castle gardens. To get to the center of the maze, she\'ll be forced to battle monsters more terrifying than her darkest nightmares. But can anyone truly survive the madness of the maze? And what if there\'s no apple to be found there?', NULL, 213, 2, 1, '2021-02-28 19:51:12', '2021-02-28 19:51:12'),
(273, 'The Island at the End of Everything', 'The-Island-at-the-End-of-Everything', 'http://books.google.com/books/content?id=Qd_3MAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Qd_3MAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781910002766', 'Amihan lives on Culion Island, where some of the inhabitants - including her mother - have leprosy. Ami loves her home - with its blue seas and lush forests, Culion is all she has ever known. But the arrival of malicious government official Mr Zamora changes her world forever: islanders untouched by sickness are forced to leave. Banished across the sea, she\'s desperate to return, and finds a strange and fragile hope in a colony of butterflies. Can they lead her home before it\'s too late?', NULL, 215, 2, 1, '2021-02-28 19:51:13', '2021-02-28 19:51:13'),
(274, 'The Redemption of Alexander Seaton', 'The-Redemption-of-Alexander-Seaton', 'http://books.google.com/books/content?id=cJjkhByzOlMC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cJjkhByzOlMC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781847247919', 'Banff, Scotland in the 1620s. A young man walks unsteadily through the streets. Is he just drunk or is there something more sinister happening? When he collapses in front of two sisters on that dark, wet night, the women guess that he\'s been poisoned. His body is discovered in the house of Alexander Seaton - a fallen minister, the discovery of whose clandestine love affair has left him disgraced. Why was the body in Seaton\'s house? And why would anyone want to murder this likeable young man? Seaton sets out to find answers, embarking on a journey not only through the darkest part of other men\'s souls, but also his own.', NULL, 216, 2, 1, '2021-02-28 19:51:13', '2021-02-28 19:51:13'),
(275, 'The Nine-Chambered Heart', 'The-Nine-Chambered-Heart', 'http://books.google.com/books/content?id=gBePtQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gBePtQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008272562', '\'Superb. She had me at page one\' Chris Cleave, author of Everyone Brave is Forgiven \'It\'s the artful pleating of this subtle, psychologically astute novel that sets it apart\' DAILY MAIL The kaleidoscopic story of one woman as seen through the eyes of those she has loved or been loved by. Nine people illuminate one woman in the particular light of how they see her, each voice casting her from a new angle. Taking her from a lonely child in the classroom to a fierce woman weathering life\'s battles and triumphs, The Nine-Chambered Heart is a masterful portrait, as intimate as it is brave.', NULL, 217, 2, 1, '2021-02-28 19:51:14', '2021-02-28 19:51:14'),
(276, 'Angus, Thongs and Perfect Snogging', 'Angus,-Thongs-and-Perfect-Snogging', '', '', '9780007274673', 'Read the hilarious diaries of Georgia Nicolson.', NULL, 218, 2, 1, '2021-02-28 19:51:14', '2021-02-28 19:51:14'),
(277, 'A Time to Die', 'A-Time-to-Die', 'http://books.google.com/books/content?id=0wKTjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0wKTjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751556049', 'AUTHOR OF THE BBC RADIO 2 BOOK CLUB BESTSELLER BETTER OFF DEAD From hot thriller author Tom Wood comes the latest breathtaking Victor novel, The Day of the Jackal meets Jason Bourne, with a thoroughly modern twist. \'Terrifically fun and explosively propulsive\' Gregg Hurwitz, author of Orphan X Even a killer can be a hero If the assassin known only as Victor once had a moral compass, it is long since buried, along with his many victims. Yet some men are so evil even Victor accepts they must die for reasons other than just money. One such is Milan Rados, a former commander in the Serbian army who has escaped trial at The Hague to become a formidable criminal power. Tracking down and killing this brutal man will win Victor a reprieve for his own recent crimes on British soil. But Victor isn\'t the only one who wants Rados dead. A woman, whose family was butchered on the tyrant\'s orders, will do anything to see Rados\' blood spilled on the snow of Eastern Europe. Now Victor has an unlikely ally - but an army stands between them and justice.', NULL, 219, 2, 1, '2021-02-28 19:51:14', '2021-02-28 19:51:14'),
(278, 'The Darkest Day', 'The-Darkest-Day', 'http://books.google.com/books/content?id=4Zq3oQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4Zq3oQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751556025', 'He is darkness. She wants him dead. In a city starved of light, she might just succeed. She moves like a shadow; she kills silently: Raven. This elegant assassin has been on the run for years. This time though, she has picked the wrong target. The hitman known only as \'Victor\' is as paranoid as he is merciless, and is no stranger to being hunted. He tracks his would-be killer across the globe, aiming not only to neutralise the threat, but to discover who wants him dead. The trail leads to New York... And then the lights go out. Over twelve hours of unremitting darkness, Manhattan dissolves into chaos. Amid looting, conspiracy and blackout, Victor and Raven play a vicious game of cat and mouse that the city will never forget.', NULL, 219, 1, 1, '2021-02-28 19:51:15', '2021-02-28 19:51:15'),
(279, 'How to Say Goodbye', 'How-to-Say-Goodbye', 'http://books.google.com/books/content?id=zHNEtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zHNEtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008202224', 'A laugh-out-loud digital detox for fans of Lindsey Kelk and Mhari McFarlane. Tweet, pray, love? Like her Instagram feed, Ella\'s life comes with a filter. Especially when she\'s speaking to her mum. Her flat? Airy, bright, clean. Her job? Glamorous, worthwhile, well-paid. Her boyfriend? Definitely not fictional. The truth is, Ella\'s life is decidedly unfabulous - until she wins a holiday to a mind, body and soul retreat in Bali. Finally, she can stop ramping up the saturation on photos of avocado and actually start living the dream! Plus, mindfulness is so in trend - it\'s definitely going to bring in more likes. But in Bali, Ella\'s dreams of soaking up the sun, tweeting about spa days and Instagramming smoothie bowls disappear. Because not only is she expected to actually join in with the retreat - her phone\'s confiscated. It seems Ella\'s going to have to spend some time getting to know herself. And when the filter comes off, will she like what she sees?', NULL, 220, 1, 1, '2021-02-28 19:51:16', '2021-02-28 19:51:16'),
(280, 'Endless Endless', 'Endless-Endless', 'http://books.google.com/books/content?id=cvjhwAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cvjhwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408332634', '', NULL, 221, 1, 1, '2021-02-28 19:51:16', '2021-02-28 19:51:16'),
(281, 'Immortals, V.4 - Dark Flame', 'Immortals,-V.4---Dark-Flame', 'http://books.google.com/books/content?id=19frtgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=19frtgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780330520614', 'Once it seemed being immortal was a gift to Ever Bloom - now it\'s a curse. And she\'s a danger to herself. Ever has been dabbling in Magyck - seeking to explore her own powers, hoping to find a future for her relationship with Damen. But she\'s not in control - in fact, the magyck has bound her eternally to her immortal enemy, Roman. Whenever he\'s near, she feels his heartbeat, his breath, his blood racing in her veins. Ever is in deep - and the one person who might be able to help her must never find out what she\'s done . . .', NULL, 222, 1, 1, '2021-02-28 19:51:16', '2021-02-28 19:51:16'),
(282, 'Who Moved My Cheese?', 'Who-Moved-My-Cheese?', 'http://books.google.com/books/content?id=FoCUCDgktfMC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=FoCUCDgktfMC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780091816971', 'Who Moved My Cheese? is an amusing and enlightening story of four characters who live in a maze and look for cheese to nourish them and make them happy. Cheese is a metaphor for what you want to have in life - whether it is a good job, a loving rel', NULL, 223, 1, 1, '2021-02-28 19:51:17', '2021-02-28 19:51:17'),
(283, 'Night Star', 'Night-Star', 'http://books.google.com/books/content?id=nfdejgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=nfdejgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780330528115', 'Love and Heartbreak belong together ... There are some secrets you\'re better off not knowing. But once Ever Bloom is given a glimpse of what Damen is keeping from her, she has to find out more-whatever the cost. Their past together is not what she thinks - and only he remembers everything. Until now, when a vengeful friend lets her in on his secret. And it may just push Ever into someone else\'s arms ...', NULL, 222, 1, 1, '2021-02-28 19:51:17', '2021-02-28 19:51:17'),
(284, 'Unravelling', 'Unravelling', 'http://books.google.com/books/content?id=ZYpfXwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ZYpfXwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007460212', 'If Janelle Tenner wants to avenge her father\'s death and stop the end of the world, she\'s going to need to uncover Ben\'s secrets - and keep from falling in love with him in the process', NULL, 224, 1, 1, '2021-02-28 19:51:18', '2021-02-28 19:51:18'),
(285, 'Have a Little Faith', 'Have-a-Little-Faith', 'http://books.google.com/books/content?id=j0rKPAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=j0rKPAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780751537512', 'Will you do my eulogy? With those words, Mitch Albom begins his long-awaited return to non-fiction. His journey to honour the last request of a beloved clergyman ultimately leads him to rekindle his own long-ignored faith. Albom spends years exploring churches and synagogues, the suburbs and the city, the \"us\" versus \"them\" of religion. Slowly, he gravitates to an inner-city pastor of a crumbling church that houses the homeless, and is stunned at how similar belief can be. As his own beloved cleric slowly lets go, Albom writes his final farewell, having learned that a faithful heart comes in many forms and places.', NULL, 156, 1, 1, '2021-02-28 19:51:18', '2021-02-28 19:51:18'),
(286, 'Places in the Darkness', 'Places-in-the-Darkness', 'http://books.google.com/books/content?id=2C_KtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2C_KtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780356506272', 'SHORTLISTED FOR THE MCILVANNEY PRIZE FOR CRIME WRITING 2018 \"This is as close to a city without crime as mankind has ever seen.\" Ciudad de Cielo is the \'city in the sky\', a space station where hundreds of scientists and engineers work in earth\'s orbit, building the colony ship that will one day take humanity to the stars. When a mutilated body is found on the CdC, the eyes of the world are watching. Top-of the-class investigator, Alice Blake, is sent from Earth to team up with CdC\'s Freeman - a jaded cop with more reason than most to distrust such planetside interference. As the death toll climbs and factions aboard the station become more and more fractious, Freeman and Blake will discover clues to a conspiracy that threatens not only their own lives, but the future of humanity itself. \'Excellent hardboiled noir . . . absolutely gripping\' SciFiNow \'An ingenious crime story\' Scotsman As smart as it is gripping, this is a terrifically engaging story from start to nerve-shredding finish Big Issue \'Places in the Darkness is another corker of a murder mystery, [Brookmyre\'s] new setting - with which he\'s clearly having a whale of a time - giving him the opportunity to wow us with an even twistier twist than usual\' Guardian', NULL, 225, 1, 1, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(287, 'She\'s Not There', 'She\'s-Not-There', 'http://books.google.com/books/content?id=w7GItQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=w7GItQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008245634', '\'A wonderful, artfully addictive novel\' IAN MCEWAN When Jonah and Raff wake up on Monday, their mother Lucy isn\'t there. Although he\'s only nine, Jonah knows enough about the world to keep her absence a secret. If anyone found out she\'d left them alone, who knows what could happen to him and his little brother? As the days go on, he puzzles over the clues left behind: who sent Lucy flowers? Why is her phone in a plant pot? Why are all her shoes still there? And who in their neighbourhood might know more about Lucy than he does?', NULL, 226, 1, 1, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(288, 'Four: A Divergent Collection', 'Four:-A-Divergent-Collection', 'http://books.google.com/books/content?id=x0ynngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=x0ynngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007550142', 'Readers first encountered Tobias Eaton as \"Four\" in Divergent. His voice is an integral part of Allegiant. Readers will find more of this charismatic character\'s backstory told from his own perspective in Four: A Divergent Collection. When read together, these long narrative pieces illuminate the defining moments in Tobias Eaton\'s life. The first three pieces in this volume - \"The Transfer,\" \"The Initiate,\" and \"The Son\" - follow Tobias\'s transfer from Abnegation to Dauntless, his Dauntless initiation, and the first clues that a foul plan is brewing in the leadership of two factions. The fourth story, \"The Traitor,\" runs parallel with the events of Divergent, giving readers a glimpse into the decisions of loyalty - and love - that Tobias makes in the weeks after he meets Tris Prior. Exclusive scenes included!', NULL, 227, 1, 1, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(289, 'A Game of Sorrows', 'A-Game-of-Sorrows', 'http://books.google.com/books/content?id=swT_wAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=swT_wAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781849162449', 'It is 1628, and Alexander Seaton\'s happily settled life as a university teacher in Aberdeen is shattered by the arrival in town of a stranger who looks like his twin and who carries a plea for help from Alexander\'s dead mother\'s family in Ireland. The family has been placed under a poet\'s curse, threatening death to various members. Elements of the curse have already begun to play out. Reluctantly answering the call, Alexander leaves his home and his beloved Sarah and travels to Ulster, to find himself among a family torn apart by secrets and long-buried resentments. In the course of seeking out the author of the curse, Alexander becomes deeply entangled in a conflict that involves fugitive priests, displaced poets, rebellious plotters and agents of the king. Confronted by murder within his family, he finds the lines between superstition and faith, duty and loyalty are becoming increasingly blurred, while his Scottish homeland grows ever more remote.', NULL, 216, 1, 1, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(290, 'He Said/She Said', 'He-Said/She-Said', 'http://books.google.com/books/content?id=5JBkDQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=5JBkDQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781444797145', 'SHORTLISTED FOR THE SPECSAVERS NATIONAL BOOK AWARDS 2018 RICHARD AND JUDY BOOK CLUB PICK 2018 SUNDAY TIMES BESTSELLER SIMON MAYO RADIO 2 BOOK CLUB PICK SHORTLISTED FOR CRIME AND THRILLER BOOK OF THE YEAR 2018 LONGLISTED FOR THEAKSTON OLD PECULIER CRIME NOVEL OF THE YEAR 2018 \'Haunting. Mesmerising. Unforgettable.\' Gillian Flynn, author of Gone Girl *********** Don\'t be left in the dark. In the hushed aftermath of a total eclipse, Laura witnesses a brutal attack. She and her boyfriend Kit call the police, and in that moment, four lives change forever. Fifteen years on, Laura and Kit live in fear. And while Laura knows she was right to speak out, she also knows that you can never see the whole picture: something is always hidden . . . something she never could have guessed. *********** \'I\'m calling it: THIS is the book I wish I\'d written\' Clare Mackintosh, author of Let Me Lie \'It\'s SO good . . . I was carrying it around the house I was so gripped\' Sarah Perry, author of The Essex Serpent \'A gripping, twisting, furiously clever read . . . I loved it\' Ruth Ware, author of The Lying Game \'It\'s magnificent. Stunningly twisty plot and weep-makingly brilliant writing\' Marian Keyes, author of The Break **STONE MOTHERS, the new novel by Erin Kelly, is available to buy now!**', NULL, 54, 1, 1, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(291, 'Blood Ransom', 'Blood-Ransom', 'http://books.google.com/books/content?id=haUuQwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=haUuQwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781847387639', 'Clones Rachel and Theo now live thousands of miles apart. They keep in touch, but things just aren\'t the same. When Rachel discovers that evil scientist Elijah is still working in secret for a section of the government and about to murder Daniel, she sets out to rescue the little boy, but her plans backfire with disastrous consequences. Across the Atlantic, Theo becomes suspicious when Rachel misses their weekly internet chat. He discovers a report online saying she\'s killed herself and travels to Scotland to find her, certain that she has been kidnapped. A clue leads him to Elijah\'s mysterious clinic, where the sinister Aphrodite Experiment is underway. But what is Elijah really planning? Why does he need to track Rachel down so badly? And will Rachel and Theo be able to pay the ultimate ransom that he demands?', NULL, 129, 1, 1, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(292, 'Bloodline', 'Bloodline', 'http://books.google.com/books/content?id=9BGSJAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9BGSJAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781406309386', 'The story of Essa, whose father Cai, a travelling bard and occasional spy, leaves him behind one night at a settlement of the Wolf Clan. Essa is a survivor and forges new allegiances and even love, but never stops wondering why his father never came back. The settlement is under threat from cruel Mercian bands across the forests, and Essa is caught up in a heart-stopping journey to avert disaster. A battle is inevitable, but Essa finds he can influence its outcome in a way nobody but his father would understand.', NULL, 194, 1, 1, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(293, 'Shame on You', 'Shame-on-You', 'http://books.google.com/books/content?id=aU0ZtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=aU0ZtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781785770944', 'A timely commercial thriller for the iGeneration, perfect for fans of The Girl Before and Friend Request.', NULL, 228, 1, 1, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(294, 'Better Left Buried', 'Better-Left-Buried', 'http://books.google.com/books/content?id=bDO6rQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bDO6rQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409566700', 'Brother dead...best friend missing...house ransacked...stalked by a stranger...attacked in the street... And Sarah has no idea why. She never knew her brother was hiding a dark secret when he died. But now his actions have led the wolves to her door - and the only way out is to run. A tense, unnerving thriller that will set your heart racing.', NULL, 172, 1, 1, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(295, 'In a Cottage, in a Wood', 'In-a-Cottage,-in-a-Wood', 'http://books.google.com/books/content?id=yh1VAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=yh1VAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008248956', 'A dark and twisty psychological thriller from the No.1 ebook bestselling author of The Woman Next Door. Her dream home will become her worst nightmare... A strange encounter Neve comes across a troubled woman called Isabelle on Waterloo Bridge late one night. Isabelle forces a parcel into Neve\'s hands and jumps to her death in the icy Thames below. An unexpected gift Two weeks later, as Neve\'s wreck of a life in London collapses, an unexpected lifeline falls into her lap - a charming cottage in Cornwall left to her by Isabelle, the woman on the bridge. The solution to all her problems. A twisted secret But when Neve arrives, alone in the dark woods late one night, she finds a sinister-looking bungalow with bars across its windows. And her dream home quickly becomes her worst nightmare - a house hiding a twisted secret that will change her life forever...', NULL, 229, 1, 1, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(296, 'The Summer That Never Was', 'The-Summer-That-Never-Was', 'http://books.google.com/books/content?id=44owDwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=44owDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447225546', 'A skeleton has been unearthed. Soon the body is identified, and the horrific discovery hits the headlines . . . Fourteen-year-old Graham Marshall went missing during his paper round in 1965. The police found no trace of him. His disappearance left his family shattered, and his best friend, Alan Banks, full of guilt . . . That friend has now become Chief Inspector Alan Banks, and he is determined to bring justice for Graham. But he soon realises that in this case, the boundary between victim and perpetrator, between law-guardian and law-breaker, is becoming more and more blurred . . .', NULL, 230, 1, 1, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(297, 'The Hanging Valley', 'The-Hanging-Valley', 'http://books.google.com/books/content?id=oYSzDwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=oYSzDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447225461', 'The fourth haunting Inspector Banks novelA faceless corpse is discovered in a tranquil, hidden valley below the village of Swainshead. And when Chief Inspector Alan Banks arrives, he finds that no-one is willing to talk. Banks\' frustration only grows when the identity of the body is revealed. For it seems that his latest case may be connected with an unsolved murder in the same area five years ago.Among the silent suspects are the Collier brothers, the wealthiest and most powerful family in Swainsdale. When they start to use their influence to slow down the investigation, Inspector Alan Banks finds himself in a race against time...', NULL, 230, 1, 1, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(298, 'Strange Affair', 'Strange-Affair', 'http://books.google.com/books/content?id=ts3JwAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ts3JwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509810796', 'When Alan Banks receives a disturbing message from his brother, Roy, he abandons the peaceful Yorkshire Dales for the bright lights of London, to seek him out. But Roy seems to have vanished into thin air. Meanwhile, DI Annie Cabbot is called to a quiet stretch of road just outside Eastvale, where a young woman has been found dead in her car. In the victim\'s pocket, scribbled on a slip of paper, police discover Banks\' name and address. Living in Roy\'s empty South Kensington house, Banks finds himself digging into the life of the brother he never really knew, nor even liked. And as he begins to uncover a few troubling surprises, the two cases become sinisterly entwined . . . \'The Banks novels are, simply put, the best series now on the market\' STEPHEN KING', NULL, 230, 1, 1, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(299, 'Innocent Graves', 'Innocent-Graves', 'http://books.google.com/books/content?id=3EvFDAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3EvFDAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509810741', 'One foggy night, Deborah Harrison is found lying in the churchyard behind St Mary\'s, Eastvale. She has been strangled with the strap of her own school satchel. But Deborah was no typical sixteen-year old. Her father was a powerful financier who moved in the highest echelons of industry, defence and classified information. And Deborah, it seemed, enjoyed keeping secrets of her own . . . With his colleague Detective Constable Susan Gay, Inspector Alan Banks moves along the many suspects, guilty of crimes large and small. And as he does so, plenty of sordid secrets and some deadly lies begin to emerge . . . \'If you haven\'t caught up with Peter Robinson already, now is the time to start\' Independent on Sunday', NULL, 230, 1, 1, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(300, 'A Necessary End - Book 3 - Inspector Banks', 'A-Necessary-End---Book-3---Inspector-Banks', '', '', '9781447225454', 'Violence erupts at an anti-nuclear demonstration in Eastvale, leaving one policeman stabbed to death. At first there are over a hundred suspects, but then things narrow down to the people who live on \"Maggie\'s Farm\", an isolated house high on the daleside. Among the suspects is Dennis Osmond, a social worker involved with Jenny Fuller, Inspector Banks\'s friend. As if this isn\'t enough to cope with, Banks finds his freedom hampered by the appointment of an old enemy, Detective Superintendent Richard \'Dirty Dick\' Burgess, to head the investigation. Finally, warned off the case, the only way Banks can salvage his career is by beating Burgess to the killer ...', NULL, 230, 1, 1, '2021-02-28 19:51:21', '2021-02-28 19:51:21');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(301, 'Playing with Fire', 'Playing-with-Fire', 'http://books.google.com/books/content?id=Oer3wAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Oer3wAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509810789', 'In the early hours of a cold January morning, two narrow boats catch fire on the dead-end stretch of the Eastvale canal. When signs of accelerant are found at the scene, DCI Banks and DI Annie Cabbot are summoned. But by the time they arrive, only the smouldering wreckage is left, and human remains have been found on both boats. The evidence points towards a deliberate attack. But who was the intended victim? Was it Tina, the sixteen-year-old who had been living a drug-fuelled existence with her boyfriend? Or was it Tom, the mysterious, lonely artist? As Banks makes his enquiries, it appears that a number of people are acting suspiciously: the interfering \'lock-keeper\', Tina\'s cold-hearted step-father, the wily local art dealer, even Tina\'s boyfriend . . . Then the arsonist strikes again, and Banks\'s powers of investigation are tested to the limit . . .', NULL, 230, 1, 1, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(302, 'In a Dry Season', 'In-a-Dry-Season', 'http://books.google.com/books/content?id=miK_wAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=miK_wAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447225539', 'In A Dry Season is the tenth novel in Peter Robinson\'s Inspector Banks series, following on from Dead Right. During a blistering summer, drought has depleted Thornfield Reservoir, uncovering the remains of a small village called Hobb\'s End - hidden from view for over 40 years. For a curious young boy this resurfaced hamlet is a magical playground . . . until he unearths a human skeleton. Detective Chief Inspector Alan Banks is given the impossible task of identifying the victim - a woman who lived in a place that no longer exists, whose former residents are scattered to the winds. Anyone else might throw in the towel but DCI Banks is determined to uncover the murky past buried beneath a flood of time . . . In A Dry Season is followed by the eleventh book in this Yorkshire-based crime series, Cold is the Grave.', NULL, 230, 1, 1, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(303, 'A Passage to India', 'A-Passage-to-India', 'http://books.google.com/books/content?id=6WdfQgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6WdfQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141441160', 'What really happened to Miss Quested in the Marabar Caves? This tantalising question provides the intense drama of racial tension at the centre of Foster\'s last and greatest novel.', NULL, 231, 1, 1, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(304, 'White Boys Don\'t Cry', 'White-Boys-Don\'t-Cry', 'http://books.google.com/books/content?id=S4cJxdKLtgkC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=S4cJxdKLtgkC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780330452700', '\'I didn\'t know about the murder, I swear\' When Cris Schuter, an ex-government Minister in South Africa during the apartheid era, is found murdered, his son Josh goes missing. Sebastian Palfrey, a British newspaper correspondent, is a lifelong friend of Josh\'s, and is immediately hauled in by the local police. Sebastian regards himself as a bit of a Gallic Sancho Panza to Josh\'s Don Quixote - they go back a long, long way, and along with Zak, a political activist, have quite a history. But Sebastian genuinely doesn\'t know where Josh is, and nor does his girlfriend, Frances. Sebastian both knows and fears that his disappearance can only throw up all sorts of secrets they\'ve shared - and some they haven\'t - that have long been buried . . . Acclaim for This Green Land \'It is Fullerton\'s piece of genre fiction that gets closest to the heart of this difficult subject matter . . . a shockingly good read\' The Times \' . . . Fullerton puts the politics on hold and tells his story with heart, guts and go. A brilliant performance, with a fierce, uncosy intelligence setting off the fireworks\' Literary Review', NULL, 232, 1, 1, '2021-02-28 19:51:22', '2021-02-28 19:51:22'),
(305, 'Exile', 'Exile', 'http://books.google.com/books/content?id=vxd6tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vxd6tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781785760457', 'A vicious Serbian gang whose profits come from fake nuclear weapons. A disgraced Russian general, with access to the real thing. A vengeful Somali warlord, with a cause for which he\'d let the world burn. A jaded government agency, without the information to stop him. Only one man sees what\'s coming. And even he might not be able to prevent it. Racing breathlessly from uncharted CIA prisons to the skyscrapers of Dubai, from stormbeaten oil rigs off the African coast to the ancient caverns beneath the city of Naples.', NULL, 233, 1, 1, '2021-02-28 19:51:22', '2021-02-28 19:51:22'),
(306, 'Without Fail', 'Without-Fail', 'http://books.google.com/books/content?id=nWuiZY3klAsC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=nWuiZY3klAsC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857500090', '\"Featuring Jack Reacher, hero of the blockbuster movie starring Tom Cruise. This time, he\'s in the line of fire, protecting the Vice President of the United States. /b> /b>Jack Reacher walks alone. b> o job, no ID, no last known address. But he never turns down a plea for help. Now a woman tracks him down. A woman serving at the very heart of US power. A woman who needs Reacher\'s assistance in her new job. Her job? Protecting the Vice-President of the United States. b> b>Her problem? b> omeone wants the VP dead.\"', NULL, 234, 1, 1, '2021-02-28 19:51:22', '2021-02-28 19:51:22'),
(307, 'Before', 'Before', 'http://books.google.com/books/content?id=r9UXCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=r9UXCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781501130700', 'Recounts Hardin\'s first encounters with Tessa and their ensuing love affair that became a vortex pulling in everyone around them.', NULL, 101, 1, 1, '2021-02-28 19:51:22', '2021-02-28 19:51:22'),
(308, 'Mars and Venus on a Date', 'Mars-and-Venus-on-a-Date', 'http://books.google.com/books/content?id=0Q1plSWF5WwC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0Q1plSWF5WwC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780091887674', 'From first look and first date to first fight, breaking up and making up, the world of dating can be a minefield for the unprepared. International relationship guru, John Gray turns his expertise to the language and behaviour of dating couples. Asking questions such as: -How should you act on your first date? -How can you tell if your partner means what he says? -Is this love or just lust at first sight? John Gray helps new couples figure out whether they are partners for life or just enjoying a brief encounter. His approach will help both men and women play the dating game with its complex rules of etiquette and behaviour, and explains how to separate fact from fantasy in conversation, body language and future expectations. His humorous insight and practical advice will help young and old alike to reach closer understanding, love and commitment, and have fun on the way!', NULL, 235, 1, 1, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(309, 'Are These My Basoomas I See Before Me?', 'Are-These-My-Basoomas-I-See-Before-Me?', 'http://books.google.com/books/content?id=A0aY_k7i2jMC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=A0aY_k7i2jMC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007277346', 'This is the final instalment of Georgia\'s hilarious diary Does Georgia escape the cakeshop of luuurve? Can there be more heartbreaknosity in store? Will the Sex God pop up again unexpectedly (oo-er) And what about the supreme accidental snogmaster Dave the Laugh? Will she finally choose her one and only?', NULL, 218, 1, 1, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(310, 'After We Fell', 'After-We-Fell', 'http://books.google.com/books/content?id=T-bOoQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=T-bOoQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781501104046', 'Tessa didn\'t plan on meeting H. during her freshman year of college. But now that she has, her life will never be the same.', NULL, 101, 1, 1, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(311, 'Cut Short', 'Cut-Short', 'http://books.google.com/books/content?id=Iy8tcAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Iy8tcAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842433546', 'The park - a place where children play, friends sit and gossip and people walk their dogs. But in the shadows, a predator watches, waits - and chooses his first victim. But someone has seen the killer and come forward as a witness - someone who the killer must stop at all costs. For DS Geraldine Steel, it is a race against time to find the killer as two more bodies are found. A gripping psychological thriller introducing Geraldine Steel, a woman whose past is threatening to collide with her future.', NULL, 236, 1, 1, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(312, 'Together', 'Together', 'http://books.google.com/books/content?id=N3M0tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=N3M0tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409171768', 'RICHARD AND JUDY SUMMER BOOK CLUB PICK 2018 \'This big, clever, tender and twisty love story reminded me of One Day & The Time Traveler\'s Wife\' Erin Kelly, author of He Said, She Said **** Robbie and Emily have been together for years, but their love is still fresh and fierce. They have shared a bed, a home, a bond so deep it can\'t be broken. But there are things they don\'t share, things best left unsaid. On a morning like any other, Robbie wakes, dresses, writes Emily a letter - and leaves their home for good. There is a secret they\'ve been keeping since the day they met. The sacrifices and choices that have sealed their fates could be exposed, and this is the only way to keep it all hidden... Is this a great love story or a story about great love? Whatever you decide, theirs is a story that will never leave you. **** Readers can\'t stop talking about TOGETHER: \'A bold, breathtaking and truly compelling love story, one that will stay with me for a long time\' Lisa Jewell, author of Then She Was Gone \'Julie Cohen\'s writing is powerful, moving and truly beautiful\' Joanna Cannon, author of The Trouble with Goats and Sheep \'It takes a lot to tempt me from crime, but this is one of the most beautiful and heartbreaking stories I\'ve read\' Emma Flint, author of Little Deaths \'Complex, compelling and beautiful, Together is the kind of novel that will stay with you forever\' Rowan Coleman, author of The Summer of Impossible Things \'Cleverly-plotted and stunningly written, Julie Cohen\'s Together is a page-turner with real emotional punch\' Catherine Isaac, author of You, Me, Everything Perfect for fans of Ruth Hogan, Gail Honeyman and Sarah Winman and anyone looking for a thought-provoking page-turner.', NULL, 237, 1, 1, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(313, 'Killing It', 'Killing-It', 'http://books.google.com/books/content?id=3kGhswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3kGhswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781785764530', '', NULL, 238, 1, 1, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(314, 'No Middle Name', 'No-Middle-Name', 'http://books.google.com/books/content?id=mOdTswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=mOdTswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857503770', 'Jack \'No Middle Name\' Reacher, lone wolf, knight errant, ex military cop, lover of women, scourge of the wicked and righter of wrongs, is the most iconic hero for our age. This is the first time all Lee Child\'s shorter fiction featuring Jack Reacher has been collected into one volume. Read together, these twelve stories shed new light on Reacher\'s past, illuminating how he grew up and developed into the wandering avenger who has captured the imagination of millions around the world. The twelve stories include a brand new novella, Too Much Time. The other stories in the collection are: Second Son James Penney\'s New Identity Guy Walks Into a Bar Deep Down, High Heat Not a Drill Small Wars All of which have previously been published as ebook shorts. Added to these is every other Reacher short story that Child has written: Everyone Talks Maybe They Have a Tradition No Room at the Motel The Picture of the Lonely Diner', NULL, 234, 1, 1, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(315, 'The Hypnotist\'s Love Story', 'The-Hypnotist\'s-Love-Story', 'http://books.google.com/books/content?id=9kVywuXt9c0C&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9kVywuXt9c0C&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241955062', 'The Hypnotist\'s Love Story is a gripping exploration of love and obsession, from the bestselling author of the hit HBO series Big Little Lies. How far would you go to keep the man of your dreams? Hypnotherapist Ellen is fascinated by what makes people tick. So when she falls in love with Patrick, the fact that he has a stalker doesn\'t faze her in the slightest. If anything it intrigues her, and the more she hears about Saskia, the more she wants to meet this woman. But what Ellen doesn\'t know is that they\'ve already met . . . Saskia has been posing as one of Ellen\'s clients. Unable to let go of the life she so abruptly lost, she wants to know everything about the woman who took her place. And the further she inches her way into Ellen\'s world, the more trouble she stirs up. Ellen\'s love story is about to take an unexpected turn. But it\'s not only Saskia who doesn\'t know where to stop: Ellen also has to ask herself what lines she\'s prepared to cross to get the happy ending she\'s always wanted. Thought-provoking, sympathetic and smart, Liane Moriarty\'s The Hypnotist\'s Love Story is a novel for anyone who\'s ever loved, lost or found it hard to let go. \'A complex, nuanced look at relationships, and the nature of romantic attachment\' Telegraph Praise for Liane Moriarty \'Highly addictive\' She \'Fascinating and compassionate\' Daily Telegraph \'Gripping, acutely observed, thought-provoking and funny\' Marie Claire \'The writing is beautiful: sometimes funny, sometimes sad but always compelling\' Good Housekeeping \'Captivating\' Closer', NULL, 239, 1, 1, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(316, 'After Ever Happy', 'After-Ever-Happy', 'http://books.google.com/books/content?id=Vqr1oQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Vqr1oQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781501106842', '\"Tessa and Hardin have had enough surprises. Their bond is stronger than ever, but every new challenge they face shakes their foundation--and Hardin\'s impenetrable façade--to the core. As the shocking truth about each of their families emerges, it\'s clear the two lovers are not so different from each other. Tessa is no longer the sweet, simple, good girl she was when she met Hardin--any more than he is the cruel, moody boy she fell so hard for. Tessa understands all the troubling emotions brewing within Hardin, and she knows she\'s the only one who can calm him when he erupts. He needs her. But the more layers of his past that come to light, the darker he grows, and the harder he pushes Tessa--and everyone else in his life--away. After all this time, Tessa\'s not sure if she really can save him--not without sacrificing herself. Is love worth losing her identity? She refuses to go down without a fight. But who is she really fighting for--Hardin or herself?\"--Page 4 of cover.', NULL, 101, 1, 1, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(317, 'Walking Disaster', 'Walking-Disaster', 'http://books.google.com/books/content?id=unp0MAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=unp0MAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471115141', 'Set in the same time-frame as Beautiful Disaster, now we hear the story from Travis\' point of view. Travis lost his mother at a very young age, but before she died she taught him two important rules... Love hard. Fight harder. Growing up in a family of men who like to gamble and fight, Travis Maddox is a tough guy. Known for his bad reputation with women, and feared for his incredible fighting skills, all the boys want to be him, and the girls simply want him... Abby Abernathy is the first girl to treat him the way he feels he should be treated, with dislike and disinterest. It is her lack of interest that sparks his determination to win her round. Will the invincible Travis \'Mad Dog\' Maddox be defeated by a girl?', NULL, 240, 1, 1, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(318, 'Broken Angels', 'Broken-Angels', 'http://books.google.com/books/content?id=jpYcC2uVK0MC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=jpYcC2uVK0MC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780099499824', 'Evil preys upon the fallen. The third thriller in the Byrne and Balzano series by the Sunday Times bestselling author. When the first body is found, mutilated and strangled on the riverbanks, Philadelphia homicide detectives Kevin Byrne and Jessica Balzano suspect yet another case of random urban violence. Then it happens again. And again. Carefully dressed and posed, each victim seems to tell a story so gruesome that Byrne and Balzano struggle at first to make sense of the killer\'s dark and twisted imagination. But when they stumble upon a collection of old fairy tales, the fragile link between the murders suddenly becomes clear - and with it the terrifying conclusion of the killer\'s plan. Desperately, they try to anticipate the madman\'s next move, but as the body count rises, the killing spree spirals out of control ...', NULL, 241, 1, 1, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(319, 'Milk and Honey', 'Milk-and-Honey', 'http://books.google.com/books/content?id=iN8YswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=iN8YswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781449474256', '\"A collection of poetry and prose about survival, about the experience of violence, abuse, love, loss, and femininity\"--Amazon.com.', NULL, 242, 1, 1, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(320, 'Are We All Lemmings and Snowflakes?', 'Are-We-All-Lemmings-and-Snowflakes?', 'http://books.google.com/books/content?id=-lcntAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=-lcntAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474933612', 'Welcome to Camp Reset, a summer camp with a difference. A place offering a shot at ¿normality¿ for Olive, a girl on the edge, and for the new friends she never expected to make ¿ who each have their own reasons for being there. Luckily Olive has a plan to solve all their problems. But how do you fix the world when you can¿t fix yourself? A raw and compelling exploration of mental health, friendship and the power of compassion from the acclaimed Holly Bourne.', NULL, 243, 1, 1, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(321, 'Fierce Fragile Hearts', 'Fierce-Fragile-Hearts', 'http://books.google.com/books/content?id=U-8lugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=U-8lugEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781509852888', 'Fierce Fragile Hearts is the stunning companion novel to Sara Barnard\'s YA bestseller Beautiful Broken Things. It is about leaving the past behind, the friends who form your future, and learning to find love, in all its forms.Two years after a downward spiral took her as low as you can possibly go, Suzanne is starting again. Again. She\'s back in Brighton, the only place she felt she belonged, back with her best friends Caddy and Rosie. But they\'re about to leave for university. When your friends have been your light in the darkness, what happens when you\'re the one left behind?', NULL, 244, 1, 1, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(322, 'All the Beautiful Girls', 'All-the-Beautiful-Girls', 'http://books.google.com/books/content?id=HmouswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=HmouswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008267971', 'Heart Radio x Dreams Bedtime Bookclub April Book of the Month The dazzling, powerful story of a gutsy showgirl who tries to conquer her past amongst the glamour of 1960s Las Vegas - finding unexpected fortune, friendship and love. In the summer of 1968, Ruby Wilde is the toast of Las Vegas. Showgirl of the Year, in her feathers and rhinestones, five-inch heels and sky-high headdresses, she mesmerises audiences from the Tropicana to the Stardust. Ratpackers and movie stars, gamblers and astronauts vie for her attention and shower her with gifts. But not so long ago Ruby Wilde was Lily Decker from Kansas: an orphaned girl determined to dance her way out of her troubled past. When she was eight years old, Lily survived the car crash that killed her parents and sister. Raised by an aunt who took too little interest in her and an uncle who took too much, dancing was her solace, and her escape. When a mysterious benefactor pays for her to attend a local dance academy, Lily\'s talent becomes her ticket to a new life. Now, as Ruby Wilde, the ultimate Sin City success story, she discovers that the glare of the spotlight cannot banish the shadows that haunt her. As the years pass and Ruby continues to search for freedom, for love and, most importantly, herself, she must learn the difference between what glitters and what is truly gold.', NULL, 245, 1, 1, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(323, 'Big Little Lies. TV Tie-In', 'Big-Little-Lies.-TV-Tie-In', 'http://books.google.com/books/content?id=rrvqnAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rrvqnAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781405931564', '** The number one bestseller Big Little Lies is now a HBO series starring Nicole Kidman, Reese Witherspoon, Michael Fassbender and Shailene Woodey ** \'Let me ask you a question. Would you like a series that has everything? Good. Because it is, emphatically, HERE\' The Guardian Perfect family, perfect house, perfect life; Jane, Madeline and Celeste have it all . . . or do they? They are about to find out just how easy it is for one little lie to spiral out of control. From the author of Truly Madly Guilty and The Husband\'s Secret comes a novel about the dangerous little lies we tell ourselves just to survive. Jane hasn\'t lived anywhere for longer than six months since her son was born five years ago. She keeps moving in an attempt to escape her past. Now the idyllic coastal town of Pirriwee has pulled her to its shores and Jane feels as if she finally belongs. She finds friends in the feisty Madeline and the incredibly beautiful Celeste, two women with seemingly perfect lives - and their own secrets. But at the start of a new term, an incident involving the children of all three women occurs in the playground, causing a rift between them and other parents. Minor at first but escalating fast, until the whispers and rumours become vicious and spiteful, and the truths blur into lies. It was always going to end in tears, but no one thought it would end in murder . . . \'Brilliant, stand-out, superbly clever. Moriarty writes vividly, wittily and wickedly\' Sunday Express \'Blame and guilt, forgiveness and retribution, love and betrayal. A tense page-turning story . . . a great read\' Mail on Sunday \'Staggeringly brilliant . . . literally unputdownable\' Sophie Hannah \'Blending romance, comedy and mystery, this is a wonderful book - full of brains, guts and heart\' Sunday Mirror \'Tolls a warning bell about the big little lies we tell to survive\' Washington Post \'A fantastically nimble writer, so sure-footed that the book leaps between dark and light seamlessly\' Entertainment Weekly', NULL, 239, 1, 1, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(324, 'Stronger, Faster, and More Beautiful', 'Stronger,-Faster,-and-More-Beautiful', 'http://books.google.com/books/content?id=mhcIugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=mhcIugEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008322403', '\'Will send shivers down your spine\'Teen Vogue \'A work of unforgettable vision and imagination. This book is everything I love about science fiction\'Jay Kristoff Are you ready for the future? Black Mirror with a touch of Westworld re-wiring, STRONGER, FASTER, AND MORE BEAUTIFUL is a novel in six interconnected parts about what it means to be human - and where those boundaries lie. Set in our world, spanning the near to distant future, the author, Arwen Elys Dayton, explores the possible consequences of advanced medical breakthroughs and how they may shape and reshape humanity. From organ donation to plastic surgery to full bodily reconstruction, these stories take you by your (for now, organic) hand and lead you into a future where the line between person and machine becomes increasingly blurred. Deeply thoughtful, poignant, horrifying, and action-packed, this novel strikes new ground while also seeming so strangely... likely. Just try to disconnect.', NULL, 246, 1, 1, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(325, 'Shiver', 'Shiver-9780545682787', 'http://books.google.com/books/content?id=xh2XngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=xh2XngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545682787', 'In all the years she has watched the wolves in the woods behind her house, Grace has been particularly drawn to an unusual yellow-eyed wolf who, in his turn, has been watching her with increasing intensity.', NULL, 79, 1, 1, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(326, 'Black Narcissus', 'Black-Narcissus', 'http://books.google.com/books/content?id=YhEWMAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YhEWMAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781844088393', 'High in the Himalayas near Darjeeling, the old mountaintop palace shines like a jewel. When it was the General\'s \'harem\' palace, richly dressed ladies wandered the windswept terraces; at night, music floated out over the villages and gorges. Now, the General\'s son has bestowed it on an order of nuns, the Sisters of Mary. Well-intentioned yet misguided, the nuns set about taming the gardens and opening a school and dispensary for the villagers. They are dependent on the local English agent of Empire, Mr Dean; but his charm and insolent candour are disconcerting. And the implacable emptiness of the mountain, the ceaseless winds, exact a toll on the Sisters.When Mr Dean says bluntly, \'This is no place for a nunnery,\' it is as if he foresees their destiny...', NULL, 140, 1, 1, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(327, 'Copycat', 'Copycat', 'http://books.google.com/books/content?id=aa4YvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=aa4YvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008199746', 'The gripping new psychological thriller from the bestselling author of After Anna and Killing Kate. Your stalker is everywhere. Your stalker knows everything. What if your stalker was you? Which Sarah Havenant is you? When an old friend gets in touch, Sarah Havenant discovers that there are two Facebook profiles in her name. One is hers. The other, she has never seen. But everything in it is accurate. Photos of her friends, her husband, her kids. Photos from the day before. Photos of her new kitchen. Photos taken inside her house. And this is just the beginning. Because whoever has set up the second profile has been waiting for Sarah to find it. And now that she has, her life will no longer be her own...', NULL, 247, 1, 1, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(328, 'The Treatment', 'The-Treatment', 'http://books.google.com/books/content?id=zyjwAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zyjwAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008240561', 'Cecelia Ahern\'s Flawed meets Never Let Me Go in the pulse-pounding YA thriller from the Top Ten Sunday Times bestselling author of The Escape. \"You have to help me. We\'re not being reformed. We\'re being brainwashed.\" All sixteen year old Drew Finch wants is to be left alone. She\'s not interested in spending time with her mum and stepdad and when her disruptive fifteen year old brother Mason is expelled from school for the third time and sent to a residential reform academy she\'s almost relieved. Everything changes when she\'s followed home from school by the mysterious Dr Cobey, who claims to have a message from Mason. There is something sinister about the \'treatment\' he is undergoing. The school is changing people. Determined to help her brother, Drew must infiltrate the Academy and unearth its deepest, darkest secrets. Before it\'s too late.', NULL, 248, 1, 1, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(329, 'Presumed Dead', 'Presumed-Dead', 'http://books.google.com/books/content?id=waUKtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=waUKtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409172437', '\'Mason Cross is a fast-paced, high octane thriller writer.\' Simon Kernick THEN Fifteen years ago, an unidentified killer terrorised northern Georgia, killing hikers with two shots from a pistol, before disposing of the bodies along the remote trails and in the rivers in the vicinity of Blood Mountain. The killer was never brought to justice. NOW Carter Blake has returned home for the first time in many years. The visit stirs old memories, including a girl from school who vanished without a trace. Blake runs into the mother of the girl, who mentions a case she\'s come across in Georgia, where someone is convinced their relative is still alive, fifteen years on. Adeline Connor was the Blood Mountain Killer\'s last suspected victim. She vanished without a trace. So why is her brother so convinced she\'s still alive? \'One of the best new series characters since Jack Reacher\' Lisa Gardner', NULL, 249, 1, 1, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(330, 'Night Road', 'Night-Road', 'http://books.google.com/books/content?id=y_i6DAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=y_i6DAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780330534970', 'Set on Pine Island, Night Road is the story of three teenagers: Lexi, Mia and her twin brother Zach. Lexi\'s childhood was spent watching her alcoholic mother slowly poison herself to death. When she turns fourteen, Lexi\'s Aunt Eva takes her in to live with her in her caravon on a trailer park. Mia and Zach Farraday, on the other hand, had an idyllic childhood with everything they could possible want from an adoring and doting mother. The twins meet Lexi on their first day of high school. Lexi, sweet-natured and gentle, finds a soul mate in Mia and they become best friends. Lexi falls in love with Zach the moment she first sets eyes on him but she never imagines that he\'d ever look at her in any way other than as his beloved twin\'s best friend. But it turns out that Zach is absolutely crazy about Lexi, he just doesn\'t want to jeapardize her relationship with Mia.Life changes for them all on a fateful summer\'s night following their graduation party. Zach\'s the designated driver, but both he and Mia had had far too much too drink. Lexi decides that she is sober enough to drive. It turns out to be a decision that she will regret for the rest of her life...', NULL, 105, 1, 1, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(331, 'Introducing Time', 'Introducing-Time', 'http://books.google.com/books/content?id=BTqqQQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BTqqQQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848311206', 'What is time? The 5th-century philosopher St Augustine famously said that he knew what time was, so long as no one asked him. Is time a fourth dimension similar to space or does it flow in some sense? And if it flows, does it make sense to say how fast? Does the future exist? Is time travel possible? Why does time seem to pass in only one direction?These questions and others are among the deepest and most subtle that one can ask, but Introducing Time\" presents them - many for the first time - in an easily accessible, lucid and engaging manner, wittily illustrated by Ralph Edney.\"', NULL, 250, 1, 1, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(332, 'Leadership and the One Minute Manager', 'Leadership-and-the-One-Minute-Manager', 'http://books.google.com/books/content?id=miwefN-bAeoC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=miwefN-bAeoC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007103416', 'In clear, simple terms \"Leadership and the One Minute Manager(R) \"teaches managers the art of Situational Leadership(R)--a simple system that refutes the conventional management mandate of treating all employees equally. Here, you\'ll learn why tailoring management styles to individual employees is so important; why knowing when to delegate, support, or direct is critical; how to identify the leadership style suited to a particular person; and how consistent use of the One Minute techniques will produce better management and enhanced motivation on all levels. This remarkable, easy-to-follow book is a priceless guide to creative, personalized leadership that elicits the best performance from your staff--and the best bottom line for any business. If your management motto is \"everyone should be treated equally,\" \"Leadership and the One Minute Manager.\" will show you why this style not only hinders workplace efficiency, but also frustrates your staff. In clear, simple terms, Ken Blanchard, co-author of the enormously popular \"The One Minute Manager., \" coupled with business gurus Patricia and Drea Zigarmi, teach managers the art of Situational Leadership.. You\'ll learn why tailoring management styles to individual employees is so important; when to delegate, support, or direct; how to identify the leadership style suited to a particular person; and how consistent use of the One Minute techniques will produce better management and enhanced motivation on all levels. This remarkable, easy-to-follow book is a priceless guide to creative, personalized leadership that elicits the best performance from your staff and the best bottom line for any business.', NULL, 176, 1, 1, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(333, 'Reasons to Stay Alive', 'Reasons-to-Stay-Alive', 'http://books.google.com/books/content?id=rO49rgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rO49rgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781782116820', 'WHAT DOES IT MEAN TO FEEL TRULY ALIVE? Aged 24, Matt Haig\'s world caved in. He could see no way to go on living. This is the true story of how he came through crisis, triumphed over an illness that almost destroyed him and learned to live again.A moving, funny and joyous exploration of how to live better, love better and feel more alive, Reasons to Stay Alive is more than a memoir. It is a book about making the most of your time on earth.\"I wrote this book because the oldest clichés remain the truest. Time heals. The bottom of the valley never provides the clearest view. The tunnel does have light at the end of it, even if we haven\'t been able to see it . . . Words, just sometimes, really can set you free.\"', NULL, 251, 1, 1, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(334, 'Last Breath', 'Last-Breath', 'http://books.google.com/books/content?id=8ks2ygAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8ks2ygAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749008147', 'When college student Claire Danvers learns that three of the vampires in Morganville have disappeared without a trace, only to discover that the last person seen with one of the missing vampires is a mysterious new resident named Magnus, she begins to suspect that Magnus is not a fellow-human', NULL, 252, 1, 1, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(335, 'Kiss of Death', 'Kiss-of-Death', 'http://books.google.com/books/content?id=IUmmQwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=IUmmQwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749007843', 'Claire Danvers has a few things on her mind. Not least the fact that she lives in a town run by vampires. Claire and her friends must find the most difficult documents for a vampire to acquire; people passes that will allow \'bad ass\' Morley and his friends to leave Morganville.', NULL, 252, 1, 1, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(336, 'Glass Houses', 'Glass-Houses', 'http://books.google.com/books/content?id=_idwvwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_idwvwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749079512', 'In Morganville, Texas, a town where evil terrorizes the streets under the cover of darkness, Claire Danvers, who has had enough of her current dorm situation, moves off campus and discovers that her new roommates are vampires.', NULL, 252, 1, 1, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(337, 'Feast of Fools', 'Feast-of-Fools', 'http://books.google.com/books/content?id=4SfzOwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4SfzOwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749079796', 'Fantasy-roman.', NULL, 252, 1, 1, '2021-02-28 19:51:28', '2021-02-28 19:51:28'),
(338, 'Midnight Alley', 'Midnight-Alley', 'http://books.google.com/books/content?id=np6YvAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=np6YvAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749079222', 'Fantasy-roman.', NULL, 252, 1, 1, '2021-02-28 19:51:28', '2021-02-28 19:51:28'),
(339, 'Fade Out', 'Fade-Out', 'http://books.google.com/books/content?id=8afdQQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8afdQQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749007492', 'Life has changed dramatically in Morganville. The resident vampires have made major concessions to the human population and with their newfound freedoms, Claire Danvers and her friends are starting to feel comfortable again - almost.', NULL, 252, 1, 1, '2021-02-28 19:51:28', '2021-02-28 19:51:28'),
(340, 'The Dead Girls\' Dance', 'The-Dead-Girls\'-Dance', 'http://books.google.com/books/content?id=b6b8yAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=b6b8yAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749079864', 'Fantasy-roman.', NULL, 252, 1, 1, '2021-02-28 19:51:28', '2021-02-28 19:51:28'),
(341, 'Fall of Night', 'Fall-of-Night', 'http://books.google.com/books/content?id=ib0KkgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ib0KkgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749012663', 'With things still raw and unsettled between Claire and her boyfriend Shane, Claire has been granted the opportunity to move out of Morganville - and she\'s taking it. Escorted to the town borders by Myrnin, she is given her admission papers to MIT, along with enrollment in an advanced study program with Professor Irene Anderson, a former Morganville native. But it\'s hard to leave the town, the vamps and her friends behind and Claire can\'t help but wonder whether leaving Morganville is actually a mistake.', NULL, 252, 1, 1, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(342, 'Bitter Blood', 'Bitter-Blood', 'http://books.google.com/books/content?id=VnKDMQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VnKDMQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749012809', 'With the eradication of the draug, the vampires of Morganville have been freed of their usual constraints. With the vampires indulging their every whim, the town\'s human population is determined to hold on to their lives by taking up arms. But Claire Danvers isn\'t about to take sides, considering she has ties to both the humans and the vampires.', NULL, 252, 1, 1, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(343, 'Carpe Corpus', 'Carpe-Corpus', 'http://books.google.com/books/content?id=9MGiPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9MGiPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749007775', 'In the small town of Morganville, vampires and humans lived in relative peace - until all the rules got rewritten when the evil vampire Bishop arrived, looking for the lost book of vampire secrets. He has kept a death grip on the town ever since. But resistance is brewing, and suddenly the Bishop now finds himself on the defensive.', NULL, 252, 1, 1, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(344, 'Lord of Misrule', 'Lord-of-Misrule', 'http://books.google.com/books/content?id=LFeIPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=LFeIPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749007577', '\"In the college town of Morganville, vampires and humans have coexisted in (relatively) bloodless harmony ... until the arrival of Bishop, a master vampire who threatens to put the evil back in evil undead and smash the fragile peace. But Bishop isn\'t the only threat ... Violent black clouds promise a storm of devastating proportions. As student Claire Danvers and her friends prepare to defend Morganville against the elements--both natural and unnatural--the unexpected happens: Morganville\'s vampires begin to vanish one by one. Discovering why leads Claire to one last choice: Swear allegiance to Bishop, or die.\"--P. [4] of cover.', NULL, 252, 1, 1, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(345, 'Thunder of the Gods', 'Thunder-of-the-Gods', 'http://books.google.com/books/content?id=R6KNrgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=R6KNrgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781444732009', '\'A master of the genre\' The Times The eighth book in the Empire sequence takes Centurion Marcus Aquila and his Tungrian legion on a dangerous mission to the heart of the Parthian empire. With Rome no longer safe Marcus and the Tungrians are ordered east, to the desolate border lands where Rome and Parthia have vied for supremacy for centuries. Ordered to relieve the siege of an isolated fortress, their task is doomed to bloody failure unless they can turn the disaffected Third Legion into a fighting force capable of resisting the terrifying Parthian cataphracts. And Marcus must travel to the enemy capital Ctesiphon on a desperate mission, the only man who can persuade the King of Kings to halt a war that threatens the humiliation of the empire and the slaughter of his friends.', NULL, 253, 1, 1, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(346, 'Mrs Hudson and the Lazarus Testament', 'Mrs-Hudson-and-the-Lazarus-Testament', 'http://books.google.com/books/content?id=iH7GwgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=iH7GwgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788631440', 'A thrilling cosy mystery for Mrs Hudson, Baker Street’s best-kept secret. A man is knocked down outside 221B Baker Street. His dying words speak of a man risen from the grave. A Viscount has gone missing and there are rumours of a dead man haunting the moors and a country hall beset by ghostly lights and spectres. Sherlock Holmes’ housekeeper, the formidable Mrs Hudson, is faced with a mystery. Joined by her assistant Flotsam, they’re once again thrown into dark adventure full of gripping twists and murderous intrigue. Together with Holmes and Dr. Watson they must race against the forces of darkness to uncover the truth behind the mysterious document known as the Lazarus Testament. Lives are on the line and the puzzle must be solved... But not before a slice of Dundee cake. The third in the bestselling Sherlock Holmes & Mrs Hudson Mysteries, this is a dark but cosy crime novel that will transport readers to a world of foggy streets and snow-covered fells and Victorian London.', NULL, 254, 1, 1, '2021-02-28 19:51:30', '2021-02-28 19:51:30'),
(347, 'Heroes', 'Heroes', 'http://books.google.com/books/content?id=sLdFvgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=sLdFvgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781405940368', 'IMAGINE SANDALS ON YOUR FEET, A SWORD IN YOUR HAND, HOT SUN BEATING DOWN ON YOUR BRONZE HELMET. ENTER THE WORLD OF STEPHEN FRY\'S SUNDAY TIMES BESTSELLER, HEROES In this companion to his bestselling Mythos, Stephen Fry gloriously retells the epic myths of the Greek heroes - which will be loved by young and old alike. \'An odyssey through Greek mythology. Brilliant . . . all hail Stephen Fry\' Daily Mail ___________ Few mere mortals have ever embarked on such bold and heart-stirring adventures, overcome myriad monstrous perils, or outwitted scheming vengeful gods, quite as stylishly and triumphantly as Greek heroes. In this companion to his bestselling Mythos, Stephen Fry brilliantly retells these dramatic, funny, tragic and timeless tales. Join Jason aboard the Argo as he quests for the Golden Fleece. See Atalanta - who was raised by bears - outrun any man before being tricked with golden apples. Witness wily Oedipus solve the riddle of the Sphinx and discover how Bellerophon captures the winged horse Pegasus to help him slay the monster Chimera. Filled with white-knuckle chases and battles, impossible puzzles and riddles, acts of base cowardice and real bravery, not to mention murders and selfless sacrifices, Heroes is the story of what we mortals are truly capable of - at our worst and our very best. \'A romp through the lives of ancient Greek gods. Fry is at his story-telling best . . . the gods will be pleased\' Times \'Assured and engaging. The pace is lively, the jokes are genuinely funny\' Guardian \'An Olympian feat. The gods seem to be smiling on Fry - his myths are definitely a hit\' Evening Standard \'Just as delightful and difficult to put down as the first. Heroes makes the stories relatable without skimping on the gory details, or sacrificing the truths of the myth. It\'s rich, it\'s funny and you\'ll feel like you\'ve learned a lot\' Herald ___________ If you like the sound of Heroes, you\'ll love Mythos - Fry\'s first foray into the enthralling world of Greek mythology. Praise for Mythos: \'Ebullient and funny\' Times \'Entertaining and edifying\' Daily Telegraph \'A rollicking good read\' Independent \'The Greek gods of the past become relatable as pop culture, modern literature and music are woven throughout. Joyfully informal yet full of the literary legacy\' Guardian', NULL, 255, 1, 1, '2021-02-28 19:51:30', '2021-02-28 19:51:30');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(348, 'The Time to Kill', 'The-Time-to-Kill', 'http://books.google.com/books/content?id=a5NFvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=a5NFvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409159650', '\'One of the best new series characters since Jack Reacher\' Lisa Gardner THEY TAUGHT HIM TO KILL. NOW THEY WANT HIM DEAD. It\'s been five years since Carter Blake parted ways with top-secret government operation Winterlong. They brokered a deal at the time: he\'d keep quiet about what they were doing, and in return he\'d be left alone. But news that one of Blake\'s old allies, a man who agreed the same deal, is dead means only one thing - something has changed and Winterlong is coming for him. Emma Faraday, newly appointed head of the secret unit, is determined to tie up loose ends. And Blake is a very loose end. He\'s been evading them for years, but finally they\'ve picked up his trace. Blake may be the best there is at tracking down people who don\'t want to be found, but Winterlong taught him everything he knows. If there\'s anyone who can find him - and kill him - it\'s them. It\'s time for Carter Blake to up his game. High-stakes action, blistering tension and a deadly game of cat and mouse, THE TIME TO KILL is the must-read new thriller from Mason Cross.', NULL, 249, 1, 1, '2021-02-28 19:51:30', '2021-02-28 19:51:30'),
(349, 'The Eagle\'s Conquest', 'The-Eagle\'s-Conquest', '', '', '9781472250810', '', NULL, 256, 1, 1, '2021-02-28 19:51:31', '2021-02-28 19:51:31'),
(350, 'Bite Club', 'Bite-Club', 'http://books.google.com/books/content?id=stzUYgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=stzUYgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749008093', 'Claire has come to realise that the undead of Morganville just want to live their lives. But there\'s a new extreme sport being broadcast over the Internet - bare-knuckle fights pitting captured vampires against one another - or, worse, against humans. What started as an online brawl will soon threaten everyone in Morganville.', NULL, 252, 1, 1, '2021-02-28 19:51:31', '2021-02-28 19:51:31'),
(351, 'Black Dawn', 'Black-Dawn', 'http://books.google.com/books/content?id=Fn1WuAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Fn1WuAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780749040550', 'When the ferocious draug, the vampire\'s deadliest enemy, floods Morganville most of the locals flee. Student Claire Danvers and her friends Shane, Eve and Michael, however, choose to stay and fight. But unless they can find an antidote to the draugs\' bite, Morganville\'s future looks bleak', NULL, 252, 1, 1, '2021-02-28 19:51:31', '2021-02-28 19:51:31'),
(352, 'The Ask and the Answer', 'The-Ask-and-the-Answer', '', '', '9781406384130', 'Fleeing before a relentless army, Todd and Viola once again face their worst enemy, Mayor Prentiss. Immediately imprisoned and separated from Viola, Todd is forced to learn the ways of the Mayor\'s new order. And then, one day, the bombs begin to explode ...', NULL, 257, 1, 1, '2021-02-28 19:51:31', '2021-02-28 19:51:31'),
(353, 'Who Killed Change?', 'Who-Killed-Change?', 'http://books.google.com/books/content?id=5a59FRj_qlgC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=5a59FRj_qlgC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007317493', 'Every day organizations around the world launch change initiatives designed to improve the status quo. Yet 50 to 70 percent of these change efforts fail. So, who or what is killing change? That\'s what you\'ll find out in this witty whodunit.', NULL, 258, 1, 1, '2021-02-28 19:51:32', '2021-02-28 19:51:32'),
(354, 'A Dance with Dragons', 'A-Dance-with-Dragons', 'http://books.google.com/books/content?id=E5TOygAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=E5TOygAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007466061', 'In the aftermath of a colossal battle, new threats are emerging from every direction. Tyrion Lannister, having killed his father, and wrongfully accused of killing his nephew, King Joffrey, has escaped from King\'s Landing with a price on his head.', NULL, 259, 1, 1, '2021-02-28 19:51:32', '2021-02-28 19:51:32'),
(355, 'Last Message', 'Last-Message', 'http://books.google.com/books/content?id=uuWVFDISfpIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=uuWVFDISfpIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781554699353', 'Adam thought he knew about his grandfather, but when he is sent to France to perform three very difficult (and dangerous, possibly illegal) tasks for him, Adam discovers things about his grandfather-- and himself--that he never imagined.', NULL, 260, 1, 1, '2021-02-28 19:51:32', '2021-02-28 19:51:32'),
(356, 'Close to the Heel', 'Close-to-the-Heel', 'http://books.google.com/books/content?id=4BuNVctFkgQC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=4BuNVctFkgQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781554699506', 'At the request of his late grandfather, Rennie goes to Iceland to right an old wrong, and gets drawn into investigating a murder.', NULL, 261, 1, 1, '2021-02-28 19:51:32', '2021-02-28 19:51:32'),
(357, 'Devil\'s Pass', 'Devil\'s-Pass', 'http://books.google.com/books/content?id=D58e8kpuAxEC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=D58e8kpuAxEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781554699384', 'Webb, a young street musician, faces grizzly bears and a madman on the Canol Trail when he tries to fulfill a request in his late grandfather\'s will.', NULL, 262, 1, 1, '2021-02-28 19:51:33', '2021-02-28 19:51:33'),
(358, 'Between Heaven and Earth', 'Between-Heaven-and-Earth', 'http://books.google.com/books/content?id=j6FA0iHio7YC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=j6FA0iHio7YC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781554699414', 'At the request of his late grandfather, DJ climbs Mount Kilimanjaro to scatter his ashes.', NULL, 263, 1, 1, '2021-02-28 19:51:33', '2021-02-28 19:51:33'),
(359, 'A Monster Calls', 'A-Monster-Calls', 'http://books.google.com/books/content?id=bxH8rQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bxH8rQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781406361803', 'Conor\'s mother has cancer and the treatment is not working. He wakes from a nightmare at seven minutes past midnight to find an elemental monster at the window, that demands the truth from Conor.', NULL, 257, 1, 1, '2021-02-28 19:51:33', '2021-02-28 19:51:33'),
(360, 'Why Mummy Swears', 'Why-Mummy-Swears', 'http://books.google.com/books/content?id=TBE6uwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TBE6uwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008284220', 'The hilarious second novel, and Sunday Times No 1 Bestseller, from author of the smash hit Why Mummy Drinks.Monday, 25 JulyThe first day of the holidays. I suppose it could\'ve been worse. I brightly announced that perhaps it might be a lovely idea to go to a stately home and learn about some history. As soon as we got there I remembered why I don\'t use the flipping National Trust membership - because National Trust properties are full of very precious and breakable items, and very precious and breakable items don\'t really mix with children, especially not small boys.Where I had envisaged childish faces glowing with wonder as they took in the treasures of our nation\'s illustrious past, we instead had me shouting \'Don\'t touch, DON\'T TOUCH, FFS DON\'T TOUCH!\" while stoutly shod pensioners tutted disapprovingly and drafted angry letters to the Daily Mail in their heads.How many more days of the holiday are there?Welcome to Mummy\'s world...The Boy Child Peter is connected to his iPad by an umbilical cord, The Girl Child Jane is desperate to make her fortune as an Instagram lifestyle influencer, while Daddy is constantly off on exotic business trips...Mummy\'s marriage is feeling the strain, her kids are running wild and the house is steadily developing a forest of mould. Only Judgy, the Proud and Noble Terrier, remains loyal as always.Mummy has also found herself a new challenge, working for a hot new tech start-up. But not only is she worrying if, at forty-two, she could actually get up off a bean bag with dignity, she\'s also somehow (accidentally) rebranded herself as a single party girl who works hard, plays hard and doesn\'t have to run out when the nanny calls in sick.Can Mummy keep up the facade while keeping her family afloat? Can she really get away with wearing \'comfy trousers\' to work? And, more importantly, can she find the time to pour herself a large G+T?Probably effing not.', NULL, 264, 1, 1, '2021-02-28 19:51:34', '2021-02-28 19:51:34'),
(361, 'People Skills', 'People-Skills', 'http://books.google.com/books/content?id=SCR83PTsOKAC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SCR83PTsOKAC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780671622480', 'Improve your personal and professional relationships instantly with this timeless guide to communication, listening skills, body language, and conflict resolution. A wall of silent resentment shuts you off from someone you love....You listen to an argument in which neither party seems to hear the other....Your mind drifts to other matters when people talk to you.... People Skills is a communication-skills handbook that can help you eliminate these and other communication problems. Author Robert Bolton describes the twelve most common communication barriers, showing how these “roadblocks” damage relationships by increasing defensiveness, aggressiveness, or dependency. He explains how to acquire the ability to listen, assert yourself, resolve conflicts, and work out problems with others. These are skills that will help you communicate calmly, even in stressful emotionally charged situations. People Skills will show you: · How to get your needs met using simple assertion techniques · How body language often speaks louder than words · How to use silence as a valuable communication tool · How to de-escalate family disputes, lovers\' quarrels, and other heated arguments Both thought-provoking and practical, People Skills is filled with workable ideas that you can use to improve your communication in meaningful ways, every day.', NULL, 265, 1, 1, '2021-02-28 19:51:34', '2021-02-28 19:51:34'),
(362, 'Boundaries', 'Boundaries', 'http://books.google.com/books/content?id=v5XBswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=v5XBswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008271602', '', NULL, 266, 1, 1, '2021-02-28 19:51:34', '2021-02-28 19:51:34'),
(363, 'Unlimited Power', 'Unlimited-Power', 'http://books.google.com/books/content?id=6COQPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6COQPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780743409391', 'If you have ever dreamed of a better life, UNLIMITED POWER will show you how to achieve the extraordinary quality of life you desire and deserve. Anthony Robbins has proven to millions through his books, tapes and seminars that by harnessing the power of your mind you can do, have, achieve and create anything you want for your life. UNLIMITED POWER is a revolutionary fitness book for the mind. It will show you, step by step, how to perform at your peak while gaining emotional and financial freedom, attaining leadership and self-confidence and winning the co-operation of others. UNLIMITED POWER is a guidebook to superior performance in an age of success.', NULL, 267, 1, 1, '2021-02-28 19:51:34', '2021-02-28 19:51:34'),
(364, 'A Clash of Kings', 'A-Clash-of-Kings', 'http://books.google.com/books/content?id=zlwlTfBeiSoC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zlwlTfBeiSoC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007447831', 'HBO\'s hit series A GAME OF THRONES is based on George R R Martin\'s internationally bestselling series A SONG OF ICE AND FIRE, the greatest fantasy epic of the modern age. A CLASH OF KINGS is the second volume in the series. \'Nobody does fantasy quite like Martin\' Sunday Times Throughout Westeros, the cold winds are rising. From the ancient citadel of Dragonstone to the forbidding lands of Winterfell, chaos reigns as pretenders to the Iron Throne of the Seven Kingdoms stake their claims through tempest, turmoil and war. As a prophecy of doom cuts across the sky - a comet the colour of blood and flame - five factions struggle for control of a divided land. Brother plots against brother and the dead rise to walk in the night. Against a backdrop of incest, fratricide, alchemy and murder, the price of glory is measured in blood.', NULL, 259, 1, 1, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(365, 'The Goldfish Boy', 'The-Goldfish-Boy', 'http://books.google.com/books/content?id=wxeLjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=wxeLjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407170992', 'A story about finding friendship when you\'re lonely - and hope when all you feel is fear. Twelve-year-old Matthew is trapped in his bedroom by crippling OCD, spending most of his time staring out of his window as the inhabitants of Chestnut Close go about their business. Until the day he is the last person to see his next door neighbour\'s toddler, Teddy, before he goes missing. Matthew must turn detective and unravel the mystery of Teddy\'s disappearance - with the help of a brilliant cast of supporting characters. Page-turning, heartbreaking, but ultimately life-affirming, this story is perfect for fans of The Curious Incident of the Dog in the Night Time and Wonder. It is a book that will make you laugh and cry.', NULL, 268, 1, 1, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(366, 'Into the Wild', 'Into-the-Wild', 'http://books.google.com/books/content?id=OgqJPgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=OgqJPgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007217878', 'Rich and exciting feline fantasy world in which epic battles for territory and honour are played out.This new series will have particular appeal for fans of Brian Jacques\' Redwall series.', NULL, 269, 1, 1, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(367, 'A Dance with Dragons', 'A-Dance-with-Dragons-9780007466078', 'http://books.google.com/books/content?id=icwIMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=icwIMQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007466078', 'Dubbed \"the American Tolkien\" by \"TIME\" magazine, Martin has earned international acclaim for his monumental cycle of epic fantasy. Now the #1 \"New York Times\"-bestselling author delivers the fifth book in his landmark series--as both familiar faces and surprising new forces vie for a foothold in a fragmented empire.', NULL, 259, 1, 1, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(368, 'Et si j\'étais... Pirate', 'Et-si-j\'étais...-Pirate', '', '', '9782753028012', 'Et si tu devenais pirate ? Entre dans ce monde passionnant et découvre à chaque page des informations fascinantes sur les bateaux, les armes, les pavillons et décore ta chambre avec le super poster !', NULL, 270, 3, NULL, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(369, 'Mon panorama du corps humain', 'Mon-panorama-du-corps-humain', '', '', '9782753032477', 'Le corps humain est une machine complexe, constituée de milliers d\'éléments différents. Certains sont à l\'extérieur et d\'autres à l\'intérieur. Utilise le guide pour identifier ce qui se trouve dans le corps humain puis place les autocollants sur ton panorama.', NULL, 278, 3, NULL, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(370, 'Les saisons de l\'arbre', 'Les-saisons-de-l\'arbre', '', '', '9782753040250', 'Viens observer une année dans le jardin pour aborder la notion des saisons ! Ce livre contient différents niveaux de lecture qui permettront à tous les enfants de participer activement à la lecture : soit ils imaginent leur propre histoire en observant tous les détails, en imitant les animaux, en parlant de ce qu\'ils connaissent ; soit ils se laissent porter par le texte poétique tout en regardant les magnifiques illustrations. A chaque page, des éléments apparaissent, d\'autres disparaissent, ce qui incite les enfants à s\'exprimer, à aiguiser leur sens de l\'observation et à développer leur vocabulaire.', NULL, NULL, 3, NULL, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(371, 'Quand je me sens seul', 'Quand-je-me-sens-seul', '', '', '9782753006362', 'Il y a beaucoup de choses qui font que l\'on peut se sentir seul. Ce n\'est pas agréable, mais il faut savoir que tout le monde se sent seul un jour !', NULL, 271, 3, NULL, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(372, 'Quand j\'ai peur', 'Quand-j\'ai-peur', '', '', '9782753003293', 'Tout le monde a peur des animaux dangereux, par exemple, mais beaucoup de choses ne sont pas aussi effrayantes qu\'elles ne le paraissent.', NULL, 271, 3, NULL, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(373, 'Prêt pour l\'école', 'Prêt-pour-l\'école', '', '', '9782753039650', 'Repasse sur les pointillés AVEC UN FEUTRE EFFACABLE Ecris, efface et recommence. DEVELOPPE TA DEXTERITE ! Un coffret qui contient 4 livres et un feutre effaçable pour apprendre et s\'entraîner à tracer les premiers apprentissages, développer la coordination encore et encore !', NULL, 272, 3, NULL, '2021-02-28 19:51:37', '2021-02-28 19:51:37'),
(374, 'Good Night Stories for Rebel Girls 2', 'Good-Night-Stories-for-Rebel-Girls-2', 'http://books.google.com/books/content?id=cs-YswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cs-YswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780997895827', '\"Good Night Stories For Rebel Girls 2\" is the sequel to the sensational New York Times bestseller, Good Night Stories for Rebel Girls. The authors, Francesca Cavallo and Elena Favilli, will take you and your kids on an empowering journey through 100 new bedtime stories, featuring the adventures of extraordinary women from Nefertiti to Beyoncé. The unique narrative style of \"Good Night Stories for Rebel Girls\" transforms each biography into a fairy-tale, filling the readers with wonder and with a burning curiosity to know more about each hero. Good Night Stories for Rebel Girls 2 boasts a brand new graphic design, a glossary and 100 incredible new portraits created by the best female artists of our time. \"This amazing book shows girls they can be anything they want.\" - Melinda Gates \"Essential reading for girls and indeed boys; children who read this at bedtime are guaranteed some big and inspirational dreams.\" - Fiona Noble, The Guardian \"The anti-princess book teaching girls to rebel.\" - Georgina Rannard, BBC News', NULL, 273, 3, NULL, '2021-02-28 19:51:37', '2021-02-28 19:51:37'),
(375, 'Good Night Stories for Rebel Girls', 'Good-Night-Stories-for-Rebel-Girls', 'http://books.google.com/books/content?id=BkqhzAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BkqhzAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780997895810', 'NEW YORK TIMES BESTSELLER AUSTRALIAN BOOK INDUSTRY AWARD FOR INTERNATIONAL BOOK OF THE YEAR The New York Times bestselling Good Night Stories for Rebel Girls is a children\'s book packed with 100 bedtime stories about the life of 100 extraordinary women from the past and the present, illustrated by 60 female artists from all over the world. The New York Times bestselling Good Night Stories for Rebel Girls is a children\'s book packed with 100 bedtime stories about the life of 100 extraordinary women from the past and the present, illustrated by 60 female artists from all over the world. Each woman\'s story is written in the style of a fairy tale. Each story has a full-page, full-color portrait that captures the spirit of the portrayed hero. Hardcover, with an extra smooth matte scuff-free lamination, 100lbs beautiful paper, a double satin bookmark and extraordinary print quality, Good Night Stories for Rebel Girls is a beautiful object to read and read again.', NULL, 273, 3, NULL, '2021-02-28 19:51:37', '2021-02-28 19:51:37'),
(376, 'Des dinosaures à la préhistoire', 'Des-dinosaures-à-la-préhistoire', '', '', '9782753034440', 'Découvrez dans ce livre des informations passionnantes sur les dinosaures et la préhistoire : les premières formes de vie, les reptiles volants, les dinosaures, les extinctions de masse, les fossiles, les mammouths, les premiers hommes et bien plus encore. Un guide détaillé sur les différentes espèces de dinosaures. Avec des centaines de dessins et de photographies ! Des informations fascinantes sur les dinosaures et la préhistoire ...', NULL, 274, 3, NULL, '2021-02-28 19:51:37', '2021-02-28 19:51:37'),
(377, 'Kingfishers Catch Fire', 'Kingfishers-Catch-Fire', 'http://books.google.com/books/content?id=o23XLwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=o23XLwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781844088423', 'Sophie, an English ingénue with two children, arrives in Himalayan Kashmir to set up home in a tumbledown cottage surrounded by flowers and herbs. Settling down to live quietly, frugally and peacefully with her new neighbours, she is unaware of the turmoil her arrival provokes as the villagers compete fiercely for her patronage. Sophie\'s cook makes a drastic bid to secure his position, and the unwanted consequences are catastrophic . ..', NULL, 140, 1, 1, '2021-02-28 19:51:38', '2021-02-28 19:51:38'),
(378, 'The Dream Keepers', 'The-Dream-Keepers', 'http://books.google.com/books/content?id=QOMLDQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=QOMLDQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781612967127', 'Mona has the ability to lucid dream and astral travel. This remarkable gift gives way to a mission that she cannot complete on her own, leading her to discover just how powerful dreams can be. Mona dreams of The Dream Keepers Theme Park which is so ethereal and mystical that it doesn\'t belong in the waking world. There is so much truth to what Mona sees in her dreams that logic ceases to exist, leaving only signs and symbols for her conscious mind to try and comprehend in her waking life. The emotions that Mona goes through leaves her doubtful on who she can trust in this realm and also the astral realm. There is a darker influence at play which poses a potential threat to society, yet society remains oblivious. What Mona discovers may make her stronger, or it may destroy her. It\'s her choice.', NULL, 200, 1, 1, '2021-02-28 19:51:38', '2021-02-28 19:51:38'),
(379, 'Lying about Last Summer', 'Lying-about-Last-Summer', 'http://books.google.com/books/content?id=rm1zjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rm1zjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407165363', 'Skye is looking for an escape from the reality of last summer when her sister died in a tragic accident. Her parents think that a camp for troubled teenagers might help her process her grief. All of the kids at the summer camp have lost someone close, but is bringing them together such a good idea? And can everyone at camp be trusted? When Skye starts receiving text messages from someone pretending to be her dead sister, she knows it\'s time to confront the past. But what if the danger is right in front of her?', NULL, 427, 1, 1, '2021-02-28 19:51:39', '2021-02-28 19:51:39'),
(380, 'Plus de 70 défis Bleu', 'Plus-de-70-défis-Bleu', '', '', '9782753044340', 'Amuse-toi avec des jeux de labyrinthes, des suites logiques, des différences, des intrus... et bien d\'autres encore. Mais attention, tu dois finir chaque défi en un temps limité ! Arriveras-tu à les relever ? A toi d\'être le plus rapide possible !', NULL, NULL, 3, NULL, '2021-02-28 19:51:39', '2021-02-28 19:51:39'),
(381, 'J\'écris les mots', 'J\'écris-les-mots', '', '', '9782753041295', 'Destiné à ceux qui apprennent l\'anglais, cet imagier présente des situations simples que les enfants reconnaîtront facilement : les différentes pièces de la maison, l\'école, les sports... L\'apprentissage de l\'orthographe est complété par une version audio qui permettra aux enfants d\'entendre Alison, une Anglaise qui fait du coaching linguistique, de se familiariser avec l\'accent britannique et de prononcer les mots correctement. Un livre pour apprendre l\'anglais tout en s\'amusant !', NULL, NULL, 3, NULL, '2021-02-28 19:51:40', '2021-02-28 19:51:40'),
(382, 'Je suis prêt pour la maternelle', 'Je-suis-prêt-pour-la-maternelle', '', '', '9781928119944', '', NULL, 275, 3, NULL, '2021-02-28 19:51:40', '2021-02-28 19:51:40'),
(383, 'Let\'s Get Ready for Kindergarten', 'Let\'s-Get-Ready-for-Kindergarten', '', '', '9781988142524', '', NULL, 275, 3, NULL, '2021-02-28 19:51:40', '2021-02-28 19:51:40'),
(384, 'Une journée à la mer', 'Une-journée-à-la-mer', '', '', '9782753040267', 'Viens passer une journée à la mer pour aborder la notion du temps ! Ce livre contient différents niveaux de lecture qui permettront à tous les enfants de participer activement à la lecture : soit ils imaginent leur propre histoire en observant tous les détails, en imitant les animaux, en parlant de ce qu\'ils connaissent ; soit ils se laissent porter par le texte poétique tout en regardant les magnifiques illustrations. À chaque page, des éléments apparaissent, d\'autres disparaissent, ce qui incite les enfants à s\'exprimer, à aiguiser leur sens de l\'observation et à développer leur vocabulaire.', NULL, NULL, 3, NULL, '2021-02-28 19:51:41', '2021-02-28 19:51:41'),
(385, 'Incroyable T. Rex', 'Incroyable-T.-Rex', '', '', '9782753030022', 'Comme les paléontologues, assemble les os et reconstitue le squelette de ce grand dinosaure et observe son extraordinaire anatomie. Dans ce livre, tu trouveras plein d\'informations passionnantes sur son alimentation, ses techniques de chasse, l\'endroit où il vivait... Tout ce qu\'il faut savoir sur le plus incroyable des dinosaures carnivores. Grâce à la maquette et au livre, T-Rex n\'aura plus aucun secret pour toi.', NULL, 276, 3, NULL, '2021-02-28 19:51:41', '2021-02-28 19:51:41'),
(386, 'Hansel et Gretel', 'Hansel-et-Gretel', '', '', '9782753041653', 'Un petit album avec une couverture molletonnée et des pages plastifiées pour découvrir le conte \" Hansel et Gretel \" illustré par Bérengère Motuelle.', NULL, NULL, 3, NULL, '2021-02-28 19:51:42', '2021-02-28 19:51:42'),
(387, 'Le Petit Poucet', 'Le-Petit-Poucet', '', '', '9782753041646', 'Un petit album avec une couverture molletonnée et des pages plastifiées pour découvrir le conte \" Le Petit Poucet \" illustré par Bérengère Motuelle.', NULL, NULL, 3, NULL, '2021-02-28 19:51:42', '2021-02-28 19:51:42'),
(388, 'Le petit chaperon rouge', 'Le-petit-chaperon-rouge', '', '', '9782753024762', 'A la demande de sa mère, le Petit Chaperon rouge porte une galette et un petit pot de beurre à sa grand-mère malade. En chemin, elle rencontre le loup.', NULL, 277, 3, NULL, '2021-02-28 19:51:42', '2021-02-28 19:51:42'),
(389, 'Me voici !', 'Me-voici-!', '', '', '9782753034990', 'Un livre précieux pour me découvrir et me souvenir de quand j\'étais petite... Dès ma naissance, pour me suivre pas à pas, rassembler mes souvenirs, noter mes exploits, mes humeurs et toutes les étapes de mes deux premières années.', NULL, NULL, 3, NULL, '2021-02-28 19:51:42', '2021-02-28 19:51:42'),
(390, 'Une journée sur le chantier', 'Une-journée-sur-le-chantier', '', '', '9782753042612', 'Bienvenue sur le chantier ! Es-tu prêt pour un voyage fantastique ? Voici une découverte ludique et interactive de la vie sur le chantier. L\'enfant déplie le livre page par page, jusqu\'à se retrouver au milieu d\'un magnifique décor, plein de détails. Tout est là : des grues, des pelleteuses, des ouvriers, des jardiniers et plein d\'outils... L\'enfant participe activement à la lecture : il doit découvrir le chantier, répondre aux questions, imaginer la suite de l\'histoire... Il développe également sa motricité et le texte, très rythmique, l\'aide à enrichir son vocabulaire.', NULL, NULL, 3, NULL, '2021-02-28 19:51:43', '2021-02-28 19:51:43'),
(391, 'Les pirates', 'Les-pirates', '', '', '9782753022805', '', NULL, 278, 3, NULL, '2021-02-28 19:51:43', '2021-02-28 19:51:43'),
(392, 'Les animaux de la ferme', 'Les-animaux-de-la-ferme', '', '', '9782753034402', 'Bienvenue à \"La ferme du petit pois\" ! Cette visite passionnante est faite pour toi ? Voici une découverte ludique et interactive de la vie dans une ferme. L\'enfant déplie le livre page par page, jusqu\'à se retrouver au milieu d\'un magnifique décor, plein de détails. Tout est là : poulailler, étable, verger, potager, des abeilles dans les ruches et des moutons dans la prairie... L\'enfant participe activement à la lecture : il doit imiter des animaux, répondre aux questions, imaginer la suite de l\'histoire... Il développe également sa motricité et le texte, très rythmique, l\'aide à enrichir son vocabulaire.', NULL, NULL, 3, NULL, '2021-02-28 19:51:44', '2021-02-28 19:51:44'),
(393, 'Hurra, es schneit!', 'Hurra,-es-schneit!', '', '', '9783845817286', '', NULL, NULL, 3, NULL, '2021-02-28 19:51:44', '2021-02-28 19:51:44'),
(394, 'Miaou', 'Miaou', '', '', '9788467761382', '', NULL, NULL, 3, NULL, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(395, 'Les animaux de l\'océan', 'Les-animaux-de-l\'océan', '', '', '9782753038868', 'Bienvenue dans l\'océan ! Es-tu prêt pour une plongée fantastique ? Voici une découverte ludique et interactive de la vie dans les océans. L\'enfant déplie le livre page par page, jusqu\'à se retrouver au milieu d\'un magnifique décor, plein de détails. Tout est là : des requins, des dauphins, des étoiles de mer, des pieuvres, des phoques et des manchots... L\'enfant participe activement à la lecture : il doit imiter des animaux, répondre aux questions, imaginer la suite de l\'histoire... Il développe également sa motricité et le texte, très rythmique, l\'aide à enrichir son vocabulaire.', NULL, NULL, 3, NULL, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(396, 'Le corps humain', 'Le-corps-humain', '', '', '9782753039209', 'Découvre ce qui se passe sous ta peau avec ce livre rempli d\'informations captivantes, mais aussi d\'activités manuelles étonnantes. Construis un stéthoscope, teste ta mémoire et fabrique du faux mucus très réaliste ! Grâce aux volets à soulever, aux illustrations détaillées et aux activités amusantes que tu trouveras à chaque page, tu pourras découvrir ton corps sous un tout nouveau jour !', NULL, 279, 3, NULL, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(397, 'Super-héros et gros ennuis', 'Super-héros-et-gros-ennuis', '', '', '9782753022218', '', NULL, 278, 3, NULL, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(398, 'L\'atlas des animaux', 'L\'atlas-des-animaux', '', '', '9782753039292', 'Grâce à ce voyage aux quatre coins du monde, les enfants découvriront des animaux incroyables et comment ils vivent dans leur environnement. De la minuscule fourmi coupe-feuille, très résistante, à la majestueuse et puissante baleine bleue, cet atlas des animaux, avec ses informations passionnantes et instructives et ses divers mécanismes, ouvre les portes du monde sauvage.', NULL, 280, 3, NULL, '2021-02-28 19:51:46', '2021-02-28 19:51:46'),
(399, '1000 infos à connaître', '1000-infos-à-connaître', '', '', '9782753025769', 'Plus de 1 000 infos à connaître sur la Terre, l\'espace, la Préhistoire, les animaux, l\'Histoire et les sciences ! Accompagnées de magnifiques illustrations, les jeunes lecteurs plongeront dans une aventure passionnante, racontée avec humour grâce à des détails et des dessins amusants. Les esprits curieux apprécieront les quiz et les activités permettant de s\'habiller comme un romain, fabriquer une boussole, construire un dinosaure.', NULL, 278, 3, NULL, '2021-02-28 19:51:46', '2021-02-28 19:51:46'),
(400, 'L\'énigme du fromage disparu', 'L\'énigme-du-fromage-disparu', '', '', '9782753038783', 'Le restaurant La Souris Gourmande attire chaque jour de nombreux clients. On vient de très, très loin pour goûter la célèbre spécialité du chef Suculus, le gratin gorgonzola-gouda-gruyère. Mais, un matin, le chef Suculus a une très mauvaise surprise : sa réserve a été cambriolée, le dernier morceau de gruyère a été dérobé. Le commissaire Moustache arrive sur les lieux pour mener l\'enquête ! Une histoire passionnante que votre enfant adorera lire tout seul. Il trouvera aussi un mini-dictionnaire pour enrichir son vocabulaire et un petit questionnaire pour vérifier sa compréhension du texte.', NULL, 281, 3, NULL, '2021-02-28 19:51:46', '2021-02-28 19:51:46'),
(401, 'La machine infernale', 'La-machine-infernale', '', '', '9782753038806', 'Comme son père et son grand-père avant lui, Philibert fabrique de délicieux biscuits au miel. Un matin, Monsieur Plus, le directeur d\'un grand magasin, rend visite à Philibert et lui demande de produire plus de biscuits. Pour ce faire, il fait installer dans l\'atelier de Philibert une énorme machine qui fabrique des tonnes de biscuits sans jamais s\'arrêter. Mais un jour, la machine explose ! Une histoire passionnante que votre enfant adorera lire tout seul. Il trouvera aussi un mini-dictionnaire pour enrichir son vocabulaire et un petit questionnaire pour vérifier sa compréhension du texte.', NULL, 281, 3, NULL, '2021-02-28 19:51:47', '2021-02-28 19:51:47'),
(402, 'Les mystères de la rentrée', 'Les-mystères-de-la-rentrée', '', '', '9782753038820', 'C\'est une étrange rentrée des classes pour Poucette : son cartable disparaît, toutes les pommes du goûter se volatilisent... Elle veut résoudre ces mystères et part explorer la cour. Elle fait alors une surprenante découverte : derrière une porte se trouve un passage secret ! Elle s\'engage dans un sombre tunnel... Une histoire passionnante que votre enfant adorera lire tout seul. Il trouvera aussi un mini-dictionnaire pour enrichir son vocabulaire et un petit questionnaire pour vérifier sa compréhension du texte.', NULL, 281, 3, NULL, '2021-02-28 19:51:47', '2021-02-28 19:51:47'),
(403, 'Croissants de lune', 'Croissants-de-lune', '', '', '9782753038813', 'Pendant que ses croissants croustillants cuisent dans le four, Gabriel, le boulanger, s\'accoude à sa fenêtre pour regarder la Lune. Une nuit, il entend frapper à sa porte. Mais qui peut bien lui rendre visite à cette heure-ci ? Quelle surprise ! Un drôle de personnage aux cheveux jaune citron lui sourit. Une histoire passionnante que votre enfant adorera lire tout seul. Il trouvera aussi un mini-dictionnaire pour enrichir son vocabulaire et un petit questionnaire pour vérifier sa compréhension du texte.', NULL, 281, 3, NULL, '2021-02-28 19:51:47', '2021-02-28 19:51:47'),
(404, 'Die tierischen Freunde', 'Die-tierischen-Freunde', '', '', '9781838528072', '', NULL, NULL, 4, NULL, '2021-02-28 19:51:47', '2021-02-28 19:51:47'),
(405, 'Das rote Feuerwehrauto', 'Das-rote-Feuerwehrauto', '', '', '9781838529550', '', NULL, 282, 4, NULL, '2021-02-28 19:51:48', '2021-02-28 19:51:48'),
(406, 'Gehört das mir?', 'Gehört-das-mir?', 'http://books.google.com/books/content?id=GNOYngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=GNOYngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9783849459932', '', NULL, 284, 4, NULL, '2021-02-28 19:51:48', '2021-02-28 19:51:48'),
(407, 'Papa, ich hab dich lieb', 'Papa,-ich-hab-dich-lieb', '', '', '9781838524630', '', NULL, 283, 4, NULL, '2021-02-28 19:51:48', '2021-02-28 19:51:48'),
(408, 'Schau, da ist ein Loch ...', 'Schau,-da-ist-ein-Loch-...', 'http://books.google.com/books/content?id=_mbTngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_mbTngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9783849459918', '', NULL, 284, 4, NULL, '2021-02-28 19:51:49', '2021-02-28 19:51:49'),
(409, 'The Double Dangerous Book for Boys', 'The-Double-Dangerous-Book-for-Boys', 'http://books.google.com/books/content?id=g4NfxAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=g4NfxAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008332983', 'In this long-awaited follow-up to his much-loved bestseller, written with his sons Cameron and Arthur, Conn Iggulden presents a brand-new compendium of cunning schemes, projects, tricks, games and tales of extraordinary courage. Whether it\'s building a flying machine, learning how to pick a lock, discovering the world\'s greatest speeches or mastering a Rubik\'s cube, The Double Dangerous Book for Boys is the ultimate companion, to be cherished by readers and doers of all ages.', NULL, 285, 1, NULL, '2021-02-28 19:51:49', '2021-02-28 19:51:49'),
(410, 'Energize', 'Energize', 'http://books.google.com/books/content?id=gw0IvwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gw0IvwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780753733554', 'A positive guide to help spring clean your mind and revitalize your body. If life in the 21st century is leaving you drained, Energize is a positive and practical guide to help you recharge your batteries and get that spring back in your step. Packed full of ideas and exercises, tips and techniques, you will develop new - or rediscover former - invigorating lifestyle choices that are suited to you. Motivational, compassionate and full of sound advice, Energize will provide you with the energy-boosting strategy and the new, balanced lifestyle that works for you.', NULL, 286, 1, NULL, '2021-02-28 19:51:49', '2021-02-28 19:51:49'),
(411, 'Secret Life of the Human Body', 'Secret-Life-of-the-Human-Body', 'http://books.google.com/books/content?id=p4WPswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=p4WPswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781844039784', 'Most of us take our body for granted and are never aware of its amazing capabilities. This book looks at how the seven octillion atoms that make up the human body are grouped into organs, tissues, nerves, fibres, fluids and more in such a way that the entire system runs smoothly without us ever knowing about it. It explains the hidden world of hormones and enzymes, the battleground of your immune system, the senses and much more. It also reveals the astonishing secrets of the human body, from the 15 \'other senses\' we have beyond the known five, to the reason we have eyes capable of seeing the Andromeda galaxy 2.5 million light years away. Chapters include: Cells, tissues and body structure The skin, skeleton and muscles The cardiovascular system Internal protectors: warriors behind the scenes The respiratory system', NULL, 287, 1, NULL, '2021-02-28 19:51:49', '2021-02-28 19:51:49'),
(412, 'What\'s My Child Thinking?', 'What\'s-My-Child-Thinking?', 'http://books.google.com/books/content?id=v0E0vAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=v0E0vAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241343807', 'Make every moment with your child count. Tap into the psychology behind your child\'s behaviour at every stage of development, and respond with confidence. Find out what your child really means when they say \"Look what I\'ve done!\", \"But, I\'m not tired\", or \"You\'re embarrassing me\" - and discover what\'s really going on when they can\'t express themselves at all. Taking more than 100 everyday situations, the book leads you through scenarios step by step, explaining not only your child\'s behaviour and the psychology behind it but also your own feelings as a parent. It then gives instant recommendations for what you could say and do in response to best resolve the situation. Covering all your child\'s developmental milestones from ages 2 to 7 years, What\'s My Child Thinking?covers important issues - such as temper tantrums, friendships (real and imaginary), sibling rivalry, aggressive behaviour, and peer pressure. What\'s more, there is a bank of practical \"survival guides\" for critical times, such as travelling in the car, eating out, and going online safely. Rooted in evidence-based clinical psychology and championing positive parenting, What\'s My Child Thinking? will help you tune into your child\'s innermost thoughts and be the parent you want to be.', NULL, 288, 1, NULL, '2021-02-28 19:51:50', '2021-02-28 19:51:50'),
(413, 'Crystal Basics', 'Crystal-Basics', 'http://books.google.com/books/content?id=L33BxwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=L33BxwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781620559345', 'A full-color practical handbook of essential techniques with an in-depth directory of healing stones • Offers guidance on selecting your crystals and gemstones and step-by-step instructions on how to cleanse, charge, activate, and program them • Includes templates for crystal grids and healing layouts, recipes for crystal elixirs, and directions for crystal meditations and energy clearing with crystals • The full-color directory includes 200 different rocks, minerals, gemstones, and crystal formations, organized alphabetically and featuring the physical, psychological, and spiritual healing qualities for every stone In this in-depth yet easy-to-follow guide, crystal healing teacher Nicholas Pearson offers a full-color compendium of 200 crystals and gemstones as well as a hands-on practical handbook on crystal healing, perfect for those just beginning their crystal journey as well as long-time stone lovers seeking an all-in-one reference. The handbook of crystal use opens with a thorough explanation of crystal energy, including its interactions with the human energy field, and teaches readers how to extrapolate what a crystal does based on its composition, crystal structure, formation process, and other properties. In the chapters on techniques, Pearson offers guidance on selecting your crystals and gemstones, then step-by-step instructions on how to cleanse, charge, activate, and program them. He explains how to make crystal grids and healing layouts, including templates for both, and also discusses the numerology and geometry of crystal grids. He explores the essentials of crystal elixirs, complete with elixir recipes, and details how to perform crystal meditations, clear the energy centers and the aura, and practice more advanced techniques, such as engaging with the crystal devas, creating sacred space, and practices for spiritual hygiene and protection. The compendium includes 200 rocks, minerals, gemstones, and crystal formations, organized alphabetically and featuring full-color photographs. Each entry includes geological information and the physical, psychological, and spiritual healing qualities for every stone. Some stones, such as jasper and quartz, have multiple varieties, each given their own entries to provide a thorough reference guide for crystal healers and collectors. This accessible yet comprehensive guide offers the essentials of crystal energy healing paired with a highly illustrated stone directory to give you everything you need to know about crystal basics in one handy volume.', NULL, 423, 1, NULL, '2021-02-28 19:51:50', '2021-02-28 19:51:50'),
(414, 'Practical Meditation', 'Practical-Meditation', 'http://books.google.com/books/content?id=HxtbtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=HxtbtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241331675', 'Whether you are new to meditation, or looking to grow your existing knowledge, this practical guide on how to meditate provides everything you need to start (or continue) your meditative journey. Want to improve your concentration and memory, and reduce stress? Meditation is scientifically proven to do both. Do I need to sit in a special pose? How long should I meditate for? Is meditation religious? With myth-busting facts and easy-to-follow advice,Practical Meditationguides you through your first taste of meditation, to how to master the key techniques and deepen your practice. Find the styles that suit you by exploring over 30 step-by-step meditations, from Mindfulness Meditation to Tai Chi. Discover the benefits of meditation on your mind and body, examining how it works and the scientific evidence behind its effects. Use the short \"mini-meditations\" to fit meditation into a busy lifestyle, or to sample a range of different styles, then learn how to set up a practice that works for you. Clear, practical advice helps you build meditation into your daily life, so you can find peace and stillness anytime, anywhere - at home, on the beach, or on a business trip.', NULL, 428, 1, NULL, '2021-02-28 19:51:50', '2021-02-28 19:51:50'),
(415, '1001 quotations to inspire you', '1001-quotations-to-inspire-you', '', '', '9781844039401', '', NULL, 289, 1, NULL, '2021-02-28 19:51:51', '2021-02-28 19:51:51'),
(416, 'Factfulness (Illustrated)', 'Factfulness-(Illustrated)', 'http://books.google.com/books/content?id=2vm-wQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2vm-wQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781529387155', 'The international best-selling phenomenon loved by BARACK OBAMA and BILL GATES in a new and updated illustrated edition \'A hopeful book about the potential for human progress when we work off facts rather than our inherent biases.\' BARACK OBAMA \'One of the most important books I\'ve ever read - an indispensable guide to thinking clearly about the world.\' BILL GATES *#1 Sunday Times bestseller * instant New York Times bestseller * Observer \'best brainy book of the decade\' * #1 Wall Street Journal bestseller * Irish Times bestseller * Audio bestseller * Guardian bestseller * FACTFULNESS: the stress-reducing habit of only having opinions for which there are strong supporting facts. Things aren\'t as bad as we think. Fact. When asked simple questions about global trends - why the world\'s population is increasing; how many young women go to school; how many of us live in poverty - we systematically get the answers wrong. So wrong that a chimpanzee choosing answers at random will consistently outguess journalists, Nobel laureates, and investment bankers. In Factfulness, legendary statisticians Hans, Anna and Ola Rosling offer a radical new explanation of why this happens, and reveal the ten instincts that distort our perspective. It turns out that the world, for all its imperfections, is in a much better state than we might think. But when we let the bad news take on outsize proportions instead of embracing a worldview based on facts, we can lose our ability to focus on the things that threaten us most. Inspiring and revelatory, filled with lively anecdotes and moving stories, Factfulness is an urgent and essential book that will change the way you see the world.', NULL, 290, 1, NULL, '2021-02-28 19:51:51', '2021-02-28 19:51:51'),
(417, 'Eat Yourself Fit', 'Eat-Yourself-Fit', 'http://books.google.com/books/content?id=U9LxjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=U9LxjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780717171552', 'The No.1 best-selling author is back with over 100 recipes and tips to help you hit peak performance! Filled with nourishing recipes and practical advice to help you look and feel your very best.', NULL, 291, 1, NULL, '2021-02-28 19:51:52', '2021-02-28 19:51:52'),
(418, 'The Everything Kids\' Astronomy Book', 'The-Everything-Kids\'-Astronomy-Book', 'http://books.google.com/books/content?id=4DavDgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=4DavDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781598695441', 'Introduces trivia and information about the solar system, stars, and extraterrestrials and offers related games, puzzles, and activities.', NULL, 292, 1, NULL, '2021-02-28 19:51:52', '2021-02-28 19:51:52');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(419, 'How to Draw a Map', 'How-to-Draw-a-Map', 'http://books.google.com/books/content?id=YdwYtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YdwYtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780008275792', 'How to Draw a Map is a fascinating meditation on the centuries-old art of map-making, from the first astronomical maps to the sophisticated GPS guides of today. Maps have influenced humanity in many unexpected ways: life, death, sexual reproduction, espionage, war and peace. How to Draw a Map traces the story of mapmaking - cartography - from the first scratchings on the cave wall to the detailed high-tech \'navigator\'. This is the story of human conceptions, often misconceptions, of our world. It is also a very personal story about a mapmaker\'s journey through life - the exciting new perspectives and the occasional misadventures. Over the last 5,000 years societies and empires have risen and fallen; most, if not all, attempt to record their own visions of our world. In the 15th century, Europeans developed a global reach with their oceanic ships, exploring outward into the world, revealing new possibilities, peoples and opportunities. Mapmakers recorded this journey, revealing to us a window into past triumphs and disasters. The story continues into our own day when diplomats carve up our globe, presenting what we now see as the \'modern\' world. In How to Draw a Map, father and son cartographers Alexander and Malcolm Swanston demonstrate the skill, creativity and care involved in the timeless art of creating maps - and what these artefacts reveal about the legion of mapmakers who went before us. y, revealing to us a window into past triumphs and disasters. The story continues into our own day when diplomats carve up our globe, presenting what we now see as the \'modern\' world. In How to Draw a Map, father and son cartographers Alexander and Malcolm Swanston demonstrate the skill, creativity and care involved in the timeless art of creating maps - and what these artefacts reveal about the legion of mapmakers who went before us.', NULL, 293, 1, NULL, '2021-02-28 19:51:52', '2021-02-28 19:51:52'),
(420, 'The 7 Habits of Happy Kids', 'The-7-Habits-of-Happy-Kids', 'http://books.google.com/books/content?id=SlHaPAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SlHaPAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781847384317', 'Bringing the international, best selling 7 Habits franchise to the youngest audience, this picture book is the perfect introduction. With a cast of lovable characters such as Lily Skunk and Sam Squirrel, children will be introduced to the 7 habits through seven fun and accessible stories (one for each habit). The Coveys have been a household name for many years with over twenty-five million books in print in over forty different countries, and with this inspiring picture book they are set to reach a whole new audience.', NULL, 169, 1, NULL, '2021-02-28 19:51:53', '2021-02-28 19:51:53'),
(421, 'Paint Play', 'Paint-Play', 'http://books.google.com/books/content?id=f9TyvQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=f9TyvQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781910552872', 'Forget everything you think you know about traditional watercolour painting - Paint Play will show you how to experiment with paint, use it spontaneously and have fun, no experience required! Through a series of 21 simple, achievable activities, artist Katie Rose Johnston demonstrates different ways of mixing colours, experiments with textures using salt and cling film, makes spatter art, animal print patterns and much more. A gorgeous illustration showcases each technique and is accompanied by helpful annotations in a playful, sketchbook-style layout, showing how to practise each technique at home. Focusing on the process rather than the result, Paint Play is the perfect inspiration for anyone who wants to discover techniques to use in their own paintings or simply be creative, play with paint and have fun.', NULL, 294, 1, NULL, '2021-02-28 19:51:53', '2021-02-28 19:51:53'),
(422, 'The Everything Kids\' Snakes, Lizards, and Other Scaly Creatures Book', 'The-Everything-Kids\'-Snakes,-Lizards,-and-Other-Scaly-Creatures-Book', 'http://books.google.com/books/content?id=n1CeDgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=n1CeDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781507201206', 'Care for pet reptiles from iguanas to tortoises.', NULL, 295, 1, NULL, '2021-02-28 19:51:53', '2021-02-28 19:51:53'),
(423, 'My Feelings and Me', 'My-Feelings-and-Me', 'http://books.google.com/books/content?id=lOXitAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=lOXitAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781510735330', 'Do you know your own feelings? Sometimes, we\'re happy, so we laugh and shout with glee. Other times, we\'re angry, and want to rage and roar. It is not easy to deal with our many contradictory emotions. To recognize our own feelings and deal with them responsibly is an important learning process for children, and a trial of limits. This vibrantly and expressively illustrated book invites children to talk about feelings. It takes readers through a range of potential emotions without ever calling them \"good\" or \"bad,\" allowing children to recognize and examine their own emotional world.', NULL, 296, 1, NULL, '2021-02-28 19:51:54', '2021-02-28 19:51:54'),
(424, 'Make It by Hand Papercraft: Paper Plants', 'Make-It-by-Hand-Papercraft:-Paper-Plants', 'http://books.google.com/books/content?id=jUG4uwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=jUG4uwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781787390027', '15 original paper cutting designs. Create floral arrangements, house plants, fruits, and vegetables to decorate your home. Cut and assembled from coloured and patterned papers, these projects will bring a bright modern twist to artificial decoration, with over 40 pages of colour templates from which the artworks can be directly cut out, and easy to follow step-by-step photographs and instructions - including tulips, poppies, succulents, pumpkins, and even a fly-catcher.', NULL, 297, 1, NULL, '2021-02-28 19:51:54', '2021-02-28 19:51:54'),
(425, 'Complete Massage', 'Complete-Massage', 'http://books.google.com/books/content?id=hNimwwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=hNimwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241373477', 'Want to really understand the health and wellness benefits of massage? Interested in practising massage at home or considering taking a course? Let this book be your guide on everything from effleurage to epineuria. Annotated anatomy and physiology illustrations show you how different levels of pressure work the muscles, and the profound effect massage can have on the nervous system and on cardio and lymphatic health. Learn how to prepare physically and mentally, and get the lowdown on oils and massage beds, diffusers and candles. And if you\'re receiving a massage, find out why drinking water before and after is important and how focusing on breathing enhances muscle relaxation. All the core strokes and massage techniques that form the foundation of massage practice are shown photographically with detailed annotations and integrated arrows showing the direction and application of pressure. Learn about the key disciplines, from Swedish to shiatsu, reflexology and hot stone therapy. Access over 30 bespoke massage sequences, tailored to treat specific complaints and special client groups, such as pregnant women, babies, and those recovering from surgery. Become an expert in the simple but profoundly effective power of touch and share its miraculous health benefits.', NULL, NULL, 1, NULL, '2021-02-28 19:51:55', '2021-02-28 19:51:55'),
(426, 'How to Play Chess', 'How-to-Play-Chess', 'http://books.google.com/books/content?id=jAoDkAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=jAoDkAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241257265', '\"Follow the easy steps to grandmaster greatness with How To Play Chess. From the opening move to checkmate, How To Play Chess will help your child play chess like a champion. With plenty of master tips and cool 3D images, How To Play Chess is the perfect introduction to chess for beginners as well as kids. Start with basic chess techniques, and move up to more difficult challenges, guided step-by-step the whole way. How To Play Chess includes a handy press out chess board and pieces to get you practising straight away. Learn chess the fun way, and add firepower to your chess tactics with this wonderful companion to the world\'s most popular game of skill.\"', NULL, 298, 1, NULL, '2021-02-28 19:51:56', '2021-02-28 19:51:56'),
(427, 'Stress the Psychology of Managing Pressure', 'Stress-the-Psychology-of-Managing-Pressure', 'http://books.google.com/books/content?id=IvhztAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=IvhztAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241286272', 'Learn how to handle stress in every area of life, from the workplace to relationships, and emerge happier, healthier, and more productive. Drawing on cutting-edge psychology, Stress- The Psychology of Managing Pressuregives you the techniques you need to understand and deal with stress head-on, all explained through infographics, questionnaires and constructive advice. Identify the causes of stress in your life and reframe unhelpful patterns of thought into powerful psychological solutions that you can apply every day. Develop a work life balance, learn how to deal with an anxiety attack, discover relaxation techniques, and put stress in perspective with insightful chapters and expert advice.', NULL, 299, 1, NULL, '2021-02-28 19:51:56', '2021-02-28 19:51:56'),
(428, 'Yoga Your Home Practice Companion', 'Yoga-Your-Home-Practice-Companion', 'http://books.google.com/books/content?id=nV3xswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=nV3xswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241323632', 'Achieve a healthy body, mental alertness, and inner serenity through the practice of hatha yoga. Combining step-by-step asanas, detailed illustrations, programmes, mindfulness techniques, diet advice, and recipes, Yoga- Your Home Practice Companionis the complete practice and lifestyle guide for students of all abilities. Master breathing and mindfulness techniques to recharge your energy levels and combat stress. Embrace a healthier more yogic way of eating with diet advice and more than 40 nutritious plant-based recipes. Written by the experts from the world-renowned Sivananda Yoga Vedana Centres, Yoga- Your Home Practice Companionhas everything you need in one complete package.', NULL, 300, 1, NULL, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(429, 'Robot', 'Robot', 'http://books.google.com/books/content?id=Sig4swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Sig4swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241346754', 'From mechanical automata to modern-day androids and animal robots, this children\'s book for ages 9-11 covers artificial intelligence (AI) throughout history. Robotics is experiencing an explosion - with more than 45 million robots estimated to be in operation by 2019. Robotics and AI will increasingly become a part of daily life- from drones used in battle to robot helpers taking care of hospital patients, and from service robots packing food to rescue robots finding people after a disaster. Robotexplains how robots work, how they are made, and shows what the cutting-edge of science, technology, mechanical engineering, and computing looks like. This kids\' robot book showcases more than 100 robots, representing the latest and greatest innovations in AI through bright graphics and stunning photography. Tech panels present fascinating facts about each robot\'s design, production, and capability. The final chapter covers the future of robotics, and how kids of the not-too-distant future may have their very own android friends. Young readers will be riveted by the vibrant graphics, zesty colours, and mend-bending array of information that Robotprovides.', NULL, 299, 1, NULL, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(430, 'Newsageddon', 'Newsageddon', 'http://books.google.com/books/content?id=fKNRswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=fKNRswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780717179503', 'Waterford Whispers News 2017 is the fourth annual from Ireland\'s leading online satirical site, featuring the funniest stories of the year, including the latest on Garda scandals, Donald Trump, Brexit, Enda Kenny\'s departure and Conor McGregor\'s baby. Follow the diary of a Garda recruit in his first year at Templemore and find out who the five greatest Late Late guests of all time were. Packed with brilliant satire, sharp wit and insightful social commentary, Ireland\'s answer to The Onion is now a worldwide phenomenon and a must-read in an era when the news has never been more unpredictable.', NULL, 301, 1, NULL, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(431, 'RHS Colour Companion', 'RHS-Colour-Companion', 'http://books.google.com/books/content?id=0vQ_ugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0vQ_ugEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781784725785', 'Whether you are planning a brand-new garden or looking for complementary plants to add to your existing one, RHS Colour Companion is an inspirational and highly practical sourcebook of ideas for incorporating colour into your garden. An introductory section explains the science behind colour and how to apply it in the garden, and colour-themed chapters then focus on each colour\'s uses. A gallery of garden elements that can provide different colours is also included -- from foliage and flowers to bark, fruit, berries and even hard landscaping materials. Every plant in the gallery is supported with cultivation guidance and suggestions for incorporating it into a planting plan for maximum impact.', NULL, 302, 1, NULL, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(432, 'The Kew Gardener\'s Guide to Growing House Plants', 'The-Kew-Gardener\'s-Guide-to-Growing-House-Plants', 'http://books.google.com/books/content?id=N-8xyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=N-8xyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780711240001', 'Which are delicate and which indestructable? - We show how to find the right home for your plants and the right plants for your home. KEW GROWING HOUSE PLANTS is a beautifully illustrated giftable gardening reference book, combining exquisite botanical illustrations with practical indoor projects. Readers can discover over 70 life-changing plants and 12 home-transforming projects. Each project is described and illustrated with step-by-step photographs. Starting from the premise that we want to show how to grow the right plant in the right place, we demonstrate the benefits of all common house plants and how to care and curate them in the home. Includes cacti, succulents, bromeliads including air plants, foliage house plants, flowering house plants, house plants for scent and air freshening.', NULL, 303, 1, NULL, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(433, 'Herbs', 'Herbs', 'http://books.google.com/books/content?id=6ow6MQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6ow6MQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848992825', 'Herbs have a transformative power - they can lift a dish from ordinary to sublime. Written by a true herb aficionado, this beautiful book is an ode to enjoying herbs all year round. In each seasonal chapter, Judith Hann skillfully weaves together guidance growing - whether you have a full herb garden or simple pots on the windowsill - with delicious, imaginative recipes. Find recipe inspiration for more common herbs and discover how to use those herbs that aren\'t so readily available in the supermarket. Judith shares a huge collection of recipes that have been tried and tested at her herb cookery school - from simple herb sauces and salads to more ornate dishes, such as Guinea Fowl with Lovage and Lime, or Spare Ribs with Plum, Chilli and Sage Sauce. It also includes herb features, which provide a wealth of further quick recipes and ideas for: * Pestos, made with a variety of herbs * Herb syrups and sugars * Herb ices * Preserving recipes with herb flavourings * Herb cheeses, and many more Full of anecdotes, this is a wonderfully personal account of a love affair with herbs, as well as an indispensable guide on how to make the most of them every day.', NULL, 424, 1, NULL, '2021-02-28 19:51:58', '2021-02-28 19:51:58'),
(434, 'How to Be Human', 'How-to-Be-Human', 'http://books.google.com/books/content?id=WGeOvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=WGeOvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781473629288', 'If you thought you knew who you were, THINK AGAIN. Did you know that half your DNA isn\'t human? That somebody, somewhere has exactly the same face? Or that most of your memories are fiction? What about the fact that you are as hairy as a chimpanzee, various parts of your body don\'t belong to you, or that you can read other people\'s minds? Do you really know why you blush, yawn and cry? Why 90 per cent of laughter has nothing to do with humour? Or what will happen to your mind after you die? You belong to a unique, fascinating and often misunderstood species. How to be Human is your guide to making the most of it.', NULL, 304, 1, NULL, '2021-02-28 19:51:58', '2021-02-28 19:51:58'),
(435, 'Human Body a Children\'s Encyclopedia', 'Human-Body-a-Children\'s-Encyclopedia', 'http://books.google.com/books/content?id=wMA7vAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=wMA7vAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241323069', 'This encyclopedia will knock spots off your biology textbook! Get under the skin of human anatomy with large, clear photographs, graphics, and CGI images that show everything you need to see in detail. Annotations and captions explain how everything works clearly and simply, without overwhelming. From the skin through muscles, tissues, organs, and nerves right down to your bones, you will be able to understand not only how your body works, but also your brain and the way you think, feel, and behave. The book is divided into twelve sections. The first ten chapters explore and explain major body systems including bones and muscles; the digestive system; lungs and breathing; life cycle; and senses. Within each chapter, most of the spreads are reference pages devoted to explaining how different parts of the body work - from how the heart beats to the tiny white blood cells that attack germs. Interspersed with these are double-page images that showcase amazing human body images, such as magnified views of individual muscle fibres and the villi that line the inside of your small intestine.The last chapter, Mind and Personality, covers the intriguing inner workings of the human mind, introducing the fascinating science of psychology. Finally, the reference section provides readers with quizzes to test their personality and reasoning, and finishes with a timeline of key medical breakthroughs.', NULL, 299, 1, NULL, '2021-02-28 19:51:58', '2021-02-28 19:51:58'),
(436, 'History Year by Year', 'History-Year-by-Year', 'http://books.google.com/books/content?id=E6AFwgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=E6AFwgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241379769', 'Travel through the ages, year by year, in this visual history for children told on a timeline that stretches from prehistoric times to the modern day. In this updated volume, the timeline reaches 2018, documenting recent events, including the Syrian War and the continuing exploration of space by the Juno and New Horizons probes. This unique book joins the dots of history by putting historic events across the world on one timeline, including prehistoric people, key civilizations (Ancient Egyptians, Ancient Greeks, Romans, Aztecs, and Incas), world exploration, the Industrial Revolution, the American Civil War, the world wars, and humans on the Moon. Every page is packed with pictures and original artefacts, to give a snapshot of an era. There are also features that explain major events, such as the rise of the Roman Empire, or the fall of Communism. \"Child of the Time\" explores the lives of children in history, from the tough training of a Spartan warrior to the lives of young pioneers on a wagon train heading west across America in the 20th century. A \"Moment in Time\" freeze-frames a particularly historic event, such as the first flight of the Wright Brothers. DK\'s History Year by Year shows the influences, patterns, and connections between the events that have shaped our world and reveal the history of the world as never before.', NULL, 305, 1, NULL, '2021-02-28 19:51:58', '2021-02-28 19:51:58'),
(437, '100 Things to Know About Space', '100-Things-to-Know-About-Space', 'http://books.google.com/books/content?id=J3h1jwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=J3h1jwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409593928', 'Astronomers are discovering more and more information about space, making the subject a very hot topic in schools and out of it. This guide is full of genuine facts, answering all our space-related questions and prompting more along the way. Aimed at children aged nine and over, the pictorial info-graphics style illustrations provide easily digestible facts in bite-size chunks.', NULL, 5, 1, NULL, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(438, 'Top Gear Ultimate Supercars', 'Top-Gear-Ultimate-Supercars', 'http://books.google.com/books/content?id=I2qaxAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=I2qaxAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781785944819', 'Guaranteed to rev the engines of car fans everywhere. Supercars are the purest and most extreme expression of automotive performance there is - and no one knows the territory better than the TopGear team. With ever-increasing power outputs, radical new designs, and eye-popping price tags, this book is a celebration of the supercar in all its fabulous glory. Supercars also brings this incredibly fast-moving, hi-octane world bang up to date. The world\'s best writers and photographers explore the latest developments in thrilling style - from the new generation of pure-electric cars that have raised the bar for zero emissions performance, to the crazy machines hell-bent on breaking the 300mph barrier ... this is TopGear Supercars. Buckle up. Are you ready?', NULL, 306, 1, NULL, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(439, 'Gods and Goddesses of Ancient Greece', 'Gods-and-Goddesses-of-Ancient-Greece', 'http://books.google.com/books/content?id=ZqNECwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=ZqNECwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781474717465', 'Deeply religious, the ancient Greeks honored many gods and goddesses. The ancient Greeks believed these gods and goddesses had great power over the weather and the Earth. But they weren\'t all-powerful, and they had flaws. From Zeus to Athena, read about the family of gods and goddesses that the ancient Greeks believed watched over them.', NULL, 307, 1, NULL, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(440, 'The Art Book', 'The-Art-Book', 'http://books.google.com/books/content?id=lMTTjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=lMTTjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241239018', 'What makes something a great work of art? Written in plain English, The Art Book cuts through the jargon of art history and theory, and is packed with images of the world\'s greatest works of art and witty infographics that explore the ideas behind them. From prehistoric fertility figures to contemporary video installations, this is the perfect primer to the world of art. -- Cover.', NULL, 308, 1, NULL, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(441, 'Draw Buildings and Cities in 15 Minutes', 'Draw-Buildings-and-Cities-in-15-Minutes', 'http://books.google.com/books/content?id=ZYe9swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ZYe9swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781781576274', 'Learn to draw and sketch your urban environment with quick and easy lessons. THE SUPER-FAST DRAWING TECHNIQUE ANYONE CAN LEARN Anyone can draw, and anybody who can already draw can always learn to draw better. In this book, leading art tutor Matthew Brehm gives you all the skills you need to sketch the urban environment in just 15 minutes. Good drawings aren\'t always the ones that you\'ve spent a lot of time over; some of the best pieces are swift, energetic studies that capture the feel of the subject in a few well-placed lines. This book contains a series of exercises that develop the core skills for drawing buildings and cities, all of which can be completed in a quarter of an hour. · Build confidence in mark making.· Understand perspective.· Play with proximity and point of view.· Record details such as reflections and shadows.· Capture the character of buildings and cities.', NULL, 309, 1, NULL, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(442, 'Catapults and Key Hooks', 'Catapults-and-Key-Hooks', 'http://books.google.com/books/content?id=aPI5tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=aPI5tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857834607', 'With information on how to forage responsibly and suggestions on sources for the best wood to use, Geoffrey Fisher shows how the natural bounty of woodland can be used to stunning effect. Whether building a bee hotel or an insect house to help your garden\'s ecosystem thrive, crafting a catapult, whistle, skipping rope or cup and ball game to give away, or making a key hook or table brush to organise your home, the result of each will be entirely unique while also effortlessly stylish. All basic woodworking techniques are covered, plus Geoffrey also shows how best to prepare materials, including checking for disease, drying and stripping bark, and gives a detailed guide on your essential tool kit - what to have, how to handle your tools safely, and how to maintain everything to the highest standard -meaning anyone can pick up Catapults & Key Hooks and dive straight into the world of Geoffrey\'s designs.', NULL, 310, 1, NULL, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(443, 'Literary Landscapes', 'Literary-Landscapes', 'http://books.google.com/books/content?id=p1k-uQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=p1k-uQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781911130772', 'Some stories couldn_t happen just anywhere or any time _ often the scenery , landscape or era is as central to the tale as any character _ and just as easily recognised. Wh at adventures would Heidi have had without her mountain neighbours? W ould Jim Hawkins have experienced such an adventure had he not lived in mid - 1700s England? Literary Landscapes brings together an eclectic collage of over 50 familiar literary worlds paired with original maps and archive material, as well as illustrations and photography. In this collection of essays the reader will follow Leopold Bl oom_s footsteps around Dublin, become immerse d in Les Mis é rable_s revolutionary Paris, feel the chill wind of Emily Brontë_s Wuthering Heights, and hear the churning paddles of Mississippi steamboats in Mark Twain_s Huckleberry Finn. The landscapes of enduring fictional characters and literary legends are vividly brought to life, evoking all the sights and sounds of the original works. For anyone wh o ever dreamt of escaping the everyday, Literary Landscapes will transport you to the greatest places in literature.', NULL, 311, 1, NULL, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(444, 'New Botanical Painting', 'New-Botanical-Painting', 'http://books.google.com/books/content?id=PxTNwAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PxTNwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781781576786', 'Award-winning artist Harriet de Winton shows you how to create contemporary watercolour artworks to treasure and share. Through more than 30 step-by-step projects, discover how to paint individual flowers and foliage, as well as beautiful botanical compositions. Use your new skills to make art for your wall, unique cards, invitations, or simply paint for pleasure.', NULL, 312, 1, NULL, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(445, 'Summer Every Day', 'Summer-Every-Day', 'http://books.google.com/books/content?id=O8iguwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=O8iguwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788791113', 'More than 65 recipes to take the hard work out of entertaining and bring a taste of sunshine to every day of the year. Here is the perfect collection of relaxed recipes to bring you that sunshine feeling every day of the year. Whatever the weather there\'s no excuse for throwing any old plate of food together—it should be the reason why you take extra care so the meal can be a memorable one. Simple, fresh Mediterrean-style ingredients and fuss-free recipes equals the perfect solution to stylish entertaining at home, whether you’re feeding a group or just that special someone... Try Lunch Al Fresco on warmer days. Offerings include grilled squid, chorizo and asparagus salad. Two’s Company encourages you to really push the culinary boat out. Dust off the sauté pan, light the candles and rustle up an irresistible beef fillet with pea purée and hasselback potatoes! Eating is a communal activity, so in More the Merrier you’ll find plenty of ideas for easy boards and small plates to share. Finally, enjoy a leisurely catch up with hungry friends at the weekend and sit down to a banana and chocolate cake or a plate of honey and oat Anzac cookies at Teatime.', NULL, 313, 1, NULL, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(446, 'Astrology', 'Astrology', 'http://books.google.com/books/content?id=4YfdtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4YfdtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241255520', 'Find out how to use your birth horoscope to enhance and transform every area of your life. In Astrology, you\'ll see how to cast and read your own birth chart; how to interpret the positions of the zodiac signs, sun, moon and other planets to better understand yourself and your place in the world around you. The book sets out the key principles of astrology, offers psychological insights, and then pinpoints ways you can use it as a form of self-help. This ancient art can help you improve many different areas of your life - from your personal and professional relationships to your health, wealth, and well-being. You\'ll also see how astrology can help you when you need it most, with practical advice about handling life\'s key moments, including changing jobs, starting a family, coping with financial difficulty, or facing retirement. Written in plain language and with sample case studies and beautiful graphics, Astrologyis your essential guide to navigating all of life\'s challenges and opportunities.', NULL, 299, 1, NULL, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(447, 'Jack Stein\'s World On a Plate', 'Jack-Stein\'s-World-On-a-Plate', 'http://books.google.com/books/content?id=vEGNswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vEGNswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781472949387', '“In the past 20 years there have been huge movements in the way we British think about produce. As someone is involved in that conversation I have seen it change and now, more than ever, the produce that is available to the keen home cook has increased in variety and quality immensely. What this means is that the home cook is now faced with the fantastic situation of being able to source the produce needed to make great food all year round. It is important that this movement progresses, and that if we choose to source our meat, fish and other major ingredients from Britain, why not have fun with world food concepts?” In this beautiful new book, Jack Stein combines his culinary experience from working in restaurants around the world and his passion for British produce to create 100 dishes to enchant and entice home cooks. From dishes such as chilli crab (using the very finest Cornish crab) and Szechuan-style pigeon to hot and sour Sumatran soup and XO clams, the recipes featured are all easy to follow and simple to make, bringing the taste of exotic holidays to our own kitchen tables. Stunning photography complements these delightful recipes, ensuring this is a book you will cook from time and time again.', NULL, 314, 1, NULL, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(448, 'GROSS JOKES (LARGE FLEXIBOUND).', 'GROSS-JOKES-(LARGE-FLEXIBOUND).', 'http://books.google.com/books/content?id=tGYGtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tGYGtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781488910388', '', NULL, NULL, 1, NULL, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(449, 'The Science of Animals: from Molluscs to Mammals', 'The-Science-of-Animals:-from-Molluscs-to-Mammals', 'http://books.google.com/books/content?id=VXH8wQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VXH8wQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241346785', 'From tiny insects to sleek sharks and majestic elephants, this book invites you to explore the animal kingdom up close - from nose to tail. Whether you\'re interested in specific animal groups such as mammals or birds or have a passion for wildlife photography, this beautiful book will delight, fascinate, and surprise. DK\'s elegant new introduction to wild animals is packed with dramatic photography that celebrates their beauty. Crystal-clear diagrams then explain how animals work and describe how they are adapted to do different things and to survive in different environments. The unique nose-to-tail approach, with chapters on different body parts, allows you to focus in on the beauty of the antenna of a moth, the flight feathers of a parrot, or the feeding tentacles of a jellyfish. The Science of Animals also explores how we have depicted animals in art throughout the ages, from zoological drawings that recorded new discoveries to great paintings inspired by a deep connection to the natural world. With fascinating stories, such as how animals communicate, defend their territories, and attract mates, The Science of Animalsoffers an engaging introduction to the extraordinary diversity of the animal kingdom.', NULL, 315, 1, NULL, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(450, 'Knowledge Encyclopedia', 'Knowledge-Encyclopedia', 'http://books.google.com/books/content?id=0aTCswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0aTCswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241287316', 'Incredibly detailed cross-sections and cutaways reveal the inner workings of everything - from galaxies and stars to Earth and the human body. Look inside an Apollo spacecraft, a volcano, or the body of a Tyrannosaurus Rex. Find out what happened after the Big Bang, how trench warfare worked, and the science behind a fireworks display. This fully updated edition of Knowledge Encyclopedia is the perfect reference book for inquisitive minds of all ages, covering space, Earth, nature, human body, science, and history. Packed with fascinating statistics, maps, timelines, graphics, and superb photorealistic cross-sections, this family encyclopedia makes the most complex subjects easy to understand.', NULL, 299, 1, NULL, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(451, 'Incredible Jobs You\'ve (probably) Never Heard Of', 'Incredible-Jobs-You\'ve-(probably)-Never-Heard-Of', 'http://books.google.com/books/content?id=akSEyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=akSEyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788004770', 'Discover all kinds of weird and wonderful jobs you never knew existed in this incredible large-format picture book debut.', NULL, 316, 1, NULL, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(452, 'Help Your Kids with English', 'Help-Your-Kids-with-English', 'http://books.google.com/books/content?id=igmtMQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=igmtMQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409314943', 'A simple, visual guide to helping children understand English from Carol VordermanReduce the stress of studying English and help your child with their homework by following Help Your Kids with English, a unique visual guide that demystifies the subject for everyone. Carol Vorderman uses clear, accessible pictures, diagrams and easy-to-follow step-by-steps to cover all the important areas including punctuation, grammar, spelling, and communication skills, so you can approach even the most complex English concepts with confidence. Includes cross-references throughout to show links between language ideas and a glossary of key terms. Help Your Kids with Englishis the perfect guide for every frustrated parent and desperate child, who wants to understand English and put what they\'ve learnt into practice', NULL, 317, 1, NULL, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(453, 'The Louise Parker Method: The 6-Week Programme', 'The-Louise-Parker-Method:-The-6-Week-Programme', 'http://books.google.com/books/content?id=bgJktgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bgJktgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781784725372', 'Kickstart your weight-loss potential and change your habits for life with this guided plan from Louise Parker. \'Louise is the only one out there I trust\' - Emma Thompson This book is for anyone truly wanting to change the way they live, reclaim their health and in doing so discover a body that\'s lean, strong and sustained with ease. It\'s about being the best version of yourself, being confident and happy in your skin and absolutely loving the way you live. I\'m about to guide you through the first six weeks of a lifestyle overhaul, where you make yourself a priority and where your new habits will set you free. - Louise Parker, bestselling author of The Louise Parker Method and Lean for Life: The Cookbook Louise Parker\'s 6-Week Programme is a guided, motivational programme for transforming your body and enjoying the results for life. Week by week, you\'ll follow each of the four pillars of Louise\'s Method: eat beautifully, live well, think successfully and work out intelligently. You\'ll experience a complete mind-body reset and focus on acquiring the habits key to long-term success.', NULL, 318, 1, NULL, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(454, 'Stories for Boys Who Dare to Be Different', 'Stories-for-Boys-Who-Dare-to-Be-Different', 'http://books.google.com/books/content?id=IZ6ptAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=IZ6ptAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781787471986', 'Daniel Radcliffe, Galileo Galilei, Nelson Mandela, Louis Armstrong, Grayson Perry, Louis Braille, Lionel Messi, King George VI, Jamie Oliver... all dared to be different. \'This book can save lives. This book can change lives. This book can help to bring forth another generation of boys who dare to be different.\' Benjamin Zephaniah Prince charming, dragon slayer, mischievous prankster... More often than not, these are the role-models boys encounter in the books they read at home and at school. As a boy, there is an assumption that you will conform to a stereotypical idea of masculinity. But what if you\'re the introvert kind? What if you prefer to pick up a book rather than a sword? What if you want to cry when you\'re feeling sad or angry? What if you like the idea of wearing a dress? There is an ongoing crisis with regards to young men and mental health, with unhelpful gender stereotypes contributing to this malaise. Stories for Boys Who Dare to Be Different offers a welcome alternative narrative. It is an extraordinary compilation of 100 stories of famous and not-so-famous men from the past to the present day, every single one of them a rule-breaker and innovator in his own way, and all going on to achieve amazing things. Entries include Frank Ocean, Salvador Dalí, Rimbaud, Beethoven, Barack Obama, Stormzy, Ai Weiwei and Jesse Owens - different sorts of heroes from all walks of life and from all over the world. A beautiful and transporting book packed with stories of adventure and wonderment, it will appeal to those who need the courage to reject peer pressure and go against the grain. It is the must-have book for all those boys who worry about stuff and all those parents who worry about their boys who worry about stuff. It will educate and entertain, while also encourage and inspire.', NULL, 319, 1, NULL, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(455, 'The Minecraft Earth Essential Guide', 'The-Minecraft-Earth-Essential-Guide', 'http://books.google.com/books/content?id=NSHKywEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=NSHKywEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781783125401', 'A guide to Minecraft Earth - the first original Minecraft phone game - including top tips and a gallery of Minecraft makes from around the world.', NULL, 320, 1, NULL, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(456, 'Futureworld', 'Futureworld', 'http://books.google.com/books/content?id=cJjunQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cJjunQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781780973227', 'This fascinating book reveals the technology that\'s in prototype today, and will be commonplace tomorrow. Whether it\'s flying cars, space tourism, nanobots or airships, every page reveals an exciting and totally real vision of a future that is almost within our grasp.', NULL, 321, 1, NULL, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(457, 'Volcano', 'Volcano', 'http://books.google.com/books/content?id=tlEmyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tlEmyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781405308618', 'Your adventure starts here! Experience the Earth�s awesome power in Volcano. Come on an incredible visual journey from the molten core through a magma chamber to fiery rivers of lava. Witness a violent eruption as fantastic digital images show you a volcano as you�ve never seen it before. Follow an astonishing story with first-hand accounts, incredible facts and action-packed scenes. Read the story from start to finish or just dip in and out when you feel like it. Brilliant for homework and school projects or just for fun. Plus, each book comes with a gigantic, 1.8m free pull-out poster!', NULL, 322, 1, NULL, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(458, 'Conspiracy Theories', 'Conspiracy-Theories', '', '', '9781786707604', '', NULL, NULL, 1, NULL, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(459, 'Planets', 'Planets', 'http://books.google.com/books/content?id=xNYuswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=xNYuswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007488841', 'Jupiter: The Ruthless One - Mars: The Doomed One - Sun: The Fiery One - Saturn: The Beautiful One - Pluto: The Mysterious One Professor Brian Cox is back with another insightful and mind-blowing exploration of space. This time he shows us our solar system as we\'ve never seen it before. We\'re living through an extraordinary time of exploration. A ﬂeet of space probes are continually beaming data back to Earth. Hidden in this stream of code are startling new discoveries about the worlds we share with the Sun. We will piece together these remarkable ﬁndings to tell the greatest science story of them all - the life and times of the Solar System. What emerges is a dramatic tale of planetary siblings. Born from violence, they grow up together, in time becoming living, breathing worlds, only to fade away one by one as they age. Along the way we will meet all eight of the major planets, plus a supporting cast of moons, asteroids and comets, and a mysterious as yet unseen world way out beyond the Kuiper belt.', NULL, 323, 1, NULL, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(460, 'Top Golf Courses of the World', 'Top-Golf-Courses-of-the-World', 'http://books.google.com/books/content?id=gRQaBAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gRQaBAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781845379018', 'This fully updated and revised book celebrates 55 of the world’s great golf courses, with the authoritative text drawing on Gary Player\'s first-hand knowledge of each of the courses and his standing as a course designer. For five decades, golf superstar Gary Player - winner of 9 Majors, and himself a golf-course designer of repute - has been playing the world\'s top courses. His selection here includes ancient British links crafted by nature, such as St Andrews, Muirfield, Carnoustie and Royal Lytham; landmark courses created between the wars during the Golden Age of golf course design, such as Augusta (host to the Masters), Cypress Point, Pine Valley and Wentworth; and examples from around the world of the work of top postwar designers who have used classic features with their own signatures. Each golf course is described in terms of its history and its main architectural features, and is accompanied by superb photography. Player\'s first-hand experience of the challenges posed by each course and his appreciation of the history of golf-course design underpin this sumptuous book.', NULL, 324, 1, NULL, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(461, '64 Geeks', '64-Geeks', 'http://books.google.com/books/content?id=4OfYswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4OfYswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781781575727', 'See the greatest minds in history like never before; rendered in the greatest way imaginable: 8-bit pixel art! This book celebrates the 64 Best. Brains. Ever; the geeks who each played an essential part in taking humanity from mud huts to the world we live in today. Discover more than you knew about geniuses like Galileo, compelling characters like Ada Lovelace or Nikola Tesla, or be enchanted by heroes of the modern age like super-geek like Steve Wozniak. The one thing they all have in common? They changed the world with their minds. A fun way to look at the people who have shaped are would, but not always sought the limelight (did you know that Steve Wozniak - not Steve Jobs - created the Apple Computer, and that \"Woz\" as he is known, enjoys a game of Segway Polo?) Find out which inventor is most responsible for every electric device in modern homes, but died in penury after obsessing over the creation of a \"death beam\", or how Archimedes greeted his killer. The custom-drawn illustrations make turning every page a treat, and the snappy biographies are fascinating.', NULL, 325, 1, NULL, '2021-02-28 19:52:03', '2021-02-28 19:52:03');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(462, 'Ripley\'s Believe It Or Not! 2019', 'Ripley\'s-Believe-It-Or-Not!-2019', 'http://books.google.com/books/content?id=MvShtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=MvShtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781847948335', 'Ripley\'s is back with another compendium of mind-boggling facts that will delight anyone drawn to the weirder side of life on Earth. Read about the scariest, grossest and funniest stories from around the world, including: EEK! The huge spider that spins webs that are stronger than steel. WOW! The woman who can smash 920 roof tiles every minute - with her bare hands. YUCK! The Japanese crab that grows as much as six metres long. . . . and much, much more. Crammed with incredible photos and fascinating stories, and complete with an out-of-this-world 3D-effect cover, Ripley\'s Believe It or Not! 2019 is the perfect Christmas gift for kids who are fascinated by the disgusting, the scary and the peculiar.', NULL, 326, 1, NULL, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(463, 'The Stars', 'The-Stars', '', '', '9780241295465', '', NULL, 327, 1, NULL, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(464, 'The Secret Life of Genes', 'The-Secret-Life-of-Genes', 'http://books.google.com/books/content?id=Cg4ougEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Cg4ougEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788400251', 'Genes have a huge impact on who we are, from defining us as humans, to governing how we behave. Whether controlling our cells or creating new forms of life, discover how DNA makes each of us unique. In The Secret Life of Genes, you\'ll learn all about the past, present and future of the human genome. Filled with colourful, graphic illustrations to help you to understand the world of genetics, from the basics to the most complex theories, this book brings the inner workings of the human body to life. Derek Harvey answers the biggest questions, from the nature of inheritance, evolution and reproduction, to how genes are arranged and how DNA is read. Take a trip through the history of the world\'s DNA and unlock the future of the field.', NULL, 328, 1, NULL, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(465, 'Flora', 'Flora', 'http://books.google.com/books/content?id=fz__swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=fz__swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241254806', 'Discover the extraordinary world of flowers, trees, and foliage plants in this beautiful celebration of the plant kingdom. Perfect for plant lovers, gardeners, and naturalists, the exquisite images on every page unearth a wealth of floral delight. Whether it\'s tiny mosses, delicate ferns, vibrant wildflowers, or stately palms, Flora invites you to explore our amazing planet, from root to leaf tip. Captivating photos, crystal-clear artworks, and four sumptuous prints featuring stunning plants entice you to delve in and uncover the plant world\'s best-kept secrets. If you have ever wondered about the mechanics of photosynthesis, why leaves change colour, how cacti store water, or how seeds know when to grow, Flora has all the answers. Made in collaboration with scientific experts at the world-famous Royal Botanic Gardens in Kew, London, Flora is a fresh and engaging introduction to the mysterious inner workings of plants from across the globe. Accessible to everyone, the book\'s combination of concise information, eye-catching images, and explanatory artworks will delight gardeners and botanists, ecologists and naturalists, photographers and artists, as well as all who care about the natural world.', NULL, NULL, 1, NULL, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(466, 'Asia', 'Asia', 'http://books.google.com/books/content?id=UAPQDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=UAPQDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781474715997', 'Take a new look at Asia, through Maths! Have you got the mathematical stamina to complete the most adventurous calculations that Asia can throw at you? Work out everything from the total area of Japan including land and water, to how long it would take to ride the entire Trans-Siberian Railway. This unique book teaches key skills in mathematics whilst learning about Asia on the way.', NULL, 329, 1, NULL, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(467, 'South America', 'South-America', 'http://books.google.com/books/content?id=CQTQDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=CQTQDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781474716031', 'Take a new look at South America, through Maths! Have you got the mathematical stamina to complete the most adventurous calculations that South America can throw at you? You can work out everything from the percentage of the Amazon rainforest in Venezuela, Ecuador, Bolivia, Guyana, Suriname, and French Guiana, to how long it would take you to travel from Easter Island to Chile, if you journeyed at a given fixed speed. This unique book teaches key skills in mathematics whilst learning about South America on the way.', NULL, 329, 1, NULL, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(468, 'Australia', 'Australia', 'http://books.google.com/books/content?id=mgPQDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=mgPQDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781474716000', '', NULL, 329, 1, NULL, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(469, 'Africa', 'Africa', 'http://books.google.com/books/content?id=dQPQDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=dQPQDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781474715980', '', NULL, 329, 1, NULL, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(470, 'Physics Activity Book', 'Physics-Activity-Book', 'http://books.google.com/books/content?id=CKzJswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=CKzJswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781911509202', '', NULL, 330, 1, NULL, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(471, 'Engineering Activity Book', 'Engineering-Activity-Book', 'http://books.google.com/books/content?id=gFaTDAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gFaTDAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781909767928', '', NULL, 330, 1, NULL, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(472, 'Multiples with Meerkats [The Book People]', 'Multiples-with-Meerkats-[The-Book-People]', '', '', '9781474764520', '', NULL, 331, 1, NULL, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(473, 'Frog', 'Frog', 'http://books.google.com/books/content?id=c5RLGwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=c5RLGwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781912171668', 'Here children can explore some of the most interesting and important life cycles in the animal kingdom. With engaging language and an innovative use of design, this series makes the science behind life cycles accessible to reluctant and confident readers alike.', NULL, 332, 1, NULL, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(474, 'Honey Bee', 'Honey-Bee', 'http://books.google.com/books/content?id=UxdFuwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=UxdFuwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781912171675', 'Here children can explore some of the most interesting and important life cycles in the animal kingdom. With engaging language and an innovative use of design, this series makes the science behind life cycles accessible to reluctant and confident readers alike.', NULL, 332, 1, NULL, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(475, 'Butterfly', 'Butterfly', 'http://books.google.com/books/content?id=SzdTuwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SzdTuwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781912171651', 'Here children can explore some of the most interesting and important life cycles in the animal kingdom. With engaging language and an innovative use of design, this series makes the science behind life cycles accessible to reluctant and confident readers alike.', NULL, 332, 1, NULL, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(476, 'Wild Flowers to Colour', 'Wild-Flowers-to-Colour', 'http://books.google.com/books/content?id=5oz-nQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=5oz-nQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409564980', 'Each double-page spread includes a sophisticated, watercolour illustration of a different variety of wild flower, plus a black line drawing of the same image. Copy the colours used in the painting or create your own version. Also includes simple facts about the flowers, as well as hints and tips on how to colour the pictures using different media. A very stylish colouring book, perfect for budding artists of all ages. The wild flowers included are species from around the world.', NULL, 333, 1, NULL, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(477, 'Strange Bugs', 'Strange-Bugs', 'http://books.google.com/books/content?id=I1cPmgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=I1cPmgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781782090984', 'Discover some of the weirdest insects on Earth through jaw-dropping facts and dramatic photos.', NULL, 334, 1, NULL, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(478, 'When Penguins Cross the Ice [The Book People]', 'When-Penguins-Cross-the-Ice-[The-Book-People]', '', '', '9781474764674', '', NULL, 335, 1, NULL, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(479, 'Engineer Academy', 'Engineer-Academy', 'http://books.google.com/books/content?id=6BdKvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6BdKvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781782404460', 'There are so many different types of engineer you could be, whether you\'d love to work with jet engines, robots, racing cars, or even space stations! What\'s it really like, and do you have what it takes?', NULL, 336, 1, NULL, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(480, 'Pilot Academy', 'Pilot-Academy', 'http://books.google.com/books/content?id=COKitAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=COKitAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781782405238', 'A fun activity book filled with practical projects and extras including stickers, a pullout poster, a game and a press out model that make it a must for young airplane enthusiasts.', NULL, 336, 1, NULL, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(481, 'The River Book', 'The-River-Book', 'http://books.google.com/books/content?id=R3wCYAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=R3wCYAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408158661', 'The River Book is targeted at people who enjoy being outdoors and want to get the most out of their time spent by the water. It shows them all the things they can do to make the most of local rivers and streams and places where they can venture further afield for a fun, relaxing or exhilarating day out. It includes lots of information on great rivers to visit and suggestions for rivers that are especially good for carrying out the activities suggested in the book. It combines fascinating facts about rivers and the plants and animals that live nearby with activities for children and adults. There is also a journal element that focuses on special times or sightings at particular rivers. Targeted at the 30 million plus people who enjoy rivers annually, it can be enjoyed equally by armchair enthusiasts.', NULL, 337, 1, NULL, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(482, 'The Official Manchester City Annual 2019', 'The-Official-Manchester-City-Annual-2019', 'http://books.google.com/books/content?id=wMOwtQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=wMOwtQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781912595136', 'The Official Manchester City Soccer Annual 2019 is the perfect gift for any City fan. Packed with facts, stats, player profiles of all the first team squad, The Big City Quiz, picture puzzles, word searches and a crossword to solve, plus pen pics of all the summer signings and much more! IMAGE OF 2018 ANNUAL FOR ILLUSTRATIVE PURPOSES', NULL, 338, 1, NULL, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(483, 'Morelabradorable', 'Morelabradorable', 'http://books.google.com/books/content?id=BC71vQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BC71vQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781782494478', 'Join Barnaby the labrador and Villager Jim as they meet their animal friends Join Barnaby as he meets up with his animal friends, at home and in the countryside surrounding his beautiful home in the north of England. First there are Dilly and Bumble, his labrador â€œsistersâ€ , then thereâ€™s Bobbin the Robin who visits the bird table every day. The friendly donkeys he meets on his walk are always interested in what he has to say, but the deer steer clear of him, even though heâ€™s on the leash. The Highland cows that belong to dadâ€™s friend are just a little bit scaryâ€”those long horns, all that hairâ€”but the chickens are always up for a game of â€œchase meâ€ .', NULL, 339, 1, NULL, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(484, 'Millie Marotta\'s Animal Kingdom', 'Millie-Marotta\'s-Animal-Kingdom', 'http://books.google.com/books/content?id=OYzEoAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=OYzEoAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781849941679', 'International Sensation and Sunday Times Bestseller Millie Marotta is a hugely popular illustrator and her idiosyncratic drawings of the world\'s wonderful creatures will draw you in. Millie\'s Animal Kingdom offers a range of beautiful illustration to colour in, personalise and make your own. The artist\'s intricate style of illustration will get you itching for a pen, whether it\'s to add to the fine line hatching on the birds, the flowing tendrils of a jellyfish, or the composite of flowers that make up a grizzly bear. The work will inspire you to appreciate the detail of line drawing and its huge potential. You can colour her work or add your own line drawings to make it special to you. Add your own patterns to the lively forest scene, choose your own birds to add to the branches, or make a pattern with your colour choices. Each picture offers scope to improve your artistic skills while giving you a finished picture to show for your endeavours. The images and imaginative scenarios can be completed in colours of your choosing and are guaranteed to get your creative juices flowing.', NULL, 340, 1, NULL, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(485, 'Iexplore Earth', 'Iexplore-Earth', 'http://books.google.com/books/content?id=1y6btgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=1y6btgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781780656007', '', NULL, 341, 1, NULL, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(486, 'Iexplore Extreme Animals', 'Iexplore-Extreme-Animals', 'http://books.google.com/books/content?id=VcZ6tgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=VcZ6tgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781780656014', '', NULL, 341, 1, NULL, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(487, 'Slithering Snakes', 'Slithering-Snakes', 'http://books.google.com/books/content?id=UnQ2QwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=UnQ2QwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848794023', 'This title is part of a series of early learning reading books for young children. With bright, photographic images, simple rhyming text, a quiz, dictionary and key words page, this book is perfect for engaging and developing confidence in young children learning to read.', NULL, 341, 1, NULL, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(488, 'Lord Loss', 'Lord-Loss', 'http://books.google.com/books/content?id=efIufDZth2cC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=efIufDZth2cC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007193202', 'The first book in the Demonata, the demonic symphony in ten parts by multimillion-copy bestselling horror writer Darren Shan… When Grubbs Grady first encounters Lord Loss and his evil minions, he learns three things: the world is vicious, magic is possible, demons are real. He thinks that he will never again witness such a terrible night of death and darkness.…He is wrong.', NULL, 342, 1, 5, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(489, 'Demon Thief', 'Demon-Thief', 'http://books.google.com/books/content?id=TqMHb6U0C68C&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TqMHb6U0C68C&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007193233', 'A hellish nightmare for only the bravest of readers… Darren Shan’s horrifying series, The Demonata, continues with Demon Thief. When Kernel Fleck\'s brother is stolen by demons, he must enter their universe in search of him. It is a place of magic, chaos and incredible danger. Kernel has three aims: learn to use magic, find his brother, stay alive. But a heartless demon awaits him, and death has been foretold…', NULL, 342, 1, 5, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(490, 'Slawter', 'Slawter', 'http://books.google.com/books/content?id=zRCISxY0oDwC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zRCISxY0oDwC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007231386', 'While on a horror movie set with his Uncle Dervish, Grubbs Grady realizes that his battle with the evil demon master Lord Loss may be about to resume.', NULL, 342, 1, 5, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(491, 'Bec', 'Bec', 'http://books.google.com/books/content?id=3x5K75_lPc0C&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3x5K75_lPc0C&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007231393', 'As the demonic Fomorii ravage their land, Bec and her warrior companions leave the devastated area not only to answer a call for help but also to find information that will enable Bec to unlock the secrets of her past.', NULL, 342, 1, 5, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(492, 'Blood Beast', 'Blood-Beast', 'http://books.google.com/books/content?id=yLEDHkusTJQC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=yLEDHkusTJQC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007231409', 'When he begins to experience alarming symptoms at the onset of the full moon, Grubbs Grady fears that he won\'t be able to fight off the beast he has inside.', NULL, 342, 1, 5, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(493, 'Demon Apocalypse', 'Demon-Apocalypse', 'http://books.google.com/books/content?id=PHg_A1mYfOEC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PHg_A1mYfOEC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007231416', 'Fire! It\'s all around me, fierce, intense, out of control. I feel the hair on my arms singe and know I have only seconds before I burst into flames. Total panic. There\'s a horrible shrieking sound, piercing and destructive. My eardrums and eyeballs should burst. \"It\'s hell!\" I moan.,*One boy\'s life ripped to shreds before his eyes...,*One wrathful demon master hellbent on revenge...,*An army of grisly Demonata on the rampage...It\'s the end of the world as we know it.', NULL, 342, 1, 5, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(494, 'Dark Calling', 'Dark-Calling', 'http://books.google.com/books/content?id=u78glV8RPCwC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=u78glV8RPCwC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007260454', 'Events take an unexpected turn in this ninth awesome foray into the worlds of the Demonata... The Disciples are being manipulated by beings older than time. Only Kernel Fleck knows that something is wrong. But he is in the grip of a creature who cares nothing for the fate of humanity. Voices are calling to him from the darkness and he\'s powerless to resist. Kernel has already been to hell and back. Now he\'s about to go further...', NULL, 342, 1, 5, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(495, 'Hell\'s Heroes', 'Hell\'s-Heroes', 'http://books.google.com/books/content?id=ujfQK2PvUrUC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ujfQK2PvUrUC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780007260362', 'Events take an unexpected turn in this ninth awesome foray into the worlds of the Demonata... The Disciples are being manipulated by beings older than time. Only Kernel Fleck knows that something is wrong. But he is in the grip of a creature who cares nothing for the fate of humanity. Voices are calling to him from the darkness and he\'s powerless to resist. Kernel has already been to hell and back. Now he\'s about to go further...', NULL, 342, 1, 5, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(496, 'The Hitchhiker\'s Guide to the Galaxy', 'The-Hitchhiker\'s-Guide-to-the-Galaxy', 'http://books.google.com/books/content?id=S062QgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=S062QgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780330491198', 'Adams\'s beloved and enduring sci-fi/comedy classic is now available in this beautiful, clothbound, elegantly presented book, filled with never-before-published material, original scripts from the BBC radio series, and much more to please any fan.', NULL, 343, 1, 5, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(497, 'Amulet', 'Amulet', '', '', '9780439846813', '', NULL, NULL, 1, 5, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(498, 'Amulet', 'Amulet-9780439846837', '', '', '9780439846837', '', NULL, NULL, 1, 5, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(499, 'Amulet', 'Amulet-9780545208857', 'http://books.google.com/books/content?id=0JETyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0JETyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545208857', 'A latest entry in the best-selling series finds Emily, Navin and the gang traveling by airship in search of the mythical cloud city of Cielis, a quest that is joined by the dubiously trustworthy son of the Elf King. Original.', NULL, 344, 1, 5, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(500, 'The Last Council', 'The-Last-Council', 'http://books.google.com/books/content?id=4TmEUQXPwa8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=4TmEUQXPwa8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9780545208871', 'After chasing the monster that kidnapped their mother, Emily and Navin find themselves in a magical world of man-eating demons and shadowy enemies, where they must learn to control an amulet given to them by their grandfather.', NULL, 344, 1, 5, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(501, 'Prince of the Elves', 'Prince-of-the-Elves', '', '', '9780545208895', 'After chasing the monster that kidnapped their mother, Emily and Navin find themselves in a magical world of man-eating demons and shadowy enemies, where they must learn to control an amulet given to them by their grandfather.', NULL, 344, 1, 5, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(502, 'Escape from Lucien', 'Escape-from-Lucien', 'http://books.google.com/books/content?id=3dXnnQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3dXnnQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545433150', 'Navin journeys to the city of Lucien where he searches for a beacon essential to his fight against the Elf King; while Emily heads back into the Void with Max, one of the Elf King\'s followers, where she learns his darkest secrets.', NULL, 344, 1, 5, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(503, 'Firelight (Amulet #7)', 'Firelight-(Amulet-#7)', 'http://books.google.com/books/content?id=vbQLswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vbQLswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545433167', 'The unforgettable seventh installment of Kazu Kibuishi\'s #1 New York Times bestselling series! Emily, Trellis, and Vigo visit Algos Island, where they can access and enter lost memories. They\'re hoping to uncover the events of Trellis\'s mysterious childhood--knowledge they can use against the Elf King. What they discover is a dark secret that changes everything. Meanwhile, the Voice of Emily\'s Amulet is getting stronger, and threatens to overtake her completely.', NULL, 344, 1, 5, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(504, 'Supernova', 'Supernova', 'http://books.google.com/books/content?id=_L1tswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_L1tswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545828604', 'Kazu Kibuishi\'s thrilling #1 New York Times bestselling series continues!', NULL, 344, 1, 5, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(505, 'Captain Underpants and the Tyrannical Retaliation of the Turbo Toilet 2000', 'Captain-Underpants-and-the-Tyrannical-Retaliation-of-the-Turbo-Toilet-2000', 'http://books.google.com/books/content?id=B5fSngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=B5fSngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545504904', 'The monstrous Turbo Toilet 2000 is determined to take revenge on George, Harold, and Captain Underpants.', NULL, 345, 1, 5, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(506, 'Captain Underpants and the Sensational Saga of Sir Stinks-A-Lot (Captain Underpants #12)', 'Captain-Underpants-and-the-Sensational-Saga-of-Sir-Stinks-A-Lot-(Captain-Underpants-#12)', 'http://books.google.com/books/content?id=aKT7rQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=aKT7rQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545504928', 'George and Harold and their doubles, Yesterday George and Yesterday Harold, have been taking turns going to school, but when the doubles fall prey to their gym teacher, Mr. Meaner, and his method of mind control that turns students into attentive, obedient, perfect children, it is up to original George and Harold to strike back.', NULL, 345, 1, 5, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(507, 'The Ballad of Songbirds and Snakes (a Hunger Games Novel)', 'The-Ballad-of-Songbirds-and-Snakes-(a-Hunger-Games-Novel)', 'http://books.google.com/books/content?id=j9xTxwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=j9xTxwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338635171', 'Untitled Panem Novel will revisit the world of Panem sixty-four years before the events of The Hunger Games, starting on the morning of the reaping of the Tenth Hunger Games.', NULL, 346, 1, 5, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(508, 'Claudia and Mean Janine: Full Color Edition (the Baby-Sitters Club Graphix #4)', 'Claudia-and-Mean-Janine:-Full-Color-Edition-(the-Baby-Sitters-Club-Graphix-#4)', 'http://books.google.com/books/content?id=SpZErgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SpZErgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545886222', 'Claudia and her sister, Janine, may as well be from two different planets. Claudia, who pays more attention to her artwork and The Baby-sitters Club than her homework, feels like she can\'t compete with her perfect sister. Janine studies nonstop, gets straight As, and even takes college-level courses! But when something unexpected happens to the most beloved person in their family, will the sisters be able to put aside their differences? Raina Telgemeier, using the signature style featured in her acclaimed graphic novels Smile and Sisters, perfectly captures all the drama and charm of the original novel!', NULL, 347, 1, 5, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(509, 'The Baby-Sitters Club 3', 'The-Baby-Sitters-Club-3', 'http://books.google.com/books/content?id=gw_ZAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=gw_ZAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545886215', 'For the very first time, The Baby-sitters Club graphic novels adapted by #1 NEW YORK TIMES bestselling and Eisner Award winning creator of SMILE, Raina Telgemeier, are available in full color! Who would have guessed that when the BSC girls get in a HUGE fight, it\'s shy and quiet Mary Anne who manages to save their friendship? When a terrible fight breaks out among the four BABY-SITTERS CLUB friends, Mary Anne is left to her own devices. She has to sit by herself at lunch, make new friends, and deal with her overprotective father without advice from the BSC gang. But the worst part is when she faces a terrible baby-sitting predicament, and she can\'t find any help. Luckily, Mary Anne rises to the occasion. Not only does she handle all her problems with aplomb, she also manages to get the BSC back together again.', NULL, 348, 1, 5, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(510, 'Boy-Crazy Stacey (the Baby-Sitters Club Graphic Novel #7): A Graphix Book', 'Boy-Crazy-Stacey-(the-Baby-Sitters-Club-Graphic-Novel-#7):-A-Graphix-Book', 'http://books.google.com/books/content?id=_LP0vwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_LP0vwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338304510', 'A brand-new graphic novel adapted by USA Today bestselling author Gale Galligan! Stacey and Mary Anne are baby-sitting for the Pike family for two weeks at the New Jersey shore. Things are great in Sea City: There\'s a gorgeous house right on the beach, a boardwalk, plenty of sun and sand... and the cutest boy Stacey has ever seen! Mary Anne thinks that Stacey should leave Scott alone and focus on the Pike kids, but Stacey\'s in love. Looking for reasons to hang around his lifeguard stand takes up all of her time, which means Mary Anne has to do the job of two baby-sitters. Mary Anne doesn\'t like it one bit! How can she tell Stacey that Scott just isn\'t interested without ruining their friendship and breaking Stacey\'s heart?', NULL, 348, 1, 5, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(511, 'The Dance of the Star Fairies', 'The-Dance-of-the-Star-Fairies', 'http://books.google.com/books/content?id=Ktn6vwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Ktn6vwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338547016', 'There is a crisis in the Starlight Kingdom, one of the fantasy worlds: its stars, powered by a special kind of stardust, are fading and may soon go out forever, leaving the Kingdom in darkness--so the Thea sisters and Will Mystery set out for Brightstar Castle to discover what is wrong, but first they must overcome the obstacles and challenges that the fairies are placing in their way.', NULL, 349, 1, 5, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(512, 'The Secret of the Crystal Fairies (Thea Stilton Special Edition #7)', 'The-Secret-of-the-Crystal-Fairies-(Thea-Stilton-Special-Edition-#7)', 'http://books.google.com/books/content?id=xmlkswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=xmlkswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338268591', 'Join Thea Stilton and the Thea Sisters on an adventure packed with fantasy and friendship!', NULL, 349, 1, 5, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(513, 'The Treasure Seekers', 'The-Treasure-Seekers', 'http://books.google.com/books/content?id=4BNutgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4BNutgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338306170', 'Join the Thea Sisters on their search for the seven missing treasures.', NULL, 349, 1, 5, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(514, 'Cyber Spies and Secret Agents of Modern Times', 'Cyber-Spies-and-Secret-Agents-of-Modern-Times', 'http://books.google.com/books/content?id=9D_aDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=9D_aDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781474736213', 'Explores the lives and daring deeds of spies of moder day using photos, original sources, maps, timelines, and little known facts.', NULL, 350, 1, 5, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(515, 'The Girl Who Speaks Bear', 'The-Girl-Who-Speaks-Bear', 'http://books.google.com/books/content?id=0bbKwQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0bbKwQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474940672', '', NULL, 351, 1, 5, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(516, 'The Unicorns of Blossom Wood: Best Friends', 'The-Unicorns-of-Blossom-Wood:-Best-Friends', 'http://books.google.com/books/content?id=Z1KkDAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Z1KkDAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407171258', 'An exciting new animal series set in the magical Blossom Wood. Lei, Isabelle and Cora are back in Blossom Wood for another adventure. Their friend Loulou the squirrel is organizing a talent show for all the animals. The three cousins can\'t wait to help, but what\'s the matter with Loulou? Can the Unicorns of Blossom Wood use their special powers to make Loulou happy again?', NULL, 352, 1, 5, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(517, 'Unicorns of Blossom Wood - Festival Time', 'Unicorns-of-Blossom-Wood---Festival-Time', 'http://books.google.com/books/content?id=xqycjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=xqycjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407171234', 'An exciting new animal series set in the magical Blossom Wood. Isabelle, Lei and Cora are back in Blossom Wood - just in time for a magical festival. All of the animals are there, except for one. Lizzie the bunny is lost in Echo Mountains! Can the Unicorns of Blossom Wood use their magic to find her?', NULL, 352, 1, 5, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(518, 'A Friend in Need', 'A-Friend-in-Need', 'http://books.google.com/books/content?id=zdtctAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=zdtctAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788000277', 'Alice is so excited to finally join the pony club with her gorgeous pony, Secret! Things get off to a great start when Alice is invited to super-popular Hannah\'s birthday party. But on the night of the party the snow starts to fall and a pony escapes into the night. Alice and Finn must go to the rescue but will their friendship survive the storm?', NULL, 353, 1, 5, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(519, 'A Ride to Freedom', 'A-Ride-to-Freedom', 'http://books.google.com/books/content?id=USFStgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=USFStgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788000437', 'It\'s summer time and Alice and Secret are going on a Pony Club trip to France. Alice is over the moon to be show-jumping at an international festival! She soon makes new friends, including the gorgeous Seb. But when Finn gets into trouble, Alice has to work out who her real friends are, and prove just how far she and Secret have come together.', NULL, 353, 1, 5, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(520, 'Buried Secrets', 'Buried-Secrets', 'http://books.google.com/books/content?id=cobZvAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cobZvAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338348590', 'Don\'t miss the thrilling finale to the Hello Neighbor prequel trilogy, based on the hit video game from tinyBuild! Nicky Roth should be happy--he\'s finally proven that his best friend, Aaron, and Aaron\'s younger sister, Mya, are missing. Better yet, the police are actually doing something: they\'ve plastered the town with missing posters, and have organized weekend search parties for the kids. But Nicky can\'t seem to pry his eyes from the house across the street, especially after he sees a frantic SOS coming from Aaron\'s room in the Peterson house. After what happened in the winter, and the warnings they got from their parents, Nicky\'s friends insist they can\'t help him investigate his neighbor anymore. If Nicky wants to find out what\'s going on in the Peterson house, he\'s going to have to do it alone. Don\'t miss the electrifying conclusion to the Hello Neighbor official prequel trilogy, which includes two-color illustrations throughout to help readers unwind the mystery at the heart of the game.', NULL, 354, 1, 5, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(521, 'Waking Nightmare (Hello Neighbor #2)', 'Waking-Nightmare-(Hello-Neighbor-#2)', 'http://books.google.com/books/content?id=PvmgswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PvmgswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338289091', 'Don\'t miss this pulse-pounding original story, the sequel to Hello Neighbor: Missing Pieces, based on the hit video game from tinyBuild!', NULL, 354, 1, 5, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(522, 'Bad Blood', 'Bad-Blood', 'http://books.google.com/books/content?id=o1yfwwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=o1yfwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338594287', 'A prequel to the video game Hello neighbor.', NULL, 354, 1, 5, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(523, 'Bunny Call (Five Nights at Freddy\'s: Fazbear Frights #5), Volume 5', 'Bunny-Call-(Five-Nights-at-Freddy\'s:-Fazbear-Frights-#5),-Volume-5', 'http://books.google.com/books/content?id=uCJrzQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=uCJrzQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338576047', '', NULL, 355, 1, 5, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(524, 'Step Closer (Five Nights at Freddy\'s: Fazbear Frights #4)', 'Step-Closer-(Five-Nights-at-Freddy\'s:-Fazbear-Frights-#4)', 'http://books.google.com/books/content?id=_XIgyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_XIgyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338576054', 'Five Nights at Freddy\'s fans won\'t want to miss this pulse-pounding collection of three novella-length tales that will keep even the bravest FNAF player up at night... From twisted toys to gut-wrenching games, this collection of terrifying tales is unsettling enough to mess with even the most hardened Five Nights at Freddy\'s fans. In this volume, horror master Scott Cawthon spins three sinister novella-length stories from different corners of FNAF\'s canon. Each story comes complete with accompanying artwork from a fan-favorite game artist to bring the horror to life in a whole new way. Readers beware: In this startling world, desperate wishes have an unexpected cost, beautiful trinkets reveal appalling powers, and harmless pranks can go awry in ghastly ways.', NULL, 355, 1, 5, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(525, '1:35AM (Five Nights at Freddy\'s: Fazbear Frights #3)', '1:35AM-(Five-Nights-at-Freddy\'s:-Fazbear-Frights-#3)', 'http://books.google.com/books/content?id=BwTxxwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BwTxxwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338576030', 'Five Nights at Freddy\'s fans won\'t want to miss this pulse-pounding collection of three novella-length tales that will keep even the bravest FNAF player up at night... For Delilah, Stanley, and Devon, being left behind is practically a way of life. Orphaned from a young age and recently divorced, Delilah escapes deeper into her dreams each night, in desperate need of a wake-up call. Stanley is newly dumped, stuck in a dead-end job for a mysterious employer, and unable to connect with anyone. And Devon, abandoned by his dad and ignored by his mom, can\'t understand why love and friendship come so easily to everyone except him. Unfortunately, in the callous world of Five Nights at Freddy\'s, it\'s always in the depths of loneliness when evil creeps in. In this third volume, Five Nights at Freddy\'s creator Scott Cawthon spins three sinister novella-length stories from different corners of his series\' canon, featuring cover art from fan-favorite artist LadyFiszi. Readers beware: This collection of terrifying tales is enough to unsettle even the most hardened Five Nights at Freddy\'s fans.', NULL, 355, 1, 5, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(526, 'The Silver Eyes (Five Nights at Freddy\'s Graphic Novel #1)', 'The-Silver-Eyes-(Five-Nights-at-Freddy\'s-Graphic-Novel-#1)', 'http://books.google.com/books/content?id=-nNfwwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=-nNfwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338298482', 'Don\'t miss the first-ever graphic novel for Five Nights at Freddy\'s, an adaptation of the #1 New York Times bestselling novel The Silver Eyes illustrated by fan-favorite game artist Claudia Schröder! Ten years after the horrific murders at Freddy Fazbear\'s Pizza that ripped their town apart, Charlie -- whose father owned the restaurant -- and her childhood friends reunite on the anniversary of the tragedy and find themselves at the old pizza place which had been locked up and abandoned for years. After they discover a way inside, they realize that things are not as they used to be. The four adult-sized animatronic mascots that once entertained patrons have changed. They now have a dark secret... and a murderous agenda. Complete with new information and tense, terrifying illustrations, fans won\'t want to miss this graphic novel adaptation by Scott Cawthon, Kira Breed-Wrisley, and Claudia Schröder, whose stunning artwork has been featured in the games.', NULL, 355, 1, 5, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(527, 'Catching Fire', 'Catching-Fire', '', '', '9780545586177', 'By winning the Hunger Games, Katniss and Peeta have secured a life of safety and plenty for themselves and their families, but because they won by defying the rules, they unwittingly become the faces of an impending rebellion.', NULL, 346, 1, 5, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(528, 'The Wizard of Ooze', 'The-Wizard-of-Ooze', 'http://books.google.com/books/content?id=r8k2SwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=r8k2SwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407116389', 'While visiting HorrorLand\'s gift shop, Marco and his friend Gabriella find a rare edition of a comic book called THE WIZARD OF OOZE. Hidden in the back of this book are secret instructions on how to gain super powers. Marco is so excited that he starts talking about this special book at a comic convention. Big mistake. A couple of shady characters are after the comic, and will do anything to get their hands on it...', NULL, 356, 1, 5, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(529, 'Get Me Out of Here!', 'Get-Me-Out-of-Here!', 'http://books.google.com/books/content?id=c-PxoAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=c-PxoAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781784750114', 'After sixth grade, the very worst year of his life, Rafe Khatchadorian thinks he has it made in seventh grade. He\'s been accepted to art school in the big city and imagines a math-and-history-free fun zone. Wrong! It\'s more competitive than Rafe ever expected, and to score big in class, he needs to find a way to turn his boring life into the inspiration for a work of art. His method? Operation: Get a Life! Anything he\'s never done before, he\'s going to do it, from learning to play poker to going to a modern art museum. But when his newest mission uncovers secrets about the family Rafe\'s never known, he has to decide if he\'s ready to have his world turned upside down. James Patterson\'s winning follow-up to Middle School: The Worst Years of My Life is another riotous and heart-warming story about living large.', NULL, 357, 1, 5, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(530, 'Harry Potter and the Prisoner of Azkaban', 'Harry-Potter-and-the-Prisoner-of-Azkaban', 'http://books.google.com/books/content?id=tJjHBAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tJjHBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408855676', 'When the Knight Bus crashes through the darkness and screeches to a halt in front of him, it\'s the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harry\'s tea leaves . But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking kiss. These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It\'s time to PASS THE MAGIC ON .', NULL, 358, 1, 5, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(531, 'Harry Potter and the Chamber of Secrets', 'Harry-Potter-and-the-Chamber-of-Secrets', 'http://books.google.com/books/content?id=SJnHBAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SJnHBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408855669', 'Celebrate 20 years of Harry Potter magic! Harry Potter\'s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone ... Dobby\'s sinister predictions seem to be coming true.These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It\'s time to PASS THE MAGIC ON ...', NULL, 358, 1, 5, '2021-02-28 19:52:13', '2021-02-28 19:52:13');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(532, 'Harry Potter and the Philosopher\'s Stone', 'Harry-Potter-and-the-Philosopher\'s-Stone', 'http://books.google.com/books/content?id=2ZjHBAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2ZjHBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408855652', 'Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry\'s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It\'s time to PASS THE MAGIC ON .', NULL, 358, 1, 5, '2021-02-28 19:52:14', '2021-02-28 19:52:14'),
(533, 'Harry Potter and the Half-Blood Prince', 'Harry-Potter-and-the-Half-Blood-Prince', 'http://books.google.com/books/content?id=bZnHBAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bZnHBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408855706', 'Fantasy. Endnu en gang skal Harry Potter tilbage til troldmandsskolen Hogwart efter at have tilbragt nogle kedelige uger hos sin plejefamilie. Han glæder sig, men han ved heller ikke, hvilke uhyggelige oplevelser han har i vente', NULL, 358, 1, 5, '2021-02-28 19:52:14', '2021-02-28 19:52:14'),
(534, 'Crackin\' Castles', 'Crackin\'-Castles', 'http://books.google.com/books/content?id=bLUQkAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bLUQkAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407166339', 'From Tintagel Castle in Cornwall to Skibo Castle in the Scottish highlands, Horrible Histories: Crackin\' Castles covers the history of Britain from the time of the Romans to the London Blitz. Filled with adventure, danger, magic, sieges, treachery, spies, revenge and much more besides - all in the classic Horrible Histories style! It\'s a seriously horrible read.', NULL, 359, 1, 5, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(535, 'Laugh Out Loud', 'Laugh-Out-Loud', 'http://books.google.com/books/content?id=BU6KtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=BU6KtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781784758493', 'Jimmy loves reading so much that he\'s inspired to start a book company for kids - run by kids. It\'s a big dream for a twelve-year-old boy - some would even say it\'s laugh-out-loud ridiculous! But that doesn\'t stop Jimmy from dreaming even bigger! His company will be as imaginative and fun as Willy Wonka\'s chocolate factory... with a Ferris wheel instead of an elevator, a bowling alley in the break room, and a river filled with floating books! He just has to believe in himself and his idea. And maybe win the Lottery. In this hilarious story filled with clever references to children\'s book favourites, James Patterson shows young readers that anything can be achieved if you believe in yourself no matter what!', NULL, 357, 1, 5, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(536, 'Harry Potter and the Deathly Hallows', 'Harry-Potter-and-the-Deathly-Hallows', 'http://books.google.com/books/content?id=I5nHBAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=I5nHBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408855713', 'Burdened with the dark, dangerous, and seemingly impossible task of locating and destroying Voldemort\'s remaining Horcruxes, Harry, feeling alone and uncertain about his future, struggles to find the inner strength he needs to follow the path set out before him.', NULL, 358, 1, 5, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(537, 'Harry Potter and the Order of the Phoenix', 'Harry-Potter-and-the-Order-of-the-Phoenix', 'http://books.google.com/books/content?id=kpnHBAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=kpnHBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408855690', 'Celebrate 20 years of Harry Potter magic! Dark times have come to Hogwarts. After the Dementors\' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord\'s return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort\'s savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time.These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It\'s time to PASS THE MAGIC ON ...', NULL, 358, 1, 5, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(538, 'Harry Potter and the Goblet of Fire', 'Harry-Potter-and-the-Goblet-of-Fire', 'http://books.google.com/books/content?id=_pjHBAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_pjHBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408855683', 'Celebrate 20 years of Harry Potter magic! The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn\'t stop Harry dreaming that he will win the competition. Then at Hallowe\'en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It\'s time to PASS THE MAGIC ON ...', NULL, 358, 1, 5, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(539, 'Charlie Bone and the Blue Boa', 'Charlie-Bone-and-the-Blue-Boa', 'http://books.google.com/books/content?id=kBL9jwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=kBL9jwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781405280945', 'Classic magic and mystery from one of Britain\'s best-loved authors of fantasy adventure. Perfect for fans of Harry Potter, Eva Ibbotson, Cornelia Funke\'s Inkheart and Shane Hegarty\'s Darkmouth. An Academy for magic and special talents. A destiny unfulfilled. A secret legacy. The third instalment of the international best-selling series from Jenny Nimmo starring Charlie Bone. Charlie\'s Uncle Paton has dashed off to try to stop the Yewbeam aunts\' latest plan, but when Grandma Bone greets the arrival of Belle with delight, could this be what Paton left hoping to prevent? At Bloor\'s, Emma finds art teacher Mr Boldova is the brother of the mysterious Ollie Sparks, made invisible by the blue boa. Have you collected all of the Charlie Bone series? Midnight for Charlie Bone Charlie Bone and the Time Twister Charlie Bone and the Blue Boa Charlie Bone and Castle of Mirrors Charlie Bone and the Hidden King Charlie Bone and the Wilderness Wolf Charlie Bone and the Shadow of Badlock Charlie Bone and the Red Knight Also look out for The Snow Spider trilogy. \'Dark, funny, crackling with magic\' - author Artemis Cooper on Midnight for Charlie Bone \'A fast moving, dialogue driven romp with plenty of cliff-hangers for those first hooked into reading by Harry Potter\' - Bookseller on Midnight for Charlie Bone Jenny Nimmo is the acclaimed author of the Charlie Bone series. She has won several significant awards for her children\'s fiction, including the Nestle Smarties Book Prize and the Tir na n-Og Welsh Arts Council award for The Snow Spider. She lives in Wales with her husband, David.', NULL, 360, 1, 5, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(540, 'Charlie Bone and the Time Twister', 'Charlie-Bone-and-the-Time-Twister', 'http://books.google.com/books/content?id=7H8NDQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=7H8NDQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781405280938', 'Classic magic and mystery from one of Britain\'s best-loved authors of fantasy adventure. Perfect for fans of Harry Potter, Eva Ibbotson, Cornelia Funke\'s Inkheart and Shane Hegarty\'s Darkmouth. An Academy for magic and special talents. A destiny unfulfilled. A secret legacy. The second instalment of the international best-selling series from Jenny Nimmo starring Charlie Bone. January 1916. On the coldest night in memory, Henry Yewbeam\'s cousin Zeke tricks him into using the Time Twister, a beautiful marble full of shining colours that draws him into the future. And when he emerges, he meets Charlie Bone . . . Have you collected all of the Charlie Bone series? Midnight for Charlie Bone Charlie Bone and the Time Twister Charlie Bone and the Blue Boa Charlie Bone and the Castle of Mirrors Charlie Bone and the Hidden King Charlie Bone and the Wilderness Wolf Charlie Bone and the Shadow of Badlock Charlie Bone and the Red Knight Also look out for The Snow Spider trilogy. \'Dark, funny, crackling with magic\' - author Artemis Cooper on Midnight for Charlie Bone \'A fast moving, dialogue driven romp with plenty of cliff-hangers for those first hooked into reading by Harry Potter\' - Bookseller on Midnight for Charlie Bone Jenny Nimmo is the acclaimed author of the Charlie Bone series. She has won several significant awards for her children\'s fiction, including the Nestle Smarties Book Prize and the Tir na n-Og Welsh Arts Council award for The Snow Spider. She lives in Wales with her husband, David.', NULL, 360, 1, 5, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(541, 'Against the Tide', 'Against-the-Tide', 'http://books.google.com/books/content?id=iB0MngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=iB0MngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545522472', 'Conor, Abeke, Meilin and Rollan\'s perilous quest for talismans in a blue-water tropical paradise becomes more dangerous when they realize that one of their number is a traitor who has been revealing their locations to their enemies. By the best-selling author of the Menagerie trilogy. Simultaneous eBook.', NULL, 361, 1, 5, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(542, 'Blood Ties', 'Blood-Ties', 'http://books.google.com/books/content?id=MHEdnwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=MHEdnwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545522458', 'A latest entry in the role-playing series returns readers to the world of Erdas, where four youths on the brink of adulthood tap the powers of their animal familiars and embark on a dangerous mission to stop a dark force that threatens their survival.', NULL, 362, 1, 5, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(543, 'My Head Teacher Is a Vampire Rat!', 'My-Head-Teacher-Is-a-Vampire-Rat!', 'http://books.google.com/books/content?id=SEnCoQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SEnCoQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857632890', 'This tale sees Izzy and her friends plunged into more primary-school craziness. This time, they decide that their new head teacher is a vampire rat, based on his being slightly scary, having the blinds drawn in his office during the day and the fact he\'s banned garlic bread at lunchtimes. Now they just have to come up with a plan to vanquish him.', NULL, 363, 1, 5, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(544, 'H.I.V.E. (Higher Institute of Villainous Education)', 'H.I.V.E.-(Higher-Institute-of-Villainous-Education)', 'http://books.google.com/books/content?id=dQ_hFQk8H5gC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=dQ_hFQk8H5gC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781408815908', 'H.I.V.E. (Higher Institute of Villainous Education) is a top-secret school of applied villainy where children with a precocious gift for wrongdoing are sent to develop their talents into criminal mastermind. After all, \'villains have the best lines and wear the best costumes\'. One small catch is that the children cannot leave until training is complete, six years later. With villainy comes a certain freedom of thought, and every year one student in particular will show exceptional talent - after all, it takes the best to produce the worst. This year there are two students: Otto Malpense and his new friend Wing Fanchu are both exceptionally bad, and they are definitely not keen on being held against their will for six long years . . .', NULL, 364, 1, 5, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(545, 'H.I.V.E. 5: Rogue', 'H.I.V.E.-5:-Rogue', 'http://books.google.com/books/content?id=tyk54urLstcC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=tyk54urLstcC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9781408815946', 'Key members of G.L.O.V.E. are being assassinated and Otto, gone rogue, is behind the killings. Raven and Wing must find him before the order to eliminate him can be carried out . . .', NULL, 364, 1, 5, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(546, 'H.I.V.E. 4: Dreadnought', 'H.I.V.E.-4:-Dreadnought', 'http://books.google.com/books/content?id=A4YopkIihJYC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=A4YopkIihJYC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408815939', 'A renegade faction of the world\'s most powerful villains is intent on destroying G.L.O.V.E. (Global League Of Villainous Enterprises) and showing the world the true face of evil. The Disciples begin by hijacking Diabolus Darkdoom\'s Airborne command post, then they kidnap his son and his son\'s best friend. Unfortunately for them, Nigel Darkdoom (and Franz) also happen to be Otto\'s friends. Heading out to America, Otto, Wing et al embark on a perilous and highly unauthorised rescue operation. Cut off from the support of H.I.V.E. and on the run from American security forces the hunt for their friends leads to one of the US military\'s most secret facilities. It becomes clear that the Disciples are not all they appear and in a desperate race against time Otto must work out who his real friends are to prevent the Disciples from completing their true objective. Only Otto can save the world from domination by a sinister new world order but it might be that the price he has to pay is just too high. When it comes to the crunch will he be prepared to sacrifice himself?', NULL, 364, 1, 5, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(547, 'To Wee Or Not to Wee', 'To-Wee-Or-Not-to-Wee', 'http://books.google.com/books/content?id=SZCVjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SZCVjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857637727', '', NULL, 363, 1, 5, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(548, 'Help! We Have Strange Powers!', 'Help!-We-Have-Strange-Powers!', 'http://books.google.com/books/content?id=AcSjPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=AcSjPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407107707', 'Simplified Chinese edition of R L Stine\'s Welcome To HorrorLand: A Survival Guide (Goosebumps Horrorland). In Simplified Chinese. Distributed by Tsai Fong Books, Inc.', NULL, 356, 1, 5, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(549, 'The Donkey on the Sands', 'The-Donkey-on-the-Sands', 'http://books.google.com/books/content?id=kwULswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=kwULswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780753730546', 'A collection of stories by the best-selling author of the \'Famous Five\' series, Enid Blyton.', NULL, 365, 1, 5, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(550, 'The Little Witch Dog', 'The-Little-Witch-Dog', 'http://books.google.com/books/content?id=JR4MswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=JR4MswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780753730508', '', NULL, NULL, 1, 5, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(551, 'The Cat with the Feathery Tail', 'The-Cat-with-the-Feathery-Tail', 'http://books.google.com/books/content?id=yzj_rQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=yzj_rQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780753729540', 'This magical story collection will have children laughing out loud at the silly characters and cute storylines. This volume includes the stories of The Broken Gate, Sulky Susan and The Girl Who Had Hiccups. Find out what\'s going on in toyland and beyond in this lovely set of tales from Enid Blyton.', NULL, 365, 1, 5, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(552, 'The Fairy Kitten', 'The-Fairy-Kitten', 'http://books.google.com/books/content?id=M9csnwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=M9csnwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780753726426', 'A selection of short stories by Enid Blyton suitable for readers aged 5-8 years.', NULL, 365, 1, 5, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(553, 'Trapped in a Video Game (Book 2)', 'Trapped-in-a-Video-Game-(Book-2)', 'http://books.google.com/books/content?id=KFU-tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=KFU-tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781449494896', 'When Mark is sucked into the game \"Go Wild\", he becomes invisible which makes it that much harder for Jesse to find him.', NULL, 366, 1, 5, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(554, 'Catwad', 'Catwad', 'http://books.google.com/books/content?id=tlJ3tgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tlJ3tgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338326024', 'An all-new series from New York Times bestselling author, Jim Benton!', NULL, 367, 1, 5, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(555, 'Trapped in a Video Game (Book 3)', 'Trapped-in-a-Video-Game-(Book-3)', 'http://books.google.com/books/content?id=mVU1tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=mVU1tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781449495152', 'Kids who love video games will love this third installment of the new 5-book series about 12-year old Jesse Rigsby and the wild adventures he encounters inside different video games. Age Level: 8-12 Grade Level: 3rd and up The robots are here and they\'re not happy, at all. After accidentally releasing the robot villains from Super Bot World 3 into the real world, Jesse Rigsby\'s got to figure out a way to make everything right before anyone gets hurt. He\'s usually rely on his friend Eric to help him with this sort of thing, but he\'s gone missing. To find Eric, Jesse will have to survive rickety minecarts, sewer piranhas, mysterious men in suits and a 100-foot tall robot named Goliatron. This is Jesse\'s most dangerous adventure yet because this time the video game is real. And in the real world, there are no extra lives.', NULL, 366, 1, 5, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(556, 'Hunted', 'Hunted', 'http://books.google.com/books/content?id=Sz_InQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Sz_InQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545522441', 'Journeying to the forests of Eura to confront another hidden Great Beast, four young heroes whose rare spirit animal bonds have shaped their quest to save the world are shatteringly betrayed by a familiar face. By the award-winning author of The Scorpio Races.', NULL, 79, 1, 5, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(557, 'Earth-Shattering Earthquakes', 'Earth-Shattering-Earthquakes', 'http://books.google.com/books/content?id=JBS1QQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=JBS1QQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780439944571', 'It\'s Horrible Geography\'s turn to get a revamp. With a brand-new cover design, updated text and now including a horrible index, it\'s geography with even more gritty bits left in!', NULL, 368, 1, 5, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(558, 'The Incredible Incas', 'The-Incredible-Incas', 'http://books.google.com/books/content?id=DXONJwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=DXONJwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407104270', 'It\'s history with the nasty bits left in! Want to know: Why llamas wore earrings and drank beer? How a bucket of stewed pee can make you beautiful? Why servants ate the emperor\'s hair? Discover all the foul facts about the Incredible Incas - all the gore and more!', NULL, 359, 1, 5, '2021-02-28 19:52:19', '2021-02-28 19:52:19'),
(559, 'Freaky Peaks', 'Freaky-Peaks', 'http://books.google.com/books/content?id=1WsxPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=1WsxPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780439944595', 'Freaky Peaks takes the intrepid young explorer on a thrilling tour of the tallest mountains, from Everest to Kilimanjaro, encountering many dangers along the way, including glaciers, yetis and avalanches. With a brand-new cover design, text updates and an added extra-horrible index, it\'s geography with even more gritty bits left in!', NULL, 368, 1, 5, '2021-02-28 19:52:19', '2021-02-28 19:52:19'),
(560, 'Desperate Deserts', 'Desperate-Deserts', 'http://books.google.com/books/content?id=S7QbLQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=S7QbLQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780439944557', 'Where in the world can you spot sand dunes that bury whole villages? Discover some deadly desert wildlife? Follow in the footsteps of daring desert explorers? Get the earth-shattering facts in Desperate Deserts.', NULL, 368, 1, 5, '2021-02-28 19:52:19', '2021-02-28 19:52:19'),
(561, 'Gorgeous Georgians', 'Gorgeous-Georgians', 'http://books.google.com/books/content?id=f6g1jgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=f6g1jgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407163895', 'All the most horrible facts about the Gorgeous Georgians ready for readers to uncover, including their sneaky schemes for hiding personal hygiene problems and the schoolchildren who went to war with their teachers. Refreshed with a fantastic new design for 2016, these bestselling titles are sure to be a huge hit with yet another generation of Terry Deary fans.', NULL, 359, 1, 5, '2021-02-28 19:52:19', '2021-02-28 19:52:19'),
(562, 'Measly Middle Ages', 'Measly-Middle-Ages', 'http://books.google.com/books/content?id=hSIwjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=hSIwjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407163901', 'All the foul facts about the Measly Middle Ages are ready to uncover, including why chickens had their bottoms shaved, a genuine jester\'s joke and what ten-year-old treacle was used for. Refreshed with a fantastic new design for 2016, these bestselling titles are sure to be a huge hit with yet another generation of Terry Deary fans.', NULL, 359, 1, 5, '2021-02-28 19:52:20', '2021-02-28 19:52:20'),
(563, 'Welcome to Camp Slither', 'Welcome-to-Camp-Slither', 'http://books.google.com/books/content?id=8RGFPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8RGFPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781407107738', 'Twelve-year-old Boone and his sister Heather love animals of every kind. That\'s why they wanted to come to Camp Slither. The wild legends of man-eating snakes and disappearing campers are hisss-terical! But Camp Slither has a cold-blooded secret ... somebody has unleashed a hungry horde of slithery snakes! Can Boone and Heather survive long enough to accept their invitation to HorrorLand? Yesssssss! But only if they figure out why Camp Slither is crawling with trouble.', NULL, 356, 1, 5, '2021-02-28 19:52:20', '2021-02-28 19:52:20'),
(564, 'The Naughty Kitten', 'The-Naughty-Kitten', 'http://books.google.com/books/content?id=w33AvwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=w33AvwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788004657', 'Ruby Palace is no place for pets! But Princess Bea won\'t let royal rules stop her from helping animals in need... When Bea rescues a lost kitten, she promises to keep it safe until she can find its owner. But the adventurous kitten keeps getting into trouble! And when it goes exploring in the dark of night, Bea will need to be very brave... Look out for more of Princess Bea\'s adventures! The Lost Puppy The Lonely Pony The Snowy Rabbit.', NULL, 369, 1, 4, '2021-02-28 19:52:20', '2021-02-28 19:52:20'),
(565, 'Princess of Pets', 'Princess-of-Pets', 'http://books.google.com/books/content?id=uyBFvAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=uyBFvAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788004374', 'Animal-mad Princess Bea is ready to help any animal in need, no matter what the royal rules say!', NULL, 369, 1, 4, '2021-02-28 19:52:20', '2021-02-28 19:52:20'),
(566, 'The Twits', 'The-Twits', '', '', '9780141371474', '', NULL, 370, 1, 4, '2021-02-28 19:52:21', '2021-02-28 19:52:21'),
(567, 'The Witches', 'The-Witches', '', '', '9780141371481', '', NULL, 370, 1, 4, '2021-02-28 19:52:21', '2021-02-28 19:52:21'),
(568, 'Danny, the Champion of the World', 'Danny,-the-Champion-of-the-World', 'http://books.google.com/books/content?id=qnOFAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=qnOFAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141371375', 'CLASSIC FICTION (CHILDREN\'S / TEENAGE). Phizz-whizzing new branding for the world\'s No.1 storyteller, Roald Dahl! Exciting, bold and instantly recognisable with Quentin Blake\'s inimitable artwork. Danny lives in a gipsy caravan with his father, the most marvellous and exciting father any boy ever had. All the land around them belongs to Mr Victor Hazell, a rich snob with a great glistening beery face and tiny piggy eyes. Nobody likes him, not one-little bit. So one day, Danny and his father concoct a daring plot that will give the old blue-faced baboon Victor Hazell the greatest shock of his life - so long as they don\'t get caught... Ages 9+', NULL, 370, 1, 4, '2021-02-28 19:52:22', '2021-02-28 19:52:22'),
(569, 'George\'s Marvellous Medicine', 'George\'s-Marvellous-Medicine', '', '', '9780141371405', 'George decides that his grumpy, selfish old grandmother must be a witch and concocts some marvelous medicine to take care of her.', NULL, 370, 1, 4, '2021-02-28 19:52:22', '2021-02-28 19:52:22'),
(570, 'Dork Diaries: Crush Catastrophe', 'Dork-Diaries:-Crush-Catastrophe', 'http://books.google.com/books/content?id=Riz2swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Riz2swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471167775', 'Nikki Maxwell\'s adventures continue in the twelfth instalment in the bestselling DORK DIARIES series! Now with over 45 million copies in print worldwide! Nikki Maxwell and her BFFs are all counting down to the end of the school year. Nikki thinks she has her summer all figured out, with lots of fun plans to hang out with her friends and her crush, Brandon. It\'s going to be perfect! Squeee! But then a new boy turns up at school and shows an interest in Nikki and things become confusing super-quickly! The last thing Nikki wants to do is hurt Brandon...What do you do when you accidentally crush your crush!?', NULL, 371, 1, 4, '2021-02-28 19:52:23', '2021-02-28 19:52:23'),
(571, 'Dork Diaries', 'Dork-Diaries', 'http://books.google.com/books/content?id=SGfXrQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=SGfXrQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471144028', 'Nikki is finally starting to adjust to life at her new school and things are looking up. She\'s made some real friends and her major crush, Brandon, even asks her to be his lab partner in science, Hello! Seriously awesome developments! But, when Nikki overhears mean girl Mackenzie bragging that Brandon\'s going to take her to the Halloween dance, a bummed Nikki agrees to spend Halloween at a kids\' party for her little sister Brianna. It\'s only after she makes the commitment that she finds out Mackenzie was lying and that her dream of going to the party with Brandon could be a reality. Now she\'s got two parties to juggle, what\'s a girl to do?', NULL, 371, 1, 4, '2021-02-28 19:52:23', '2021-02-28 19:52:23'),
(572, 'Dork Diaries 13: Birthday Drama!', 'Dork-Diaries-13:-Birthday-Drama!', 'http://books.google.com/books/content?id=spjetgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=spjetgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471172779', 'The thirteenth instalment in the bestselling DORK DIARIES series, now with over 45 million books in print worldwide! OMG! Nikki\'s birthday party is going to be beyond awesome! Her BFFs are planning a SUPERcool pool party, with a cake, a DJ, and the perfect invitations. Organizing a big party for one hundred people is easy, right? UMMM wrong! When Mom says it\'s too expensive, soon it\'s looking like Nikki\'s dream party will be a total dorky disaster - cringe! Can Nikki and her BFFs come up with a plan to save the day, or will there be major birthday drama?!', NULL, 371, 1, 4, '2021-02-28 19:52:23', '2021-02-28 19:52:23'),
(573, 'Dork Diaries', 'Dork-Diaries-9781471144011', 'http://books.google.com/books/content?id=O-LirQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=O-LirQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471144011', 'Nikki Maxwell is not popular, in fact Nikki Maxwell is the opposite of popular; she\'s a total dork! But Nikki\'s hoping that by moving to a new school she might just stand a chance of making some friends and leaving her old lame-ways in the past. But life is never that simple! Follow Nikki\'s life through sketches, doodles and diary entries as she starts her new school, battles with her mum for an iPhone and meets her arch-nemisis, the school\'s queen bee, Mackenzie. Enter Nikki\'s world through her sketches, doodles and daydreams. Perfect for fans of Diary of a Wimpy Kid, Tom Gates and Jacqueline Wilson.', NULL, 371, 1, 4, '2021-02-28 19:52:24', '2021-02-28 19:52:24'),
(574, 'Dork Diaries', 'Dork-Diaries-9781471143830', 'http://books.google.com/books/content?id=L1jWrQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=L1jWrQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471143830', 'The Queen of the Dorks is back in a brand new instalment of the internationally bestselling series, now with 13 million copies in print worldwide! After a bump on the head, Nikki has a wild dream in which she, her BFF\'s Chloe and Zoey, her crush Brandon, and mean girl Mackenzie all end up playing the roles of some familiar classic fairy tale characters. Will Nikki\'s dream turn into a nightmare?', NULL, 371, 1, 4, '2021-02-28 19:52:24', '2021-02-28 19:52:24'),
(575, 'Dork Diaries 10: Puppy Love', 'Dork-Diaries-10:-Puppy-Love', 'http://books.google.com/books/content?id=nIIajgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=nIIajgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471144585', '', NULL, 371, 1, 4, '2021-02-28 19:52:25', '2021-02-28 19:52:25'),
(576, 'Double Dork Diaries', 'Double-Dork-Diaries', 'http://books.google.com/books/content?id=jJedAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=jJedAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471165870', 'From TV Star to the dorkiest princess around, life is anything but dull for Nikki Maxwell! This dork-tastic bind-up features TV STAR and ONCE UPON A DORK as Nikki goes from being the star of her own reality TV show to living out a fairy tale with some familiar faces... Leap into Nikki\'s world and let your inner dork shine through!', NULL, 371, 1, 4, '2021-02-28 19:52:25', '2021-02-28 19:52:25'),
(577, 'Double Dork Diaries 2', 'Double-Dork-Diaries-2', 'http://books.google.com/books/content?id=H9gnMgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=H9gnMgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471116735', 'A special bumper edition of dorkiness featuring books three and four in the bestselling DORK DIARIES series! It\'s time to embrace your inner dork! DORK DIARIES has millions of fans worldwide who all love the hilarious super-private diaries of the not-so-perfect Nikki Maxwell. Through sketches, doodles and diary entries Nikki spills the beans on everything from first crushes to BFF dramas, mean girls to bratty little sisters and, of course, all the mega-cringe moments that make her a dork-extraordinaire! In Pop Star Nikki\'s school is holding a talent competition and she can\'t wait to enter with her BFFs Chloe and Zoey, to have some fun and hopefully impress her super-crush Brandon too. But then Nikki finds out tht her arch-nemesis MacKenzie is entering the contest... Can a dork take on the most popular girl in school and win? In Skating Sensation Nikki tries to help her local animal shelter by raising money at an ice-skating fundraiser, the only problem? Nikki can\'t skate! Will she be able to transform from dork-on-ice to an ice-princess in time to save the shelter from closing for good?', NULL, 371, 1, 4, '2021-02-28 19:52:26', '2021-02-28 19:52:26'),
(578, 'Skating Sensation', 'Skating-Sensation', 'http://books.google.com/books/content?id=1I0orgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=1I0orgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471144752', 'Enter the adorkable world of Nikki Maxwell as she tells all about her not-so-fabulous life in the international bestselling series Dork Diaries! Nikki Maxwell\'s tips for a perfect skate-a-thon: 1) Find a worthy cause to skate for (major points if Brandon loves it too!); 2) Have fun by teaming up with BFFs Chloe and Zoey; 3) Make sure you actually know how to skate... Can Nikki transform from a dork-on-ice to an ice-princess? Squeee! Get ready to embrace your inner dork in the fourth title of the phenomenally successful Dork Diaries series! Perfect for fans of Jeff Kinney, Liz Pichon and Jacqueline Wilson', NULL, 371, 1, 4, '2021-02-28 19:52:26', '2021-02-28 19:52:26'),
(579, 'Frenemies Forever', 'Frenemies-Forever', 'http://books.google.com/books/content?id=iNTZAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=iNTZAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471158049', 'Nikki Maxwell, Queen of the Dorks, is back in the eleventh instalment of the NYT bestselling series! Nikki is spending a week at North Hampton Hills as part of the school transfer programme. The good news is that NHH is super-cool and preppy. The bad news is that Nikki\'s nemesis MacKenzie started there two weeks ago! But, faced with NHH queen bee Tiffany, who takes meanness to a whole new level, Nikki might need to work WITH Mackenzie if she\'s going to survive the week! Can Nikki and MacKenzie overcome their differences and become BFFs ... Best Frenemies Forever?! Praise for DORK DIARIES: \'Dork Diaries is so laugh-out-loud funny and original I stayed up late reading it, just to see what would happen next - and to get that next laugh!\' Kate Brian, author of the Private series \'Spot on for the tween market\' The Bookseller \'The Dork Diaries series is fast becoming my favourite for younger readers, and I really hope there are more dorky stories living in Rachel Renee Russell\'s head. I\'m sure Nikki has many more embarrassing moments just waiting to happen, as well as lots of gossip to share about her crush on Brandon. More please!\' Wondrous Reads Blog Perfect for fans of Wimpy Kid, Tom Gates, Jacqueline Wilson and James Patterson.​', NULL, 371, 1, 4, '2021-02-28 19:52:27', '2021-02-28 19:52:27'),
(580, 'Dork Diaries', 'Dork-Diaries-9781471143953', 'http://books.google.com/books/content?id=jhHqrQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=jhHqrQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471143953', 'Nikki Maxwell, Queen of the Dorks, is back in the seventh book of the blockbuster Dork Diaries series - now with over 13 million copies in print! Nikki and her friends are about to have their five minutes of fame! A reality TV crew is going to follow them for the whole month as they record their hit song together. But will the excitement also cause unexpected problems, now that cameras are everywhere Nikki and her friends go? Is life in the spotlight really going to be all they think it is or will it be a Dork Disaster? Full of Nikki\'s doodles, diary entries and dorkish disasters, get ready to embrace your inner dork with his brand new novel frm the hit series! Perfect for fans of Diary of a Wimpy Kid, Tom Gates and Jacqueline Wilson.', NULL, 371, 1, 4, '2021-02-28 19:52:27', '2021-02-28 19:52:27'),
(581, 'Double Dork Diaries #3', 'Double-Dork-Diaries-#3', 'http://books.google.com/books/content?id=7jn0oAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=7jn0oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471122767', 'Two dork-alicous tales from the hilarious Nikki Maxwell in one brilliant bind-up! In DEAR DORK, Nikki is enlisted to write the school agony aunt coloumn. But when her own life is a disaster zone, how is she expcted to dish out good advice to the rest of the school? In HOLIDAY HEARTBREAK, everyone is excited about the biggest dance of the year and Nikki\'s hoping her crush, Brandon, wants to be her date. But time is running out. What if he doesn\'t want to go with her? Or worse - what if he ends up going with Mackenzie?!!', NULL, 371, 1, 4, '2021-02-28 19:52:27', '2021-02-28 19:52:27'),
(582, 'Double Dork Diaries', 'Double-Dork-Diaries-9780857072184', 'http://books.google.com/books/content?id=_-8ckgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_-8ckgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780857072184', 'Having just started a new school, Nikki Maxwell is determined to make a fresh start, by leaving her dorky past behind. By spilling spaghetti on herself during lunch, dressing as a giant rat for Halloween and having a dad who drives around in a van with a giant cockroach on top, it\'s hard to change from loser to queen-bee overnight.', NULL, 371, 1, 4, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(583, 'Double Dork #5', 'Double-Dork-#5', 'http://books.google.com/books/content?id=CkPLvAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=CkPLvAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781471182341', 'A special bumper edition of dorkiness featuring Drama Queen and Puppy Love from the bestselling DORK DIARIES series! From a missing-diary disaster (leading to a mean-girl takeover!) to a puppy problem of epic proportions, Nikki Maxwell\'s life if never dull and always dorky! Get ready to dive into Nikki\'s dork-tastic life with this fabulous two-in-one bind-up. It\'s time to embrace your inner dork!', NULL, 371, 1, 4, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(584, 'Big Box of Big Nate', 'Big-Box-of-Big-Nate', 'http://books.google.com/books/content?id=nUNDtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=nUNDtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781449493264', 'What\'s better than a Big Nate book? How about FOUR Big Nate books in one box! Boxed set for Big Nate (Vol. 1-4)', NULL, 372, 1, 4, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(585, 'Dog Man 4', 'Dog-Man-4', 'http://books.google.com/books/content?id=ij96tAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ij96tAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545935180', 'When a new sitter arrives and a movie star goes missing, Dog Man and Cat Kid investigate, but Petey, the world\'s most evil cat, complicates their case.', NULL, NULL, 1, 4, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(586, 'Dog man: For whom the ball rolls, from the creator of Captain Underpants (dog Man #7).', 'Dog-man:-For-whom-the-ball-rolls,-from-the-creator-of-Captain-Underpants-(dog-Man-#7).', '', '', '9781338236590', 'The Supa Buddies have been working hard to help Dog Man overcome his bad habits. But when his obsessions turn to fears, Dog Man finds himself the target of an all-new supervillain in his seventh adventure from the creator of Captain Underpants.', NULL, 345, 1, 4, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(587, 'Dog Man: Grime and Punishment: From the Creator of Captain Underpants (Dog Man #9)', 'Dog-Man:-Grime-and-Punishment:-From-the-Creator-of-Captain-Underpants-(Dog-Man-#9)', 'http://books.google.com/books/content?id=Mgk-zAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Mgk-zAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338535624', 'The next great Dog Man adventure from the worldwide bestselling author and artist Dav Pilkey. You\'ll howl with laughter! The Supa Buddies bamboozled the baddies, but all\'s not right in the world. Dog Man has a new problem to pound, and he\'s going to need his entire pack to help him. Will he go barking up the wrong tree? Dav Pilkey\'s wildly popular Dog Man series appeals to readers of all ages and explores universally positive themes, including empathy, kindness, persistence, and the importance of doing good.', NULL, 345, 1, 4, '2021-02-28 19:52:29', '2021-02-28 19:52:29'),
(588, 'The Adventures of Ook and Gluk', 'The-Adventures-of-Ook-and-Gluk', '', '', '9780545175302', 'Friends Ook and Gluk are always getting into trouble with their village chief until they pass through a portal into a future run by the chief\'s descendant, where they learn kung fu so they can return to the past and free their people.', NULL, 373, 1, 4, '2021-02-28 19:52:29', '2021-02-28 19:52:29'),
(589, 'The Adventures of Captain Underpants', 'The-Adventures-of-Captain-Underpants', 'http://books.google.com/books/content?id=k9yPc450wKsC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=k9yPc450wKsC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780590846288', 'Captain Underpants, the former school principal turned crime-fighting, wedgie-dodging superhero, uses his wacky talents to outwit the evil Dr. Diaper. By the author of the Dumb Bunnies series. Simultaneous.', NULL, 345, 1, 4, '2021-02-28 19:52:29', '2021-02-28 19:52:29'),
(590, 'Captain Underpants and the Wrath of the Wicked Wedgie Woman', 'Captain-Underpants-and-the-Wrath-of-the-Wicked-Wedgie-Woman', 'http://books.google.com/books/content?id=85sSHpix4_wC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=85sSHpix4_wC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780439050005', 'When Harold and George turn fourth-grade teacher Ms. Ribble into an evil monster called the Wedgie Woman, she wreaks havoc on the world, giving the wedgie of doom to unsuspecting people who stand in her way--including principal-turned-superhero Captain Un', NULL, 345, 1, 4, '2021-02-28 19:52:29', '2021-02-28 19:52:29'),
(591, 'Captain Underpants and the Invasion of the Incredibly Naughty Cafeteria Ladies from Outer Space ...', 'Captain-Underpants-and-the-Invasion-of-the-Incredibly-Naughty-Cafeteria-Ladies-from-Outer-Space-...', 'http://books.google.com/books/content?id=7GpQmKe58lwC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=7GpQmKe58lwC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780439049962', 'Only Captain Underpants can stop the three evil space aliens who have invaded Jerome Horwitz Elementary School and turned everyone into lunchroom zombie nerds.', NULL, 345, 1, 4, '2021-02-28 19:52:30', '2021-02-28 19:52:30'),
(592, 'Captain Underpants and the Perilous Plot of Professor Poopypants', 'Captain-Underpants-and-the-Perilous-Plot-of-Professor-Poopypants', 'http://books.google.com/books/content?id=I0IKxgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=I0IKxgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780439049986', 'When Professor Pippy P. Poopypantsthe world\'s greatest scientific geniusdecides he\'s been made fun of long enough, he plans revenge, and it is up to Captain Underpants to save the world from this dirty villain! Simultaneous.', NULL, 345, 1, 4, '2021-02-28 19:52:30', '2021-02-28 19:52:30'),
(593, 'The Adventures of Captain Underpants', 'The-Adventures-of-Captain-Underpants-9780545499088', 'http://books.google.com/books/content?id=PDwqngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PDwqngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545499088', 'When George and Harold hypnotize their principal into thinking that he is the superhero Captain Underpants, he leads them to the lair of the nefarious Dr. Diaper, where they must defeat his evil robot henchmen.', NULL, NULL, 1, 4, '2021-02-28 19:52:30', '2021-02-28 19:52:30'),
(594, 'Captain Underpants and the Invasion of the Incredibly Naughty Cafeteria Ladies from Outer Space (and the Subsequent Assault of the Equally Evil Lunchroom Zombie Nerds)', 'Captain-Underpants-and-the-Invasion-of-the-Incredibly-Naughty-Cafeteria-Ladies-from-Outer-Space-(and-the-Subsequent-Assault-of-the-Equally-Evil-Lunchroom-Zombie-Nerds)', 'http://books.google.com/books/content?id=tW12wgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tW12wgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545694704', 'Only Captain Underpants can stop the three evil space aliens who have invaded Jerome Horwitz Elementary School and turned everyone into lunchroom zombie nerds.', NULL, 374, 1, 4, '2021-02-28 19:52:30', '2021-02-28 19:52:30'),
(595, 'Captain Underpants and the Perilous Plot of Professor Poopypants', 'Captain-Underpants-and-the-Perilous-Plot-of-Professor-Poopypants-9780545871877', 'http://books.google.com/books/content?id=OMfNsgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=OMfNsgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545871877', 'New York Times bestselling author Dav Pilkey\'s Captain Underpants soars to greater heights with the breakthrough fourth book--now in full color! George and Harold are fourth-grade buddies with a penchant for practical jokes. When the boys\' latest prank drives their science teacher over the edge, their clueless principal, Mr. Krupp, quickly hires a replacement: Professor Pippy P. Poopypants. Of course, George and Harold can\'t resist making fun of the Professor\'s silly name. But then the Professor retaliates by forcing everyone in town to change their own names to be equally silly, with colossal consequences!', NULL, 345, 1, 4, '2021-02-28 19:52:31', '2021-02-28 19:52:31');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(596, 'Captain Underpants and the Attack of the Talking Toilets', 'Captain-Underpants-and-the-Attack-of-the-Talking-Toilets', 'http://books.google.com/books/content?id=adpNnQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=adpNnQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545599320', 'Principal Krupp once again turns into the superhero Captain Underpants in order to save the world, and Jerome Horwitz Elementary School, from the evil talking toilets and the Turbo Toilet 2000.', NULL, 345, 1, 4, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(597, 'The Invasion of the Potty Snatchers', 'The-Invasion-of-the-Potty-Snatchers', 'http://books.google.com/books/content?id=8gok5lxhu9IC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'http://books.google.com/books/content?id=8gok5lxhu9IC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '9780545175326', 'In trouble with their principal because of their comic books, George and Harold decide to create a new epic novel.', NULL, 345, 1, 4, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(598, 'Captain Underpants and the Revolting Revenge of the Radioactive Robo-Boxers: Color Edition (Captain Underpants #10)', 'Captain-Underpants-and-the-Revolting-Revenge-of-the-Radioactive-Robo-Boxers:-Color-Edition-(Captain-Underpants-#10)', 'http://books.google.com/books/content?id=cFkmyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=cFkmyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338347234', 'When we last saw our heroes, George and Harold, they had been turned into evil zombie nerds doomed to roam a devastated, post-apocalyptic planet for all eternity. But why, you might ask, didn\'t the amazing Captain Underpants save the boys from this frightening fate? Because Tippy Tinkletrousers and his time-traveling hijinks prevented George and Harold from creating Captain Underpants in the first place! Now, having changed the course of human history forever, they\'ll have to figure out a way to CHANGE IT BACK!', NULL, 345, 1, 4, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(599, 'Sink Or Swim', 'Sink-Or-Swim', 'http://books.google.com/books/content?id=oer-wAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=oer-wAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545415705', 'Once again Abby and her brother Jonah go through the magic mirror in their basement, and this time they find themselves interfering in the Little Mermaid story--and needing to set things right and make sure everyone has a happy ending.', NULL, 375, 1, 4, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(600, 'Fairest of All', 'Fairest-of-All', 'http://books.google.com/books/content?id=yXOxMgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=yXOxMgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545485715', 'After moving to a new house, ten-year-old Abby and her younger brother Jonah discover an antique mirror that transports them into the Snow White fairy tale.', NULL, 375, 1, 4, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(601, 'Beauty Queen', 'Beauty-Queen', 'http://books.google.com/books/content?id=PwxBDwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PwxBDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545746571', 'Journey through the magic mirror and into the fairy tale of Beauty and the Beast -Now in paperback! Ever since the magic mirror erased his memory, my brother, Jonah, doesn\'t believe that we really visit different fairy tales. So it\'s a relief when the mirror sucks us into a story-and this time, it\'s \"Beauty and the Beast\"! Hoorah! Or, maybe not. When Jonah picks a rose from the Beast\'s garden, he messes up the story. The Beast is so angry he takes my brother prisoner...instead of Beauty! But if the Beast doesn\'t meet and fall in love with Beauty, then his curse will never be lifted and Jonah will be trapped in the palace forever! If I don\'t fix this mess in time, the situation could get pretty ugly...', NULL, 375, 1, 4, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(602, 'Genie in a Bottle (Whatever After #9)', 'Genie-in-a-Bottle-(Whatever-After-#9)', 'http://books.google.com/books/content?id=fnjcnAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=fnjcnAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780545851039', 'Be careful what you wish for... When my brother, Jonah, and I travel through our mirror into the story of Aladdin, we\'re excited. There will be magic lamps and genies granting wishes. Right? Wrong. The genie we meet isn\'t QUITE as helpful as we expected. And if Aladdin\'s wishes don\'t come true, he won\'t get to marry the princess and live happily ever after! Now we have to: - Escape an enchanted cave - Find forty buckets of jewels - Plan a parade - Learn to fly a magic carpet Otherwise we\'ll run out of wishes... and never get home!', NULL, 375, 1, 4, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(603, 'Aurora Plays the Part', 'Aurora-Plays-the-Part', '', '', '9781789055320', '', NULL, 376, 1, 4, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(604, 'Tiana\'s Best Surprise', 'Tiana\'s-Best-Surprise', '', '', '9781789055313', '', NULL, 376, 1, 4, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(605, 'Rosa and Crystal', 'Rosa-and-Crystal', 'http://books.google.com/books/content?id=9sI_vQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9sI_vQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788004350', 'Imagine a school where you meet your own unicorn and have amazing adventures together! That\'s what happens for the girls at Unicorn Academy on beautiful Unicorn Island. Rosa is over the moon to be starting school at Unicorn Academy. She can\'t wait to go on a big adventure with her amazing unicorn, Crystal. When the magical map stops working, Rosa is sure a secret trip to the glittering cavern holds the answer. But to find out, she and Crystal must learn how to work as a team - fast!', NULL, 378, 1, 4, '2021-02-28 19:52:33', '2021-02-28 19:52:33'),
(606, 'Olivia and Snowflake', 'Olivia-and-Snowflake', 'http://books.google.com/books/content?id=NALbswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=NALbswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788001687', '', NULL, 378, 1, 4, '2021-02-28 19:52:33', '2021-02-28 19:52:33'),
(607, 'Best Freinds Forever: The Top Secret Book About Us', 'Best-Freinds-Forever:-The-Top-Secret-Book-About-Us', '', '', '9781786928665', '', NULL, NULL, 1, 4, '2021-02-28 19:52:33', '2021-02-28 19:52:33'),
(608, 'Top Secret Ninja', 'Top-Secret-Ninja', 'http://books.google.com/books/content?id=ZzrvtgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ZzrvtgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781788432856', '', NULL, 379, 1, 4, '2021-02-28 19:52:33', '2021-02-28 19:52:33'),
(609, 'William\'s Winter Wish', 'William\'s-Winter-Wish', 'http://books.google.com/books/content?id=WxCZpwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=WxCZpwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780230758179', 'Let it SNOW! William longs for it to snow. Maybe if he makes a wish on Grandpa\'s snow globe it will really happen. But disaster strikes when William drops the globe and breaks it! How can he say sorry to Grandpa, and will his wish ever come true? A sparkling story of magical winter wishes.', NULL, 380, 1, 2, '2021-02-28 19:52:34', '2021-02-28 19:52:34'),
(610, 'Bella Gets Her Skates on', 'Bella-Gets-Her-Skates-on', '', '', '9781447281498', '', NULL, NULL, 1, 2, '2021-02-28 19:52:34', '2021-02-28 19:52:34'),
(611, 'The Best Christmas Present Ever!', 'The-Best-Christmas-Present-Ever!', 'http://books.google.com/books/content?id=IrqVCwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=IrqVCwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447284000', 'It\'s Christmas and Bear wants to give his best friend Squirrel an extra special present. So he decides to make him a gift. Except Bear isn\'t very good at making things. Everything he tries is a disaster. He can\'t give Squirrel a badly knitted jumper, a terrible painting or a broken rocking chair. But maybe if he puts them together they might turn out to be the best Christmas present ever...A funny, charming sequel to THE BEST BIRTHDAY PRESENT EVER! The perfect gift for Christmas - not just for squirrels!', NULL, 381, 1, 2, '2021-02-28 19:52:34', '2021-02-28 19:52:34'),
(612, 'The Christmas Show', 'The-Christmas-Show', 'http://books.google.com/books/content?id=TNjRmgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=TNjRmgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447220190', 'It\'s Christmas and the children have been practising very hard for their nativity play. The narrators are word-perfect, the Important Angel has brushed her hair and the audience are in their seats. But when the curtain rises, no one\'s expecting a spare shepherd to steal the show ...A bright, bold, brilliantly observed book that\'s full of festive fun - with a gorgeously glittery cover that makes it the perfect stocking filler!', NULL, 382, 1, 2, '2021-02-28 19:52:35', '2021-02-28 19:52:35'),
(613, 'SQUISH SQUASH SQUEEZE', 'SQUISH-SQUASH-SQUEEZE', '', '', '9781788810418', '', NULL, 383, 1, 2, '2021-02-28 19:52:35', '2021-02-28 19:52:35'),
(614, 'Goodnight Tiger', 'Goodnight-Tiger', 'http://books.google.com/books/content?id=-EVZjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=-EVZjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848691865', 'Goodnight Tiger is a quirky, funny bedtime story book, full of jungle animals and surprises. With vibrant, characterful illustrations, this charming picture book by best-selling author Timothy Knapman is sure to delight children at bedtime - and it\'s great for reinforcing bath and bedtime routines too. The animals in Emily\'s jungle wallpaper can\'t sleep, and they are bellowing and stomping and growling and keeping her awake! So Emily climbs into the wallpaper and shows the animals how to get ready for bed. Only baths and lullabies aren\'t quite the same in the jungle...!', NULL, 384, 1, 2, '2021-02-28 19:52:35', '2021-02-28 19:52:35'),
(615, 'Hippobottymus', 'Hippobottymus', 'http://books.google.com/books/content?id=itrmoQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=itrmoQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848690516', 'Plinkety-plonk! Tweetily-tweet! The jungle animals are making music to the sound of the bubbling creek! But – goodness me! – what is that naughty hippo up to? A bonkers, musical rhyming story with a laugh-out-loud, farting surprise! Dance and sing along to the musical noises – and bottoms - of the animals in this funny book by the award-winning author, Steve Smallman (Big Bear’s Bottom, Dragon Stew). Kids will love the bright and lively illustrations from Ada Grey (Shhh! Don’t Wake the Royal Baby). Packed with laughs and rhymes, Hippobottymus is the perfect picture book for parents and children to read aloud.', NULL, 385, 1, 2, '2021-02-28 19:52:35', '2021-02-28 19:52:35'),
(616, 'Little Why', 'Little-Why', 'http://books.google.com/books/content?id=a3AdswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=a3AdswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848691834', 'Little Why just can\'t stay in line. There is so much to see - like Giraffe\'s long-lofty leggy legs and Wildebeest\'s spiny-spiky horns. Why can\'t he have legs and horns like them? And then Little Why spots Crocodile\'s snippy-snappy teeth... Look out! With stylish and striking art from Jonny Lambert, Little Why is a visually stunning picture book with a heart-warming message at its core. Children will love Little Why\'s adorable, excitable character and discovering the different animals in the African savannah. A perfect story book for gently introducing themes of positive body image and the dangers of toddlers and little children running away from their parents.', NULL, 386, 1, 2, '2021-02-28 19:52:36', '2021-02-28 19:52:36'),
(617, 'What Do You Do If Your House is a Zoo?', 'What-Do-You-Do-If-Your-House-is-a-Zoo?', 'http://books.google.com/books/content?id=V7PiwQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=V7PiwQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848699502', 'Oscar\'s getting a pet! But which pet should he pick? And what on earth will he do when they all move in? His house is like a zoo! A book for animal lovers BIG and small.', NULL, 387, 1, 2, '2021-02-28 19:52:36', '2021-02-28 19:52:36'),
(618, 'Poo in the Zoo', 'Poo-in-the-Zoo', 'http://books.google.com/books/content?id=2gUHrgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2gUHrgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848691384', '“There was tiger poo, lion poo, prickly porcupine poo, Plummeting giraffe poop that landed with a splat. Dollops of gnu poo, bouncy kangaroo poo, A trail of drippy droppings from a fat wombat!” Zoo Keeper Bob is exhausted. There’s too much poo in the zoo – and he’s the one who has to scoop it up. Then one day, a mysterious glowing poo appears! Could it be alien poop from outer space? And what on EARTH will Bob do with it? Perfect for fans of The Dinosaur who Pooped the Planet, children will laugh out loud at this gloriously funny, poopy picture book! Packed with humour, the romping rhyme and deliciously cheeky wordplay is a joy to read aloud. From the author of Dragon Stew, Steve Smallman and illustrator, Ada Grey (Shh! Don\'t Wake the Royal Baby).', NULL, 385, 1, 2, '2021-02-28 19:52:36', '2021-02-28 19:52:36'),
(619, 'The Christmas Extravaganza Hotel', 'The-Christmas-Extravaganza-Hotel', 'http://books.google.com/books/content?id=pAIoxAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=pAIoxAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848699380', 'Bear is ready for a calm, cosy Christmas. Frog is ready for a tinsel-tastic Christmas at the Extravaganza Hotel! Neither is ready for what happens next . . . ! A fabulously festive tale about the joys of the unexpected.', NULL, 388, 1, 2, '2021-02-28 19:52:37', '2021-02-28 19:52:37'),
(620, 'Lost in the Snow', 'Lost-in-the-Snow', '', '', '9781848690837', '', NULL, NULL, 1, 2, '2021-02-28 19:52:37', '2021-02-28 19:52:37'),
(621, 'Mr Creep the Crook', 'Mr-Creep-the-Crook', 'http://books.google.com/books/content?id=2VPArQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2VPArQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723297703', '', NULL, 389, 1, 2, '2021-02-28 19:52:37', '2021-02-28 19:52:37'),
(622, 'Miss Brick the Builders\' Baby', 'Miss-Brick-the-Builders\'-Baby', 'http://books.google.com/books/content?id=3ZYEMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3ZYEMQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141377476', 'Mr and Mrs Brick are builders, just like their mothers and fathers and grandmothers and grandfathers. But their new baby doesn\'t seem to be following in their footsteps. Instead of building things up, she keeps knocking things down! Based on the classic \'Happy Families\' card game, this highly entertaining series is ideal for reading and sharing at home or at school. It is guided by the Education Adviser, Brian Thompson, and written by the award-winning author, Allan Ahlberg. \'The best thing to happen to beginner readers since Dr Seuss\' Children\'s Rights Workshop.', NULL, 389, 1, 2, '2021-02-28 19:52:38', '2021-02-28 19:52:38'),
(623, 'Mr Tick the Teacher', 'Mr-Tick-the-Teacher', 'http://books.google.com/books/content?id=Nx0ljwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Nx0ljwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141369969', 'One of the classic Happy Families stories written by Allan Ahlberg and illustrated by Faith Jaques. Mr Tick loves teaching his six children at their little school. But then they hear news that all small schools must close, so Mr Tick starts teaching some rather unusual lessons - in how to trick stern school inspectors. Based on the classic \'Happy Families\' card game, this highly entertaining series is ideal for reading and sharing at home or at school. It is guided by the Education Adviser, Brian Thompson, and written by the award-winning author, Allan Ahlberg. \'The best thing to happen to beginner readers since Dr Seuss\' Children\'s Rights Workshop.', NULL, 389, 1, 2, '2021-02-28 19:52:38', '2021-02-28 19:52:38'),
(624, 'Mrs Lather\'s Laundry', 'Mrs-Lather\'s-Laundry', 'http://books.google.com/books/content?id=uzBkjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=uzBkjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141369952', 'A classic Happy Families story written by Allan Ahlberg and illustrated by Andre Amstutz Mrs Lather is getting quite worked up in her laundry. She hates washing socks, she hates washing vests, she really doesn\'t much like washing trousers or dresses either. But her job gets rather more difficult when her customers start bringing in more unusual washing loads ... The \'Happy Families\' series is designed for use at home or at school. It is guided by the Education Adviser, Brian Thompson, and written by the award-winning author, Allan Ahlberg. \'The best thing to happen to beginner readers since Dr Seuss\' Children\'s Rights Workshop.', NULL, 389, 1, 2, '2021-02-28 19:52:38', '2021-02-28 19:52:38'),
(625, 'Miss Jump the Jockey', 'Miss-Jump-the-Jockey', 'http://books.google.com/books/content?id=Ug6LngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Ug6LngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141352398', '', NULL, 389, 1, 2, '2021-02-28 19:52:38', '2021-02-28 19:52:38'),
(626, 'Master Track\'s Train', 'Master-Track\'s-Train', 'http://books.google.com/books/content?id=9z4yngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9z4yngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723293934', 'Annotation. Here is an announcement! The train approaching platform two is full of stolen goods . . . Mr Track is the train driver, and Mrs Track is the driver\'s wife. Toby Track is their little boy and he is exceptionally good at jumping onto stolen trains and rescuing them from crooks!A hilarious Happy Families picture book from master storyteller, Allan Ahlberg.', NULL, 389, 1, 2, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(627, 'Mrs Wobble the Waitress', 'Mrs-Wobble-the-Waitress', 'http://books.google.com/books/content?id=mLLLkQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=mLLLkQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723275596', 'Mrs Wobble loves her job as a waitress but, oh dear, there\'s one big problem - she wobbles!! And when she wibbles and wobbles and drops jelly everywhere, it\'s time for a new job! Luckily, Mr Wobble, and all the Wobble children have a cunning plan.', NULL, 389, 1, 2, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(628, 'Cinderella', 'Cinderella', 'http://books.google.com/books/content?id=KPYilwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=KPYilwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272670', '', NULL, NULL, 1, 2, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(629, 'Cars', 'Cars', 'http://books.google.com/books/content?id=sL9txwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=sL9txwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241244432', 'Learn about lots of different cars big cars, little cars, fast cars, and special cars. See what they look like and who drives them. For more than 35 years, the best-selling Read it yourself with Ladybird has helped children learn to read. All books feature essential key words. Title-specific words are repeated to practice throughout. Designed to be read independently at home or used in a guided reading session at school. All titles include comprehension puzzles, guidance notes, and book band information for schools. This Level 1 title is suitable for very early readers who are ready to take their first steps in reading real stories. Each simple story uses a small number of frequently repeated words.\"', NULL, 390, 1, 2, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(630, 'The Enormous Turnip', 'The-Enormous-Turnip', 'http://books.google.com/books/content?id=OEM6lwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=OEM6lwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272786', 'Based on the classic fairy tale. When an old man plants some turnip seeds, one of the turnips grows ENORMOUS! How will he ever get it out of the ground? Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. The Enormous Turnip is a Level 1 Read it yourself title, suitable for very early readers who have had some initial reading instruction and are ready to take their first steps in reading real stories. Each story is told very simply, using a small number of frequently repeated words.', NULL, NULL, 1, 2, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(631, 'Dinosaurs', 'Dinosaurs', '', '', '9780723295068', 'This book helps you to find out all about the dinosaurs that lived a long, long time ago - big ones, small ones, scary meat-eaters and peaceful plant-eaters. For over thirty-five years, the best-selling Read it yourself with Ladybird has helped children learn to read. All titles feature essential key words. Title-specific words are repeated to practise throughout. It is designed to be read independently at home or used in a guided reading session at school. All titles include comprehension questions or puzzles, guidance notes and book band information for schools. This Level 1 title is suitable for very early readers who are ready to take their first steps in reading. It offers a small number of frequently repeated words, simple facts, clearly labelled images and captions to fully engage the reader. It includes contents, index and a picture glossary.', NULL, 391, 1, 2, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(632, 'Goldilocks and the Three Bears', 'Goldilocks-and-the-Three-Bears', 'http://books.google.com/books/content?id=PKWylwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PKWylwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272656', 'Based on the classic fairy tale. While the three bears are out for a walk, naughty little Goldilocks comes calling and tries out their porridge, chairs and beds to see which are just right. But then the three bears come home... Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. Goldilocks and the Three Bears is a Level 1 Read it yourself title, suitable for very early readers who have had some initial reading instruction and are ready to take their first steps in reading real stories. Each story is told very simply, using a small number of frequently repeated words.', NULL, 392, 1, 2, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(633, 'Little Red Hen', 'Little-Red-Hen', 'http://books.google.com/books/content?id=C7aolwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=C7aolwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272694', '', NULL, NULL, 1, 2, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(634, 'Favourite Pets', 'Favourite-Pets', 'http://books.google.com/books/content?id=1QlJyAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=1QlJyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241237328', '\"Rabbits, gerbils, cats and dogs! Learn all about your favourite pets in this delightful non-fiction reader perfect for very early readers taking their first steps in reading.a For over thirty-five years, the best-selling Read it yourself with Ladybird has helped children learn to read. All stories feature essential key words. Story-specific words are repeated to practise throughout.a Designed to be read independently at home or used in a guided reading session at school. All titles include comprehension puzzles, guidance notes and book band information for schools. This Level 1 title is suitable for very early readers who are ready to take their first steps in reading real stories. Each simple story uses a small number of frequently repeated words. \"', NULL, 390, 1, 2, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(635, 'Rex the Big Dinosaur', 'Rex-the-Big-Dinosaur', 'http://books.google.com/books/content?id=uvxglwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=uvxglwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780718194635', 'Rex the big dinosaur wants to play with the other little dinosaurs in the jungle, but they find him far too loud and scary! Is there any way that Rex can convince the little dinosaurs that he\'s a good friend to have around? Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. The wide range of classic fairy tales, favourite characters and exciting modern stories in the Read it yourself series appeal to all children, whatever their interests, and have bright, detailed pictures to help support the text. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. Rex the Big Dinosaur is a Level 1 Read it yourself title, suitable for very early readers who have had some initial reading instruction and are ready to take their first steps in reading real stories. Each story is told very simply, using a small number of frequently repeated words.', NULL, 393, 1, 2, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(636, 'Jon\'s Football Team - Read it Yourself with Ladybird', 'Jon\'s-Football-Team---Read-it-Yourself-with-Ladybird', 'http://books.google.com/books/content?id=6MHarQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=6MHarQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723295174', 'Jon and his friends are big fans of famous footballer Ben Wills. Can they learn to play like him and win? For over thirty-five years, the best-selling Read it yourself with Ladybird has helped children learn to read. All titles feature essential key words. Title-specific words are repeated to practise throughout. Titles are designed to be read independently at home or used in a guided reading session at school. All titles include comprehension questions or puzzles, guidance notes and book band information for schools. This Level 1 title is suitable for very early readers who are ready to take their first steps in reading. A small number of frequently repeated words, simple facts, clearly labelled images and captions fully engage the reader. Includes contents, index and a picture glossary.', NULL, 390, 1, 2, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(637, 'The Three Billy Goats Gruff', 'The-Three-Billy-Goats-Gruff', 'http://books.google.com/books/content?id=2RPSlgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2RPSlgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272748', 'Based on the classic fairy tale. The three billy goats Gruff wants to cross the bridge to reach the grass on the other side, but first they have to get past the hungry troll! Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. The Three Billy Goats Gruff is a Level 1 Read it yourself title, suitable for very early readers who have had some initial reading instruction and are ready to take their first steps in reading real stories. Each story is told very simply, using a small number of frequently repeated words.', NULL, 392, 1, 2, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(638, 'The Bravest Fox', 'The-Bravest-Fox', '', '', '9780723295198', 'Foxes Kip and Tip love to play in the woods. Tip wants to see if Kip gets scared, but which one is the bravest fox? For over thirty-five years, the best-selling Read it yourself with Ladybird has helped children learn to read. All titles feature essential key words. Story-specific words are repeated to practise throughout. It is designed to be read independently at home or used in a guided reading session at school. All titles include comprehension questions or puzzles, guidance notes and book band information for schools. This Level 1 title is suitable for very early readers who are ready to take their first steps in reading real stories. Each simple story uses a small number of frequently repeated words.', NULL, 393, 1, 2, '2021-02-28 19:52:41', '2021-02-28 19:52:41'),
(639, 'The Ugly Duckling', 'The-Ugly-Duckling', 'http://books.google.com/books/content?id=rT71lwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rT71lwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272632', 'Based on the classic fairy tale. The ugly duckling doesn\'t fit in and is chased away by everyone he meets. Will he ever find some true friends? Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. The Ugly Duckling is a Level 1 Read it yourself title, suitable for very early readers who have had some initial reading instruction and are ready to take their first steps in reading real stories. Each story is told very simply, using a small number of frequently repeated words.', NULL, 392, 1, 2, '2021-02-28 19:52:41', '2021-02-28 19:52:41'),
(640, 'Emergency Rescue', 'Emergency-Rescue', 'http://books.google.com/books/content?id=0AV3wgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0AV3wgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241244418', 'Who helps in an emergency? Read all about the fire service, police, coastguard and others who come to the rescue.', NULL, 390, 1, 2, '2021-02-28 19:52:41', '2021-02-28 19:52:41'),
(641, 'Let\'s Celebrate - Read It Yourself with Ladybird Level 2', 'Let\'s-Celebrate---Read-It-Yourself-with-Ladybird-Level-2', 'http://books.google.com/books/content?id=Aw0zngAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Aw0zngAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241275221', 'No Marketing Blurb', NULL, 390, 1, 2, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(642, 'The Gingerbread Man', 'The-Gingerbread-Man', 'http://books.google.com/books/content?id=2DAKlwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2DAKlwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272885', 'In this classic fairy tale, a little old woman makes a gingerbread man - but then he runs away! Is there anyone who can catch the gingerbread man? Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. The Gingerbread Man is a Level 2Read it yourself title, ideal for children who have received some initial reading instruction and can read short, simple sentences with help.', NULL, 392, 1, 2, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(643, 'Little Red Riding Hood/illustrated by Diana Mayo', 'Little-Red-Riding-Hood/illustrated-by-Diana-Mayo', 'http://books.google.com/books/content?id=8IK3lwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=8IK3lwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272908', 'In this classic fairy tale, Little Red Riding Hood goes to visit her poorly grandmother, only to find that her grandmother suddenly has very big teeth! Could the hungry wolf have something to do with this? Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. Little Red Riding Hood is a Level 2 Read it yourself title, ideal for children who have received some initial reading instruction and can read short, simple sentences with help.', NULL, 392, 1, 2, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(644, 'Rumpelstiltskin', 'Rumpelstiltskin', 'http://books.google.com/books/content?id=IzBWjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=IzBWjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272984', 'In this classic fairy tale, a miller\'s daughter has to spin straw into gold for the king. A funny little man comes to help her, but if she can\'t guess his name, this Rumpelstiltskin will take her first-born child! Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. Rumpelstiltskin is a Level 2 Read it yourself title, ideal for children who have received some initial reading instruction and can read short, simple sentences with help.', NULL, NULL, 1, 2, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(645, 'Sleeping Beauty', 'Sleeping-Beauty', 'http://books.google.com/books/content?id=3RL8lgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3RL8lgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272922', 'In this classic fairy tale, Sleeping Beauty pricks her finger on a spinning wheel and falls asleep for one hundred years. Can a handsome prince wake her up? Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. Sleeping Beauty is a Level 2 Read it yourself title, ideal for children who have received some initial reading instruction and can read short, simple sentences with help.', NULL, 392, 1, 2, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(646, 'The Three Little Pigs', 'The-Three-Little-Pigs', 'http://books.google.com/books/content?id=mFaSlwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=mFaSlwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723272946', 'Drie kleine biggetjes bouwen elk een eigen huis. Maar welk huis is het sterkst als de grote boze wolf de huizen komt omblazen? Verhaal met korte en eenvoudige zinnen en veel illustraties, van ca. 6,5 jaar.', NULL, NULL, 1, 2, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(647, 'The Monster Next Door - Read it Yourself with Ladybird', 'The-Monster-Next-Door---Read-it-Yourself-with-Ladybird', 'http://books.google.com/books/content?id=EuAczgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=EuAczgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723295242', 'George wants to be a monster, just like his neighbour Green. Green wants to be normal, just like George. What happens when they swap families for a day? For over thirty-five years, the best-selling Read it yourself with Ladybird has helped children learn to read. All titles feature essential key words. Story-specific words are repeated to practise throughout and all titles are designed to be read independently at home or used in a guided reading session at school. All titles include comprehension questions of puzzles, guidance notes and book band information for schools. This Level 2 title is ideal for children who have received some initial reading instruction and can read short, simple sentences with help.', NULL, 390, 1, 2, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(648, 'The Read It Yourself with Ladybird Princess and the Frog Level 3', 'The-Read-It-Yourself-with-Ladybird-Princess-and-the-Frog-Level-3', 'http://books.google.com/books/content?id=aTgozgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=aTgozgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723280583', 'A kind frog helps a princess and she makes him a promise. What happens when the king tells her that she has keep her promise? Read it yourself with Ladybird is one of Ladybird\'s best-selling reading series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limitednumber of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. The Princess and the Frog is a Level 2 Read it yourself book, ideal for children who have received some initial reading instruction and can read short, simple sentences with help.', NULL, 392, 1, 2, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(649, 'The Jungle Book', 'The-Jungle-Book', 'http://books.google.com/books/content?id=2MztngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=2MztngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723280798', 'Mowgli the man cub is growing up in the jungle. What adventures does he have with Baloo the bear and Bagheera the panther? - Back cover.', NULL, 394, 1, 2, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(650, 'Aladdin', 'Aladdin', 'http://books.google.com/books/content?id=3lEyngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3lEyngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723280811', '', NULL, 395, 1, 2, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(651, 'Puss in Boots - Read it Yourself with Ladybird', 'Puss-in-Boots---Read-it-Yourself-with-Ladybird', 'http://books.google.com/books/content?id=X-rLrQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=X-rLrQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723280774', 'When a poor miller\'s son is left a cat by his father, he wonders how he will ever make any money. Perhaps the cat can help him? For over thirty-five years, the best-selling Read it yourself with Ladybird has helped children learn to read. All titles feature essential key words. Story-specific words are repeated to practise throughout and all titles are designed to be read independently at home or used in a guided reading session at school. All titles include comprehension questions or puzzles, guidance notes and book band information for schools. This Level 3 title is suitable for children who are developing reading confidence and are eager to start reading longer stories with a wider vocabulary.', NULL, NULL, 1, 2, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(652, 'Hansel and Gretel', 'Hansel-and-Gretel', 'http://books.google.com/books/content?id=K_6zlgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=K_6zlgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723273196', 'Based on the classic fairy tale. When Hansel and Gretel get left in the woods, they are captured by a witch who lives in a house made from gingerbread and sweets. How will they ever escape? Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. Hansel and Gretel is a Level 3 Read it yourself title, suitable for children who are developing reading confidence and stamina, and are eager to start reading longer stories with a wider vocabulary.', NULL, 392, 1, 2, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(653, 'Jack and the Beanstalk', 'Jack-and-the-Beanstalk', 'http://books.google.com/books/content?id=xw3JlgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=xw3JlgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723273004', '', NULL, NULL, 1, 2, '2021-02-28 19:52:43', '2021-02-28 19:52:43');
INSERT INTO `products` (`id`, `title`, `slug`, `thumbnail`, `image`, `isbn`, `description`, `details`, `author_id`, `language_id`, `age_id`, `created_at`, `updated_at`) VALUES
(654, 'Our Solar System', 'Our-Solar-System', 'http://books.google.com/books/content?id=5L7sjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=5L7sjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241237410', 'Learn all about our solar system in this fascinating nonfiction book, perfect for young readers ready to begin reading independently. For more than 35 years, the best-selling Read it yourself with Ladybird has helped children learn to read. All stories feature essential key words. Story-specific words are repeated to practise throughout. Designed to be read independently at home or used in a guided reading session at school. All titles include comprehension puzzles, guidance notes and book band information for schools. This Level 4 title is ideal for children who are ready to read longer stories with a wider vocabulary and are keen to start reading independently.', NULL, 390, 1, 2, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(655, 'The Little Mermaid', 'The-Little-Mermaid', '', '', '9780723280705', 'The Little Mermaid desperately wishes to be human. What happens when the sea witch grants her wish?', NULL, 396, 1, 2, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(656, 'Heidi', 'Heidi', 'http://books.google.com/books/content?id=U_0NlwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=U_0NlwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723273257', 'Based on the classic story by Johanna Spyri. Heidi loves living in the mountains with her grandfather and her friend Peter, and is homesick when she moves to Frankfurt. Will she make it back to her beloved mountains? Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. Heidi is a Level 4Read it yourself title, ideal for children who are ready to read longer stories with a wider vocabulary and are keen to read independently.', NULL, 392, 1, 2, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(657, 'The Wizard of Oz', 'The-Wizard-of-Oz', 'http://books.google.com/books/content?id=_D5mlwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_D5mlwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723273233', 'When Dorothy and her little dog Toto end up in the Land of Oz, they and their friends the scarecrow, tin man and cowardly lion have many adventures on their way to see the Wizard of Oz! Read it yourself with Ladybird is one of Ladybird\'s best-selling series. For over thirty-five years it has helped young children who are learning to read develop and improve their reading skills. Each Read it yourself book is very carefully written to include many key, high-frequency words that are vital for learning to read, as well as a limited number of story words that are introduced and practised throughout. Simple sentences and frequently repeated words help to build the confidence of beginner readers and the four different levels of books support children all the way from very first reading practice through to independent, fluent reading. Each book has been carefully checked by educational consultants and can be read independently at home or used in a guided reading session at school. Further content includes comprehension puzzles, helpful notes for parents, carers and teachers, and book band information for use in schools. The Wizard of Oz is a Level 4Read it yourself title, ideal for children who are ready to read longer stories with a wider vocabulary and are keen to read independently.', NULL, 392, 1, 2, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(658, 'Peter and the Wolf', 'Peter-and-the-Wolf', '', '', '9780723280675', '\"Peter\'s grandfather warns him about a wolf that lives in the dark forest. What happens when Peter goes to play nearby?\"--Publisher description.', NULL, NULL, 1, 2, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(659, 'How Many Quacks Till Christmas?', 'How-Many-Quacks-Till-Christmas?', 'http://books.google.com/books/content?id=rHM5DwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=rHM5DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781408871072', 'The animals of Merry Farm are so excited. They can’t wait for Christmas. Join them for lots of festive fun as, with jolly oinks, happy neighs, woofs, cheeps, baas and moos, they get ready for THE BIG DAY', NULL, 397, 1, 2, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(660, 'Freddie and the Fairy', 'Freddie-and-the-Fairy', 'http://books.google.com/books/content?id=-iHOSAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=-iHOSAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780330511186', 'After rescuing hard-of-hearing fairy Bessie-Belle, Freddie, who tends to mumble, has his every wish granted with unexpected results--luckily, the Fairy Queen is on hand to help. By the award-winning author of Gruffulo and Room on the Broom. Original.', NULL, 398, 1, 2, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(661, 'The Something', 'The-Something', 'http://books.google.com/books/content?id=bJXJrQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=bJXJrQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781447271819', 'When a little boy\'s ball disappears down a mysterious hole in the garden, he can\'t stop thinking about what could be down there - a little mouse\'s house? The lair of a hungry troll? Or maybe even a dragon\'s den. Whatever it may be, he\'s determined to find out!A glorious imaginative adventure from the award-winning creator of Aunt Amelia and Lunchtime, and illustrator of The Paper Dolls, written by Julia Donaldson.', NULL, 399, 1, 2, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(662, 'Cinderella\'s (Not So) Ugly Sisters', 'Cinderella\'s-(Not-So)-Ugly-Sisters', 'http://books.google.com/books/content?id=fK0qPQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=fK0qPQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781405021623', 'Winifred and Prudence are kind and sweet--unlike their step-sister, Cinder-Ella. She is horrible! She\'ll do anything to get her own way, and even orders a spell to make her sisters really ugly. But spells don\'t last forever, so maybe Win and Pru will get a happy ending after all. This funny retelling of the fairytale classic is a must for all Cinderella fans.', NULL, 380, 1, 2, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(663, 'The Princess and the Sleep Stealer', 'The-Princess-and-the-Sleep-Stealer', 'http://books.google.com/books/content?id=_v1LYgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_v1LYgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780230750685', 'Unable to lull her little town to sleep when all of her sleep dust goes missing, Princess Luna, a Sleep Keeper, ventures into a candy wilderness for a magical adventure involving sleep pirates and a friendly dragon. Original.', NULL, 400, 1, 2, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(664, 'Flat Stanley', 'Flat-Stanley', 'http://books.google.com/books/content?id=847qwAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=847qwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781405291552', 'Amazing things always happend to Stanley ! He was just an ordinary boy, until a pin board fell on top of him and now he\'s flat as a pancake ! And when some sneaky thieves come to town, plotting to steal the world\'s most famous painting... Can flat Stanley save the day ? [4e de couv.]', NULL, 401, 1, 2, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(665, 'Ambulance, Ambulance!', 'Ambulance,-Ambulance!', 'http://books.google.com/books/content?id=vmBEvAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=vmBEvAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781406380859', 'A reassuring, read-aloud exploration of the work of paramedics and ambulance crews. There\'s been a crash and the crew at the ambulance station jumps into action. Nee nar nee nar. They respond to the emergency call, attend to the injuries of a young boy who has fallen off his bike and then take him to the hospital for treatment.', NULL, 402, 1, 2, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(666, 'Construction', 'Construction', 'http://books.google.com/books/content?id=_JOuDQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=_JOuDQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781406367157', '', NULL, 402, 1, 2, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(667, 'I Want to Be Tall!', 'I-Want-to-Be-Tall!', 'http://books.google.com/books/content?id=DA-iGQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=DA-iGQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842707685', 'The Little Princess needs to rescue her space-hopper from the apple tree, but she is just not tall enough! The only solution is to grow, so she sets about doing all the things that should make her bigger. Unfortunately nothing seems to help. But when her baby cousin comes to visit she realizes that maybe she’s not that small after all . . .', NULL, 403, 1, 2, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(668, 'I Want My Sledge!', 'I-Want-My-Sledge!', 'http://books.google.com/books/content?id=LsIaAgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=LsIaAgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842707067', 'It\'s a beautiful winter\'s day at the castle and the Little Princess has found her old sledge to play on. She\'s having a great time until the Chef whizzes past on his brand new shiny sledge. She wants one of those! When the King finally gives in and let\'s her have one, the Princess thinks her dreams have come true. But new doesn\'t always mean better...', NULL, 403, 1, 2, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(669, 'I Want a Trumpet!', 'I-Want-a-Trumpet!', 'http://books.google.com/books/content?id=eT_CtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=eT_CtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842707081', 'When a new music box arrives at the castle and captures everyone\'s attention, the Little Princess decides to learn to play an instrument too. She makes herself a funnel trumpet and is soon practising all over the castle. Unfortunately not everyone seems to appreciate her music as much as she does...', NULL, 403, 1, 2, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(670, 'I Want My New Shoes!', 'I-Want-My-New-Shoes!', 'http://books.google.com/books/content?id=0E35AAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0E35AAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842706435', 'The Little Princess is determined not to put anything on her feet, until the Maid shows her a special box. The gleaming red shoes inside are too wonderful for words. Now the Little Princess is so proud of her new party pumps, she refuses to take them off!', NULL, 403, 1, 2, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(671, 'I Want a Shop!', 'I-Want-a-Shop!', 'http://books.google.com/books/content?id=lHRpGQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=lHRpGQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842707623', 'When the Little Princess decides to open her own shop, it\'s a roaring success! The King and his courtiers are soon queuing up to buy the ingenious objects on her stall. But when the happy customers meet later and compare goods, the Little Princess has some explaining to do...', NULL, 403, 1, 2, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(672, 'I Want My Tent!', 'I-Want-My-Tent!', 'http://books.google.com/books/content?id=4pVXAAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4pVXAAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842706565', 'The Little Princess wants to play camping, but she can\'t even get started. Every time she builds a tent, a grown-up steps in to spoil her fun. Again and again, the Little Princess and her toys are forced to search for a new hideout. There must be a special tent somewhere in the kingdom that\'s truly fit for a princess...', NULL, 403, 1, 2, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(673, 'I Don\'t Want to Comb My Hair!', 'I-Don\'t-Want-to-Comb-My-Hair!', 'http://books.google.com/books/content?id=MUi3GQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=MUi3GQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842707647', 'The Little Princess hates having her hair combed. There are always tangles and it always hurts! When the King agrees to put her in charge of combing, she makes sure that everyone in the castle has beautifully combed hair, but she leaves her own until last...with disastrous consequences.', NULL, 403, 1, 2, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(674, 'Can I Keep It?', 'Can-I-Keep-It?', 'http://books.google.com/books/content?id=90NNAgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=90NNAgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842706442', 'The Little Princess thinks her tiny tadpole is the best thing ever. She keeps him in a bowl next to her bed, topped up with pond water and fresh weed. Everyone tells her that tadpoles aren\'t really pets, but the Little Princess doesn\'t really care - until she wakes up to a big surprise!', NULL, 403, 1, 2, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(675, 'I Don\'t Want a Cold!', 'I-Don\'t-Want-a-Cold!', 'http://books.google.com/books/content?id=XqREAAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=XqREAAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842706558', 'It\'s the day of the royal picnic! The Little Princess has been looking forward to it for ages. When she wakes up that morning with a nasty, snuffly cold, she is determined not to let it spoil her fun - even if it means bending the rules a little!', NULL, 403, 1, 2, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(676, 'I Want to be a Pirate!', 'I-Want-to-be-a-Pirate!', 'http://books.google.com/books/content?id=4mQzPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=4mQzPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781842707661', 'The Little Princess has decided that she wants to be a pirate, and nobody in the kingdom is safe. After all, pirates are naughty, and the Little Princess is determined to be a proper pirate. But that means she will have to eat real pirate food and do real pirate jobs as well, and the Little Princess isn’t so keen on that.', NULL, 403, 1, 2, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(677, 'Daddy Pig\'s Office', 'Daddy-Pig\'s-Office', '', '', '9781409304302', 'It\'s a very special day for Peppa and George-they\'re going in to work with Daddy Pig. Find out what adventures they have in his office.', NULL, 404, 1, 2, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(678, 'Disney Princess: My Mega Book of Fun', 'Disney-Princess:-My-Mega-Book-of-Fun', '', '', '9781788108386', '', NULL, NULL, 1, 2, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(679, 'Disney Pixar: My Mega Book of Fun', 'Disney-Pixar:-My-Mega-Book-of-Fun', '', '', '9781788108416', '', NULL, NULL, 1, 2, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(680, 'Ted\'s Shed', 'Ted\'s-Shed', 'http://books.google.com/books/content?id=5ZrzvQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=5ZrzvQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474920483', '', NULL, 405, 1, 2, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(681, 'Spot\'s New Friend', 'Spot\'s-New-Friend', 'http://books.google.com/books/content?id=L9tytwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=L9tytwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241351666', 'Spot\'s going to Australia! For the first time ever, Spot is setting off on some special Australian adventures, meeting new friends and learning new things. In this story Spot is having fun at the beach, trying out surfing - and learning it\'s not as easy as it looks! A fantastic first experiences story - perfect for reassuring little ones who are trying new things.', NULL, 406, 1, 2, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(682, 'Spot Goes to the Swimming Pool', 'Spot-Goes-to-the-Swimming-Pool', 'http://books.google.com/books/content?id=tUcftAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=tUcftAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241327074', 'Have fun with Spot and discover new experiences together. Spot is going to the swimming pool with Mum and his smart new rubber ring. At first he feels a little nervous, but with a bit of support from Mum and friends soon Spot is splashing about and having a whale of a time!', NULL, 406, 1, 2, '2021-02-28 19:52:49', '2021-02-28 19:52:49'),
(683, 'Spot Plays Football', 'Spot-Plays-Football', 'http://books.google.com/books/content?id=WGM3swEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=WGM3swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780241327050', 'It\'s a lovely day and Spot and his friends are ready to play football together. Spot and Helen are captains of the red and blue teams, but who will score the most goals? Join the group of animal friends and the much-loved Spot as they learn it\'s the taking part that counts - and, most importantly, have fun!', NULL, 407, 1, 2, '2021-02-28 19:52:49', '2021-02-28 19:52:49'),
(684, 'Spot Loves Bedtime', 'Spot-Loves-Bedtime', 'http://books.google.com/books/content?id=oIaFjgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=oIaFjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141362861', '', NULL, 406, 1, 2, '2021-02-28 19:52:49', '2021-02-28 19:52:49'),
(685, 'Get Well Soon, Spot', 'Get-Well-Soon,-Spot', 'http://books.google.com/books/content?id=YPNFvgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=YPNFvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141373140', 'Spot isn\'t feeling well and that makes him sad. But with a little help from Mum and his friends, Spot discovers that being poorly has its perks.', NULL, 406, 1, 2, '2021-02-28 19:52:49', '2021-02-28 19:52:49'),
(686, 'Spot Goes to the Fire Station', 'Spot-Goes-to-the-Fire-Station', 'http://books.google.com/books/content?id=oFoZMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=oFoZMQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780141375984', 'Join Spot, the classic character and beloved puppy, as he visits the fire station! Spot wants to be a firefighter, just like his grandpa. When he visits Grandpa at the fire station, Spot slides down the pole, climbs the ladder, soaks Grandpa with the hose, and finally sounds the noisy siren. Spot thinks he\'s a very good firefighter, but Grandpa isn\'t so sure! This entertaining story, featuring the much-loved Spot, is a perfect introduction to the excitement of the fire station.', NULL, 406, 1, 2, '2021-02-28 19:52:50', '2021-02-28 19:52:50'),
(687, 'Spot\'s Toys', 'Spot\'s-Toys', 'http://books.google.com/books/content?id=Gy_6YQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Gy_6YQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723266945', 'Spot loves all his toys, but which is his favourite? Find out when Spot\'s friends come over to play in this bright and simple story book for the very young.', NULL, 406, 1, 2, '2021-02-28 19:52:50', '2021-02-28 19:52:50'),
(688, 'Spot Goes Shopping', 'Spot-Goes-Shopping', 'http://books.google.com/books/content?id=E9ZqngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=E9ZqngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9780723286424', 'Join Spot and his mum in a brand new story as they go on a shopping trip to the supermarket. Spot loves helping, and he has lots of ideas for what they should buy. Shopping with Mum is lots of fun!', NULL, 406, 1, 2, '2021-02-28 19:52:51', '2021-02-28 19:52:51'),
(689, 'Capitain Mac', 'Capitain-Mac', '', '', '9781409572060', '', NULL, NULL, 1, 2, '2021-02-28 19:52:51', '2021-02-28 19:52:51'),
(690, 'The Perfect Pet', 'The-Perfect-Pet', '', '', '9781409572077', '', NULL, NULL, 1, 2, '2021-02-28 19:52:51', '2021-02-28 19:52:51'),
(691, 'A Frigth in the Nigth', 'A-Frigth-in-the-Nigth', '', '', '9781409572107', '', NULL, NULL, 1, 2, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(692, 'The Deep Dark Woods', 'The-Deep-Dark-Woods', '', '', '9781409572114', '', NULL, NULL, 1, 2, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(693, 'The Greedy Dog', 'The-Greedy-Dog', '', '', '9781409555797', '', NULL, NULL, 1, 2, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(694, 'Anansi and the Bag of Wisdom', 'Anansi-and-the-Bag-of-Wisdom', '', '', '9781409530916', '', NULL, NULL, 1, 2, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(695, '3 Wishes', '3-Wishes', 'http://books.google.com/books/content?id=hicuywAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=hicuywAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409505754', 'A tale of three wishes that bring a poor farmer and his wife nothing but trouble. If you were given three wishes, what would you wish for? It\'s best to think twice, as Ned and Nat find out in this story. This charming retelling of a traditional European folktale has easy-to-read text and fun puzzles to try.', NULL, 408, 1, 2, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(696, 'The Ant and the Grasshopper', 'The-Ant-and-the-Grasshopper', 'http://books.google.com/books/content?id=ju-HpwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ju-HpwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409500766', 'Ant and Grasshopper can\'t agree over how to spend the summer. Who will be right when winter comes? This charming retelling of Aesop\'s classic fable has easy to read text and fun puzzles to try after the story.', NULL, 409, 1, 2, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(697, 'King Midas and the Gold', 'King-Midas-and-the-Gold', 'http://books.google.com/books/content?id=hT1CAwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=hT1CAwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409501084', 'King Midas loves gold, but his greed soon gets him into trouble. This lively retelling of a classic Greek myth has easy to read text and fun puzzles to try after the story.', NULL, 410, 1, 2, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(698, 'The Lion and the Mouse', 'The-Lion-and-the-Mouse', 'http://books.google.com/books/content?id=oV9iNAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=oV9iNAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409500483', '\"It\'s tough in the wild, whether you\'re a tiny mouse or a big, scary lion. But friends can be found in the strangest of places.\"--P. [4] of cover.', NULL, 409, 1, 2, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(699, 'The Daydreamer', 'The-Daydreamer', 'http://books.google.com/books/content?id=75v4jgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=75v4jgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409519348', '', NULL, NULL, 1, 2, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(700, 'Meet the Dragons', 'Meet-the-Dragons', '', '', '9781338567960', '', NULL, 411, 1, 2, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(701, 'Can I Play with a Monster?', 'Can-I-Play-with-a-Monster?', '', '', '9781338568059', '', NULL, 412, 1, 2, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(702, 'Noisy Animals', 'Noisy-Animals', '', '', '9781338568240', '', NULL, 411, 1, 2, '2021-02-28 19:52:54', '2021-02-28 19:52:54'),
(703, 'Little Unicon\'s Dream', 'Little-Unicon\'s-Dream', '', '', '9781338568288', '', NULL, 411, 1, 2, '2021-02-28 19:52:54', '2021-02-28 19:52:54'),
(704, 'Meet the Farmers', 'Meet-the-Farmers', '', '', '9781338567779', '', NULL, 412, 1, 2, '2021-02-28 19:52:54', '2021-02-28 19:52:54'),
(705, 'Who Lives Here?', 'Who-Lives-Here?', '', '', '9781338568004', '', NULL, 411, 1, 2, '2021-02-28 19:52:55', '2021-02-28 19:52:55'),
(706, 'Puppy Paints a Picture', 'Puppy-Paints-a-Picture', '', '', '9781338568073', '', NULL, 411, 1, 2, '2021-02-28 19:52:55', '2021-02-28 19:52:55'),
(707, 'Mermaid School', 'Mermaid-School', '', '', '9781338568301', '', NULL, 411, 1, 2, '2021-02-28 19:52:56', '2021-02-28 19:52:56'),
(708, 'I Can Swim', 'I-Can-Swim', '', '', '9781338568066', '', NULL, 411, 1, 2, '2021-02-28 19:52:56', '2021-02-28 19:52:56'),
(709, 'Llama\'s Busy Week', 'Llama\'s-Busy-Week', '', '', '9781338568097', '', NULL, 414, 1, 2, '2021-02-28 19:52:56', '2021-02-28 19:52:56'),
(710, 'Animals Phonics Set', 'Animals-Phonics-Set', 'http://books.google.com/books/content?id=eAzTtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=eAzTtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338261912', '', NULL, 415, 1, 2, '2021-02-28 19:52:57', '2021-02-28 19:52:57'),
(711, 'Apes Great Escape', 'Apes-Great-Escape', 'http://books.google.com/books/content?id=Gk7ntAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Gk7ntAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474922111', 'A fun story, specially written to develop phonemic awareness, with wonderful illustrations by David Semple. This book is ideal both for reading aloud and for children who are beginning to read for themselves. Helps young children learn to recognise the basic sounds that make up the English language - vital for learning to read. Part of a series of funny phonics readers that children will love. Guidance notes for parents are included at the back of the book.', NULL, 416, 1, 2, '2021-02-28 19:52:59', '2021-02-28 19:52:59'),
(712, 'Kangaroo at the Zoo', 'Kangaroo-at-the-Zoo', 'http://books.google.com/books/content?id=PUNNjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=PUNNjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409580447', 'This is a hilarious new addition to the \'Phonic Readers\' series. With simple rhyming text and phonic repetition specially designed to develop essential language and early reading skills. Guidance notes for parents are included at the back of the book.', NULL, 417, 1, 2, '2021-02-28 19:52:59', '2021-02-28 19:52:59'),
(713, 'Lizard in a Blizzard', 'Lizard-in-a-Blizzard', 'http://books.google.com/books/content?id=3UAItgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3UAItgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474946582', 'A cloud is blocking the sun and Lizard is determined to move it... But lizards are not wizards whatever Lizard thinks. This fun rhyming story, specially written to develop phonemic awareness, has wonderful illustrations by David Semple. The book is ideal both for reading aloud and for children who are beginning to read for themselves. Helps young children learn to recognise the basic sounds that make up the English language - vital for learning to read. Part of a series of funny phonics readers that children will love. Guidance notes for parents are included at the back of the book.', NULL, 417, 1, 2, '2021-02-28 19:53:00', '2021-02-28 19:53:00'),
(714, 'Flamingo Plays Bingo', 'Flamingo-Plays-Bingo', 'http://books.google.com/books/content?id=XYFDtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=XYFDtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474946575', 'Flamingo can\'t wait to join in the jungle bingo game. One, by one, she crosses off the numbers on her card - she needs just one more to win the surprise prize. But when a sneeze from Elephant sees the last ball go flying, the chase for the winning number is on... A fun addition to the popular Phonics Readers series, featuring \'on trend\' animal, the colourful flamingo. As well as the usual emphasis on language, this title also helps encourage number recognition. David Semple\'s fresh, modern illustrations are packed with hilarious detail that make reading fun.', NULL, 416, 1, 2, '2021-02-28 19:53:01', '2021-02-28 19:53:01'),
(715, 'Phonics Readers: Raccoon on the Moon', 'Phonics-Readers:-Raccoon-on-the-Moon', 'http://books.google.com/books/content?id=w2nqrQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=w2nqrQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409580409', 'A lively story with humorous illustrations, ideal for children who are beginning to read for themselves, or for reading aloud together. With simple rhyming text and phonic repetition, specially designed to develop essential language and early reading skills. Guidance notes for parents are included at the back of the book. Helps young children learn to recognise the basic sounds that make up the English language âe\" vital for learning to read. Part of a series of funny phonics readers that children will love.', NULL, 416, 1, 2, '2021-02-28 19:53:01', '2021-02-28 19:53:01'),
(716, 'Cow Takes a Bow', 'Cow-Takes-a-Bow', 'http://books.google.com/books/content?id=z8eXMQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=z8eXMQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409550518', 'Billedbog. When Brown Cow visits the circus, she puts on a surprise performance. She slips, trips, drops things and loses her hat - but the ringmaster is thrilled!', NULL, 416, 1, 2, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(717, 'Snail Brings the Mail', 'Snail-Brings-the-Mail', 'http://books.google.com/books/content?id=DL2-MQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=DL2-MQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409550549', 'Billedbog. Reliable snail never fails to deliver the mail, but can he make it on time?', NULL, 416, 1, 2, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(718, 'Bee Makes Tea', 'Bee-Makes-Tea', 'http://books.google.com/books/content?id=Ij0FngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Ij0FngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409550501', 'With simple rhyming text and phonic repetition, this book is specially designed to develop essential language and early reading skills.', NULL, 417, 1, 2, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(719, 'Underpants for Ants', 'Underpants-for-Ants', 'http://books.google.com/books/content?id=0unCmAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0unCmAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409557449', 'This funny story is told with rhythmic text and phonic repetition, and is suitable for reading aloud or beginner readers. The book helps young children learn to recognize the basic sounds that make up the English language - vital for learning to read.', NULL, 416, 1, 2, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(720, 'Croc Gets a Shock', 'Croc-Gets-a-Shock', 'http://books.google.com/books/content?id=9E-olQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9E-olQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409550525', 'Croc is late for everything, even her own birthday party. She misses the bus, she can\'t buy new shoes because the store is closed for lunch, and what\'s worse, she has the hiccups. With simple rhyming text and phonic repetition specially designed to develop essential language and early reading skills.', NULL, 418, 1, 2, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(721, 'Crow in the Snow', 'Crow-in-the-Snow', 'http://books.google.com/books/content?id=aZjmnQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=aZjmnQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409550532', 'With simple rhyming text and phonic repetition, this book is specially designed to develop essential language and early reading skills.', NULL, 417, 1, 2, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(722, 'Seal at the Wheel', 'Seal-at-the-Wheel', 'http://books.google.com/books/content?id=k3FgswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=k3FgswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474922081', 'Seal has bought herself a new motor boat, Hippo is trying out his new water skis and Seal is causing chaos! A fun rhyming story, specially written to develop phonemic awareness, with wonderful illustrations by David Semple. This book is ideal both for reading aloud and for children who are beginning to read for themselves. Helps young children learn to recognise the basic sounds that make up the English language - vital for learning to read. Part of a series of funny phonics readers that children will love. Guidance notes for parents are included at the back of the book.', NULL, 417, 1, 2, '2021-02-28 19:53:03', '2021-02-28 19:53:03'),
(723, 'Hyena Ballerina', 'Hyena-Ballerina', 'http://books.google.com/books/content?id=GcwEMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=GcwEMQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474918473', 'A lively story with humorous illustrations, ideal for children who are beginning to read for themselves, or for reading aloud together. With simple rhyming text and phonic repetition specially designed to develop essential language and early reading skills. Guidance notes for parents are included at the back of the book.', NULL, 416, 1, 2, '2021-02-28 19:53:04', '2021-02-28 19:53:04'),
(724, 'Giraffe in the Bath', 'Giraffe-in-the-Bath', 'http://books.google.com/books/content?id=ClbKAQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=ClbKAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474918480', 'A lively story with humorous illustrations, ideal for children who are beginning to read for themselves, or for reading aloud together. With simple rhyming text and phonic repetition specially designed to develop essential language and early reading skills. Guidance notes for parents are included at the back of the book.', NULL, 416, 1, 2, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(725, 'Goat in a Boat', 'Goat-in-a-Boat', 'http://books.google.com/books/content?id=x9TUoQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=x9TUoQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409580416', 'A lively story with humorous illustrations, ideal for children who are beginning to read for themselves, or for reading aloud together. With simple rhyming text and phonic repetition specially designed to develop essential language and early reading skills. Also includes guidance notes for parents at the back of the book.', NULL, 417, 1, 2, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(726, 'Bug in a Rug', 'Bug-in-a-Rug', 'http://books.google.com/books/content?id=T63KsgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=T63KsgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781409580430', 'A simple but entertaining rhyming story with delightful illustrations, perfect for sharing with young children, or for children who are starting to read alone.', NULL, 416, 1, 2, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(727, 'Spider in a Glider', 'Spider-in-a-Glider', 'http://books.google.com/books/content?id=JvOeswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=JvOeswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474922104', 'What can Spider get up to in a glider? One thing\'s for sure. She\'ll end up saving the day. A fun rhyming story, specially written to develop phonemic awareness, with lively illustrations by David Semple. This book is ideal both for reading aloud and for children who are beginning to read for themselves. Helps young children learn to recognise the basic sounds that make up the English language - vital for learning to read. Part of a series of funny phonics readers that children will love. Guidance notes for parents are included at the back of the book.', NULL, 417, 1, 2, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(728, 'The Lion King', 'The-Lion-King', '', '', '9781789050073', '', NULL, NULL, 1, 2, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(729, 'The Little Mermaid', 'The-Little-Mermaid-9781786707598', '', '', '9781786707598', '', NULL, NULL, 1, 2, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(730, 'Unicorn Universe', 'Unicorn-Universe', '', '', '9781789470819', '', NULL, NULL, 1, 2, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(731, 'Lift-the-Flap First Questions and Answers How Do I See?', 'Lift-the-Flap-First-Questions-and-Answers-How-Do-I-See?', 'http://books.google.com/books/content?id=0ndbDQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=0ndbDQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474917926', 'A brilliant introduction to not only how we see but all the senses; how we see, hear, smell, taste and feel things, based on lots of of the sorts of questions raised by inquisitive young minds. The colourful illustrations, large and simple text and chunky flaps reveal the answers to questions, exploring not only vision but other senses such as smell and hearing.', NULL, 18, 1, 2, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(732, 'Frozen', 'Frozen', 'http://books.google.com/books/content?id=3DgGjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=3DgGjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781474821605', '', NULL, 419, 1, 2, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(733, 'Disney Frozen a Frozen Adventure', 'Disney-Frozen-a-Frozen-Adventure', 'http://books.google.com/books/content?id=Yxo6rgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=Yxo6rgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781472373656', 'Join Princesses Anna and Elsa on a Frozen adventure in this beautiful picture book.', NULL, NULL, 1, 2, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(734, 'I Love You, Baby Shark: Doo Doo Doo Doo Doo Doo', 'I-Love-You,-Baby-Shark:-Doo-Doo-Doo-Doo-Doo-Doo', 'http://books.google.com/books/content?id=nB4exAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=nB4exAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781338606348', 'Sing and dance along with Baby Shark in this story full of kisses, snuggles, and hugs -- the follow-up to the bestselling picture book! How does Baby Shark say \"I love you\"? No matter where you swim, near or far, My heart will be with you, wherever you are. In the light of day, to the night so dark, I will always love you, Baby Shark! Sing, dance, and read along to this brand-new love-filled song, featuring Baby Shark, Mama Shark, Daddy Shark, and more underwater friends. Perfect for bedtime, Valentine\'s Day, or any love-filled occasion, Kids and caregivers alike will delight in this silly illustrated story, full of funny, eye-popping illustrations and a catchy tune you won\'t be able to stop singing. Also features helpful picture guides so readers can dance along, act out the hand and foot movements, and develop their fine motor skills. Snuggle up with your little one and as you laugh, sing, and dance along to this charming and catchy read-aloud!', NULL, NULL, 1, 2, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(735, 'Time for Bed, Little One', 'Time-for-Bed,-Little-One', '', '', '9781848694583', '\"The sun is rising and Little Fox should be settling down to bed. But he doesn\'t want to sleep all through the day, when everyone else is having fun! ...\" --back cover.', NULL, 420, 1, 2, '2021-02-28 19:53:08', '2021-02-28 19:53:08'),
(736, 'Super Pants!', 'Super-Pants!', 'http://books.google.com/books/content?id=9WyDtAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'http://books.google.com/books/content?id=9WyDtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '9781848698406', 'When little Lola gets a pair of SUPER PANTS for Christmas she is so excited! When her daddy gets a matching costume, he knows he\'s in for a long day. \"I\'m a pretty good superhero!\" cries Lola. \"But... my daddy is the best of all!\" A brilliant book for all budding superheroes (and their super dads of course!).', NULL, 385, 1, 2, '2021-02-28 19:53:08', '2021-02-28 19:53:08'),
(737, 'Penny and Pup', 'Penny-and-Pup', '', '', '9781848697799', 'Penny the puppy has a floppy toy pup which she chews and loves to bits. With Pup for company, Penny doesn\'t need friends like Henry the cat, Betsy the rabbit, or Matt the fox cub. Then one day Penny loses Pup and she doesn\'t know who to turn to for help.', NULL, 421, 1, 2, '2021-02-28 19:53:08', '2021-02-28 19:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_fails`
--

CREATE TABLE `product_fails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isbn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_fails`
--

INSERT INTO `product_fails` (`id`, `isbn`, `created_at`, `updated_at`) VALUES
(1, '9781472250841', '2021-02-28 19:55:53', '2021-02-28 19:55:53'),
(2, '9789953696874', '2021-02-28 19:55:53', '2021-02-28 19:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` smallint(6) DEFAULT NULL,
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gredient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `product_id`, `color`, `header`, `tag`, `subheader`, `gredient`, `created_at`, `updated_at`) VALUES
(1, 69, NULL, ' <div class=\"header\">LOVE OF</div>', NULL, '<div class=\"sub-header\">STORY</div>', 'linear-gradient(294deg, rgb(46, 102, 139) 0%, rgb(54, 119, 162) 100%)', NULL, NULL),
(2, 180, NULL, ' <div class=\"header\">THIS IS GOING </div>', NULL, '<div class=\"sub-header\">TO HURT</div>', 'linear-gradient(294deg, rgb(46, 102, 139) 0%, rgb(54, 119, 162) 100%)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(2, 2, 3, '2021-02-28 19:50:13', '2021-02-28 19:50:13'),
(3, 3, 3, '2021-02-28 19:50:14', '2021-02-28 19:50:14'),
(4, 4, 3, '2021-02-28 19:50:14', '2021-02-28 19:50:14'),
(5, 5, 3, '2021-02-28 19:50:14', '2021-02-28 19:50:14'),
(6, 6, 3, '2021-02-28 19:50:14', '2021-02-28 19:50:14'),
(7, 7, 3, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(8, 8, 3, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(9, 9, 3, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(10, 10, 3, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(11, 11, 3, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(12, 12, 3, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(13, 13, 3, '2021-02-28 19:50:15', '2021-02-28 19:50:15'),
(14, 14, 3, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(15, 15, 3, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(16, 16, 3, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(17, 17, 3, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(18, 18, 3, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(19, 19, 3, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(20, 20, 3, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(21, 21, 3, '2021-02-28 19:50:16', '2021-02-28 19:50:16'),
(22, 22, 3, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(23, 23, 3, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(24, 24, 3, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(25, 25, 3, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(26, 26, 3, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(27, 27, 3, '2021-02-28 19:50:17', '2021-02-28 19:50:17'),
(28, 28, 3, '2021-02-28 19:50:18', '2021-02-28 19:50:18'),
(29, 29, 3, '2021-02-28 19:50:18', '2021-02-28 19:50:18'),
(30, 30, 3, '2021-02-28 19:50:18', '2021-02-28 19:50:18'),
(31, 31, 3, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(32, 32, 3, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(33, 33, 3, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(34, 34, 3, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(35, 35, 3, '2021-02-28 19:50:19', '2021-02-28 19:50:19'),
(36, 36, 3, '2021-02-28 19:50:20', '2021-02-28 19:50:20'),
(37, 37, 3, '2021-02-28 19:50:20', '2021-02-28 19:50:20'),
(38, 38, 3, '2021-02-28 19:50:20', '2021-02-28 19:50:20'),
(39, 39, 3, '2021-02-28 19:50:20', '2021-02-28 19:50:20'),
(40, 40, 3, '2021-02-28 19:50:21', '2021-02-28 19:50:21'),
(41, 41, 3, '2021-02-28 19:50:21', '2021-02-28 19:50:21'),
(42, 42, 3, '2021-02-28 19:50:21', '2021-02-28 19:50:21'),
(43, 43, 3, '2021-02-28 19:50:22', '2021-02-28 19:50:22'),
(44, 44, 3, '2021-02-28 19:50:22', '2021-02-28 19:50:22'),
(45, 45, 3, '2021-02-28 19:50:22', '2021-02-28 19:50:22'),
(46, 46, 3, '2021-02-28 19:50:23', '2021-02-28 19:50:23'),
(47, 47, 3, '2021-02-28 19:50:23', '2021-02-28 19:50:23'),
(48, 48, 3, '2021-02-28 19:50:23', '2021-02-28 19:50:23'),
(49, 49, 3, '2021-02-28 19:50:23', '2021-02-28 19:50:23'),
(50, 50, 3, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(51, 51, 3, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(52, 52, 3, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(53, 53, 3, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(54, 54, 3, '2021-02-28 19:50:24', '2021-02-28 19:50:24'),
(55, 55, 3, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(56, 56, 3, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(57, 57, 3, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(58, 58, 3, '2021-02-28 19:50:25', '2021-02-28 19:50:25'),
(59, 59, 3, '2021-02-28 19:50:26', '2021-02-28 19:50:26'),
(60, 60, 3, '2021-02-28 19:50:26', '2021-02-28 19:50:26'),
(61, 61, 3, '2021-02-28 19:50:26', '2021-02-28 19:50:26'),
(62, 62, 3, '2021-02-28 19:50:27', '2021-02-28 19:50:27'),
(63, 63, 3, '2021-02-28 19:50:27', '2021-02-28 19:50:27'),
(64, 64, 3, '2021-02-28 19:50:27', '2021-02-28 19:50:27'),
(65, 65, 3, '2021-02-28 19:50:27', '2021-02-28 19:50:27'),
(66, 66, 3, '2021-02-28 19:50:28', '2021-02-28 19:50:28'),
(67, 67, 3, '2021-02-28 19:50:28', '2021-02-28 19:50:28'),
(68, 68, 3, '2021-02-28 19:50:28', '2021-02-28 19:50:28'),
(69, 69, 3, '2021-02-28 19:50:28', '2021-02-28 19:50:28'),
(70, 70, 3, '2021-02-28 19:50:29', '2021-02-28 19:50:29'),
(71, 71, 3, '2021-02-28 19:50:29', '2021-02-28 19:50:29'),
(72, 72, 3, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(73, 73, 3, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(74, 74, 3, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(75, 75, 3, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(76, 76, 3, '2021-02-28 19:50:30', '2021-02-28 19:50:30'),
(77, 77, 3, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(78, 78, 3, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(79, 79, 3, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(80, 80, 3, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(81, 81, 3, '2021-02-28 19:50:31', '2021-02-28 19:50:31'),
(82, 82, 3, '2021-02-28 19:50:32', '2021-02-28 19:50:32'),
(83, 83, 3, '2021-02-28 19:50:32', '2021-02-28 19:50:32'),
(84, 84, 3, '2021-02-28 19:50:32', '2021-02-28 19:50:32'),
(85, 85, 3, '2021-02-28 19:50:32', '2021-02-28 19:50:32'),
(86, 86, 3, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(87, 87, 3, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(88, 88, 3, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(89, 89, 3, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(90, 90, 3, '2021-02-28 19:50:33', '2021-02-28 19:50:33'),
(91, 91, 3, '2021-02-28 19:50:34', '2021-02-28 19:50:34'),
(92, 92, 3, '2021-02-28 19:50:34', '2021-02-28 19:50:34'),
(93, 93, 3, '2021-02-28 19:50:34', '2021-02-28 19:50:34'),
(94, 94, 3, '2021-02-28 19:50:35', '2021-02-28 19:50:35'),
(95, 95, 3, '2021-02-28 19:50:35', '2021-02-28 19:50:35'),
(96, 96, 3, '2021-02-28 19:50:35', '2021-02-28 19:50:35'),
(97, 97, 3, '2021-02-28 19:50:35', '2021-02-28 19:50:35'),
(98, 98, 3, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(99, 99, 3, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(100, 100, 3, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(101, 101, 3, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(102, 102, 3, '2021-02-28 19:50:36', '2021-02-28 19:50:36'),
(103, 103, 3, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(104, 104, 3, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(105, 105, 3, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(106, 106, 3, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(107, 107, 3, '2021-02-28 19:50:37', '2021-02-28 19:50:37'),
(108, 108, 3, '2021-02-28 19:50:38', '2021-02-28 19:50:38'),
(109, 109, 3, '2021-02-28 19:50:38', '2021-02-28 19:50:38'),
(110, 110, 3, '2021-02-28 19:50:38', '2021-02-28 19:50:38'),
(111, 111, 3, '2021-02-28 19:50:39', '2021-02-28 19:50:39'),
(112, 112, 3, '2021-02-28 19:50:39', '2021-02-28 19:50:39'),
(113, 113, 3, '2021-02-28 19:50:39', '2021-02-28 19:50:39'),
(114, 114, 3, '2021-02-28 19:50:40', '2021-02-28 19:50:40'),
(115, 115, 3, '2021-02-28 19:50:40', '2021-02-28 19:50:40'),
(116, 116, 3, '2021-02-28 19:50:40', '2021-02-28 19:50:40'),
(117, 117, 3, '2021-02-28 19:50:40', '2021-02-28 19:50:40'),
(118, 118, 3, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(119, 119, 3, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(120, 120, 3, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(121, 121, 3, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(122, 122, 3, '2021-02-28 19:50:41', '2021-02-28 19:50:41'),
(123, 123, 3, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(124, 124, 3, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(125, 125, 3, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(126, 126, 3, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(127, 127, 3, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(128, 128, 3, '2021-02-28 19:50:42', '2021-02-28 19:50:42'),
(129, 129, 3, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(130, 130, 3, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(131, 131, 3, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(132, 132, 3, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(133, 133, 3, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(134, 134, 3, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(135, 135, 3, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(136, 136, 3, '2021-02-28 19:50:43', '2021-02-28 19:50:43'),
(137, 137, 3, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(138, 138, 3, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(139, 139, 3, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(140, 140, 3, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(141, 141, 3, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(142, 142, 3, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(143, 143, 3, '2021-02-28 19:50:44', '2021-02-28 19:50:44'),
(144, 144, 3, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(145, 145, 3, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(146, 146, 3, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(147, 147, 3, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(148, 148, 3, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(149, 149, 3, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(150, 150, 3, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(151, 151, 3, '2021-02-28 19:50:45', '2021-02-28 19:50:45'),
(152, 152, 3, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(153, 153, 3, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(154, 154, 3, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(155, 155, 3, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(156, 156, 3, '2021-02-28 19:50:46', '2021-02-28 19:50:46'),
(157, 157, 3, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(158, 158, 3, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(159, 159, 3, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(160, 160, 3, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(161, 161, 3, '2021-02-28 19:50:47', '2021-02-28 19:50:47'),
(162, 162, 3, '2021-02-28 19:50:48', '2021-02-28 19:50:48'),
(163, 163, 3, '2021-02-28 19:50:48', '2021-02-28 19:50:48'),
(164, 164, 3, '2021-02-28 19:50:48', '2021-02-28 19:50:48'),
(165, 165, 3, '2021-02-28 19:50:48', '2021-02-28 19:50:48'),
(166, 166, 3, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(167, 167, 3, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(168, 168, 3, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(169, 169, 3, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(170, 170, 3, '2021-02-28 19:50:49', '2021-02-28 19:50:49'),
(171, 171, 3, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(172, 172, 3, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(173, 173, 3, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(174, 174, 3, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(175, 175, 3, '2021-02-28 19:50:50', '2021-02-28 19:50:50'),
(176, 176, 3, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(177, 177, 3, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(178, 178, 3, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(179, 179, 3, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(180, 180, 3, '2021-02-28 19:50:51', '2021-02-28 19:50:51'),
(181, 181, 3, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(182, 182, 3, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(183, 183, 3, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(184, 184, 3, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(185, 185, 3, '2021-02-28 19:50:52', '2021-02-28 19:50:52'),
(186, 186, 3, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(187, 187, 3, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(188, 188, 3, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(189, 189, 3, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(190, 190, 3, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(191, 191, 3, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(192, 192, 3, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(193, 193, 3, '2021-02-28 19:50:53', '2021-02-28 19:50:53'),
(194, 194, 3, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(195, 195, 3, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(196, 196, 3, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(197, 197, 3, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(198, 198, 3, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(199, 199, 3, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(200, 200, 3, '2021-02-28 19:50:54', '2021-02-28 19:50:54'),
(201, 201, 3, '2021-02-28 19:50:55', '2021-02-28 19:50:55'),
(202, 202, 3, '2021-02-28 19:50:55', '2021-02-28 19:50:55'),
(203, 203, 3, '2021-02-28 19:50:55', '2021-02-28 19:50:55'),
(204, 204, 3, '2021-02-28 19:50:55', '2021-02-28 19:50:55'),
(205, 205, 3, '2021-02-28 19:50:55', '2021-02-28 19:50:55'),
(206, 206, 3, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(207, 207, 3, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(208, 208, 3, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(209, 209, 3, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(210, 210, 3, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(211, 211, 3, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(212, 212, 3, '2021-02-28 19:50:56', '2021-02-28 19:50:56'),
(213, 213, 3, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(214, 214, 3, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(215, 215, 3, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(216, 216, 3, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(217, 217, 3, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(218, 218, 3, '2021-02-28 19:50:57', '2021-02-28 19:50:57'),
(219, 219, 3, '2021-02-28 19:50:58', '2021-02-28 19:50:58'),
(220, 220, 3, '2021-02-28 19:50:58', '2021-02-28 19:50:58'),
(221, 221, 3, '2021-02-28 19:50:58', '2021-02-28 19:50:58'),
(222, 222, 3, '2021-02-28 19:50:58', '2021-02-28 19:50:58'),
(223, 223, 3, '2021-02-28 19:50:59', '2021-02-28 19:50:59'),
(224, 224, 3, '2021-02-28 19:50:59', '2021-02-28 19:50:59'),
(225, 225, 3, '2021-02-28 19:50:59', '2021-02-28 19:50:59'),
(226, 226, 3, '2021-02-28 19:50:59', '2021-02-28 19:50:59'),
(227, 227, 3, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(228, 228, 3, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(229, 229, 3, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(230, 230, 3, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(231, 231, 3, '2021-02-28 19:51:00', '2021-02-28 19:51:00'),
(232, 232, 3, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(233, 233, 3, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(234, 234, 3, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(235, 235, 3, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(236, 236, 3, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(237, 237, 3, '2021-02-28 19:51:01', '2021-02-28 19:51:01'),
(238, 238, 3, '2021-02-28 19:51:02', '2021-02-28 19:51:02'),
(239, 239, 3, '2021-02-28 19:51:02', '2021-02-28 19:51:02'),
(240, 240, 3, '2021-02-28 19:51:02', '2021-02-28 19:51:02'),
(241, 241, 3, '2021-02-28 19:51:03', '2021-02-28 19:51:03'),
(242, 242, 3, '2021-02-28 19:51:03', '2021-02-28 19:51:03'),
(243, 243, 3, '2021-02-28 19:51:03', '2021-02-28 19:51:03'),
(244, 244, 3, '2021-02-28 19:51:03', '2021-02-28 19:51:03'),
(245, 245, 3, '2021-02-28 19:51:04', '2021-02-28 19:51:04'),
(246, 246, 3, '2021-02-28 19:51:04', '2021-02-28 19:51:04'),
(247, 247, 3, '2021-02-28 19:51:04', '2021-02-28 19:51:04'),
(248, 248, 3, '2021-02-28 19:51:04', '2021-02-28 19:51:04'),
(249, 249, 3, '2021-02-28 19:51:04', '2021-02-28 19:51:04'),
(250, 250, 3, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(251, 251, 3, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(252, 252, 3, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(253, 253, 3, '2021-02-28 19:51:05', '2021-02-28 19:51:05'),
(254, 254, 3, '2021-02-28 19:51:06', '2021-02-28 19:51:06'),
(255, 255, 3, '2021-02-28 19:51:06', '2021-02-28 19:51:06'),
(256, 256, 3, '2021-02-28 19:51:06', '2021-02-28 19:51:06'),
(257, 257, 3, '2021-02-28 19:51:07', '2021-02-28 19:51:07'),
(258, 258, 3, '2021-02-28 19:51:07', '2021-02-28 19:51:07'),
(259, 259, 3, '2021-02-28 19:51:07', '2021-02-28 19:51:07'),
(260, 260, 3, '2021-02-28 19:51:08', '2021-02-28 19:51:08'),
(261, 261, 3, '2021-02-28 19:51:08', '2021-02-28 19:51:08'),
(262, 262, 3, '2021-02-28 19:51:09', '2021-02-28 19:51:09'),
(263, 263, 3, '2021-02-28 19:51:09', '2021-02-28 19:51:09'),
(264, 264, 3, '2021-02-28 19:51:10', '2021-02-28 19:51:10'),
(265, 265, 3, '2021-02-28 19:51:10', '2021-02-28 19:51:10'),
(266, 266, 3, '2021-02-28 19:51:10', '2021-02-28 19:51:10'),
(267, 267, 3, '2021-02-28 19:51:11', '2021-02-28 19:51:11'),
(268, 268, 3, '2021-02-28 19:51:11', '2021-02-28 19:51:11'),
(269, 269, 3, '2021-02-28 19:51:11', '2021-02-28 19:51:11'),
(270, 270, 3, '2021-02-28 19:51:11', '2021-02-28 19:51:11'),
(271, 271, 3, '2021-02-28 19:51:12', '2021-02-28 19:51:12'),
(272, 272, 3, '2021-02-28 19:51:13', '2021-02-28 19:51:13'),
(273, 273, 3, '2021-02-28 19:51:13', '2021-02-28 19:51:13'),
(274, 274, 3, '2021-02-28 19:51:13', '2021-02-28 19:51:13'),
(275, 275, 3, '2021-02-28 19:51:14', '2021-02-28 19:51:14'),
(276, 276, 3, '2021-02-28 19:51:14', '2021-02-28 19:51:14'),
(277, 277, 3, '2021-02-28 19:51:14', '2021-02-28 19:51:14'),
(278, 278, 3, '2021-02-28 19:51:15', '2021-02-28 19:51:15'),
(279, 279, 3, '2021-02-28 19:51:16', '2021-02-28 19:51:16'),
(280, 280, 3, '2021-02-28 19:51:16', '2021-02-28 19:51:16'),
(281, 281, 3, '2021-02-28 19:51:16', '2021-02-28 19:51:16'),
(282, 282, 3, '2021-02-28 19:51:17', '2021-02-28 19:51:17'),
(283, 283, 3, '2021-02-28 19:51:18', '2021-02-28 19:51:18'),
(284, 284, 3, '2021-02-28 19:51:18', '2021-02-28 19:51:18'),
(285, 285, 3, '2021-02-28 19:51:18', '2021-02-28 19:51:18'),
(286, 286, 3, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(287, 287, 3, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(288, 288, 3, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(289, 289, 3, '2021-02-28 19:51:19', '2021-02-28 19:51:19'),
(290, 290, 3, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(291, 291, 3, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(292, 292, 3, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(293, 293, 3, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(294, 294, 3, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(295, 295, 3, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(296, 296, 3, '2021-02-28 19:51:20', '2021-02-28 19:51:20'),
(297, 297, 3, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(298, 298, 3, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(299, 299, 3, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(300, 300, 3, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(301, 301, 3, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(302, 302, 3, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(303, 303, 3, '2021-02-28 19:51:21', '2021-02-28 19:51:21'),
(304, 304, 3, '2021-02-28 19:51:22', '2021-02-28 19:51:22'),
(305, 305, 3, '2021-02-28 19:51:22', '2021-02-28 19:51:22'),
(306, 306, 3, '2021-02-28 19:51:22', '2021-02-28 19:51:22'),
(307, 307, 3, '2021-02-28 19:51:22', '2021-02-28 19:51:22'),
(308, 308, 3, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(309, 309, 3, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(310, 310, 3, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(311, 311, 3, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(312, 312, 3, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(313, 313, 3, '2021-02-28 19:51:23', '2021-02-28 19:51:23'),
(314, 314, 3, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(315, 315, 3, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(316, 316, 3, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(317, 317, 3, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(318, 318, 3, '2021-02-28 19:51:24', '2021-02-28 19:51:24'),
(319, 319, 3, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(320, 320, 3, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(321, 321, 3, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(322, 322, 3, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(323, 323, 3, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(324, 324, 3, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(325, 325, 3, '2021-02-28 19:51:25', '2021-02-28 19:51:25'),
(326, 326, 3, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(327, 327, 3, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(328, 328, 3, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(329, 329, 3, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(330, 330, 3, '2021-02-28 19:51:26', '2021-02-28 19:51:26'),
(331, 331, 3, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(332, 332, 3, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(333, 333, 3, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(334, 334, 3, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(335, 335, 3, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(336, 336, 3, '2021-02-28 19:51:27', '2021-02-28 19:51:27'),
(337, 337, 3, '2021-02-28 19:51:28', '2021-02-28 19:51:28'),
(338, 338, 3, '2021-02-28 19:51:28', '2021-02-28 19:51:28'),
(339, 339, 3, '2021-02-28 19:51:28', '2021-02-28 19:51:28'),
(340, 340, 3, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(341, 341, 3, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(342, 342, 3, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(343, 343, 3, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(344, 344, 3, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(345, 345, 3, '2021-02-28 19:51:29', '2021-02-28 19:51:29'),
(346, 346, 3, '2021-02-28 19:51:30', '2021-02-28 19:51:30'),
(347, 347, 3, '2021-02-28 19:51:30', '2021-02-28 19:51:30'),
(348, 348, 3, '2021-02-28 19:51:31', '2021-02-28 19:51:31'),
(349, 349, 3, '2021-02-28 19:51:31', '2021-02-28 19:51:31'),
(350, 350, 3, '2021-02-28 19:51:31', '2021-02-28 19:51:31'),
(351, 351, 3, '2021-02-28 19:51:31', '2021-02-28 19:51:31'),
(352, 352, 3, '2021-02-28 19:51:32', '2021-02-28 19:51:32'),
(353, 353, 3, '2021-02-28 19:51:32', '2021-02-28 19:51:32'),
(354, 354, 3, '2021-02-28 19:51:32', '2021-02-28 19:51:32'),
(355, 355, 3, '2021-02-28 19:51:32', '2021-02-28 19:51:32'),
(356, 356, 3, '2021-02-28 19:51:33', '2021-02-28 19:51:33'),
(357, 357, 3, '2021-02-28 19:51:33', '2021-02-28 19:51:33'),
(358, 358, 3, '2021-02-28 19:51:33', '2021-02-28 19:51:33'),
(359, 359, 3, '2021-02-28 19:51:33', '2021-02-28 19:51:33'),
(360, 360, 3, '2021-02-28 19:51:34', '2021-02-28 19:51:34'),
(361, 361, 3, '2021-02-28 19:51:34', '2021-02-28 19:51:34'),
(362, 362, 3, '2021-02-28 19:51:34', '2021-02-28 19:51:34'),
(363, 363, 3, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(364, 364, 3, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(365, 365, 3, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(366, 366, 3, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(367, 367, 3, '2021-02-28 19:51:35', '2021-02-28 19:51:35'),
(368, 368, 3, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(369, 369, 3, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(370, 370, 3, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(371, 371, 3, '2021-02-28 19:51:36', '2021-02-28 19:51:36'),
(372, 372, 3, '2021-02-28 19:51:37', '2021-02-28 19:51:37'),
(373, 373, 3, '2021-02-28 19:51:37', '2021-02-28 19:51:37'),
(374, 374, 3, '2021-02-28 19:51:37', '2021-02-28 19:51:37'),
(375, 375, 3, '2021-02-28 19:51:37', '2021-02-28 19:51:37'),
(376, 376, 3, '2021-02-28 19:51:38', '2021-02-28 19:51:38'),
(377, 377, 3, '2021-02-28 19:51:38', '2021-02-28 19:51:38'),
(378, 378, 3, '2021-02-28 19:51:39', '2021-02-28 19:51:39'),
(379, 379, 3, '2021-02-28 19:51:39', '2021-02-28 19:51:39'),
(380, 380, 3, '2021-02-28 19:51:40', '2021-02-28 19:51:40'),
(381, 381, 3, '2021-02-28 19:51:40', '2021-02-28 19:51:40'),
(382, 382, 3, '2021-02-28 19:51:40', '2021-02-28 19:51:40'),
(383, 383, 3, '2021-02-28 19:51:41', '2021-02-28 19:51:41'),
(384, 384, 3, '2021-02-28 19:51:41', '2021-02-28 19:51:41'),
(385, 385, 3, '2021-02-28 19:51:41', '2021-02-28 19:51:41'),
(386, 386, 3, '2021-02-28 19:51:42', '2021-02-28 19:51:42'),
(387, 387, 3, '2021-02-28 19:51:42', '2021-02-28 19:51:42'),
(388, 388, 3, '2021-02-28 19:51:42', '2021-02-28 19:51:42'),
(389, 389, 3, '2021-02-28 19:51:43', '2021-02-28 19:51:43'),
(390, 390, 3, '2021-02-28 19:51:43', '2021-02-28 19:51:43'),
(391, 391, 3, '2021-02-28 19:51:43', '2021-02-28 19:51:43'),
(392, 392, 3, '2021-02-28 19:51:44', '2021-02-28 19:51:44'),
(393, 393, 3, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(394, 394, 3, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(395, 395, 3, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(396, 396, 3, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(397, 397, 3, '2021-02-28 19:51:45', '2021-02-28 19:51:45'),
(398, 398, 3, '2021-02-28 19:51:46', '2021-02-28 19:51:46'),
(399, 399, 3, '2021-02-28 19:51:46', '2021-02-28 19:51:46'),
(400, 400, 3, '2021-02-28 19:51:47', '2021-02-28 19:51:47'),
(401, 401, 3, '2021-02-28 19:51:47', '2021-02-28 19:51:47'),
(402, 402, 3, '2021-02-28 19:51:47', '2021-02-28 19:51:47'),
(403, 403, 3, '2021-02-28 19:51:47', '2021-02-28 19:51:47'),
(404, 404, 3, '2021-02-28 19:51:48', '2021-02-28 19:51:48'),
(405, 405, 3, '2021-02-28 19:51:48', '2021-02-28 19:51:48'),
(406, 406, 3, '2021-02-28 19:51:48', '2021-02-28 19:51:48'),
(407, 407, 3, '2021-02-28 19:51:48', '2021-02-28 19:51:48'),
(408, 408, 3, '2021-02-28 19:51:49', '2021-02-28 19:51:49'),
(409, 409, 3, '2021-02-28 19:51:49', '2021-02-28 19:51:49'),
(410, 410, 3, '2021-02-28 19:51:49', '2021-02-28 19:51:49'),
(411, 411, 3, '2021-02-28 19:51:50', '2021-02-28 19:51:50'),
(412, 412, 3, '2021-02-28 19:51:50', '2021-02-28 19:51:50'),
(413, 413, 3, '2021-02-28 19:51:50', '2021-02-28 19:51:50'),
(414, 414, 3, '2021-02-28 19:51:51', '2021-02-28 19:51:51'),
(415, 415, 3, '2021-02-28 19:51:51', '2021-02-28 19:51:51'),
(416, 416, 3, '2021-02-28 19:51:52', '2021-02-28 19:51:52'),
(417, 417, 3, '2021-02-28 19:51:52', '2021-02-28 19:51:52'),
(418, 418, 3, '2021-02-28 19:51:52', '2021-02-28 19:51:52'),
(419, 419, 3, '2021-02-28 19:51:53', '2021-02-28 19:51:53'),
(420, 420, 3, '2021-02-28 19:51:53', '2021-02-28 19:51:53'),
(421, 421, 3, '2021-02-28 19:51:53', '2021-02-28 19:51:53'),
(422, 422, 3, '2021-02-28 19:51:53', '2021-02-28 19:51:53'),
(423, 423, 3, '2021-02-28 19:51:54', '2021-02-28 19:51:54'),
(424, 424, 3, '2021-02-28 19:51:55', '2021-02-28 19:51:55'),
(425, 425, 3, '2021-02-28 19:51:56', '2021-02-28 19:51:56'),
(426, 426, 3, '2021-02-28 19:51:56', '2021-02-28 19:51:56'),
(427, 427, 3, '2021-02-28 19:51:56', '2021-02-28 19:51:56'),
(428, 428, 3, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(429, 429, 3, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(430, 430, 3, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(431, 431, 3, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(432, 432, 3, '2021-02-28 19:51:57', '2021-02-28 19:51:57'),
(433, 433, 3, '2021-02-28 19:51:58', '2021-02-28 19:51:58'),
(434, 434, 3, '2021-02-28 19:51:58', '2021-02-28 19:51:58'),
(435, 435, 3, '2021-02-28 19:51:58', '2021-02-28 19:51:58'),
(436, 436, 3, '2021-02-28 19:51:58', '2021-02-28 19:51:58'),
(437, 437, 3, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(438, 438, 3, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(439, 439, 3, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(440, 440, 3, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(441, 441, 3, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(442, 442, 3, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(443, 443, 3, '2021-02-28 19:51:59', '2021-02-28 19:51:59'),
(444, 444, 3, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(445, 445, 3, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(446, 446, 3, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(447, 447, 3, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(448, 448, 3, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(449, 449, 3, '2021-02-28 19:52:00', '2021-02-28 19:52:00'),
(450, 450, 3, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(451, 451, 3, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(452, 452, 3, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(453, 453, 3, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(454, 454, 3, '2021-02-28 19:52:01', '2021-02-28 19:52:01'),
(455, 455, 3, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(456, 456, 3, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(457, 457, 3, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(458, 458, 3, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(459, 459, 3, '2021-02-28 19:52:02', '2021-02-28 19:52:02'),
(460, 460, 3, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(461, 461, 3, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(462, 462, 3, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(463, 463, 3, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(464, 464, 3, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(465, 465, 3, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(466, 466, 3, '2021-02-28 19:52:03', '2021-02-28 19:52:03'),
(467, 467, 3, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(468, 468, 3, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(469, 469, 3, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(470, 470, 3, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(471, 471, 3, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(472, 472, 3, '2021-02-28 19:52:04', '2021-02-28 19:52:04'),
(473, 473, 3, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(474, 474, 3, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(475, 475, 3, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(476, 476, 3, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(477, 477, 3, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(478, 478, 3, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(479, 479, 3, '2021-02-28 19:52:05', '2021-02-28 19:52:05'),
(480, 480, 3, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(481, 481, 3, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(482, 482, 3, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(483, 483, 3, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(484, 484, 3, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(485, 485, 3, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(486, 486, 3, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(487, 487, 3, '2021-02-28 19:52:06', '2021-02-28 19:52:06'),
(488, 488, 3, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(489, 489, 3, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(490, 490, 3, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(491, 491, 3, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(492, 492, 3, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(493, 493, 3, '2021-02-28 19:52:07', '2021-02-28 19:52:07'),
(494, 494, 3, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(495, 495, 3, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(496, 496, 3, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(497, 497, 3, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(498, 498, 3, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(499, 499, 3, '2021-02-28 19:52:08', '2021-02-28 19:52:08'),
(500, 500, 3, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(501, 501, 3, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(502, 502, 3, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(503, 503, 3, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(504, 504, 3, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(505, 505, 3, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(506, 506, 3, '2021-02-28 19:52:09', '2021-02-28 19:52:09'),
(507, 507, 3, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(508, 508, 3, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(509, 509, 3, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(510, 510, 3, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(511, 511, 3, '2021-02-28 19:52:10', '2021-02-28 19:52:10'),
(512, 512, 3, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(513, 513, 3, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(514, 514, 3, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(515, 515, 3, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(516, 516, 3, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(517, 517, 3, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(518, 518, 3, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(519, 519, 3, '2021-02-28 19:52:11', '2021-02-28 19:52:11'),
(520, 520, 3, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(521, 521, 3, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(522, 522, 3, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(523, 523, 3, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(524, 524, 3, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(525, 525, 3, '2021-02-28 19:52:12', '2021-02-28 19:52:12'),
(526, 526, 3, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(527, 527, 3, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(528, 528, 3, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(529, 529, 3, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(530, 530, 3, '2021-02-28 19:52:13', '2021-02-28 19:52:13'),
(531, 531, 3, '2021-02-28 19:52:14', '2021-02-28 19:52:14'),
(532, 532, 3, '2021-02-28 19:52:14', '2021-02-28 19:52:14'),
(533, 533, 3, '2021-02-28 19:52:14', '2021-02-28 19:52:14'),
(534, 534, 3, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(535, 535, 3, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(536, 536, 3, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(537, 537, 3, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(538, 538, 3, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(539, 539, 3, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(540, 540, 3, '2021-02-28 19:52:15', '2021-02-28 19:52:15'),
(541, 541, 3, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(542, 542, 3, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(543, 543, 3, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(544, 544, 3, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(545, 545, 3, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(546, 546, 3, '2021-02-28 19:52:16', '2021-02-28 19:52:16'),
(547, 547, 3, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(548, 548, 3, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(549, 549, 3, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(550, 550, 3, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(551, 551, 3, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(552, 552, 3, '2021-02-28 19:52:17', '2021-02-28 19:52:17'),
(553, 553, 3, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(554, 554, 3, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(555, 555, 3, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(556, 556, 3, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(557, 557, 3, '2021-02-28 19:52:18', '2021-02-28 19:52:18'),
(558, 558, 3, '2021-02-28 19:52:19', '2021-02-28 19:52:19'),
(559, 559, 3, '2021-02-28 19:52:19', '2021-02-28 19:52:19'),
(560, 560, 3, '2021-02-28 19:52:19', '2021-02-28 19:52:19'),
(561, 561, 3, '2021-02-28 19:52:19', '2021-02-28 19:52:19'),
(562, 562, 3, '2021-02-28 19:52:20', '2021-02-28 19:52:20'),
(563, 563, 3, '2021-02-28 19:52:20', '2021-02-28 19:52:20'),
(564, 564, 3, '2021-02-28 19:52:20', '2021-02-28 19:52:20'),
(565, 565, 3, '2021-02-28 19:52:21', '2021-02-28 19:52:21'),
(566, 566, 3, '2021-02-28 19:52:21', '2021-02-28 19:52:21'),
(567, 567, 3, '2021-02-28 19:52:21', '2021-02-28 19:52:21'),
(568, 568, 3, '2021-02-28 19:52:22', '2021-02-28 19:52:22'),
(569, 569, 3, '2021-02-28 19:52:22', '2021-02-28 19:52:22'),
(570, 570, 3, '2021-02-28 19:52:23', '2021-02-28 19:52:23'),
(571, 571, 3, '2021-02-28 19:52:23', '2021-02-28 19:52:23'),
(572, 572, 3, '2021-02-28 19:52:24', '2021-02-28 19:52:24'),
(573, 573, 3, '2021-02-28 19:52:24', '2021-02-28 19:52:24'),
(574, 574, 3, '2021-02-28 19:52:24', '2021-02-28 19:52:24'),
(575, 575, 3, '2021-02-28 19:52:25', '2021-02-28 19:52:25'),
(576, 576, 3, '2021-02-28 19:52:25', '2021-02-28 19:52:25'),
(577, 577, 3, '2021-02-28 19:52:26', '2021-02-28 19:52:26'),
(578, 578, 3, '2021-02-28 19:52:27', '2021-02-28 19:52:27'),
(579, 579, 3, '2021-02-28 19:52:27', '2021-02-28 19:52:27'),
(580, 580, 3, '2021-02-28 19:52:27', '2021-02-28 19:52:27'),
(581, 581, 3, '2021-02-28 19:52:27', '2021-02-28 19:52:27'),
(582, 582, 3, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(583, 583, 3, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(584, 584, 3, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(585, 585, 3, '2021-02-28 19:52:28', '2021-02-28 19:52:28'),
(586, 586, 3, '2021-02-28 19:52:29', '2021-02-28 19:52:29'),
(587, 587, 3, '2021-02-28 19:52:29', '2021-02-28 19:52:29'),
(588, 588, 3, '2021-02-28 19:52:29', '2021-02-28 19:52:29'),
(589, 589, 3, '2021-02-28 19:52:29', '2021-02-28 19:52:29'),
(590, 590, 3, '2021-02-28 19:52:30', '2021-02-28 19:52:30'),
(591, 591, 3, '2021-02-28 19:52:30', '2021-02-28 19:52:30'),
(592, 592, 3, '2021-02-28 19:52:30', '2021-02-28 19:52:30'),
(593, 593, 3, '2021-02-28 19:52:30', '2021-02-28 19:52:30'),
(594, 594, 3, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(595, 595, 3, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(596, 596, 3, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(597, 597, 3, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(598, 598, 3, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(599, 599, 3, '2021-02-28 19:52:31', '2021-02-28 19:52:31'),
(600, 600, 3, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(601, 601, 3, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(602, 602, 3, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(603, 603, 3, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(604, 604, 3, '2021-02-28 19:52:32', '2021-02-28 19:52:32'),
(605, 605, 3, '2021-02-28 19:52:33', '2021-02-28 19:52:33'),
(606, 606, 3, '2021-02-28 19:52:33', '2021-02-28 19:52:33'),
(607, 607, 3, '2021-02-28 19:52:33', '2021-02-28 19:52:33'),
(608, 608, 3, '2021-02-28 19:52:34', '2021-02-28 19:52:34'),
(609, 609, 3, '2021-02-28 19:52:34', '2021-02-28 19:52:34'),
(610, 610, 3, '2021-02-28 19:52:34', '2021-02-28 19:52:34'),
(611, 611, 3, '2021-02-28 19:52:34', '2021-02-28 19:52:34'),
(612, 612, 3, '2021-02-28 19:52:35', '2021-02-28 19:52:35'),
(613, 613, 3, '2021-02-28 19:52:35', '2021-02-28 19:52:35'),
(614, 614, 3, '2021-02-28 19:52:35', '2021-02-28 19:52:35'),
(615, 615, 3, '2021-02-28 19:52:35', '2021-02-28 19:52:35'),
(616, 616, 3, '2021-02-28 19:52:36', '2021-02-28 19:52:36'),
(617, 617, 3, '2021-02-28 19:52:36', '2021-02-28 19:52:36'),
(618, 618, 3, '2021-02-28 19:52:36', '2021-02-28 19:52:36'),
(619, 619, 3, '2021-02-28 19:52:37', '2021-02-28 19:52:37'),
(620, 620, 3, '2021-02-28 19:52:37', '2021-02-28 19:52:37'),
(621, 621, 3, '2021-02-28 19:52:37', '2021-02-28 19:52:37'),
(622, 622, 3, '2021-02-28 19:52:38', '2021-02-28 19:52:38'),
(623, 623, 3, '2021-02-28 19:52:38', '2021-02-28 19:52:38'),
(624, 624, 3, '2021-02-28 19:52:38', '2021-02-28 19:52:38'),
(625, 625, 3, '2021-02-28 19:52:38', '2021-02-28 19:52:38'),
(626, 626, 3, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(627, 627, 3, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(628, 628, 3, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(629, 629, 3, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(630, 630, 3, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(631, 631, 3, '2021-02-28 19:52:39', '2021-02-28 19:52:39'),
(632, 632, 3, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(633, 633, 3, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(634, 634, 3, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(635, 635, 3, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(636, 636, 3, '2021-02-28 19:52:40', '2021-02-28 19:52:40'),
(637, 637, 3, '2021-02-28 19:52:41', '2021-02-28 19:52:41'),
(638, 638, 3, '2021-02-28 19:52:41', '2021-02-28 19:52:41'),
(639, 639, 3, '2021-02-28 19:52:41', '2021-02-28 19:52:41'),
(640, 640, 3, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(641, 641, 3, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(642, 642, 3, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(643, 643, 3, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(644, 644, 3, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(645, 645, 3, '2021-02-28 19:52:42', '2021-02-28 19:52:42'),
(646, 646, 3, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(647, 647, 3, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(648, 648, 3, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(649, 649, 3, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(650, 650, 3, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(651, 651, 3, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(652, 652, 3, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(653, 653, 3, '2021-02-28 19:52:43', '2021-02-28 19:52:43'),
(654, 654, 3, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(655, 655, 3, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(656, 656, 3, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(657, 657, 3, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(658, 658, 3, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(659, 659, 3, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(660, 660, 3, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(661, 661, 3, '2021-02-28 19:52:44', '2021-02-28 19:52:44'),
(662, 662, 3, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(663, 663, 3, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(664, 664, 3, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(665, 665, 3, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(666, 666, 3, '2021-02-28 19:52:45', '2021-02-28 19:52:45'),
(667, 667, 3, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(668, 668, 3, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(669, 669, 3, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(670, 670, 3, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(671, 671, 3, '2021-02-28 19:52:46', '2021-02-28 19:52:46'),
(672, 672, 3, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(673, 673, 3, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(674, 674, 3, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(675, 675, 3, '2021-02-28 19:52:47', '2021-02-28 19:52:47'),
(676, 676, 3, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(677, 677, 3, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(678, 678, 3, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(679, 679, 3, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(680, 680, 3, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(681, 681, 3, '2021-02-28 19:52:48', '2021-02-28 19:52:48'),
(682, 682, 3, '2021-02-28 19:52:49', '2021-02-28 19:52:49'),
(683, 683, 3, '2021-02-28 19:52:49', '2021-02-28 19:52:49'),
(684, 684, 3, '2021-02-28 19:52:49', '2021-02-28 19:52:49'),
(685, 685, 3, '2021-02-28 19:52:49', '2021-02-28 19:52:49'),
(686, 686, 3, '2021-02-28 19:52:50', '2021-02-28 19:52:50'),
(687, 687, 3, '2021-02-28 19:52:51', '2021-02-28 19:52:51'),
(688, 688, 3, '2021-02-28 19:52:51', '2021-02-28 19:52:51'),
(689, 689, 3, '2021-02-28 19:52:51', '2021-02-28 19:52:51'),
(690, 690, 3, '2021-02-28 19:52:51', '2021-02-28 19:52:51'),
(691, 691, 3, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(692, 692, 3, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(693, 693, 3, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(694, 694, 3, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(695, 695, 3, '2021-02-28 19:52:52', '2021-02-28 19:52:52'),
(696, 696, 3, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(697, 697, 3, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(698, 698, 3, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(699, 699, 3, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(700, 700, 3, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(701, 701, 3, '2021-02-28 19:52:53', '2021-02-28 19:52:53'),
(702, 702, 3, '2021-02-28 19:52:54', '2021-02-28 19:52:54'),
(703, 703, 3, '2021-02-28 19:52:54', '2021-02-28 19:52:54'),
(704, 704, 3, '2021-02-28 19:52:55', '2021-02-28 19:52:55'),
(705, 705, 3, '2021-02-28 19:52:55', '2021-02-28 19:52:55'),
(706, 706, 3, '2021-02-28 19:52:55', '2021-02-28 19:52:55'),
(707, 707, 3, '2021-02-28 19:52:56', '2021-02-28 19:52:56'),
(708, 708, 3, '2021-02-28 19:52:56', '2021-02-28 19:52:56'),
(709, 709, 3, '2021-02-28 19:52:57', '2021-02-28 19:52:57'),
(710, 710, 3, '2021-02-28 19:52:58', '2021-02-28 19:52:58'),
(711, 711, 3, '2021-02-28 19:52:59', '2021-02-28 19:52:59'),
(712, 712, 3, '2021-02-28 19:53:00', '2021-02-28 19:53:00'),
(713, 713, 3, '2021-02-28 19:53:01', '2021-02-28 19:53:01'),
(714, 714, 3, '2021-02-28 19:53:01', '2021-02-28 19:53:01'),
(715, 715, 3, '2021-02-28 19:53:01', '2021-02-28 19:53:01'),
(716, 716, 3, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(717, 717, 3, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(718, 718, 3, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(719, 719, 3, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(720, 720, 3, '2021-02-28 19:53:02', '2021-02-28 19:53:02'),
(721, 721, 3, '2021-02-28 19:53:03', '2021-02-28 19:53:03'),
(722, 722, 3, '2021-02-28 19:53:04', '2021-02-28 19:53:04'),
(723, 723, 3, '2021-02-28 19:53:04', '2021-02-28 19:53:04'),
(724, 724, 3, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(725, 725, 3, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(726, 726, 3, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(727, 727, 3, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(728, 728, 3, '2021-02-28 19:53:06', '2021-02-28 19:53:06'),
(729, 729, 3, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(730, 730, 3, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(731, 731, 3, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(732, 732, 3, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(733, 733, 3, '2021-02-28 19:53:07', '2021-02-28 19:53:07'),
(734, 734, 3, '2021-02-28 19:53:08', '2021-02-28 19:53:08'),
(735, 735, 3, '2021-02-28 19:53:08', '2021-02-28 19:53:08'),
(736, 736, 3, '2021-02-28 19:53:08', '2021-02-28 19:53:08'),
(737, 737, 3, '2021-02-28 19:53:08', '2021-02-28 19:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'ahmed@readerscorner.co', '01022052546', NULL, '$2y$10$Bk0dYFk759zLyPllQnSBMuIlmE1JX5qa9u76p0SA5p4INjtJ2bLWG', NULL, '2021-02-28 19:49:28', '2021-02-28 19:49:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_city_id_foreign` (`city_id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `ages`
--
ALTER TABLE `ages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ages_slug_unique` (`slug`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_author_slug_unique` (`author_slug`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_product_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `coupon_users`
--
ALTER TABLE `coupon_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_users_user_id_foreign` (`user_id`),
  ADD KEY `coupon_users_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deals_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keys_slug_unique` (`slug`);

--
-- Indexes for table `key_product`
--
ALTER TABLE `key_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key_product_key_id_foreign` (`key_id`),
  ADD KEY `key_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_isbn_unique` (`isbn`),
  ADD KEY `products_author_id_foreign` (`author_id`),
  ADD KEY `products_language_id_foreign` (`language_id`),
  ADD KEY `products_age_id_foreign` (`age_id`);

--
-- Indexes for table `product_fails`
--
ALTER TABLE `product_fails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_fails_isbn_unique` (`isbn`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_product_id_foreign` (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ages`
--
ALTER TABLE `ages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=699;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_users`
--
ALTER TABLE `coupon_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `key_product`
--
ALTER TABLE `key_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `product_fails`
--
ALTER TABLE `product_fails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `coupon_users`
--
ALTER TABLE `coupon_users`
  ADD CONSTRAINT `coupon_users_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `coupon_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `deals`
--
ALTER TABLE `deals`
  ADD CONSTRAINT `deals_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `key_product`
--
ALTER TABLE `key_product`
  ADD CONSTRAINT `key_product_key_id_foreign` FOREIGN KEY (`key_id`) REFERENCES `keys` (`id`),
  ADD CONSTRAINT `key_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_age_id_foreign` FOREIGN KEY (`age_id`) REFERENCES `ages` (`id`),
  ADD CONSTRAINT `products_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `products_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;