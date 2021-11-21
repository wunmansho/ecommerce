-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2021 at 10:44 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-10-31 20:50:07', '$2y$10$kMtiu6Le24Untbh/uHRz.ebpe2h.Bpx38z/C3Yo6CMyucjyvqYktm', 'sRlZ9dTAJ7fnjnrg8a7NVuRbMv0XxIwWyrMqA04a547Kf9PM30Z5tS91eSUF', NULL, '202111022032me.png', '2021-10-31 20:50:07', '2021-11-03 16:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_hin`, `brand_slug_en`, `brand_slug_hin`, `brand_image`, `created_at`, `updated_at`) VALUES
(3, 'Samsung', 'सैमसंग', 'samsung', 'सैमसंग', 'upload/brand/1716534569698407.png', NULL, NULL),
(4, 'Xiaomi', 'Xiaomi', 'xiaomi', 'Xiaomi', 'upload/brand/1716534979515995.png', NULL, NULL),
(5, 'Apple', 'सेब', 'apple', 'सेब', 'upload/brand/1716535055513167.png', NULL, NULL),
(6, 'Oppo', 'विपक्ष', 'oppo', 'विपक्ष', 'upload/brand/1716535171449880.png', NULL, NULL),
(7, 'Vivo', 'विवो', 'vivo', 'विवो', 'upload/brand/1716535303948025.png', NULL, NULL),
(8, 'Huawei', 'हुवाई', 'huawei', 'हुवाई', 'upload/brand/1716609137518934.png', NULL, '2021-11-16 23:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_hin`, `category_slug_en`, `category_slug_hin`, `category_icon`, `created_at`, `updated_at`) VALUES
(11, 'Beauty', 'सुंदरता', 'beauty', 'सुंदरता', 'fa fa-id-card-o', NULL, NULL),
(10, 'Appliances', 'उपकरण', 'appliances', 'उपकरण', 'fa-fa-telegram', NULL, NULL),
(9, 'Sweet Home', 'प्यारा घर', 'sweet-home', 'प्यारा-घर', 'fa fa-shopping-cart', NULL, NULL),
(7, 'Fashion', 'फैशन', 'fashion', 'फैशन', 'fa fa-ravelry', NULL, NULL),
(8, 'Electronics', 'इलेक्ट्रानिक्स', 'electronics', 'इलेक्ट्रानिक्स', 'fa fa-user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2021_10_28_222439_create_sessions_table', 2),
(7, '2021_10_31_162337_create_admins_table', 3),
(8, '2021_11_14_172138_create_brands_table', 4),
(9, '2021_11_16_205818_create_categories_table', 5),
(10, '2021_11_17_170351_create_sub_categories_table', 6),
(11, '2021_11_17_205026_create_sub_sub_categories_table', 7),
(12, '2021_11_20_181706_create_products_table', 8),
(13, '2021_11_20_184405_create_multi_imgs_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

DROP TABLE IF EXISTS `multi_imgs`;
CREATE TABLE IF NOT EXISTS `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_hin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desc_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desc_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product__thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ewNOaRaMw8BRJdbBCvlPfeDit2LKj7vBriuArxaL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZnVURDdKVzNqTXBEcG5teU05a3dyaVVYdlVzTW9jRTZzeWZkUkRLSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS9zdWIvc3ViL3ZpZXciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1637534524);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_hin`, `subcategory_slug_en`, `subcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(14, 8, 'Computer Peripherals', 'कंप्यूटर पेरिफेरल्स', 'computer-peripherals', 'कंप्यूटर-पेरिफेरल्स', NULL, NULL),
(13, 7, 'Women\'s Footwear', 'महिलाओं के जूते', 'women\'s-footwear', 'महिलाओं-के-जूते', NULL, NULL),
(12, 7, 'Men\'s Footwear', 'पुरुषों के जूते', 'men\'s-footwear', 'पुरुषों-के-जूते', NULL, NULL),
(10, 7, 'Men\'s Shirts', 'पुरुषों की कमीज', 'men\'s-shirts', 'पुरुषों-की-कमीज', NULL, NULL),
(11, 7, 'Men\'s Pants', 'पुरुषों की पैंट', 'men\'s-pants', 'पुरुषों-की-पैंट', NULL, NULL),
(15, 8, 'Mobile Accessories', 'मोबाइल से जुड़े सामान', 'mobile-accessories', 'मोबाइल-से-जुड़े-सामान', NULL, NULL),
(16, 8, 'Gaming', 'गेमिंग', 'gaming', 'गेमिंग', NULL, NULL),
(17, 9, 'Home Furnishings', 'घर का सामान', 'home-furnishings', 'घर-का-सामान', NULL, NULL),
(18, 9, 'Living Room', 'लिविंग रूम', 'living-room', 'लिविंग-रूम', NULL, NULL),
(19, 9, 'Home Decor', 'गृह सज्जा', 'home-decor', 'गृह-सज्जा', NULL, NULL),
(20, 10, 'Televisions', 'टेलीविजन', 'televisions', 'टेलीविजन', NULL, NULL),
(21, 10, 'Washing Machines', 'वाशिंग मशीन', 'washing-machines', 'वाशिंग-मशीन', NULL, NULL),
(22, 10, 'Refrigerators', 'रेफ्रिजरेटर', 'refrigerators', 'रेफ्रिजरेटर', NULL, NULL),
(23, 11, 'Beauty and Personal Care', 'सौंदर्य और व्यक्तिगत देखभाल', 'beauty-and-personal-care', 'सौंदर्य-और-व्यक्तिगत-देखभाल', NULL, NULL),
(24, 11, 'Food and Drinks', 'खाद्य और पेय', 'food-and-drinks', 'खाद्य-और-पेय', NULL, NULL),
(25, 11, 'Baby Care', 'बेबी केयर', 'baby-care', 'बेबी-केयर', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

DROP TABLE IF EXISTS `sub_sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_hin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_hin`, `subsubcategory_slug_en`, `subsubcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(15, 7, 11, 'Men\'s Cargos', 'पुरुषों का कार्गो', 'men\'s-cargos', 'पुरुषों-का-कार्गो', NULL, NULL),
(14, 7, 11, 'Men\'s Trousers', 'पुरुषों की पतलून', 'men\'s-trousers', 'पुरुषों-की-पतलून', NULL, NULL),
(13, 7, 11, 'Men\'s Jeans', 'पुरुषों की जींस', 'men\'s-jeans', 'पुरुषों-की-जींस', NULL, NULL),
(12, 7, 10, 'Men\'s Kurtas', 'पुरुषों की कुर्ता', 'men\'s-kurtas', 'पुरुषों-की-कुर्ता', NULL, NULL),
(11, 7, 10, 'Men\'s Casual Shirts', 'पुरुषों की आकस्मिक शर्ट्स', 'men\'s-casual-shirts', 'पुरुषों-की-आकस्मिक-शर्ट्स', NULL, NULL),
(10, 7, 10, 'Men\'s Tshirt', 'पुरुषों की टीशर्ट', 'men\'s-tshirt', 'पुरुषों-की-टीशर्ट', NULL, NULL),
(16, 7, 12, 'Men\'s Sports Shoes', 'पुरुषों के खेल के जूते', 'men\'s-sports-shoes', 'पुरुषों-के-खेल-के-जूते', NULL, NULL),
(17, 7, 12, 'Men\'s Casual Shoes', 'पुरुषों के आरामदायक जूते', 'men\'s-casual-shoes', 'पुरुषों-के-आरामदायक-जूते', NULL, NULL),
(18, 7, 12, 'Men\'s Formal Shoes', 'पुरुषों के औपचारिक जूते', 'men\'s-formal-shoes', 'पुरुषों-के-औपचारिक-जूते', NULL, NULL),
(19, 7, 13, 'Women\'s Flats', 'महिलाओं के फ्लैट', 'women\'s-flats', 'महिलाओं-के-फ्लैट', NULL, NULL),
(20, 7, 13, 'Women\'s Heels', 'महिलाओं की हील्स', 'women\'s-heels', 'महिलाओं-की-हील्स', NULL, NULL),
(21, 7, 13, 'Women\'s Sneakers and Athletic', 'महिला स्नीकर्स और एथलेटिक', 'women\'s-sneakers-and-athletic', 'महिला-स्नीकर्स-और-एथलेटिक', NULL, NULL),
(22, 8, 14, 'Printers', 'प्रिंटर', 'printers', 'प्रिंटर', NULL, NULL),
(23, 8, 14, 'Monitors', 'मॉनिटर्स', 'monitors', 'मॉनिटर्स', NULL, NULL),
(24, 8, 14, 'Projectors', 'प्रोजेक्टर', 'projectors', 'प्रोजेक्टर', NULL, NULL),
(25, 8, 15, 'Plain Cases', 'सादा मामले', 'plain-cases', 'सादा-मामले', NULL, NULL),
(26, 8, 15, 'Designer Cases', 'डिजाइनर मामले', 'designer-cases', 'डिजाइनर-मामले', NULL, NULL),
(27, 8, 15, 'Screen Guards', 'स्क्रीन गार्ड', 'screen-guards', 'स्क्रीन-गार्ड', NULL, NULL),
(28, 8, 16, 'Gaming Mouse', 'गेमिंग माउस', 'gaming-mouse', 'गेमिंग-माउस', NULL, NULL),
(29, 8, 16, 'Gaming Keyboards', 'गेमिंग कीबोर्ड', 'gaming-keyboards', 'गेमिंग-कीबोर्ड', NULL, NULL),
(30, 8, 16, 'Gaming Mousepads', 'गेमिंग माउसपैड', 'gaming-mousepads', 'गेमिंग-माउसपैड', NULL, NULL),
(31, 9, 17, 'Bed Liners', 'बेड लाइनर्स', 'bed-liners', 'बेड-लाइनर्स', NULL, '2021-11-22 03:01:45'),
(32, 9, 17, 'Bedsheets', 'बेडशीट', 'bedsheets', 'बेडशीट', NULL, NULL),
(33, 9, 17, 'Blankets', 'कंबल', 'blankets', 'कंबल', NULL, NULL),
(34, 9, 18, 'Tv Stands', 'टीवी स्टैंड', 'tv-stands', 'टीवी-स्टैंड', NULL, NULL),
(35, 9, 18, 'Dining Sets', 'डाइनिंग सेट', 'dining-sets', 'डाइनिंग-सेट', NULL, NULL),
(36, 9, 18, 'Coffee Tables', 'कॉफी टेबल', 'coffee-tables', 'कॉफी-टेबल', NULL, NULL),
(37, 9, 19, 'Lighting', 'प्रकाश', 'lighting', 'प्रकाश', NULL, NULL),
(38, 9, 19, 'Clocks', 'घड़ियां', 'clocks', 'घड़ियां', NULL, NULL),
(39, 9, 19, 'Wall Decor', 'दीवार की सजावट', 'wall-decor', 'दीवार-की-सजावट', NULL, NULL),
(40, 10, 20, 'Big Screen TVs', 'बिग स्क्रीन टीवी', 'big-screen-tvs', 'बिग-स्क्रीन-टीवी', NULL, NULL),
(41, 10, 20, 'Smart TVs', 'स्मार्ट टीवी', 'smart-tvs', 'स्मार्ट-टीवी', NULL, NULL),
(42, 10, 20, 'OLED TVs', 'OLED टीवी', 'oled-tvs', 'OLED-टीवी', NULL, NULL),
(43, 10, 21, 'Washer Dryers', 'वॉशर ड्रायर', 'washer-dryers', 'वॉशर-ड्रायर', NULL, NULL),
(44, 10, 21, 'Washers', 'वाशर', 'washers', 'वाशर', NULL, NULL),
(45, 10, 21, 'Energy Efficient', 'ऊर्जा कुशल', 'energy-efficient', 'ऊर्जा-कुशल', NULL, NULL),
(46, 10, 22, 'Single Door', 'सिंगल डोर', 'single-door', 'सिंगल-डोर', NULL, NULL),
(47, 10, 22, 'Double Door', 'डबल डोर', 'double-door', 'डबल-डोर', NULL, NULL),
(48, 10, 22, 'Mini Refrigerators', 'मिनी रेफ्रिजरेटर', 'mini-refrigerators', 'मिनी-रेफ्रिजरेटर', NULL, NULL),
(49, 11, 23, 'Eye Shadow', 'आई शैडो', 'eye-shadow', 'आई-शैडो', NULL, NULL),
(50, 11, 23, 'Lipstick', 'लिपस्टिक', 'lipstick', 'लिपस्टिक', NULL, NULL),
(51, 11, 23, 'Hair Care', 'बालों की देखभाल', 'hair-care', 'बालों-की-देखभाल', NULL, NULL),
(52, 11, 24, 'Beverages', 'पेय पदार्थ', 'beverages', 'पेय-पदार्थ', NULL, NULL),
(53, 11, 24, 'Chocolates', 'चॉकलेट', 'chocolates', 'चॉकलेट', NULL, NULL),
(54, 11, 24, 'Snacks', 'स्नैक्स', 'snacks', 'स्नैक्स', NULL, NULL),
(55, 11, 25, 'Baby Diapers', 'बेबी डायपर', 'baby-diapers', 'बेबी-डायपर', NULL, NULL),
(56, 11, 25, 'Baby Wipes', 'बेबी वाइप्स', 'baby-wipes', 'बेबी-वाइप्स', NULL, NULL),
(57, 11, 25, 'Baby Food', 'बेबी फ़ूड', 'baby-food', 'बेबी-फ़ूड', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', NULL, NULL, '$2y$10$PkN00Yc4LdZJkMxraq4Wo.Ao/Vhd5sD68KroaHMpc5pvtHbR6i4UW', NULL, NULL, NULL, NULL, 'profile-photos/92ra8pMNQBSCqUZUZe4ve3hhQ5mxEb7kfynecQz6.png', '2021-10-29 02:50:49', '2021-10-29 03:12:52'),
(2, 'Myron', 'myronrogers.rogers@gmail.com', '9048918679', NULL, '$2y$10$TSLr5.sHC6DUToQ//hsSauNKqW1sLalESFSWNFSTr/9EhqkOvbGGG', NULL, NULL, 'FQq3mzB0qTMLF4RP5zSEI2kllqwe0HyfU0jz1K213hLf5CceD2PbGZeHpkOE', NULL, '202111042041sylvester.png', '2021-11-03 22:14:43', '2021-11-13 22:38:12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
