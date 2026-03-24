-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2026 at 06:55 AM
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
-- Database: `myapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_email`, `product_id`, `quantity`, `created_at`) VALUES
(1, '', 17, 1, '2026-02-20 05:37:00'),
(2, '', 1, 1, '2026-02-20 05:37:49'),
(4, '', 3, 1, '2026-02-20 05:39:32'),
(5, '', 12, 2, '2026-02-20 05:42:50'),
(6, 'archna@gmail.com', 10, 1, '2026-02-20 07:00:49'),
(11, 'archna@gmail.com', 17, 1, '2026-02-20 09:55:19'),
(13, 'archna@gmail.com', 6, 1, '2026-02-20 09:56:42'),
(15, 'archna@gmail.com', 1, 1, '2026-02-23 06:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `mainCategory` varchar(50) DEFAULT NULL,
  `subCategory` varchar(100) DEFAULT NULL,
  `childCategory` varchar(100) DEFAULT NULL,
  `discount` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `image`, `category`, `brand`, `description`, `mainCategory`, `subCategory`, `childCategory`, `discount`) VALUES
(1, 'iPhone 15', 44999.99, '/images/iPhone15.jpg', 'Top Deals', 'Apple', 'Latest Apple iPhone 15', 'Electronics', 'Mobiles', 'Smartphones', 10),
(2, 'Galaxy S23', 79499.00, '/images/galaxy23.jpg', 'Best Sellers', 'Samsung', 'Latest Samsung Galaxy S23', 'Electronics', 'Mobiles', 'Smartphones', 20),
(3, 'MacBook Pro 16', 90990.00, '/images/macbookpro.jpg', 'New Arrivals', 'Apple', 'Powerful laptop', 'Electronics', 'Laptops', 'Premium Laptops', 0),
(6, 'T-shirt Puma', 999.00, '/images/pumaTshirt.jpg', 'Top Deals', 'Puma', 'Individual Rise Logo Printed Slim Fit Dry-Cell Football T-shirt', 'Men', 'Top Wear', 'T-Shirts', 0),
(7, 'OnePlus 12', 45999.00, '/images/onePlus12.jpg', 'New Arrivals', 'OnePlus', 'Latest OnePlus flagship device', 'Electronics', 'Mobiles', 'Smartphones', 20),
(8, 'Stylish Silk Saree', 699.99, '/images/saree1.jpeg', 'New Arrivals', 'Sudhati Saree', 'New arrival stylish saree', 'Women', 'Ethnic Wear', 'Sarees', 0),
(9, 'Anarkali Suit', 749.00, '/images/suit1.jpg', 'New Arrivals', 'Fashion', 'Pary wear anarkali suit for wemen', 'Women', 'Ethnic Wear', 'Suits', 0),
(10, 'Party Wear Dress', 2559.99, '/images/suit2.jpg', 'Top Deals', 'Fashion', 'Stylish designer partywear suit', 'Women', 'Western Wear', 'Dresses', 10),
(11, 'XL Plus Rechargeable Wireless Keyboard', 999.00, '/images/keyboard1.jpg', 'Top Deals', 'Amkette', 'Amkette Optimus XL Plus Rechargeable Wireless Keyboard/Bluetooth Keyboard for PC | Compact Design. Powerful firmware. 2.4G+3xBT, One Click Device Switching & AI Access, Dual OS Layout (Black)', 'Electronics', 'Accessories', 'Keyboards', 40),
(12, 'Zebronics Wireless Mouse', 499.00, '/images/mouse1.jpg', 'Top Deals', 'ZEBRONICS', 'Zebronics Wireless Mouse, Dual Mode 2.4GHz + BT, Up to 1600 DPI, USB Nano Receiver, Lightweight Design, Multicolor LED Lights, Rechargeable Battery (Blanc, Grey)', 'Electronics', 'Accessories', 'Mouse', 20),
(13, 'Women Top', 999.00, '/images/top1.jpg', 'Top Deals', 'Decathlon', 'Women Long Sleeve Tops', 'Women', 'Top Wear', 'Tops', 0),
(14, 'Puma Tshirt', 1599.00, '/images/puma1.jpg', 'Top Deals', 'Puma', 'Puma women Running Core Run Logo T-shirt (Peach) - Purchase Now', 'Women', 'Top Wear', 'T-Shirts', 0),
(15, 'Sports Tshirt', 799.00, '/images/sportsTshirt.jpg', 'Top Deals', 'H&M', 'Sports Tshirt For Wemen', 'Women', 'Top Wear', 'Sports T-Shirts', 0),
(16, 'Women Blue Straight Jeans', 1299.00, '/images/jeans2.jpg', 'New Arrivals', 'Levis', 'Stylish straight Women High Rise Jeans ', 'Women', 'Bottom Wear', 'Jeans', 0),
(17, 'Women High Waist Sky-blue Jeans', 1499.00, '/images/jeans3.jpg', 'Best Sellers', 'Zara', 'High waist stretchable skyblue jeans for women', 'Women', 'Bottom Wear', 'Jeans', 0),
(18, 'Women Formal Office Trousers', 1199.00, '/images/trouser1.jpg', 'Best Sellers', 'Allen Solly', 'Comfortable formal trousers for office wear', 'Women', 'Bottom Wear', 'Trousers', 0),
(19, 'Women Formal Office Trousers', 1199.00, '/images/trouser2.jpg', 'New Arrivals', 'H&M', 'Soft cotton casual trousers for daily wear', 'Women', 'Bottom Wear', 'Trousers', 15),
(20, 'Women  Trousers', 1199.00, '/images/trouser3.jpg', 'New Arrivals', 'H&M', 'Soft cotton casual trousers for office wear', 'Women', 'Bottom Wear', 'Trousers', 0),
(21, 'Women Blue Skinny Jeans', 1099.00, '/images/jeans11.jpg', 'Top Deals', 'Levis', 'Stylish slim fit blue denim jeans for women', 'Women', 'Bottom Wear', 'Jeans', 0);

