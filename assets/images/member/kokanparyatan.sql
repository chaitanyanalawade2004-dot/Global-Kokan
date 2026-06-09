-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2023 at 09:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isbrand1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `filename` varchar(2000) NOT NULL,
  `srno` int(11) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `urltitle` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `filename`, `srno`, `description`, `urltitle`) VALUES
(1, 'Fruits', 'yWICa6PRsv', 1, 'IS Brand Export Import is here to provide fresh and the best quality fruits to valuable customers on demand. Fruit is the sweet, fleshy, edible part of a plant. It generally contains seeds. Fruits are usually eaten raw, although some varieties can be cooked. They come in a wide variety of colors, shapes and flavors. It contain various types of nutrients and vitamins which helpful to maintain our health.', 'Fruits'),
(2, 'Vegetables', 'GFBthKOqua', 2, 'IS Brand Export Import is here to provide fresh and hygienic vegetables to valuable customers on demand. Vegetables are parts of plants that are consumed by humans or other animals as food. It may exclude foods derived from some plants that are fruits, flowers, nuts, and cereal grains, but include savory fruits such as tomatoes and courgettis, flowers such as broccoli, and seeds such as pulses. It contains a large amount of nutrients and vitamins.', 'Vegetables'),
(3, 'Rice', '7OeMZxFXL2', 3, 'IS Brand Export Import is here to provide a variety of rice and a variety of grains at an affordable rate to our valuable customers on demand. Rice is the seed of the grass species Oryza sativa or less commonly Oryza glaberrima. As a cereal grain, it is the most widely consumed staple food for a large part of the world’s human population, especially in Asia. A grain is a small, hard, dry seed, with or without an attached hull or fruit layer, harvested for human or animal consumption. A grain crop is a grain-producing plant.', 'Rice');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `subject` varchar(2000) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `title` varchar(3000) NOT NULL,
  `srno` int(11) NOT NULL,
  `filename` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `srno`, `filename`) VALUES
(1, '1', 1, 'rpqazMcuOy'),
(2, '2', 2, 'Tdm9VpDziB'),
(3, '3', 3, 'uT8ivIzps5'),
(4, '4', 4, 'O24vwhk7AK'),
(5, '5', 5, '0ex3g2UCzw'),
(6, '6', 6, 'soWKmNu2a5'),
(7, '7', 7, 'WI97YUh0Lu'),
(8, '8', 8, '28WIQ3tsb5');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `productid` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `filename` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `filename` varchar(2000) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `srno` int(11) NOT NULL,
  `urltitle` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `categoryid`, `filename`, `description`, `srno`, `urltitle`) VALUES
(1, 'Banana ', 1, 'xHnSlFOs08', '<p>aadasdad</p>\r\n', 1, 'Banana-'),
(2, 'Mango', 1, 'nRCEyoAIzS', '', 2, 'Mango'),
(3, 'Grapes', 1, 'QkodAP8H2G', '', 3, 'Grapes'),
(4, 'Water melon', 1, '1Sv8IubxmU', '', 4, 'Water-melon'),
(5, 'Cantaloupe melon', 1, 'JNEhDWYsaG', '', 5, 'Cantaloupe-melon'),
(6, 'Pomegranate', 1, 'Yaqh69Wr3M', '', 6, 'Pomegranate'),
(7, 'Ginger', 2, '7QXZj9ITYN', '', 1, 'Ginger'),
(8, 'Drumsticks', 2, 'AaYg09tqHI', '', 2, 'Drumsticks'),
(9, 'Garlic', 2, 'Zp4c29Agj8', '', 3, 'Garlic'),
(10, 'Onion', 2, 'mFfNRPGQgO', '', 4, 'Onion'),
(11, 'Okra', 2, 'xDaRqgKNWI', '', 5, 'Okra'),
(12, 'Chilli', 2, 'fJnwy0Kx2z', '', 6, 'Chilli'),
(13, 'Coconut', 2, 'R1oZbdisUF', '', 7, 'Coconut'),
(14, 'Lemon', 2, 'fXQ4iDNZxW', '', 8, 'Lemon'),
(15, 'Carrot', 2, 'mbsugXJYCk', '', 9, 'Carrot'),
(16, 'Radish', 2, '3nWEXZ2DMu', '', 10, 'Radish'),
(17, 'Cucumber', 2, 'a2phlJXjeg', '', 11, 'Cucumber'),
(18, 'Basmati Rice', 3, '0PysYo7duR', '', 1, 'Basmati-Rice'),
(19, 'Non Basmati Rice', 3, '1RvQaDZ6lw', '', 2, 'Non-Basmati-Rice');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(3000) NOT NULL,
  `filename` varchar(2000) NOT NULL,
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `filename`, `srno`) VALUES
(1, 'Test', 'nP09e72lTN', 1),
(2, '2', 'an2YfFlXTr', 2),
(3, '3', 'O0KJNz4PE7', 3),
(4, '4', 'atTGyXsZh5', 4),
(5, '5', 'BGzbSuqcO2', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testomonials`
--

CREATE TABLE `testomonials` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `position` varchar(2000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `filename` varchar(2000) NOT NULL,
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testomonials`
--

INSERT INTO `testomonials` (`id`, `name`, `position`, `description`, `filename`, `srno`) VALUES
(1, 'Linda Josef', 'Customers', '<p>Thanks to IS Brand&nbsp;for providing the best quality products to us. Like to deal more and more with you.</p>\r\n', 'wQeUh4Egpm', 1),
(2, 'Suraj  Kevate', 'Customer', '<p>What a lovely quality of all the products provided by IS Brand. Thanks for providing fresh products to us.</p>\r\n', 'fqutPKOdQH', 2),
(3, 'James Poul', 'Customer', '<p>Once we try products of Vinaya Venture and trust me now we are forever customer of them. Love from UK.</p>\r\n', 'naVwr7lGud', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testomonials`
--
ALTER TABLE `testomonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testomonials`
--
ALTER TABLE `testomonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
