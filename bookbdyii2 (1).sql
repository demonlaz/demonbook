-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 24 2017 г., 15:20
-- Версия сервера: 5.5.53
-- Версия PHP: 7.0.14

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
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL COMMENT 'id катерогии',
  `namebook` varchar(255) DEFAULT NULL COMMENT 'название книги',
  `avtor` text COMMENT 'автор',
  `content` text COMMENT 'краткое содержание',
  `imagesbook` varchar(255) DEFAULT NULL COMMENT 'название картники',
  `urlbookpdf` varchar(255) DEFAULT NULL COMMENT 'откуда скачать',
  `dataexit` date DEFAULT NULL COMMENT 'дата выхода книги',
  `data_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата размещения на сайте',
  `urlbookfb2` varchar(255) DEFAULT NULL,
  `urlbookrar` varchar(255) DEFAULT NULL COMMENT 'сылка на закачку рар архива',
  `dowload` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `parent_id`, `namebook`, `avtor`, `content`, `imagesbook`, `urlbookpdf`, `dataexit`, `data_add`, `urlbookfb2`, `urlbookrar`, `dowload`) VALUES
(1, 1, 'Php 7 в подлиннике', 'Николас', 'Избранная статья\r\nMass Effect (с англ. — «Эффект массы») — компьютерная игра в жанре ролевого боевика, разработанная студией BioWare и выпущенная Microsoft Game Studios в 2007 году, первая часть серии Mass Effect. Игра была первоначально выпущена только для игровой консоли Xbox 360; в 2008 году вышла версия игры для Microsoft Windows, а в 2012 году — версия для PlayStation 3.\r\n\r\nСогласно сюжету игры, в XXII веке человечество освоило технологии сверхсветовых полётов, в том числе вынесенный в название игры эффект массы, и вступило в контакт с внеземными цивилизациями. Главный герой или героиня игры, капитан Шепард, становится Спектром — специальным агентом на службе межзвёздного совета Цитадели — и вместе с группой соратников, как землян, так и инопланетян, посещает различные области и звёздные системы Млечного Пути. В ходе сюжета игры Шепард и члены его экипажа, преследуя изменника Сарена, сталкиваются с истинной угрозой для галактики — жнецами, древней цивилизацией разумных машин.\r\n\r\nИгра после выхода стала бестселлером и способствовала популяризации игровой приставки Xbox 360. Mass Effect получила множество премий и наград. Критики положительно оценили сюжетное повествование и качественную графику. Более сдержанные отзывы получила RPG-составляющая игры. Также критиками было отмечено сходство Mass Effect со многими научно-фантастическими фильмами и сериалами, особенно со «Звёздными войнами».\r\n\r\n(Далее…)\r\nДругие избранные статьи (1011) | Кандидаты | Статьи года (16) | Просмотр\r\nХорошая статья\r\nПрезидент США Джимми Картер и губернатор штата Пенсильвания Дик Торнбург осматривают панель приборов радиационного контроля\r\nАвария на АЭС Три-Майл-Айленд (англ. Three Mile Island Accident) — крупнейшая авария в истории коммерческой атомной энергетики США, произошедшая 28 марта 1979 года на втором энергоблоке станции по причине своевременно не обнаруженной утечки теплоносителя первого контура реакторной установки и, соответственно, потери охлаждения ядерного топлива. В ходе аварии произошло расплавление около 50 % активной зоны реактора, после чего энергоблок так и не был восстановлен. Помещения АЭС подверглись значительному радиоактивному загрязнению, однако радиационные последствия для населения и окружающей среды оказались несущественными. Аварии присвоен уровень 5 по шкале INES.\r\n\r\n(Далее…)\r\nДругие хорошие статьи (2782) | ', 'fonGlobal.jpg', 'https://yadi.sk/i/WPTSRzV1s26Vo', '2016-11-14', '2017-05-14 11:46:44', '', '', 113),
(2, 3, 'Тестовая книга', NULL, NULL, 'cherep.jpg', NULL, '2017-05-16', '2017-05-16 13:53:19', NULL, '', 30),
(3, 3, 'Тестовая книга', NULL, NULL, 'cherep.jpg', NULL, '2017-05-16', '2017-05-16 13:53:19', NULL, '', 1),
(4, 1, 'Msql', NULL, NULL, 'cherep.jpg', NULL, '2017-05-16', '2017-05-16 14:10:51', NULL, '', 2),
(5, 4, 'Книга тд ', NULL, NULL, 'cherep.jpg', NULL, NULL, '2017-05-16 14:53:24', NULL, '', 57),
(51, 5, 'Сиськи', 'Сиськи Сиськи', 'выаавыавыавы', 'fonGlobal.jpg', '', '0000-00-00', '2017-06-04 03:30:17', '', '', 0),
(52, 5, 'Сиськи', 'Сиськи Сиськи', 'выаавыавыавы', 'fonGlobal.jpg', '', '2017-06-30', '2017-06-04 03:31:21', '', '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `id_janri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `id_janri`) VALUES
(1, 'Программирование', 6),
(2, 'Ужасы', 1),
(3, 'Боевик', 4),
(4, 'Психология', 5),
(5, 'Web-дизайн', 6),
(6, 'ООП-программирование', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL DEFAULT 'Гость' COMMENT 'логин пользователя',
  `timdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'время добавления',
  `text` text NOT NULL COMMENT 'текст сообщения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `coment`
--

INSERT INTO `coment` (`id`, `login`, `timdate`, `text`) VALUES
(1, 'admin', '2017-06-11 19:10:29', 'Админ тест');

-- --------------------------------------------------------

--
-- Структура таблицы `comentbook`
--

CREATE TABLE `comentbook` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL DEFAULT 'Гость' COMMENT 'логин пользователя',
  `id_book` int(11) NOT NULL COMMENT 'id книги',
  `text` text NOT NULL COMMENT 'содержание',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата добавления'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comentbook`
--

INSERT INTO `comentbook` (`id`, `login`, `id_book`, `text`, `datetime`) VALUES
(1, 'Гость', 4, ',dfgfdg', '2017-05-30 14:30:51'),
(2, 'admin', 4, 'kjdlfkgjlkdfjglkdfjg', '2017-05-30 14:36:57'),
(3, 'admin', 1, 'ghhgfhgfh', '2017-06-11 19:35:11'),
(4, 'admin', 1, 'Админ тест', '2017-06-11 19:37:52');

-- --------------------------------------------------------

--
-- Структура таблицы `janri`
--

CREATE TABLE `janri` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `janri`
--

INSERT INTO `janri` (`id`, `name`) VALUES
(1, 'Фантастика'),
(2, 'Поэзия'),
(3, 'Юмор'),
(4, 'Детектив'),
(5, 'Научно-образовательные'),
(6, 'ПК и интернет'),
(7, 'Справочная литература'),
(8, 'Приключения'),
(9, 'Романы'),
(10, 'Прочее');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'id',
  `login` varchar(100) NOT NULL DEFAULT '' COMMENT 'логин',
  `password` varchar(255) DEFAULT NULL COMMENT 'пароль',
  `onlain` varchar(255) NOT NULL DEFAULT 'off' COMMENT 'пользователи онлайн',
  `powers` varchar(100) NOT NULL DEFAULT 'users' COMMENT 'Доступ на сайте',
  `mail` varchar(255) DEFAULT NULL COMMENT 'мыло',
  `userkey` varchar(255) DEFAULT NULL COMMENT 'ключь',
  `datatime` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `onlain`, `powers`, `mail`, `userkey`, `datatime`, `ip`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'off', 'admin', 'demonnnn@mail.ru', NULL, '2017-06-24 15:18:54', '127.0.0.1'),
(1, 'admin12', '98b77191ef56b0b463a3a680795769c9', 'off', 'admin', 'demonlaz@yandex.com', NULL, NULL, NULL),
(3, 'demonlaz', '98b77191ef56b0b463a3a680795769c9', 'off', 'users', 'demonlaz@yandex.ru', NULL, '2017-05-19 04:37:13', '127.0.0.1'),
(2, 'test', 'jdsflkdsjf', 'off', 'users', 'dsfdsfds', NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comentbook`
--
ALTER TABLE `comentbook`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `janri`
--
ALTER TABLE `janri`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`login`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `comentbook`
--
ALTER TABLE `comentbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `janri`
--
ALTER TABLE `janri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
