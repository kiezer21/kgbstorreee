-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 06:19 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kgb_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` bigint(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `name`, `email`, `contact`, `order_status`, `address`) VALUES
(38, 28, 'xt202000407@wmsu.edu.ph', 'guestako@guest.com', 90909090909, 0, ''),
(39, 32, '11', 'akositester@123', 1111, 0, ''),
(40, 30, 'kiezer', 'akositester@123', 123, 0, '1313123'),
(41, 32, 'kiezer', 'kiezer@gmail.com', 90909090909, 0, 'boalan'),
(42, 35, 'kiezer', 'malakiezer21@gmail.com', 90909090909, 0, 'adawda');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` blob NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `price`) VALUES
(67, 'qwdqd', 0x2e2f75706c6f6164732f3433383139363235335f383031333633303532383636363437375f323132333632303231323436323034303834315f6e2e6a7067, 12313),
(68, 'waeweqweqwefdsdsadasd', 0x2e2f75706c6f6164732f3336333033343839365f3738393435323039353939393730335f333733373832303539323435353238383339365f6e2e6a7067, 41313),
(70, 'adawdawd d wadawdadawdawd awdwa da ', 0x2e2f75706c6f6164732f3433383236373539365f323136323535353436303736333134375f363337383636343831333330313831363931385f6e2e6a7067, 123141),
(71, 'awdawdad', 0x2e2f75706c6f6164732f3337313534303032335f313431383134323439323433343932335f383131323234363632373737343531333235365f6e2e6a7067, 122141241),
(72, 'sadsad', 0x2e2f75706c6f6164732f3433383236373539365f323136323535353436303736333134375f363337383636343831333330313831363931385f6e2e6a7067, 12313),
(73, 'wadawd', 0x2e2f75706c6f6164732f3336333033343839365f3738393435323039353939393730335f333733373832303539323435353238383339365f6e2e6a7067, 213),
(74, 'huhuhu', 0x2e2f75706c6f6164732f3433383236373539365f323136323535353436303736333134375f363337383636343831333330313831363931385f6e2e6a7067, 1444),
(75, 'dsfsg qeqweq eq eqw eqw eqw eqw eqw eqw e', 0x2e2f75706c6f6164732f3337313534303032335f313431383134323439323433343932335f383131323234363632373737343531333235365f6e2e6a7067, 144),
(76, 'wadawd', 0x2e2f75706c6f6164732f3433383236373539365f323136323535353436303736333134375f363337383636343831333330313831363931385f6e2e6a7067, 2255),
(77, 'weawda', 0x2e2f75706c6f6164732f3336333033343839365f3738393435323039353939393730335f333733373832303539323435353238383339365f6e2e6a7067, 99999),
(78, 'uhuhuhb', 0x2e2f75706c6f6164732f3433383236373539365f323136323535353436303736333134375f363337383636343831333330313831363931385f6e2e6a7067, 181981);

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `user_name`, `user_rating`, `user_review`, `datetime`) VALUES
(11, 'kiezer', 5, 'awdawda', 1713019097),
(12, 'gelo', 4, 'best store', 1713019745),
(14, 'bennix', 5, 'biot si gelo', 1713020559),
(15, 'biot', 3, 'biot', 1713069684);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(500) NOT NULL,
  `s_desc` text NOT NULL,
  `s_price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `s_desc`, `s_price`) VALUES
(18, 'Thermal Paste GPU & CPU', 'asdadasdasd asdasd adas das dqw jdw km kmdqwkmdkwdk awndadjwnd oqjo kqnmqkm kqwon q oqn jnw dkasndquw do qwo neqokmwdo iqjqkdmqkmkqm kdqm iqm ikm kqn oqk mo mqokm dkqwd \r\n', 122),
(19, 'Thermal Paste GPU & CPU', 'aDASdasdasd ada sdas dw', 200),
(23, 'Massage', 'Great massage by bennix', 150),
(25, 'last', 'test', 150),
(26, 'awdawdawd', 'awdawdaEFa  dhqw dhwa kjdhaw jd wjdajw dnjaw bdjaw bjd baw dnw kdaw diaw gwjesoewfhwq h qwk sdakw nwi dhwai dhaw hwi dhaw dhawo dhwua gefw fnq k diwao haw hdao di  w h en w jwa naiksd', 1500),
(27, 'awdhawdhaiw', 'jhfawdhuawh uwah duw hwudh awojdoawij dwa jhdoiwh oiadhaoiuw bdiaw bdiuwh aduhwaod qo ', 15000),
(28, 'adaw', 'awdawdwa', 13),
(29, 'qwewqda', 'awdawd12', 1415),
(30, 'awdaw', 'awdada', 123),
(31, 'Thermal Paste GPU & CPU', 'wadawd', 1234),
(32, 'wewaew', 'eqeqeqwe', 1234),
(35, 'wadad', 'awdawdawd', 12313),
(36, 'adadawdawd', '12312313', 131313),
(37, 'adawdawda', '12312313', 1231313),
(38, 'adasdad', 'adasdasdada', 123414);

-- --------------------------------------------------------

--
-- Table structure for table `sorders`
--

CREATE TABLE `sorders` (
  `s_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` bigint(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sorders`
--

INSERT INTO `sorders` (`s_id`, `id`, `name`, `email`, `contact`, `order_status`, `address`) VALUES
(7, 19, 'kiezer', 'kiezer@tester.com', 11112, 0, 'boalan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sorders`
--
ALTER TABLE `sorders`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sorders`
--
ALTER TABLE `sorders`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
