-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-10-2019 a las 18:56:49
-- Versión del servidor: 5.6.42
-- Versión de PHP: 7.2.11-4+0~20181106031630.10+stretch~1.gbp789850

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursoSql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `id` int(7) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit_rating` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales_rep_id` int(7) DEFAULT NULL,
  `region_id` int(7) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passw` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`, `passw`) VALUES
(201, 'Unisports', '55-2066101', '72 Via Bahia', 'Sao Paolo', NULL, 'Brazil', NULL, 'EXCELLENT', 12, 2, 'Customer usually orders large amounts and has a high order total. This is okay as long as the credit rating #ains excellent.', '77fd441b0f001fc6'),
(202, 'OJ Atheletics', '81-20101', '6741 Takashi Blvd.', 'Osaka', NULL, 'Japan', NULL, 'POOR', 14, 4, 'Customer should always pay by cash until his credit rating improves.', '77fd47e10f001d8c'),
(203, 'Delhi Sports', '91-10351', '11368 Chanakya', 'New Delhi', NULL, 'India', NULL, 'GOOD', 14, 4, 'Customer specializes in baseball equipment and is the\nlargest retailer in India.', '77fd474f0f001cfa'),
(204, 'Womansport', '1-206-104-103', '281 King Street', 'Seattle', 'Washington', 'USA', '981 1', 'EXCELLENT', 11, 1, NULL, '77fd46d50f001080'),
(205, 'Kam\'s Sporting Goods', '852-3692888', '15 Henessey Road', 'Hong Kong', NULL, NULL, NULL, 'EXCELLENT', 15, 4, NULL, '77fd41a30f001b4e'),
(206, 'Sportique', '33-225721', '172 Rue de Rivoli', 'Cannes', NULL, 'France', NULL, 'EXCELLENT', 15, 5, 'Customer specializes in Soccer. Likes to order accessories in bright colors.', '77fd41090f001ab4'),
(207, 'Sweet Rock Sports', '234-603621', '6 Saint Antoine', 'Lagos', NULL, 'Nigeria', NULL, 'GOOD', NULL, 3, NULL, '77fd40970f001c42'),
(208, 'Muench Sports', '49-527454', '435 Gruenestrasse', 'Stuttgart', NULL, 'Germany', NULL, 'GOOD', 15, 5, 'Customer usually pays small orders by cash and large\norders on credit.', '77fd407d0f001c28'),
(209, 'Beisbol Si!', '809-352689', '792 Playa Del Mar', 'San Pedro de Macon\'s', NULL, 'Dominican Republic', NULL, 'EXCELLENT', 11, 1, NULL, '77fd43cb0f001976'),
(210, 'Futbol Sonora', '52-404562', '3 Via Saguaro', 'Nogales', NULL, 'Mexico', NULL, 'EXCELLENT', 12, 2, 'Customer is difficult to reach by phone. Try mail.', '77fe8b1b0f009304'),
(211, 'Kuhn\'s Sports', '42-111292', '7 Modrany', 'Prague', NULL, 'Czechoslovakia', NULL, 'EXCELLENT', 15, 5, NULL, '77fe8a6e0f009457'),
(212, 'Hamad a Sport', '20-1209211', '57A Corniche', 'Alexandria', NULL, 'Egypt', NULL, 'EXCELLENT', 13, 3, 'Customer orders sea and water equipment.', '77fe85f10f009dda'),
(213, 'Big John\'s Sports Emporium', '1-415-555-6281', '4783 18th Street', 'San Francisco', 'CA', 'USA', '94117', 'EXCELLENT', 11, 1, 'Customer has a dependable credit record.', '77fe85440f009d2d'),
(214, 'Ojibwa y Retail', '1-716-555-7171', '415 Main Street', 'Buffalo', 'NY', 'USA', '1422', 'POOR', 11, 1, NULL, '77fe84af0f009e098'),
(215, 'Sporta Russia', '7-3892456', '6000 Yekatamina', 'Saint Petersburg', NULL, 'Russia', NULL, 'POOR', 15, 5, 'This customer is very friendly, but has difficulty paying bills. Insist upon cash.', '77fe84320f009e1b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depto`
--

CREATE TABLE `depto` (
  `id` int(7) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `region_id` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `depto`
--

INSERT INTO `depto` (`id`, `name`, `region_id`) VALUES
(50, 'Administration', 1),
(10, 'Finance', 1),
(41, 'Operations', 1),
(42, 'Operations', 2),
(43, 'Operations', 3),
(44, 'Operations', 4),
(45, 'Operations', 5),
(31, 'Sales', 1),
(32, 'Sales', 2),
(33, 'Sales', 3),
(34, 'Sales', 4),
(35, 'Sales', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emp`
--

CREATE TABLE `emp` (
  `id` int(7) NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userid` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_id` int(7) DEFAULT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept_id` int(7) DEFAULT NULL,
  `salary` decimal(11,2) DEFAULT NULL,
  `commission_pct` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `emp`
--

INSERT INTO `emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES
(1, 'Velasquez', 'Carmen', 'cvelasqu', '1990-03-03', NULL, NULL, 'President', 50, '2500.00', NULL),
(2, 'Ngao', 'LaDoris', 'lngao', '1990-03-08', NULL, 1, 'VP, Operatio ns', 41, '1450.00', NULL),
(3, 'Nagayama', 'Midori', 'mnagayam', '1991-06-17', NULL, 1, 'VP, Sales', 31, '1400.00', NULL),
(4, 'Quick-To- See', 'Mark', 'mquickto', '1990-04-07', NULL, 1, 'VP, Finance', 10, '1450.00', NULL),
(5, 'Ropeburn', 'Audry', 'aropebur', '1990-03-04', NULL, 1, 'VP, Administ ration', 50, '1550.00', NULL),
(6, 'Urguhart', 'Molly', 'murguhar', '1991-01-18', NULL, 2, 'Warehou se\nManager', 41, '1200.00', NULL),
(7, 'Menchu', 'Roberta', 'rmenchu', '1990-05-14', NULL, 2, 'Warehou se\nManager', 42, '1250.00', NULL),
(8, 'Biri', 'Ben', 'bbiri', '1990-04-07', NULL, 2, 'Warehou se\nManager', 43, '1100.00', NULL),
(9, 'Catchpole', 'Antoinette', 'acatchpo', '1990-02-09', NULL, 2, 'Warehou se\nManager', 44, '1300.00', NULL),
(10, 'Havel', 'Marta', 'mhavel', '1991-02-27', NULL, 2, 'Warehou se\nManager', 45, '1307.00', NULL),
(11, 'Magee', 'Colin', 'cmagee', '1990-05-14', NULL, 3, 'Sales Represen tative', 31, '1400.00', '10.00'),
(12, 'Giljum', 'Henry', 'hgiljum', '1992-01-18', NULL, 3, 'Sales Represen tative', 32, '1490.00', '12.50'),
(13, 'Sedeghi', 'Yasmin', 'ysedeghi', '1991-02-18', NULL, 3, 'Sales Represen tative', 33, '1515.00', '10.00'),
(14, 'Nguyen', 'Mai', 'mnguyen', '1992-01-22', NULL, 3, 'Sales Represen tative', 34, '1525.00', '15.00'),
(15, 'Dumas', 'Andre', 'adumas', '1991-10-09', NULL, 3, 'Sales Represen tative', 35, '1450.00', '17.50'),
(16, 'Maduro', 'Elena', 'emaduro', '1992-02-07', NULL, 6, 'Stock\nClerk', 41, '1400.00', NULL),
(17, 'Smith', 'George', 'gsmith', '1990-03-08', NULL, 6, 'Stock\nClerk', 41, '940.00', NULL),
(18, 'Nozaki', 'Akira', 'anozaki', '1991-02-09', NULL, 7, 'Stock\nClerk', 42, '1200.00', NULL),
(19, 'Patel', 'Vikram', 'vpatel', '1991-08-06', NULL, 7, 'Stock\nClerk', 42, '795.00', NULL),
(20, 'Newman', 'Chad', 'cnewman', '1991-07-21', NULL, 8, 'Stock\nClerk', 43, '750.00', NULL),
(21, 'Markarian', 'Alexander', 'amarkari', '1991-05-26', NULL, 8, 'Stock\nClerk', 43, '850.00', NULL),
(22, 'Chang', 'Eddie', 'echang', '1990-11-30', NULL, 9, 'Stock\nClerk', 44, '800.00', NULL),
(23, 'Patel', 'Radha', 'rpatel', '1990-10-17', NULL, 9, 'Stock\nClerk', 34, '795.00', NULL),
(24, 'Dancs', 'Bela', 'bdancs', '1991-03-17', NULL, 10, 'Stock\nClerk', 45, '860.00', NULL),
(25, 'Schwartz', 'Sylvie', 'sschwart', '1991-05-09', NULL, 10, 'Stock\nClerk', 45, '1100.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `product_id` int(7) NOT NULL DEFAULT '0',
  `warehouse_id` int(7) NOT NULL DEFAULT '0',
  `amount_in_stock` int(9) DEFAULT NULL,
  `reorder_point` int(9) DEFAULT NULL,
  `max_in_stock` int(9) DEFAULT NULL,
  `out_of_stock_explanation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restock_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inventory`
--

INSERT INTO `inventory` (`product_id`, `warehouse_id`, `amount_in_stock`, `reorder_point`, `max_in_stock`, `out_of_stock_explanation`, `restock_date`) VALUES
(10011, 101, 650, 625, 1100, NULL, NULL),
(10012, 101, 600, 560, 1000, NULL, NULL),
(10012, 10501, 300, 300, 525, NULL, NULL),
(10013, 101, 400, 400, 700, NULL, NULL),
(10013, 10501, 314, 300, 525, NULL, NULL),
(10021, 101, 500, 425, 740, NULL, NULL),
(10022, 101, 300, 200, 350, NULL, NULL),
(10022, 10501, 502, 300, 525, NULL, NULL),
(10023, 101, 400, 300, 525, NULL, NULL),
(10023, 10501, 500, 300, 525, NULL, NULL),
(20106, 101, 993, 625, 1000, NULL, NULL),
(20106, 201, 220, 150, 260, NULL, NULL),
(20106, 10501, 150, 100, 175, NULL, NULL),
(20108, 101, 700, 700, 1225, NULL, NULL),
(20108, 201, 166, 150, 260, NULL, NULL),
(20108, 10501, 222, 200, 350, NULL, NULL),
(20201, 101, 802, 800, 1400, NULL, NULL),
(20201, 201, 320, 200, 350, NULL, NULL),
(20201, 10501, 275, 200, 350, NULL, NULL),
(20510, 101, 1389, 850, 1400, NULL, NULL),
(20510, 201, 175, 100, 175, NULL, NULL),
(20510, 301, 69, 40, 100, NULL, NULL),
(20510, 401, 88, 50, 100, NULL, NULL),
(20510, 10501, 57, 50, 87, NULL, NULL),
(20512, 101, 850, 850, 1450, NULL, NULL),
(20512, 201, 162, 100, 175, NULL, NULL),
(20512, 301, 28, 20, 50, NULL, NULL),
(20512, 401, 75, 75, 140, NULL, NULL),
(20512, 10501, 62, 50, 87, NULL, NULL),
(30321, 101, 2000, 1500, 2500, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `ord_id` int(7) NOT NULL,
  `item_id` int(7) NOT NULL,
  `product_id` int(7) NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `quantity` int(9) DEFAULT NULL,
  `quantity_shipped` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`ord_id`, `item_id`, `product_id`, `price`, `quantity`, `quantity_shipped`) VALUES
(97, 1, 20106, '9.00', 1000, 1000),
(97, 2, 30321, '1500.00', 50, 50),
(98, 1, 40421, '85.00', 7, 7),
(99, 1, 20510, '9.00', 18, 18),
(99, 2, 20512, '8.00', 25, 25),
(99, 3, 50417, '80.00', 53, 53),
(99, 4, 50530, '45.00', 69, 69),
(100, 1, 10011, '135.00', 500, 500),
(100, 2, 10013, '380.00', 400, 400),
(100, 3, 10021, '14.00', 500, 500),
(100, 4, 10023, '36.00', 400, 400),
(100, 5, 30326, '582.00', 600, 600),
(100, 6, 30433, '20.00', 450, 450),
(100, 7, 41010, '8.00', 250, 250),
(101, 1, 30421, '16.00', 15, 15),
(101, 2, 40422, '50.00', 30, 30),
(101, 3, 41010, '8.00', 20, 20),
(101, 4, 41100, '45.00', 35, 35),
(101, 5, 50169, '4.00', 40, 40),
(101, 6, 50417, '80.00', 27, 27),
(101, 7, 50530, '45.00', 50, 50),
(102, 1, 20108, '28.00', 100, 100),
(102, 2, 20201, '123.00', 45, 45),
(103, 1, 30433, '20.00', 15, 15),
(103, 2, 32779, '7.00', 11, 11),
(104, 1, 20510, '9.00', 7, 7),
(104, 2, 20512, '8.00', 12, 12),
(104, 3, 30321, '1669.00', 19, 19),
(104, 4, 30421, '16.00', 35, 35),
(105, 1, 50273, '22.89', 16, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ord`
--

CREATE TABLE `ord` (
  `id` int(7) NOT NULL,
  `customer_id` int(7) NOT NULL,
  `date_ordered` date DEFAULT NULL,
  `date_shipped` date DEFAULT NULL,
  `sales_rep_id` int(7) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `payment_type` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_filled` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ord`
--

INSERT INTO `ord` (`id`, `customer_id`, `date_ordered`, `date_shipped`, `sales_rep_id`, `total`, `payment_type`, `order_filled`) VALUES
(97, 201, '1992-08-28', '1992-09-17', 12, '84000.00', 'CREDIT', 'Y'),
(98, 202, '1992-08-31', '1992-09-10', 14, '595.00', 'CASH', 'Y'),
(99, 203, '1992-08-31', '1992-09-18', 14, '7707.00', 'CREDIT', 'Y'),
(100, 204, '1992-08-31', '1992-09-10', 11, '601100.00', 'CREDIT', 'Y'),
(101, 205, '1992-08-31', '1992-09-15', 14, '8056.60', 'CREDIT', 'Y'),
(102, 206, '1992-09-01', '1992-09-08', 15, '8335.00', 'CREDIT', 'Y'),
(103, 208, '1992-09-02', '1992-09-22', 15, '377.00', 'CASH', 'Y'),
(104, 208, '1992-09-03', '1992-09-23', 15, '32430.00', 'CREDIT', 'Y'),
(105, 209, '1992-09-04', '1992-09-18', 11, '2722.00', 'CREDIT', 'Y'),
(106, 210, '1992-09-07', '1992-09-15', 12, '15634.00', 'CREDIT', 'Y'),
(107, 211, '1992-09-07', '1992-09-21', 15, '142171.00', 'CREDIT', 'Y'),
(108, 212, '1992-09-07', '1992-09-10', 13, '149570.00', 'CREDIT', 'Y'),
(109, 213, '1992-09-08', '1992-09-28', 11, '1020935.00', 'CREDIT', 'Y'),
(110, 214, '1992-09-09', '1992-09-21', 11, '1539.00', 'CASH', 'Y'),
(111, 204, '1992-09-09', '1992-09-21', 11, '2770.00', 'CASH', 'Y'),
(112, 210, '1992-08-31', '1992-09-10', 12, '550.00', 'CREDIT', 'Y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `price`
--

CREATE TABLE `price` (
  `prod_id` int(7) NOT NULL DEFAULT '0',
  `std_price` decimal(8,2) DEFAULT NULL,
  `min_price` decimal(8,2) DEFAULT NULL,
  `start_date` date NOT NULL DEFAULT '0000-00-00',
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `price`
--

INSERT INTO `price` (`prod_id`, `std_price`, `min_price`, `start_date`, `end_date`) VALUES
(10011, '35.00', '28.00', '2000-01-01', '2000-12-31'),
(10011, '32.00', '25.60', '2001-01-01', '2001-12-31'),
(10011, '30.00', '24.00', '2002-01-01', '2002-12-01'),
(10012, '42.00', '33.60', '2000-01-01', '2000-12-31'),
(10012, '39.00', '31.20', '2001-01-01', '2001-12-31'),
(10012, '45.00', '36.00', '2002-01-01', '2002-12-31'),
(10022, '2.40', '1.90', '2001-01-01', '2001-12-31'),
(10022, '2.80', '2.40', '2002-01-01', '2002-12-31'),
(10023, '4.80', '3.20', '2001-01-01', '2001-12-31'),
(10023, '5.60', '4.80', '2002-01-01', '2002-12-31'),
(30321, '58.00', '46.40', '2001-01-01', '2001-12-31'),
(30321, '54.00', '40.50', '2002-01-01', '2002-12-31'),
(30326, '24.00', '18.00', '2002-01-01', '2002-12-31'),
(30421, '12.50', '9.40', '2002-01-01', '2002-12-31'),
(40422, '3.40', '2.80', '2002-01-01', '2002-12-31'),
(41010, '2.40', '2.00', '2002-01-01', '2002-12-31'),
(41080, '4.00', '3.20', '2002-01-01', '2002-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(7) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longtext_id` int(7) DEFAULT NULL,
  `image_file` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `units` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `short_desc`, `longtext_id`, `image_file`, `units`) VALUES
(10011, 'Bunny Boot', 'Beginner\'s ski boot', 518, 'bunboot.jpg', NULL),
(10012, 'Ace Ski Boot', 'Intermediate ski boot', 519, 'stglove.jpg', NULL),
(10013, 'Pro Ski Boot', 'Advanced ski boot', 520, 'bunpole.jpg', NULL),
(10021, 'Bunny Ski Pole', 'Beginner\'s ski pole', 528, 'proboot.jpg', NULL),
(10022, 'Ace Ski Pole', 'Intermediate ski pole', 529, 'acepole.jpg', NULL),
(10023, 'Pro Ski Pole', 'Advanced ski pole', 530, 'baseball.jpg', NULL),
(20106, 'Junior Soccer Ball', 'Junior soccer ball', 613, 'baseball.jpg', NULL),
(20108, 'World Cup Soccer Ball', 'World cup soccer ball', 615, 'chaphelm.jpg', NULL),
(20201, 'World Cup Net', 'World cup net', 708, 'gpbike.jpg', NULL),
(20510, 'Black Hawk Knee Pads', 'Knee pads, pair', 1017, 'himbike.jpg', NULL),
(20512, 'Black Hawk Elbow Pads', 'Elbow pads, pair', 1019, 'grglove.jpg', NULL),
(30321, 'Grand Prix Bicycle', 'Road bicycle', 828, 'stglove.jpg', NULL),
(30326, 'Himalaya Bicycle', 'Mountain bicycle', 833, 'probar.jpg', NULL),
(30421, 'Grand Prix Bicycle Tires', 'Road bicycle tires', 927, 'curlbar.jpg', NULL),
(30426, 'Himalaya Tires', 'Mountain bicycle tires', 933, 'cabbat.jpg', NULL),
(30433, 'New Air Pump', 'Tire pump', 940, 'pucbat.jpg', NULL),
(32779, 'Slaker Water Bottle', 'Water bottle', 1286, 'winbat.jpg', NULL),
(32861, 'Safe-T Helmet', 'Bicycle helmet', 1368, 'safthelm.jpg', NULL),
(40421, 'Alexeyer Pro Lifting Bar', 'Straight bar', 928, 'aceboot.jpg', NULL),
(40422, 'Pro Curling Bar', 'Curling bar', 929, 'chaphelm.jpg', NULL),
(41010, 'Prostar 10 Pound Weight', 'Ten pound weight', 517, 'propole.jpg', NULL),
(41020, 'Prostar 20 Pound Weight', 'Twenty pound weight', 527, 'bunboot.jpg', NULL),
(41050, 'Prostar 50 Pound Weight', 'Fifty pound weight', 557, 'pucbat.jpg', NULL),
(41080, 'Prostar 80 Pound Weight', 'Eighty pound weight', 587, 'himbike.jpg', NULL),
(41100, 'Prostar 100 Pound Weight', 'One hundred pound weight', 607, 'pucbat.jpg', NULL),
(50169, 'Major League Baseball', 'Baseball', 676, 'grglove.jpg', NULL),
(50273, 'Chapman Helmet', 'Batting helmet', 780, 'stglove.jpg', NULL),
(50417, 'Griffey Glove', 'Outfielder\'s glove', 924, 'probar.jpg', NULL),
(50418, 'Alomar Glove', 'Infielder\'s glove', 925, 'propole.jpg', NULL),
(50419, 'Steinbach Glove', 'Catcher\'s glove', 926, 'bunpole.jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id` int(7) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(3, 'Africa / Middle East'),
(4, 'Asia'),
(5, 'Europe'),
(1, 'North America'),
(2, 'South America');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(7) NOT NULL,
  `region_id` int(7) NOT NULL DEFAULT '0',
  `address` longtext COLLATE utf8_unicode_ci,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_id` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `warehouse`
--

INSERT INTO `warehouse` (`id`, `region_id`, `address`, `city`, `state`, `country`, `zip_code`, `phone`, `manager_id`) VALUES
(101, 1, '283 King Street', 'Seattle', 'WA', 'USA', NULL, NULL, 6),
(201, 2, '68 Via Centrale', 'Sao Paolo', NULL, 'Brazil', NULL, NULL, 7),
(301, 3, '6921 King Way', 'Lagos', NULL, 'Nigeria', NULL, NULL, 8),
(401, 4, '86 Chu Street', 'Hong Kong', NULL, NULL, NULL, NULL, 9),
(10501, 5, '5 Modrany', 'Bratislava', NULL, 'Czechozlovakia', NULL, NULL, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `depto`
--
ALTER TABLE `depto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_region_id_uk` (`name`,`region_id`);

--
-- Indices de la tabla `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`product_id`,`warehouse_id`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ord_id`,`item_id`),
  ADD UNIQUE KEY `ord_id` (`ord_id`,`product_id`);

--
-- Indices de la tabla `ord`
--
ALTER TABLE `ord`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`prod_id`,`start_date`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_uk` (`name`);

--
-- Indices de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT de la tabla `depto`
--
ALTER TABLE `depto`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `ord`
--
ALTER TABLE `ord`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50420;
--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10502;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
