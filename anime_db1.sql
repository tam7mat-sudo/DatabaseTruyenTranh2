-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2026 at 06:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(1, 'Truyện Trinh Thám'),
(2, 'Doraemon - Chú Mèo Máy'),
(3, 'Dragon Ball - Bảy Viên Ngọc Rồng'),
(4, 'Naruto - Cửu Vĩ Hồ Ly'),
(5, 'Ngôn Tình');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `content`, `image`, `created_at`) VALUES
(1, 'Thông báo lịch nghỉ Lễ và cập nhật Manga mới', NULL, 'Chào các độc giả thân thiết của Hikaru Shop, hệ thống xin gửi tới thông báo lịch phát hành tuần tới...', NULL, '2026-10-12'),
(2, 'Review bộ Manga Beastars cực hot cho tín đồ yêu động vật', NULL, 'Beastars là một bộ truyện tranh Nhật Bản được viết và minh họa bởi Paru Itagaki...', NULL, '2026-10-10'),
(3, 'Top 5 tựa sách bán chạy nhất tháng tại Hikaru Shop', NULL, 'Tháng này chứng kiến sự bứt phá mạnh mẽ của các tựa truyện tranh đình đám...', NULL, '2026-10-08'),
(4, 'Bật mí lịch phát hành trọn bộ Conan Boxset đặc biệt', NULL, 'Phiên bản hộp quà đặc biệt của Thám tử lừng Conan sẽ chính thức lên kệ vào cuối tháng...', NULL, '2026-10-05'),
(5, 'Hướng dẫn cách tích điểm đổi quà thành viên VIP', NULL, 'Nhằm tri ân khách hàng thân thiết, Hikaru Shop ra mắt chương trình tích điểm đổi quà...', NULL, '2026-10-02'),
(6, 'Sự kiện offline giao lưu cùng họa sĩ truyện tranh trẻ', NULL, 'Buổi offline sẽ diễn ra vào cuối tuần này tại cửa hàng chính ở Đà Nẵng...', NULL, '2026-09-28'),
(7, 'Điểm danh những nhân vật Manga được yêu thích nhất mọi thời đại', NULL, 'Cùng Hikaru Shop điểm qua danh sách các nhân vật có lượng fan khủng nhất...', NULL, '2026-09-25'),
(8, 'Chính sách vận chuyển và đổi trả hàng hóa mới nhất', NULL, 'Để hỗ trợ tốt nhất cho khách hàng ở xa, Hikaru Shop cập nhật chính sách freeship...', NULL, '2026-09-20'),
(9, 'Top truyện tranh thể loại Isekai (Xuyên không) đáng đọc nhất', NULL, 'Thể loại xuyên không luôn mang đến những tình tiết hấp dẫn và bất ngờ...', NULL, '2026-09-15'),
(10, 'Khui hộp các ấn bản giới hạn sắp ra mắt quý cuối năm', NULL, 'Cùng ngắm nhìn trước những ấn bản đặc biệt sẽ có mặt tại shop trong thời gian tới...', NULL, '2026-09-10');

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
(1, 1, 'Thám Tử Lừng Danh Conan - Tập 1', 'conan1.jpg', 25000.00),
(2, 1, 'Thám Tử Lừng Danh Conan - Tập 2', 'conan2.jpg', 25000.00),
(3, 1, 'Thám Tử Lừng Danh Conan - Tập 3', 'conan3.jpg', 25000.00),
(4, 1, 'Thám Tử Lừng Danh Conan - Tập 4', 'conan4.jpg', 25000.00),
(5, 1, 'Thám Tử Lừng Danh Conan - Tập 5', 'conan5.jpg', 25000.00),
(6, 1, 'Thám Tử Lừng Danh Conan - Tập 6', 'conan6.jpg', 25000.00),
(7, 1, 'Thám Tử Lừng Danh Conan - Tập 7', 'conan7.jpg', 25000.00),
(8, 1, 'Thám Tử Lừng Danh Conan - Tập 8', 'conan8.jpg', 25000.00),
(9, 1, 'Thám Tử Lừng Danh Conan - Tập 9', 'conan9.jpg', 25000.00),
(10, 1, 'Thám Tử Lừng Danh Conan - Tập 10', 'conan10.jpg', 25000.00),
(11, 1, 'Thám Tử Lừng Danh Conan - Tập 11', 'conan11.jpg', 25000.00),
(12, 1, 'Thám Tử Lừng Danh Conan - Tập 12', 'conan12.jpg', 25000.00),
(13, 1, 'Thám Tử Lừng Danh Conan - Tập 13', 'conan13.jpg', 25000.00),
(14, 1, 'Thám Tử Lừng Danh Conan - Tập 14', 'conan14.jpg', 25000.00),
(15, 1, 'Thám Tử Lừng Danh Conan - Tập 15', 'conan15.jpg', 25000.00),
(16, 1, 'Thám Tử Lừng Danh Conan - Tập 16', 'conan16.jpg', 25000.00),
(17, 1, 'Thám Tử Lừng Danh Conan - Tập 17', 'conan17.jpg', 25000.00),
(18, 1, 'Thám Tử Lừng Danh Conan - Tập 18', 'conan18.jpg', 25000.00),
(19, 1, 'Thám Tử Lừng Danh Conan - Tập 19', 'conan19.jpg', 25000.00),
(20, 1, 'Thám Tử Lừng Danh Conan - Tập 20', 'conan20.jpg', 25000.00),
(21, 1, 'Thám Tử Lừng Danh Conan - Tập 21', 'conan21.jpg', 25000.00),
(22, 1, 'Thám Tử Lừng Danh Conan - Tập 22', 'conan22.jpg', 25000.00),
(23, 1, 'Thám Tử Lừng Danh Conan - Tập 23', 'conan23.jpg', 25000.00),
(24, 1, 'Thám Tử Lừng Danh Conan - Tập 24', 'conan24.jpg', 25000.00),
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
(49, 2, 'Doraemon - Tập 25', 'doremon25.jpg', 25000.00),
(50, 2, 'Doraemon - Tập 26', 'doremon26.jpg', 25000.00),
(51, 2, 'Doraemon - Tập 27', 'doremon27.jpg', 25000.00),
(52, 2, 'Doraemon - Tập 28', 'doremon28.jpg', 25000.00),
(53, 3, 'Dragon Ball - Tập 1', 'ku1.jpg', 25000.00),
(54, 3, 'Dragon Ball - Tập 2', 'ku2.jpg', 25000.00),
(55, 3, 'Dragon Ball - Tập 3', 'ku3.jpg', 25000.00),
(56, 3, 'Dragon Ball - Tập 4', 'ku4.jpg', 25000.00),
(57, 3, 'Dragon Ball - Tập 5', 'ku5.jpg', 25000.00),
(58, 3, 'Dragon Ball - Tập 6', 'ku6.jpg', 25000.00),
(59, 3, 'Dragon Ball - Tập 7', 'ku7.jpg', 25000.00),
(60, 3, 'Dragon Ball - Tập 8', 'ku8.jpg', 25000.00),
(61, 3, 'Dragon Ball - Tập 9', 'ku9.jpg', 25000.00),
(62, 3, 'Dragon Ball - Tập 10', 'ku10.jpg', 25000.00),
(63, 3, 'Dragon Ball - Tập 11', 'ku11.jpg', 25000.00),
(64, 3, 'Dragon Ball - Tập 12', 'ku12.jpg', 25000.00),
(65, 3, 'Dragon Ball - Tập 13', 'ku13.jpg', 25000.00),
(66, 3, 'Dragon Ball - Tập 14', 'ku14.jpg', 25000.00),
(67, 3, 'Dragon Ball - Tập 15', 'ku15.jpg', 25000.00),
(68, 3, 'Dragon Ball - Tập 16', 'ku16.jpg', 25000.00),
(69, 3, 'Dragon Ball - Tập 17', 'ku17.jpg', 25000.00),
(70, 3, 'Dragon Ball - Tập 18', 'ku18.jpg', 25000.00),
(71, 3, 'Dragon Ball - Tập 19', 'ku19.jpg', 25000.00),
(72, 3, 'Dragon Ball - Tập 20', 'ku20.jpg', 25000.00),
(73, 3, 'Dragon Ball - Tập 21', 'ku21.jpg', 25000.00),
(74, 3, 'Dragon Ball - Tập 22', 'ku22.jpg', 25000.00),
(75, 3, 'Dragon Ball - Tập 23', 'ku23.jpg', 25000.00),
(76, 3, 'Dragon Ball - Tập 24', 'ku24.jpg', 25000.00),
(77, 4, 'Naruto - Tập 1', 'na1.jpg', 25000.00),
(78, 4, 'Naruto - Tập 2', 'na2.jpg', 25000.00),
(79, 4, 'Naruto - Tập 3', 'na3.jpg', 25000.00),
(80, 4, 'Naruto - Tập 4', 'na4.jpg', 25000.00),
(81, 4, 'Naruto - Tập 5', 'na5.jpg', 25000.00),
(82, 4, 'Naruto - Tập 6', 'na6.jpg', 25000.00),
(83, 4, 'Naruto - Tập 7', 'na7.jpg', 25000.00),
(84, 4, 'Naruto - Tập 8', 'na8.jpg', 25000.00),
(85, 4, 'Naruto - Tập 9', 'na9.jpg', 25000.00),
(86, 4, 'Naruto - Tập 10', 'na10.jpg', 25000.00),
(87, 4, 'Naruto - Tập 11', 'na11.jpg', 25000.00),
(88, 4, 'Naruto - Tập 12', 'na12.jpg', 25000.00),
(89, 4, 'Naruto - Tập 13', 'na13.jpg', 25000.00),
(90, 4, 'Naruto - Tập 14', 'na14.jpg', 25000.00),
(91, 4, 'Naruto - Tập 15', 'na15.jpg', 25000.00),
(92, 4, 'Naruto - Tập 16', 'na16.jpg', 25000.00),
(93, 4, 'Naruto - Tập 17', 'na17.jpg', 25000.00),
(94, 4, 'Naruto - Tập 18', 'na18.jpg', 25000.00),
(95, 4, 'Naruto - Tập 19', 'na19.jpg', 25000.00),
(96, 4, 'Naruto - Tập 20', 'na20.jpg', 25000.00),
(97, 4, 'Naruto - Tập 21', 'na21.jpg', 25000.00),
(98, 4, 'Naruto - Tập 22', 'na22.jpg', 25000.00),
(99, 4, 'Naruto - Tập 23', 'na23.jpg', 25000.00),
(100, 4, 'Naruto - Tập 24', 'na24.jpg', 25000.00),
(101, 5, 'Đừng Chịu Trách Nhiệm', 't1.jpg', 35000.00),
(102, 5, 'Giữa Mùa Gặp Hoa Rơi Lại Ngộ Quân', 't2.jpg', 35000.00),
(103, 5, 'Nữ Phụ Cực Phẩm', 't3.jpg', 35000.00),
(104, 5, 'Thánh Quyền Chính Sủng', 't4.jpg', 35000.00),
(105, 5, 'Ái Tình Ma Nữ', 't5.jpg', 35000.00),
(106, 5, 'Nữ Phụ Trùng Sinh', 't6.jpg', 35000.00),
(107, 5, 'Trùng Sinh Thành Hoàng Hậu', 't7.jpg', 35000.00),
(108, 5, 'Nam Chính Là Của Tôi', 't8.jpg', 35000.00),
(109, 5, 'Hoàng Hậu Xuyên Không', 't9.jpg', 35000.00),
(110, 5, 'Vương Phi Tái Sinh', 't10.jpg', 35000.00),
(111, 5, 'Cùng Quân Cánh Đồng', 't11.jpg', 35000.00),
(112, 5, 'Dưới Cơn Mùa Hạ', 't12.jpg', 35000.00),
(113, 5, 'Hoa Rơi Hữu Ý', 't13.jpg', 35000.00),
(114, 5, 'Cố Nhân Bên Hồ', 't14.jpg', 35000.00),
(115, 5, 'Oan Gia Ngõ Hẹp', 't15.jpg', 35000.00),
(116, 5, 'Cung Đình Tranh Sủng', 't16.jpg', 35000.00),
(117, 5, 'Chỉ Muốn Bên Em', 't17.jpg', 35000.00),
(118, 5, 'Ngày Mới Nắng Lên', 't18.jpg', 35000.00),
(119, 5, 'Họa Cung Phi', 't19.jpg', 35000.00),
(120, 5, 'Thái Tử Phi Thăng Chức Ký', 't20.jpg', 35000.00),
(121, 5, 'Nguyện Sống Cùng Anh', 't21.jpg', 35000.00),
(122, 5, 'Hoa Khôi Cung Đình', 't22.jpg', 35000.00),
(123, 5, 'Nghiệp Duyên Cung Đình', 't23.jpg', 35000.00),
(124, 5, 'Gặp Lại Nhau Giữa Mùa Hoa', 't24.jpg', 35000.00);

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
(1, 'Nguyễn Ích Thanh Tâm', 'tam7mat@gmail.com', '0123333333', '444', 'user'),
(2, 'Vũ Hạnh', 'nthanh777@gmail.com', '0112222222', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
