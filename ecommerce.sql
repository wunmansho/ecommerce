-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2021 at 09:30 PM
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
(11, 'Beauty', 'सुंदरता', 'beauty', 'सुंदरता', 'fa fa-laptop', NULL, '2021-11-29 02:17:24'),
(10, 'Appliances', 'उपकरण', 'appliances', 'उपकरण', 'fa fa-shopping-bag', NULL, '2021-11-29 02:10:55'),
(9, 'Sweet Home', 'प्यारा घर', 'sweet-home', 'प्यारा-घर', 'fa fa-shopping-cart', NULL, NULL),
(7, 'Fashion', 'फैशन', 'fashion', 'फैशन', 'fa fa-paw', NULL, '2021-11-29 02:14:21'),
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13, '2021_11_20_184405_create_multi_imgs_table', 8),
(14, '2021_11_24_002909_create_sliders_table', 9);

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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(15, 5, 'upload/products/multi-image/1717164734865760.jpeg', '2021-11-23 02:18:24', NULL),
(14, 5, 'upload/products/multi-image/1717164734731763.jpeg', '2021-11-23 02:18:24', NULL),
(13, 5, 'upload/products/multi-image/1717164734598396.jpeg', '2021-11-23 02:18:24', NULL),
(12, 4, 'upload/products/multi-image/1717161857044060.jpeg', '2021-11-23 01:32:40', NULL),
(11, 4, 'upload/products/multi-image/1717161856921797.jpeg', '2021-11-23 01:32:40', NULL),
(10, 4, 'upload/products/multi-image/1717161856743229.jpeg', '2021-11-23 01:32:40', NULL),
(9, 4, 'upload/products/multi-image/1717161856608291.jpeg', '2021-11-23 01:32:39', NULL);

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
  `product_tags_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_tags_hin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_hin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_hin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desc_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desc_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_hin`, `product_slug_en`, `product_slug_hin`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_hin`, `product_size_en`, `product_size_hin`, `product_color_en`, `product_color_hin`, `selling_price`, `discount_price`, `short_desc_en`, `short_desc_hin`, `long_desc_en`, `long_desc_hin`, `product_thumbnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(4, 6, 7, 10, 10, 'Printed Men Round Neck', 'प्रिंटेड मेन राउंड नेक', '', '', '453453', '200', 'Round Neck', 'Round Neck', 'Small,Medium,Large', 'Small,Medium,Large', 'Red,Black,White', 'Red,Black,White', '25.00', '20.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'दर्द ही दर्द का प्यार है, मुख्य पारिस्थितिक समस्याएं हैं, लेकिन मैं इस तरह के समय को नीचे गिरने के लिए देता हूं, ताकि कुछ महान दर्द और दर्द हो। कम से कम आने के उद्देश्य से हममें से कौन किसी रोजगार का प्रयोग करे सिवाय उसके परिणाम का लाभ उठाने के। लेकिन फिल', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>दर्द ही दर्द का प्यार है, मुख्य पारिस्थितिक समस्याएं हैं, लेकिन मैं इस तरह के समय को नीचे गिरने के लिए देता हूं, ताकि कुछ महान दर्द और दर्द हो। कम से कम आने के उद्देश्य से हममें से कौन किसी रोजगार का प्रयोग करे सिवाय उसके परिणाम का लाभ उठाने के। लेकिन फिल्म में जो दर्द है, उसकी निंदा करना लाजमी है, जिस खुशी में वह दर्द में अनाड़ी होने के दर्द से बचना चाहती है, उसका कोई नतीजा नहीं निकलता. वे अपवाद हैं जिनके लिए अंधे तरसते हैं, वे नहीं देखते हैं, वे वही हैं जो अपनी जिम्मेदारियों को उस गलती के लिए छोड़ देते हैं जो आत्मा की कठिनाइयों को शांत कर रही है।</p>', 'upload/products/thumbnail/1717161856467245.jpeg', 1, NULL, NULL, NULL, 1, '2021-11-23 01:32:39', NULL),
