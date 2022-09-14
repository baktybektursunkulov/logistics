-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 07 2022 г., 20:20
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `logistics`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(25, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(28, 6, 'x', 'text', 'X', 1, 1, 1, 1, 1, 1, '{}', 3),
(29, 6, 'y', 'text', 'Y', 1, 1, 1, 1, 1, 1, '{}', 4),
(30, 6, 'z', 'text', 'Z', 1, 1, 1, 1, 1, 1, '{}', 5),
(31, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(32, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(33, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(34, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 6),
(35, 7, 'description', 'text', 'Description', 1, 0, 1, 1, 1, 1, '{}', 7),
(36, 7, 'x', 'text', 'X', 1, 1, 1, 1, 1, 1, '{}', 8),
(37, 7, 'y', 'text', 'Y', 1, 1, 1, 1, 1, 1, '{}', 9),
(38, 7, 'z', 'text', 'Z', 1, 1, 1, 1, 1, 1, '{}', 10),
(39, 7, 'range', 'text', 'Range', 1, 1, 1, 1, 1, 1, '{}', 11),
(40, 7, 'cost', 'text', 'Cost', 1, 1, 1, 1, 1, 1, '{}', 12),
(41, 7, 'from_text', 'text', 'From Text', 1, 0, 1, 1, 1, 1, '{}', 13),
(42, 7, 'to_text', 'text', 'To Text', 1, 0, 1, 1, 1, 1, '{}', 14),
(43, 7, 'from', 'hidden', 'From', 1, 1, 1, 1, 1, 1, '{}', 2),
(44, 7, 'to', 'hidden', 'To', 1, 1, 1, 1, 1, 1, '{}', 3),
(45, 7, 'order_status_id', 'hidden', 'Order Status Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(46, 7, 'truck_id', 'hidden', 'Truck Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(47, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 15),
(48, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(49, 7, 'order_belongsto_truck_relationship', 'relationship', 'trucks', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Truck\",\"table\":\"trucks\",\"type\":\"belongsTo\",\"column\":\"truck_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(50, 7, 'order_belongsto_order_status_relationship', 'relationship', 'order_statuses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\OrderStatus\",\"table\":\"order_statuses\",\"type\":\"belongsTo\",\"column\":\"order_status_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18),
(51, 7, 'order_belongsto_user_relationship', 'relationship', 'From', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"from\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(52, 7, 'order_belongsto_user_relationship_1', 'relationship', 'To', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"to\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 20);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(5, 'order_statuses', 'order-statuses', 'Order Status', 'Order Statuses', NULL, 'App\\Models\\OrderStatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-29 22:03:57', '2022-03-29 22:03:57'),
(6, 'trucks', 'trucks', 'Truck', 'Trucks', NULL, 'App\\Models\\Truck', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-29 22:04:12', '2022-03-29 22:04:12'),
(7, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Models\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-29 22:04:28', '2022-03-29 22:09:53');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-29 22:02:11', '2022-03-29 22:02:11');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-03-29 22:02:11', '2022-03-29 22:02:11', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-03-29 22:02:11', '2022-03-29 22:02:11', 'voyager.settings.index', NULL),
(11, 1, 'Order Statuses', '', '_self', NULL, NULL, NULL, 15, '2022-03-29 22:03:57', '2022-03-29 22:03:57', 'voyager.order-statuses.index', NULL),
(12, 1, 'Trucks', '', '_self', NULL, NULL, NULL, 16, '2022-03-29 22:04:12', '2022-03-29 22:04:12', 'voyager.trucks.index', NULL),
(13, 1, 'Orders', '', '_self', NULL, NULL, NULL, 17, '2022-03-29 22:04:28', '2022-03-29 22:04:28', 'voyager.orders.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2019_12_15_000001_create_sessions_table', 1),
(27, '2022_03_27_110952_create_products_table', 1),
(28, '2022_03_27_111025_create_trucks_table', 1),
(29, '2022_03_27_111028_create_order_statuses_table', 1),
(30, '2022_03_27_111831_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `x` int(10) UNSIGNED NOT NULL,
  `y` int(10) UNSIGNED NOT NULL,
  `z` int(10) UNSIGNED NOT NULL,
  `range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(10) UNSIGNED NOT NULL,
  `from_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` bigint(20) UNSIGNED NOT NULL,
  `to` bigint(20) UNSIGNED NOT NULL,
  `order_status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `truck_id` bigint(20) UNSIGNED NOT NULL,
  `applied_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name`, `description`, `x`, `y`, `z`, `range`, `cost`, `from_text`, `to_text`, `from`, `to`, `order_status_id`, `truck_id`, `applied_at`, `created_at`, `updated_at`) VALUES
(8, 'sdcsdc', 'regefvdev', 2, 2, 2, '29,3 км', 2300, '43.25928982359126,76.68314442357246', '43.24624047795169,76.93033680638496', 17, 2, 2, 1, '2022-04-26 16:49:22', '2022-04-26 16:48:55', '2022-04-26 16:49:22'),
(9, 'Beer', 'dgbggfbfgbf', 2, 2, 2, '55 км', 5500, '43.261067554792,76.94473855164854', '43.38739618233946,77.45010964539858', 19, 14, 2, 1, '2022-04-27 06:38:18', '2022-04-27 06:37:43', '2022-04-27 06:38:18');

-- --------------------------------------------------------

--
-- Структура таблицы `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Created', NULL, NULL),
(2, 'Applied', NULL, NULL),
(3, 'Rejected', NULL, NULL),
(4, 'Delivered', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(2, 'browse_bread', NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(3, 'browse_database', NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(4, 'browse_media', NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(5, 'browse_compass', NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(6, 'browse_menus', 'menus', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(7, 'read_menus', 'menus', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(8, 'edit_menus', 'menus', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(9, 'add_menus', 'menus', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(10, 'delete_menus', 'menus', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(11, 'browse_roles', 'roles', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(12, 'read_roles', 'roles', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(13, 'edit_roles', 'roles', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(14, 'add_roles', 'roles', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(15, 'delete_roles', 'roles', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(16, 'browse_users', 'users', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(17, 'read_users', 'users', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(18, 'edit_users', 'users', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(19, 'add_users', 'users', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(20, 'delete_users', 'users', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(21, 'browse_settings', 'settings', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(22, 'read_settings', 'settings', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(23, 'edit_settings', 'settings', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(24, 'add_settings', 'settings', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(25, 'delete_settings', 'settings', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(26, 'browse_order_statuses', 'order_statuses', '2022-03-29 22:03:57', '2022-03-29 22:03:57'),
(27, 'read_order_statuses', 'order_statuses', '2022-03-29 22:03:57', '2022-03-29 22:03:57'),
(28, 'edit_order_statuses', 'order_statuses', '2022-03-29 22:03:57', '2022-03-29 22:03:57'),
(29, 'add_order_statuses', 'order_statuses', '2022-03-29 22:03:57', '2022-03-29 22:03:57'),
(30, 'delete_order_statuses', 'order_statuses', '2022-03-29 22:03:57', '2022-03-29 22:03:57'),
(31, 'browse_trucks', 'trucks', '2022-03-29 22:04:12', '2022-03-29 22:04:12'),
(32, 'read_trucks', 'trucks', '2022-03-29 22:04:12', '2022-03-29 22:04:12'),
(33, 'edit_trucks', 'trucks', '2022-03-29 22:04:12', '2022-03-29 22:04:12'),
(34, 'add_trucks', 'trucks', '2022-03-29 22:04:12', '2022-03-29 22:04:12'),
(35, 'delete_trucks', 'trucks', '2022-03-29 22:04:12', '2022-03-29 22:04:12'),
(36, 'browse_orders', 'orders', '2022-03-29 22:04:28', '2022-03-29 22:04:28'),
(37, 'read_orders', 'orders', '2022-03-29 22:04:28', '2022-03-29 22:04:28'),
(38, 'edit_orders', 'orders', '2022-03-29 22:04:28', '2022-03-29 22:04:28'),
(39, 'add_orders', 'orders', '2022-03-29 22:04:28', '2022-03-29 22:04:28'),
(40, 'delete_orders', 'orders', '2022-03-29 22:04:28', '2022-03-29 22:04:28');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `x` int(10) UNSIGNED NOT NULL,
  `y` int(10) UNSIGNED NOT NULL,
  `z` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(2, 'user', 'Normal User', '2022-03-29 22:02:11', '2022-03-29 22:02:11');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Q7UNXVbP66RpBh09JdIDoFADfLzJzOXpA8rOCGgT', 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiV3N6aU9wZFIxQ0FZemJsNERMYXRpN1ZhWDVvWmdkbTlhVFdNNnNTUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2dpc3RpY3MubG9jL29yZGVycy9jcmVhdGUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHVCVk8zNG4yelBILllOa1A0dnF6SE9nNkJOdVJRL2JsYlYvZ1BoYy40ZlhHTkVVYXpKTW9HIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR1QlZPMzRuMnpQSC5ZTmtQNHZxekhPZzZCTnVSUS9ibGJWL2dQaGMuNGZYR05FVWF6Sk1vRyI7fQ==', 1654622345);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `trucks`
--

CREATE TABLE `trucks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `x` int(10) UNSIGNED NOT NULL,
  `y` int(10) UNSIGNED NOT NULL,
  `z` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `trucks`
--

INSERT INTO `trucks` (`id`, `name`, `x`, `y`, `z`, `created_at`, `updated_at`) VALUES
(1, 'Truck #1', 6, 8, 5, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(2, 'Truck #2', 9, 5, 8, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(3, 'Truck #3', 10, 9, 9, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(4, 'Truck #4', 5, 7, 9, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(5, 'Truck #5', 9, 6, 5, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(6, 'Truck #6', 5, 7, 6, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(7, 'Truck #7', 10, 10, 9, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(8, 'Truck #8', 6, 6, 8, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(9, 'Truck #9', 8, 7, 6, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(10, 'Truck #10', 10, 8, 8, '2022-03-29 22:02:12', '2022-03-29 22:02:12');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `bin`, `address`, `phone`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 2, 'Admin', NULL, NULL, NULL, 'admin@admin.kz', 'users/default.png', '2022-03-29 22:02:11', '$2y$10$7vBryJ6Wg8eXUrxw3UHmpeU90kGp.GHqWVr9UrvtGu/Lz9A7apkA.', NULL, NULL, 'hbH8T6kRYHNyxYvefaxkvBQCZCHULFiOYllkD7GSeLvh1i2rstcWgfNIsSwf', NULL, NULL, '2022-03-29 22:02:11', '2022-03-29 22:02:11'),
(2, NULL, 'User1', NULL, NULL, NULL, 'user@user.kz', 'users/default.png', '2022-03-29 22:02:11', '$2y$10$r7KRoqGmj7YFWanzhmkRVOkX70C6sQivtKd8zHdXcuF2Iic5GoZKy', NULL, NULL, 'p0OWa06NElWFrE0s0LKZErFxfNbR2qKvn4dp2B642bX3L5As6ndvj42cq9LD', NULL, NULL, NULL, '2022-03-29 22:30:49'),
(3, 2, 'Hane, Kling and Boyer', '355401868971', '618 Quinton Divide\nKulasberg, OH 04240-1295', '87817487002', 'sgoldner@example.com', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$W2NZ.sU2xg.54.U3Cf3bZuM/wu49JCfIKvb1GJ3KKWKcIDeSW1AY.', NULL, NULL, 'dJYeImzlF4', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(4, 2, 'Reichel, Koelpin and Schultz', '305282025145', '585 Frederik Mill Suite 231\nWest Marqueshaven, AL 86861', '87311093355', 'myriam83@example.org', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$srMN6WvukUIUkGNyk4DoPO30hgHHM73meAXksPEjCpuYhcyuEg3PW', NULL, NULL, 'NptZC2UXfo', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(5, 2, 'Kuvalis, Tromp and Pacocha', '732275091146', '25243 Emerald Vista Apt. 798\nNorth Kasandra, MO 64061', '87386217095', 'ova44@example.net', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$uz1gP27oHXM.Vn94.4q.xudlBZ.7G6QkHZfP4pOJWoW3h6jINknxa', NULL, NULL, 'BXUhcaUxho', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(6, 2, 'Brekke and Sons', '442142184994', '427 Stanley Plains\nHettingerside, OH 67991-2296', '87801967995', 'osinski.citlalli@example.org', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$KWTxSFhs8UEbuUM7EjMO2OUPKxV9O3Zj74iOrife52SseXkOyE5vK', NULL, NULL, 'C9HSpnE4Aw', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(7, 2, 'Von-Klein', '301557774915', '43528 Schoen Center\nLake Magnolia, ME 22760-6394', '87822801141', 'jnikolaus@example.com', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$OvNoU77n7KJYOUlykxazXOg6CJTxC9sruk8OL5rwZV1KY.Vfntea.', NULL, NULL, 'SFG8ylj0jK', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(8, 2, 'Halvorson, Stanton and Mayert', '444534865467', '97744 Johnston Roads\nPort Ferminstad, NJ 07196-3333', '87938081843', 'otromp@example.org', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$JtWL6VcjsxMca7eXT5d9j.Y77Tgrrtas306pqmiWnS6.e2uy2/u5O', NULL, NULL, 'gwoeUoNAXo', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(9, 2, 'Bauch, Wolf and Wiza', '385044350541', '1550 Huel Hills Apt. 499\nErlingberg, NY 92411', '87929981223', 'terry.margret@example.com', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$Hdf2Le7V1kEquzC.HrCXPOmPWV397jmERlBO/LdfbLAKuO193A1nm', NULL, NULL, 'w80EA6DtSz', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(10, 2, 'Hahn and Sons', '200278423938', '715 Carter Village\nCassinberg, CA 84265', '87935042984', 'ephraim.hansen@example.com', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$yHNhy/czHskFA0X5JuOaWOmlQE/Nvx9n6ERPXGCnU40jI7dpYfkL2', NULL, NULL, 'gqpHHbagPY', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(11, 2, 'Fahey and Sons', '560100893779', '498 Bria Drives\nPort Leamouth, MO 95179-5041', '87789965727', 'buckridge.erling@example.org', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$chNRTFix22TJOD1CocLmse2QJtKTYRl1DeKVOgl7W8z14YyMX.e4y', NULL, NULL, '3eTTHTXQN8', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(12, 2, 'Osinski-Dietrich', '300547862879', '3133 Cristobal Lake\nQuigleytown, FL 95503', '87922743858', 'lester25@example.org', 'users/default.png', '2022-03-29 22:02:12', '$2y$10$nEcfjHpcUtxRC2OEV/uAMOCxcpHce3X/Rtai5tFMq5hYREaWBlTZS', NULL, NULL, 'Xgb3900H6T', NULL, NULL, '2022-03-29 22:02:12', '2022-03-29 22:02:12'),
(13, 2, 'dfsgh', NULL, NULL, NULL, 'fdsg@sdfg', 'users/default.png', NULL, '$2y$10$QjFmV/vrBMaaJr2D45TArOXc5c8tHYPeZkbwSy6KnBvOXmBlMH6nO', NULL, NULL, NULL, NULL, NULL, '2022-03-29 22:43:01', '2022-03-29 22:43:01'),
(14, 2, 'Dulat', NULL, NULL, NULL, 'd.turganbek.01@gmail.com', 'users/default.png', NULL, '$2y$10$QB.eCaYjGg.VjpNXQZBEbuFclfzsNODjTZw0xZp/sgsaRh3168Yoi', NULL, NULL, NULL, NULL, NULL, '2022-03-30 00:32:25', '2022-03-30 00:32:25'),
(15, 2, 'Dulat Turganbek', NULL, NULL, NULL, '26301@edu.iitu.kz', 'users/default.png', NULL, '$2y$10$Zln7ymPsH4f9WVtD9EKU.uXX/3fghe.j8vikvXJJAdW4kyy7qfAhG', NULL, NULL, NULL, NULL, NULL, '2022-03-30 00:47:17', '2022-03-30 00:47:17'),
(16, 2, 'Dulat1223', NULL, NULL, NULL, 'd.turganbek.011@gmail.com', 'users/default.png', NULL, '$2y$10$A.P3k1Zv.ozvhb90hU1WPekbZ8H3EwnmZiVeUBeL/O0kUYBxYxbyG', NULL, NULL, NULL, NULL, NULL, '2022-04-13 03:13:59', '2022-04-13 03:13:59'),
(17, 2, 'BMW111', NULL, NULL, NULL, 'd.turganbek.012@gmail.com', 'users/default.png', NULL, '$2y$10$uBVO34n2zPH.YNkP4vqzHOg6BNuRQ/blbV/gPhc.4fXGNEUazJMoG', NULL, NULL, '0rf7J1rgdHgIkouotr6l0kXluS2XEepkATwiGiTvV5Ae5ivwolWbISmqhn5m', NULL, NULL, '2022-04-13 03:21:11', '2022-04-27 11:20:57'),
(18, 2, 'Arman', NULL, NULL, NULL, 'd.turganbek.0111@gmail.com', 'users/default.png', NULL, '$2y$10$R3XO5xHZQ9ztnj3UWQnGEeKMr/e0i/pKDzZF74MoQblzf7OkAW0.q', NULL, NULL, NULL, NULL, NULL, '2022-04-26 06:05:34', '2022-04-26 06:05:34'),
(19, 2, 'Aidar', NULL, NULL, NULL, 'd.turganbek.0188@gmail.com', 'users/default.png', NULL, '$2y$10$bjSgcABB0zKSqJv.Fp7xN.n6pJfdR9lQD3cXTv.yK5XEQISsYGGJu', NULL, NULL, NULL, NULL, NULL, '2022-04-27 06:36:26', '2022-04-27 06:36:26'),
(20, 2, 'Dulat', NULL, NULL, NULL, 'd.turganbek.018888@gmail.com', 'users/default.png', NULL, '$2y$10$OFr8C2Jg7raC4bOzs9EQHe6D3M9TtAKUGe9fiXf6iV49CLs0iOlC6', 'eyJpdiI6IktaMVk4ck9KbFhkWEdOdXp5Z1JpUFE9PSIsInZhbHVlIjoiUlBrOGJPcllmcGVlajJuaXkzWDZUd3FiTXJEYXE2WWkrc0lYaWcxVStyTT0iLCJtYWMiOiIyZDdlN2EyZjcwYjEyMDU2YzQ0NDIxMzY4MWMyYzVhYzk1OThjM2U5ZTNlZDJiMDU2ODE0N2VmNmQxOTBmNWI4IiwidGFnIjoiIn0=', 'eyJpdiI6IjBwQmo4V3BnMlZYeXVTQVY0RTFQZnc9PSIsInZhbHVlIjoieW5EQ05QQ1RZUDFKajhJYmJWMmt3STUxc21YTjBvYW9jZG50eVNwNTNjWThSN3BzRitUNXpSMWFFd1JuZWdmUUZBb0dSdGI4ZzFmc3h1bWtYZWdUZEIyRjBucEZwb21kWXZvRGFKUU05ai91dHEwaCtvMWhDYzN5SkVacjQzTnhNZEpPUHBHRGlDQzY1RnZDNUlkK0tvU21MN1dFNkdidUJoZnZsc0o0UVpDOW00YVljQ1hSOXM4R0ZiTW4vSmVmRGExZkF5UnQ3Q2RYV0JRNVRjU1hZV1U2T0YzZHNpZnpiRHVpSUptcmJGMlFOcFl1SjlHQ2xFeEZzUzVzSFZodDF3VFdvUlk1T1RaNUJvRm9MckhEekE9PSIsIm1hYyI6ImE5YTNiNTkzOTMwNjE0M2I5YzJmZmNlMWY3YzNkMjdmMmEzNzRmY2E5MzkwZTk4MzAyN2QxZjYzYTk4ZDcyOTAiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2022-04-27 06:39:21', '2022-04-27 06:39:43'),
(21, 2, 'Dulat', NULL, NULL, NULL, 'qwerty@gmail.com', 'users/default.png', NULL, '$2y$10$QPEsKFwX.IavVuZZNAx1GO/1lS0SNtFwLez1u/zpqWyA.pTHh0aUm', 'eyJpdiI6ImE0c2I5NlNwQ09QdjRGMXphbmUzUmc9PSIsInZhbHVlIjoiYnBsckFOVU5QNnk3WW5UZlRjSlVVVzVUYkFiVWcwbHdsd2djYWhnM3ZHUT0iLCJtYWMiOiJhYzkyZGQ3Y2JiMTJjMmY3NzI5NjUyY2Q4MGYzMjk4MGM2ZTdlNTI4NDZmNGZhM2NmNzk0M2QyOTgxYWE0ZWIyIiwidGFnIjoiIn0=', 'eyJpdiI6IlM0TnUyVXRDdjFqcXY2OHBPYlJOMGc9PSIsInZhbHVlIjoiZHlUQ3lUay9KR2cvTHV5c1ZZSmlqWFBCd2JRNmUyTGd2cERrUmhycGdDSm51WS9GbjY3Q3U5QnVDYXpCZmJzYlFGSzh4eTFuWU83TStMTE1ZWUFzV1RDKzBGbysvN2hHSlFFNWF5a3ZzSmllRzhXdExabys4cGZrcEw3bmgvN0JmS3JqUnZHcjcrVXhycDFObWlManh3alBIN01MTExuRDgxL1F3bEthV04zQy91alhFZHBRS0JhbmpORDBkRzZSakE4NktmNmoydFRaaERFNmZ3VnZtSlo2SnhTMmtTdDg4enMwelJ6aHdvNXVtQ2tDeHdOdmpCUkxUaWtXWktjc3dyVUR0K0tqdXBGbHhsRElsanl0b3c9PSIsIm1hYyI6IjliYTE0NTU5NTM3ZjRhZWRhZjY3NGY2MDcxMzA0M2Q2ZDliOGY5YWE3OWRiZTI0ZGU3Y2MzOGRmOTY5N2VhY2QiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2022-04-27 11:14:26', '2022-04-27 11:14:44'),
(22, 2, 'Mercedes', NULL, NULL, NULL, 'dulattt@gmail.com', 'users/default.png', NULL, '$2y$10$LM.B354YSW21HoawA2/dhuUIBJ1gbmH7CouHHbvfUPdVgFMC7.BFK', 'eyJpdiI6IksyRVFaY1J1RlRraTkzTWs1d0hGd0E9PSIsInZhbHVlIjoiTTRtSTdSNFlzZEVNRVBmQkdMcVh2cFRKb2ROVHRiM1ZQdmJERmVxNnVhdz0iLCJtYWMiOiI1MWU5ZTdlZGU0Y2NjNTQ4NjhkODUwNmNhZWY0Mjk0N2M1YzA2MWQ1YmMzMWJlM2JjZmU2OGFiMGE3OWRkOWVhIiwidGFnIjoiIn0=', 'eyJpdiI6IlVWd29kRnpUMXpQYnZkOWd0eFVXaHc9PSIsInZhbHVlIjoiaGFxRG1PN1JSVWUvMDRRU25DVytlYlV6R29aeUJtMk53VnE0dXlydEF0Zm0rSkZIR0NrbnJsbDhFZDRHYlpvbW9hUFhZSDFKbWhtRUZ4bDZqZTRhUEkzTUxqOHZPUGhPWWp4U3RGNnM0VVJTMHVlaEZjYnF1N3lOWUtGV3BCK2tUakpiT3hGK0tZeVN4UlNqUWNIclI2dUo4WFl0RkRWem9BTTJ1bk04aEtmNkd1R2hjSUxWMEFhQkJ3cEorVTNNa2ZPc3JkTU9BNy9nbERKeitPOTJqb1Vua3c1MkpaQ0NScCtkZFN1R0s3SnN2M3k3VDY3bWx3VE9lSXR6RWlDcUNJRVRCQXI5MlNuTWtKc0wxZ0NVNFE9PSIsIm1hYyI6IjMzYzI0ZTY1ZDdjOWEzODVlZTAzZDg0OTQ2Yzg5ZWFkODVjMDBkY2ZhYzZmODAyODJmNDA4NmNhNmVkZGRmYzkiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2022-04-27 11:22:02', '2022-04-27 11:23:03'),
(23, 2, 'Aidar', NULL, NULL, NULL, 'ggg@gmail.com', 'users/default.png', NULL, '$2y$10$sMJCqNdKszCPbvoTbkgHge4GqwxeoO4XY/mFbKX/1S/GuTmz8olXS', 'eyJpdiI6IjI3djdVeHI1OFRjV0pVTTU5Mk9Ka1E9PSIsInZhbHVlIjoiVDhQL3Z2cDFjOExXdjVIaHJyTGFpQTR2SEwzb1BQQ1l0d3dIV3Z5UUR3UT0iLCJtYWMiOiJkY2YyZTBlOGFmZDA3YTViZmI5ZDkyZTFlMGYwMWNlZGU4MTFlZTk5Mzk5YzgxZWVlM2VlMGE0NTA1ZGZlMzFkIiwidGFnIjoiIn0=', 'eyJpdiI6Ik8rU21Balo0Tk5oWmw1UWl5R254elE9PSIsInZhbHVlIjoiMFVvOWhmblZkbGdGQkM3V3Yzb2RmMDRjUmVZU0Z6d3R2OFBUR2pqdFAxS05KM1MycG1FMlFUamJFbWFQc2tmVEVEZ0FqTE9BZDJMVWRGNzJTUlhiUC84eHJrZFFheFNzeDlNcWpxYUljaHVZb3J2S1hJMFc4Ri9aaElaZzNjUGJlMkM5NWtBaTd0ak9vQVVjYmt3R3dadUJFcUdPWW1RR0VSOUFIeXE3YWJyK2o1Rmd5R0VyWmNXWVhDa0Nka1krYVR1QlhBVHdEaE9udHN1WWErcXBpS2RSOHV5ekFPUWlGS0F6LzdMQnA5ZEF3MnVaSW9uWVdGeGVyeDRHbXBzNG1uNXBrOW83NjN3OEZEdFBkZ0JCcnc9PSIsIm1hYyI6ImZkNjYxNmI1MjcwMjY1YmU1MWVkNGYwM2FkY2I3ODJiNjEyYjQwOTZkNWE0Mzg2NTVlODRkODBiNzIwNTM3Y2MiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2022-04-27 11:24:56', '2022-04-27 11:25:08');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_from_foreign` (`from`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_to_foreign` (`to`),
  ADD KEY `orders_truck_id_foreign` (`truck_id`);

--
-- Индексы таблицы `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_from_foreign` FOREIGN KEY (`from`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_to_foreign` FOREIGN KEY (`to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_truck_id_foreign` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
