-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 28, 2021 at 02:59 PM
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
(1, 'Admin', 'admin@gmail.com', '2021-10-31 20:50:07', '$2y$10$kMtiu6Le24Untbh/uHRz.ebpe2h.Bpx38z/C3Yo6CMyucjyvqYktm', 'DTw3L1iJWGOLVErVYfRS6zIbnAmI2RpvS8DPy6czviGW1lfZkWsED9KIatUU', NULL, '202111022032me.png', '2021-10-31 20:50:07', '2021-11-03 16:22:35');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_hin`, `brand_slug_en`, `brand_slug_hin`, `brand_image`, `created_at`, `updated_at`) VALUES
(3, 'Samsung', 'सैमसंग', 'samsung', 'सैमसंग', 'upload/brand/1716534569698407.png', NULL, NULL),
(4, 'Xiaomi', 'Xiaomi', 'xiaomi', 'Xiaomi', 'upload/brand/1716534979515995.png', NULL, NULL),
(5, 'Apple', 'सेब', 'apple', 'सेब', 'upload/brand/1716535055513167.png', NULL, NULL),
(6, 'Oppo', 'विपक्ष', 'oppo', 'विपक्ष', 'upload/brand/1716535171449880.png', NULL, NULL),
(7, 'Vivo', 'विवो', 'vivo', 'विवो', 'upload/brand/1716535303948025.png', NULL, NULL),
(8, 'Huawei', 'हुवाई', 'huawei', 'हुवाई', 'upload/brand/1716609137518934.png', NULL, '2021-11-16 23:07:26'),
(10, 'Lenovo', 'Lenovo', 'lenovo', 'Lenovo', 'upload/brand/1717725815206312.png', NULL, NULL);

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
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HAPPY NEW YEAR', 20, '2022-01-01', 1, '2021-12-13 22:33:31', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, '2021_11_24_002909_create_sliders_table', 9),
(15, '2021_12_09_155350_create_wishlists_table', 10),
(16, '2021_12_12_150402_create_coupons_table', 11),
(17, '2021_12_14_010943_create_ship_divisions_table', 12),
(18, '2021_12_14_032742_create_ship_districts_table', 13),
(19, '2021_12_14_172408_create_ship_states_table', 14),
(20, '2021_12_21_131553_create_shippings_table', 15),
(21, '2021_12_21_212331_create_orders_table', 16),
(22, '2021_12_21_212808_create_order_items_table', 16);

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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(14, 5, 'upload/products/multi-image/1692434756683622.jpeg', '2021-02-22 21:06:00', NULL),
(13, 4, 'upload/products/multi-image/1692434617964727.jpeg', '2021-02-22 21:03:47', NULL),
(12, 4, 'upload/products/multi-image/1692434617371894.jpeg', '2021-02-22 21:03:47', NULL),
(11, 3, 'upload/products/multi-image/1692067278755983.jpeg', '2021-02-18 19:45:05', NULL),
(10, 3, 'upload/products/multi-image/1692067278384233.jpeg', '2021-02-18 19:45:05', NULL),
(9, 3, 'upload/products/multi-image/1692067277985229.jpeg', '2021-02-18 19:45:04', NULL),
(5, 1, 'upload/products/multi-image/1692065310564033.jpeg', '2021-02-18 19:13:48', NULL),
(1, 1, 'upload/products/multi-image/1692065308417794.jpeg', '2021-02-18 19:13:46', NULL),
(2, 1, 'upload/products/multi-image/1692065308955858.jpeg', '2021-02-18 19:13:47', NULL),
(3, 1, 'upload/products/multi-image/1692065309489786.jpeg', '2021-02-18 19:13:47', NULL),
(4, 1, 'upload/products/multi-image/1692065310111315.jpeg', '2021-02-18 19:13:48', NULL),
(15, 5, 'upload/products/multi-image/1692434757242803.jpeg', '2021-02-22 21:06:00', NULL),
(16, 5, 'upload/products/multi-image/1692434757798923.jpeg', '2021-02-22 21:06:01', NULL),
(17, 6, 'upload/products/multi-image/1692434892672340.jpeg', '2021-02-22 21:08:09', NULL),
(18, 7, 'upload/products/multi-image/1692435015295836.jpeg', '2021-02-22 21:10:06', NULL),
(19, 7, 'upload/products/multi-image/1692435015729243.jpeg', '2021-02-22 21:10:07', NULL),
(20, 7, 'upload/products/multi-image/1692435016210628.jpeg', '2021-02-22 21:10:07', NULL),
(21, 8, 'upload/products/multi-image/1692435198442301.jpeg', '2021-02-22 21:13:01', NULL),
(22, 8, 'upload/products/multi-image/1692435198812554.jpeg', '2021-02-22 21:13:01', NULL),
(23, 9, 'upload/products/multi-image/1692435294308001.jpeg', '2021-02-22 21:14:32', NULL),
(24, 9, 'upload/products/multi-image/1692435294741496.jpeg', '2021-02-22 21:14:33', NULL),
(25, 10, 'upload/products/multi-image/1692435397186949.jpeg', '2021-02-22 21:16:10', NULL),
(26, 10, 'upload/products/multi-image/1692435397621306.jpeg', '2021-02-22 21:16:11', NULL),
(27, 11, 'upload/products/multi-image/1692435522145178.jpeg', '2021-02-22 21:18:09', NULL),
(28, 11, 'upload/products/multi-image/1692435522521654.jpeg', '2021-02-22 21:18:10', NULL),
(29, 11, 'upload/products/multi-image/1692435522990857.jpeg', '2021-02-22 21:18:10', NULL),
(39, 13, 'upload/products/multi-image/1717790587590278.jpeg', '2021-11-30 00:06:04', NULL),
(38, 13, 'upload/products/multi-image/1717790587433913.jpeg', '2021-11-30 00:06:04', NULL),
(37, 13, 'upload/products/multi-image/1717790587292305.jpeg', '2021-11-30 00:06:04', NULL),
(36, 13, 'upload/products/multi-image/1717790587088997.jpeg', '2021-11-30 00:06:04', NULL),
(40, 13, 'upload/products/multi-image/1717790587731404.jpg', '2021-11-30 00:06:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 'myronrogers.rogers@gmail.com', 'myronrogers.rogers@gmail.com', '9048918679', 32206, 'Test', 'card_1K9J0tHKzSPTGjObJnoPwR5P', 'Stripe', 'txn_3K9J0uHKzSPTGjOb1katU2xd', 'usd', 2720.00, '61c276006f16b', 'EOS40654586', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 05:49:05', NULL),
(2, 2, 1, 1, 1, 'myronrogers.rogers@gmail.com', 'myronrogers.rogers@gmail.com', '9048918679', 32206, 'Test', 'card_1K9J3BHKzSPTGjObXNgZfJ32', 'Stripe', 'txn_3K9J3DHKzSPTGjOb0emqe2gy', 'usd', 2720.00, '61c2768e9ae16', 'EOS89916945', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 05:51:27', NULL),
(3, 2, 1, 1, 1, 'myronrogers.rogers@gmail.com', 'myronrogers.rogers@gmail.com', '9048918679', 32206, 'Test', 'card_1K9J9zHKzSPTGjObMaZpRi8V', 'Stripe', 'txn_3K9JA0HKzSPTGjOb0DLGdVrp', 'usd', 2720.00, '61c27833e65d7', 'EOS22842892', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 05:58:29', NULL),
(4, 2, 1, 1, 1, 'myronrogers.rogers@gmail.com', 'myronrogers.rogers@gmail.com', '9048918679', 32206, 'Test', 'card_1K9JNgHKzSPTGjOb7qeu8AsR', 'Stripe', 'txn_3K9JNhHKzSPTGjOb0vVNIgSg', 'usd', 2720.00, '61c27b8535dc2', 'EOS29455219', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 06:12:38', NULL),
(5, 2, 1, 1, 1, 'Myron', 'myronrogers.rogers@gmail.com', '9049002340', 32206, 'Test', 'card_1K9W5LHKzSPTGjOba0ESi6lu', 'Stripe', 'txn_3K9W5NHKzSPTGjOb0mWkuR2l', 'usd', 480.00, '61c33a48c82f7', 'MYM48430203', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 19:46:34', NULL),
(6, 2, 1, 1, 1, 'myronrogers.rogers@gmail.com', 'myronrogers.rogers@gmail.com', '9048918679', 32206, 'Test', 'card_1K9WNUHKzSPTGjObkapGbALS', 'Stripe', 'txn_3K9WNVHKzSPTGjOb17QCUW1O', 'usd', 480.00, '61c33eacbea6e', 'MYM64911600', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 20:05:18', NULL),
(7, 2, 1, 1, 1, 'myronrogers.rogers@gmail.com', 'myronrogers.rogers@gmail.com', '9048178679', 32206, 'Test', 'card_1K9WVtHKzSPTGjObAmKKMwyw', 'Stripe', 'txn_3K9WVvHKzSPTGjOb0FUHI9d8', 'usd', 480.00, '61c340b6eca68', 'MYM71671195', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 20:14:00', NULL),
(8, 2, 1, 1, 1, 'wunmansho.wunmansho@gmail.com', 'wunmansho.wunmansho@gmail.com', '9048918679', 32206, 'Test', 'card_1K9WfiHKzSPTGjObipgnbkM9', 'Stripe', 'txn_3K9WfkHKzSPTGjOb0jnckmrB', 'usd', 160.00, '61c34317f212b', 'MYM29976881', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 20:24:09', NULL),
(9, 2, 1, 1, 1, 'wunmansho.wunmansho@gmail.com', 'wunmansho.wunmansho@gmail.com', '9048918679', 32206, 'Test', 'card_1K9WqmHKzSPTGjObiIgNTmHV', 'Stripe', 'txn_3K9WqnHKzSPTGjOb1jC65gGa', 'usd', 160.00, '61c345c53c3ef', 'MYM22357561', '22 December 2021', 'December', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2021-12-22 20:35:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 3, 11, 'Black', 'Large', '1', 2000.00, '2021-12-22 05:58:29', NULL),
(2, 3, 13, 'Black', 'Small', '1', 200.00, '2021-12-22 05:58:29', NULL),
(3, 3, 9, NULL, NULL, '1', 1200.00, '2021-12-22 05:58:29', NULL),
(4, 4, 11, 'Black', 'Large', '1', 2000.00, '2021-12-22 06:12:38', NULL),
(5, 4, 13, 'Black', 'Small', '1', 200.00, '2021-12-22 06:12:38', NULL),
(6, 4, 9, NULL, NULL, '1', 1200.00, '2021-12-22 06:12:38', NULL),
(7, 5, 13, 'Black', 'Small', '3', 200.00, '2021-12-22 19:46:35', NULL),
(8, 6, 13, 'Black', 'Small', '3', 200.00, '2021-12-22 20:06:53', NULL),
(9, 7, 13, 'Black', 'Small', '3', 200.00, '2021-12-22 20:14:00', NULL),
(10, 8, 13, 'Black', 'Small', '1', 200.00, '2021-12-22 20:24:09', NULL),
(11, 9, 13, 'Black', 'Small', '1', 200.00, '2021-12-22 20:35:35', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_hin`, `product_slug_en`, `product_slug_hin`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_hin`, `product_size_en`, `product_size_hin`, `product_color_en`, `product_color_hin`, `selling_price`, `discount_price`, `short_desc_en`, `short_desc_hin`, `long_desc_en`, `long_desc_hin`, `product_thumbnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(11, 3, 8, 14, 23, 'Samsung 26.5 inch LED Backlit', 'सैमसंग 26.5 इंच एलईडी बैकलिट', 'samsung-26.5-inch-led-backlit', 'सैमसंग-26.5-इंच-एलईडी-बैकलिट', '322343255', '400', 'test', 'test', 'Large', 'Large', 'Black', 'Black', '2000', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n&nbsp;', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692435521667396.jpeg', NULL, NULL, 1, NULL, 1, '2021-02-25 01:32:57', '2021-12-07 03:59:22'),
(9, 3, 8, 11, 22, 'Canon G3012 Multi-function', 'कैनन G3012 मल्टी-फंक्शन', 'canon-g3012-multi-function', 'कैनन-G3012-मल्टी-फंक्शन', '3223432666', '197', 'test', 'test', '', '', '', '', '2000', '1200', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692435293558991.jpeg', NULL, 1, NULL, 1, 1, '2021-02-25 02:20:35', '2021-03-30 23:37:18'),
(8, 2, 8, 11, 22, 'Epson L3100 Multi-function', 'एप्सों L3100 मल्टी-फंक्शन', 'epson-l3100-multi-function', 'एप्सों-L3100-मल्टी-फंक्शन', '3223432444', '200', 'test', 'test', '', '', '', '', '2000', '1500', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692435198078978.jpeg', NULL, 1, NULL, NULL, 1, '2021-02-25 01:50:04', '2021-02-25 01:50:04'),
(13, 10, 8, 26, 58, 'Lenovo  Yoga Smartpad', 'यह सिर्फ डेमो डेटा है इससे कोई फर्क नहीं पड़ता', 'lenovo--yoga-smartpad', 'यह-सिर्फ-डेमो-डेटा-है-इससे-कोई-फर्क-नहीं-पड़ता', '122234', '200', 'Lenovo', 'Lenovo', 'Small', 'Small', 'Black', 'Black', '300.00', '200.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'दर्द ही दर्द का प्यार है, मुख्य पारिस्थितिक समस्याएं हैं, लेकिन मैं इस तरह के समय को नीचे गिरने के लिए देता हूं, ताकि कुछ महान दर्द और दर्द हो। कम से कम आने के उद्देश्य से हममें से कौन किसी रोजगार का प्रयोग करे सिवाय उसके परिणाम का लाभ उठाने के। लेकिन फिल्म में जो दर्द है, उसकी निंदा करना लाजमी है, जिस खुशी में वह दर्द में अनाड़ी होने के दर्द से बचना चाहती है, उसका कोई नतीजा नहीं निकलता.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'दर्द ही दर्द का प्यार है, मुख्य पारिस्थितिक समस्याएं हैं, लेकिन मैं इस तरह के समय को नीचे गिरने के लिए देता हूं, ताकि कुछ महान दर्द और दर्द हो। कम से कम आने के उद्देश्य से हममें से कौन किसी रोजगार का प्रयोग करे सिवाय उसके परिणाम का लाभ उठाने के। लेकिन फिल्म में जो दर्द है, उसकी निंदा करना लाजमी है, जिस खुशी में वह दर्द में अनाड़ी होने के दर्द से बचना चाहती है, उसका कोई नतीजा नहीं निकलता. वे अपवाद हैं जिनके लिए अंधे तरसते हैं, वे नहीं देखते हैं, वे वही हैं जो अपनी जिम्मेदारियों को उस गलती के लिए छोड़ देते हैं जो आत्मा की कठिनाइयों को शांत कर रही है।', 'upload/products/thumbnail/1717790586611408.png', NULL, 1, NULL, 1, 1, '2021-11-30 05:06:03', '2021-12-01 02:13:11'),
(4, 3, 7, 7, 10, 'Printed Men Round Neck Black', 'प्रिंटेड मेन राउंड नेक ब्लैक', 'printed-men-round-neck-black', 'प्रिंटेड-मेन-राउंड-नेक-ब्लैक', '45345323', '400', 'Round Neck', 'Round Neck', 'Small,Medium,Large', 'Small,Medium,Large', '', '', '400', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692434616868994.jpeg', 1, 1, 1, NULL, 1, '2021-02-26 00:36:22', '2021-02-26 00:36:22'),
(1, 4, 7, 10, 10, 'Printed Men Round Neck', 'प्रिंटेड मेन राउंड नेक', 'printed-men-round-neck', 'प्रिंटेड-मेन-राउंड-नेक', '234234', '200', 'Round Neck', 'Round Neck', 'Small,Medium,Large', 'Small,Medium,Large', '', '', '500', '400', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, शेष अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एल्दस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692065307871661.jpeg', 1, NULL, 1, NULL, 1, '2021-02-26 00:36:49', '2021-12-02 22:29:55'),
(3, 6, 8, 14, 23, 'Amkette EvoFox Fireblade LED11', 'Amkette EvoFox Fireblade LED11', 'amkette-evofox-fireblade-led11', 'Amkette-EvoFox-Fireblade-LED11', '222222', '200', 'test', 'test', NULL, NULL, '', '', '1300', '1100', 'Lorem Ipsum is simply dummy text of the printing and typesetting11', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के11', '111Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '11लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, शेष अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एल्दस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692067277609010.jpeg', 1, 1, NULL, NULL, 1, '2021-02-28 01:16:30', '2021-12-07 04:39:06'),
(5, 6, 7, 10, 11, 'Printed Men Hooded Neck Orange', 'प्रिंटेड मेन हूडेड नेक ऑरेंज', 'printed-men-hooded-neck-orange', 'प्रिंटेड-मेन-हूडेड-नेक-ऑरेंज', '322343243', '200', 'Hooded Neck', 'Hooded Neck', 'Small,Medium,Large', 'Small,Medium,Large', 'Orange', 'Orange', '399', '300', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692434756119029.jpeg', NULL, 1, NULL, 1, 1, '2021-02-28 00:47:36', '2021-12-02 22:14:50'),
(7, 4, 7, 9, 16, 'Running Shoes For Men', 'पुरुषों के लिए जूते चलाना', 'running-shoes-for-men', 'पुरुषों-के-लिए-जूते-चलाना', '45345344', '400', 'test', 'test', '9,9.5,10,10.5,11,11.5,12', '9,9.5,10,10.5,11,11.5,12', '', '', '2000', '1200', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692435014662276.jpeg', NULL, NULL, 1, 1, 1, '2021-02-25 02:06:52', '2021-02-25 02:06:52'),
(6, 6, 7, 10, 11, 'Striped Men Round Neck Blue', 'धारीदार पुरुष गोल नीली नीली', 'striped-men-round-neck-blue', 'धारीदार-पुरुष-गोल-नीली-नीली', '322343244', '200', 'Round Neck', 'Round Neck', 'Small,Medium,Large', 'Small,Medium,Large', 'Blue', 'Blue', '399', '300', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692434892084466.jpeg', NULL, NULL, 1, NULL, 1, '2021-02-26 00:37:28', '2021-12-02 22:18:06'),
(10, 3, 8, 14, 23, 'Samsung 24 inch Curved Full', 'सैमसंग 24 इंच कर्व्ड फुल', 'samsung-24-inch-curved-full', 'सैमसंग-24-इंच-कर्व्ड-फुल', '32234326546', '400', 'test', 'test', NULL, NULL, NULL, NULL, '1200', '1100', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।', 'upload/products/thumbnail/1692435396611543.jpeg', NULL, 1, NULL, NULL, 1, '2021-02-28 04:01:40', '2021-12-07 04:50:22');

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
('JPQFAza9c8qtYze28LMtOt86fVnqK15izKY1ytTw', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiUmVYOU9tVEp2UXRUZ2I4d1RZc21Zd2FoOFJkeVhCMk94cW5Ob2NkcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGVja291dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRUU0xyNS5zSEM2RFVUb1EvL2hzU2F1TktxVzFzTGFsRVNGU1dORlNUci85RWhxa092YkdHRyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkVFNMcjUuc0hDNkRVVG9RLy9oc1NhdU5LcVcxc0xhbEVTRlNXTkZTVHIvOUVocWtPdmJHR0ciO3M6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE5OiJwYXNzd29yZF9oYXNoX2FkbWluIjtzOjYwOiIkMnkkMTAka010aXU2TGUyNFVudGJoL3VIUnouZWJwZTJoLkJweDM4ei9DM1lvNkNNeXVjanl2cVlrdG0iO3M6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjQ0YmJjMzg2ZDQxNzc2M2NlNTNmYzJkN2RiOWFkNTg4IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTA6e3M6NToicm93SWQiO3M6MzI6IjQ0YmJjMzg2ZDQxNzc2M2NlNTNmYzJkN2RiOWFkNTg4IjtzOjI6ImlkIjtzOjI6IjExIjtzOjM6InF0eSI7czoxOiIxIjtzOjQ6Im5hbWUiO3M6Mjk6IlNhbXN1bmcgMjYuNSBpbmNoIExFRCBCYWNrbGl0IjtzOjU6InByaWNlIjtkOjIwMDA7czo2OiJ3ZWlnaHQiO2Q6MTtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTozOntzOjU6ImltYWdlIjtzOjQ3OiJ1cGxvYWQvcHJvZHVjdHMvdGh1bWJuYWlsLzE2OTI0MzU1MjE2NjczOTYuanBlZyI7czo1OiJjb2xvciI7czo1OiJCbGFjayI7czo0OiJzaXplIjtzOjU6IkxhcmdlIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MDtzOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDY6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBkaXNjb3VudFJhdGUiO2k6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fX0=', 1640703363);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

DROP TABLE IF EXISTS `ship_districts`;
CREATE TABLE IF NOT EXISTS `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'District 1A', '2021-12-14 21:03:24', NULL),
(3, 1, 'District 1B', '2021-12-15 01:57:58', NULL),
(4, 1, 'District 1C', '2021-12-15 02:01:02', NULL),
(5, 3, 'District 2A', '2021-12-15 02:03:04', NULL),
(6, 3, 'District 2B', '2021-12-15 02:05:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

DROP TABLE IF EXISTS `ship_divisions`;
CREATE TABLE IF NOT EXISTS `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Division 1', '2021-12-14 07:01:48', NULL),
(3, 'Division 2', '2021-12-15 01:53:08', NULL),
(4, 'Division 3', '2021-12-15 01:56:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

DROP TABLE IF EXISTS `ship_states`;
CREATE TABLE IF NOT EXISTS `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Oklahoma', '2021-12-15 02:54:10', NULL),
(2, 1, 3, 'Texas', '2021-12-15 02:55:07', NULL),
(3, 1, 1, 'Kansas', '2021-12-15 03:02:40', NULL);

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
(1, 'upload/slider/1717342497190656.jpg', 'Slider One', 'Slider One Test Description', 1, NULL, '2021-11-29 03:15:32'),
(3, 'upload/slider/1717712892411969.jpg', 'Slider Two', 'Slider Two Test Description', 1, NULL, '2021-11-29 03:31:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25, 11, 'Baby Care', 'बेबी केयर', 'baby-care', 'बेबी-केयर', NULL, NULL),
(26, 8, 'Computers', 'कंप्यूटर', 'computers', 'कंप्यूटर', NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(57, 11, 25, 'Baby Food', 'बेबी फ़ूड', 'baby-food', 'बेबी-फ़ूड', NULL, NULL),
(58, 8, 26, 'Smartpads', 'स्मार्टपैड', 'smartpads', 'स्मार्टपैड', NULL, NULL);

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
(2, 'Myron', 'myronrogers.rogers@gmail.com', '9048918679', NULL, '$2y$10$TSLr5.sHC6DUToQ//hsSauNKqW1sLalESFSWNFSTr/9EhqkOvbGGG', NULL, NULL, 'PFY1Fvc3GiejVSH1C4be2hZPKVn64K41YKQJAW0diVSkrla7YQVY3Hf7S30w', NULL, '202111042041sylvester.png', '2021-11-03 22:14:43', '2021-11-13 22:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 11, '2021-12-09 22:24:41', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
