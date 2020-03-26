-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2019 at 08:19 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms1_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `admin_id` int(11) NOT NULL,
  `adminname` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tb`
--

INSERT INTO `admin_tb` (`admin_id`, `adminname`, `admin_email`, `admin_phone`, `username`, `password`) VALUES
(10, 'admin', 'ad@mail.com', '0921487', 'admin', '1234'),
(11, 'Abrar Ahmed', 'h@asd.com', '120984', 'abrar01234', '123'),
(12, 'Arslan Arshad', 'h@asd.com', '214234', 'arslan0000', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_tb`
--

CREATE TABLE `attendance_tb` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_tb`
--

INSERT INTO `attendance_tb` (`attendance_id`, `student_id`, `date`, `status`) VALUES
(51, 59, '2019-11-30', 'Absent'),
(52, 59, '2019-12-01', 'Leave'),
(53, 69, '2019-12-02', 'Present'),
(55, 68, '2019-11-30', 'Leave'),
(58, 59, '2019-12-27', 'Present'),
(59, 68, '2019-12-27', 'Absent'),
(60, 84, '2019-12-30', 'Present'),
(61, 85, '2019-12-30', 'Absent'),
(62, 86, '2019-12-30', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `class_tb`
--

CREATE TABLE `class_tb` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_tb`
--

INSERT INTO `class_tb` (`class_id`, `class_name`) VALUES
(10, 'one'),
(11, 'two'),
(12, 'three'),
(13, 'Four'),
(14, 'Five'),
(15, 'Six'),
(16, 'Seven'),
(17, 'Eight');

-- --------------------------------------------------------

--
-- Table structure for table `diary_tb`
--

