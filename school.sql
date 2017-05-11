-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 01:33 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `classNumber` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `classroom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `classTeacher` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `classNumber`, `classroom`, `classTeacher`) VALUES
(1, '10a', '13', 9),
(2, '10b', '23', 14),
(3, '11a', '15', 1),
(4, '11b', '24', 2),
(5, '8', '21', 4),
(6, '9', '11', 13);

-- --------------------------------------------------------

--
-- Table structure for table `grade_subject`
--

CREATE TABLE `grade_subject` (
  `id` int(11) NOT NULL,
  `t_s_id` int(11) DEFAULT NULL,
  `classNumber` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade_subject`
--

INSERT INTO `grade_subject` (`id`, `t_s_id`, `classNumber`) VALUES
(1, 1, '10a'),
(2, 2, '10a'),
(3, 3, '10a'),
(4, 4, '10a'),
(5, 5, '10a'),
(6, 6, '10a'),
(7, 8, '10a'),
(8, 9, '10a'),
(9, 10, '10a'),
(10, 11, '10a'),
(11, 14, '10a'),
(12, 15, '10a'),
(13, 16, '10a'),
(14, 19, '10a'),
(15, 1, '10b'),
(16, 2, '10b'),
(17, 3, '10b'),
(18, 4, '10b'),
(19, 6, '10b'),
(20, 8, '10b'),
(21, 9, '10b'),
(22, 10, '10b'),
(23, 11, '10b'),
(24, 14, '10b'),
(25, 15, '10b'),
(26, 16, '10b'),
(27, 17, '10b'),
(28, 19, '10b'),
(29, 1, '11a'),
(30, 3, '11a'),
(31, 4, '11a'),
(32, 5, '11a'),
(33, 6, '11a'),
(34, 9, '11a'),
(35, 11, '11a'),
(36, 14, '11a'),
(37, 15, '11a'),
(38, 16, '11a'),
(39, 18, '11a'),
(40, 1, '11b'),
(41, 3, '11b'),
(42, 4, '11b'),
(43, 6, '11b'),
(44, 8, '11b'),
(45, 9, '11b'),
(46, 11, '11b'),
(47, 14, '11b'),
(48, 15, '11b'),
(49, 16, '11b'),
(50, 17, '11b'),
(51, 2, '8'),
(52, 4, '8'),
(53, 6, '8'),
(54, 7, '8'),
(55, 9, '8'),
(56, 10, '8'),
(57, 11, '8'),
(58, 12, '8'),
(59, 13, '8'),
(60, 14, '8'),
(61, 15, '8'),
(62, 1, '9'),
(63, 2, '9'),
(64, 4, '9'),
(65, 6, '9'),
(66, 7, '9'),
(67, 9, '9'),
(68, 10, '9'),
(69, 11, '9'),
(70, 14, '9'),
(71, 15, '9'),
(72, 16, '9'),
(73, 17, '9'),
(74, 18, '9');

-- --------------------------------------------------------

--
-- Table structure for table `graduate`
--