(5, 7, 7, 10, 10, 'Striped Men\'s Hooded Neck Red', 'धारीदार पुरुषों की हुड वाली गर्दन लाल', '', '', '322342', '300', 'Neck Red', 'Neck Red', 'Small,Medium,Large', 'Small,Medium,Large', 'Red,Black,White', 'Red,Black,White', '30.00', '25.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'दर्द ही दर्द का प्यार है, मुख्य पारिस्थितिक समस्याएं हैं, लेकिन मैं इस तरह के समय को नीचे गिरने के लिए देता हूं, ताकि कुछ महान दर्द और दर्द हो। कम से कम आने के उद्देश्य से हममें से कौन किसी रोजगार का प्रयोग करे सिवाय उसके परिणाम का लाभ उठाने के। लेकिन फिल्म में जो दर्द है, उसकी निंदा करना लाजमी है, जिस खुशी में वह दर्द में अनाड़ी होने के दर्द से बचना चाहती है, उसका कोई नतीजा नहीं निकलता.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>दर्द ही दर्द का प्यार है, मुख्य पारिस्थितिक समस्याएं हैं, लेकिन मैं इस तरह के समय को नीचे गिरने के लिए देता हूं, ताकि कुछ महान दर्द और दर्द हो। कम से कम आने के उद्देश्य से हममें से कौन किसी रोजगार का प्रयोग करे सिवाय उसके परिणाम का लाभ उठाने के। लेकिन फिल्म में जो दर्द है, उसकी निंदा करना लाजमी है, जिस खुशी में वह दर्द में अनाड़ी होने के दर्द से बचना चाहती है, उसका कोई नतीजा नहीं निकलता. वे अपवाद हैं जिनके लिए अंधे तरसते हैं, वे नहीं देखते हैं, वे वही हैं जो अपनी जिम्मेदारियों को उस गलती के लिए छोड़ देते हैं जो आत्मा की कठिनाइयों को शांत कर रही है।</p>', 'upload/products/thumbnail/1717164734473419.jpeg', NULL, 1, 1, NULL, 0, '2021-11-23 02:18:24', '2021-11-24 04:19:00');

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
('BK9bjoEyq1I083ff7QrFTX4orgzNbjYze2wmMsMt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMDVWeFNPTkdmcVlzTTZaUk1Fem5KVlBuY0xsVWVIaWRJcmRPMFJyeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjc6ImVuZ2xpc2giO30=', 1638134723),
('kBDJmOww2jMbxWveSW2Mhz6WURp36o7oGPsp5vRX', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoibkpSMXI3d3paN3doU29DeGRCdFlHeUc3eWRJcW9TTXFtS3RjSmcwZiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRUU0xyNS5zSEM2RFVUb1EvL2hzU2F1TktxVzFzTGFsRVNGU1dORlNUci85RWhxa092YkdHRyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkVFNMcjUuc0hDNkRVVG9RLy9oc1NhdU5LcVcxc0xhbEVTRlNXTkZTVHIvOUVocWtPdmJHR0ciO3M6ODoibGFuZ3VhZ2UiO3M6NzoiZW5nbGlzaCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1637876612),
('Ephv4iDsWNicxPMUgpdZmEMB1Nt5EVCjMxif4Y61', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoidzRhNldPMHRMQm1qV3lTVkZyNU9nV0ZXT3h4T0E0Yld3bG9CeklQZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRUU0xyNS5zSEM2RFVUb1EvL2hzU2F1TktxVzFzTGFsRVNGU1dORlNUci85RWhxa092YkdHRyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkVFNMcjUuc0hDNkRVVG9RLy9oc1NhdU5LcVcxc0xhbEVTRlNXTkZTVHIvOUVocWtPdmJHR0ciO3M6ODoibGFuZ3VhZ2UiO3M6NzoiZW5nbGlzaCI7fQ==', 1637850273),
('9ZhgEiil1ynZUtF0Es5nB5mdZ5yKTOJT6pNpDGNB', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoieVdUc1Q4SU5pOUp4dDRmUHJ2aEdCWnlXT2N3ZGlsaUpZRDV1MVhmTSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFRTTHI1LnNIQzZEVVRvUS8vaHNTYXVOS3FXMXNMYWxFU0ZTV05GU1RyLzlFaHFrT3ZiR0dHIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRUU0xyNS5zSEM2RFVUb1EvL2hzU2F1TktxVzFzTGFsRVNGU1dORlNUci85RWhxa092YkdHRyI7czo4OiJsYW5ndWFnZSI7czo3OiJlbmdsaXNoIjt9', 1637809588),
('mJTRfBvU9k3InfgOa0cHy7xRXlAWRyjxnkZLcgug', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTlI1RFRkQVh2UVFEYVVVZDVKVk9HbUtvVnhZZGhXRWdIUkZPSjliSSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFRTTHI1LnNIQzZEVVRvUS8vaHNTYXVOS3FXMXNMYWxFU0ZTV05GU1RyLzlFaHFrT3ZiR0dHIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRUU0xyNS5zSEM2RFVUb1EvL2hzU2F1TktxVzFzTGFsRVNGU1dORlNUci85RWhxa092YkdHRyI7fQ==', 1637864679),
('HFCFHYuhFUoBBk5aVrSRHPeH59RQAvRyT8zEwpdv', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiUjFxZlZ4S3FSMFlBYk9rbEdiTnloYm9SNnRCaGtSbWV4RTN5eWZ3aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkVFNMcjUuc0hDNkRVVG9RLy9oc1NhdU5LcVcxc0xhbEVTRlNXTkZTVHIvOUVocWtPdmJHR0ciO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFRTTHI1LnNIQzZEVVRvUS8vaHNTYXVOS3FXMXNMYWxFU0ZTV05GU1RyLzlFaHFrT3ZiR0dHIjtzOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc2xpZGVyL3ZpZXciO31zOjg6Imxhbmd1YWdlIjtzOjc6ImVuZ2xpc2giO30=', 1637797997);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1717342497190656.jpg', 'Slider One', 'Slider One Test Desc', 1, NULL, '2021-11-25 01:23:52'),
(3, 'upload/slider/1717343556527058.jpg', 'Slider Two', 'Slider Two Test Desc', 1, NULL, '2021-11-25 01:53:51');

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
(2, 'Myron', 'myronrogers.rogers@gmail.com', '9048918679', NULL, '$2y$10$TSLr5.sHC6DUToQ//hsSauNKqW1sLalESFSWNFSTr/9EhqkOvbGGG', NULL, NULL, 'MFLEjsnJEMCVuG93BoHL2J7DWBtcqKSGkApE7wIyoGUUr5j8I2T6rw6rN8LT', NULL, '202111042041sylvester.png', '2021-11-03 22:14:43', '2021-11-13 22:38:12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
