-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.34-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for beeshop
CREATE DATABASE IF NOT EXISTS `beeshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `beeshop`;

-- Dumping structure for table beeshop.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.brands: ~5 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`, `description`, `status`, `is_deleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Không rõ', '', 1, 0, NULL, NULL, '2019-06-06 16:15:46', '2019-06-06 16:15:46'),
	(2, 'Việt Tiến', '', 1, 0, NULL, NULL, '2019-06-06 16:15:56', '2019-06-06 16:15:56'),
	(3, 'T&T', '', 1, 0, NULL, NULL, '2019-06-07 11:01:26', '2019-06-07 11:01:26'),
	(4, 'LaCos', '', 1, 0, NULL, NULL, '2019-06-07 11:02:10', '2019-06-07 11:02:10'),
	(5, 'H&M', '', 1, 0, NULL, NULL, '2019-06-07 11:02:18', '2019-06-07 11:02:18');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table beeshop.contacs
CREATE TABLE IF NOT EXISTS `contacs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `reply` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.contacs: ~0 rows (approximately)
/*!40000 ALTER TABLE `contacs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacs` ENABLE KEYS */;

-- Dumping structure for table beeshop.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT '0',
  `full_name` varchar(255) NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `phone` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.customers: ~0 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table beeshop.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beeshop.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_06_05_074243_create_product_categories_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table beeshop.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `total` varchar(255) NOT NULL,
  `payment` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table beeshop.order_detail
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `extras` varchar(255) NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `total` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.order_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- Dumping structure for table beeshop.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beeshop.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table beeshop.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `content` text,
  `price` varchar(50) NOT NULL DEFAULT '0',
  `promotion_price` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) NOT NULL DEFAULT '0',
  `category_id` int(11) unsigned NOT NULL,
  `brand_id` int(11) unsigned NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.products: ~20 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `description`, `content`, `price`, `promotion_price`, `quantity`, `category_id`, `brand_id`, `slug`, `status`, `is_hot`, `is_deleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Áo khoác T&T', 'Áo khoác T&T', 'Áo khoác T&T', '250000', '', '50', 3, 2, 'ao-khoac-tt', 1, 1, 0, NULL, NULL, '2019-03-18 01:14:26', '2019-06-06 15:44:42'),
	(2, 'omnis', 'Quibusdam quisquam molestias mollitia dolorem.', 'Labore hic impedit cumque reprehenderit ut. Odio et nulla eaque ipsam voluptatem fugit. Omnis sed quis facilis aut non.', '233073', NULL, '144', 2, 4, NULL, 1, 0, 0, NULL, NULL, '2019-03-25 14:28:40', '2019-06-07 13:47:56'),
	(3, 'praesentium', 'Qui nemo ut aut.', 'Ut voluptate culpa omnis eveniet adipisci itaque. Quia iste molestiae quia molestiae.', '370972', NULL, '126', 3, 5, NULL, 1, 0, 0, NULL, NULL, '2019-03-16 05:46:35', '2019-06-07 13:47:56'),
	(4, 'a', 'Cupiditate architecto nostrum consectetur velit cum id.', 'Est aliquid quaerat aut illo sit enim. Quo deserunt rerum rerum. Nostrum temporibus sed qui voluptas quia et necessitatibus.', '481000', NULL, '80', 3, 5, NULL, 1, 0, 0, NULL, NULL, '2019-03-19 18:33:30', '2019-06-07 13:47:56'),
	(5, 'quaerat', 'Voluptas modi dolor vel dolore.', 'Omnis minus molestiae minima doloremque est aliquid eveniet. Minus numquam autem vero commodi ut omnis. Distinctio veritatis tenetur dolore consectetur ad est explicabo ut.', '506907', NULL, '180', 5, 3, NULL, 1, 0, 0, NULL, NULL, '2019-02-20 12:34:17', '2019-06-07 13:47:56'),
	(6, 'molestias', 'Dolor tempora voluptatum repudiandae ut delectus molestias.', 'Dolores illum et ut nemo qui beatae. Est qui ex est. Voluptas rerum sint odit non placeat sunt eius. Explicabo similique nobis voluptatum officiis voluptatem nihil.', '315538', NULL, '155', 6, 1, NULL, 1, 0, 0, NULL, NULL, '2019-02-19 16:17:28', '2019-06-07 13:47:56'),
	(7, 'quia', 'Eveniet quia repudiandae voluptatum est tempora sint quaerat.', 'Ad error deserunt unde. Voluptatem laboriosam nulla nam porro fuga dolor velit. Aut inventore et architecto et ducimus dolor. Qui incidunt ducimus qui aut quae.', '533648', NULL, '46', 6, 5, NULL, 1, 0, 0, NULL, NULL, '2019-02-24 04:51:03', '2019-06-07 13:47:56'),
	(8, 'omnis', 'Et illo enim sit animi modi enim earum.', 'Sunt consequatur illo doloremque minima quisquam distinctio ipsam. Non ut enim laudantium adipisci impedit iste. Debitis eaque et deserunt quam quos. Dicta rerum autem qui tempora.', '552304', NULL, '142', 2, 2, NULL, 1, 0, 0, NULL, NULL, '2019-03-21 08:29:25', '2019-06-07 13:47:56'),
	(9, 'harum', 'Nemo necessitatibus sed voluptas commodi aut ipsam voluptatibus.', 'Aperiam quia eligendi facere corporis necessitatibus et quaerat. Quibusdam autem et sunt iusto eum voluptatibus et rem. In sapiente veritatis dolor et illum minus. Debitis ipsum temporibus asperiores eligendi sit ipsa.', '406636', NULL, '100', 3, 1, NULL, 1, 0, 0, NULL, NULL, '2019-02-15 13:00:31', '2019-06-07 13:47:56'),
	(10, 'doloremque', 'Voluptatem dolores recusandae pariatur esse omnis perferendis ipsam.', 'Cumque possimus culpa tempore magnam tempora. Ut iusto aut consequuntur eius iusto adipisci aperiam sint. Sint aut aut doloremque in. Aut omnis voluptatem officia harum aliquid.', '368061', NULL, '183', 3, 4, NULL, 1, 0, 0, NULL, NULL, '2019-04-04 00:40:51', '2019-06-07 13:47:56'),
	(11, 'autem', 'Corrupti qui maiores eos necessitatibus libero soluta.', 'Voluptatem totam vel occaecati quas hic. Soluta consequuntur dolor reprehenderit voluptatem numquam est veritatis. Dicta ut et unde officiis doloremque laudantium. Aliquam voluptatem facere aut quidem voluptatum quasi nesciunt. Facere vel praesentium aut.', '417262', NULL, '85', 3, 5, NULL, 1, 0, 0, NULL, NULL, '2019-03-08 21:29:17', '2019-06-07 13:47:56'),
	(12, 'est', 'Id illo sunt a est explicabo mollitia.', 'Est sed labore tempore velit. Deserunt iste possimus laudantium dolorum a. Blanditiis quia eveniet saepe dicta nihil quis qui recusandae. Repellat perspiciatis est totam quam rem est harum voluptatem.', '406494', NULL, '182', 2, 1, NULL, 1, 0, 0, NULL, NULL, '2019-03-27 18:30:24', '2019-06-07 13:47:56'),
	(13, 'ut', 'Aut non consectetur sit veritatis.', 'Natus aperiam ea nihil cum aspernatur dolorem assumenda quos. Numquam blanditiis voluptatum quo ea tempore alias id. Exercitationem neque rerum molestiae tempore commodi alias nihil.', '564115', NULL, '116', 5, 4, NULL, 1, 0, 0, NULL, NULL, '2019-04-23 13:10:44', '2019-06-07 13:47:56'),
	(14, 'ut', 'Voluptatibus dolores accusamus voluptatem eum.', 'Assumenda deleniti minus officiis rerum sit tempore et. Eaque ut enim et deleniti quaerat aut ea. Saepe sapiente debitis ducimus sed sint a. Provident eius officiis reiciendis vero sit.', '361659', NULL, '95', 6, 1, NULL, 1, 0, 0, NULL, NULL, '2019-02-13 19:29:00', '2019-06-07 13:47:56'),
	(15, 'voluptatem', 'Accusantium quae maxime aut corporis in.', 'Ut eius voluptatem aliquid et autem veritatis itaque. Eos explicabo rerum animi perspiciatis impedit. Ut natus maiores facere recusandae alias magni tenetur quae.', '251023', NULL, '160', 6, 4, NULL, 1, 0, 0, NULL, NULL, '2019-02-27 18:59:22', '2019-06-07 13:47:56'),
	(16, 'est', 'Quidem atque saepe sequi aut perspiciatis quos quos in.', 'Soluta aut minus ipsam deserunt. Praesentium nostrum incidunt eos enim sint. Ea distinctio ea aut eum ut totam. Et aut expedita quis officiis.', '208017', NULL, '152', 2, 1, NULL, 1, 0, 0, NULL, NULL, '2019-04-25 21:36:23', '2019-06-07 13:47:56'),
	(17, 'adipisci', 'Eos nihil eaque veritatis ipsum minima voluptas distinctio.', 'Sit dignissimos est officia. Consequuntur iusto voluptatibus perspiciatis quia omnis soluta. Deserunt eos alias non eius eos repudiandae. Eos in quis labore maxime dolores consectetur sapiente.', '494034', NULL, '51', 5, 4, NULL, 1, 0, 0, NULL, NULL, '2019-03-08 12:10:24', '2019-06-07 13:47:56'),
	(18, 'voluptas', 'Aut saepe soluta inventore nihil incidunt distinctio labore.', 'Facilis earum aspernatur consequatur. Sit praesentium consequuntur enim ea deleniti esse. Nobis alias quisquam sit omnis eveniet adipisci.', '467385', NULL, '108', 6, 1, NULL, 1, 0, 0, NULL, NULL, '2019-04-02 05:09:23', '2019-06-07 13:47:56'),
	(19, 'soluta', 'Ea sit odit impedit ut esse id.', 'Repudiandae vel quod deleniti illum. Alias et natus ea omnis alias. Facilis suscipit expedita tempora natus necessitatibus aut veritatis.', '591637', NULL, '149', 2, 4, NULL, 1, 0, 0, NULL, NULL, '2019-03-09 22:22:18', '2019-06-07 13:47:56'),
	(20, 'molestiae', 'Voluptas voluptates esse omnis ut incidunt.', 'Repellat labore quos facere voluptas. Earum nobis expedita nesciunt repellendus. Similique sapiente enim et exercitationem.', '554570', NULL, '118', 5, 2, NULL, 1, 0, 0, NULL, NULL, '2019-04-07 09:29:54', '2019-06-07 13:47:56');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table beeshop.product_categories
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(10) unsigned DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_categories: ~8 rows (approximately)
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`id`, `name`, `slug`, `description`, `status`, `parent_id`, `is_deleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Áo khoác', '', NULL, 1, 0, 0, NULL, NULL, NULL, NULL),
	(2, 'Áo khoác nỉ', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL),
	(3, 'Áo khoác kaki', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL),
	(4, 'Áo Sơ mi', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL),
	(5, 'Áo Sơ mi tay dài', NULL, NULL, 1, 4, 0, NULL, NULL, NULL, NULL),
	(6, 'Áo Sơ mi tay ngắn', NULL, NULL, 1, 4, 0, NULL, NULL, NULL, NULL),
	(7, 'Quần Short', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL),
	(8, 'Quần Short Kaki', NULL, NULL, 1, 7, 0, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;

-- Dumping structure for table beeshop.product_categories_nested
CREATE TABLE IF NOT EXISTS `product_categories_nested` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beeshop.product_categories_nested: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_categories_nested` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_categories_nested` ENABLE KEYS */;

-- Dumping structure for table beeshop.product_features
CREATE TABLE IF NOT EXISTS `product_features` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_features: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_features` ENABLE KEYS */;

-- Dumping structure for table beeshop.product_features_values
CREATE TABLE IF NOT EXISTS `product_features_values` (
  `product_id` int(11) unsigned NOT NULL,
  `product_feature_id` int(11) unsigned NOT NULL,
  `product_feature_variant_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_features_values: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_features_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_features_values` ENABLE KEYS */;

-- Dumping structure for table beeshop.product_features_variants
CREATE TABLE IF NOT EXISTS `product_features_variants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_feature_id` int(11) unsigned NOT NULL,
  `product_category_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_features_variants: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_features_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_features_variants` ENABLE KEYS */;

-- Dumping structure for table beeshop.product_images
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `product_feature_variant_id` int(11) unsigned DEFAULT NULL,
  `is_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_images: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` (`id`, `product_id`, `image`, `image_url`, `product_feature_variant_id`, `is_thumb`, `is_deleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 12, 'a55d0f988f7d8186ca482a6099c93e5d.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:36:51', '2019-06-07 14:36:51'),
	(2, 12, 'ae68348b334b55f1f775b16e3305e502.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:36:53', '2019-06-07 14:36:53'),
	(3, 6, '9ec14cd56b6efe56e5100211abef9e80.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:36:55', '2019-06-07 14:36:55'),
	(4, 17, 'f930501958261be735343952078a430a.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:36:56', '2019-06-07 14:36:56'),
	(5, 6, '35f9c05ae8da35875aa15c51fab4f932.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:36:58', '2019-06-07 14:36:58'),
	(6, 19, 'af387b9ed2b3131a70e7e6f001df1c06.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:00', '2019-06-07 14:37:00'),
	(7, 3, '473355971c50634aa0178e9e8adf4be2.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:02', '2019-06-07 14:37:02'),
	(8, 12, '162904053b7c7f41d5685eb8aedc472a.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:04', '2019-06-07 14:37:04'),
	(9, 13, '1f7b005c12a4fddea4809a97bf07bbb7.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:06', '2019-06-07 14:37:06'),
	(10, 19, '91fc7a4a31c289332cbbbbd2722dc781.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:07', '2019-06-07 14:37:07'),
	(11, 20, 'f0f8781de3ad9bb8e0bfe55601f36aad.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:09', '2019-06-07 14:37:09'),
	(12, 17, '7fa2e819ed888327a8e71ff02234e62c.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:11', '2019-06-07 14:37:11'),
	(13, 13, '2f29bed57f254ef61ce90ed9c7da7f73.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:13', '2019-06-07 14:37:13'),
	(14, 12, 'fc8eec7899b1c3db5ca9d3deb83a0bcf.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:15', '2019-06-07 14:37:15'),
	(15, 17, '7811e9ca5444d99e4bc473286dea0314.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:16', '2019-06-07 14:37:16'),
	(16, 14, '5d2204757e1386d90917ba56be08b167.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:18', '2019-06-07 14:37:18'),
	(17, 4, '50b1b25b5aad0d1aa869286267b55e45.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:20', '2019-06-07 14:37:20'),
	(18, 5, 'ff249841ea4d17ff20719ab41ec369e0.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:22', '2019-06-07 14:37:22'),
	(19, 19, 'd596bb90261676144e5454f265ef57ce.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:24', '2019-06-07 14:37:24'),
	(20, 1, 'ca26b161f8679079715d4392fe3db84a.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:37:26', '2019-06-07 14:37:26'),
	(21, 17, '6fdc9a2344e09869400ba565d12cce8b.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:16', '2019-06-07 14:45:16'),
	(22, 13, '9d81255b5ec769a490f6cebb245b8e5b.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:18', '2019-06-07 14:45:18'),
	(23, 17, '87d399b5ea44bdad67a58f7b90778229.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:19', '2019-06-07 14:45:19'),
	(24, 14, 'bebe58c58397dd45d9260dcb58e37292.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:21', '2019-06-07 14:45:21'),
	(25, 11, 'abe2fa8966b65717592626f2efee3b8b.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:22', '2019-06-07 14:45:22'),
	(26, 17, '542bc21cbca0c2ab21ec6a394a32f91c.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:24', '2019-06-07 14:45:24'),
	(27, 6, 'bb23d7213d24ff75f25cf11400b05e99.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:25', '2019-06-07 14:45:25'),
	(28, 16, '25f261899f8c1eb70e27ccfc2d1cc491.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:27', '2019-06-07 14:45:27'),
	(29, 12, 'f4304c39bbd2d7f44a5e7e3cf5b9e8ee.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:29', '2019-06-07 14:45:29'),
	(30, 3, 'f97b91b61cb5511f502d4bf5866c16ba.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:30', '2019-06-07 14:45:30'),
	(31, 4, '4daa860d546a68837c9205fc3644ca63.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:32', '2019-06-07 14:45:32'),
	(32, 10, '99bc0814693f870d975fea691e1ab9e5.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:34', '2019-06-07 14:45:34'),
	(33, 15, 'ad940d8b6ef371f3f3ce2631bfe0c27b.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:35', '2019-06-07 14:45:35'),
	(34, 16, 'd9b9ac3558b0056dd6fc9df5292d7195.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:37', '2019-06-07 14:45:37'),
	(35, 3, '562f8a7ce562483b951a652e2b40398c.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:38', '2019-06-07 14:45:38'),
	(36, 15, '8fef2a35dd8e82bad0228154d25e88ec.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:40', '2019-06-07 14:45:40'),
	(37, 2, '1157356209c9c0825dd29db0ca657e83.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:42', '2019-06-07 14:45:42'),
	(38, 20, '06e684a55a30ec3a9291b6d35ed59329.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:44', '2019-06-07 14:45:44'),
	(39, 13, 'b9b9cde054653d0657c5805d127ee837.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:46', '2019-06-07 14:45:46'),
	(40, 15, '5027fd9fe0516642c69201b3afb3cfb5.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:45:47', '2019-06-07 14:45:47'),
	(41, 15, '82c2afdf6a9ee276f12023f6bfbeb989.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:37', '2019-06-07 14:46:37'),
	(42, 6, 'fc39d50bd0c2d1cd9fddac171f7255c2.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:38', '2019-06-07 14:46:38'),
	(43, 14, '76422760e71adb48eb3abd2a6a294e97.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:40', '2019-06-07 14:46:40'),
	(44, 16, 'b583ffb43c6eefa4a9143faa997801ed.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:42', '2019-06-07 14:46:42'),
	(45, 2, '0a49866070308619bddaae5ca7c86173.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:44', '2019-06-07 14:46:44'),
	(46, 11, '1f0e1a93fed112254b94fb194ef696fc.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:46', '2019-06-07 14:46:46'),
	(47, 14, 'dbb14682fa5095c7d6617021c0f08585.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:48', '2019-06-07 14:46:48'),
	(48, 8, '3768c66b769390a834001dcfeedf473c.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:50', '2019-06-07 14:46:50'),
	(49, 18, '2a2f504295239818bcf90e2d99da4b7e.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:52', '2019-06-07 14:46:52'),
	(50, 6, '668b8987329d9cb1a4b6ee8ebc3e9305.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:53', '2019-06-07 14:46:53'),
	(51, 19, 'dc904580fcedce1a159cf857e8d0b81d.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:55', '2019-06-07 14:46:55'),
	(52, 18, '3043b6c530f778f36e444088520f7fca.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:57', '2019-06-07 14:46:57'),
	(53, 6, '0b3d8aa4c1b02560ecc2fbab924208d8.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:46:59', '2019-06-07 14:46:59'),
	(54, 8, 'a461ce3023da3227bdd159b8d0bdd1cf.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:47:01', '2019-06-07 14:47:01'),
	(55, 8, '70a22dae375570fdab6b166bcdf42ac2.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:47:02', '2019-06-07 14:47:02'),
	(56, 14, '6e047342dcc348c23b0817be3f258167.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:47:04', '2019-06-07 14:47:04'),
	(57, 8, 'cc02f25e4d5082a43e19c89ad5f7660b.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:47:06', '2019-06-07 14:47:06'),
	(58, 4, 'cd46626bffeedcf313c867fbf37defc8.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:47:08', '2019-06-07 14:47:08'),
	(59, 12, 'e391d66354d2e337276cc9164d382263.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:47:09', '2019-06-07 14:47:09'),
	(60, 19, 'bab6a6708457f9bc602b498c735500f6.jpg', 'http://beeshop.test/storage/images/products/', NULL, 0, 0, NULL, NULL, '2019-06-07 14:47:10', '2019-06-07 14:47:10');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;

-- Dumping structure for table beeshop.product_ratings
CREATE TABLE IF NOT EXISTS `product_ratings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `rating` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_ratings: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_ratings` ENABLE KEYS */;

-- Dumping structure for table beeshop.product_tags
CREATE TABLE IF NOT EXISTS `product_tags` (
  `product_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;

-- Dumping structure for table beeshop.promotion
CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `percent` float unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.promotion: ~0 rows (approximately)
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;

-- Dumping structure for table beeshop.slides
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.slides: ~0 rows (approximately)
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;

-- Dumping structure for table beeshop.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table beeshop.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beeshop.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
