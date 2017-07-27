-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 27, 2017 at 01:21 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2056863_demonlaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
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
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `parent_id`, `namebook`, `avtor`, `content`, `imagesbook`, `urlbookpdf`, `dataexit`, `data_add`, `urlbookfb2`, `urlbookrar`, `dowload`) VALUES
(61, 7, 'Ярмарка Тщеславия', 'Уильям Теккерей', '«Ярмарка тщеславия» – главное произведение Теккерея, в центре внимания писателя – люди лживые и порочные. Автор полагал, что в доброте нет ничего удивительного, а вот зло очень любопытно и интересно изучать. Как это ни парадоксально, именно на фоне мелочности и эгоизма персонажей Теккерея наиболее ярко и выпукло выглядят идеалы добродетели. Современники Теккерея сочли роман скандальным до неприличия, но это не помешало автору мгновенно после его выхода стать знаменитым. Писатель говорил, что его роман – без героя, в основе повествования лежит история Бекки Шарп, готовой на все, чтобы выбиться из нищеты и стать богатой, респектабельной светской дамой. Все те ухищрения, на которые идет хитроумная Бекки, чтобы добиться желаемого, и сейчас весьма в ходу. Не случайно «Ярмарка тщеславия» была и остается одним из самых популярных в мире произведений.', '222.jpg', 'https://yadi.sk/i/M5s0PwK33KemkU', NULL, '2017-07-01 10:48:09', 'https://yadi.sk/i/bcXyB5p63KemkT', '', 7),
(63, 7, 'Божественна комедия - Ад', 'Данте Алигьери', '«Божественная комедия. Ад» – первая часть шедевральной поэмы великого итальянского поэта эпохи Возрождения Данте Алигьери (итал. Dante Alighieri, 1265 – 1321).*** Заблудившись в дремучем лесу, Данте встречает поэта Вергилия и отправляется с ним в путешествие по загробному миру. И начинается оно с девяти кругов Ада, где поэты встречают всевозможных грешников – обманщиков, воров, насильников, убийц и самоубийц, еретиков, скупцов, чревоугодников и прочих – среди которых узнают многих исторических фигур. Все они страдают от разных мук в зависимости от грехов, но самые страшные – в последнем, девятом кругу, где находятся предатели… Две другие части этого гениального произведения – «Чистилище» и «Рай». Данте Алигьери заслуженно называют «отцом итальянской литературы». Данное издание содержит уникальный редкий перевод Дмитрия Мина, выполненный в 1855 году.', '333.jpg', '', NULL, '2017-07-01 11:04:33', 'https://yadi.sk/i/ZeBDEogU3Kemky', '', 5),
(64, 7, 'Божественная комедия - Чистилище', 'Данте Алигьери', '«Божественная комедия. Чистилище» – вторая часть шедевральной поэмы великого итальянского поэта эпохи Возрождения Данте Алигьери (итал. Dante Alighieri, 1265 – 1321).*** Данте Алигьери заслуженно называют «отцом итальянской литературы». Заблудившись в дремучем лесу, Данте встречает поэта Вергилия, и отправляется с ним в путешествие по загробному миру. Пройдя девять кругов Ада, поэты оказываются в Чистилище, где находятся люди, успевшие перед смертью покаяться в своих грехах. Чтобы попасть в рай, они должны очиститься, испытав муки за свои прегрешения. Две другие части этого гениального произведения – «Ад» и «Рай». Данное издание содержит уникальный редкий перевод Дмитрия Мина, выполненный в 1855 году.', '4.jpg', '', NULL, '2017-07-01 11:07:36', 'https://yadi.sk/i/W0DXrq9y3Kemm6', '', 4),
(65, 7, 'Божественная комедия - Рай', 'Данте Алигьери', '«Божественная комедия. Рай» – третья часть шедевральной поэмы великого итальянского поэта эпохи Возрождения Данте Алигьери (итал. Dante Alighieri, 1265 – 1321).*** Заблудившись в дремучем лесу, Данте встречает поэта Вергилия, и отправляется с ним в путешествие по загробному миру. Повидав вместе с Вергилием мучения грешников в Аду и Чистилище, Данте в сопровождении своей возлюбленной Беатриче оказывается в Раю. Здесь обитают блаженные, прожившие жизнь достойно, и среди них поэт узнает многих исторических персонажей. Две другие части этого гениального произведения – «Ад» и «Чистилище». Данте Алигьери заслуженно называют «отцом итальянской литературы». Это издание содержит уникальный редкий перевод легендарного произведения, который выполнил Н. Голованов.', '5.jpg', '', NULL, '2017-07-01 11:10:17', 'https://yadi.sk/i/AishmeTI3KemmJ', '', 7),
(66, 7, 'Дамское счастье', 'Эмиль Золя', 'Юная Дениза приехала в Париж в поисках лучшей доли. Устроившись в роскошный магазин «Дамское счастье», девушка попадает в удивительный мир моды с его чарующей красотой. Умная, обладающая деловой хваткой, она быстро завоевывает себе репутацию одной из лучших продавщиц и становится душой этого грандиозного магазина. Сможет ли Дениза удержать успех в руках, а главное – найти свое дамское счастье?', '6.jpg', 'https://yadi.sk/i/BJ5zHcQJ3Kemks', NULL, '2017-07-01 11:16:28', 'https://yadi.sk/i/vjSpCo-53Kemkq', '', 5),
(67, 7, 'Таинственный остров', 'Жюль Верн', '«Таинственный остров» – один из самых увлекательных романов французского писателя-фантаста Жюля Верна. Во времена гражданской войны в США пятеро смельчаков-северян спасаются от плена на воздушном шаре. Страшная буря выбрасывает их на берег необитаемого острова. Отвага и таланты новых поселенцев острова помогают им обустроить свою жизнь. Мирное пребывание «робинзонов» на острове нарушает угроза нападения пиратов, но на помощь приходит таинственный и всемогущий друг.', '7.jpg', 'https://yadi.sk/i/XYU2ly3B3Kemko', NULL, '2017-07-01 11:20:04', 'https://yadi.sk/i/6D-_rLwL3Kemkm', '', 5),
(68, 8, 'Отцы и дети', 'Иван Сергеевич Тургенев', 'В романе «Отцы и дети» отразилась идеологическая борьба двух поколений, являвшаяся одной из главных особенностей общественной жизни 60-х годов XIX века. Роман приобрел непреходящие общечеловеческий интерес и значение.', '8.jpg', 'https://yadi.sk/i/58LSGFBo3Kemkh', NULL, '2017-07-01 11:27:19', 'https://yadi.sk/i/nauGboq23KemkZ', '', 6),
(69, 8, 'Анна Каренина', 'Лев Николаевич Толстой', '«Анна Каренина», один из самых знаменитых романов Льва Толстого, начинается ставшей афоризмом фразой: «Все счастливые семьи похожи друг на друга, каждая несчастливая семья несчастлива по-своему». Это книга о вечных ценностях: о любви, о вере, о семье, о человеческом достоинстве.', '9.jpg', 'https://yadi.sk/i/4XopHUEt3KemkV', NULL, '2017-07-01 11:37:48', 'https://yadi.sk/i/caDEXiST3KeqJu', '', 5),
(70, 8, 'Капитанская дочка', 'Александр Сергеевич Пушкин', 'В романе «Капитанская дочка» А.С.Пушкин нарисовал яркую картину стихийного крестьянского восстания под предводительством Емельяна Пугачева.', '10.jpg', 'https://yadi.sk/i/efZPIdVL3KemkR', NULL, '2017-07-01 11:42:40', 'https://yadi.sk/i/PQWYLSMG3KemkK', '', 8),
(71, 8, 'Герой нашего времени', 'Михаил Юрьевич Лермонтов', 'Роман «Герой нашего времени» – одна из вершин русской прозы первой половины XIX в. Воспринятый современниками М.Ю.Лермонтова как «странный», роман побуждает все новые и новые поколения читателей искать решения его загадкам.', '11.jpg', 'https://yadi.sk/i/9Hlk8Vpe3KemkH', NULL, '2017-07-01 11:46:55', 'https://yadi.sk/i/ofx7twnc3KemkF', '', 9),
(72, 7, 'Копи царя Соломона', 'Генри Райдер Хаггард', 'Охотник Аллан Квотермейн, капитан Гуд и сэр Генри Куртис пускаются в опасное путешествие на поиски алмазных копей царя Соломона. Для сэра Генри единственной целью является найти своего брата, который отправился за сокровищами и пропал без вести, а Квотермейн и Гуд надеются сказочно разбогатеть. Много испытаний придется пройти героям, прежде чем они доберутся до сокровищницы и вернутся оттуда', '12.jpg', 'https://yadi.sk/i/uXdF1KfS3KemkB', NULL, '2017-07-01 11:50:45', 'https://yadi.sk/i/5d0Ixbj33Kemk9', '', 8),
(73, 7, 'Одиссея', 'Гомер', 'Личность легендарного древнегреческого поэта Гомера до сих пор остается загадкой, но именно он считается автором величайших памятников мировой литературы – «Илиады» и «Одиссеи», – со славой прошедших испытание временем.', '13.jpg', 'https://yadi.sk/i/Gb71IvfZ3Kemk4', NULL, '2017-07-01 11:54:55', 'https://yadi.sk/i/13c1a00k3Kemjz', '', 7),
(74, 8, 'Мертвые души', 'Николай Васильевич Гоголь', 'История гениального дельца Чичикова, скупающего в глухой провинции «мертвые души» крепостных крестьян, по сей день поражает своей современностью и удивительным юмором!', '14.jpg', 'https://yadi.sk/i/VWXYSTUe3Kemjv', NULL, '2017-07-01 11:58:25', 'https://yadi.sk/i/xraUVENa3Kemjt', '', 9),
(75, 8, 'Братья Карамазовы', 'Федор Михайлович Достоевский', 'Самый сложный, самый многоуровневый и неоднозначный из романов Достоевского, который критики считали то «интеллектуальным детективом», то «ранним постмодернизмом», то – «лучшим из произведений о загадочной русской душе». Роман, легший в основу десятков экранизаций – от предельно точных до самых отвлеченных, – но не утративший своей духовной силы.', '15.jpg', 'https://yadi.sk/i/-mkRqYNd3Kemji', NULL, '2017-07-01 12:07:22', 'https://yadi.sk/i/PfaMI0HR3KemjZ', '', 9),
(76, 7, 'Робинзон Крузо', 'Даниэль Дефо', 'Одна из самых известных приключенческих книг в мире – «Робинзон Крузо», рассказывает об удивительных приключениях моряка, потерпевшего кораблекрушение. Волею судьбы одинокий человек был выброшен на берег необитаемого острова и провел много лет борясь за свое выживание. Книга была написана Даниэлем Дефо на основе реальных событий и служит прекрасным примером могущественной воли человека к жизни, которая помогла человеку обустроить свой быт и заново сделать множество открытий, большинство из которых человечество уже совершило много веков, но без которых жизнь человека немыслима.', '16.jpg', 'https://yadi.sk/i/igBCAqQ53KemjU', NULL, '2017-07-01 12:10:38', 'https://yadi.sk/i/8d4pVdZi3KemjB', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `id_janri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `id_janri`) VALUES
(1, 'Программирование', 6),
(2, 'Ужасы', 1),
(3, 'Боевик', 4),
(4, 'Психология', 5),
(5, 'Web-дизайн', 6),
(6, 'ООП-программирование', 6),
(7, 'Зарубежная классика', 11),
(8, 'Русская классика', 11);

-- --------------------------------------------------------

--
-- Table structure for table `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL DEFAULT 'Гость' COMMENT 'логин пользователя',
  `timdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'время добавления',
  `text` text NOT NULL COMMENT 'текст сообщения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coment`
--

INSERT INTO `coment` (`id`, `login`, `timdate`, `text`) VALUES
(1, 'admin', '2017-06-11 19:10:29', 'Админ тест'),
(2, 'admin', '2017-06-26 07:11:44', 'тест'),
(3, 'Elena', '2017-06-28 11:37:08', 'тест222'),
(4, 'Elena', '2017-07-11 08:59:12', 'Очень хороший сайт!!!'),
(5, 'admin', '2017-07-26 15:28:01', 'проверка');

-- --------------------------------------------------------

--
-- Table structure for table `comentbook`
--

CREATE TABLE `comentbook` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL DEFAULT 'Гость' COMMENT 'логин пользователя',
  `id_book` int(11) NOT NULL COMMENT 'id книги',
  `text` text NOT NULL COMMENT 'содержание',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата добавления'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comentbook`
--

INSERT INTO `comentbook` (`id`, `login`, `id_book`, `text`, `datetime`) VALUES
(1, 'Гость', 4, ',dfgfdg', '2017-05-30 14:30:51'),
(2, 'admin', 4, 'kjdlfkgjlkdfjglkdfjg', '2017-05-30 14:36:57'),
(3, 'admin', 1, 'ghhgfhgfh', '2017-06-11 19:35:11'),
(4, 'admin', 1, 'Админ тест', '2017-06-11 19:37:52'),
(5, 'admin', 52, 'проверка', '2017-06-26 06:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `janri`
--

CREATE TABLE `janri` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `janri`
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
(10, 'Прочее'),
(11, 'Классическая литература');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text COMMENT 'Название Новости',
  `avtor` varchar(255) DEFAULT NULL COMMENT 'Имя автора',
  `content` text COMMENT 'Содержимое статьи',
  `dateadd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата дабавления'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `avtor`, `content`, `dateadd`) VALUES
(1, 'Приветствие', 'admin', 'Желаю всем приятного чтения!!!', '2017-07-21 19:02:50'),
(2, '<p><em>Добро пожаловать </em></p>', 'admin', '', '2017-07-26 11:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'id',
  `login` varchar(100) NOT NULL DEFAULT '' COMMENT 'логин',
  `password` varchar(255) DEFAULT NULL COMMENT 'пароль',
  `onlain` varchar(255) NOT NULL DEFAULT 'off' COMMENT 'пользователи онлайн',
  `dataEndEnter` int(255) DEFAULT NULL COMMENT 'Время последнего визита',
  `powers` varchar(100) NOT NULL DEFAULT 'users' COMMENT 'Доступ на сайте',
  `mail` varchar(255) DEFAULT NULL COMMENT 'мыло',
  `userkey` varchar(255) DEFAULT NULL COMMENT 'ключь',
  `datatime` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `onlain`, `dataEndEnter`, `powers`, `mail`, `userkey`, `datatime`, `ip`) VALUES
(4, 'admin', '98b77191ef56b0b463a3a680795769c9', 'off', 1501141211, 'admin', 'demonnnn@mail.ru', NULL, '2017-06-24 15:18:54', '127.0.0.1'),
(3, 'demonlaz', '98b77191ef56b0b463a3a680795769c9', 'off', NULL, 'users', 'demonlaz@yandex.ru', NULL, '2017-05-19 04:37:13', '127.0.0.1'),
(6, 'Elena', 'a8e5b63a1071fa483805ab88ec27ea1d', 'off', NULL, 'admin', 'lena2010-1995@mail.ru', NULL, '2017-06-26 14:05:26', '217.19.208.107');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentbook`
--
ALTER TABLE `comentbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `janri`
--
ALTER TABLE `janri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`login`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comentbook`
--
ALTER TABLE `comentbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `janri`
--
ALTER TABLE `janri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