CREATE TABLE `graduate` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `firstName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `DateOfGraduation` date NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `FirstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `gender` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `ClassNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `user_id`, `FirstName`, `LastName`, `DateOfBirth`, `gender`, `ClassNumber`) VALUES
(1, 6, 'Margret', 'Eshleman', '1999-04-05', 'f', 3),
(2, 5, 'Harold', 'Grimmer', '1999-10-23', 'm', 3),
(3, 8, 'Norman', 'Brisker', '1999-09-18', 'm', 3),
(4, 12, 'Zina', 'Panzer', '1999-12-02', 'f', 3),
(5, 13, 'Crysta', 'Marlin', '1999-03-30', 'f', 3),
(6, 3, 'Penelope', 'Cole', '1999-07-08', 'f', 3),
(7, 25, 'Katherine', 'Short', '1999-10-17', 'f', 3),
(8, 26, 'Mary', 'Blake', '1999-12-08', 'f', 3),
(9, 27, 'Katherine', 'Short', '1999-10-17', 'f', 3),
(10, 28, 'Mary', 'Blake', '1999-12-08', 'f', 3),
(11, 29, 'Lisa', 'Manning', '1999-05-28', 'f', 3),
(12, 30, 'Jacob', 'Springer', '1998-07-23', 'm', 3),
(13, 31, 'Trevor', 'Hudson', '1999-12-28', 'm', 3),
(14, 32, 'Joshua', 'Glover', '1999-08-18', 'm', 3),
(15, 33, 'Edward', 'Newman', '1998-03-25', 'm', 3),
(16, 34, 'Madeleine', 'Peake', '1999-08-11', 'f', 3),
(17, 35, 'Evan', 'Allan', '1999-04-06', 'm', 3),
(18, 36, 'Austin', 'Pullman', '1999-07-02', 'f', 3),
(19, 37, 'Bella', 'Abraham', '1999-08-04', 'f', 4),
(20, 38, 'Julian', 'Nash', '1999-03-09', 'm', 4),
(21, 39, 'Michael', 'Glover', '1999-01-21', 'm', 4),
(22, 40, 'Jason', 'Davidson', '1999-12-04', 'm', 4),
(23, 41, 'Sean', 'Butler', '1999-08-03', 'm', 4),
(24, 42, 'Edward', 'Forsyth', '1999-12-04', 'm', 4),
(25, 43, 'Chloe ', 'Anderson', '1999-01-06', 'f', 4),
(26, 44, 'Alan', 'Parsons', '1999-08-21', 'm', 4),
(27, 45, 'Evan', 'Blake', '1999-03-20', 'm', 4),
(28, 46, 'Stephanie', 'Ferguson', '1999-10-24', 'f', 4),
(29, 47, 'Joanne', 'Buckland', '1999-12-02', 'f', 4),
(30, 48, 'Sue', 'Langdon', '1999-08-07', 'f', 4),
(31, 49, 'Faith', 'Campbell', '1999-08-13', 'f', 4),
(32, 50, 'Sally', 'Hudson', '1999-03-13', 'f', 4),
(33, 51, 'Anthony', 'Burgess', '1998-01-24', 'm', 4),
(34, 52, 'Victor', 'Roberts', '1999-07-06', 'm', 4),
(35, 53, 'Kimberly', 'Simpson', '1999-11-14', 'f', 4),
(36, 54, 'James', 'Fraser', '2000-11-22', 'm', 4),
(37, 55, 'Dylan ', 'Alsop', '1999-04-15', 'm', 4),
(38, 56, 'Rose', 'Hemmings', '2000-06-17', 'f', 2),
(39, 57, 'Richard', 'Alsop', '2000-07-07', 'm', 2),
(40, 58, 'Bernadette', 'Dowd', '2000-05-10', 'f', 2),
(41, 59, 'Jacob', 'King', '2000-05-22', 'm', 2),
(42, 60, 'Virginia', 'Reid', '2000-06-16', 'f', 2),
(43, 61, 'Eric', 'Clarkson', '2000-04-07', 'm', 2),
(44, 62, 'Diane', 'Manning', '2000-02-12', 'f', 2),
(45, 63, 'Michelle', 'Vance', '2000-09-24', 'm', 2),
(46, 64, 'Natalie', 'Mackenzie', '2000-07-16', 'f', 2),
(47, 65, 'Molly', 'Walker', '1999-12-12', 'f', 2),
(48, 66, 'Karen', 'James', '2000-09-07', 'f', 2),
(49, 67, 'Luke', 'Gray', '2001-01-01', 'm', 2),
(50, 68, 'Brian', 'Davidson', '2000-07-19', 'm', 2),
(51, 69, 'Michelle', 'Welch', '2000-06-16', 'm', 2),
(52, 70, 'Gavin', 'Thomson', '2000-03-19', 'm', 2),
(53, 71, 'Sebastian', 'Cameron', '2000-09-29', 'm', 2),
(54, 72, 'Julian', 'Howard', '2000-11-25', 'm', 2),
(55, 73, 'Amanda', 'Underwood', '2000-12-10', 'f', 2),
(56, 74, 'Irene', 'MacLeod', '2000-02-23', 'f', 2),
(57, 75, 'Owen', 'Butler', '2000-08-31', 'f', 2),
(100, 96, 'Alan', 'McDonald', '2000-06-23', 'm', 1),
(101, 76, 'Owen', 'Butler', '2000-12-21', 'm', 1),
(102, 77, 'Amanda', 'Underwood', '2000-03-26', 'f', 1),
(103, 78, 'Irene', 'MacLeod', '2000-09-02', 'f', 2),
(104, 79, 'Donna', 'Cameron', '2000-04-08', 'f', 1),
(105, 80, 'Emma', 'Anderson', '2000-04-27', 'f', 1),
(106, 81, 'Emma', 'Oliver', '2000-09-20', 'f', 1),
(107, 82, 'Peter', 'Gibson', '2000-03-18', 'm', 1),
(108, 83, 'Kevin ', 'Scott', '2000-10-08', 'm', 1),
(109, 84, 'Victor', 'Butler', '1999-11-29', 'm', 1),
(110, 85, 'Theresa', 'Payne', '2000-06-10', 'f', 1),
(111, 86, 'Nicholas', 'Underwood', '2000-07-10', 'm', 1),
(112, 87, 'Dylan', 'Payne', '2000-06-26', 'm', 1),
(113, 88, 'Neil', 'Bond', '2000-04-04', 'm', 1),
(114, 89, 'Felicity	', 'Lee', '2000-12-27', 'f', 4),
(115, 90, 'Ian', 'Cornish', '2000-04-18', 'm', 1),
(116, 91, 'Robert', 'Powell', '2000-02-11', 'm', 1),
(117, 92, 'Jessica', 'Hemmings', '2001-01-12', 'f', 1),
(118, 93, 'Michael', 'Pullman', '2000-06-28', 'm', 1),
(119, 94, 'Connor', 'Black', '2000-08-06', 'm', 1),
(120, 95, 'Diana ', 'Kerr', '2000-08-21', 'f', 1),
(121, 97, 'Neil', 'Bond', '2001-09-13', 'f', 6),
(122, 98, 'Sue', 'Parsons', '2000-12-31', 'f', 6),
(123, 99, 'Julian', 'Anderson', '2001-06-26', 'm', 6),
(124, 100, 'Diana', 'Simpson', '2001-10-30', 'f', 6),
(125, 101, 'Robert', 'Powell', '2002-01-20', 'm', 6),
(126, 102, 'Connor', 'Black', '2001-02-05', 'm', 6),
(127, 103, 'Amanda ', 'Poole', '2001-12-13', 'f', 6),
(128, 104, 'Sean', 'Lawrence', '2001-03-12', 'm', 6),
(129, 105, 'Elizabeth', 'Cornish', '2001-02-21', 'f', 6),
(130, 106, 'Matt ', 'Mathis', '2001-11-04', 'm', 6),
(131, 107, 'Virginia', 'Dickens', '2001-08-19', 'f', 6),
(132, 108, 'Piers ', 'McDonald', '2001-11-18', 'm', 6),
(133, 109, 'Joshua', 'Nash', '2001-09-20', 'm', 6),
(134, 110, 'Diane', 'Bailey', '2001-09-08', 'f', 6),
(135, 111, 'Kylie', 'McLean', '2001-09-30', 'f', 6),
(136, 112, 'Max', 'Gray', '2001-05-31', 'm', 6),
(137, 113, 'Frank', 'Gray', '2001-05-10', 'm', 6),
(138, 114, 'Molly', 'MacDonald', '2000-12-05', 'f', 6),
(139, 115, 'Liam', 'Mitchell', '2001-03-09', 'm', 6),
(140, 116, 'Isaac', 'Anderson', '2001-08-30', 'm', 6),
(141, 117, 'Dorothy', 'Miller', '2001-12-22', 'f', 6),
(142, 118, 'Carl', 'Harris', '2001-06-03', 'm', 6),
(167, 119, 'Stephanie', 'Russell', '2002-11-18', 'f', 5),
(168, 120, 'Jan', 'McLean', '2002-08-07', 'm', 5),
(169, 121, 'Penelope', 'Turner', '2002-05-18', 'f', 5),
(170, 122, 'Andrew', 'Black', '2002-07-06', 'm', 5),
(171, 123, 'Robert', 'Howard', '2002-05-12', 'm', 5),
(172, 124, 'Gordon', 'Bailey', '2002-11-23', 'm', 5),
(173, 125, 'Jason', 'Vance', '2002-04-26', 'm', 5),
(174, 126, 'Sam', 'Coleman', '2002-01-16', 'm', 5),
(175, 127, 'Vanessa', 'Miller', '2002-09-05', 'f', 5),
(176, 128, 'Bernadette', 'Reid', '2002-10-20', 'f', 5),
(177, 129, 'Dominic', 'Poole', '2002-11-19', 'm', 5),
(178, 130, 'Tracey', 'Forsyth', '2002-03-25', 'm', 5),
(179, 131, 'Eric', 'McLean', '2002-12-08', 'm', 5),
(180, 132, 'Wendy', 'Mackay', '2002-03-11', 'f', 5),
(181, 133, 'Sonia', 'Davies', '2002-02-17', 'f', 5),
(182, 134, 'Evan', 'Matt', '2002-05-17', 'm', 5),
(183, 135, 'Katherine', 'Coleman', '2002-04-26', 'f', 5),
(184, 136, 'Oliver', 'May', '2002-03-19', 'm', 5),
(185, 137, 'Jacob', 'Burgess', '2002-01-23', 'm', 5),
(186, 138, 'Keith', 'Cornish', '2002-03-29', 'f', 5),
(187, 139, 'Grace', 'Ball', '2002-08-19', 'f', 5),
(188, 140, 'Richard', 'Hughes', '2002-09-04', 'm', 5),
(189, 141, 'James', 'Hardacre', '2002-08-12', 'm', 5),
(190, 142, 'Jack', 'Thomson', '2002-08-08', 'm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(14, 'Algebra'),
(2, 'Biology'),
(7, 'Business studies'),
(12, 'Chemistry'),
(1, 'Computer studies'),
(6, 'English'),
(5, 'Geography'),
(15, 'Geometry'),
(3, 'History'),
(16, 'Language'),
(4, 'Literacy'),
(8, 'Mathematics'),
(9, 'Music'),
(11, 'Physical education'),
(13, 'Physics'),
(10, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `FirstName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `gender` char(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `user_id`, `FirstName`, `LastName`, `DateOfBirth`, `gender`) VALUES
(1, 2, 'Shera', 'Pollan', '1971-09-16', 'f'),
(2, 7, 'Erick', 'Abarca', '1970-02-02', 'm'),
(3, 4, 'Sophie', 'Hudson', '1966-09-10', 'f'),
(4, 9, 'Colleen', 'Frazier', '1981-01-01', 'm'),
(5, 10, 'Estelle', 'Jones', '1987-03-15', 'f'),
(6, 11, 'Nicole', 'Nash', '1974-07-16', 'f'),
(7, 14, 'Enrique', 'Porter', '1980-10-30', 'm'),
(8, 15, 'Hannah', 'Hogan', '1977-04-28', 'f'),
(9, 16, 'Ebony', 'Snyder', '1974-08-01', 'm'),
(10, 17, 'Lorenzo', 'Richardson', '1983-05-17', 'm'),
(11, 18, 'Bradford', 'Walton', '1967-02-14', 'm'),
(12, 19, 'Steven', 'Harris', '1960-06-03', 'm'),
(13, 20, 'Emma', 'Williams', '1985-04-09', 'f'),
(14, 21, 'Angela', 'Force', '1981-10-11', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject`
--

CREATE TABLE `teacher_subject` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_subject`
--

INSERT INTO `teacher_subject` (`id`, `teacher_id`, `subject_id`) VALUES
(20, 1, 8),
(1, 1, 14),
(18, 1, 15),
(2, 2, 2),
(19, 2, 5),
(3, 3, 7),
(16, 4, 10),
(4, 4, 12),
(5, 5, 1),
(15, 5, 13),
(6, 6, 6),
(7, 7, 5),
(17, 8, 1),
(8, 8, 15),
(9, 9, 3),
(10, 10, 16),
(11, 11, 4),
(12, 12, 8),
(13, 13, 9),
(14, 14, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`, `is_active`) VALUES
(1, 'admin@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:3:{i:0;s:10:\"ROLE_ADMIN\";i:1;s:12:\"ROLE_STUDENT\";i:2;s:12:\"ROLE_TEACHER\";}', 0),
(2, 'teacher@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(3, 'student@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(4, 'teach3@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(5, 'stud1@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(6, 'stud2@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(7, 'teach2@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(8, 'stud3@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(9, 'teach4@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(10, 'teach5@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(11, 'teach6@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(12, 'stud6@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(13, 'stud13@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(14, 'teach7@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(15, 'teach8@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(16, 'teach9@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(17, 'teach10@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(18, 'teach11@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(19, 'teach12@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(20, 'teach13@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(21, 'teach14@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_TEACHER\";}', 0),
(25, 'stud5@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(26, 'stud4@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(27, 'stud7@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(28, 'stud8@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(29, 'stud9@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(30, 'stud10@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(31, 'stud11@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(32, 'stud12@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(33, 'stud14@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(34, 'stud15@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(35, 'stud16@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(36, 'stud17@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(37, 'stud18@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(38, 'stud19@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(39, 'stud20@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(40, 'stud21@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(41, 'stud22@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(42, 'stud23@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(43, 'stud24@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(44, 'stud25@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(45, 'stud26@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(46, 'stud27@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(47, 'stud28@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(48, 'stud29@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(49, 'stud30@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(50, 'stud31@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(51, 'stud32@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(52, 'stud33@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(53, 'stud34@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(54, 'stud35@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(55, 'stud36@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(56, 'stud37@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(57, 'stud38@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(58, 'stud39@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(59, 'stud40@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(60, 'stud41@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(61, 'stud42@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(62, 'stud43@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(63, 'stud44@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(64, 'stud45@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(65, 'stud46@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(66, 'stud47@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(67, 'stud48@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(68, 'stud49@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(69, 'stud50@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(70, 'stud51@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(71, 'stud52@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(72, 'stud53@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(73, 'stud54@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(74, 'stud55@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(75, 'stud56@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(76, 'stud57@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(77, 'stud58@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(78, 'stud59@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(79, 'stud60@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(80, 'stud61@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(81, 'stud62@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(82, 'stud63@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(83, 'stud64@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(84, 'stud65@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(85, 'stud66@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(86, 'stud67@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(87, 'stud68@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(88, 'stud69@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(89, 'stud70@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(90, 'stud71@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(91, 'stud72@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(92, 'stud73@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(93, 'stud74@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(94, 'stud75@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(95, 'stud76@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(96, 'stud77@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(97, 'stud78@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(98, 'stud79@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(99, 'stud80@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(100, 'stud81@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(101, 'stud82@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(102, 'stud83@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(103, 'stud84@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(104, 'stud85@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(105, 'stud86@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(106, 'stud87@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(107, 'stud88@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(108, 'stud89@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(109, 'stud90@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(110, 'stud91@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(111, 'stud92@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(112, 'stud93@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(113, 'stud94@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(114, 'stud95@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(115, 'stud96@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(116, 'stud97@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(117, 'stud98@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(118, 'stud99@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(119, 'stud100@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(120, 'stud101@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(121, 'stud102@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(122, 'stud103@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(123, 'stud104@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(124, 'stud105@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(125, 'stud106@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(126, 'stud107@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(127, 'stud108@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(128, 'stud109@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(129, 'stud110@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(130, 'stud111@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(131, 'stud112@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(132, 'stud113@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(133, 'stud114@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(134, 'stud115@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(135, 'stud116@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(136, 'stud117@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(137, 'stud118@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(138, 'stud119@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(139, 'stud120@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(140, 'stud121@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(141, 'stud122@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(142, 'stud123@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(143, 'stud124@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(144, 'stud125@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(145, 'stud126@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(146, 'stud127@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(147, 'stud128@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(148, 'stud129@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(149, 'stud130@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(150, 'stud131@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(151, 'stud132@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(152, 'stud133@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(153, 'stud134@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(154, 'stud135@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(155, 'stud136@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(156, 'stud137@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0),
(157, 'stud138@mail.com', '$2a$06$ZFi6rhsSnUAfDXoTrvodqeYwbRuEY2x65FPTJ6ijER8q6DgXPx16S', 'a:1:{i:0;s:12:\"ROLE_STUDENT\";}', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classNumber` (`classNumber`),
  ADD UNIQUE KEY `classTeacher_2` (`classTeacher`);

--
-- Indexes for table `grade_subject`
--
ALTER TABLE `grade_subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`classNumber`,`t_s_id`),
  ADD KEY `classNumber` (`classNumber`),
  ADD KEY `classNumber_2` (`classNumber`),
  ADD KEY `subject_id` (`t_s_id`);

--
-- Indexes for table `graduate`
--
ALTER TABLE `graduate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B723AF33A76ED395` (`user_id`),
  ADD KEY `IDX_B723AF33FA7FD2FE` (`ClassNumber`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FBCE3E7A5E237E06` (`name`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`);

--
-- Indexes for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`teacher_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `IDX_AAEF733241807E1D` (`teacher_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `grade_subject`
--
ALTER TABLE `grade_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `graduate`
--
ALTER TABLE `graduate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `FK_595AAE3449243A72` FOREIGN KEY (`classTeacher`) REFERENCES `teacher` (`id`);

--
-- Constraints for table `grade_subject`
--
ALTER TABLE `grade_subject`
  ADD CONSTRAINT `FK_183AC987BB8A53E` FOREIGN KEY (`t_s_id`) REFERENCES `teacher_subject` (`id`),
  ADD CONSTRAINT `FK_183AC98FDD3D7C8` FOREIGN KEY (`classNumber`) REFERENCES `grade` (`classNumber`);

--
-- Constraints for table `graduate`
--
ALTER TABLE `graduate`
  ADD CONSTRAINT `FK_89E6227A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_B723AF337B4F581F` FOREIGN KEY (`ClassNumber`) REFERENCES `grade` (`id`),
  ADD CONSTRAINT `FK_B723AF33A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `FK_B0F6A6D5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD CONSTRAINT `FK_360CB33B23EDC87` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `FK_360CB33B41807E1D` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
