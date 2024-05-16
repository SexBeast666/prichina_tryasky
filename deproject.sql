-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2023 at 11:48 PM
-- Server version: 10.8.4-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_order` enum('новое','подтверждено','отклонено') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `id_user`, `product_name`, `status_order`, `booking_date`) VALUES
(6, 25, 'car1', 'отклонено', '2004-02-10'),
(7, 26, 'car1', 'подтверждено', '2004-10-10'),
(8, 26, 'car2', 'подтверждено', '2003-02-20'),
(9, 26, 'car1', 'подтверждено', '0021-03-31'),
(10, 26, 'car1', 'подтверждено', '2222-02-23'),
(11, 26, 'car1', 'подтверждено', '3232-02-23'),
(12, 26, 'car2', 'отклонено', '2222-02-22'),
(13, 26, 'car1', 'подтверждено', '1111-11-11'),
(14, 26, 'car1', 'подтверждено', '2222-02-22'),
(15, 26, 'car1', 'подтверждено', '3333-03-31'),
(16, 26, 'car1', 'подтверждено', '3344-03-22'),
(17, 26, 'car1', 'отклонено', '2123-03-31'),
(18, 26, 'car1', 'подтверждено', '3145-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `driver_license` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `fio`, `login`, `password`, `email`, `phone_number`, `driver_license`, `status`) VALUES
(25, 'admin admin admin ', 'admin', 'q123321', 'admin@gmail.com', '8(900)-900-90-90', '123 321 123 21', 'admin'),
(26, 'user user user', 'user', 'q123321', 'user@gmail.com', '8(900)-900-60-60', '123 321 123', 'user'),
(27, 'user user user2', 'user2', 'q123321', 'user2@gmail.com', '8(900)-900-60-50', '123 321 123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
