-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 11:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `club_id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  `club_shortname` varchar(255) NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `club_email` varchar(255) NOT NULL,
  `club_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`club_id`, `college_id`, `club_shortname`, `club_name`, `club_email`, `club_image`) VALUES
(1, 1, 'CSEA', 'Computer Science and Engineering Association', 'csea@nitc.ac.in', 'csea.jpg'),
(2, 1, 'AI Club', 'Artificial Intelligence Club', 'aiclub@nitc.ac.in', 'ai.jpg'),
(3, 1, 'ICA', 'Indian Cultural Association', 'ica@nitc.ac.in', 'ica.jpg'),
(4, 1, 'DND', 'Forum for Dance and Dramatics', 'dnd@nitc.ac.in', 'dnd.jpg'),
(5, 1, 'AV club', 'Audio Visual Club', 'avclub@nitc.ac.in', 'av.jpg'),
(6, 1, 'ISTE', 'Indian Society for Technical Education', 'iste@nitc.ac.in', 'iste.jpg'),
(7, 1, 'SAC', 'Student Affairs Council', 'sac@nitc.ac.in', 'sac.jpg'),
(8, 1, 'Sports Club', 'Sports Club NITC', 'sportsclub@nitc.ac.in', 'sc.jpg'),
(9, 1, 'Team Unwired', 'Team Unwired', 'teamunwired@nitc.ac.in', 'tu.jpg'),
(10, 1, 'Aero Unwired', 'Aero Unwired', 'aerounwired@nitc.ac.in', 'au.jpg'),
(11, 1, 'Club Mathematica', 'Club Mathematica', 'clubmathematica@nitc.ac.in', 'cm.jpg'),
(12, 1, 'Nature Club', 'Nature Club', 'natureclub@nitc.ac.in', 'nc.jpg'),
(13, 1, 'NSS', 'National Service Scheme', 'nss@nitc.ac.in', 'nss.jpg'),
(14, 1, 'Adventure Club', 'Adventure Club', 'adventureclub@nitc.ac.in', 'ac.jpg'),
(15, 1, 'RIG', 'Robotics Interest Group', 'rig@nitc.ac.in', 'rig.jpg'),
(16, 1, 'FOSSCell', 'FOSSCell', 'fosscell@nitc.ac.in', 'fc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(3) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `college_logo` text NOT NULL,
  `college_address` varchar(255) NOT NULL,
  `college_city` varchar(255) NOT NULL,
  `college_pin` varchar(255) NOT NULL,
  `college_phone` varchar(255) NOT NULL,
  `college_nirf` int(5) NOT NULL,
  `college_arch_nirf` int(5) NOT NULL,
  `college_ariia` int(5) NOT NULL,
  `college_vision` text NOT NULL,
  `college_mission` text NOT NULL,
  `college_director` varchar(255) NOT NULL,
  `college_about` text NOT NULL,
  `college_shortname` varchar(30) NOT NULL,
  `college_site` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `college_name`, `college_logo`, `college_address`, `college_city`, `college_pin`, `college_phone`, `college_nirf`, `college_arch_nirf`, `college_ariia`, `college_vision`, `college_mission`, `college_director`, `college_about`, `college_shortname`, `college_site`) VALUES
(1, 'National Institute Of Technology, Calicut', 'NITC.png', 'National Institute of Technology Calicut,\r\nCalicut Mukkam Road, Kattangal', 'Kozhikode, Kerala', '673601\r\n\r\n', '0495 228 6106', 23, 3, 8, '\r\nInternational standing of the highest calibre.', '\r\nTo develop high quality technical education and personnel with a sound footing on basic engineering principles, technical and managerial skills, innovative research capabilities, and exemplary professional conduct to lead and to use technology for the progress of mankind, adapting themselves to changing technological environment with the highest ethical values as the inner strength..', 'Dr. P.S. SATHIDEVI', 'Set in picturesque landscape at the foothills of the Western Ghats, National Institute of Technology Calicut (NITC) is located about 22 kilometers north-east of Calicut City. National Institute of Technology Calicut is a Technical Institution of national importance set up by an Act of parliament(Act 29 of 2007) namely, the National Institute of technology Act 2007, which received the assent of the President of India on 5th June,2007. The provision of the Act have come into force with effect from 15th August,2007 as per Notification S.O.1384(E) dated 9th August, 2007 of the Ministry of Education(Shiksha Mantralaya),New Delhi. As per the provision of the said Act, this Institution runs on non profitable basis.', 'NITC', 'http://www.nitc.ac.in/');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_author` varchar(255) DEFAULT NULL,
  `comment_email` varchar(255) DEFAULT NULL,
  `comment_content` text DEFAULT NULL,
  `comment_status` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(255) NOT NULL,
  `organizer_id` int(11) DEFAULT NULL,
  `college_id` int(11) NOT NULL,
  `event_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_author` varchar(255) DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `post_image` text DEFAULT NULL,
  `post_content` text DEFAULT NULL,
  `post_tags` varchar(255) DEFAULT NULL,
  `post_comment_count` int(3) DEFAULT NULL,
  `post_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_image` text DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`club_id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_post_id` (`comment_post_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `organizer_id` (`organizer_id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_category_id` (`post_category_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `college_id` (`college_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clubs`
--
ALTER TABLE `clubs`
  ADD CONSTRAINT `clubs_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`comment_post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`organizer_id`) REFERENCES `clubs` (`club_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD CONSTRAINT `subscriber_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
