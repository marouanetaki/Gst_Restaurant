-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table restaurant. categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.categories : ~4 rows (environ)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, NULL, 1, 'Healthy', 'healthy', '2020-07-05 22:50:32', '2020-07-09 00:38:59', NULL),
	(2, NULL, 1, 'Food', 'food', '2020-07-05 22:50:32', '2020-07-09 00:40:52', NULL),
	(3, NULL, 1, 'Recipes', 'recipes', '2020-07-09 00:41:16', '2020-07-09 00:41:16', NULL),
	(4, NULL, 1, 'Travels', 'travel', '2020-07-09 00:41:30', '2020-07-09 00:42:01', NULL),
	(5, NULL, 1, 'Events', 'events', '2020-07-09 00:41:45', '2020-07-09 00:41:45', NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `phone` int(11) DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.contacts : ~0 rows (environ)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Marouane Ettaki', 695499275, 'ettaki909@gmail.com', 'njknkl', '2020-07-07 01:46:34', '2020-07-07 01:46:34', NULL),
	(2, 'Marouane Ettaki', 695499275, 'ettaki909@gmail.com', 'sdds', '2020-07-07 13:53:43', '2020-07-07 13:53:43', NULL),
	(3, 'Marouane Ettaki', 695499275, 'ettaki909@gmail.com', 'csioqjkcoqs', '2020-07-08 19:27:44', '2020-07-08 19:27:44', NULL),
	(4, 'trak', 695499275, 'ettaki909@gmail.com', 'yuhxazinjndcaz', '2020-07-10 22:22:32', '2020-07-10 22:22:32', NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. data_rows
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
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
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.data_rows : ~87 rows (environ)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
	(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
	(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
	(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
	(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
	(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
	(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
	(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
	(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
	(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
	(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
	(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
	(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
	(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
	(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
	(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
	(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
	(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
	(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
	(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
	(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
	(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
	(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(57, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
	(58, 7, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 3),
	(59, 7, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
	(60, 7, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 5),
	(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
	(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
	(63, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
	(64, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(65, 8, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
	(66, 8, 'time', 'time', 'Time', 0, 1, 1, 1, 1, 1, '{}', 3),
	(67, 8, 'people', 'text', 'People', 1, 1, 1, 1, 1, 1, '{}', 4),
	(68, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 5),
	(69, 8, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 6),
	(70, 8, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 7),
	(71, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, '{}', 9),
	(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
	(73, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 1, '{}', 11),
	(74, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(75, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
	(76, 9, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
	(77, 9, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 5),
	(78, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, '{}', 7),
	(79, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
	(80, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 1, '{}', 9),
	(82, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 16),
	(83, 5, 'nbr_visite', 'text', 'Nbr Visite', 0, 1, 1, 1, 1, 1, '{}', 17),
	(84, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(85, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
	(86, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(87, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
	(88, 10, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 3),
	(89, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(90, 11, 'role_id', 'text', 'Role Id', 0, 0, 0, 1, 1, 1, '{}', 3),
	(91, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
	(92, 11, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
	(93, 11, 'avatar', 'text', 'Avatar', 0, 0, 1, 1, 1, 1, '{}', 5),
	(94, 11, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
	(95, 11, 'password', 'text', 'Password', 1, 1, 1, 1, 1, 1, '{}', 7),
	(96, 11, 'remember_token', 'text', 'Remember Token', 0, 1, 1, 0, 0, 1, '{}', 8),
	(97, 11, 'settings', 'text', 'Settings', 0, 0, 1, 0, 0, 1, '{}', 9),
	(98, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, '{}', 10),
	(99, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
	(100, 9, 'type', 'select_multiple', 'Type', 1, 1, 1, 1, 1, 1, '{"options":{"starters":"starters","dinner":"dinner","dessert":"dessert","drink":"drink","breakfast":"breakfast","lunch":"lunch"}}', 4),
	(101, 8, 'statut', 'checkbox', 'Statut', 0, 1, 1, 1, 1, 1, '{"on":"Valid","off":"Invalid"}', 8),
	(102, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 1, '{}', 8),
	(103, 9, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
	(104, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(105, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
	(106, 12, 'email', 'text', 'Email', 0, 0, 1, 1, 1, 1, '{}', 3),
	(107, 12, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 4),
	(108, 12, 'adress', 'text', 'Adress', 0, 1, 1, 1, 1, 1, '{}', 5),
	(109, 12, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 6),
	(110, 12, 'cart', 'text', 'Cart', 0, 1, 1, 1, 1, 1, '{}', 7),
	(111, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
	(112, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
	(113, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(114, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
	(115, 14, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 3),
	(116, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(117, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. data_types
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.data_types : ~10 rows (environ)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-07-05 22:50:19', '2020-07-05 22:50:19'),
	(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}', '2020-07-05 22:50:31', '2020-07-08 16:13:39'),
	(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}', '2020-07-05 22:50:32', '2020-07-07 01:10:34'),
	(7, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2020-07-06 16:43:07', '2020-07-06 16:43:07'),
	(8, 'reservations', 'reservations', 'Reservation', 'Reservations', NULL, 'App\\Reservation', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2020-07-06 16:46:50', '2020-07-08 16:13:06'),
	(9, 'plats', 'plats', 'Plat', 'Plats', NULL, 'App\\Plat', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2020-07-06 17:33:29', '2020-07-08 17:00:26'),
	(10, 'galleries', 'galleries', 'Gallery', 'Galleries', NULL, 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2020-07-07 19:15:29', '2020-07-07 19:15:29'),
	(11, 'users', 'users', 'User', 'Users', NULL, 'App\\User', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2020-07-08 14:55:54', '2020-07-17 10:58:43'),
	(12, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2020-07-19 15:59:17', '2020-07-19 15:59:17'),
	(14, 'roles', 'roles', 'Role', 'Roles', NULL, 'TCG\\Voyager\\Models\\Role', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2020-07-25 22:15:21', '2020-07-25 22:33:40');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. galleries
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.galleries : ~14 rows (environ)
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`, `type`) VALUES
	(1, 'galleries\\July2020\\1KFYOddmlMAbVy9qDxRp.jpg', '2020-07-07 21:05:00', '2020-07-07 21:11:27', 'dinner'),
	(2, 'galleries\\July2020\\iYygG1I66Ek9ABJILHi7.jpg', '2020-07-07 21:06:00', '2020-07-07 21:10:59', 'lunch'),
	(3, 'galleries\\July2020\\Jf3ijtpWcPYiRGedj8nc.jpg', '2020-07-07 21:06:00', '2020-07-07 21:11:11', 'lunch'),
	(4, 'galleries\\July2020\\OFp4WLrK9dgcNfKKXB4j.jpg', '2020-07-07 21:06:00', '2020-07-07 21:09:58', 'lunch'),
	(5, 'galleries\\July2020\\pcr7ugvICdlS12ALE5de.jpg', '2020-07-07 21:07:00', '2020-07-07 21:09:39', 'lunch'),
	(6, 'galleries\\July2020\\uzdYKX2jPap77LCGo3DA.jpg', '2020-07-07 21:07:36', '2020-07-07 21:07:36', 'event'),
	(7, 'galleries\\July2020\\2vacdNTjywH9GRU91mSh.jpg', '2020-07-07 21:07:54', '2020-07-07 21:07:54', 'event'),
	(8, 'galleries\\July2020\\W63kXZHytcjQ3jHpoHSP.jpg', '2020-07-07 21:08:29', '2020-07-07 21:08:29', 'lunch'),
	(9, 'galleries\\July2020\\cPd3pPe7xxWlUFgHPcmQ.jpg', '2020-07-07 21:11:43', '2020-07-07 21:11:43', 'dinner'),
	(10, 'galleries\\July2020\\6PZnn2P0tlgeVwamYBHV.jpg', '2020-07-07 21:12:02', '2020-07-07 21:12:02', 'dinner'),
	(11, 'galleries\\July2020\\MPQPNqukyzDCIW4f8ACJ.jpg', '2020-07-07 21:14:01', '2020-07-07 21:14:01', 'event'),
	(12, 'galleries\\July2020\\IvwmKd9qG9cvcT82qS0a.jpg', '2020-07-07 21:14:22', '2020-07-07 21:14:22', 'event'),
	(13, 'galleries\\July2020\\s6TOMkNgr0ZMNOrl22wj.jpg', '2020-07-07 21:15:58', '2020-07-07 21:15:58', 'event'),
	(14, 'galleries\\July2020\\NmwIBFQftAZ1d1euQ93o.jpg', '2020-07-07 21:17:46', '2020-07-07 21:17:46', 'dinner');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.menus : ~0 rows (environ)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2020-07-05 22:50:20', '2020-07-05 22:50:20'),
	(2, 'menu', '2020-07-07 01:12:30', '2020-07-07 01:12:30');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.menu_items : ~24 rows (environ)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-07-05 22:50:20', '2020-07-05 22:50:20', 'voyager.dashboard', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2020-07-05 22:50:21', '2020-07-25 22:21:07', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-07-05 22:50:21', '2020-07-06 17:20:26', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-07-05 22:50:21', '2020-07-06 17:20:53', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-07-05 22:50:21', '2020-07-06 17:20:53', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-07-05 22:50:21', '2020-07-06 17:20:53', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2020-07-05 22:50:21', '2020-07-25 22:21:07', 'voyager.settings.index', NULL),
	(11, 1, 'Categories', '', '_self', 'voyager-list', '#000000', NULL, 2, '2020-07-05 22:50:31', '2020-07-06 17:50:05', 'voyager.categories.index', 'null'),
	(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-07-05 22:50:33', '2020-07-19 16:01:55', 'voyager.posts.index', NULL),
	(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-07-05 22:50:38', '2020-07-06 17:20:53', 'voyager.hooks', NULL),
	(15, 1, 'Contacts', '', '_self', 'voyager-mail', '#000000', NULL, 7, '2020-07-06 16:43:07', '2020-07-19 16:01:55', 'voyager.contacts.index', 'null'),
	(16, 1, 'Reservations', '', '_self', 'voyager-ticket', '#000000', NULL, 4, '2020-07-06 16:46:51', '2020-07-06 17:50:17', 'voyager.reservations.index', 'null'),
	(17, 1, 'Plats', '', '_self', 'voyager-pie-chart', '#000000', NULL, 3, '2020-07-06 17:33:30', '2020-07-06 17:50:31', 'voyager.plats.index', 'null'),
	(18, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2020-07-07 01:12:55', '2020-07-08 16:42:13', NULL, ''),
	(20, 2, 'Reservation', '/reservation', '_self', NULL, '#000000', NULL, 3, '2020-07-07 01:13:44', '2020-07-16 14:12:07', NULL, ''),
	(21, 2, 'Gallery', '/gallery', '_self', NULL, '#000000', NULL, 4, '2020-07-07 01:14:08', '2020-07-08 16:42:14', NULL, ''),
	(23, 2, 'Blog', '/blog', '_self', NULL, '#000000', NULL, 5, '2020-07-07 01:15:01', '2020-07-16 14:12:03', NULL, ''),
	(24, 2, 'Contact Us', '/contact', '_self', NULL, '#000000', NULL, 6, '2020-07-07 01:15:21', '2020-07-16 14:12:03', NULL, ''),
	(25, 1, 'Gallery', '', '_self', 'voyager-images', '#000000', NULL, 8, '2020-07-07 19:15:30', '2020-07-25 22:35:03', 'voyager.galleries.index', 'null'),
	(26, 1, 'Users', '', '_self', 'voyager-person', '#000000', 31, 1, '2020-07-08 14:55:54', '2020-07-25 22:35:03', 'voyager.users.index', 'null'),
	(27, 2, 'Menu', '/menu', '_self', NULL, '#000000', NULL, 2, '2020-07-16 14:11:51', '2020-07-16 14:12:07', NULL, ''),
	(28, 1, 'Orders', '', '_self', 'voyager-documentation', '#000000', NULL, 5, '2020-07-19 15:59:18', '2020-07-19 16:01:55', 'voyager.orders.index', 'null'),
	(29, 1, 'Roles', '', '_self', 'voyager-lock', '#000000', 31, 2, '2020-07-25 22:15:22', '2020-07-25 22:35:03', 'voyager.roles.index', 'null'),
	(31, 1, 'User Mangement', '', '_self', 'voyager-lock', '#000000', NULL, 9, '2020-07-25 22:20:44', '2020-07-25 22:35:03', NULL, '');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.migrations : ~26 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2016_01_01_000000_add_voyager_user_fields', 1),
	(3, '2016_01_01_000000_create_data_types_table', 1),
	(4, '2016_05_19_173453_create_menu_table', 1),
	(5, '2016_10_21_190000_create_roles_table', 1),
	(6, '2016_10_21_190000_create_settings_table', 1),
	(7, '2016_11_30_135954_create_permission_table', 1),
	(8, '2016_11_30_141208_create_permission_role_table', 1),
	(9, '2016_12_26_201236_data_types__add__server_side', 1),
	(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(11, '2017_01_14_005015_create_translations_table', 1),
	(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(16, '2017_08_05_000000_add_group_to_settings_table', 1),
	(17, '2017_11_26_013050_add_user_role_relationship', 1),
	(18, '2017_11_26_015000_create_user_roles_table', 1),
	(19, '2018_03_11_000000_add_user_settings', 1),
	(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
	(21, '2018_03_16_000000_make_settings_value_nullable', 1),
	(22, '2019_08_19_000000_create_failed_jobs_table', 1),
	(23, '2016_01_01_000000_create_pages_table', 2),
	(24, '2016_01_01_000000_create_posts_table', 2),
	(25, '2016_02_15_204651_create_categories_table', 2),
	(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `adress` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `cart` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.orders : ~0 rows (environ)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `name`, `email`, `user_id`, `adress`, `phone`, `cart`, `created_at`, `updated_at`) VALUES
	(1, 'Marouane Ettaki', 'ettaki909@gmail.com', 3, 'gueliz 44', '0695499298', 'O:8:"App\\Cart":3:{s:5:"items";a:3:{i:16;a:3:{s:3:"qty";i:1;s:5:"price";d:22;s:4:"item";O:8:"App\\Plat":28:{s:8:"\0*\0dates";a:2:{i:0;s:10:"deleted_at";i:1;s:10:"deleted_at";}s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:5:"plats";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:13:"\0*\0attributes";a:9:{s:2:"id";i:16;s:5:"title";s:11:"FRESH MOUCE";s:11:"description";s:45:"Proin lacinia nisl ut ultricies posuere nulla";s:5:"image";s:39:"plats\\July2020\\DKoJZnMEyS9l62TmWG47.jpg";s:10:"created_at";s:19:"2020-07-08 16:32:28";s:10:"updated_at";s:19:"2020-07-08 17:02:22";s:10:"deleted_at";N;s:4:"type";s:11:"["dessert"]";s:5:"price";d:22;}s:11:"\0*\0original";a:9:{s:2:"id";i:16;s:5:"title";s:11:"FRESH MOUCE";s:11:"description";s:45:"Proin lacinia nisl ut ultricies posuere nulla";s:5:"image";s:39:"plats\\July2020\\DKoJZnMEyS9l62TmWG47.jpg";s:10:"created_at";s:19:"2020-07-08 16:32:28";s:10:"updated_at";s:19:"2020-07-08 17:02:22";s:10:"deleted_at";N;s:4:"type";s:11:"["dessert"]";s:5:"price";d:22;}s:10:"\0*\0changes";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:10:"timestamps";b:1;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:16:"\0*\0forceDeleting";b:0;}}i:7;a:3:{s:3:"qty";i:1;s:5:"price";d:12.75;s:4:"item";O:8:"App\\Plat":28:{s:8:"\0*\0dates";a:2:{i:0;s:10:"deleted_at";i:1;s:10:"deleted_at";}s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:5:"plats";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:13:"\0*\0attributes";a:9:{s:2:"id";i:7;s:5:"title";s:14:"SUSPENDISSE EU";s:11:"description";s:45:"Proin lacinia nisl ut ultricies posuere nulla";s:5:"image";s:39:"plats\\July2020\\JiOt070YCkfNmnnXxFYM.jpg";s:10:"created_at";s:19:"2020-07-08 16:25:46";s:10:"updated_at";s:19:"2020-07-08 17:09:23";s:10:"deleted_at";N;s:4:"type";s:12:"["starters"]";s:5:"price";d:12.75;}s:11:"\0*\0original";a:9:{s:2:"id";i:7;s:5:"title";s:14:"SUSPENDISSE EU";s:11:"description";s:45:"Proin lacinia nisl ut ultricies posuere nulla";s:5:"image";s:39:"plats\\July2020\\JiOt070YCkfNmnnXxFYM.jpg";s:10:"created_at";s:19:"2020-07-08 16:25:46";s:10:"updated_at";s:19:"2020-07-08 17:09:23";s:10:"deleted_at";N;s:4:"type";s:12:"["starters"]";s:5:"price";d:12.75;}s:10:"\0*\0changes";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:10:"timestamps";b:1;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:16:"\0*\0forceDeleting";b:0;}}i:18;a:3:{s:3:"qty";i:2;s:5:"price";d:45.9;s:4:"item";O:8:"App\\Plat":28:{s:8:"\0*\0dates";a:2:{i:0;s:10:"deleted_at";i:1;s:10:"deleted_at";}s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:5:"plats";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:13:"\0*\0attributes";a:9:{s:2:"id";i:18;s:5:"title";s:9:"CROISSANT";s:11:"description";s:42:"Aenean pharetra tortor dui in pellentesque";s:5:"image";s:39:"plats\\July2020\\OLou64CrAXn5htKBAncY.jpg";s:10:"created_at";s:19:"2020-07-08 16:34:11";s:10:"updated_at";s:19:"2020-07-08 17:01:28";s:10:"deleted_at";N;s:4:"type";s:13:"["breakfast"]";s:5:"price";d:22.95;}s:11:"\0*\0original";a:9:{s:2:"id";i:18;s:5:"title";s:9:"CROISSANT";s:11:"description";s:42:"Aenean pharetra tortor dui in pellentesque";s:5:"image";s:39:"plats\\July2020\\OLou64CrAXn5htKBAncY.jpg";s:10:"created_at";s:19:"2020-07-08 16:34:11";s:10:"updated_at";s:19:"2020-07-08 17:01:28";s:10:"deleted_at";N;s:4:"type";s:13:"["breakfast"]";s:5:"price";d:22.95;}s:10:"\0*\0changes";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:10:"timestamps";b:1;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:16:"\0*\0forceDeleting";b:0;}}}s:8:"totalQty";i:4;s:10:"totalPrice";d:80.65;}', '2020-07-29 14:34:26', '2020-07-29 14:34:26');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.pages : ~0 rows (environ)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-07-05 22:50:35', '2020-07-05 22:50:35');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.permissions : ~65 rows (environ)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2020-07-05 22:50:21', '2020-07-05 22:50:21'),
	(2, 'browse_bread', NULL, '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(3, 'browse_database', NULL, '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(4, 'browse_media', NULL, '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(5, 'browse_compass', NULL, '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(6, 'browse_menus', 'menus', '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(7, 'read_menus', 'menus', '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(8, 'edit_menus', 'menus', '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(9, 'add_menus', 'menus', '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(10, 'delete_menus', 'menus', '2020-07-05 22:50:22', '2020-07-05 22:50:22'),
	(21, 'browse_settings', 'settings', '2020-07-05 22:50:23', '2020-07-05 22:50:23'),
	(22, 'read_settings', 'settings', '2020-07-05 22:50:23', '2020-07-05 22:50:23'),
	(23, 'edit_settings', 'settings', '2020-07-05 22:50:23', '2020-07-05 22:50:23'),
	(24, 'add_settings', 'settings', '2020-07-05 22:50:23', '2020-07-05 22:50:23'),
	(25, 'delete_settings', 'settings', '2020-07-05 22:50:23', '2020-07-05 22:50:23'),
	(26, 'browse_categories', 'categories', '2020-07-05 22:50:31', '2020-07-05 22:50:31'),
	(27, 'read_categories', 'categories', '2020-07-05 22:50:31', '2020-07-05 22:50:31'),
	(28, 'edit_categories', 'categories', '2020-07-05 22:50:31', '2020-07-05 22:50:31'),
	(29, 'add_categories', 'categories', '2020-07-05 22:50:31', '2020-07-05 22:50:31'),
	(30, 'delete_categories', 'categories', '2020-07-05 22:50:31', '2020-07-05 22:50:31'),
	(31, 'browse_posts', 'posts', '2020-07-05 22:50:33', '2020-07-05 22:50:33'),
	(32, 'read_posts', 'posts', '2020-07-05 22:50:33', '2020-07-05 22:50:33'),
	(33, 'edit_posts', 'posts', '2020-07-05 22:50:33', '2020-07-05 22:50:33'),
	(34, 'add_posts', 'posts', '2020-07-05 22:50:34', '2020-07-05 22:50:34'),
	(35, 'delete_posts', 'posts', '2020-07-05 22:50:34', '2020-07-05 22:50:34'),
	(41, 'browse_hooks', NULL, '2020-07-05 22:50:38', '2020-07-05 22:50:38'),
	(42, 'browse_contacts', 'contacts', '2020-07-06 16:43:07', '2020-07-06 16:43:07'),
	(43, 'read_contacts', 'contacts', '2020-07-06 16:43:07', '2020-07-06 16:43:07'),
	(44, 'edit_contacts', 'contacts', '2020-07-06 16:43:07', '2020-07-06 16:43:07'),
	(45, 'add_contacts', 'contacts', '2020-07-06 16:43:07', '2020-07-06 16:43:07'),
	(46, 'delete_contacts', 'contacts', '2020-07-06 16:43:07', '2020-07-06 16:43:07'),
	(47, 'browse_reservations', 'reservations', '2020-07-06 16:46:51', '2020-07-06 16:46:51'),
	(48, 'read_reservations', 'reservations', '2020-07-06 16:46:51', '2020-07-06 16:46:51'),
	(49, 'edit_reservations', 'reservations', '2020-07-06 16:46:51', '2020-07-06 16:46:51'),
	(50, 'add_reservations', 'reservations', '2020-07-06 16:46:51', '2020-07-06 16:46:51'),
	(51, 'delete_reservations', 'reservations', '2020-07-06 16:46:51', '2020-07-06 16:46:51'),
	(52, 'browse_plats', 'plats', '2020-07-06 17:33:29', '2020-07-06 17:33:29'),
	(53, 'read_plats', 'plats', '2020-07-06 17:33:29', '2020-07-06 17:33:29'),
	(54, 'edit_plats', 'plats', '2020-07-06 17:33:29', '2020-07-06 17:33:29'),
	(55, 'add_plats', 'plats', '2020-07-06 17:33:30', '2020-07-06 17:33:30'),
	(56, 'delete_plats', 'plats', '2020-07-06 17:33:30', '2020-07-06 17:33:30'),
	(57, 'browse_galleries', 'galleries', '2020-07-07 19:15:30', '2020-07-07 19:15:30'),
	(58, 'read_galleries', 'galleries', '2020-07-07 19:15:30', '2020-07-07 19:15:30'),
	(59, 'edit_galleries', 'galleries', '2020-07-07 19:15:30', '2020-07-07 19:15:30'),
	(60, 'add_galleries', 'galleries', '2020-07-07 19:15:30', '2020-07-07 19:15:30'),
	(61, 'delete_galleries', 'galleries', '2020-07-07 19:15:30', '2020-07-07 19:15:30'),
	(62, 'browse_users', 'users', '2020-07-08 14:55:54', '2020-07-08 14:55:54'),
	(63, 'read_users', 'users', '2020-07-08 14:55:54', '2020-07-08 14:55:54'),
	(64, 'edit_users', 'users', '2020-07-08 14:55:54', '2020-07-08 14:55:54'),
	(65, 'add_users', 'users', '2020-07-08 14:55:54', '2020-07-08 14:55:54'),
	(66, 'delete_users', 'users', '2020-07-08 14:55:54', '2020-07-08 14:55:54'),
	(67, 'browse_orders', 'orders', '2020-07-19 15:59:18', '2020-07-19 15:59:18'),
	(68, 'read_orders', 'orders', '2020-07-19 15:59:18', '2020-07-19 15:59:18'),
	(69, 'edit_orders', 'orders', '2020-07-19 15:59:18', '2020-07-19 15:59:18'),
	(70, 'add_orders', 'orders', '2020-07-19 15:59:18', '2020-07-19 15:59:18'),
	(71, 'delete_orders', 'orders', '2020-07-19 15:59:18', '2020-07-19 15:59:18'),
	(72, 'browse_roles', 'roles', '2020-07-25 22:15:21', '2020-07-25 22:15:21'),
	(73, 'read_roles', 'roles', '2020-07-25 22:15:21', '2020-07-25 22:15:21'),
	(74, 'edit_roles', 'roles', '2020-07-25 22:15:21', '2020-07-25 22:15:21'),
	(75, 'add_roles', 'roles', '2020-07-25 22:15:21', '2020-07-25 22:15:21'),
	(76, 'delete_roles', 'roles', '2020-07-25 22:15:21', '2020-07-25 22:15:21');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.permission_role : ~65 rows (environ)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
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
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 1),
	(49, 1),
	(50, 1),
	(51, 1),
	(52, 1),
	(53, 1),
	(54, 1),
	(55, 1),
	(56, 1),
	(57, 1),
	(58, 1),
	(59, 1),
	(60, 1),
	(61, 1),
	(62, 1),
	(63, 1),
	(64, 1),
	(65, 1),
	(66, 1),
	(67, 1),
	(68, 1),
	(69, 1),
	(70, 1),
	(71, 1),
	(72, 1),
	(73, 1),
	(74, 1),
	(75, 1),
	(76, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. plats
CREATE TABLE IF NOT EXISTS `plats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.plats : ~17 rows (environ)
/*!40000 ALTER TABLE `plats` DISABLE KEYS */;
INSERT INTO `plats` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`, `type`, `price`) VALUES
	(1, 'Pizza 4 Season', 'Aenean pharetra tortor dui in pellentesque', 'plats\\July2020\\wKOlGHbkLzNyGiHyBDG8.jpg', '2020-07-08 16:10:32', '2020-07-08 17:09:45', NULL, '["dinner","lunch"]', 49),
	(2, 'TEMPUS ALIQUET', 'Aenean condimentum ante erat', 'plats\\July2020\\YSrjzKFB5IoYt9IqA75J.jpg', '2020-07-08 16:15:06', '2020-07-08 17:10:07', NULL, '["lunch"]', 49),
	(3, 'DUIS MASSA', 'Proin lacinia nisl ut ultricies posuere nulla', 'plats\\July2020\\BoYRGP9EIEPE4S8rjPY0.jpg', '2020-07-08 16:21:32', '2020-07-08 17:12:32', NULL, '["dinner"]', 69.5),
	(4, 'CRAS EGET MAGNA', 'Sed fermentum eros vitae eros', 'plats\\July2020\\GNgZ9q7jl32B38y6sQHN.jpg', '2020-07-08 16:22:39', '2020-07-08 17:12:12', NULL, '["dinner","lunch"]', 45.09),
	(5, 'Coca Cola', 'Duis massa nibh porttitor nec imperdiet', 'plats\\July2020\\2NEwOUGoYLmwpXQcCHMz.jpg', '2020-07-08 16:23:39', '2020-07-10 17:58:22', NULL, '["drink"]', 25),
	(6, 'SBRISALONA', 'Proin lacinia nisl ut ultricies posuere nulla', 'plats\\July2020\\EtP9WoKgVn7fvwmhSF8b.jpg', '2020-07-08 16:24:24', '2020-07-08 17:10:39', NULL, '["starters","dessert"]', 17),
	(7, 'SUSPENDISSE EU', 'Proin lacinia nisl ut ultricies posuere nulla', 'plats\\July2020\\JiOt070YCkfNmnnXxFYM.jpg', '2020-07-08 16:25:46', '2020-07-08 17:09:23', NULL, '["starters"]', 12.75),
	(8, 'CRAS MAXIMUS', 'Proin lacinia nisl ut ultricies posuere nulla', 'plats\\July2020\\gTwKb9fG2Lh0BUpdENsd.jpg', '2020-07-08 16:26:27', '2020-07-08 17:08:46', NULL, '["breakfast"]', 17.65),
	(9, 'PINE NUT SBRISALONA', 'Proin lacinia nisl ut ultricies posuere nulla', 'plats\\July2020\\WlKdWqSWyZyMPPRqq2w8.jpg', '2020-07-08 16:27:11', '2020-07-08 17:07:57', NULL, '["dinner"]', 50),
	(10, 'TEMPOR MALESUADA', 'Aenean pharetra tortor dui in pellentesque', 'plats\\July2020\\GGgttQz3hDbIj1Fd2t7d.jpg', '2020-07-08 16:27:51', '2020-07-08 17:07:38', NULL, '["drink"]', 10),
	(11, 'MPOR PATO', 'Aenean condimentum ante erat', 'plats\\July2020\\5j4afJHPNV1ihG5Kb4VT.jpg', '2020-07-08 16:28:44', '2020-07-08 17:07:20', NULL, '["drink"]', 16.65),
	(12, 'DAZD', 'Aenean condimentum ante erat', 'plats\\July2020\\llih3inm5xvIf1NlN5zl.jpg', '2020-07-08 16:29:28', '2020-07-08 17:05:45', '2020-07-08 17:05:45', '["option1"]', 15),
	(13, 'PINE NUT', 'Aenean condimentum ante erat', 'plats\\July2020\\rDNmahwxWWI7BJpXYdVa.jpg', '2020-07-08 16:30:32', '2020-07-08 17:04:50', NULL, '["dessert"]', 20),
	(14, 'CRAS', 'Sed fermentum eros vitae eros', 'plats\\July2020\\Oie1KVDukG4CTw3bi2QC.jpg', '2020-07-08 16:31:12', '2020-07-08 17:04:10', NULL, '["starters"]', 9),
	(15, 'Glace', 'Proin lacinia nisl ut ultricies posuere nulla', 'plats\\July2020\\PP45gAwDca1bOPtGeQGH.jpg', '2020-07-08 16:31:40', '2020-07-08 17:02:55', NULL, '["dessert"]', 19),
	(16, 'FRESH MOUCE', 'Proin lacinia nisl ut ultricies posuere nulla', 'plats\\July2020\\DKoJZnMEyS9l62TmWG47.jpg', '2020-07-08 16:32:28', '2020-07-08 17:02:22', NULL, '["dessert"]', 22),
	(17, 'WINE RED', 'Proin lacinia nisl ut ultricies posuere nulla', 'plats\\July2020\\pvJtZEqRlhJCvrIYoRCx.jpg', '2020-07-08 16:33:11', '2020-07-08 17:02:04', NULL, '["drink"]', 12.79),
	(18, 'CROISSANT', 'Aenean pharetra tortor dui in pellentesque', 'plats\\July2020\\OLou64CrAXn5htKBAncY.jpg', '2020-07-08 16:34:11', '2020-07-08 17:01:28', NULL, '["breakfast"]', 22.95);
/*!40000 ALTER TABLE `plats` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nbr_visite` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.posts : ~4 rows (environ)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `deleted_at`, `nbr_visite`) VALUES
	(1, 1, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts\\July2020\\Q5ulk9WcvYpSREzxlglh.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-05 22:50:34', '2020-07-07 01:40:28', NULL, 5),
	(2, 1, 1, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts\\July2020\\79pYtOA0HDdgjtqgQKrF.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-05 22:50:34', '2020-07-07 01:05:14', NULL, 1),
	(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-05 22:50:34', '2020-07-05 22:50:34', NULL, 0),
	(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-05 22:50:34', '2020-07-07 13:33:01', NULL, 1),
	(5, 1, 2, 'Restau News', NULL, 'iuchzanfcqslj', '<p>cqzuicnkdsnckmqsnmdovij</p>', 'posts\\July2020\\Q1b3uDXqBDYbi8KrvyJk.jpg', 'restau-news', NULL, NULL, 'PUBLISHED', 0, '2020-07-08 19:26:13', '2020-07-08 19:26:58', NULL, NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. reservations
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` text COLLATE utf8mb4_unicode_ci,
  `time` time DEFAULT NULL,
  `people` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `statut` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.reservations : ~5 rows (environ)
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` (`id`, `date`, `time`, `people`, `name`, `email`, `phone`, `created_at`, `updated_at`, `deleted_at`, `statut`) VALUES
	(1, NULL, '09:00:00', '1 person', 'Marouane Ettaki', 'ettaki909@gmail.com', '0695499275', '2020-07-08 14:47:36', '2020-07-08 14:50:16', '2020-07-08 14:50:16', NULL),
	(2, '2020-08-07 00:00:00', '09:00:00', '1 person', 'Marouane Ettaki', 'ettaki909@gmail.com', '0695499275', '2020-07-08 16:07:00', '2020-07-08 16:07:46', NULL, '1'),
	(3, '2020-08-07 00:00:00', '10:30:00', '5 people', 'Marouane Ettaki', 'ettaki909@gmail.com', '0695499275', '2020-07-08 19:23:49', '2020-07-08 19:24:30', NULL, '1'),
	(4, '17/07/2020', '10:30:00', '5 people', 'Marouane Ettaki', 'ettaki909@gmail.com', '0695499275', '2020-07-09 14:15:27', '2020-07-09 14:15:27', NULL, NULL),
	(5, '2020-09-07 00:00:00', '09:00:00', '6 people', 'zakaria', 'ettaki909@gmail.com', '0695499275', '2020-07-09 14:16:17', '2020-07-09 14:16:51', NULL, '1'),
	(6, '10/07/2020', '09:00:00', '2 people', 'trak', 'ettaki909@gmail.com', '0695499275', '2020-07-10 22:20:55', '2020-07-10 22:20:55', NULL, NULL);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.roles : ~1 rows (environ)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2020-07-05 22:50:21', '2020-07-05 22:50:21');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.settings : ~10 rows (environ)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', 'settings\\July2020\\O93gfLB89uPnb5uf6uEX.jpg', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Pato Master', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to MaroEtk Restaurant. The Missing Admin for MaroEtk', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\July2020\\mkHLCkJLlX1wPixb6g6t.png', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.translations : ~30 rows (environ)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-07-05 22:50:35', '2020-07-05 22:50:35'),
	(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-07-05 22:50:35', '2020-07-05 22:50:35'),
	(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-07-05 22:50:35', '2020-07-05 22:50:35'),
	(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-07-05 22:50:35', '2020-07-05 22:50:35'),
	(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-07-05 22:50:35', '2020-07-05 22:50:35'),
	(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-07-05 22:50:35', '2020-07-05 22:50:35'),
	(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-07-05 22:50:35', '2020-07-05 22:50:35'),
	(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-07-05 22:50:36', '2020-07-05 22:50:36'),
	(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-07-05 22:50:37', '2020-07-05 22:50:37'),
	(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-07-05 22:50:37', '2020-07-05 22:50:37'),
	(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-07-05 22:50:37', '2020-07-05 22:50:37');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.users : ~3 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$AWerRac2TZ03JcfvOy6A/.f6lYTBbVlCqPydLaBJ5Vu.i/Pnrnm/u', 'kbLGDBi0n88aEveJgGGABkhV1hXvGd9IN9YdDJMoh56yxAle3omWwDTvkov0', NULL, '2020-07-05 22:50:32', '2020-07-05 22:50:32'),
	(2, NULL, 'Marouane Ettaki', 'ettaki909@gmail.com', 'users/default.png', NULL, '$2y$10$tk3iydpnZ8Hg2KrPbqLVHui5EKWc4qvbGq2fMEq.vnNGY7ob7skVi', NULL, NULL, '2020-07-29 14:09:42', '2020-07-29 14:09:42'),
	(3, NULL, 'Marouane Ettaki', 'ettaki909@outlook.com', 'users/default.png', '2020-07-29 14:23:08', '$2y$10$B6jMcoeYC6Uz7wJq.pH6mOYMoGkwgaGhXJTdZuOuadYdYGbCzxOA6', NULL, NULL, '2020-07-29 14:16:09', '2020-07-29 14:23:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Listage de la structure de la table restaurant. user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table restaurant.user_roles : ~0 rows (environ)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
