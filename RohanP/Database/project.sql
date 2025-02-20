-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 03:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(4, 'rohan@gmail.com', 'rohanop'),
(5, 'priti@gmail.com', 'pritiop');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('660ac8d37ecc8', '660ac8d37fdb8'),
('660d57e3ad784', '660d57e3ae189'),
('660d57e3b1539', '660d57e3b1dab'),
('660d59454b890', '660d59454c3c7'),
('660d59454f1a5', '660d59454fae0'),
('660d594552b94', '660d5945531f1'),
('660d59fa18e1a', '660d59fa1977c'),
('660d5afa7a4c4', '660d5afa7ade7');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('660d502048557', 'Rohan', 'rohan@gmail.com', '', 'Nice......', '2024-04-03', '02:48:32pm'),
('660d5c30d8597', 'Ram', 'ram@gmail.com', '', 'Nice ... This project is helpfull for students.', '2024-04-03', '03:40:00pm'),
('660d5cb6533dd', 'priti', 'Priti@gmail.com', '', 'This project was Amazing.....!', '2024-04-03', '03:42:14pm'),
('660d5cda2015a', 'suresh', 'suresh@gmail.com', '', 'Nice!!!!', '2024-04-03', '03:42:50pm'),
('660d5d5adaa9c', 'Ramesh', 'ramesh@gmail.com', '', 'Best...', '2024-04-03', '03:44:58pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('rohan@gmail.com', '660ac796acf60', -10, 1, 0, 1, '2024-04-03 13:47:42'),
('rohan@gmail.com', '660d5a95ede2b', 10, 1, 1, 0, '2024-04-03 13:48:02'),
('rohan@gmail.com', '660d59a592492', -5, 1, 0, 1, '2024-04-03 13:48:11'),
('rohan@gmail.com', '660d574619afb', 5, 2, 1, 1, '2024-04-03 13:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('660ac8d37ecc8', 'aborted', '660ac8d37fdac'),
('660ac8d37ecc8', 'queued', '660ac8d37fdb7'),
('660ac8d37ecc8', 'roll backed', '660ac8d37fdb8'),
('660ac8d37ecc8', 'terminated', '660ac8d37fdb9'),
('660d57e3ad784', 'Parsing', '660d57e3ae181'),
('660d57e3ad784', 'Scanning', '660d57e3ae189'),
('660d57e3ad784', 'Interpreter', '660d57e3ae18a'),
('660d57e3ad784', 'None of the mentioned', '660d57e3ae18b'),
('660d57e3b1539', 'Parsing', '660d57e3b1dab'),
('660d57e3b1539', 'Scanning', '660d57e3b1db3'),
('660d57e3b1539', 'Interpreter', '660d57e3b1db4'),
('660d57e3b1539', 'None of the mentioned', '660d57e3b1db5'),
('660d59454b890', 'List', '660d59454c3bf'),
('660d59454b890', 'Set', '660d59454c3c5'),
('660d59454b890', 'Sortedmap', '660d59454c3c6'),
('660d59454b890', 'Sortedlist', '660d59454c3c7'),
('660d59454f1a5', 'next()', '660d59454fae0'),
('660d59454f1a5', 'move()', '660d59454fae9'),
('660d59454f1a5', 'shuffle()', '660d59454faea'),
('660d59454f1a5', 'hasNext()', '660d59454faeb'),
('660d594552b94', 'Set', '660d5945531f1'),
('660d594552b94', 'List', '660d5945531f5'),
('660d594552b94', 'Array ', '660d5945531f6'),
('660d594552b94', 'Collection', '660d5945531f7'),
('660d59fa18e1a', 'New', '660d59fa19775'),
('660d59fa18e1a', 'Open', '660d59fa1977a'),
('660d59fa18e1a', 'Deffered', '660d59fa1977b'),
('660d59fa18e1a', 'Critical', '660d59fa1977c'),
('660d5afa7a4c4', 'Asynchronous Javascript And XML', '660d5afa7ade7'),
('660d5afa7a4c4', 'Automatic Javascript And XML', '660d5afa7adec'),
('660d5afa7a4c4', 'Angular Javascript And XML', '660d5afa7aded'),
('660d5afa7a4c4', 'Analogous Javascript And XML', '660d5afa7adee');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('660ac796acf60', '660ac8d37ecc8', 'If we preemt a resource from a process, the process cannot continue with its normal execution and it must be,', 4, 1),
('660d574619afb', '660d57e3ad784', 'Lexical analysis also knows as,', 4, 1),
('660d574619afb', '660d57e3b1539', 'Syntax analysis is also knows as,', 4, 2),
('660d58366e0cc', '660d59454b890', 'Which of this interface is not a part of collection framework?', 4, 1),
('660d58366e0cc', '660d59454f1a5', 'Which of these methods can be used to next element?', 4, 2),
('660d58366e0cc', '660d594552b94', 'Which of this interface must contain a unique element?', 4, 3),
('660d59a592492', '660d59fa18e1a', 'Which of the following is not a state of a Bug  Life Cycle?', 4, 1),
('660d5a95ede2b', '660d5afa7a4c4', 'Ajax stands for,', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('660ac796acf60', 'Process Deadlock', 10, 10, 1, 1, 'Operating System', 'OS-2', '2024-04-01 14:41:26'),
('660d574619afb', 'Compiler Construction', 10, 5, 2, 2, 'Compiler Construction', 'CC', '2024-04-03 13:19:02'),
('660d58366e0cc', 'Collections', 10, 5, 3, 3, 'Java- 2', 'Java-2', '2024-04-03 13:23:02'),
('660d59a592492', 'Defect Report', 10, 5, 1, 1, 'Software Tasting Tools', 'STT', '2024-04-03 13:29:09'),
('660d5a95ede2b', 'Ajax', 10, 5, 1, 1, 'Web Technology - 2', 'WT-2', '2024-04-03 13:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('rohan@gmail.com', 0, '2024-04-03 13:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Pratiksha', 'F', '', 'pratiksha@gmail.com', 1245789632, 'cb872f03b78c0ec21706c242ae4aca24'),
('Priti', 'F', '', 'Priti@gmail.com', 4545652535, '3785e3379c284dde41f7f6b3d4a88ba5'),
('Ram1', 'M', 'tkyjtd', 'ram1@gmail.com', 458565895, '3db66ceb605c1bcb779c63e180c4f2d0'),
('Ram', 'M', '', 'ram@gmail.com', 55986458, '3db66ceb605c1bcb779c63e180c4f2d0'),
('Rohan', 'M', 'fjghdg', 'rohan@gmail.com', 1212121212, '41b046191358d2415a4bfd551656c061'),
('Sham', 'M', '', 'sham@gmail.com', 1234567890, '7e50f2a6f97e79d57dcbc5094c36cb26'),
('Shubhangi', 'F', '', 'shubhi@gmail.com', 7545512635, 'bdc9f911fc1815be478a47f89b69e751'),
('Suresh', 'M', '', 'suresh@gmail.com', 6854521685, 'd73a6b34231b19834c46c2a94d4cdab5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
