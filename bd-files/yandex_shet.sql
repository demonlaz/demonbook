-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 29 2017 г., 22:06
-- Версия сервера: 5.5.53
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookbdyii2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `yandex_shet`
--

CREATE TABLE `yandex_shet` (
  `id` int(11) NOT NULL,
  `yandex` bigint(20) NOT NULL COMMENT 'номер щета',
  `name` varchar(255) NOT NULL COMMENT 'логин заменившиго',
  `date_zamena` datetime NOT NULL COMMENT 'дата замены'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yandex_shet`
--

INSERT INTO `yandex_shet` (`id`, `yandex`, `name`, `date_zamena`) VALUES
(1, 41001606591041, 'admin', '2017-07-29 22:03:29');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `yandex_shet`
--
ALTER TABLE `yandex_shet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `yandex_shet`
--
ALTER TABLE `yandex_shet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