CREATE TABLE `diary_tb` (
  `diary_id` int(11) NOT NULL,
  `diary` varchar(10000) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diary_tb`
--

INSERT INTO `diary_tb` (`diary_id`, `diary`, `class_id`, `section_id`, `date`, `teacher_id`) VALUES
(88, '<p>Date 31 diary to students</p>', 10, 0, '2019-12-31', 9),
(89, '<p>English : Rem Q:no 2 full</p>', 12, 2, '2019-12-30', 15);

-- --------------------------------------------------------

--
-- Table structure for table `fee_tb`
--

CREATE TABLE `fee_tb` (
  `fee_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `amount` varchar(1000) NOT NULL,
  `status` varchar(50) NOT NULL,
  `month` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_tb`
--

INSERT INTO `fee_tb` (`fee_id`, `student_id`, `class_id`, `section_id`, `amount`, `status`, `month`, `date`) VALUES
(15, 58, 10, 0, '2000', 'UnPaid', 'December', '2019-11-10'),
(16, 59, 10, 0, '2000', 'Paid', 'December', '2019-11-30'),
(17, 73, 10, 0, '5000', 'Paid', 'December', '2019-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234'),
(2, 'javed', '1234'),
(3, 'qamar', '999'),
(7, 'alip', '123'),
(28, 'ali', '123'),
(40, 'hadi', '1234'),
(41, 'hadip', '1234'),
(44, 'qadeer', '1234'),
(45, 'qadeerp', '1234'),
(46, 'farhan', '1234'),
(47, 'murtaza', '1234'),
(48, 'murtazap', '1234'),
(49, 'abrar0', '123'),
(50, 'abrar01234', '123'),
(51, 'arslan0000', '1234'),
(52, 'rafayp', '123'),
(53, 'rafaypp', '123'),
(54, 'farman', '123'),
(55, 'farmanp', '123'),
(56, 'salam', '123'),
(57, 'salamp', '123'),
(58, 'sadiq', '123'),
(59, 'sadiqp', '123'),
(60, 'mairaj', '123'),
(61, 'mairajp', '123'),
(62, 'sohail', '123'),
(63, 'sohailp', '123'),
(64, 'babar', '123'),
(65, 'babarp', '123'),
(66, 'faraz', '123'),
(67, 'farazp', '123'),
(68, 'kabeer', '123'),
(69, 'kabeerp', '123'),
(70, 'ishrat', '123'),
(71, 'ishratp', '123'),
(72, 'irshaad', '123'),
(73, 'irshaadp', '123'),
(74, 'saleem', '123'),
(75, 'saleemp', '123'),
(76, 'danish', '123'),
(77, 'danishp', '123'),
(78, 'anees', '123'),
(79, 'aneesp', '123'),
(80, 'mbsoomro', '123'),
(81, 'iftikhar', '123'),
(82, 'maqsood', '123'),
(83, 'zuhaib', '123'),
(84, 'zaheer', '123'),
(85, 'zaheerp', '123'),
(86, 'rizwan', '123'),
(87, 'rizwanp', '123'),
(88, 'salman', '123'),
(89, 'salmanp', '123');

-- --------------------------------------------------------

--
-- Table structure for table `marks_table`
--

CREATE TABLE `marks_table` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_name` varchar(50) NOT NULL,
  `marks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks_table`
--

INSERT INTO `marks_table` (`mark_id`, `student_id`, `class_id`, `section_id`, `subject_id`, `exam_name`, `marks`) VALUES
(91, 59, 10, 0, 19, 'First Term', '20'),
(92, 68, 10, 0, 19, 'First Term', '20'),
(93, 84, 12, 2, 23, 'First Term', '89'),
(94, 85, 12, 2, 23, 'First Term', '20'),
(95, 86, 12, 2, 23, 'First Term', '10');

-- --------------------------------------------------------

--
-- Table structure for table `message_tb`
--

CREATE TABLE `message_tb` (
  `id` int(11) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `to` varchar(50) NOT NULL,
  `from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news` varchar(10000) NOT NULL,
  `to_aud` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news`, `to_aud`, `date`) VALUES
(14, '<p>Annocement of the week</p>', 'students', '2019-11-28'),
(15, '<p>Teacher news to javed</p>', 'teachers', '2019-11-28'),
(17, '<p>Hello To Alll</p>', 'students', '2019-12-01'),
(20, '<p>Happy New Year</p>', 'students', '2020-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `parent_tb`
--

CREATE TABLE `parent_tb` (
  `parent_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_tb`
--

INSERT INTO `parent_tb` (`parent_id`, `name`, `phone`, `email`, `username`, `password`) VALUES
(6, 'Asad', '09999000', 'h@a.com', 'alip', '123'),
(256, 'Abdul', '38941237', 's@d.com', 'hadip', '1234'),
(258, 'Abdula', '38941237', 'h@a.com', 'qadeerp', '1234'),
(259, 'murtaza', '09999000', 's@d.com', 'murtazap', '1234'),
(260, 'Jawad', '0308784578', 'parent@gmail.com', 'rafaypp', '123'),
(261, 'Abdul Sattar', '03333642586', 'zulfiqar@gmail.com', 'farmanp', '123'),
(262, 'Rizwan', '03322642599', 'mzi@gmail', 'salamp', '123'),
(263, 'fawad', '03234657878', 'zulfiqar@gmail.com', 'sadiqp', '123'),
(264, 'zubair', '03234657878', 'parent@gmail.com', 'mairajp', '123'),
(265, 'Babar', '03234657878', 'zulfiqar@gmail.com', 'sohailp', '123'),
(266, 'Sohail', '03333642586', 'mzi@gmail', 'babarp', '123'),
(267, 'Zameer Ahmed', '032287689848', 'parent@gmail.com', 'farazp', '123'),
(268, 'Sabir', '0308784578', 'zulfiqar@gmail.com', 'kabeerp', '123');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_tb`
--

CREATE TABLE `schedule_tb` (
  `sc_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `slot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule_tb`
--

INSERT INTO `schedule_tb` (`sc_id`, `class_id`, `section_id`, `subject_id`, `day`, `slot`) VALUES
(65, 10, 0, 19, 'Monday', '8-9'),
(66, 10, 0, 19, 'Monday', '9-10'),
(67, 10, 0, 19, 'Monday', '10-11'),
(68, 10, 0, 19, 'Tuesday', '8-9'),
(69, 11, 1, 20, 'Monday', '8-9');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(100) NOT NULL,
  `section_name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`, `class_id`, `teacher_id`) VALUES
(0, 'A', 10, 9),
(1, 'B', 11, 10),
(2, 'A', 12, 15),
(3, 'A', 12, 11),
(4, 'A', 11, 9);

-- --------------------------------------------------------

--
-- Table structure for table `student_tb`
--

CREATE TABLE `student_tb` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_name` varchar(50) NOT NULL,
  `parent_phone` varchar(50) NOT NULL,
  `parent_email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_tb`
--

INSERT INTO `student_tb` (`student_id`, `student_name`, `gender`, `religion`, `class_id`, `section_id`, `parent_id`, `parent_name`, `parent_phone`, `parent_email`, `username`, `password`) VALUES
(59, 'ali', 'male', 'Islam', 10, 0, 6, 'Asad', '09999000', 'h@a.com', 'ali', '123'),
(66, 'hadi', 'male', 'Islam', 11, 1, 256, 'Abdul', '38941237', 's@d.com', 'hadi', '1234'),
(68, 'Qadeer', 'male', 'Islam', 10, 0, 258, 'Abdula', '38941237', 'h@a.com', 'qadeer', '1234'),
(69, 'shameer', 'male', 'islam', 12, 3, 259, 'murtaza', '09999000', 's@d.com', 'murtaza', '1234'),
(70, 'Abdul Rafay', 'male', 'Islam', 10, 0, 260, 'Jawad', '0308784578', 'parent@gmail.com', 'rafayp', '123'),
(71, 'Farman', 'male', 'Islam', 10, 0, 261, 'Abdul Sattar', '03333642586', 'zulfiqar@gmail.com', 'farman', '123'),
(72, 'Abdul Salam', 'male', 'Islam', 10, 0, 262, 'Rizwan', '03322642599', 'mzi@gmail', 'salam', '123'),
(73, 'Sadiq', 'male', 'Islam', 10, 0, 263, 'fawad', '03234657878', 'zulfiqar@gmail.com', 'sadiq', '123'),
(74, 'mairaj', 'male', 'islam', 10, 0, 264, 'zubair', '03234657878', 'parent@gmail.com', 'mairaj', '123'),
(75, 'Sohail', 'male', 'islam', 10, 0, 265, 'Babar', '03234657878', 'zulfiqar@gmail.com', 'sohail', '123'),
(76, 'Babar', 'male', 'islam', 10, 0, 266, 'Sohail', '03333642586', 'mzi@gmail', 'babar', '123'),
(77, 'Faraz', 'male', 'islam', 11, 1, 267, 'Zameer Ahmed', '032287689848', 'parent@gmail.com', 'faraz', '123'),
(78, 'Kabeer', 'male', 'islam', 11, 1, 268, 'Sabir', '0308784578', 'zulfiqar@gmail.com', 'kabeer', '123'),
(81, 'saleem', 'male', 'Islam', 11, 1, 268, 'Irshad', '03234657878', 'zulfiqar@gmail.com', 'saleem', '123'),
(82, 'Danish', 'male', 'islam', 11, 1, 268, 'saleem', '03234657878', 'mzi@gmail', 'danish', '123'),
(83, 'Anees', 'male', 'islam', 11, 4, 268, 'babar', '0308784578', 'zulfiqar@gmail.com', 'anees', '123'),
(84, 'Zaheer', 'male', 'Islam', 12, 2, 268, 'saleem', '03333642586', 'parent@gmail.com', 'zaheer', '123'),
(85, 'Rizwan', 'male', 'islam', 12, 2, 268, 'Farooq', '032287689848', 'rizwan@gmail.com', 'rizwan', '123'),
(86, 'Salman', 'male', 'Islam', 12, 2, 268, 'Farman', '0308784578', 'mzi@gmail', 'salman', '123');

-- --------------------------------------------------------

--
-- Table structure for table `subject_tb`
--

CREATE TABLE `subject_tb` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_tb`
--

INSERT INTO `subject_tb` (`subject_id`, `subject_name`, `class_id`, `teacher_id`) VALUES
(19, 'Urdu', 10, 9),
(20, 'English', 11, 10),
(23, 'General Sciece', 12, 15);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tb`
--

CREATE TABLE `teacher_tb` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tb`
--

INSERT INTO `teacher_tb` (`teacher_id`, `teacher_name`, `email`, `phone`, `username`, `password`) VALUES
(9, 'Javed  Ali Abbasi', 'h@asd.com', 'ha@g.com', 'javed', '1234'),
(10, 'Qamar', 'h@asd.com', '12425', 'qamar', '999'),
(11, 'Farhan', 'asd@ma.com', '099866', 'farhan', '1234'),
(12, 'Mr. MB Soomro', 'MB@gmail.com', '033335546789', 'mbsoomro', '123'),
(13, 'Mr. Iftikhar', 'iftikhar@gmail.com', '03446657219', 'iftikhar', '123'),
(14, 'Mr Maqsood', 'Maqsood@gmail.com', '033335546789', 'maqsood', '123'),
(15, 'Zuhaib', 'zuhaib..hassan1058@gmail.com', '03322428486', 'zuhaib', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `attendance_tb`
--
ALTER TABLE `attendance_tb`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `class_tb`
--
ALTER TABLE `class_tb`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `diary_tb`
--
ALTER TABLE `diary_tb`
  ADD PRIMARY KEY (`diary_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `fee_tb`
--
ALTER TABLE `fee_tb`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `login_tb`
--
ALTER TABLE `login_tb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `marks_table`
--
ALTER TABLE `marks_table`
  ADD PRIMARY KEY (`mark_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `message_tb`
--
ALTER TABLE `message_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_tb`
--
ALTER TABLE `parent_tb`
  ADD PRIMARY KEY (`parent_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `schedule_tb`
--
ALTER TABLE `schedule_tb`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `student_tb`
--
ALTER TABLE `student_tb`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `username` (`username`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `subject_tb`
--
ALTER TABLE `subject_tb`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `teacher_tb`
--
ALTER TABLE `teacher_tb`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendance_tb`
--
ALTER TABLE `attendance_tb`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `class_tb`
--
ALTER TABLE `class_tb`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `diary_tb`
--
ALTER TABLE `diary_tb`
  MODIFY `diary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `fee_tb`
--
ALTER TABLE `fee_tb`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `marks_table`
--
ALTER TABLE `marks_table`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `message_tb`
--
ALTER TABLE `message_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `schedule_tb`
--
ALTER TABLE `schedule_tb`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `student_tb`
--
ALTER TABLE `student_tb`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `subject_tb`
--
ALTER TABLE `subject_tb`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `teacher_tb`
--
ALTER TABLE `teacher_tb`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD CONSTRAINT `admin_tb_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login_tb` (`username`);

--
-- Constraints for table `attendance_tb`
--
ALTER TABLE `attendance_tb`
  ADD CONSTRAINT `attendance_tb_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_tb` (`student_id`);

--
-- Constraints for table `diary_tb`
--
ALTER TABLE `diary_tb`
  ADD CONSTRAINT `diary_tb_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_tb` (`teacher_id`);

--
-- Constraints for table `marks_table`
--
ALTER TABLE `marks_table`
  ADD CONSTRAINT `marks_table_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_tb` (`student_id`),
  ADD CONSTRAINT `marks_table_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject_tb` (`subject_id`),
  ADD CONSTRAINT `marks_table_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class_tb` (`class_id`),
  ADD CONSTRAINT `marks_table_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`);

--
-- Constraints for table `parent_tb`
--
ALTER TABLE `parent_tb`
  ADD CONSTRAINT `parent_tb_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login_tb` (`username`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_tb` (`class_id`),
  ADD CONSTRAINT `section_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_tb` (`teacher_id`);

--
-- Constraints for table `student_tb`
--
ALTER TABLE `student_tb`
  ADD CONSTRAINT `student_tb_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_tb` (`class_id`),
  ADD CONSTRAINT `student_tb_ibfk_3` FOREIGN KEY (`parent_id`) REFERENCES `parent_tb` (`parent_id`),
  ADD CONSTRAINT `student_tb_ibfk_4` FOREIGN KEY (`username`) REFERENCES `login_tb` (`username`),
  ADD CONSTRAINT `student_tb_ibfk_5` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`);

--
-- Constraints for table `subject_tb`
--
ALTER TABLE `subject_tb`
  ADD CONSTRAINT `subject_tb_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_tb` (`class_id`),
  ADD CONSTRAINT `subject_tb_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_tb` (`teacher_id`);

--
-- Constraints for table `teacher_tb`
--
ALTER TABLE `teacher_tb`
  ADD CONSTRAINT `teacher_tb_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login_tb` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
