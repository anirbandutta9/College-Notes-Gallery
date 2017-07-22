-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2017 at 06:16 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(57, 'demo previer', 'demo', 'pdf', 'user', '2017-07-19 05:08:23', 'Computer Science', '578090.pdf', 'approved'),
(56, 'teacher3 demo', 'demo', 'txt', 'teacher2', '2017-07-19 05:08:16', 'Mechanical', '565834.txt', 'approved'),
(55, 'teacher title', 'demo desc', 'zip', 'teacher', '2017-07-22 06:02:02', 'Mechanical', '898387.zip', 'approved'),
(58, 'phpp demo', 'ppph demo', 'pdf', 'anirban', '2017-07-20 14:52:41', 'Computer Science', '69321.pdf', 'not approved yet'),
(54, 'user title', 'user desc', 'zip', 'student', '2017-07-19 05:08:28', 'Computer Science', '848114.zip', 'approved'),
(53, 'demo title ..', 'demo desc...', 'zip', 'user2', '2017-07-19 04:54:36', 'Electrical', '305047.zip', 'not approved yet'),
(52, 'demo title', 'demo desc......', 'pdf', 'user1', '2017-07-22 06:02:22', 'Electrical', '845248.pdf', 'approved'),
(51, 'demo 3', 'demo 3 desc....', 'pdf', 'user3', '2017-07-22 06:02:15', 'Computer Science', '437056.pdf', 'approved'),
(50, 'demo2', 'demo desc 2...', 'ppt', 'user3', '2017-07-22 06:02:36', 'Computer Science', '800920.ppt', 'approved'),
(49, 'demo title', 'demo description', 'docx', 'user3', '2017-07-19 05:08:13', 'Computer Science', '502238.docx', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(24, 'user', 'user1', 'N/A', 'teacher', 'user@ndndn.cbbc', '', 'Male', '$2y$10$Z1H.ruYjbMSp07EhejzS0O1Fr7PgFdjqbWmtu7/j68TXr55gZ2Msu', 'Computer Science', '107095.jpg', 'July 19, 2017'),
(23, 'teacher2', 'teacher2', 'N/A', 'teacher', 'teacher2hdh@n.fncn', '', 'Male', '$2y$10$rCjs9AHzUSVmITcRJJosgeUxJA5gJ7dZfY16ij/1xf9bzxmFAZzMq', 'Mechanical', '895979.jpg', 'July 19, 2017'),
(22, 'teacher', 'teacher', 'N/A', 'teacher', 'teacher@bfbf.nncn', '', 'Male', '$2y$10$jAk4uQiBQ6b03EVZ0/9i1ucWdNFcVV1dXYj4X2f8uZ4Xd81hBkauG', 'Mechanical', '839669.jpg', 'July 19, 2017'),
(12, 'root', 'admin root', 'N/A', 'admin', 'root@gmail.com', '', 'N/A', '$2y$10$UExd.f8vQXogrZELXF8KGulQJKUn32p8x4B5SVQ7V/D6.mrSAkAjW', 'Computer Science', 'profile.jpg', '2000-01-01'),
(21, 'student', 'student4', 'N/A', 'teacher', 'user4@gmai.com', '', 'Female', '$2y$10$8NTdzG/HXZq5d23o9IqteOY3vWZg75hC99tkuU60/ivcqiQ1sho6.', 'Computer Science', 'profile.jpg', 'July 19, 2017'),
(18, 'user1', 'User 1', 'N/A', 'teacher', 'user1@gmail.com', '', 'Male', '$2y$10$LS76ATZ/jRN/M/pDAyfJmOkNI1MpF08T8NzjNcK.MZKpbjkeMKdMC', 'Electrical', '180812.jpg', 'July 19, 2017'),
(19, 'user2', 'user2', 'i am user', 'student', 'user2@gmail.com', '', 'Female', '$2y$10$OCazXxzd6FM.V2afvmapqOGxVj8Gac3zN.2tlmuO1v1Y3103dqhti', 'Electrical', 'profile.jpg', 'July 19, 2017'),
(20, 'user3', 'user3', 'N/A', 'teacher', 'user3@gmail.com', '', 'Male', '$2y$10$DEKxq9z1r8sWPSzj2XL7LOlT.cUWZv1EbTGZlrXO2VkiBbIuRfoBu', 'Computer Science', 'profile.jpg', 'July 19, 2017'),
(26, 'user6', 'user6', 'N/A', 'teacher', 'user6@gmail.com', '', 'Male', '$2y$10$8OKm1GXZtf4vWTafLHgmjeFls3SvCTWiyXJVhnPr4XOYLeXGOPybW', 'Computer Science', '382911.jpg', 'July 22, 2017'),
(25, 'anirban', 'Anirban', 'N/A', 'teacher', 'anirban.root@gmail.com', 'fbab3eec077a38d565e9c93442178b7d', 'Male', '$2y$10$h4i29DiU8zeLT7EOMLka3uTTCtAxtU.DAExBhywJF3SIRwpHq4wuG', 'Computer Science', '441172.jpg', 'July 20, 2017'),
(27, 'user9', 'hfg gghh', 'N/A', 'teacher', 'ffhhgh@jjdj.vjjv', '', 'Male', '$2y$10$Z1hwjfIGjC8/Zv0NFy/BDO0W.A6K4ZAWLPrW8.himo7YAi0sC7Kjy', 'Computer Science', 'profile.jpg', 'July 22, 2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
