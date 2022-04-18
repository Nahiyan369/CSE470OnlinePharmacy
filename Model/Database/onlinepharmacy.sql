SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--
-- ../view/assets/Acifix.png


INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Cold', 'Acifix', 152.00, '../view/assets/Acifix.png', '2021-08-17 11:08:57'), -- NOW()
(2, 'Cold', 'Aristovit-B', 122.00, '../view/assets/Aristovit-B.png', '2021-08-17 11:08:57'),
(3, 'Fever', 'Aristovit-X', 122.00, '../view/assets/Aristovit-X.png', '2021-08-17 11:08:57'),
(4, 'Alergy', 'Cosmotrin', 122.00, '../view/assets/Cosmotrin.png', '2021-08-17 11:08:57'),
(5, 'Cold', 'Digecid-Plus', 122.00, '../view/assets/Digecid-Plus.png', '2021-08-17 11:08:57'),
(6, 'Cold', 'Fungistin', 122.00, '../view/assets/Fungistin.png', '2021-08-17 11:08:57'),
(7, 'Cold', 'gensulin-M30', 122.00, '../view/assets/gensulin-M30.png', '2021-08-17 11:08:57'),
(8, 'Alergy', 'gensulin-R', 122.00, '../view/assets/gensulin-R.png', '2021-08-17 11:08:57'),
(9, 'Alergy', 'Inflavis-Eye', 152.00, '../view/assets/Inflavis-Eye.png', '2021-08-17 11:08:57'),
(10, 'Fever', 'Neofloxin-Eye', 152.00, '../view/assets/Neofloxin-Eye.png', '2021-08-17 11:08:57'),
(11, 'Fever', 'Norestin', 152.00, '../view/assets/Norestin.png', '2021-08-17 11:08:57'),
(12, 'Skin', 'Pedeamin', 152.00, '../view/assets/Pedeamin.png', '2021-08-17 11:08:57'),
(13, 'Skin', 'Tuspel', 152.00, '../view/assets/Tuspel.png', '2021-08-17 11:08:57');
-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(8, 'Nahiyan Jarif', 'nahianjarif@gmail.com', '000000');


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;




-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