-- --------------------------------------------------------

--
-- Table structure for table `saved_for_later`
--

CREATE TABLE `saved_for_later` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_for_later`
--

INSERT INTO `saved_for_later` (`id`, `user_email`, `product_id`, `quantity`, `created_at`) VALUES
(2, 'archna@gmail.com', 11, 1, '2026-02-20 09:52:31'),
(3, 'archna@gmail.com', 18, 1, '2026-02-20 09:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `userorder`
--

CREATE TABLE `userorder` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `total_price` decimal(10,2) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userorder`
--

INSERT INTO `userorder` (`id`, `user_email`, `items`, `total_price`, `address`, `created_at`, `payment_method`) VALUES
(1, 'archna@gmail.com', '[{\"id\":6,\"title\":\"T-shirt Puma\",\"price\":\"99.00\",\"image\":\"/images/pumaTshirt.jpg\",\"quantity\":1}]', 149.00, 'admin, 8318280158, jhfdvf, aaa, sss - 212103', '2026-02-06 07:17:11', 'UPI'),
(2, 'archna@gmail.com', '[{\"id\":2,\"title\":\"Galaxy S23\",\"price\":\"899.99\",\"image\":\"/images/galaxy23.jpg\",\"quantity\":1}]', 949.99, 'Archna Pandey, 8318280158, hhhg fddss , aaa, sss - 2121089', '2026-02-06 08:52:07', 'UPI'),
(3, 'archna@gmail.com', '[{\"id\":6,\"title\":\"T-shirt Puma\",\"price\":\"99.00\",\"image\":\"/images/pumaTshirt.jpg\",\"quantity\":1},{\"id\":1,\"title\":\"iPhone 15\",\"price\":\"999.99\",\"image\":\"/images/iPhone15.jpg\",\"quantity\":1}]', 1148.99, 'rp, 9878654567, abcd efgh Ijkl mnop, alld, up - 541236', '2026-02-06 10:03:31', 'Debit/Credit Card'),
(4, 'archna@gmail.com', '[{\"id\":3,\"title\":\"MacBook Pro 16\",\"price\":\"2499.99\",\"image\":\"/images/macbookpro.jpg\",\"quantity\":1}]', 2549.99, 'AP, 8318280158, abcd efgh ijkl, alld, up - 541236', '2026-02-06 10:17:44', 'Debit/Credit Card'),
(5, 'archna@gmail.com', '[{\"id\":2,\"title\":\"Galaxy S23\",\"price\":\"899.99\",\"image\":\"/images/galaxy23.jpg\",\"quantity\":1}]', 949.99, 'Archna Pandey, 7607712078, dsfdsfdsfds, abcd, abcd - 12563', '2026-02-09 09:46:40', 'COD'),
(6, 'guest_1770630448516@example.com', '[{\"id\":2,\"title\":\"Galaxy S23\",\"price\":\"899.99\",\"image\":\"/images/galaxy23.jpg\",\"quantity\":1}]', 949.99, 'Archna Pandey, 7607712078, gzdgfdgdsfgfd, abcd, abcd - 12563', '2026-02-09 09:48:12', 'Debit/Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password_hash`, `created_at`) VALUES
(1, 'Archna Pandey', 'archana333.cse@gmail.com', '$2b$10$/oMexzpZiuaF.jOYi6Xy3OD7DS0ODX0d0Z3oKQcZL0wBD9RZpcdPq', '2025-09-26 11:19:54'),
(2, 'roli pandey', 'roli@gmail.com', '$2b$10$ij9.3yER/Umu0TohcLhka.IimfnRXw7Dpn2GcT/cnkWzGkTlQT0AC', '2025-09-29 06:24:38'),
(3, 'ap', 'ap@gmail.com', '$2b$10$1u.9CAsCARltnKbB7cGIVe5JLCHmyl2VKjg1CpQK4ABB1IVLoSvNu', '2025-09-29 08:37:33'),
(4, 'Archna Pandey', 'archna@gmail.com', '$2b$10$LM06DhgLR6ZdfJP5P1PB7e2FMk0dmSySQOR5xrUecQbtPjWViBW9O', '2026-02-05 09:42:09'),
(5, 'abcd efgh', 'abcd@gmail.com', '$2b$10$jrMc2ufDtUfMEdPQiBRsJO.ooJw/EBhVBzFDwIthz398jhjqtIApa', '2026-02-16 10:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(1, 4, 1, '2026-02-20 05:16:34'),
(4, 4, 12, '2026-02-20 05:17:54'),
(5, 4, 2, '2026-02-20 09:40:06'),
(6, 4, 3, '2026-02-20 09:40:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_for_later`
--
ALTER TABLE `saved_for_later`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userorder`
--
ALTER TABLE `userorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_product` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `saved_for_later`
--
ALTER TABLE `saved_for_later`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userorder`
--
ALTER TABLE `userorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
