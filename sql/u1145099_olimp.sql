-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 18 2021 г., 17:42
-- Версия сервера: 5.7.27-30
-- Версия PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u1145099_olimp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `commebts`
--

CREATE TABLE `commebts` (
  `id` int(255) NOT NULL,
  `login` int(50) NOT NULL,
  `text` int(255) NOT NULL,
  `date` int(55) NOT NULL,
  `Uid` int(255) NOT NULL,
  `cat` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `otvet`
--

CREATE TABLE `otvet` (
  `id` int(200) NOT NULL,
  `login` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `otvet`
--

INSERT INTO `otvet` (`id`, `login`, `text`, `date`) VALUES
(6, 'team3 ', 'Блок:1 Задание:1\nСсылка на презентацию\nhttps://docs.google.com/presentation/d/1WFUZjF2X1daUrW6QMXwjUmE3aAtOXob3gTlf5G-ShMk/edit?usp=sharing', '2021-02-09 21:49:42'),
(7, 'team1', 'https://pifagorkakira.blogspot.com/2021/02/blog-post.html', '2021-02-10 09:06:49'),
(8, 'team1', 'https://pifagorkakira.blogspot.com/2021/02/blog-post.html', '2021-02-10 09:06:58'),
(9, 'team1', '2 этап.https://drive.google.com/file/d/1hLIbKsRBrTc9UqvWwcYXjsj9rZ1aZ7wk/view?usp=sharing', '2021-02-10 23:34:58');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `Uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`Uid`, `login`, `text`, `date`, `id`) VALUES
('6021474c482d4', 'team1', 'Тест 1\n', '2021-02-08 17:21:26', 8),
('60218934df5d5', 'koh', 'Привет всем!', '2021-02-08 21:56:13', 12),
('60228a92a3e39', 'team3', 'Блок:1 Задание:1\nЗдравствуйте, мы команда \"Умнички\", у нас очень весёлая и общительная команда. В состав нашей команды студенты из группы ПКСт-19-11-1, а именно: Кандыба Никита, Торопыгин Дмитрий, Скурихина Александра и Киселёва Дарина. Представлять нашу ', '2021-02-09 18:30:08', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `login` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `login`, `text`, `date`, `cat`) VALUES
(1, 'Кох', 'Задание 1. Перед тем как начать совместную работу, давайте познакомимся. Для совместной работы всем командам необходимо создать аккаунт в Google (Инструкция по созданию аккаунта на Google, регистрируйте аккаунт на свой электронный адрес).\r\n\r\nВ блоге оформите пост с представлением команды по данной схеме (примерно):\r\n\r\n\r\nназвание команды;\r\n\r\nкраткое представление участников команды (фотографии);\r\n\r\nпредставление руководителя команды;\r\n\r\nдевиз;\r\n\r\nэмблема;\r\n\r\nпредставление образовательного учреждения.\r\n\r\nТакже можно поместить ссылку на презентацию команды.\r\n\r\nКритерии оценки:\r\n\r\n\r\nсоответствие материала предложенной схеме;\r\n\r\nполнота раскрытия;\r\n\r\nлогичность и последовательность изложения материала;\r\n\r\nцелесообразность включения иллюстративных материалов и фото участников;\r\n\r\nкультура оформления, грамотность.\r\n\r\nПо каждому пункту критериев выставляются баллы от 0 до 2:\r\n\r\n\r\n0 – материалы абсолютно не отвечают критерию;\r\n\r\n1 – материалы отвечают критерию, но не в полной мере;\r\n\r\n2 – материалы полностью отвечают критерию.', NULL, NULL),
(2, 'Кох', '2 этап. «Разминка перед стартом. Теория вероятности вокруг нас» - 09.02.2021 г. – 10.02.2021 г.\r\n\r\nЗадание 1. Создадим вместе в документах Google презентации (не менее 10 слайдов).\r\n\r\nТемы презентаций:\r\n\r\n\r\nДомашние вероятности.\r\n\r\nСпорт и вероятность.\r\n\r\nРаботы Ж. Б. Ламарка. Понятие фенотипа и генотипа.\r\n\r\nРаботы Ч. Дарвина. Естественный отбор.\r\n\r\nРаботы Менделя. Понятие доминантных и рецессивных признаков.\r\n\r\nЗакон расщепления. Решетка Пиннета. Наследование группы крови.\r\n\r\nМутации. Причины мутаций. Польза и вред мутаций.\r\n\r\n\r\n\r\nКритерии оценки презентаций:\r\n\r\n\r\nсоответствие материала теме презентации\r\n\r\nполнота раскрытия темы;\r\n\r\nлогичность и последовательность изложения материала;\r\n\r\nцелесообразность включения иллюстративных материалов;\r\n\r\nкультура оформления, грамотность.\r\n\r\nПо каждому пункту критериев выставляются баллы от 0 до 2:\r\n\r\n\r\n0 – материалы абсолютно не отвечают критерию;\r\n\r\n1 – материалы отвечают критерию, но не в полной мере;\r\n\r\n2 – материалы полностью отвечают критерию.', NULL, NULL),
(3, 'Кох', 'Задание 2. Оцените, в соответствии с критериями, презентации других команд в комментариях к презентации. Оставьте свое мнение, внесите ваши предложения и рекомендации.\r\nКритерии оценки:\r\n\r\n\r\n0 – оценок и комментариев нет;\r\n\r\n1 – оценки есть, но не прокомментированы;\r\n\r\n2 – есть прокомментированные оценки.\r\n\r\nВ комментариях к странице Коллективная работа над проектом оцените работу вашей команды над презентацией в соответствии с предложенной таблицей, поделитесь своим мнением о совместной работе над презентацией, о взаимодействии с другими командами, о возникших проблемах.\r\nКритерии оценки:\r\n\r\n\r\n0 – оценки и комментариев нет;\r\n\r\n1 – оценка есть, но не прокомментирована;\r\n\r\n2 – есть прокомментированная оценка.', NULL, NULL),
(4, 'Кох', 'Задание 3.\r\n\r\n«Хорошая математическая шутка лучше дюжины посредственных работ; она также является лучшей математикой»\r\n\r\nЛитлвуд Д.\r\n\r\n\r\nПошутим, хорошо пошутим. Публикуйте известные вам шутки, курьёзы, анекдоты, связанные с теорией вероятностей, располагайте в комментариях к странице «Математики шутят» в блоге марафона до 11.02.2021 г.\r\n\r\nКритерии оценки: до 2 баллов за каждую публикацию, но не больше 6 баллов. Учитываются новизна, оригинальность, грамотность изложения.', NULL, NULL),
(5, 'Кох', '3 этап. «На пересечении наук» 11.02.2021 г.\r\nЗадание 1. Необходимо создать интеллект-карту (карту-памяти) по решению задач по генетике. Ссылку на интеллект-карту оставить на этой же странице в таблице.\r\n\r\nКритерии оценки:\r\n\r\nсоответствие материала теме;\r\n\r\nсоблюдение иерархии мыслей;\r\n\r\nиспользование кодирования информации;\r\n\r\nцелесообразность включения графических образов;\r\n\r\nоптимальность размещения элементов, грамотность.\r\n\r\nПо каждому пункту критериев выставляются баллы от 0 до 2:\r\n\r\n\r\n0 – материалы абсолютно не отвечают критерию;\r\n\r\n1 – материалы отвечают критерию не в полной мере;\r\n\r\n2 – материалы полностью отвечают критерию.\r\n', NULL, NULL),
(6, 'Кох', 'Задание 2. Командам\r\nнеобходимо будет ознакомиться с работами других команд, оценить их и оставить свое мнение об интеллект-картах в комментариях к странице «Интеллект-карты участников».\r\nКритерии оценки:\r\n\r\n\r\n0 – оценок и комментариев нет;\r\n\r\n1 – оценки есть, но не прокомментированы;\r\n\r\n2 – есть прокомментированные оценки.\r\n\r\n4 этап. Подведение итогов. Рефлексия. 12.02.2021 г.\r\n\r\nЗадание 1. Оценить свою работу в проекте, определить победителей в каждой из номинаций:\r\n\r\nЛучшее представление команды\r\n\r\nЛучшая презентация\r\n\r\nСамая содержательная интеллект- карта\r\n\r\nСамая активная команда', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `com`, `Uid`) VALUES
(1, 'team1', 'gruzovik221', 'mpk', '6024432be5fa5'),
(2, 'team2', 'edemedemvselo', 'mpk', '60236fbb5f82a'),
(3, 'team3', 'kovid18223', 'mpk', '60237c3b62cdd'),
(4, 'team4', 'shift5442', 'mpk', '6022520e04bd9'),
(5, 'koh', 'lohchik232', 'mpk', '60218934df5d5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `commebts`
--
ALTER TABLE `commebts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `otvet`
--
ALTER TABLE `otvet`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `commebts`
--
ALTER TABLE `commebts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `otvet`
--
ALTER TABLE `otvet`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
