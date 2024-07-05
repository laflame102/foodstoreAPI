-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Час створення: Лип 05 2024 р., 12:15
-- Версія сервера: 10.4.28-MariaDB
-- Версія PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `foodstoreAPI`
--

-- --------------------------------------------------------

--
-- Структура таблиці `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп даних таблиці `Products`
--

INSERT INTO `Products` (`id`, `name`, `description`, `price`, `imageUrl`, `categoryId`, `stock`) VALUES
(1, 'Milk', '1L of fresh milk', 0.99, 'http://example.com/milk.jpg', 4, 100),
(2, 'Onion', '1L of fresh milk', 0.99, 'http://example.com/milk.jpg', 3, 100),
(3, 'Cucumber', 'Tasty cucumber', 0.75, 'url to cucumber image', 2, 200),
(4, 'Apple', 'Sweet apple', 2.5, 'url to apple image', 1, 100),
(5, 'Orange', 'Juicy orange', 3, 'url to orange image', 1, 80),
(6, 'Banana', 'Tasty banana', 1.5, 'url to banana image', 1, 120),
(7, 'Tomato', 'Juicy tomato', 1, 'url to tomato image', 2, 150),
(8, 'Grapes', 'Sweet grapes', 4, 'url to grapes image', 1, 90),
(9, 'Lettuce', 'Fresh lettuce', 1.2, 'url to lettuce image', 2, 180),
(10, 'Strawberry', 'Delicious strawberry', 2.2, 'url to strawberry image', 1, 110),
(11, 'Carrot', 'Crunchy carrot', 0.8, 'url to carrot image', 2, 220),
(12, 'Melon', 'Crunchy melon', 0.8, 'url to melon image', 2, 220),
(13, 'WaterMelon', 'Crunchy watermelon', 0.8, 'url to watermelon image', 2, 220),
(14, 'Apple', 'Fresh and juicy apples', 2.5, 'https://example.com/apple.jpg', 1, 100);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
