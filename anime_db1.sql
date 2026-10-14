-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2026 at 07:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30
dsadasdsadas
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anime_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Thám Lừng Conan'),
(2, 'Doraemon - Chú Mèo Máy'),
(3, 'Dragon Ball - Bảy Viên Ngọc Rồng'),
(4, 'Naruto - Cửu Vĩ Hồ Ly');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `name`, `image`, `price`) VALUES
(1, 1, 'Conan - Tập 1', 'conan1.jpg', 25000.00),
(2, 1, 'Conan - Tập 2', 'conan2.jpg', 25000.00),
(3, 1, 'Conan - Tập 3', 'conan3.jpg', 25000.00),
(4, 1, 'Conan - Tập 4', 'conan4.jpg', 25000.00),
(5, 1, 'Conan - Tập 5', 'conan5.jpg', 25000.00),
(6, 1, 'Conan - Tập 6', 'conan6.jpg', 25000.00),
(7, 1, 'Conan - Tập 7', 'conan7.jpg', 25000.00),
(8, 1, 'Conan - Tập 8', 'conan8.jpg', 25000.00),
(9, 1, 'Conan - Tập 9', 'conan9.jpg', 25000.00),
(10, 1, 'Conan - Tập 10', 'conan10.jpg', 25000.00),
(11, 1, 'Conan - Tập 11', 'conan11.jpg', 25000.00),
(12, 1, 'Conan - Tập 12', 'conan12.jpg', 25000.00),
(13, 1, 'Conan - Tập 13', 'conan13.jpg', 25000.00),
(14, 1, 'Conan - Tập 14', 'conan14.jpg', 25000.00),
(15, 1, 'Conan - Tập 15', 'conan15.jpg', 25000.00),
(16, 1, 'Conan - Tập 16', 'conan16.jpg', 25000.00),
(17, 1, 'Conan - Tập 17', 'conan17.jpg', 25000.00),
(18, 1, 'Conan - Tập 18', 'conan18.jpg', 25000.00),
(19, 1, 'Conan - Tập 19', 'conan19.jpg', 25000.00),
(20, 1, 'Conan - Tập 20', 'conan20.jpg', 25000.00),
(21, 1, 'Conan - Tập 21', 'conan21.jpg', 25000.00),
(22, 1, 'Conan - Tập 22', 'conan22.jpg', 25000.00),
(23, 1, 'Conan - Tập 23', 'conan23.jpg', 25000.00),
(24, 1, 'Conan - Tập 24', 'conan24.jpg', 25000.00),
(25, 2, 'Doraemon - Tập 1', 'doremon1.jpg', 25000.00),
(26, 2, 'Doraemon - Tập 2', 'doremon2.jpg', 25000.00),
(27, 2, 'Doraemon - Tập 3', 'doremon3.jpg', 25000.00),
(28, 2, 'Doraemon - Tập 4', 'doremon4.jpg', 25000.00),
(29, 2, 'Doraemon - Tập 5', 'doremon5.jpg', 25000.00),
(30, 2, 'Doraemon - Tập 6', 'doremon6.jpg', 25000.00),
(31, 2, 'Doraemon - Tập 7', 'doremon7.jpg', 25000.00),
(32, 2, 'Doraemon - Tập 8', 'doremon8.jpg', 25000.00),
(33, 2, 'Doraemon - Tập 9', 'doremon9.jpg', 25000.00),
(34, 2, 'Doraemon - Tập 10', 'doremon10.jpg', 25000.00),
(35, 2, 'Doraemon - Tập 11', 'doremon11.jpg', 25000.00),
(36, 2, 'Doraemon - Tập 12', 'doremon12.jpg', 25000.00),
(37, 2, 'Doraemon - Tập 13', 'doremon13.jpg', 25000.00),
(38, 2, 'Doraemon - Tập 14', 'doremon14.jpg', 25000.00),
(39, 2, 'Doraemon - Tập 15', 'doremon15.jpg', 25000.00),
(40, 2, 'Doraemon - Tập 16', 'doremon16.jpg', 25000.00),
(41, 2, 'Doraemon - Tập 17', 'doremon17.jpg', 25000.00),
(42, 2, 'Doraemon - Tập 18', 'doremon18.jpg', 25000.00),
(43, 2, 'Doraemon - Tập 19', 'doremon19.jpg', 25000.00),
(44, 2, 'Doraemon - Tập 20', 'doremon20.jpg', 25000.00),
(45, 2, 'Doraemon - Tập 21', 'doremon21.jpg', 25000.00),
(46, 2, 'Doraemon - Tập 22', 'doremon22.jpg', 25000.00),
(47, 2, 'Doraemon - Tập 23', 'doremon23.jpg', 25000.00),
(48, 2, 'Doraemon - Tập 24', 'doremon24.jpg', 25000.00),
(49, 3, 'Dragon Ball - Tập 1', 'ku1.jpg', 25000.00),
(50, 3, 'Dragon Ball - Tập 2', 'ku2.jpg', 25000.00),
(51, 3, 'Dragon Ball - Tập 3', 'ku3.jpg', 25000.00),
(52, 3, 'Dragon Ball - Tập 4', 'ku4.jpg', 25000.00),
(53, 3, 'Dragon Ball - Tập 5', 'ku5.jpg', 25000.00),
(54, 3, 'Dragon Ball - Tập 6', 'ku6.jpg', 25000.00),
(55, 3, 'Dragon Ball - Tập 7', 'ku7.jpg', 25000.00),
(56, 3, 'Dragon Ball - Tập 8', 'ku8.jpg', 25000.00),
(57, 3, 'Dragon Ball - Tập 9', 'ku9.jpg', 25000.00),
(58, 3, 'Dragon Ball - Tập 10', 'ku10.jpg', 25000.00),
(59, 3, 'Dragon Ball - Tập 11', 'ku11.jpg', 25000.00),
(60, 3, 'Dragon Ball - Tập 12', 'ku12.jpg', 25000.00),
(61, 3, 'Dragon Ball - Tập 13', 'ku13.jpg', 25000.00),
(62, 3, 'Dragon Ball - Tập 14', 'ku14.jpg', 25000.00),
(63, 3, 'Dragon Ball - Tập 15', 'ku15.jpg', 25000.00),
(64, 3, 'Dragon Ball - Tập 16', 'ku16.jpg', 25000.00),
(65, 3, 'Dragon Ball - Tập 17', 'ku17.jpg', 25000.00),
(66, 3, 'Dragon Ball - Tập 18', 'ku18.jpg', 25000.00),
(67, 3, 'Dragon Ball - Tập 19', 'ku19.jpg', 25000.00),
(68, 3, 'Dragon Ball - Tập 20', 'ku20.jpg', 25000.00),
(69, 3, 'Dragon Ball - Tập 21', 'ku21.jpg', 25000.00),
(70, 3, 'Dragon Ball - Tập 22', 'ku22.jpg', 25000.00),
(71, 3, 'Dragon Ball - Tập 23', 'ku23.jpg', 25000.00),
(72, 3, 'Dragon Ball - Tập 24', 'ku24.jpg', 25000.00),
(73, 4, 'Naruto - Tập 1', 'na1.jpg', 25000.00),
(74, 4, 'Naruto - Tập 2', 'na2.jpg', 25000.00),
(75, 4, 'Naruto - Tập 3', 'na3.jpg', 25000.00),
(76, 4, 'Naruto - Tập 4', 'na4.jpg', 25000.00),
(77, 4, 'Naruto - Tập 5', 'na5.jpg', 25000.00),
(78, 4, 'Naruto - Tập 6', 'na6.jpg', 25000.00),
(79, 4, 'Naruto - Tập 7', 'na7.jpg', 25000.00),
(80, 4, 'Naruto - Tập 8', 'na8.jpg', 25000.00),
(81, 4, 'Naruto - Tập 9', 'na9.jpg', 25000.00),
(82, 4, 'Naruto - Tập 10', 'na10.jpg', 25000.00),
(83, 4, 'Naruto - Tập 11', 'na11.jpg', 25000.00),
(84, 4, 'Naruto - Tập 12', 'na12.jpg', 25000.00),
(85, 4, 'Naruto - Tập 13', 'na13.jpg', 25000.00),
(86, 4, 'Naruto - Tập 14', 'na14.jpg', 25000.00),
(87, 4, 'Naruto - Tập 15', 'na15.jpg', 25000.00),
(88, 4, 'Naruto - Tập 16', 'na16.jpg', 25000.00),
(89, 4, 'Naruto - Tập 17', 'na17.jpg', 25000.00),
(90, 4, 'Naruto - Tập 18', 'na18.jpg', 25000.00),
(91, 4, 'Naruto - Tập 19', 'na19.jpg', 25000.00),
(92, 4, 'Naruto - Tập 20', 'na20.jpg', 25000.00),
(93, 4, 'Naruto - Tập 21', 'na21.jpg', 25000.00),
(94, 4, 'Naruto - Tập 22', 'na22.jpg', 25000.00),
(95, 4, 'Naruto - Tập 23', 'na23.jpg', 25000.00),
(96, 4, 'Naruto - Tập 24', 'na24.jpg', 25000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`) VALUES
(1, 'Nguyễn Ích Thanh Tâm', 'tam7mat@gmail.com', '0123333333', '444', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
