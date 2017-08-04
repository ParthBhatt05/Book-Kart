-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2017 at 01:45 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pages`
--

-- --------------------------------------------------------

--
-- Table structure for table `Book_Chapter_Relation`
--

CREATE TABLE `Book_Chapter_Relation` (
  `Book_ID` varchar(50) NOT NULL,
  `Chapter_index` int(11) NOT NULL,
  `Chapter_name` varchar(100) NOT NULL,
  `Chapter_page_start` int(11) NOT NULL,
  `Chapter_page_end` int(11) NOT NULL,
  `Chapter_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Book_Chapter_Relation`
--

INSERT INTO `Book_Chapter_Relation` (`Book_ID`, `Chapter_index`, `Chapter_name`, `Chapter_page_start`, `Chapter_page_end`, `Chapter_price`) VALUES
('AAA01', 1, 'Appearance and Reality', 9, 16, 20),
('AAA01', 2, 'The Existence of Matter', 17, 24, 20),
('AAA01', 3, 'The Nature of Matter', 25, 32, 20),
('AAA01', 4, 'Idealism', 33, 40, 20),
('AAA01', 5, 'Knowledge by Acquaintance', 41, 52, 20),
('AAA01', 6, 'On Induction', 53, 60, 20),
('AAA01', 7, 'On Our Knowledge of General Principles', 61, 70, 20),
('AAA01', 8, 'A Priori Knowledge Is Possible', 71, 78, 20),
('AAA01', 9, 'The World of Universals', 79, 86, 20),
('AAA01', 10, 'On Our Knowledge of Universals', 87, 94, 20),
('AAA01', 11, 'On Intuitive Knowledge', 95, 100, 20),
('AAA01', 12, 'Truth and Falsehood', 101, 110, 20),
('AAA01', 13, 'Knowledge, Error, and Probable Opinions', 111, 118, 20),
('AAA01', 14, 'The Limits of Philosophical Knowledge', 119, 127, 20),
('AAA01', 15, 'The Value of Philosophy', 128, 127, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Book_Details`
--

CREATE TABLE `Book_Details` (
  `Book_ID` varchar(50) NOT NULL,
  `Cover_ID` varchar(50) NOT NULL,
  `Title_B` varchar(50) NOT NULL,
  `Author_B` varchar(50) NOT NULL,
  `Rating_B` int(11) NOT NULL,
  `MRP_B` int(11) NOT NULL,
  `Discounted_B` int(11) NOT NULL,
  `Publisher_B` varchar(50) NOT NULL,
  `Date_B` date NOT NULL,
  `Num_Pages_B` int(11) NOT NULL,
  `Book_desc_short` varchar(300) NOT NULL,
  `Book_desc_long` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Book_Details`
--

INSERT INTO `Book_Details` (`Book_ID`, `Cover_ID`, `Title_B`, `Author_B`, `Rating_B`, `MRP_B`, `Discounted_B`, `Publisher_B`, `Date_B`, `Num_Pages_B`, `Book_desc_short`, `Book_desc_long`) VALUES
('AAA01', 'CAAA01', 'THE PROBLEMS OF PHILOSOPHY', 'Andrew Hudson', 4, 300, 650, 'HrPro Press', '2017-04-06', 397, 'Hello', 'hello this is a very long description'),
('AAA02', 'CAAA02', 'LIFE OF A WORM', ' WILL FLORES', 3, 670, 0, 'Marvel', '2017-04-02', 57, 'Hello', 'hello this is a very long description'),
('AAA03', 'CAAA03', 'MAKING SHORT  FILM', 'Clicfford Thurlow', 4, 380, 380, 'XYX', '2017-04-08', 500, 'Hello', 'hello this is a very long description');

-- --------------------------------------------------------

--
-- Table structure for table `Categories_Book_R`
--

CREATE TABLE `Categories_Book_R` (
  `C_ID` int(11) NOT NULL,
  `Book_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Categories_Book_R`
--

INSERT INTO `Categories_Book_R` (`C_ID`, `Book_ID`) VALUES
(1, 'AAA01'),
(1, 'AAA02'),
(2, 'AAA01'),
(2, 'AAA02'),
(2, 'AAA03'),
(3, 'AAA01'),
(3, 'AAA02'),
(3, 'AAA03');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `C_ID` int(11) NOT NULL,
  `C_Label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`C_ID`, `C_Label`) VALUES
(1, 'must have'),
(2, 'best seller'),
(3, 'on sale');

-- --------------------------------------------------------

--
-- Table structure for table `Cover_images`
--

CREATE TABLE `Cover_images` (
  `Cover_ID` varchar(50) NOT NULL,
  `Cover_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cover_images`
--

INSERT INTO `Cover_images` (`Cover_ID`, `Cover_link`) VALUES
('CAAA01', '../img/cover1.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Book_Chapter_Relation`
--
ALTER TABLE `Book_Chapter_Relation`
  ADD PRIMARY KEY (`Book_ID`,`Chapter_index`),
  ADD KEY `Book_ID` (`Book_ID`),
  ADD KEY `Book_ID_2` (`Book_ID`);

--
-- Indexes for table `Book_Details`
--
ALTER TABLE `Book_Details`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `Categories_Book_R`
--
ALTER TABLE `Categories_Book_R`
  ADD PRIMARY KEY (`C_ID`,`Book_ID`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `Cover_images`
--
ALTER TABLE `Cover_images`
  ADD PRIMARY KEY (`Cover_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
