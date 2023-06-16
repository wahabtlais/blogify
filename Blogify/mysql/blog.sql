-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 16, 2023 at 09:45 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Nature', 'This is the Nature category'),
(2, 'Wild Life', 'This is the Wild Life category'),
(3, 'Technology', 'This is the Technology category');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_blog_category` (`category_id`),
  KEY `FK_blog_author` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(43, 'Contrary to popular belief, Lorem Ipsum is not simply', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '1684664227photo_2023-05-19_19-08-10.jpg', '2023-05-21 10:17:07', 2, 5, 0),
(42, 'Contrary to popular belief, Lorem Ipsum', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '1684664203photo_2023-05-19_19-08-08.jpg', '2023-05-21 10:16:43', 2, 5, 0),
(24, 'It is a long established', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.', '1684663638photo_2023-05-19_19-07-31.jpg', '2023-05-21 10:07:18', 1, 7, 0),
(25, 'It is a long established1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.', '1684663658photo_2023-05-19_19-07-33.jpg', '2023-05-21 10:07:38', 1, 7, 1),
(26, 'It is a long established fact', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.', '1684663681photo_2023-05-19_19-07-35.jpg', '2023-05-21 10:08:01', 1, 7, 0),
(27, 'It is a long established fact1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.', '1684663750photo_2023-05-19_19-07-36.jpg', '2023-05-21 10:09:10', 1, 7, 0),
(28, 'It is a long established fact that', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.', '1684663769photo_2023-05-19_19-07-38.jpg', '2023-05-21 10:09:29', 1, 7, 0),
(29, 'It is a long established fact that1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.', '1684663789photo_2023-05-19_19-07-40.jpg', '2023-05-21 10:09:49', 1, 7, 0),
(30, 'It is a long established fact that a reader', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.', '1684663810photo_2023-05-19_19-07-41.jpg', '2023-05-21 10:10:10', 1, 7, 0),
(31, 'It is a long established fact that a reader1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.', '1684663827photo_2023-05-19_19-07-43.jpg', '2023-05-21 10:10:27', 1, 7, 0),
(32, 'There are many variations', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text.', '1684663896photo_2023-05-19_19-07-44.jpg', '2023-05-21 10:11:36', 3, 9, 0),
(33, 'There are many variations1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text.', '1684663926photo_2023-05-19_19-07-46.jpg', '2023-05-21 10:12:06', 3, 9, 0),
(34, 'There are many variations of', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text.', '1684663948photo_2023-05-19_19-07-51.jpg', '2023-05-21 10:12:28', 3, 9, 0),
(35, 'There are many variations of 1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text.', '1684663968photo_2023-05-19_19-07-53.jpg', '2023-05-21 10:12:48', 3, 9, 0),
(36, 'There are many variations of passages', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text.', '1684663997photo_2023-05-19_19-07-57.jpg', '2023-05-21 10:13:17', 3, 9, 0),
(37, 'There are many variations of passages 1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text.', '1684664018photo_2023-05-19_19-07-59.jpg', '2023-05-21 10:13:38', 3, 9, 0),
(38, 'Contrary to popular belief', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '1684664100photo_2023-05-19_19-08-01.jpg', '2023-05-21 10:15:00', 2, 5, 0),
(39, 'Contrary to popular belief 1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '1684664122photo_2023-05-19_19-08-03.jpg', '2023-05-21 10:15:22', 2, 5, 0),
(40, 'Contrary to popular belief, Lorem ', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '1684664151photo_2023-05-19_19-08-05.jpg', '2023-05-21 10:15:51', 2, 5, 0),
(41, 'Contrary to popular belief, Lorem 1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '1684664172photo_2023-05-19_19-08-06.jpg', '2023-05-21 10:16:12', 2, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(5, 'User', '1', 'user1', 'user1@gmail.com', '$2y$10$kwQVjXqjCD/XX5fQvboB6uZoaTWH8BFt/kIpvwUZu9YI2mbAuZsBG', '1684661292photo_2023-05-21_12-23-10.jpg', 0),
(7, 'Wahab', 'Tlais', 'wahabtlais', 'wahabtlais@gmail.com', '$2y$10$PelIc4xwr1MNPeZodPpiIeosfgcnOC3AMJBJ0tZcMOFSAaxeqAUI.', '1684662333photo_2022-08-29_16-51-53.jpg', 1),
(9, 'User', '2', 'user2', 'user2@gmail.com', '$2y$10$fqx8pYyfqlEmWkVPwCHfV.Fh2OhJfMX2n/zkRJkJ3.6sVwwQhQZG6', '1684663105photo_2023-05-21_12-23-12.jpg', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
