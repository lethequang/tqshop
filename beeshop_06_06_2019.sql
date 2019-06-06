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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.brands: ~2 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`, `description`, `status`, `is_deleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Không rõ', '', 1, 0, NULL, NULL, '2019-06-06 16:15:46', '2019-06-06 16:15:46'),
	(2, 'Việt Tiến', '', 1, 0, NULL, NULL, '2019-06-06 16:15:56', '2019-06-06 16:15:56');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.products: ~1 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `description`, `content`, `price`, `promotion_price`, `quantity`, `category_id`, `brand_id`, `slug`, `status`, `is_hot`, `is_deleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Áo khoác T&T', 'Áo khoác T&T', 'Áo khoác T&T', '250000', '', '50', 3, 2, 'ao-khoac-tt', 1, 1, 0, NULL, NULL, '2019-06-06 15:44:42', '2019-06-06 15:44:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_categories: ~6 rows (approximately)
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`id`, `name`, `slug`, `description`, `status`, `parent_id`, `is_deleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Áo khoác', '', NULL, 1, 0, 0, NULL, NULL, NULL, NULL),
	(2, 'Áo khoác nỉ', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL),
	(3, 'Áo khoác kaki', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL),
	(4, 'Áo Sơ mi', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL),
	(5, 'Áo Sơ mi tay dài', NULL, NULL, 1, 4, 0, NULL, NULL, NULL, NULL),
	(6, 'Áo Sơ mi tay ngắn', NULL, NULL, 1, 4, 0, NULL, NULL, NULL, NULL);
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
  `product_feature_variant_id` int(11) unsigned NOT NULL,
  `is_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table beeshop.product_images: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
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
