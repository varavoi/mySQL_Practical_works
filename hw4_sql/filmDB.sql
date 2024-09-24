-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.2
-- Время создания: Июн 23 2024 г., 00:29
-- Версия сервера: 8.2.0
-- Версия PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `filmDB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

CREATE TABLE `actors` (
  `id_actor` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `year_of_birth` int NOT NULL,
  `country_of_birth` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`id_actor`, `name`, `year_of_birth`, `country_of_birth`) VALUES
(1, 'Арнольд Алоис Шварценеггер', 1947, 9),
(2, 'Линда Кэрролл Хэмилтон', 1956, 1),
(3, 'Э́двард Уо́лтер Фёрлонг', 1977, 1),
(4, 'Рэй Дон Чонг', 1961, 7),
(5, 'Дэн Хедайя', 1940, 10),
(6, 'Сигу́рни Александра Уи́вер', 1949, 1),
(7, 'Вайно́на Ра́йдер', 1971, 1),
(8, 'Ро́нальд Фрэ́нсис Пе́рлман', 1950, 6),
(9, 'Зои Ядира Салдана-Перего', 1978, 11),
(10, 'Сэмюэл Генри Джон Уортингтон', 1976, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id_country` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id_country`, `name`) VALUES
(1, 'США'),
(2, 'Россия'),
(3, 'Мексика'),
(4, 'Франция'),
(5, 'Германия'),
(6, 'Великобритания'),
(7, 'Канада'),
(8, 'Аргентина'),
(9, 'Австрия'),
(10, 'Италия'),
(11, 'Испания');

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id_film` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `year` int NOT NULL,
  `id_country` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id_film`, `name`, `year`, `id_country`) VALUES
(1, 'Терминатор', 1984, 1),
(2, 'Коммандос', 1985, 1),
(3, 'Чужой 4: Воскрешение', 1997, 1),
(4, 'Аватар', 2009, 1),
(5, 'Битва Титанов', 2010, 1),
(6, 'Заложница', 2007, 1),
(7, 'Третий лишний 2', 2015, 1),
(8, 'Люди в чёрном', 1997, 1),
(9, 'Команда «А»', 2010, 1),
(10, 'Брюс всемогущий', 2003, 1),
(11, 'Плохие парни', 1995, 1),
(12, 'Я – легенда', 2007, 1),
(15, 'Чужой 4: Воскрешение', 1997, 4),
(16, 'Чужой 4: Воскрешение', 1997, 6),
(17, 'Команда «А»', 2010, 8),
(18, 'Команда «А»', 2010, 6),
(19, 'Команда «А»', 2010, 5),
(20, 'Заложница', 2007, 5),
(23, 'Я – легенда', 2003, 2),
(25, 'Я – легенда', 2003, 7),
(26, 'Коммандос', 1985, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `films_genres`
--

CREATE TABLE `films_genres` (
  `id` int NOT NULL,
  `id_film` int NOT NULL,
  `id_genre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `films_genres`
--

INSERT INTO `films_genres` (`id`, `id_film`, `id_genre`) VALUES
(1, 4, 8),
(2, 4, 10),
(3, 2, 3),
(4, 2, 1),
(5, 9, 3),
(6, 9, 1),
(7, 9, 2),
(8, 11, 2),
(9, 11, 3),
(10, 5, 9),
(11, 5, 8),
(12, 5, 1),
(13, 10, 2),
(14, 10, 6),
(15, 10, 10),
(16, 6, 12),
(17, 6, 1),
(18, 6, 3),
(19, 1, 8),
(20, 8, 3),
(21, 7, 2),
(22, 7, 10),
(23, 3, 4),
(24, 3, 3),
(25, 12, 4),
(26, 12, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `film_actors`
--

CREATE TABLE `film_actors` (
  `id` int NOT NULL,
  `id_film` int NOT NULL,
  `id_actor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `film_actors`
--

INSERT INTO `film_actors` (`id`, `id_film`, `id_actor`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 3),
(5, 2, 4),
(6, 26, 3),
(7, 26, 4),
(8, 2, 1),
(9, 26, 1),
(10, 4, 6),
(11, 4, 9),
(12, 4, 10),
(13, 3, 6),
(14, 3, 7),
(15, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id_genres` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id_genres`, `name`) VALUES
(1, 'Триллер'),
(2, 'Коммедия'),
(3, 'Боевик'),
(4, 'Ужасы'),
(5, 'Семейный'),
(6, 'Драма'),
(7, 'Мелодрама'),
(8, 'Фантастика'),
(9, 'Фэнтези'),
(10, 'Приключения'),
(11, 'История'),
(12, 'Криминал'),
(13, 'Детектив'),
(14, 'Биография'),
(15, 'Спорт'),
(16, 'Военный'),
(17, 'Вестерн');

-- --------------------------------------------------------

--
-- Структура таблицы `ratings`
--

CREATE TABLE `ratings` (
  `id_film` int NOT NULL,
  `rotten_tomatos` int NOT NULL,
  `imdb` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `ratings`
--

INSERT INTO `ratings` (`id_film`, `rotten_tomatos`, `imdb`) VALUES
(1, 6, 6),
(2, 7, 6),
(3, 7, 7),
(4, 7, 8),
(5, 7, 8),
(6, 7, 7),
(7, 7, 7),
(8, 7, 8),
(9, 7, 7),
(10, 6, 6),
(11, 8, 8),
(12, 7, 8),
(15, 7, 7),
(16, 7, 7),
(17, 7, 7),
(18, 7, 7),
(19, 7, 7),
(20, 7, 7),
(23, 7, 8),
(25, 7, 8),
(26, 6, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id_actor`),
  ADD KEY `country_of_birth` (`country_of_birth`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id_country`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `id_country` (`id_country`);

--
-- Индексы таблицы `films_genres`
--
ALTER TABLE `films_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Индексы таблицы `film_actors`
--
ALTER TABLE `film_actors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_actor` (`id_actor`),
  ADD KEY `id_film` (`id_film`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id_genres`);

--
-- Индексы таблицы `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id_film`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actors`
--
ALTER TABLE `actors`
  MODIFY `id_actor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id_country` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id_film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `films_genres`
--
ALTER TABLE `films_genres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `film_actors`
--
ALTER TABLE `film_actors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id_genres` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id_film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `actors`
--
ALTER TABLE `actors`
  ADD CONSTRAINT `actors_ibfk_1` FOREIGN KEY (`country_of_birth`) REFERENCES `countries` (`id_country`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id_country`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `films_genres`
--
ALTER TABLE `films_genres`
  ADD CONSTRAINT `films_genres_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `films_genres_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id_genres`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `film_actors`
--
ALTER TABLE `film_actors`
  ADD CONSTRAINT `film_actors_ibfk_1` FOREIGN KEY (`id_actor`) REFERENCES `actors` (`id_actor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `film_actors_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
