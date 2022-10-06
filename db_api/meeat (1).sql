-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2022 lúc 03:02 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `android`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `image` varchar(1028) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Trà Sữa', 'Giày GUCCI', 'https://dos.utk.edu/wp-content/uploads/sites/32/2020/02/Milkshake-Mondays-Logo_v5-768x767.png'),
(2, 'Cơm', 'Dép GUCCI', 'https://th.bing.com/th/id/OIP.lXcvNqWoeO0CrRIVYT-DjQHaHa?pid=ImgDet&rs=1'),
(3, 'Đồ ăn vặt', 'Giày GUCCI', 'https://th.bing.com/th/id/OIP.osux9PCTNkPJ7noVZktgzwAAAA?pid=ImgDet&rs=1'),
(4, 'Pizza', 'Dép GUCCI', 'https://th.bing.com/th/id/OIP.CFRM0hXhw0TYmLqh7rFz-wAAAA?pid=ImgDet&rs=1'),
(5, 'Đồ uống', NULL, 'https://th.bing.com/th/id/OIP.AtjKWYZE6hrKumtXqeae1QHaHa?pid=ImgDet&rs=1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `status` varchar(128) NOT NULL DEFAULT 'pending',
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `description`, `status`, `users_id`, `created_at`) VALUES
(5, '1f8d170', '001', 'finished', 15, '2022-06-07 07:13:15'),
(6, '879c3c8', '001', 'finished', 1, '2022-06-09 04:29:32'),
(7, 'ce8c528', '001', 'finished', 1, '2022-06-09 05:49:22'),
(10, 'bd5da41', '001', 'pending', 3, '2022-06-09 06:43:30'),
(11, '9782a23', '001', 'finished', 3, '2022-06-09 07:13:34'),
(12, '23b1b09', '001', 'pending', 3, '2022-06-09 08:56:37'),
(13, 'bce1c7c', '001', 'pending', 1, '2022-06-09 09:35:11'),
(14, '331789d', '001', 'finished', 1, '2022-06-09 11:52:10'),
(15, 'a2883cf', '001', 'finished', 1, '2022-06-09 11:52:24'),
(16, 'a63dafc', '001', 'finished', 3, '2022-06-10 02:13:19'),
(17, '45a754e', '001', 'finished', 4, '2022-06-10 05:45:59'),
(18, '66c4a38', '001', 'pending', 5, '2022-06-10 07:10:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `orders_code` varchar(128) NOT NULL,
  `products_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders_details`
--

INSERT INTO `orders_details` (`id`, `orders_code`, `products_id`, `quantity`) VALUES
(1, '525188a', 2, 1),
(2, '525188a', 3, 1),
(3, '63f1f39', 4, 1),
(4, '1f8d170', 2, 1),
(5, '879c3c8', 3, 6),
(6, '879c3c8', 5, 1),
(7, 'ce8c528', 3, 1),
(8, 'fed7c71', 7, 1),
(9, '23a1498', 3, 1),
(10, 'bd5da41', 2, 2),
(11, 'bd5da41', 4, 1),
(12, '9782a23', 1, 4),
(13, '9782a23', 3, 1),
(14, '23b1b09', 3, 2),
(15, 'bce1c7c', 7, 1),
(16, '331789d', 10, 1),
(17, '331789d', 3, 1),
(18, '331789d', 8, 1),
(19, 'a2883cf', 7, 1),
(20, 'a63dafc', 2, 1),
(21, 'a63dafc', 10, 1),
(22, '45a754e', 3, 1),
(23, '66c4a38', 19, 1),
(24, '66c4a38', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay`
--

CREATE TABLE `pay` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `address` varchar(1024) NOT NULL,
  `note` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pay`
--

INSERT INTO `pay` (`id`, `name`, `phone`, `address`, `note`) VALUES
(1, 'Võ Duyệt', '0359863347', 'hương hồ, thừa thiên huế', 'giao vào 11-15h');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `price` float DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `image` varchar(1024) DEFAULT NULL,
  `categories_id` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `image`, `categories_id`, `view`) VALUES
(20, 'Trà sửa trân châu hoàng kim', 28000, 20, 'https://images.foody.vn/res/g75/740825/s400x400/41ee19a7-5f2a-4066-aad8-886699930cc6.jpg', 1, 10),
(21, 'Trà sửa HongKong', 30000, 20, 'https://images.foody.vn/res/g94/935188/s400x400/c1fae39e-638a-48a9-9313-37d3779417b3.jpg', 1, 2),
(22, 'Trà sửa lúa mạch', 31000, 20, 'https://images.foody.vn/res/g94/935188/s400x400/c4c2bd8b-86ab-4743-9d88-0c9b18a17853.jpg', 1, 2),
(23, 'Hồng trà sửa', 28000, 20, 'https://images.foody.vn/res/g94/935188/s400x400/2c046de4-42a0-4042-95b9-0eaacd4402bb.jpg', 1, 0),
(26, 'Trà sửa hoa nhài', 28000, 20, 'https://images.foody.vn/res/g94/935188/s400x400/b4729ac7-2322-4d0e-b0c1-218899bd9925.jpg', 1, 10),
(27, 'Trà sửa olong Kim Phượng', 34000, 20, 'https://images.foody.vn/res/g94/935188/s400x400/ac6d7075-8886-4a13-9dcf-9ae06b2c2933.jpg', 1, 0),
(28, 'Cơm Sườn', 24000, 20, 'https://images.foody.vn/res/g13/126552/s400x400/fda5196b-a570-4042-97bd-8d7883e2d884.jpg', 2, 5),
(29, 'Cơm thịt kho tiêu', 25000, 20, 'https://images.foody.vn/res/g13/126552/s400x400/d71d932c-8b24-41d9-9492-4e3a36f279fe.jpg', 2, 0),
(30, 'Cơm thịt Cầy', 30000, 20, 'https://images.foody.vn/res/g13/126552/s400x400/98441fb3-e979-403f-9cd3-0f269db58a2f.jpg', 2, 0),
(31, 'Cơm sườn', 27000, 20, 'https://images.foody.vn/res/g13/126552/s400x400/2f5cf43a-c0ae-45b6-bbd7-c070447d5e0f.jpg', 2, 0),
(32, 'Cơm thịt kho trứng', 50000, 20, 'https://images.foody.vn/res/g13/126552/s400x400/b26fe43c-7642-4c47-ab5e-7aa30aaec7af.jpg', 2, 0),
(33, 'Cơm đậu hũ dồn thịt', 34000, 20, 'https://images.foody.vn/res/g13/126552/s400x400/b26fe43c-7642-4c47-ab5e-7aa30aaec7af.jpg', 2, 1),
(34, 'Combo 1 Pizza size S + 1 Soft Drink', 190000, 20, 'https://images.foody.vn/res/g12/113651/s120x120/b83b6788-d3a0-4a56-bba3-d9ff5eaa-050cdcfa-220908170354.jpeg', 3, 5),
(35, 'COMBO NUI BỎ LÒ 69K', 190000, 20, 'https://images.foody.vn/res/g12/113651/s120x120/c4b94ef6-89a2-493e-839a-152fcdda-c941c94b-221001011747.jpeg', 3, 1),
(36, 'Combo 1 Pizza size S + 1 Soft Drink', 190000, 20, 'https://images.foody.vn/res/g12/113651/s120x120/b83b6788-d3a0-4a56-bba3-d9ff5eaa-050cdcfa-220908170354.jpeg', 3, 1),
(37, 'Bánh tráng tỏi Long An', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/35dd1abd-df96-4f3f-a563-c146fc0a-96d85b15-211105091925.jpeg', 4, 1),
(38, 'Cơm cháy chà bông', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/e36d89ed-b270-4fb9-bb91-be74cb246b5b.jpg', 4, 5),
(39, 'Muối tôm Tây Ninh', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/6fbd91ad-9e70-474b-b79e-8f742ec99a78.jpg', 4, 1),
(40, 'Mắm ruốc Huế ', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/a4454994-5830-4b6d-9380-fa3d7d79ebc9.jpg', 4, 1),
(41, 'Trái Cây thập cẩm dầm yogurt', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/de2e8ba4-5529-4d4c-9b3c-feb11c5e-b9d72d61-211018065008.jpeg', 5, 5),
(42, 'Trái cây thập cẩm dầm siro', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/636f23fe-448e-4cec-911f-cbdf8624-0c51e10b-211018065021.jpeg', 5, 1),
(43, 'Bơ dầm sữa', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/f91355fb-b7e8-4d8c-a549-542d0e154bdf.jpg', 5, 5),
(44, 'Sapoche Dầm Sữa', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/27c94d0d-45e8-451f-84c8-7be0a29d-e053f0e0-211027161950.jpeg', 5, 1),
(45, 'Dâu dầm siro', 290000, 20, 'https://images.foody.vn/res/g91/904717/s120x120/63b49e77-46d9-431c-be9c-e0230dba-886ae504-211017085833.jpeg', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(1028) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(1024) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'nguoidung'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `phone`, `name`, `password`, `address`, `role`) VALUES
(2, '0987208055', 'Lĩnh', '123456', 'Quảng Trị', 'admin'),
(6, '0928148142', 'hoang vu', '123456', 'Quang Tri', 'user'),
(7, '0987653231', 'Pham Linh', '09876543231', 'Pham Truong Anh', 'user'),
(10, '123456', 'Phạm Văn Lĩnh', '123456', 'Quảng Trị', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
