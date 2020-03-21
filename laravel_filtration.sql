-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 22 2020 г., 00:41
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel_filtration`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `steam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steam_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uplay_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epicgames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epicgames_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gog_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`id`, `name`, `steam`, `steam_info`, `origin`, `origin_info`, `uplay`, `uplay_info`, `epicgames`, `epicgames_info`, `gog`, `gog_info`, `created_at`, `updated_at`) VALUES
(1, 'Outlast', 'https://store.steampowered.com/app/238320/Outlast/', 'donvardix', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.gog.com/game/outlast', 'donvardix', '2020-03-21 18:30:44', '2020-03-21 18:30:44'),
(2, 'Surgeon Simulator', 'https://store.steampowered.com/app/233720/Surgeon_Simulator/', 'donvardix', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.gog.com/game/surgeon_simulator', 'donvardix', '2020-03-21 18:33:23', '2020-03-21 18:33:23'),
(3, 'The Witcher: Enhanced Edition Director\'s Cut', 'https://store.steampowered.com/app/20900/The_Witcher_Enhanced_Edition_Directors_Cut/', 'donvardix', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.gog.com/game/the_witcher', 'donvardix', '2020-03-21 18:35:47', '2020-03-21 18:35:47'),
(4, 'The Witcher 2: Assassins of Kings Enhanced Edition', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.gog.com/game/the_witcher_2', 'donvardix', '2020-03-21 18:36:34', '2020-03-21 18:36:34'),
(5, 'Oxenfree', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/oxenfree/home', 'donvardix', 'https://www.gog.com/game/oxenfree', 'donvardix', '2020-03-21 18:39:42', '2020-03-21 18:39:42'),
(6, 'LIMBO', 'https://store.steampowered.com/app/48000/LIMBO/', 'donvardix\r\nа также на всей ферме', NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/limbo/home', 'donvardix', 'https://www.gog.com/game/limbo', 'donvardix', '2020-03-21 18:48:00', '2020-03-21 18:48:00'),
(7, 'The Walking Dead', 'https://store.steampowered.com/app/207610/The_Walking_Dead/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#', 'Есть в библиотеке:\r\nThe Walking Dead: Season 1', '2020-03-21 18:51:09', '2020-03-21 18:51:09'),
(8, 'Jotun: Valhalla Edition', 'https://store.steampowered.com/app/323580/Jotun_Valhalla_Edition/', NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/jotun/home', NULL, 'https://www.gog.com/game/jotun', NULL, '2020-03-21 18:52:46', '2020-03-21 18:52:46'),
(9, 'World of Goo', 'https://store.steampowered.com/app/22000/World_of_Goo/', NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/world-of-goo/home', NULL, NULL, NULL, '2020-03-21 18:56:34', '2020-03-21 18:56:34'),
(10, 'What Remains of Edith Finch', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/what-remains-of-edith-finch/home', NULL, NULL, NULL, '2020-03-21 18:57:17', '2020-03-21 18:57:17'),
(11, 'Watch_Dogs™', NULL, NULL, NULL, NULL, '#', 'donvardix@gmail.com', 'https://www.epicgames.com/store/ru/product/watch-dogs/home', NULL, NULL, NULL, '2020-03-21 19:05:40', '2020-03-21 19:05:40'),
(12, 'The Witness', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/the-witness/home', NULL, NULL, NULL, '2020-03-21 19:07:04', '2020-03-21 19:07:04'),
(13, 'The Talos Principle', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/the-talos-principle/home', NULL, NULL, NULL, '2020-03-21 19:08:18', '2020-03-21 19:08:18'),
(14, 'Surviving Mars', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/surviving-mars/home', NULL, NULL, NULL, '2020-03-21 19:09:15', '2020-03-21 19:09:15'),
(15, 'SUPERHOT', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/superhot/home', NULL, NULL, NULL, '2020-03-21 19:09:37', '2020-03-21 19:09:37'),
(16, 'Subnautica', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/subnautica/home', NULL, NULL, NULL, '2020-03-21 19:10:03', '2020-03-21 19:10:03'),
(17, 'Steep™', NULL, NULL, NULL, NULL, '#', NULL, 'https://www.epicgames.com/store/ru/product/steep/home', NULL, NULL, NULL, '2020-03-21 19:11:08', '2020-03-21 19:11:08'),
(18, 'Offworld Trading Company', 'https://store.steampowered.com/app/271240/Offworld_Trading_Company/', NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/offworld-trading-company/home', NULL, NULL, NULL, '2020-03-21 19:12:08', '2020-03-21 19:12:08'),
(19, 'Metro 2033 Redux', 'https://store.steampowered.com/app/286690/Metro_2033_Redux/', NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/metro-2033-redux/home', NULL, NULL, NULL, '2020-03-21 19:12:44', '2020-03-21 19:12:44'),
(20, 'Kingdom Come: Deliverance', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/kingdom-come-deliverance/home', NULL, NULL, NULL, '2020-03-21 19:13:53', '2020-03-21 19:13:53'),
(21, 'INSIDE', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/inside/home', NULL, NULL, NULL, '2020-03-21 19:14:42', '2020-03-21 19:14:42'),
(22, 'FOR HONOR™', 'https://store.steampowered.com/app/304390/FOR_HONOR/', NULL, NULL, NULL, '#', NULL, 'https://www.epicgames.com/store/ru/product/for-honor/home', NULL, NULL, NULL, '2020-03-21 19:15:39', '2020-03-21 19:15:39'),
(23, 'Assassin\'s Creed® Syndicate', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/assassins-creed-syndicate/home', NULL, NULL, NULL, '2020-03-21 19:18:14', '2020-03-21 19:18:14'),
(24, 'Assassin\'s Creed® Unity', NULL, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:19:48', '2020-03-21 19:19:48'),
(25, 'Assassin’s Creed® IV Black Flag™', NULL, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:21:24', '2020-03-21 19:21:24'),
(26, 'Assassin’s Creed® Chronicles: China', NULL, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:22:47', '2020-03-21 19:22:47'),
(27, 'Farming Simulator 19', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/farming-simulator-19/home', NULL, NULL, NULL, '2020-03-21 19:23:33', '2020-03-21 19:23:33'),
(28, 'Satisfactory', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.epicgames.com/store/ru/product/satisfactory/home', NULL, NULL, NULL, '2020-03-21 19:23:57', '2020-03-21 19:23:57'),
(29, 'The Sims™ 2', NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:26:55', '2020-03-21 19:26:55'),
(30, 'Far Cry®', NULL, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:31:10', '2020-03-21 19:31:10'),
(31, 'Far Cry® 2: Fortune\'s Edition', NULL, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:31:30', '2020-03-21 19:31:30'),
(32, 'Far Cry 3', NULL, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:31:57', '2020-03-21 19:31:57'),
(33, 'Far Cry® 4', NULL, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:32:15', '2020-03-21 19:32:15'),
(34, 'Far Cry® Primal', NULL, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:33:05', '2020-03-21 19:33:05'),
(35, 'The Sims™ 3', NULL, NULL, 'https://www.origin.com/rus/en-us/store/the-sims/the-sims-3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:34:18', '2020-03-21 19:34:18'),
(36, 'Need for Speed: Most Wanted', NULL, NULL, 'https://www.origin.com/rus/en-us/store/need-for-speed/need-for-speed-most-wanted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:34:57', '2020-03-21 19:34:57'),
(37, 'Battlefield 3', NULL, NULL, 'https://www.origin.com/rus/en-us/store/battlefield/battlefield-3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:35:33', '2020-03-21 19:35:33'),
(38, 'Battlefield™ 1', NULL, NULL, 'https://www.origin.com/rus/en-us/store/battlefield/battlefield-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:36:35', '2020-03-21 19:36:35'),
(39, 'The Sims™ 4', NULL, NULL, 'https://www.origin.com/rus/en-us/store/the-sims/the-sims-4/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:38:31', '2020-03-21 19:38:31'),
(40, 'FIFA 18', NULL, NULL, 'https://www.origin.com/rus/en-us/store/fifa/fifa-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 19:39:17', '2020-03-21 19:39:17');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2020_03_15_181433_create_games_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int(11) NOT NULL,
  `global_rating` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `games_name_unique` (`name`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nickname_unique` (`nickname`),
  ADD UNIQUE KEY `users_account_id_unique` (`account_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
