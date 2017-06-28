-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 23 2017 г., 17:32
-- Версия сервера: 5.5.55-0ubuntu0.14.04.1-log
-- Версия PHP: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `test1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `mess`
--

CREATE TABLE IF NOT EXISTS `mess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` text NOT NULL,
  `author` varchar(12) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Дамп данных таблицы `mess`
--

INSERT INTO `mess` (`id`, `txt`, `author`, `date`) VALUES
(9, '123123', 'Anonimus', '2017-05-23 04:21:50'),
(10, '123123', 'Anonimus', '2017-05-23 04:22:00'),
(11, '123213', 'Anonimus', '2017-05-23 04:22:00'),
(12, 'asdasd', 'Ira', '2017-05-23 04:22:00'),
(13, 'asdasdad', '123123123', '2017-05-23 04:24:00'),
(14, 'asdasd', 'asdasdasdads', '2017-05-23 04:24:00'),
(15, 'sad', 'ira', '2017-05-23 04:24:00'),
(16, 'asd', 'ira', '2017-05-23 04:24:00'),
(17, '123123', 'Anonimus', '2017-05-23 04:25:00'),
(18, '123123', 'Anonimus', '2017-05-23 04:26:05'),
(19, 'asdasd', 'Ira', '2017-05-23 04:26:13'),
(20, '123123', 'Anonimus', '2017-05-23 04:28:10'),
(21, '123123', 'asdasdasd', '2017-05-23 04:28:16'),
(22, '123123', 'Anonimus', '2017-05-23 04:31:02'),
(23, '123123', 'asdasdasd', '2017-05-23 04:31:05'),
(24, '123123', 'Anonimus', '2017-05-23 04:32:25'),
(25, 'asdasd', 'sadasd', '2017-05-23 04:32:31'),
(26, 'asdasd', 'sadasdasdasd', '2017-05-23 04:32:37'),
(27, '123123', '123123123', '2017-05-23 04:33:11'),
(28, '??????', '123123123???', '2017-05-23 04:38:01'),
(29, '??????', '???????', '2017-05-23 04:38:09'),
(30, 'sadad', 'Anonimus', '2017-05-23 04:38:30'),
(31, 'asdasd', '123123', '2017-05-23 04:38:38'),
(32, '123123', 'Anonimus', '2017-05-23 04:41:00'),
(33, '??????)', '????', '2017-05-23 04:48:12'),
(34, '???????\n', '??', '2017-05-23 04:49:37'),
(35, 'Pasiba\n', '??', '2017-05-23 04:49:50'),
(36, 'Ono Tolko na angl?', '??', '2017-05-23 04:50:10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
