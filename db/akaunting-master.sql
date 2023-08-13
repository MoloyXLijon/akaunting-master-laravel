-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2023 at 05:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akaunting-master`
--

-- --------------------------------------------------------

--
-- Table structure for table `p9k_accounts`
--

CREATE TABLE `p9k_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `number` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `opening_balance` double(15,4) NOT NULL DEFAULT 0.0000,
  `bank_name` varchar(191) DEFAULT NULL,
  `bank_phone` varchar(191) DEFAULT NULL,
  `bank_address` text DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_accounts`
--

INSERT INTO `p9k_accounts` (`id`, `company_id`, `name`, `number`, `currency_code`, `opening_balance`, `bank_name`, `bank_phone`, `bank_address`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Cash', '1', 'USD', 0.0000, 'Cash', NULL, NULL, 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(2, 1, 'Repellat autem.', 'NO1157360815594', 'TRY', 0.0000, 'Ut consequatur.', '(07595) 583176', '645 Dennis Hills\nPort Hollieshire\nNG34 9HJ', 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(3, 1, 'Consequatur.', 'FI6167990626483448', 'EUR', 0.0000, 'Quas sed saepe.', '(0561) 797 8303', '122 Ross Mountain\nEast Kirsty\nL25 8SJ', 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-04-28 05:18:16', '2022-04-28 05:18:16'),
(4, 1, 'Molestiae vel.', 'CZ3581862366448892066539', 'GBP', 0.0000, 'Nam aut.', '(0929) 266 8074', '112 Edwards Creek\nBellbury\nBS23 3YE', 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(5, 1, 'Voluptas quo.', 'BR8042987436269975476845846N4', 'TRY', 0.0000, 'Qui quaerat.', '(04092) 44019', '1 Amy Cove\nWest Roxannehaven\nHU8 8SH', 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(6, 1, 'Quia.', 'MC19362989581193JX0NG10WJ47', 'TRY', 0.0000, 'Dolorem enim.', '(0195) 014 0679', 'Flat 77h\nEdwards Vista\nPort Bradleyborough\nGU1 2PB', 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(7, 1, 'Error dolor.', 'LV11BLVR1IKVD87P1EMBZ', 'GBP', 0.0000, 'Ea at rerum.', '+44(0)0381500387', '689 Reid Points\nJacksonhaven\nL15 6UE', 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(8, 1, 'Tempore sed.', 'CZ4360024043397915806311', 'EUR', 0.0000, 'Et aspernatur.', '0728 853 2812', '4 Johnson Forges\nTomchester\nDH3 2NB', 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(9, 1, 'Esse eaque.', 'GB86YQAR46546185929571', 'EUR', 0.0000, 'Eum deserunt.', '00528682514', '628 Watson Ramp\nJacksonport\nSP4 6JS', 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(10, 1, 'Ipsam eos.', 'PT12060030168900081800976', 'EUR', 0.0000, 'Iste et ea.', '+44(0)5116921478', '202 Carrie Forks\nPort Petertown\nPL4 9RB', 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(11, 1, 'Accusantium.', 'GI74PGTB20R518BS0AZGJ90', 'USD', 0.0000, 'Id animi ut.', '03958800338', 'Flat 36\nMolly Ramp\nNew Yvonneberg\nME14 4NL', 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-04-26 11:52:31', '2022-04-26 11:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_bills`
--

CREATE TABLE `p9k_bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `bill_number` varchar(191) NOT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `billed_at` datetime NOT NULL,
  `due_at` datetime NOT NULL,
  `amount` double(15,4) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `currency_rate` double(15,8) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1,
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(191) NOT NULL,
  `contact_email` varchar(191) DEFAULT NULL,
  `contact_tax_number` varchar(191) DEFAULT NULL,
  `contact_phone` varchar(191) DEFAULT NULL,
  `contact_address` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_bill_histories`
--

CREATE TABLE `p9k_bill_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_bill_items`
--

CREATE TABLE `p9k_bill_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `quantity` double(7,2) NOT NULL,
  `price` double(15,4) NOT NULL,
  `total` double(15,4) NOT NULL,
  `tax` double(15,4) NOT NULL DEFAULT 0.0000,
  `discount_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(191) NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_bill_item_taxes`
--

CREATE TABLE `p9k_bill_item_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `bill_item_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_bill_totals`
--

CREATE TABLE `p9k_bill_totals` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(15,4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_categories`
--

CREATE TABLE `p9k_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_categories`
--

INSERT INTO `p9k_categories` (`id`, `company_id`, `name`, `type`, `color`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Transfer', 'other', '#3c3f72', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(2, 1, 'Deposit', 'income', '#efad32', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(3, 1, 'Sales', 'income', '#6da252', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(4, 1, 'Other', 'expense', '#e5e5e5', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(5, 1, 'General', 'item', '#328aef', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(6, 1, 'Qui et unde.', 'income', '#010dce', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(7, 1, 'Et corrupti.', 'income', '#a62b09', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(8, 1, 'Ullam repellat.', 'expense', '#f24367', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(9, 1, 'Sit adipisci.', 'income', '#371008', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(10, 1, 'Sint magni.', 'other', '#674316', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(11, 1, 'Omnis.', 'item', '#321019', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(12, 1, 'Id corrupti.', 'other', '#15ce8b', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(13, 1, 'Sit unde aut.', 'other', '#3365d8', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(14, 1, 'Perspiciatis.', 'other', '#93894d', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(15, 1, 'Et ducimus.', 'item', '#2bdb90', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(16, 1, 'Dolor dolorem.', 'expense', '#ac79f9', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(17, 1, 'Tenetur.', 'expense', '#789730', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(18, 1, 'Non suscipit.', 'item', '#1a2794', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(19, 1, 'Odio aut.', 'income', '#668cf8', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(20, 1, 'Dolorem.', 'expense', '#9301b6', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(21, 1, 'Cum architecto.', 'item', '#eb5942', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(22, 1, 'Aliquam minus.', 'income', '#151057', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(23, 1, 'Laborum.', 'income', '#235271', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(24, 1, 'Sit impedit.', 'item', '#22f46d', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(25, 1, 'At corporis.', 'expense', '#aff445', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(26, 1, 'Voluptatem.', 'other', '#86e13a', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(27, 1, 'Et quae.', 'income', '#9f0b82', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(28, 1, 'Atque eos unde.', 'other', '#bbf3e6', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(29, 1, 'Aliquam aut et.', 'other', '#ab4fc9', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(30, 1, 'Occaecati quia.', 'income', '#3af9ed', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(31, 1, 'Tempora soluta.', 'item', '#594be7', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(32, 1, 'Est excepturi.', 'item', '#32c593', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(33, 1, 'Saepe nam est.', 'other', '#463b2d', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(34, 1, 'Blanditiis non.', 'item', '#b4d060', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(35, 1, 'Vitae sit.', 'expense', '#5f7131', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(36, 1, 'Reprehenderit.', 'expense', '#683e1b', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(37, 1, 'Maiores.', 'other', '#d6a927', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(38, 1, 'Rem eum aut.', 'income', '#3470f0', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(39, 1, 'Consectetur.', 'other', '#c25143', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(40, 1, 'Facere nulla.', 'other', '#a614b6', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(41, 1, 'Rerum corrupti.', 'expense', '#bf7c23', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(42, 1, 'Aperiam sequi.', 'other', '#e7183e', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(43, 1, 'Fugiat non.', 'income', '#dc11b7', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(44, 1, 'Harum fuga.', 'item', '#0ba8f8', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(45, 1, 'Aperiam minima.', 'other', '#bf2d0f', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(46, 1, 'Dolorem.', 'other', '#9bd2e4', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(47, 1, 'Dolores et.', 'other', '#188ddf', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(48, 1, 'Et assumenda.', 'income', '#16f1ad', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(49, 1, 'Perspiciatis.', 'expense', '#fe78da', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(50, 1, 'Quia est vitae.', 'other', '#24725e', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(51, 1, 'Assumenda.', 'other', '#540851', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(52, 1, 'Earum minus.', 'item', '#369078', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(53, 1, 'Deleniti.', 'item', '#6b4240', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(54, 1, 'Libero quo.', 'item', '#7e762a', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(55, 1, 'Aut maiores.', 'other', '#845a03', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(56, 1, 'Dolorem.', 'expense', '#82ee1a', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(57, 1, 'Voluptatibus.', 'income', '#aba444', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(58, 1, 'Omnis optio.', 'expense', '#3405a6', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(59, 1, 'Itaque ipsum.', 'other', '#8489eb', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(60, 1, 'Similique.', 'income', '#8183b6', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(61, 1, 'Nisi.', 'other', '#0d3984', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(62, 1, 'Numquam.', 'income', '#46b158', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(63, 1, 'Architecto.', 'expense', '#11e49f', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(64, 1, 'Voluptatibus.', 'item', '#6ec149', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(65, 1, 'Occaecati.', 'item', '#44c5ba', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(66, 1, 'Officia.', 'other', '#ada0f3', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(67, 1, 'Tempore dolor.', 'income', '#2487bc', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(68, 1, 'Voluptate.', 'item', '#e5ebe6', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(69, 1, 'Eaque vitae et.', 'other', '#1dd152', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(70, 1, 'Sit amet.', 'item', '#e6e60c', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(71, 1, 'Atque.', 'item', '#b577e7', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(72, 1, 'Molestiae sunt.', 'income', '#1f6ccc', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(73, 1, 'Suscipit et.', 'income', '#28cefa', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(74, 1, 'Ut iste id.', 'income', '#09a152', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(75, 1, 'Suscipit ipsa.', 'other', '#d4716b', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(76, 1, 'Maxime.', 'expense', '#5b2270', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(77, 1, 'Nostrum ut.', 'income', '#1942f3', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(78, 1, 'Adipisci aut.', 'item', '#34da6b', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(79, 1, 'Nostrum autem.', 'income', '#6e4909', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(80, 1, 'Aut.', 'expense', '#2abd11', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(81, 1, 'Corrupti.', 'other', '#5b9576', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(82, 1, 'Dolorum ut.', 'income', '#cc3d0e', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(83, 1, 'Numquam veniam.', 'item', '#d37aa5', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(84, 1, 'Commodi.', 'income', '#765718', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(85, 1, 'Perferendis.', 'item', '#87ed1a', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(86, 1, 'Expedita unde.', 'income', '#e6257d', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(87, 1, 'Itaque quidem.', 'income', '#d9e63e', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(88, 1, 'Rerum cumque.', 'other', '#9636d7', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(89, 1, 'Eum reiciendis.', 'expense', '#391949', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(90, 1, 'Rerum eaque.', 'income', '#c618b4', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(91, 1, 'Debitis.', 'other', '#88280e', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(92, 1, 'Quis et vel.', 'income', '#dad4cc', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(93, 1, 'Voluptate.', 'other', '#bb4ee4', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(94, 1, 'Sapiente illo.', 'item', '#48d8b6', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(95, 1, 'Quod quidem.', 'expense', '#7d8dd4', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(96, 1, 'Molestiae.', 'item', '#77ba3e', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(97, 1, 'Perspiciatis.', 'expense', '#4443a5', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(98, 1, 'Facilis quas.', 'income', '#992da5', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(99, 1, 'Beatae culpa.', 'other', '#3f2a26', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(100, 1, 'Suscipit eos.', 'other', '#75dfcb', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(101, 1, 'Neque aut.', 'other', '#2ed801', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(102, 1, 'Impedit.', 'item', '#21086d', 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(103, 1, 'Delectus hic.', 'income', '#43a913', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(104, 1, 'Ut sapiente.', 'other', '#1c9fe7', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(105, 1, 'Et et corrupti.', 'income', '#6668d3', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_companies`
--

CREATE TABLE `p9k_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(191) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_companies`
--

INSERT INTO `p9k_companies` (`id`, `domain`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 1, 'core::console', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_contacts`
--

CREATE TABLE `p9k_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tax_number` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zip_code` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `currency_code` varchar(3) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `reference` varchar(191) DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_contacts`
--

INSERT INTO `p9k_contacts` (`id`, `company_id`, `type`, `name`, `email`, `user_id`, `tax_number`, `phone`, `address`, `city`, `zip_code`, `state`, `country`, `website`, `currency_code`, `enabled`, `reference`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'vendor', 'Eleanor Johnson', 'noah21@example.net', NULL, '367709170', '0762906021', '271 Ross Mountain\nJoneston\nS2 3BQ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Id.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(2, 1, 'customer', 'Francesca Knight', 'natalie.brown@example.net', NULL, '896504823', '+44(0)371296745', '4 Suzanne Roads\nRobinsonchester\nSP1 1NE', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(3, 1, 'customer', 'Jackson Edwards', 'sasha.collins@example.com', NULL, '548758927', '0431 2673833', 'Studio 44\nThomas Orchard\nNorth Sabrinahaven\nAB53 4RJ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Sed.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(4, 1, 'customer', 'Ellie Hughes', 'russell.philip@example.org', NULL, '539226089', '(03724) 30255', '6 Hunt Mill\nLake Matthew\nCO5 9BJ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Ut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(5, 1, 'vendor', 'Harley Murray', 'jmorgan@example.net', NULL, '935685139', '+44(0)224975219', '425 Young Neck\nSouth Matthew\nTW5 0XT', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Id.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(6, 1, 'customer', 'Dennis Price', 'russell.julie@example.net', NULL, '802666312', '(0926) 1277610', 'Flat 28l\nRebecca Street\nDavisberg\nEH26 0LE', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(7, 1, 'customer', 'Ruby Wilkinson', 'rowena.harrison@example.com', NULL, '277872575', '09400 604453', '834 Pete Junction\nPaulland\nB10 9JS', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Ut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(8, 1, 'vendor', 'Lewis Mitchell', 'will.wood@example.org', NULL, '247971991', '0286241590', '921 Simpson Avenue\nPort Darren\nAL3 8RN', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Aut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(9, 1, 'vendor', 'Helena Rose', 'gross@example.com', NULL, '575130359', '06548 19850', '77 Michael Well\nRobinsonport\nM15 6QL', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Non.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(10, 1, 'vendor', 'Lauren Wilkinson', 'saunders.zoe@example.net', NULL, '236115521', '06446025254', 'Studio 62k\nSebastian Junction\nNew Sabrina\nIG10 3JT', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Aut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(11, 1, 'vendor', 'Courtney Kennedy', 'edward66@example.com', NULL, '407397145', '(07624) 979972', '37 Arthur Groves\nAlicetown\nCH45 6UP', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(12, 1, 'vendor', 'Connor King', 'stewart.quentin@example.com', NULL, '106613425', '0612 0099555', '1 Jackson Corner\nFreyaville\nHR8 2JJ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(13, 1, 'vendor', 'Noah Lewis', 'heather65@example.net', NULL, '438749358', '(04088) 402381', '84 Collins Canyon\nFreyamouth\nTW12 2RA', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Eos.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(14, 1, 'vendor', 'Amanda Knight', 'pete39@example.net', NULL, '974119162', '(00192) 12330', '366 Karl Ways\nFionastad\nSE26 6JG', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Sit.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(15, 1, 'vendor', 'Theo Anderson', 'rowena.parker@example.org', NULL, '594364843', '+44(0)9418746573', '85 Adrian Plains\nNew Justineview\nL36 3RN', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Illo.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(16, 1, 'customer', 'Kyle Shaw', 'lewis13@example.net', NULL, '174378467', '+44(0)4357925456', '87 Hunter Rapids\nEdwardsmouth\nPL1 4EH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Enim.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(17, 1, 'customer', 'Selina Martin', 'tiffany.white@example.com', NULL, '375550913', '08244209627', '3 Taylor Crossing\nSouth Bethany\nCW11 5SY', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Ut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(18, 1, 'customer', 'Jane Owen', 'mary.james@example.org', NULL, '490714318', '(0594) 9357035', '20 Turner Extension\nLake Edwardview\nYO31 8WU', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Sit.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(19, 1, 'customer', 'Graham Moore', 'nicole.knight@example.net', NULL, '495817876', '01121 35768', '78 Rosie Common\nNorth Eleanorfort\nCW1 5PG', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Quia.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(20, 1, 'vendor', 'Charlie Cook', 'cwalker@example.net', NULL, '979715332', '(0470) 511 6999', 'Flat 69\nWood Trace\nStaceymouth\nDE55 5SF', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(21, 1, 'customer', 'Lewis Wilson', 'tony80@example.org', NULL, '140595551', '04210093863', '115 Brown Divide\nWest Paul\nML9 3BS', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quo.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(22, 1, 'vendor', 'Paula Hunter', 'andrew05@example.org', NULL, '864636568', '+44(0)4257 667756', 'Studio 84o\nMurray View\nNorth Zacharyberg\nIP19 0NS', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'At.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(23, 1, 'customer', 'Callum Scott', 'donna.marshall@example.com', NULL, '137160978', '+44(0)4702 15082', '59 Alexandra Divide\nKennedyland\nIP7 5SS', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-05-11 01:03:28', NULL),
(24, 1, 'customer', 'Finley Powell', 'lwalsh@example.org', NULL, '85493848', '+44(0)041322062', '17 Alexa Drives\nLake Jackson\nSG18 0HL', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Quam.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(25, 1, 'customer', 'Joanne Morgan', 'taylor.ruby@example.org', NULL, '317483820', '+44(0)570097799', '920 Isaac Knolls\nPeterstad\nIP22 1JW', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Sit.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-03-13 06:08:16', NULL),
(26, 1, 'vendor', 'Vicky Baker', 'morris.elliott@example.org', NULL, '695653246', '05821 75216', '7 Smith Roads\nLake Jackfort\nPL1 4EH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(27, 1, 'customer', 'Gordon Anderson', 'duncan.harris@example.com', NULL, '34444429', '+44(0)8135 543155', '2 Hannah Garden\nThomasfurt\nCO1 1QR', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Non.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(28, 1, 'vendor', 'Nathan King', 'ray54@example.org', NULL, '986702184', '+44(0)0183211488', 'Studio 86\nQuentin Ports\nNew Graham\nLA8 9RA', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Aut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(29, 1, 'customer', 'Rob White', 'alexa04@example.net', NULL, '436761686', '+44(0)371782920', '33 Lucy Bypass\nPort Tracymouth\nS35 4FX', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Odit.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(30, 1, 'vendor', 'Daniel Clarke', 'lee.ruth@example.com', NULL, '9618460', '+44(0)8202071140', 'Studio 91b\nRyan Fort\nShawchester\nIG10 3JT', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Sit.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(31, 1, 'vendor', 'Charlotte Cox', 'isobel79@example.net', NULL, '277550823', '(09688) 73614', '538 Hughes Islands\nMasonburgh\nWR2 4HQ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Sunt.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(32, 1, 'vendor', 'Helena Matthews', 'jkhan@example.org', NULL, '60880437', '0898 1165179', '3 Rowena Crest\nMurrayburgh\nBB4 5TZ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Nam.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(33, 1, 'customer', 'Luke Parker', 'zpatel@example.org', NULL, '65754169', '(0879) 001 6215', '9 Bethany Parks\nNorth Charlesland\nBN12 6HW', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(34, 1, 'vendor', 'Reece Powell', 'kelly.ian@example.com', NULL, '265731467', '07965 90536', '21 Jonathan River\nEast Joel\nHR9 9AJ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(35, 1, 'customer', 'Rachel Cook', 'clark.adrian@example.com', NULL, '328742551', '+44(0)5645599967', 'Studio 34f\nCooper Fall\nPort Rubytown\nDE65 6JG', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Ab.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(36, 1, 'customer', 'Kieran Knight', 'wright.cameron@example.org', NULL, '327884266', '(08227) 79567', '95 Nicole Drives\nPort Tylerborough\nN8 7AU', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Sit.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(37, 1, 'customer', 'Wayne Cook', 'jreynolds@example.org', NULL, '874130836', '04946 360401', '6 Karl Ranch\nJustineshire\nHU7 4FE', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Nam.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(38, 1, 'vendor', 'Finley Edwards', 'colin.collins@example.net', NULL, '822939718', '(0803) 4523812', '5 Yvette Overpass\nNew Danielle\nPE25 1AA', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Nam.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(39, 1, 'vendor', 'Ian Reynolds', 'sarah52@example.com', NULL, '138640471', '+44(0)5379 756992', '63 Bailey Pass\nShawtown\nPR8 9LB', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Ut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(40, 1, 'vendor', 'Mason Young', 'kjackson@example.com', NULL, '217235220', '+44(0)043513373', '156 Muhammad Estate\nSouth Katie\nOX3 7PJ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quod.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(41, 1, 'customer', 'Maisie Walker', 'millie.cox@example.org', NULL, '171027601', '+44(0)003267459', 'Flat 29d\nDavis Fort\nMatthewsville\nEH26 0LE', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Est.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(42, 1, 'customer', 'Natasha Walker', 'mandy23@example.com', NULL, '621135942', '(0589) 7081827', '9 Stephen Squares\nCollinstown\nBT35 7PB', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Sit.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(43, 1, 'vendor', 'Quentin Williams', 'lloyd.melissa@example.net', NULL, '636161327', '(0877) 1725673', '2 Hill Vista\nNew Josephview\nPE27 5PP', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Sunt.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(44, 1, 'customer', 'Caroline Morgan', 'james.robertson@example.com', NULL, '959948384', '+44(0)1615 91139', '993 Liam Keys\nWoodmouth\nHD9 4DH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Ab.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(45, 1, 'vendor', 'Archie Morgan', 'christian13@example.net', NULL, '472674821', '(0090) 6555273', '8 Edwards Ferry\nLake Joshuaburgh\nTA4 2EY', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(46, 1, 'customer', 'Colin Clarke', 'rob41@example.com', NULL, '211688870', '(00465) 738861', 'Studio 62\nJoseph Road\nRoxannestad\nRH20 2LH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quo.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(47, 1, 'customer', 'Peter White', 'simpson.reece@example.com', NULL, '499919612', '00906 062906', 'Studio 81e\nNick Estates\nMatthewschester\nTR10 8QN', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Est.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(48, 1, 'vendor', 'Leanne Richards', 'beth81@example.org', NULL, '479370361', '(0296) 9402969', '36 Grant Estate\nPort Edward\nRH20 2LH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(49, 1, 'customer', 'Adrian Miller', 'abbie.patel@example.com', NULL, '766185565', '+44(0)2261 348633', '98 Phillips Loop\nNorth Greg\nPO35 5XS', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-03-09 10:01:40', '2022-03-09 10:01:40'),
(50, 1, 'vendor', 'Bruce Morgan', 'holmes.amelia@example.net', NULL, '346741033', '08213 279583', '1 Sabrina Hill\nEast Zachside\nCH63 4JT', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Aut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(51, 1, 'vendor', 'Jeremy Mason', 'stacey.smith@example.org', NULL, '128540733', '(02207) 45369', '11 Rebecca Villages\nOwenchester\nGU1 2PB', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Quia.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(52, 1, 'vendor', 'Keeley Russell', 'kevin.ellis@example.org', NULL, '942989809', '(0614) 9585852', 'Studio 95\nBrown Shores\nLake Summertown\nOL12 7TX', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quia.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(53, 1, 'vendor', 'Isaac Wilson', 'reid.hannah@example.org', NULL, '426083050', '00622 10956', 'Flat 30d\nWatson Mountains\nShawchester\nRM12 5EJ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Quia.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(54, 1, 'vendor', 'Zach Clark', 'keith.shaw@example.net', NULL, '638842243', '0301468274', 'Flat 92h\nKhan Station\nWatsonhaven\nCB2 8HH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(55, 1, 'customer', 'Lily Simpson', 'pauline.lewis@example.com', NULL, '419574879', '0453 7819580', 'Studio 59e\nEllis Locks\nDavischester\nIP22 1JW', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(56, 1, 'customer', 'Emily Thompson', 'matthew41@example.org', NULL, '639341125', '+44(0)9834 50024', '2 Elizabeth Branch\nEast Isabellahaven\nWF1 5HR', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quis.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(57, 1, 'vendor', 'Jack Cooper', 'alan.rogers@example.net', NULL, '706269772', '+44(0)8407 68809', '146 Callum Underpass\nJamesmouth\nS72 7HG', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Ad.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(58, 1, 'vendor', 'Joshua Smith', 'rwilliams@example.com', NULL, '435543509', '0313328813', 'Flat 16\nGraham Canyon\nOscarview\nCA6 5YS', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(59, 1, 'vendor', 'Ruth Carter', 'lee.ben@example.com', NULL, '505973834', '09985 33376', '868 Wendy Orchard\nWest Joseph\nSE1P 5NT', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quo.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(60, 1, 'vendor', 'Zach Young', 'sebastian53@example.org', NULL, '108437887', '+44(0)9276 88577', 'Flat 82h\nDominic Drive\nKevinshire\nCO12 3SQ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'A.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(61, 1, 'customer', 'Stefan Harrison', 'rowena.bell@example.net', NULL, '384205354', '05529481912', '31 Ellis Camp\nLisaside\nST3 5SH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Non.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(62, 1, 'vendor', 'Alexandra Griffiths', 'price.leanne@example.org', NULL, '254541309', '02617963590', 'Flat 11\nWard Plain\nNew Jamie\nG69 7EA', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quae.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(63, 1, 'customer', 'Carmen Richardson', 'nikki.lloyd@example.net', NULL, '252388406', '0857854039', '2 Shaw Unions\nWest Anthony\nME6 5PD', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(64, 1, 'customer', 'Jordan Hall', 'stephen40@example.net', NULL, '3696186', '+44(0)9492 467897', '3 Cooper Flat\nTaylortown\nHA3 7SF', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Odio.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(65, 1, 'vendor', 'Mark Moore', 'butler.gary@example.com', NULL, '288993346', '0220336271', '98 Saunders Road\nLake Wendyside\nSK14 1SB', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Enim.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(66, 1, 'vendor', 'Amelia Thomas', 'wilson.maisie@example.com', NULL, '68589855', '0640 9912944', '7 Elliot Branch\nHallberg\nNR34 9ET', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quia.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(67, 1, 'customer', 'Charlie Clark', 'uwalker@example.net', NULL, '587855591', '0478351701', '364 Jamie Vista\nSouth Heatherstad\nYO32 9SX', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Cum.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(68, 1, 'customer', 'Ava Ward', 'stefan.kennedy@example.com', NULL, '134280588', '+44(0)4153 684850', '3 Allen Place\nLake Quentinberg\nNN5 7AR', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Eum.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(69, 1, 'vendor', 'Peter Morgan', 'harrison.jonathan@example.org', NULL, '417156225', '+44(0)980299415', '197 Luke Trace\nLake Mason\nCB2 3EN', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Quia.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(70, 1, 'customer', 'Kyle Knight', 'ben14@example.net', NULL, '910539332', '0979 5833165', '50 Benjamin Track\nCarriefurt\nLL21 0RG', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'In.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(71, 1, 'vendor', 'Archie Martin', 'collins.paula@example.net', NULL, '169988410', '02429 74084', 'Studio 83o\nSummer Greens\nEast Fred\nBT5 5ED', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Sint.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(72, 1, 'vendor', 'Karen Hall', 'tanya74@example.net', NULL, '10406462', '03526 820124', '904 Cook Drives\nClarkshire\nPO4 8NU', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Sed.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(73, 1, 'customer', 'Carlie Bell', 'murray.cameron@example.net', NULL, '431944958', '0994443004', '15 Matthew Plains\nNew Thomas\nPL15 8US', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(74, 1, 'customer', 'Emma Green', 'charlie57@example.com', NULL, '399836770', '01188 196651', 'Studio 07k\nReid Rue\nWoodport\nKY10 3RL', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Aut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(75, 1, 'vendor', 'Samuel Reid', 'anderson.amelia@example.net', NULL, '816496923', '08720760793', '3 James Crest\nSiennaside\nRG40 4RX', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Ut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(76, 1, 'vendor', 'Julie Lee', 'williams.eleanor@example.com', NULL, '343976371', '0004 8152872', '62 Phillips Island\nLake Craig\nWR5 1DG', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Quo.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(77, 1, 'customer', 'Eden Wilkinson', 'qrichardson@example.com', NULL, '676760642', '09883 25528', '861 Wilson Court\nLake Dave\nLE17 5PD', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Iste.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(78, 1, 'customer', 'Patrick Martin', 'brichardson@example.org', NULL, '699003880', '(0100) 379 8090', 'Flat 52\nKnight Cliffs\nNew Teaganville\nDH3 2NB', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Quia.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(79, 1, 'vendor', 'Adrian Russell', 'murray.caitlin@example.net', NULL, '849541588', '00340 978512', 'Flat 61\nJodie Grove\nEast Summerberg\nWV99 1RG', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Sunt.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(80, 1, 'customer', 'Pauline Williams', 'powell.lisa@example.net', NULL, '699667390', '01646 89350', 'Studio 79y\nDuncan Union\nMarshallbury\nLE17 5PD', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Modi.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(81, 1, 'customer', 'Philip Mitchell', 'white.vanessa@example.org', NULL, '952536408', '02261 70477', '571 Matthews Junction\nSouth Benjaminport\nDL15 8GH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Quo.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(82, 1, 'vendor', 'Keith Rose', 'griffiths.oscar@example.com', NULL, '100680516', '09097 52811', 'Flat 28i\nWatson Lakes\nLeemouth\nW8 7EY', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(83, 1, 'vendor', 'Harley Price', 'ujones@example.net', NULL, '49564329', '(06007) 005645', 'Studio 94\nHughes Hill\nPowellshire\nSN2 7TE', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Nam.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(84, 1, 'customer', 'Daniel Powell', 'knight.kimberly@example.org', NULL, '184789439', '(05652) 73565', '205 Nick Turnpike\nHughesfurt\nBT66 7RR', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Ipsa.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(85, 1, 'customer', 'Chris Robinson', 'richardson.shannon@example.net', NULL, '493326237', '+44(0)8113082824', '116 Jim Expressway\nNew Adelemouth\nCO5 9BJ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(86, 1, 'customer', 'Logan King', 'edavies@example.org', NULL, '421467275', '+44(0)5220962061', '856 Williams Viaduct\nAbigailburgh\nYO32 9SX', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Hic.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(87, 1, 'customer', 'Wayne Green', 'marshall.hannah@example.org', NULL, '242203721', '0798 2822562', 'Flat 91\nEllis Pines\nDominicview\nNR34 9ET', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Quod.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(88, 1, 'customer', 'Sonia Cooper', 'stephen28@example.com', NULL, '728989391', '08529 519222', '850 Lee Keys\nEast Tobyfurt\nGU10 4HE', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Sit.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(89, 1, 'vendor', 'Alan Hall', 'npalmer@example.net', NULL, '791717330', '0540 956 5594', 'Studio 71v\nPhoebe Shoals\nPort Elsie\nOX4 1GF', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Aut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(90, 1, 'vendor', 'Ella Watson', 'charles03@example.org', NULL, '52609824', '(0503) 0626164', '75 Knight Mills\nLake Adrianshire\nHU8 8SH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Enim.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(91, 1, 'vendor', 'Dennis Kelly', 'xmurphy@example.org', NULL, '992449534', '(09763) 65866', '243 Cox Crescent\nNew Ruth\nCO9 3JZ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Hic.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(92, 1, 'customer', 'Isaac White', 'steve.russell@example.net', NULL, '803409870', '(07934) 081312', '3 Cook Way\nPort Lindaport\nWR2 4RX', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(93, 1, 'vendor', 'Teagan Ross', 'mwalsh@example.com', NULL, '426310284', '+44(0)5906468766', 'Studio 42\nWilkinson Greens\nMorrischester\nB26 3SX', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Non.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(94, 1, 'customer', 'Anna Smith', 'candice.shaw@example.com', NULL, '979125895', '(0589) 2083495', '544 Martin Courts\nLeeside\nBS5 8PJ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Iste.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-03-09 10:10:01', '2022-03-09 10:10:01'),
(95, 1, 'customer', 'Jim Shaw', 'morgan.ruby@example.net', NULL, '421980539', '0304828550', '2 Clarke Heights\nNew Mohammed\nLL12 9NR', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Non.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(96, 1, 'vendor', 'Aiden Carter', 'dylan32@example.com', NULL, '340222067', '(01845) 459193', '884 Theresa Run\nJacksonborough\nST10 4JQ', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Qui.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(97, 1, 'vendor', 'Melissa Smith', 'graham84@example.com', NULL, '885127611', '02149100755', 'Studio 20\nCharles Rapid\nStewartshire\nCM3 3AE', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Id.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(98, 1, 'vendor', 'Tiffany Hunt', 'summer90@example.org', NULL, '147724922', '(05479) 159694', '140 Logan Brook\nReynoldsborough\nCB2 8HH', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Vel.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(99, 1, 'customer', 'Fiona Taylor', 'richardson.rebecca@example.com', NULL, '26513005', '01029 511807', '18 Louis Dam\nBakerburgh\nS35 4FX', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 0, 'Et.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(100, 1, 'customer', 'Kyle Gray', 'samuel54@example.com', NULL, '389883868', '+44(0)3924420829', '473 Amelia Summit\nBrownstad\nNE20 0RB', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Aut.', 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(101, 1, 'customer', 'Ava Ward', NULL, NULL, '134280588', '+44(0)4153 684850', '3 Allen Place\nLake Quentinberg\nNN5 7AR', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Eum.', 'core::factory', NULL, '2022-03-10 12:15:30', '2022-03-10 12:15:30', NULL),
(102, 1, 'vendor', 'Jamalia Farmer', 'dixa@mailinator.com', NULL, '237', '+1 (165) 805-1927', 'Est ullam architect', 'Voluptatem Consequu', '47217', 'Impedit voluptate a', 'AO', 'https://www.tarurevanurim.us', 'USD', 1, 'Ut illum sed conseq', 'core::ui', 1, '2022-03-19 05:23:50', '2022-03-19 05:23:50', NULL),
(103, 1, 'vendor', 'Adrian Russell', NULL, NULL, '849541588', '00340 978512', 'Flat 61\nJodie Grove\nEast Summerberg\nWV99 1RG', NULL, NULL, NULL, NULL, 'https://akaunting.com', 'USD', 1, 'Sunt.', 'core::factory', NULL, '2022-07-03 12:05:58', '2022-07-03 12:05:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_currencies`
--

CREATE TABLE `p9k_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `rate` double(15,8) NOT NULL,
  `precision` varchar(191) DEFAULT NULL,
  `symbol` varchar(191) DEFAULT NULL,
  `symbol_first` int(11) NOT NULL DEFAULT 1,
  `decimal_mark` varchar(191) DEFAULT NULL,
  `thousands_separator` varchar(191) DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_currencies`
--

INSERT INTO `p9k_currencies` (`id`, `company_id`, `name`, `code`, `rate`, `precision`, `symbol`, `symbol_first`, `decimal_mark`, `thousands_separator`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'US Dollar', 'USD', 1.00000000, '2', '$', 1, '.', ',', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(2, 1, 'Euro', 'EUR', 1.25000000, '2', '€', 1, ',', '.', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(3, 1, 'British Pound', 'GBP', 1.60000000, '2', '£', 1, '.', ',', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(4, 1, 'Turkish Lira', 'TRY', 0.80000000, '2', '₺', 1, ',', '.', 1, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_dashboards`
--

CREATE TABLE `p9k_dashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_dashboards`
--

INSERT INTO `p9k_dashboards` (`id`, `company_id`, `name`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dashboard', 1, 'core::seed', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_documents`
--

CREATE TABLE `p9k_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `document_number` varchar(191) NOT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `issued_at` datetime NOT NULL,
  `due_at` datetime NOT NULL,
  `amount` double(15,4) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `currency_rate` double(15,8) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(191) NOT NULL,
  `contact_email` varchar(191) DEFAULT NULL,
  `contact_tax_number` varchar(191) DEFAULT NULL,
  `contact_phone` varchar(191) DEFAULT NULL,
  `contact_address` text DEFAULT NULL,
  `contact_city` varchar(191) DEFAULT NULL,
  `contact_zip_code` varchar(191) DEFAULT NULL,
  `contact_state` varchar(191) DEFAULT NULL,
  `contact_country` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_documents`
--

INSERT INTO `p9k_documents` (`id`, `company_id`, `type`, `document_number`, `order_number`, `status`, `issued_at`, `due_at`, `amount`, `currency_code`, `currency_rate`, `category_id`, `contact_id`, `contact_name`, `contact_email`, `contact_tax_number`, `contact_phone`, `contact_address`, `contact_city`, `contact_zip_code`, `contact_state`, `contact_country`, `notes`, `footer`, `parent_id`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'bill', 'BILL-74155', NULL, 'received', '2022-08-19 09:45:35', '2023-02-04 09:45:35', 547.2100, 'USD', 1.00000000, 4, 60, 'Zach Young', 'sebastian53@example.org', '108437887', '+44(0)9276 88577', 'Flat 82h\nDominic Drive\nKevinshire\nCO12 3SQ', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(2, 1, 'bill', 'BILL-71191', NULL, 'partial', '2022-02-25 22:52:57', '2022-12-23 22:52:57', 333.8000, 'USD', 1.00000000, 80, 57, 'Jack Cooper', 'alan.rogers@example.net', '706269772', '+44(0)8407 68809', '146 Callum Underpass\nJamesmouth\nS72 7HG', NULL, NULL, NULL, NULL, 'Vel.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(3, 1, 'bill', 'BILL-29032', NULL, 'received', '2022-05-02 02:08:56', '2023-12-31 02:08:56', 902.1300, 'USD', 1.00000000, 49, 90, 'Ella Watson', 'charles03@example.org', '52609824', '(0503) 0626164', '75 Knight Mills\nLake Adrianshire\nHU8 8SH', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(4, 1, 'bill', 'BILL-97974', NULL, 'paid', '2022-08-28 05:18:22', '2022-12-05 05:18:22', 449.6100, 'USD', 1.00000000, 76, 8, 'Lewis Mitchell', 'will.wood@example.org', '247971991', '0286241590', '921 Simpson Avenue\nPort Darren\nAL3 8RN', NULL, NULL, NULL, NULL, 'Hic.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(5, 1, 'bill', 'BILL-60755', NULL, 'paid', '2022-07-15 21:32:01', '2024-03-01 21:32:01', 363.8400, 'USD', 1.00000000, 36, 76, 'Julie Lee', 'williams.eleanor@example.com', '343976371', '0004 8152872', '62 Phillips Island\nLake Craig\nWR5 1DG', NULL, NULL, NULL, NULL, 'Ea.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(6, 1, 'bill', 'BILL-23907', NULL, 'partial', '2022-08-28 02:41:26', '2023-01-18 02:41:26', 70.8900, 'USD', 1.00000000, 76, 53, 'Isaac Wilson', 'reid.hannah@example.org', '426083050', '00622 10956', 'Flat 30d\nWatson Mountains\nShawchester\nRM12 5EJ', NULL, NULL, NULL, NULL, 'Ea.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(7, 1, 'bill', 'BILL-46402', NULL, 'received', '2022-08-15 08:54:50', '2024-07-17 08:54:50', 556.2400, 'USD', 1.00000000, 16, 72, 'Karen Hall', 'tanya74@example.net', '10406462', '03526 820124', '904 Cook Drives\nClarkshire\nPO4 8NU', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(8, 1, 'bill', 'BILL-4084', NULL, 'draft', '2022-05-04 05:12:58', '2023-03-29 05:12:58', 690.5600, 'USD', 1.00000000, 36, 39, 'Ian Reynolds', 'sarah52@example.com', '138640471', '+44(0)5379 756992', '63 Bailey Pass\nShawtown\nPR8 9LB', NULL, NULL, NULL, NULL, 'Quo.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(9, 1, 'bill', 'BILL-74746', NULL, 'paid', '2022-03-21 19:03:36', '2023-03-19 19:03:36', 196.9200, 'USD', 1.00000000, 95, 98, 'Tiffany Hunt', 'summer90@example.org', '147724922', '(05479) 159694', '140 Logan Brook\nReynoldsborough\nCB2 8HH', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(10, 1, 'bill', 'BILL-72528', NULL, 'received', '2022-07-01 16:33:08', '2024-06-17 16:33:08', 942.1300, 'USD', 1.00000000, 4, 76, 'Julie Lee', 'williams.eleanor@example.com', '343976371', '0004 8152872', '62 Phillips Island\nLake Craig\nWR5 1DG', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(11, 1, 'bill', 'BILL-13174', NULL, 'draft', '2022-11-10 22:33:45', '2024-06-29 22:33:45', 416.2400, 'USD', 1.00000000, 76, 50, 'Bruce Morgan', 'holmes.amelia@example.net', '346741033', '08213 279583', '1 Sabrina Hill\nEast Zachside\nCH63 4JT', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(12, 1, 'bill', 'BILL-84202', NULL, 'received', '2022-12-20 03:22:53', '2024-11-06 03:22:53', 1077.8000, 'USD', 1.00000000, 49, 72, 'Karen Hall', 'tanya74@example.net', '10406462', '03526 820124', '904 Cook Drives\nClarkshire\nPO4 8NU', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(13, 1, 'bill', 'BILL-49661', NULL, 'paid', '2022-08-21 15:14:47', '2022-11-03 15:14:47', 178.7700, 'USD', 1.00000000, 8, 45, 'Archie Morgan', 'christian13@example.net', '472674821', '(0090) 6555273', '8 Edwards Ferry\nLake Joshuaburgh\nTA4 2EY', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(14, 1, 'bill', 'BILL-58246', NULL, 'partial', '2022-07-07 20:24:25', '2023-04-17 20:24:25', 465.7200, 'USD', 1.00000000, 97, 48, 'Leanne Richards', 'beth81@example.org', '479370361', '(0296) 9402969', '36 Grant Estate\nPort Edward\nRH20 2LH', NULL, NULL, NULL, NULL, 'Nisi.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(15, 1, 'bill', 'BILL-38938', NULL, 'paid', '2022-06-19 20:51:29', '2024-07-01 20:51:29', 321.9000, 'USD', 1.00000000, 20, 48, 'Leanne Richards', 'beth81@example.org', '479370361', '(0296) 9402969', '36 Grant Estate\nPort Edward\nRH20 2LH', NULL, NULL, NULL, NULL, 'Sunt.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(16, 1, 'bill', 'BILL-32014', NULL, 'draft', '2022-03-26 01:37:01', '2024-05-03 01:37:01', 550.9700, 'USD', 1.00000000, 35, 71, 'Archie Martin', 'collins.paula@example.net', '169988410', '02429 74084', 'Studio 83o\nSummer Greens\nEast Fred\nBT5 5ED', NULL, NULL, NULL, NULL, 'Nam.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(17, 1, 'bill', 'BILL-64507', NULL, 'draft', '2022-12-15 18:44:32', '2025-05-27 18:44:32', 916.5000, 'USD', 1.00000000, 41, 14, 'Amanda Knight', 'pete39@example.net', '974119162', '(00192) 12330', '366 Karl Ways\nFionastad\nSE26 6JG', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(18, 1, 'bill', 'BILL-28658', NULL, 'draft', '2022-06-18 00:05:06', '2023-04-25 00:05:06', 496.9200, 'USD', 1.00000000, 16, 45, 'Archie Morgan', 'christian13@example.net', '472674821', '(0090) 6555273', '8 Edwards Ferry\nLake Joshuaburgh\nTA4 2EY', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(19, 1, 'bill', 'BILL-35642', NULL, 'received', '2022-12-16 01:00:44', '2024-10-13 01:00:44', 81.0400, 'USD', 1.00000000, 63, 98, 'Tiffany Hunt', 'summer90@example.org', '147724922', '(05479) 159694', '140 Logan Brook\nReynoldsborough\nCB2 8HH', NULL, NULL, NULL, NULL, 'Modi.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(20, 1, 'bill', 'BILL-71666', NULL, 'draft', '2022-05-21 12:00:58', '2023-03-25 12:00:58', 600.3000, 'USD', 1.00000000, 35, 48, 'Leanne Richards', 'beth81@example.org', '479370361', '(0296) 9402969', '36 Grant Estate\nPort Edward\nRH20 2LH', NULL, NULL, NULL, NULL, 'Eos.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:03', NULL),
(21, 1, 'bill', 'BILL-5703', NULL, 'partial', '2022-07-18 08:47:47', '2023-12-10 08:47:47', 129.0400, 'USD', 1.00000000, 63, 72, 'Karen Hall', 'tanya74@example.net', '10406462', '03526 820124', '904 Cook Drives\nClarkshire\nPO4 8NU', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(22, 1, 'bill', 'BILL-64662', NULL, 'draft', '2022-01-26 03:12:37', '2022-08-21 03:12:37', 699.3300, 'USD', 1.00000000, 17, 39, 'Ian Reynolds', 'sarah52@example.com', '138640471', '+44(0)5379 756992', '63 Bailey Pass\nShawtown\nPR8 9LB', NULL, NULL, NULL, NULL, 'Quo.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(23, 1, 'bill', 'BILL-8878', NULL, 'paid', '2022-05-16 11:00:50', '2022-09-17 11:00:50', 151.5100, 'USD', 1.00000000, 35, 48, 'Leanne Richards', 'beth81@example.org', '479370361', '(0296) 9402969', '36 Grant Estate\nPort Edward\nRH20 2LH', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(24, 1, 'bill', 'BILL-5318', NULL, 'paid', '2022-03-03 05:22:52', '2022-06-11 05:22:52', 656.2800, 'USD', 1.00000000, 35, 26, 'Vicky Baker', 'morris.elliott@example.org', '695653246', '05821 75216', '7 Smith Roads\nLake Jackfort\nPL1 4EH', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(25, 1, 'bill', 'BILL-93025', NULL, 'partial', '2022-03-01 23:10:05', '2022-11-24 23:10:05', 305.2400, 'USD', 1.00000000, 58, 8, 'Lewis Mitchell', 'will.wood@example.org', '247971991', '0286241590', '921 Simpson Avenue\nPort Darren\nAL3 8RN', NULL, NULL, NULL, NULL, 'Ea.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(26, 1, 'bill', 'BILL-62111', NULL, 'partial', '2022-06-06 00:21:43', '2022-10-08 00:21:43', 721.0100, 'USD', 1.00000000, 35, 34, 'Reece Powell', 'kelly.ian@example.com', '265731467', '07965 90536', '21 Jonathan River\nEast Joel\nHR9 9AJ', NULL, NULL, NULL, NULL, 'Nam.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(27, 1, 'bill', 'BILL-56065', NULL, 'partial', '2022-03-20 01:57:08', '2023-05-02 01:57:08', 118.7000, 'USD', 1.00000000, 49, 38, 'Finley Edwards', 'colin.collins@example.net', '822939718', '(0803) 4523812', '5 Yvette Overpass\nNew Danielle\nPE25 1AA', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(28, 1, 'bill', 'BILL-62981', NULL, 'received', '2022-05-26 19:07:57', '2023-02-06 19:07:57', 917.0100, 'USD', 1.00000000, 35, 50, 'Bruce Morgan', 'holmes.amelia@example.net', '346741033', '08213 279583', '1 Sabrina Hill\nEast Zachside\nCH63 4JT', NULL, NULL, NULL, NULL, 'Ipsa.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(29, 1, 'bill', 'BILL-26117', NULL, 'partial', '2022-07-08 03:04:11', '2022-07-21 03:04:11', 831.9700, 'USD', 1.00000000, 16, 48, 'Leanne Richards', 'beth81@example.org', '479370361', '(0296) 9402969', '36 Grant Estate\nPort Edward\nRH20 2LH', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(30, 1, 'bill', 'BILL-68154', NULL, 'paid', '2022-09-25 16:22:12', '2023-11-14 16:22:12', 315.4900, 'USD', 1.00000000, 97, 10, 'Lauren Wilkinson', 'saunders.zoe@example.net', '236115521', '06446025254', 'Studio 62k\nSebastian Junction\nNew Sabrina\nIG10 3JT', NULL, NULL, NULL, NULL, 'Cum.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(31, 1, 'bill', 'BILL-48599', NULL, 'paid', '2022-05-31 21:28:52', '2025-01-15 21:28:52', 432.5200, 'USD', 1.00000000, 4, 71, 'Archie Martin', 'collins.paula@example.net', '169988410', '02429 74084', 'Studio 83o\nSummer Greens\nEast Fred\nBT5 5ED', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(32, 1, 'bill', 'BILL-7191', NULL, 'draft', '2022-05-10 21:00:46', '2022-05-31 21:00:46', 453.2900, 'USD', 1.00000000, 35, 48, 'Leanne Richards', 'beth81@example.org', '479370361', '(0296) 9402969', '36 Grant Estate\nPort Edward\nRH20 2LH', NULL, NULL, NULL, NULL, 'Quis.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(33, 1, 'bill', 'BILL-13880', NULL, 'draft', '2022-10-01 13:33:24', '2023-12-05 13:33:24', 196.2900, 'USD', 1.00000000, 63, 98, 'Tiffany Hunt', 'summer90@example.org', '147724922', '(05479) 159694', '140 Logan Brook\nReynoldsborough\nCB2 8HH', NULL, NULL, NULL, NULL, 'Quo.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(34, 1, 'bill', 'BILL-14288', NULL, 'draft', '2022-05-24 05:18:19', '2022-06-18 05:18:19', 814.3600, 'USD', 1.00000000, 35, 57, 'Jack Cooper', 'alan.rogers@example.net', '706269772', '+44(0)8407 68809', '146 Callum Underpass\nJamesmouth\nS72 7HG', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(35, 1, 'bill', 'BILL-71564', NULL, 'cancelled', '2022-11-13 03:35:16', '2025-04-30 03:35:16', 553.9900, 'USD', 1.00000000, 80, 14, 'Amanda Knight', 'pete39@example.net', '974119162', '(00192) 12330', '366 Karl Ways\nFionastad\nSE26 6JG', NULL, NULL, NULL, NULL, 'Enim.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(36, 1, 'bill', 'BILL-60579', NULL, 'partial', '2022-12-27 10:41:21', '2025-06-14 10:41:21', 139.8500, 'USD', 1.00000000, 58, 45, 'Archie Morgan', 'christian13@example.net', '472674821', '(0090) 6555273', '8 Edwards Ferry\nLake Joshuaburgh\nTA4 2EY', NULL, NULL, NULL, NULL, 'Vel.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(37, 1, 'bill', 'BILL-31475', NULL, 'partial', '2022-08-12 14:08:10', '2023-02-26 14:08:10', 586.6200, 'USD', 1.00000000, 41, 60, 'Zach Young', 'sebastian53@example.org', '108437887', '+44(0)9276 88577', 'Flat 82h\nDominic Drive\nKevinshire\nCO12 3SQ', NULL, NULL, NULL, NULL, 'Ea.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(38, 1, 'bill', 'BILL-52465', NULL, 'partial', '2022-12-23 19:42:18', '2023-12-22 19:42:18', 654.9100, 'USD', 1.00000000, 76, 69, 'Peter Morgan', 'harrison.jonathan@example.org', '417156225', '+44(0)980299415', '197 Luke Trace\nLake Mason\nCB2 3EN', NULL, NULL, NULL, NULL, 'Sit.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(39, 1, 'bill', 'BILL-6368', NULL, 'cancelled', '2022-04-06 08:01:25', '2022-10-21 08:01:25', 558.0300, 'USD', 1.00000000, 20, 79, 'Adrian Russell', 'murray.caitlin@example.net', '849541588', '00340 978512', 'Flat 61\nJodie Grove\nEast Summerberg\nWV99 1RG', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(40, 1, 'bill', 'BILL-14357', NULL, 'draft', '2022-11-10 22:10:38', '2025-01-27 22:10:38', 252.5100, 'USD', 1.00000000, 49, 54, 'Zach Clark', 'keith.shaw@example.net', '638842243', '0301468274', 'Flat 92h\nKhan Station\nWatsonhaven\nCB2 8HH', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(41, 1, 'bill', 'BILL-68553', NULL, 'partial', '2022-11-25 16:06:32', '2024-07-19 16:06:32', 899.6500, 'USD', 1.00000000, 17, 34, 'Reece Powell', 'kelly.ian@example.com', '265731467', '07965 90536', '21 Jonathan River\nEast Joel\nHR9 9AJ', NULL, NULL, NULL, NULL, 'Odit.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(42, 1, 'bill', 'BILL-88437', NULL, 'paid', '2022-02-26 20:47:04', '2022-10-04 20:47:04', 426.0000, 'USD', 1.00000000, 80, 34, 'Reece Powell', 'kelly.ian@example.com', '265731467', '07965 90536', '21 Jonathan River\nEast Joel\nHR9 9AJ', NULL, NULL, NULL, NULL, 'Eos.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:04', NULL),
(43, 1, 'bill', 'BILL-45914', NULL, 'cancelled', '2022-06-20 05:13:02', '2023-04-16 05:13:02', 34.7800, 'USD', 1.00000000, 36, 79, 'Adrian Russell', 'murray.caitlin@example.net', '849541588', '00340 978512', 'Flat 61\nJodie Grove\nEast Summerberg\nWV99 1RG', NULL, NULL, NULL, NULL, 'Quos.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(44, 1, 'bill', 'BILL-43917', NULL, 'draft', '2022-03-27 18:52:37', '2022-09-17 18:52:37', 912.6800, 'USD', 1.00000000, 41, 34, 'Reece Powell', 'kelly.ian@example.com', '265731467', '07965 90536', '21 Jonathan River\nEast Joel\nHR9 9AJ', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(45, 1, 'bill', 'BILL-92671', NULL, 'cancelled', '2022-12-29 11:14:19', '2024-02-13 11:14:19', 330.2700, 'USD', 1.00000000, 76, 53, 'Isaac Wilson', 'reid.hannah@example.org', '426083050', '00622 10956', 'Flat 30d\nWatson Mountains\nShawchester\nRM12 5EJ', NULL, NULL, NULL, NULL, 'Sint.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(46, 1, 'bill', 'BILL-44886', NULL, 'partial', '2022-08-10 22:42:40', '2022-10-25 22:42:40', 667.5300, 'USD', 1.00000000, 16, 71, 'Archie Martin', 'collins.paula@example.net', '169988410', '02429 74084', 'Studio 83o\nSummer Greens\nEast Fred\nBT5 5ED', NULL, NULL, NULL, NULL, 'Amet.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(47, 1, 'bill', 'BILL-57282', NULL, 'cancelled', '2022-12-02 19:56:25', '2024-10-21 19:56:25', 210.1500, 'USD', 1.00000000, 25, 72, 'Karen Hall', 'tanya74@example.net', '10406462', '03526 820124', '904 Cook Drives\nClarkshire\nPO4 8NU', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(48, 1, 'bill', 'BILL-28671', NULL, 'paid', '2022-02-09 16:57:30', '2022-03-27 16:57:30', 818.2100, 'USD', 1.00000000, 20, 72, 'Karen Hall', 'tanya74@example.net', '10406462', '03526 820124', '904 Cook Drives\nClarkshire\nPO4 8NU', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(49, 1, 'bill', 'BILL-41625', NULL, 'draft', '2022-12-12 15:20:05', '2023-11-30 15:20:05', 585.6600, 'USD', 1.00000000, 4, 54, 'Zach Clark', 'keith.shaw@example.net', '638842243', '0301468274', 'Flat 92h\nKhan Station\nWatsonhaven\nCB2 8HH', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(50, 1, 'bill', 'BILL-93983', NULL, 'cancelled', '2022-01-31 05:55:14', '2022-07-28 05:55:14', 721.1200, 'USD', 1.00000000, 80, 57, 'Jack Cooper', 'alan.rogers@example.net', '706269772', '+44(0)8407 68809', '146 Callum Underpass\nJamesmouth\nS72 7HG', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(51, 1, 'bill', 'BILL-89175', NULL, 'paid', '2022-05-25 21:27:25', '2024-04-06 21:27:25', 98.9900, 'USD', 1.00000000, 76, 45, 'Archie Morgan', 'christian13@example.net', '472674821', '(0090) 6555273', '8 Edwards Ferry\nLake Joshuaburgh\nTA4 2EY', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(52, 1, 'bill', 'BILL-43978', NULL, 'paid', '2022-02-05 19:11:59', '2024-03-07 19:11:59', 434.1500, 'USD', 1.00000000, 49, 34, 'Reece Powell', 'kelly.ian@example.com', '265731467', '07965 90536', '21 Jonathan River\nEast Joel\nHR9 9AJ', NULL, NULL, NULL, NULL, 'Eos.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(53, 1, 'bill', 'BILL-68840', NULL, 'paid', '2022-03-25 03:11:48', '2022-04-27 03:11:48', 684.4000, 'USD', 1.00000000, 17, 10, 'Lauren Wilkinson', 'saunders.zoe@example.net', '236115521', '06446025254', 'Studio 62k\nSebastian Junction\nNew Sabrina\nIG10 3JT', NULL, NULL, NULL, NULL, 'Ad.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(54, 1, 'bill', 'BILL-47342', NULL, 'received', '2022-11-27 02:02:07', '2025-05-31 02:02:07', 712.9000, 'USD', 1.00000000, 97, 38, 'Finley Edwards', 'colin.collins@example.net', '822939718', '(0803) 4523812', '5 Yvette Overpass\nNew Danielle\nPE25 1AA', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(55, 1, 'bill', 'BILL-58208', NULL, 'cancelled', '2022-12-04 02:20:50', '2023-07-09 02:20:50', 720.4400, 'USD', 1.00000000, 58, 54, 'Zach Clark', 'keith.shaw@example.net', '638842243', '0301468274', 'Flat 92h\nKhan Station\nWatsonhaven\nCB2 8HH', NULL, NULL, NULL, NULL, 'Eum.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(56, 1, 'bill', 'BILL-40702', NULL, 'partial', '2022-05-11 11:56:53', '2022-06-04 11:56:53', 1036.8400, 'USD', 1.00000000, 80, 45, 'Archie Morgan', 'christian13@example.net', '472674821', '(0090) 6555273', '8 Edwards Ferry\nLake Joshuaburgh\nTA4 2EY', NULL, NULL, NULL, NULL, 'Quam.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(57, 1, 'bill', 'BILL-87069', NULL, 'paid', '2022-03-02 15:42:37', '2023-04-26 15:42:37', 639.3100, 'USD', 1.00000000, 41, 26, 'Vicky Baker', 'morris.elliott@example.org', '695653246', '05821 75216', '7 Smith Roads\nLake Jackfort\nPL1 4EH', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(58, 1, 'bill', 'BILL-83102', NULL, 'draft', '2022-04-09 15:13:14', '2023-03-02 15:13:14', 961.5900, 'USD', 1.00000000, 16, 90, 'Ella Watson', 'charles03@example.org', '52609824', '(0503) 0626164', '75 Knight Mills\nLake Adrianshire\nHU8 8SH', NULL, NULL, NULL, NULL, 'Sit.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(59, 1, 'bill', 'BILL-21006', NULL, 'draft', '2022-06-25 18:02:54', '2024-11-30 18:02:54', 611.4800, 'USD', 1.00000000, 4, 45, 'Archie Morgan', 'christian13@example.net', '472674821', '(0090) 6555273', '8 Edwards Ferry\nLake Joshuaburgh\nTA4 2EY', NULL, NULL, NULL, NULL, 'Iure.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(60, 1, 'bill', 'BILL-28152', NULL, 'draft', '2022-12-31 01:16:13', '2024-10-08 01:16:13', 814.5800, 'USD', 1.00000000, 16, 51, 'Jeremy Mason', 'stacey.smith@example.org', '128540733', '(02207) 45369', '11 Rebecca Villages\nOwenchester\nGU1 2PB', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(61, 1, 'bill', 'BILL-52398', NULL, 'received', '2022-03-06 23:22:01', '2024-01-10 23:22:01', 835.6800, 'USD', 1.00000000, 8, 26, 'Vicky Baker', 'morris.elliott@example.org', '695653246', '05821 75216', '7 Smith Roads\nLake Jackfort\nPL1 4EH', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(62, 1, 'bill', 'BILL-93823', NULL, 'draft', '2022-02-16 03:11:46', '2022-10-11 03:11:46', 575.5300, 'USD', 1.00000000, 80, 57, 'Jack Cooper', 'alan.rogers@example.net', '706269772', '+44(0)8407 68809', '146 Callum Underpass\nJamesmouth\nS72 7HG', NULL, NULL, NULL, NULL, 'Hic.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(63, 1, 'bill', 'BILL-33709', NULL, 'paid', '2022-01-07 22:29:07', '2023-08-10 22:29:07', 381.6100, 'USD', 1.00000000, 63, 98, 'Tiffany Hunt', 'summer90@example.org', '147724922', '(05479) 159694', '140 Logan Brook\nReynoldsborough\nCB2 8HH', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(64, 1, 'bill', 'BILL-54559', NULL, 'cancelled', '2022-01-04 06:29:17', '2022-01-28 06:29:17', 588.5400, 'USD', 1.00000000, 35, 69, 'Peter Morgan', 'harrison.jonathan@example.org', '417156225', '+44(0)980299415', '197 Luke Trace\nLake Mason\nCB2 3EN', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(65, 1, 'bill', 'BILL-65817', NULL, 'paid', '2022-07-10 21:35:15', '2025-02-24 21:35:15', 464.6000, 'USD', 1.00000000, 58, 39, 'Ian Reynolds', 'sarah52@example.com', '138640471', '+44(0)5379 756992', '63 Bailey Pass\nShawtown\nPR8 9LB', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:05', NULL),
(66, 1, 'bill', 'BILL-45495', NULL, 'partial', '2022-05-25 22:59:03', '2024-09-03 22:59:03', 96.0100, 'USD', 1.00000000, 8, 38, 'Finley Edwards', 'colin.collins@example.net', '822939718', '(0803) 4523812', '5 Yvette Overpass\nNew Danielle\nPE25 1AA', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(67, 1, 'bill', 'BILL-32721', NULL, 'paid', '2022-03-06 22:17:03', '2023-08-07 22:17:03', 698.6000, 'USD', 1.00000000, 16, 51, 'Jeremy Mason', 'stacey.smith@example.org', '128540733', '(02207) 45369', '11 Rebecca Villages\nOwenchester\nGU1 2PB', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(68, 1, 'bill', 'BILL-88619', NULL, 'paid', '2022-04-15 07:19:09', '2023-11-04 07:19:09', 75.1100, 'USD', 1.00000000, 63, 79, 'Adrian Russell', 'murray.caitlin@example.net', '849541588', '00340 978512', 'Flat 61\nJodie Grove\nEast Summerberg\nWV99 1RG', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(69, 1, 'bill', 'BILL-54174', NULL, 'partial', '2022-02-22 16:48:15', '2022-03-18 16:48:15', 318.9300, 'USD', 1.00000000, 97, 71, 'Archie Martin', 'collins.paula@example.net', '169988410', '02429 74084', 'Studio 83o\nSummer Greens\nEast Fred\nBT5 5ED', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(70, 1, 'bill', 'BILL-21123', NULL, 'paid', '2022-09-04 10:43:04', '2023-03-07 10:43:04', 827.2600, 'USD', 1.00000000, 17, 14, 'Amanda Knight', 'pete39@example.net', '974119162', '(00192) 12330', '366 Karl Ways\nFionastad\nSE26 6JG', NULL, NULL, NULL, NULL, 'Non.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(71, 1, 'bill', 'BILL-23253', NULL, 'draft', '2022-02-27 00:05:15', '2024-06-08 00:05:15', 214.4200, 'USD', 1.00000000, 97, 10, 'Lauren Wilkinson', 'saunders.zoe@example.net', '236115521', '06446025254', 'Studio 62k\nSebastian Junction\nNew Sabrina\nIG10 3JT', NULL, NULL, NULL, NULL, 'Sunt.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(72, 1, 'bill', 'BILL-76635', NULL, 'partial', '2022-03-01 03:33:15', '2024-04-15 03:33:15', 612.1400, 'USD', 1.00000000, 35, 14, 'Amanda Knight', 'pete39@example.net', '974119162', '(00192) 12330', '366 Karl Ways\nFionastad\nSE26 6JG', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(73, 1, 'bill', 'BILL-87142', NULL, 'partial', '2022-10-17 19:09:19', '2024-12-14 19:09:19', 523.9000, 'USD', 1.00000000, 56, 34, 'Reece Powell', 'kelly.ian@example.com', '265731467', '07965 90536', '21 Jonathan River\nEast Joel\nHR9 9AJ', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(74, 1, 'bill', 'BILL-63897', NULL, 'received', '2022-06-28 19:02:02', '2024-01-26 19:02:02', 210.6600, 'USD', 1.00000000, 25, 53, 'Isaac Wilson', 'reid.hannah@example.org', '426083050', '00622 10956', 'Flat 30d\nWatson Mountains\nShawchester\nRM12 5EJ', NULL, NULL, NULL, NULL, 'A ex.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(75, 1, 'bill', 'BILL-5297', NULL, 'paid', '2022-04-24 01:42:09', '2025-01-01 01:42:09', 175.6600, 'USD', 1.00000000, 76, 60, 'Zach Young', 'sebastian53@example.org', '108437887', '+44(0)9276 88577', 'Flat 82h\nDominic Drive\nKevinshire\nCO12 3SQ', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(76, 1, 'bill', 'BILL-80229', NULL, 'received', '2022-10-10 09:03:34', '2023-12-31 09:03:34', 608.1700, 'USD', 1.00000000, 80, 50, 'Bruce Morgan', 'holmes.amelia@example.net', '346741033', '08213 279583', '1 Sabrina Hill\nEast Zachside\nCH63 4JT', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(77, 1, 'bill', 'BILL-11785', NULL, 'received', '2022-10-06 19:13:44', '2025-02-13 19:13:44', 948.3200, 'USD', 1.00000000, 63, 14, 'Amanda Knight', 'pete39@example.net', '974119162', '(00192) 12330', '366 Karl Ways\nFionastad\nSE26 6JG', NULL, NULL, NULL, NULL, 'Vero.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(78, 1, 'bill', 'BILL-15616', NULL, 'paid', '2022-11-02 22:44:38', '2023-03-18 22:44:38', 727.1300, 'USD', 1.00000000, 97, 34, 'Reece Powell', 'kelly.ian@example.com', '265731467', '07965 90536', '21 Jonathan River\nEast Joel\nHR9 9AJ', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(79, 1, 'bill', 'BILL-87388', NULL, 'received', '2022-10-29 20:05:48', '2024-11-22 20:05:48', 1025.4900, 'USD', 1.00000000, 56, 8, 'Lewis Mitchell', 'will.wood@example.org', '247971991', '0286241590', '921 Simpson Avenue\nPort Darren\nAL3 8RN', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(80, 1, 'bill', 'BILL-75697', NULL, 'cancelled', '2022-04-11 12:20:10', '2022-10-16 12:20:10', 814.9800, 'USD', 1.00000000, 8, 76, 'Julie Lee', 'williams.eleanor@example.com', '343976371', '0004 8152872', '62 Phillips Island\nLake Craig\nWR5 1DG', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(81, 1, 'bill', 'BILL-27405', NULL, 'partial', '2022-01-07 07:19:23', '2023-03-20 07:19:23', 48.1200, 'USD', 1.00000000, 20, 8, 'Lewis Mitchell', 'will.wood@example.org', '247971991', '0286241590', '921 Simpson Avenue\nPort Darren\nAL3 8RN', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(82, 1, 'bill', 'BILL-54215', NULL, 'partial', '2022-08-14 09:22:40', '2022-11-06 09:22:40', 377.4400, 'USD', 1.00000000, 41, 69, 'Peter Morgan', 'harrison.jonathan@example.org', '417156225', '+44(0)980299415', '197 Luke Trace\nLake Mason\nCB2 3EN', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(83, 1, 'bill', 'BILL-1212', NULL, 'draft', '2022-01-25 12:52:12', '2022-11-18 12:52:12', 240.2500, 'USD', 1.00000000, 58, 38, 'Finley Edwards', 'colin.collins@example.net', '822939718', '(0803) 4523812', '5 Yvette Overpass\nNew Danielle\nPE25 1AA', NULL, NULL, NULL, NULL, 'At.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(84, 1, 'bill', 'BILL-6484', NULL, 'draft', '2022-10-29 22:40:14', '2025-06-10 22:40:14', 134.4200, 'USD', 1.00000000, 20, 57, 'Jack Cooper', 'alan.rogers@example.net', '706269772', '+44(0)8407 68809', '146 Callum Underpass\nJamesmouth\nS72 7HG', NULL, NULL, NULL, NULL, 'Nam.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(85, 1, 'bill', 'BILL-80832', NULL, 'draft', '2022-05-19 08:34:40', '2023-11-12 08:34:40', 8.3000, 'USD', 1.00000000, 97, 79, 'Adrian Russell', 'murray.caitlin@example.net', '849541588', '00340 978512', 'Flat 61\nJodie Grove\nEast Summerberg\nWV99 1RG', NULL, NULL, NULL, NULL, 'Eos.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(86, 1, 'bill', 'BILL-39669', NULL, 'partial', '2022-06-27 08:02:41', '2023-05-26 08:02:41', 829.9300, 'USD', 1.00000000, 35, 39, 'Ian Reynolds', 'sarah52@example.com', '138640471', '+44(0)5379 756992', '63 Bailey Pass\nShawtown\nPR8 9LB', NULL, NULL, NULL, NULL, 'Quo.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(87, 1, 'bill', 'BILL-85376', NULL, 'paid', '2022-12-02 00:31:46', '2024-01-05 00:31:46', 234.8800, 'USD', 1.00000000, 4, 51, 'Jeremy Mason', 'stacey.smith@example.org', '128540733', '(02207) 45369', '11 Rebecca Villages\nOwenchester\nGU1 2PB', NULL, NULL, NULL, NULL, 'Quod.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(88, 1, 'bill', 'BILL-80271', NULL, 'draft', '2022-02-08 08:38:10', '2024-09-09 08:38:10', 714.1300, 'USD', 1.00000000, 76, 71, 'Archie Martin', 'collins.paula@example.net', '169988410', '02429 74084', 'Studio 83o\nSummer Greens\nEast Fred\nBT5 5ED', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(89, 1, 'bill', 'BILL-23124', NULL, 'paid', '2022-08-15 13:52:15', '2023-12-18 13:52:15', 823.2600, 'USD', 1.00000000, 76, 57, 'Jack Cooper', 'alan.rogers@example.net', '706269772', '+44(0)8407 68809', '146 Callum Underpass\nJamesmouth\nS72 7HG', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:06', NULL),
(90, 1, 'bill', 'BILL-29352', NULL, 'partial', '2022-02-24 00:54:11', '2022-12-05 00:54:11', 1026.1400, 'USD', 1.00000000, 8, 90, 'Ella Watson', 'charles03@example.org', '52609824', '(0503) 0626164', '75 Knight Mills\nLake Adrianshire\nHU8 8SH', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(91, 1, 'bill', 'BILL-80678', NULL, 'cancelled', '2022-06-05 15:21:51', '2023-03-25 15:21:51', 577.0000, 'USD', 1.00000000, 8, 60, 'Zach Young', 'sebastian53@example.org', '108437887', '+44(0)9276 88577', 'Flat 82h\nDominic Drive\nKevinshire\nCO12 3SQ', NULL, NULL, NULL, NULL, 'In.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(92, 1, 'bill', 'BILL-18022', NULL, 'cancelled', '2022-07-16 22:47:36', '2025-01-27 22:47:36', 558.7100, 'USD', 1.00000000, 63, 60, 'Zach Young', 'sebastian53@example.org', '108437887', '+44(0)9276 88577', 'Flat 82h\nDominic Drive\nKevinshire\nCO12 3SQ', NULL, NULL, NULL, NULL, 'Fuga.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(93, 1, 'bill', 'BILL-51891', NULL, 'partial', '2022-09-23 23:15:48', '2024-01-07 23:15:48', 332.3600, 'USD', 1.00000000, 89, 54, 'Zach Clark', 'keith.shaw@example.net', '638842243', '0301468274', 'Flat 92h\nKhan Station\nWatsonhaven\nCB2 8HH', NULL, NULL, NULL, NULL, 'Odio.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(94, 1, 'bill', 'BILL-93516', NULL, 'paid', '2022-11-06 17:12:56', '2023-12-18 17:12:56', 653.5900, 'USD', 1.00000000, 58, 38, 'Finley Edwards', 'colin.collins@example.net', '822939718', '(0803) 4523812', '5 Yvette Overpass\nNew Danielle\nPE25 1AA', NULL, NULL, NULL, NULL, 'Vel.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(95, 1, 'bill', 'BILL-13201', NULL, 'partial', '2022-02-24 22:04:22', '2023-10-03 22:04:22', 163.4500, 'USD', 1.00000000, 97, 72, 'Karen Hall', 'tanya74@example.net', '10406462', '03526 820124', '904 Cook Drives\nClarkshire\nPO4 8NU', NULL, NULL, NULL, NULL, 'Rem.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(96, 1, 'bill', 'BILL-19081', NULL, 'received', '2022-11-07 04:58:49', '2024-11-13 04:58:49', 137.4100, 'USD', 1.00000000, 58, 38, 'Finley Edwards', 'colin.collins@example.net', '822939718', '(0803) 4523812', '5 Yvette Overpass\nNew Danielle\nPE25 1AA', NULL, NULL, NULL, NULL, 'Quis.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(97, 1, 'bill', 'BILL-12045', NULL, 'paid', '2022-01-24 05:19:54', '2022-10-13 05:19:54', 756.5300, 'USD', 1.00000000, 80, 45, 'Archie Morgan', 'christian13@example.net', '472674821', '(0090) 6555273', '8 Edwards Ferry\nLake Joshuaburgh\nTA4 2EY', NULL, NULL, NULL, NULL, 'Sint.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(98, 1, 'bill', 'BILL-79937', NULL, 'paid', '2022-03-21 02:48:45', '2023-04-04 02:48:45', 62.7000, 'USD', 1.00000000, 35, 51, 'Jeremy Mason', 'stacey.smith@example.org', '128540733', '(02207) 45369', '11 Rebecca Villages\nOwenchester\nGU1 2PB', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(99, 1, 'bill', 'BILL-46641', NULL, 'paid', '2022-11-08 22:50:44', '2023-11-05 22:50:44', 440.4600, 'USD', 1.00000000, 35, 26, 'Vicky Baker', 'morris.elliott@example.org', '695653246', '05821 75216', '7 Smith Roads\nLake Jackfort\nPL1 4EH', NULL, NULL, NULL, NULL, 'Quod.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(100, 1, 'bill', 'BILL-94298', NULL, 'cancelled', '2022-04-13 22:49:02', '2024-06-03 22:49:02', 199.4900, 'USD', 1.00000000, 35, 10, 'Lauren Wilkinson', 'saunders.zoe@example.net', '236115521', '06446025254', 'Studio 62k\nSebastian Junction\nNew Sabrina\nIG10 3JT', NULL, NULL, NULL, NULL, 'Rem.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:07', NULL),
(101, 1, 'invoice', 'INV-52683', NULL, 'paid', '2022-03-12 05:39:59', '2023-12-06 05:39:59', 99.4500, 'USD', 1.00000000, 2, 35, 'Rachel Cook', 'clark.adrian@example.com', '328742551', '+44(0)5645599967', 'Studio 34f\nCooper Fall\nPort Rubytown\nDE65 6JG', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:08', NULL),
(102, 1, 'invoice', 'INV-60388', NULL, 'draft', '2022-06-07 05:53:27', '2024-09-22 05:53:27', 690.7700, 'USD', 1.00000000, 74, 4, 'Ellie Hughes', 'russell.philip@example.org', '539226089', '(03724) 30255', '6 Hunt Mill\nLake Matthew\nCO5 9BJ', NULL, NULL, NULL, NULL, 'Quae.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:08', NULL),
(103, 1, 'invoice', 'INV-53780', NULL, 'draft', '2022-03-09 14:44:28', '2024-06-30 14:44:28', 345.3300, 'USD', 1.00000000, 74, 47, 'Peter White', 'simpson.reece@example.com', '499919612', '00906 062906', 'Studio 81e\nNick Estates\nMatthewschester\nTR10 8QN', NULL, NULL, NULL, NULL, 'Eius.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:08', NULL),
(104, 1, 'invoice', 'INV-9497', NULL, 'cancelled', '2022-12-19 14:43:26', '2024-06-19 14:43:26', 822.6800, 'USD', 1.00000000, 2, 35, 'Rachel Cook', 'clark.adrian@example.com', '328742551', '+44(0)5645599967', 'Studio 34f\nCooper Fall\nPort Rubytown\nDE65 6JG', NULL, NULL, NULL, NULL, 'Modi.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-24 08:07:24', NULL),
(105, 1, 'invoice', 'INV-4572', NULL, 'viewed', '2022-10-17 11:18:49', '2023-11-06 11:18:49', 847.4100, 'USD', 1.00000000, 77, 100, 'Kyle Gray', 'samuel54@example.com', '389883868', '+44(0)3924420829', '473 Amelia Summit\nBrownstad\nNE20 0RB', NULL, NULL, NULL, NULL, 'Non.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:08', NULL),
(106, 1, 'invoice', 'INV-49958', NULL, 'viewed', '2022-02-09 04:43:12', '2023-06-25 04:43:12', 766.5800, 'USD', 1.00000000, 105, 80, 'Pauline Williams', 'powell.lisa@example.net', '699667390', '01646 89350', 'Studio 79y\nDuncan Union\nMarshallbury\nLE17 5PD', NULL, NULL, NULL, NULL, 'Eos.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:08', NULL),
(107, 1, 'invoice', 'INV-43497', NULL, 'cancelled', '2022-11-01 03:41:09', '2024-02-17 03:41:09', 932.0100, 'USD', 1.00000000, 67, 19, 'Graham Moore', 'nicole.knight@example.net', '495817876', '01121 35768', '78 Rosie Common\nNorth Eleanorfort\nCW1 5PG', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:08', NULL),
(108, 1, 'invoice', 'INV-13113', NULL, 'viewed', '2022-12-03 17:27:03', '2024-01-15 17:27:03', 383.3100, 'USD', 1.00000000, 62, 77, 'Eden Wilkinson', 'qrichardson@example.com', '676760642', '09883 25528', '861 Wilson Court\nLake Dave\nLE17 5PD', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:08', NULL),
(109, 1, 'invoice', 'INV-22748', NULL, 'partial', '2022-10-01 04:22:32', '2024-10-31 04:22:32', 240.1600, 'USD', 1.00000000, 86, 87, 'Wayne Green', 'marshall.hannah@example.org', '242203721', '0798 2822562', 'Flat 91\nEllis Pines\nDominicview\nNR34 9ET', NULL, NULL, NULL, NULL, 'Id.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:08', NULL),
(110, 1, 'invoice', 'INV-92536', NULL, 'paid', '2022-02-09 05:17:07', '2024-08-16 05:17:07', 494.6900, 'USD', 1.00000000, 48, 42, 'Natasha Walker', 'mandy23@example.com', '621135942', '(0589) 7081827', '9 Stephen Squares\nCollinstown\nBT35 7PB', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(111, 1, 'invoice', 'INV-81334', NULL, 'viewed', '2022-01-24 04:00:16', '2022-05-13 04:00:16', 709.4500, 'USD', 1.00000000, 27, 17, 'Selina Martin', 'tiffany.white@example.com', '375550913', '08244209627', '3 Taylor Crossing\nSouth Bethany\nCW11 5SY', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(112, 1, 'invoice', 'INV-93901', NULL, 'viewed', '2022-07-14 18:11:33', '2024-04-19 18:11:33', 55.9800, 'USD', 1.00000000, 98, 77, 'Eden Wilkinson', 'qrichardson@example.com', '676760642', '09883 25528', '861 Wilson Court\nLake Dave\nLE17 5PD', NULL, NULL, NULL, NULL, 'At.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(113, 1, 'invoice', 'INV-44330', NULL, 'draft', '2022-11-10 17:32:07', '2024-01-01 17:32:07', 101.1900, 'USD', 1.00000000, 7, 16, 'Kyle Shaw', 'lewis13@example.net', '174378467', '+44(0)4357925456', '87 Hunter Rapids\nEdwardsmouth\nPL1 4EH', NULL, NULL, NULL, NULL, 'Amet.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(114, 1, 'invoice', 'INV-47406', NULL, 'viewed', '2022-08-13 05:05:54', '2024-02-25 05:05:54', 133.6600, 'USD', 1.00000000, 19, 85, 'Chris Robinson', 'richardson.shannon@example.net', '493326237', '+44(0)8113082824', '116 Jim Expressway\nNew Adelemouth\nCO5 9BJ', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(115, 1, 'invoice', 'INV-63192', NULL, 'cancelled', '2022-05-17 13:01:52', '2024-03-09 13:01:52', 751.3100, 'USD', 1.00000000, 82, 42, 'Natasha Walker', 'mandy23@example.com', '621135942', '(0589) 7081827', '9 Stephen Squares\nCollinstown\nBT35 7PB', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(116, 1, 'invoice', 'INV-87181', NULL, 'sent', '2022-07-16 12:27:20', '2023-02-14 12:27:20', 129.6800, 'USD', 1.00000000, 84, 35, 'Rachel Cook', 'clark.adrian@example.com', '328742551', '+44(0)5645599967', 'Studio 34f\nCooper Fall\nPort Rubytown\nDE65 6JG', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(117, 1, 'invoice', 'INV-98531', NULL, 'cancelled', '2022-06-21 18:21:15', '2022-11-07 18:21:15', 972.8600, 'USD', 1.00000000, 23, 41, 'Maisie Walker', 'millie.cox@example.org', '171027601', '+44(0)003267459', 'Flat 29d\nDavis Fort\nMatthewsville\nEH26 0LE', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(118, 1, 'invoice', 'INV-19002', NULL, 'viewed', '2022-04-15 04:40:41', '2024-10-12 04:40:41', 350.1000, 'USD', 1.00000000, 19, 41, 'Maisie Walker', 'millie.cox@example.org', '171027601', '+44(0)003267459', 'Flat 29d\nDavis Fort\nMatthewsville\nEH26 0LE', NULL, NULL, NULL, NULL, 'Sint.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(119, 1, 'invoice', 'INV-45852', NULL, 'viewed', '2022-01-02 11:33:08', '2023-06-07 11:33:08', 786.0200, 'USD', 1.00000000, 38, 100, 'Kyle Gray', 'samuel54@example.com', '389883868', '+44(0)3924420829', '473 Amelia Summit\nBrownstad\nNE20 0RB', NULL, NULL, NULL, NULL, 'Non.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(120, 1, 'invoice', 'INV-83713', NULL, 'cancelled', '2022-05-15 11:24:19', '2022-06-27 11:24:19', 694.0400, 'USD', 1.00000000, 27, 70, 'Kyle Knight', 'ben14@example.net', '910539332', '0979 5833165', '50 Benjamin Track\nCarriefurt\nLL21 0RG', NULL, NULL, NULL, NULL, 'Quo.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(121, 1, 'invoice', 'INV-19137', NULL, 'draft', '2022-10-26 09:32:49', '2025-07-06 09:32:49', 1137.8700, 'USD', 1.00000000, 72, 19, 'Graham Moore', 'nicole.knight@example.net', '495817876', '01121 35768', '78 Rosie Common\nNorth Eleanorfort\nCW1 5PG', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(122, 1, 'invoice', 'INV-41286', NULL, 'partial', '2022-06-12 15:50:12', '2023-08-19 15:50:12', 455.5500, 'USD', 1.00000000, 27, 81, 'Philip Mitchell', 'white.vanessa@example.org', '952536408', '02261 70477', '571 Matthews Junction\nSouth Benjaminport\nDL15 8GH', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(123, 1, 'invoice', 'INV-28693', NULL, 'viewed', '2022-04-18 20:04:36', '2024-05-14 20:04:36', 221.4200, 'USD', 1.00000000, 3, 42, 'Natasha Walker', 'mandy23@example.com', '621135942', '(0589) 7081827', '9 Stephen Squares\nCollinstown\nBT35 7PB', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(124, 1, 'invoice', 'INV-36244', NULL, 'partial', '2022-05-18 21:58:49', '2023-01-12 21:58:49', 581.2500, 'USD', 1.00000000, 90, 29, 'Rob White', 'alexa04@example.net', '436761686', '+44(0)371782920', '33 Lucy Bypass\nPort Tracymouth\nS35 4FX', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(125, 1, 'invoice', 'INV-48234', NULL, 'paid', '2022-10-31 18:22:36', '2022-12-13 18:22:36', 906.7500, 'USD', 1.00000000, 2, 16, 'Kyle Shaw', 'lewis13@example.net', '174378467', '+44(0)4357925456', '87 Hunter Rapids\nEdwardsmouth\nPL1 4EH', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:09', NULL),
(126, 1, 'invoice', 'INV-53288', NULL, 'viewed', '2022-12-11 13:44:37', '2023-07-17 13:44:37', 678.9400, 'USD', 1.00000000, 43, 37, 'Wayne Cook', 'jreynolds@example.org', '874130836', '04946 360401', '6 Karl Ranch\nJustineshire\nHU7 4FE', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(127, 1, 'invoice', 'INV-25602', NULL, 'draft', '2022-05-29 03:54:09', '2023-11-01 03:54:09', 773.0100, 'USD', 1.00000000, 90, 37, 'Wayne Cook', 'jreynolds@example.org', '874130836', '04946 360401', '6 Karl Ranch\nJustineshire\nHU7 4FE', NULL, NULL, NULL, NULL, 'Quo.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(128, 1, 'invoice', 'INV-36551', NULL, 'viewed', '2022-01-28 05:03:23', '2022-03-23 05:03:23', 956.7200, 'USD', 1.00000000, 77, 42, 'Natasha Walker', 'mandy23@example.com', '621135942', '(0589) 7081827', '9 Stephen Squares\nCollinstown\nBT35 7PB', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(129, 1, 'invoice', 'INV-56381', NULL, 'viewed', '2022-01-16 12:52:16', '2022-02-20 12:52:16', 945.8400, 'USD', 1.00000000, 19, 67, 'Charlie Clark', 'uwalker@example.net', '587855591', '0478351701', '364 Jamie Vista\nSouth Heatherstad\nYO32 9SX', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(130, 1, 'invoice', 'INV-14883', NULL, 'partial', '2022-12-07 18:57:45', '2023-12-23 18:57:45', 556.1200, 'USD', 1.00000000, 38, 80, 'Pauline Williams', 'powell.lisa@example.net', '699667390', '01646 89350', 'Studio 79y\nDuncan Union\nMarshallbury\nLE17 5PD', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(131, 1, 'invoice', 'INV-77590', NULL, 'draft', '2022-02-20 13:44:20', '2022-08-28 13:44:20', 660.5300, 'USD', 1.00000000, 7, 70, 'Kyle Knight', 'ben14@example.net', '910539332', '0979 5833165', '50 Benjamin Track\nCarriefurt\nLL21 0RG', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(132, 1, 'invoice', 'INV-8424', NULL, 'partial', '2022-11-18 17:20:40', '2024-02-17 17:20:40', 551.0800, 'USD', 1.00000000, 62, 80, 'Pauline Williams', 'powell.lisa@example.net', '699667390', '01646 89350', 'Studio 79y\nDuncan Union\nMarshallbury\nLE17 5PD', NULL, NULL, NULL, NULL, 'Non.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(133, 1, 'invoice', 'INV-10354', NULL, 'cancelled', '2022-01-19 13:27:18', '2023-01-02 13:27:18', 51.1000, 'USD', 1.00000000, 73, 77, 'Eden Wilkinson', 'qrichardson@example.com', '676760642', '09883 25528', '861 Wilson Court\nLake Dave\nLE17 5PD', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(134, 1, 'invoice', 'INV-71528', NULL, 'draft', '2022-03-21 17:09:40', '2024-10-22 17:09:40', 364.2800, 'USD', 1.00000000, 48, 47, 'Peter White', 'simpson.reece@example.com', '499919612', '00906 062906', 'Studio 81e\nNick Estates\nMatthewschester\nTR10 8QN', NULL, NULL, NULL, NULL, 'Nisi.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(135, 1, 'invoice', 'INV-20394', NULL, 'sent', '2022-03-04 22:15:48', '2022-05-26 22:15:48', 37.3200, 'USD', 1.00000000, 60, 67, 'Charlie Clark', 'uwalker@example.net', '587855591', '0478351701', '364 Jamie Vista\nSouth Heatherstad\nYO32 9SX', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(136, 1, 'invoice', 'INV-54828', NULL, 'draft', '2022-03-01 12:25:20', '2024-10-22 12:25:20', 368.2500, 'USD', 1.00000000, 43, 100, 'Kyle Gray', 'samuel54@example.com', '389883868', '+44(0)3924420829', '473 Amelia Summit\nBrownstad\nNE20 0RB', NULL, NULL, NULL, NULL, 'Id.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL);
INSERT INTO `p9k_documents` (`id`, `company_id`, `type`, `document_number`, `order_number`, `status`, `issued_at`, `due_at`, `amount`, `currency_code`, `currency_rate`, `category_id`, `contact_id`, `contact_name`, `contact_email`, `contact_tax_number`, `contact_phone`, `contact_address`, `contact_city`, `contact_zip_code`, `contact_state`, `contact_country`, `notes`, `footer`, `parent_id`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(137, 1, 'invoice', 'INV-69040', NULL, 'viewed', '2022-01-11 19:10:00', '2022-10-21 19:10:00', 582.7200, 'USD', 1.00000000, 19, 81, 'Philip Mitchell', 'white.vanessa@example.org', '952536408', '02261 70477', '571 Matthews Junction\nSouth Benjaminport\nDL15 8GH', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(138, 1, 'invoice', 'INV-34515', NULL, 'paid', '2022-01-03 01:18:29', '2023-02-21 01:18:29', 739.0300, 'USD', 1.00000000, 82, 100, 'Kyle Gray', 'samuel54@example.com', '389883868', '+44(0)3924420829', '473 Amelia Summit\nBrownstad\nNE20 0RB', NULL, NULL, NULL, NULL, 'Ea.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:10', NULL),
(139, 1, 'invoice', 'INV-8951', NULL, 'paid', '2022-01-18 05:11:15', '2023-01-11 05:11:15', 726.1800, 'USD', 1.00000000, 60, 18, 'Jane Owen', 'mary.james@example.org', '490714318', '(0594) 9357035', '20 Turner Extension\nLake Edwardview\nYO31 8WU', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(140, 1, 'invoice', 'INV-24259', NULL, 'sent', '2022-06-14 18:06:44', '2023-05-26 18:06:44', 611.6400, 'USD', 1.00000000, 62, 29, 'Rob White', 'alexa04@example.net', '436761686', '+44(0)371782920', '33 Lucy Bypass\nPort Tracymouth\nS35 4FX', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(141, 1, 'invoice', 'INV-74765', NULL, 'viewed', '2022-03-27 22:59:53', '2022-10-17 22:59:53', 788.8600, 'USD', 1.00000000, 57, 24, 'Finley Powell', 'lwalsh@example.org', '85493848', '+44(0)041322062', '17 Alexa Drives\nLake Jackson\nSG18 0HL', NULL, NULL, NULL, NULL, 'Vero.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(142, 1, 'invoice', 'INV-91320', NULL, 'cancelled', '2022-02-22 22:38:54', '2022-10-24 22:38:54', 717.6400, 'USD', 1.00000000, 90, 16, 'Kyle Shaw', 'lewis13@example.net', '174378467', '+44(0)4357925456', '87 Hunter Rapids\nEdwardsmouth\nPL1 4EH', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(143, 1, 'invoice', 'INV-38238', NULL, 'paid', '2022-02-05 20:16:11', '2024-10-05 20:16:11', 981.6000, 'USD', 1.00000000, 90, 100, 'Kyle Gray', 'samuel54@example.com', '389883868', '+44(0)3924420829', '473 Amelia Summit\nBrownstad\nNE20 0RB', NULL, NULL, NULL, NULL, 'Quo.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(144, 1, 'invoice', 'INV-26605', NULL, 'viewed', '2022-10-20 03:44:36', '2022-11-26 03:44:36', 875.5700, 'USD', 1.00000000, 90, 80, 'Pauline Williams', 'powell.lisa@example.net', '699667390', '01646 89350', 'Studio 79y\nDuncan Union\nMarshallbury\nLE17 5PD', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(145, 1, 'invoice', 'INV-20456', NULL, 'draft', '2022-06-08 10:10:19', '2024-02-14 10:10:19', 45.0000, 'USD', 1.00000000, 79, 24, 'Finley Powell', 'lwalsh@example.org', '85493848', '+44(0)041322062', '17 Alexa Drives\nLake Jackson\nSG18 0HL', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(146, 1, 'invoice', 'INV-5152', NULL, 'draft', '2022-10-26 07:24:25', '2025-04-24 07:24:25', 423.0000, 'USD', 1.00000000, 9, 4, 'Ellie Hughes', 'russell.philip@example.org', '539226089', '(03724) 30255', '6 Hunt Mill\nLake Matthew\nCO5 9BJ', NULL, NULL, NULL, NULL, 'Sit.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(147, 1, 'invoice', 'INV-54121', NULL, 'draft', '2022-06-19 16:12:23', '2022-07-02 16:12:23', 565.2100, 'USD', 1.00000000, 48, 77, 'Eden Wilkinson', 'qrichardson@example.com', '676760642', '09883 25528', '861 Wilson Court\nLake Dave\nLE17 5PD', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(148, 1, 'invoice', 'INV-12960', NULL, 'viewed', '2022-07-11 04:14:28', '2025-03-29 04:14:28', 668.4800, 'USD', 1.00000000, 86, 18, 'Jane Owen', 'mary.james@example.org', '490714318', '(0594) 9357035', '20 Turner Extension\nLake Edwardview\nYO31 8WU', NULL, NULL, NULL, NULL, 'Eos.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(149, 1, 'invoice', 'INV-53663', NULL, 'cancelled', '2022-06-29 00:54:37', '2024-03-25 00:54:37', 969.5700, 'USD', 1.00000000, 86, 41, 'Maisie Walker', 'millie.cox@example.org', '171027601', '+44(0)003267459', 'Flat 29d\nDavis Fort\nMatthewsville\nEH26 0LE', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(150, 1, 'invoice', 'INV-89714', NULL, 'sent', '2022-12-14 03:38:55', '2025-03-09 03:38:55', 110.9700, 'USD', 1.00000000, 72, 19, 'Graham Moore', 'nicole.knight@example.net', '495817876', '01121 35768', '78 Rosie Common\nNorth Eleanorfort\nCW1 5PG', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(151, 1, 'invoice', 'INV-8126', NULL, 'cancelled', '2022-07-29 16:51:27', '2023-03-02 16:51:27', 769.6800, 'USD', 1.00000000, 79, 42, 'Natasha Walker', 'mandy23@example.com', '621135942', '(0589) 7081827', '9 Stephen Squares\nCollinstown\nBT35 7PB', NULL, NULL, NULL, NULL, 'Hic.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(152, 1, 'invoice', 'INV-53441', NULL, 'partial', '2022-11-18 13:00:19', '2025-06-20 13:00:19', 139.2300, 'USD', 1.00000000, 23, 77, 'Eden Wilkinson', 'qrichardson@example.com', '676760642', '09883 25528', '861 Wilson Court\nLake Dave\nLE17 5PD', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:11', NULL),
(153, 1, 'invoice', 'INV-6835', NULL, 'sent', '2022-08-21 08:48:21', '2025-03-19 08:48:21', 161.2700, 'USD', 1.00000000, 82, 87, 'Wayne Green', 'marshall.hannah@example.org', '242203721', '0798 2822562', 'Flat 91\nEllis Pines\nDominicview\nNR34 9ET', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(154, 1, 'invoice', 'INV-50068', NULL, 'viewed', '2022-06-10 12:59:32', '2024-08-23 12:59:32', 332.6500, 'USD', 1.00000000, 22, 87, 'Wayne Green', 'marshall.hannah@example.org', '242203721', '0798 2822562', 'Flat 91\nEllis Pines\nDominicview\nNR34 9ET', NULL, NULL, NULL, NULL, 'Cum.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(155, 1, 'invoice', 'INV-80484', NULL, 'viewed', '2022-02-07 20:05:18', '2024-08-23 20:05:18', 601.0300, 'USD', 1.00000000, 43, 81, 'Philip Mitchell', 'white.vanessa@example.org', '952536408', '02261 70477', '571 Matthews Junction\nSouth Benjaminport\nDL15 8GH', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(156, 1, 'invoice', 'INV-4870', NULL, 'cancelled', '2022-12-28 16:26:52', '2023-03-30 16:26:52', 36.0900, 'USD', 1.00000000, 84, 81, 'Philip Mitchell', 'white.vanessa@example.org', '952536408', '02261 70477', '571 Matthews Junction\nSouth Benjaminport\nDL15 8GH', NULL, NULL, NULL, NULL, 'Ad.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(157, 1, 'invoice', 'INV-13178', NULL, 'paid', '2022-12-10 02:52:22', '2023-04-23 02:52:22', 158.3900, 'USD', 1.00000000, 72, 24, 'Finley Powell', 'lwalsh@example.org', '85493848', '+44(0)041322062', '17 Alexa Drives\nLake Jackson\nSG18 0HL', NULL, NULL, NULL, NULL, 'Ad.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(158, 1, 'invoice', 'INV-91666', NULL, 'partial', '2022-07-04 06:57:14', '2024-09-09 06:57:14', 697.3100, 'USD', 1.00000000, 3, 81, 'Philip Mitchell', 'white.vanessa@example.org', '952536408', '02261 70477', '571 Matthews Junction\nSouth Benjaminport\nDL15 8GH', NULL, NULL, NULL, NULL, 'Sunt.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(159, 1, 'invoice', 'INV-3020', NULL, 'draft', '2022-02-05 11:10:57', '2024-09-16 11:10:57', 297.3500, 'USD', 1.00000000, 38, 85, 'Chris Robinson', 'richardson.shannon@example.net', '493326237', '+44(0)8113082824', '116 Jim Expressway\nNew Adelemouth\nCO5 9BJ', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(160, 1, 'invoice', 'INV-57821', NULL, 'paid', '2022-05-05 01:01:08', '2024-11-11 01:01:08', 435.6600, 'USD', 1.00000000, 3, 37, 'Wayne Cook', 'jreynolds@example.org', '874130836', '04946 360401', '6 Karl Ranch\nJustineshire\nHU7 4FE', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(161, 1, 'invoice', 'INV-17443', NULL, 'viewed', '2022-04-11 09:31:49', '2024-09-01 09:31:49', 870.3500, 'USD', 1.00000000, 2, 67, 'Charlie Clark', 'uwalker@example.net', '587855591', '0478351701', '364 Jamie Vista\nSouth Heatherstad\nYO32 9SX', NULL, NULL, NULL, NULL, 'Quae.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(162, 1, 'invoice', 'INV-54208', NULL, 'draft', '2022-02-15 11:43:45', '2024-01-11 11:43:45', 742.0000, 'USD', 1.00000000, 22, 85, 'Chris Robinson', 'richardson.shannon@example.net', '493326237', '+44(0)8113082824', '116 Jim Expressway\nNew Adelemouth\nCO5 9BJ', NULL, NULL, NULL, NULL, 'Ad.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:12', NULL),
(163, 1, 'invoice', 'INV-23354', NULL, 'cancelled', '2022-12-18 02:22:20', '2023-10-10 02:22:20', 438.6700, 'USD', 1.00000000, 3, 77, 'Eden Wilkinson', 'qrichardson@example.com', '676760642', '09883 25528', '861 Wilson Court\nLake Dave\nLE17 5PD', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(164, 1, 'invoice', 'INV-62438', NULL, 'cancelled', '2022-01-30 22:10:14', '2024-08-28 22:10:14', 451.1300, 'USD', 1.00000000, 103, 85, 'Chris Robinson', 'richardson.shannon@example.net', '493326237', '+44(0)8113082824', '116 Jim Expressway\nNew Adelemouth\nCO5 9BJ', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(165, 1, 'invoice', 'INV-6224', NULL, 'draft', '2022-12-09 20:46:26', '2024-08-14 20:46:26', 433.4300, 'USD', 1.00000000, 48, 6, 'Dennis Price', 'russell.julie@example.net', '802666312', '(0926) 1277610', 'Flat 28l\nRebecca Street\nDavisberg\nEH26 0LE', NULL, NULL, NULL, NULL, 'In.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(166, 1, 'invoice', 'INV-36196', NULL, 'partial', '2022-04-11 16:10:58', '2023-12-17 16:10:58', 329.3300, 'USD', 1.00000000, 30, 6, 'Dennis Price', 'russell.julie@example.net', '802666312', '(0926) 1277610', 'Flat 28l\nRebecca Street\nDavisberg\nEH26 0LE', NULL, NULL, NULL, NULL, 'Eos.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(167, 1, 'invoice', 'INV-52580', NULL, 'cancelled', '2022-02-07 10:59:51', '2022-07-31 10:59:51', 815.2200, 'USD', 1.00000000, 19, 42, 'Natasha Walker', 'mandy23@example.com', '621135942', '(0589) 7081827', '9 Stephen Squares\nCollinstown\nBT35 7PB', NULL, NULL, NULL, NULL, 'Vel.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(168, 1, 'invoice', 'INV-9313', NULL, 'draft', '2022-12-11 22:16:24', '2025-01-23 22:16:24', 1010.1700, 'USD', 1.00000000, 22, 29, 'Rob White', 'alexa04@example.net', '436761686', '+44(0)371782920', '33 Lucy Bypass\nPort Tracymouth\nS35 4FX', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(169, 1, 'invoice', 'INV-83466', NULL, 'paid', '2022-11-12 16:03:23', '2024-09-30 16:03:23', 422.5000, 'USD', 1.00000000, 82, 70, 'Kyle Knight', 'ben14@example.net', '910539332', '0979 5833165', '50 Benjamin Track\nCarriefurt\nLL21 0RG', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(170, 1, 'invoice', 'INV-88734', NULL, 'partial', '2022-09-18 21:12:15', '2022-10-09 21:12:15', 315.0400, 'USD', 1.00000000, 103, 55, 'Lily Simpson', 'pauline.lewis@example.com', '419574879', '0453 7819580', 'Studio 59e\nEllis Locks\nDavischester\nIP22 1JW', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(171, 1, 'invoice', 'INV-28717', NULL, 'paid', '2022-06-23 23:44:29', '2024-01-06 23:44:29', 170.7700, 'USD', 1.00000000, 62, 24, 'Finley Powell', 'lwalsh@example.org', '85493848', '+44(0)041322062', '17 Alexa Drives\nLake Jackson\nSG18 0HL', NULL, NULL, NULL, NULL, 'Est.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(172, 1, 'invoice', 'INV-51152', NULL, 'sent', '2022-06-22 00:54:56', '2024-02-17 00:54:56', 65.9900, 'USD', 1.00000000, 6, 35, 'Rachel Cook', 'clark.adrian@example.com', '328742551', '+44(0)5645599967', 'Studio 34f\nCooper Fall\nPort Rubytown\nDE65 6JG', NULL, NULL, NULL, NULL, 'Unde.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(173, 1, 'invoice', 'INV-6351', NULL, 'viewed', '2022-03-09 06:17:01', '2023-01-09 06:17:01', 709.1200, 'USD', 1.00000000, 23, 55, 'Lily Simpson', 'pauline.lewis@example.com', '419574879', '0453 7819580', 'Studio 59e\nEllis Locks\nDavischester\nIP22 1JW', NULL, NULL, NULL, NULL, 'Vel.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:13', NULL),
(174, 1, 'invoice', 'INV-96156', NULL, 'paid', '2022-01-03 20:42:55', '2023-01-31 20:42:55', 760.2800, 'USD', 1.00000000, 27, 55, 'Lily Simpson', 'pauline.lewis@example.com', '419574879', '0453 7819580', 'Studio 59e\nEllis Locks\nDavischester\nIP22 1JW', NULL, NULL, NULL, NULL, 'Ab.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(175, 1, 'invoice', 'INV-91810', NULL, 'sent', '2022-05-25 14:07:57', '2022-11-23 14:07:57', 932.8500, 'USD', 1.00000000, 79, 24, 'Finley Powell', 'lwalsh@example.org', '85493848', '+44(0)041322062', '17 Alexa Drives\nLake Jackson\nSG18 0HL', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(176, 1, 'invoice', 'INV-83193', NULL, 'sent', '2022-03-07 06:05:56', '2022-11-15 06:05:56', 609.5200, 'USD', 1.00000000, 2, 87, 'Wayne Green', 'marshall.hannah@example.org', '242203721', '0798 2822562', 'Flat 91\nEllis Pines\nDominicview\nNR34 9ET', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(177, 1, 'invoice', 'INV-38327', NULL, 'paid', '2022-07-29 22:50:44', '2023-06-30 22:50:44', 101.9600, 'USD', 1.00000000, 86, 67, 'Charlie Clark', 'uwalker@example.net', '587855591', '0478351701', '364 Jamie Vista\nSouth Heatherstad\nYO32 9SX', NULL, NULL, NULL, NULL, 'Sed.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(178, 1, 'invoice', 'INV-63225', NULL, 'draft', '2022-04-07 18:28:09', '2023-06-26 18:28:09', 205.9800, 'USD', 1.00000000, 87, 80, 'Pauline Williams', 'powell.lisa@example.net', '699667390', '01646 89350', 'Studio 79y\nDuncan Union\nMarshallbury\nLE17 5PD', NULL, NULL, NULL, NULL, 'Esse.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(179, 1, 'invoice', 'INV-16938', NULL, 'partial', '2022-07-25 17:02:31', '2025-04-14 17:02:31', 618.5600, 'USD', 1.00000000, 2, 6, 'Dennis Price', 'russell.julie@example.net', '802666312', '(0926) 1277610', 'Flat 28l\nRebecca Street\nDavisberg\nEH26 0LE', NULL, NULL, NULL, NULL, 'Iure.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(180, 1, 'invoice', 'INV-2808', NULL, 'viewed', '2022-03-17 04:00:45', '2023-02-24 04:00:45', 725.6200, 'USD', 1.00000000, 73, 55, 'Lily Simpson', 'pauline.lewis@example.com', '419574879', '0453 7819580', 'Studio 59e\nEllis Locks\nDavischester\nIP22 1JW', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(181, 1, 'invoice', 'INV-61787', NULL, 'paid', '2022-01-17 10:34:53', '2022-07-30 10:34:53', 394.3100, 'USD', 1.00000000, 9, 37, 'Wayne Cook', 'jreynolds@example.org', '874130836', '04946 360401', '6 Karl Ranch\nJustineshire\nHU7 4FE', NULL, NULL, NULL, NULL, 'Sit.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(182, 1, 'invoice', 'INV-53164', NULL, 'partial', '2022-02-17 06:50:44', '2022-11-25 06:50:44', 310.8300, 'USD', 1.00000000, 30, 37, 'Wayne Cook', 'jreynolds@example.org', '874130836', '04946 360401', '6 Karl Ranch\nJustineshire\nHU7 4FE', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:14', NULL),
(183, 1, 'invoice', 'INV-43300', NULL, 'paid', '2022-06-18 06:32:29', '2022-12-30 06:32:29', 694.6200, 'USD', 1.00000000, 92, 6, 'Dennis Price', 'russell.julie@example.net', '802666312', '(0926) 1277610', 'Flat 28l\nRebecca Street\nDavisberg\nEH26 0LE', NULL, NULL, NULL, NULL, 'Sunt.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:15', NULL),
(184, 1, 'invoice', 'INV-58791', NULL, 'partial', '2022-04-21 05:30:07', '2022-05-11 05:30:07', 50.0400, 'USD', 1.00000000, 6, 67, 'Charlie Clark', 'uwalker@example.net', '587855591', '0478351701', '364 Jamie Vista\nSouth Heatherstad\nYO32 9SX', NULL, NULL, NULL, NULL, 'Ipsa.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:15', NULL),
(185, 1, 'invoice', 'INV-64185', NULL, 'paid', '2022-05-19 00:28:26', '2024-01-27 00:28:26', 327.7700, 'USD', 1.00000000, 90, 55, 'Lily Simpson', 'pauline.lewis@example.com', '419574879', '0453 7819580', 'Studio 59e\nEllis Locks\nDavischester\nIP22 1JW', NULL, NULL, NULL, NULL, 'Qui.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:15', NULL),
(186, 1, 'invoice', 'INV-96162', NULL, 'partial', '2022-09-12 20:01:23', '2023-10-11 20:01:23', 326.9400, 'USD', 1.00000000, 77, 2, 'Francesca Knight', 'natalie.brown@example.net', '896504823', '+44(0)371296745', '4 Suzanne Roads\nRobinsonchester\nSP1 1NE', NULL, NULL, NULL, NULL, 'Odit.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:15', NULL),
(187, 1, 'invoice', 'INV-35779', NULL, 'cancelled', '2022-11-13 15:30:34', '2024-07-26 15:30:34', 744.2200, 'USD', 1.00000000, 60, 55, 'Lily Simpson', 'pauline.lewis@example.com', '419574879', '0453 7819580', 'Studio 59e\nEllis Locks\nDavischester\nIP22 1JW', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:15', NULL),
(188, 1, 'invoice', 'INV-43738', NULL, 'cancelled', '2022-01-22 08:11:39', '2023-01-20 08:11:39', 100.5800, 'USD', 1.00000000, 3, 70, 'Kyle Knight', 'ben14@example.net', '910539332', '0979 5833165', '50 Benjamin Track\nCarriefurt\nLL21 0RG', NULL, NULL, NULL, NULL, 'Ab.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:15', NULL),
(189, 1, 'invoice', 'INV-27785', NULL, 'draft', '2022-11-21 12:03:24', '2025-01-19 12:03:24', 619.9700, 'USD', 1.00000000, 19, 6, 'Dennis Price', 'russell.julie@example.net', '802666312', '(0926) 1277610', 'Flat 28l\nRebecca Street\nDavisberg\nEH26 0LE', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:15', NULL),
(190, 1, 'invoice', 'INV-84778', NULL, 'paid', '2022-08-11 11:25:14', '2025-02-02 11:25:14', 942.9100, 'USD', 1.00000000, 3, 67, 'Charlie Clark', 'uwalker@example.net', '587855591', '0478351701', '364 Jamie Vista\nSouth Heatherstad\nYO32 9SX', NULL, NULL, NULL, NULL, 'Vel.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:15', NULL),
(191, 1, 'invoice', 'INV-35450', NULL, 'viewed', '2022-04-04 08:54:10', '2022-06-20 08:54:10', 890.3300, 'USD', 1.00000000, 30, 100, 'Kyle Gray', 'samuel54@example.com', '389883868', '+44(0)3924420829', '473 Amelia Summit\nBrownstad\nNE20 0RB', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(192, 1, 'invoice', 'INV-55383', NULL, 'cancelled', '2022-03-27 02:26:19', '2022-07-04 02:26:19', 642.8400, 'USD', 1.00000000, 105, 61, 'Stefan Harrison', 'rowena.bell@example.net', '384205354', '05529481912', '31 Ellis Camp\nLisaside\nST3 5SH', NULL, NULL, NULL, NULL, 'Aut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(193, 1, 'invoice', 'INV-2082', NULL, 'sent', '2022-05-13 11:00:54', '2022-06-22 11:00:54', 266.4200, 'USD', 1.00000000, 62, 16, 'Kyle Shaw', 'lewis13@example.net', '174378467', '+44(0)4357925456', '87 Hunter Rapids\nEdwardsmouth\nPL1 4EH', NULL, NULL, NULL, NULL, 'Quam.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(194, 1, 'invoice', 'INV-14501', NULL, 'draft', '2022-06-30 13:10:22', '2023-06-21 13:10:22', 198.5000, 'USD', 1.00000000, 82, 61, 'Stefan Harrison', 'rowena.bell@example.net', '384205354', '05529481912', '31 Ellis Camp\nLisaside\nST3 5SH', NULL, NULL, NULL, NULL, 'Non.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(195, 1, 'invoice', 'INV-6874', NULL, 'viewed', '2022-04-03 01:44:17', '2024-01-27 01:44:17', 684.5900, 'USD', 1.00000000, 38, 55, 'Lily Simpson', 'pauline.lewis@example.com', '419574879', '0453 7819580', 'Studio 59e\nEllis Locks\nDavischester\nIP22 1JW', NULL, NULL, NULL, NULL, 'Vel.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(196, 1, 'invoice', 'INV-26213', NULL, 'sent', '2022-10-01 13:49:11', '2025-06-07 13:49:11', 773.5600, 'USD', 1.00000000, 86, 85, 'Chris Robinson', 'richardson.shannon@example.net', '493326237', '+44(0)8113082824', '116 Jim Expressway\nNew Adelemouth\nCO5 9BJ', NULL, NULL, NULL, NULL, 'Quia.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(197, 1, 'invoice', 'INV-90052', NULL, 'viewed', '2022-07-27 02:03:49', '2023-05-13 02:03:49', 812.6800, 'USD', 1.00000000, 67, 67, 'Charlie Clark', 'uwalker@example.net', '587855591', '0478351701', '364 Jamie Vista\nSouth Heatherstad\nYO32 9SX', NULL, NULL, NULL, NULL, 'Non.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(198, 1, 'invoice', 'INV-55324', NULL, 'partial', '2022-12-03 23:50:01', '2025-04-01 23:50:01', 743.7900, 'USD', 1.00000000, 6, 2, 'Francesca Knight', 'natalie.brown@example.net', '896504823', '+44(0)371296745', '4 Suzanne Roads\nRobinsonchester\nSP1 1NE', NULL, NULL, NULL, NULL, 'Et.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(199, 1, 'invoice', 'INV-61292', NULL, 'cancelled', '2022-09-13 02:07:50', '2024-12-22 02:07:50', 724.8300, 'USD', 1.00000000, 84, 61, 'Stefan Harrison', 'rowena.bell@example.net', '384205354', '05529481912', '31 Ellis Camp\nLisaside\nST3 5SH', NULL, NULL, NULL, NULL, 'Nisi.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(200, 1, 'invoice', 'INV-80687', NULL, 'draft', '2022-12-18 04:54:43', '2023-09-07 04:54:43', 752.1200, 'USD', 1.00000000, 74, 18, 'Jane Owen', 'mary.james@example.org', '490714318', '(0594) 9357035', '20 Turner Extension\nLake Edwardview\nYO31 8WU', NULL, NULL, NULL, NULL, 'Ut.', NULL, 0, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:16', NULL),
(201, 1, 'bill', '738', '421', 'draft', '2022-03-05 15:06:47', '2022-03-05 15:06:47', 8.9500, 'USD', 1.00000000, 16, 79, 'Adrian Russell', 'murray.caitlin@example.net', '849541588', '00340 978512', 'Flat 61\r\nJodie Grove\r\nEast Summerberg\r\nWV99 1RG', NULL, NULL, NULL, NULL, 'Ut in hic reprehende', NULL, 0, 'core::ui', 1, '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(202, 1, 'invoice', '84', '46', 'draft', '2022-03-06 13:40:21', '2022-03-06 13:40:21', 0.0000, 'USD', 1.00000000, 79, 67, 'Charlie Clark', 'uwalker@example.net', '587855591', '0478351701', '364 Jamie Vista\r\nSouth Heatherstad\r\nYO32 9SX', NULL, NULL, NULL, NULL, 'Sint dolor molestias', NULL, 0, 'core::ui', 1, '2022-03-06 07:40:21', '2022-03-06 07:40:21', NULL),
(203, 1, 'bill', 'BILL-00102', '889088', 'draft', '2022-03-07 11:25:15', '2022-03-07 11:25:15', 14.2700, 'USD', 1.00000000, 95, 14, 'Amanda Knight', 'pete39@example.net', '974119162', '(00192) 12330', '366 Karl Ways\r\nFionastad\r\nSE26 6JG', NULL, NULL, NULL, NULL, 'nkonjyol', NULL, 0, 'core::ui', 1, '2022-03-07 05:23:57', '2022-03-07 05:25:15', NULL),
(204, 1, 'invoice', '811', '296', 'draft', '2022-03-09 15:30:41', '2022-03-09 15:30:41', 0.0000, 'USD', 1.00000000, 105, 68, 'Ava Ward', 'stefan.kennedy@example.com', '134280588', '+44(0)4153 684850', '3 Allen Place\r\nLake Quentinberg\r\nNN5 7AR', NULL, NULL, NULL, NULL, 'Distinctio Dolor no', NULL, 0, 'core::ui', 1, '2022-03-09 09:30:41', '2022-03-09 09:30:41', NULL),
(205, 1, 'invoice', 'INV-00103', '04346443', 'draft', '2022-07-03 14:12:36', '2022-07-04 14:12:36', 22.2800, 'USD', 1.00000000, 82, 68, 'Ava Ward', 'stefan.kennedy@example.com', '134280588', '+44(0)4153 684850', '3 Allen Place\r\nLake Quentinberg\r\nNN5 7AR', NULL, NULL, NULL, NULL, NULL, 'Moloy', 0, 'core::ui', 1, '2022-07-03 08:12:36', '2022-07-03 08:12:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_document_histories`
--

CREATE TABLE `p9k_document_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `description` text DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_document_histories`
--

INSERT INTO `p9k_document_histories` (`id`, `company_id`, `type`, `document_id`, `status`, `notify`, `description`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'bill', 1, 'draft', 0, 'BILL-74155 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(2, 1, 'bill', 1, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(3, 1, 'bill', 2, 'draft', 0, 'BILL-71191 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(4, 1, 'bill', 2, 'partial', 0, '$111.00 Payment', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(5, 1, 'bill', 3, 'draft', 0, 'BILL-29032 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(6, 1, 'bill', 3, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(7, 1, 'bill', 4, 'draft', 0, 'BILL-97974 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(8, 1, 'bill', 4, 'paid', 0, '$449.61 Payment', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(9, 1, 'bill', 5, 'draft', 0, 'BILL-60755 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(10, 1, 'bill', 5, 'paid', 0, '$363.84 Payment', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(11, 1, 'bill', 6, 'draft', 0, 'BILL-23907 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(12, 1, 'bill', 6, 'partial', 0, '$28.00 Payment', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(13, 1, 'bill', 7, 'draft', 0, 'BILL-46402 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(14, 1, 'bill', 7, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(15, 1, 'bill', 8, 'draft', 0, 'BILL-4084 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(16, 1, 'bill', 9, 'draft', 0, 'BILL-74746 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(17, 1, 'bill', 9, 'paid', 0, '$196.92 Payment', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(18, 1, 'bill', 10, 'draft', 0, 'BILL-72528 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(19, 1, 'bill', 10, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(20, 1, 'bill', 11, 'draft', 0, 'BILL-13174 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(21, 1, 'bill', 12, 'draft', 0, 'BILL-84202 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(22, 1, 'bill', 12, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(23, 1, 'bill', 13, 'draft', 0, 'BILL-49661 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(24, 1, 'bill', 13, 'paid', 0, '$178.77 Payment', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(25, 1, 'bill', 14, 'draft', 0, 'BILL-58246 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(26, 1, 'bill', 14, 'partial', 0, '$133.00 Payment', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(27, 1, 'bill', 15, 'draft', 0, 'BILL-38938 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(28, 1, 'bill', 15, 'paid', 0, '$321.90 Payment', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(29, 1, 'bill', 16, 'draft', 0, 'BILL-32014 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(30, 1, 'bill', 17, 'draft', 0, 'BILL-64507 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(31, 1, 'bill', 18, 'draft', 0, 'BILL-28658 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(32, 1, 'bill', 19, 'draft', 0, 'BILL-35642 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(33, 1, 'bill', 19, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(34, 1, 'bill', 20, 'draft', 0, 'BILL-71666 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(35, 1, 'bill', 21, 'draft', 0, 'BILL-5703 added!', 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(36, 1, 'bill', 21, 'partial', 0, '$49.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(37, 1, 'bill', 22, 'draft', 0, 'BILL-64662 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(38, 1, 'bill', 23, 'draft', 0, 'BILL-8878 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(39, 1, 'bill', 23, 'paid', 0, '$151.51 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(40, 1, 'bill', 24, 'draft', 0, 'BILL-5318 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(41, 1, 'bill', 24, 'paid', 0, '$656.28 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(42, 1, 'bill', 25, 'draft', 0, 'BILL-93025 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(43, 1, 'bill', 25, 'partial', 0, '$101.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(44, 1, 'bill', 26, 'draft', 0, 'BILL-62111 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(45, 1, 'bill', 26, 'partial', 0, '$216.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(46, 1, 'bill', 27, 'draft', 0, 'BILL-56065 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(47, 1, 'bill', 27, 'partial', 0, '$39.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(48, 1, 'bill', 28, 'draft', 0, 'BILL-62981 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(49, 1, 'bill', 28, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(50, 1, 'bill', 29, 'draft', 0, 'BILL-26117 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(51, 1, 'bill', 29, 'partial', 0, '$277.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(52, 1, 'bill', 30, 'draft', 0, 'BILL-68154 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(53, 1, 'bill', 30, 'paid', 0, '$315.49 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(54, 1, 'bill', 31, 'draft', 0, 'BILL-48599 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(55, 1, 'bill', 31, 'paid', 0, '$432.52 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(56, 1, 'bill', 32, 'draft', 0, 'BILL-7191 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(57, 1, 'bill', 33, 'draft', 0, 'BILL-13880 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(58, 1, 'bill', 34, 'draft', 0, 'BILL-14288 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(59, 1, 'bill', 35, 'draft', 0, 'BILL-71564 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(60, 1, 'bill', 35, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(61, 1, 'bill', 36, 'draft', 0, 'BILL-60579 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(62, 1, 'bill', 36, 'partial', 0, '$55.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(63, 1, 'bill', 37, 'draft', 0, 'BILL-31475 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(64, 1, 'bill', 37, 'partial', 0, '$195.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(65, 1, 'bill', 38, 'draft', 0, 'BILL-52465 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(66, 1, 'bill', 38, 'partial', 0, '$260.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(67, 1, 'bill', 39, 'draft', 0, 'BILL-6368 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(68, 1, 'bill', 39, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(69, 1, 'bill', 40, 'draft', 0, 'BILL-14357 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(70, 1, 'bill', 41, 'draft', 0, 'BILL-68553 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(71, 1, 'bill', 41, 'partial', 0, '$299.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(72, 1, 'bill', 42, 'draft', 0, 'BILL-88437 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(73, 1, 'bill', 42, 'paid', 0, '$426.00 Payment', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(74, 1, 'bill', 43, 'draft', 0, 'BILL-45914 added!', 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(75, 1, 'bill', 43, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(76, 1, 'bill', 44, 'draft', 0, 'BILL-43917 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(77, 1, 'bill', 45, 'draft', 0, 'BILL-92671 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(78, 1, 'bill', 45, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(79, 1, 'bill', 46, 'draft', 0, 'BILL-44886 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(80, 1, 'bill', 46, 'partial', 0, '$191.00 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(81, 1, 'bill', 47, 'draft', 0, 'BILL-57282 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(82, 1, 'bill', 47, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(83, 1, 'bill', 48, 'draft', 0, 'BILL-28671 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(84, 1, 'bill', 48, 'paid', 0, '$818.21 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(85, 1, 'bill', 49, 'draft', 0, 'BILL-41625 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(86, 1, 'bill', 50, 'draft', 0, 'BILL-93983 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(87, 1, 'bill', 50, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(88, 1, 'bill', 51, 'draft', 0, 'BILL-89175 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(89, 1, 'bill', 51, 'paid', 0, '$98.99 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(90, 1, 'bill', 52, 'draft', 0, 'BILL-43978 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(91, 1, 'bill', 52, 'paid', 0, '$434.15 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(92, 1, 'bill', 53, 'draft', 0, 'BILL-68840 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(93, 1, 'bill', 53, 'paid', 0, '$684.40 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(94, 1, 'bill', 54, 'draft', 0, 'BILL-47342 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(95, 1, 'bill', 54, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(96, 1, 'bill', 55, 'draft', 0, 'BILL-58208 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(97, 1, 'bill', 55, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(98, 1, 'bill', 56, 'draft', 0, 'BILL-40702 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(99, 1, 'bill', 56, 'partial', 0, '$311.00 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(100, 1, 'bill', 57, 'draft', 0, 'BILL-87069 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(101, 1, 'bill', 57, 'paid', 0, '$639.31 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(102, 1, 'bill', 58, 'draft', 0, 'BILL-83102 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(103, 1, 'bill', 59, 'draft', 0, 'BILL-21006 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(104, 1, 'bill', 60, 'draft', 0, 'BILL-28152 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(105, 1, 'bill', 61, 'draft', 0, 'BILL-52398 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(106, 1, 'bill', 61, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(107, 1, 'bill', 62, 'draft', 0, 'BILL-93823 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(108, 1, 'bill', 63, 'draft', 0, 'BILL-33709 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(109, 1, 'bill', 63, 'paid', 0, '$381.61 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(110, 1, 'bill', 64, 'draft', 0, 'BILL-54559 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(111, 1, 'bill', 64, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(112, 1, 'bill', 65, 'draft', 0, 'BILL-65817 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(113, 1, 'bill', 65, 'paid', 0, '$464.60 Payment', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(114, 1, 'bill', 66, 'draft', 0, 'BILL-45495 added!', 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(115, 1, 'bill', 66, 'partial', 0, '$39.00 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(116, 1, 'bill', 67, 'draft', 0, 'BILL-32721 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(117, 1, 'bill', 67, 'paid', 0, '$698.60 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(118, 1, 'bill', 68, 'draft', 0, 'BILL-88619 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(119, 1, 'bill', 68, 'paid', 0, '$75.11 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(120, 1, 'bill', 69, 'draft', 0, 'BILL-54174 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(121, 1, 'bill', 69, 'partial', 0, '$106.00 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(122, 1, 'bill', 70, 'draft', 0, 'BILL-21123 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(123, 1, 'bill', 70, 'paid', 0, '$827.26 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(124, 1, 'bill', 71, 'draft', 0, 'BILL-23253 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(125, 1, 'bill', 72, 'draft', 0, 'BILL-76635 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(126, 1, 'bill', 72, 'partial', 0, '$204.00 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(127, 1, 'bill', 73, 'draft', 0, 'BILL-87142 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(128, 1, 'bill', 73, 'partial', 0, '$174.00 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(129, 1, 'bill', 74, 'draft', 0, 'BILL-63897 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(130, 1, 'bill', 74, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(131, 1, 'bill', 75, 'draft', 0, 'BILL-5297 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(132, 1, 'bill', 75, 'paid', 0, '$175.66 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(133, 1, 'bill', 76, 'draft', 0, 'BILL-80229 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(134, 1, 'bill', 76, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(135, 1, 'bill', 77, 'draft', 0, 'BILL-11785 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(136, 1, 'bill', 77, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(137, 1, 'bill', 78, 'draft', 0, 'BILL-15616 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(138, 1, 'bill', 78, 'paid', 0, '$727.13 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(139, 1, 'bill', 79, 'draft', 0, 'BILL-87388 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(140, 1, 'bill', 79, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(141, 1, 'bill', 80, 'draft', 0, 'BILL-75697 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(142, 1, 'bill', 80, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(143, 1, 'bill', 81, 'draft', 0, 'BILL-27405 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(144, 1, 'bill', 81, 'partial', 0, '$16.00 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(145, 1, 'bill', 82, 'draft', 0, 'BILL-54215 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(146, 1, 'bill', 82, 'partial', 0, '$125.00 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(147, 1, 'bill', 83, 'draft', 0, 'BILL-1212 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(148, 1, 'bill', 84, 'draft', 0, 'BILL-6484 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(149, 1, 'bill', 85, 'draft', 0, 'BILL-80832 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(150, 1, 'bill', 86, 'draft', 0, 'BILL-39669 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(151, 1, 'bill', 86, 'partial', 0, '$276.00 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(152, 1, 'bill', 87, 'draft', 0, 'BILL-85376 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(153, 1, 'bill', 87, 'paid', 0, '$234.88 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(154, 1, 'bill', 88, 'draft', 0, 'BILL-80271 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(155, 1, 'bill', 89, 'draft', 0, 'BILL-23124 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(156, 1, 'bill', 89, 'paid', 0, '$823.26 Payment', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(157, 1, 'bill', 90, 'draft', 0, 'BILL-29352 added!', 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(158, 1, 'bill', 90, 'partial', 0, '$308.00 Payment', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(159, 1, 'bill', 91, 'draft', 0, 'BILL-80678 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(160, 1, 'bill', 91, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(161, 1, 'bill', 92, 'draft', 0, 'BILL-18022 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(162, 1, 'bill', 92, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(163, 1, 'bill', 93, 'draft', 0, 'BILL-51891 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(164, 1, 'bill', 93, 'partial', 0, '$110.00 Payment', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(165, 1, 'bill', 94, 'draft', 0, 'BILL-93516 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(166, 1, 'bill', 94, 'paid', 0, '$653.59 Payment', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(167, 1, 'bill', 95, 'draft', 0, 'BILL-13201 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(168, 1, 'bill', 95, 'partial', 0, '$54.00 Payment', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(169, 1, 'bill', 96, 'draft', 0, 'BILL-19081 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(170, 1, 'bill', 96, 'received', 0, 'Bill marked as received!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(171, 1, 'bill', 97, 'draft', 0, 'BILL-12045 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(172, 1, 'bill', 97, 'paid', 0, '$756.53 Payment', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(173, 1, 'bill', 98, 'draft', 0, 'BILL-79937 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(174, 1, 'bill', 98, 'paid', 0, '$62.70 Payment', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(175, 1, 'bill', 99, 'draft', 0, 'BILL-46641 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(176, 1, 'bill', 99, 'paid', 0, '$440.46 Payment', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(177, 1, 'bill', 100, 'draft', 0, 'BILL-94298 added!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(178, 1, 'bill', 100, 'cancelled', 0, 'Bill marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(179, 1, 'invoice', 101, 'draft', 0, 'INV-52683 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(180, 1, 'invoice', 101, 'paid', 0, '$99.45 Payment', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(181, 1, 'invoice', 102, 'draft', 0, 'INV-60388 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(182, 1, 'invoice', 103, 'draft', 0, 'INV-53780 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(183, 1, 'invoice', 104, 'draft', 0, 'INV-9497 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(184, 1, 'invoice', 104, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(185, 1, 'invoice', 105, 'draft', 0, 'INV-4572 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(186, 1, 'invoice', 105, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(187, 1, 'invoice', 106, 'draft', 0, 'INV-49958 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(188, 1, 'invoice', 106, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(189, 1, 'invoice', 107, 'draft', 0, 'INV-43497 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(190, 1, 'invoice', 107, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(191, 1, 'invoice', 108, 'draft', 0, 'INV-13113 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(192, 1, 'invoice', 108, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(193, 1, 'invoice', 109, 'draft', 0, 'INV-22748 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(194, 1, 'invoice', 109, 'partial', 0, '$97.00 Payment', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(195, 1, 'invoice', 110, 'draft', 0, 'INV-92536 added!', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(196, 1, 'invoice', 110, 'paid', 0, '$494.69 Payment', 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(197, 1, 'invoice', 111, 'draft', 0, 'INV-81334 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(198, 1, 'invoice', 111, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(199, 1, 'invoice', 112, 'draft', 0, 'INV-93901 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(200, 1, 'invoice', 112, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(201, 1, 'invoice', 113, 'draft', 0, 'INV-44330 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(202, 1, 'invoice', 114, 'draft', 0, 'INV-47406 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(203, 1, 'invoice', 114, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(204, 1, 'invoice', 115, 'draft', 0, 'INV-63192 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(205, 1, 'invoice', 115, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(206, 1, 'invoice', 116, 'draft', 0, 'INV-87181 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(207, 1, 'invoice', 116, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(208, 1, 'invoice', 117, 'draft', 0, 'INV-98531 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(209, 1, 'invoice', 117, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(210, 1, 'invoice', 118, 'draft', 0, 'INV-19002 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(211, 1, 'invoice', 118, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(212, 1, 'invoice', 119, 'draft', 0, 'INV-45852 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(213, 1, 'invoice', 119, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(214, 1, 'invoice', 120, 'draft', 0, 'INV-83713 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(215, 1, 'invoice', 120, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(216, 1, 'invoice', 121, 'draft', 0, 'INV-19137 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(217, 1, 'invoice', 122, 'draft', 0, 'INV-41286 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(218, 1, 'invoice', 122, 'partial', 0, '$181.00 Payment', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(219, 1, 'invoice', 123, 'draft', 0, 'INV-28693 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(220, 1, 'invoice', 123, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(221, 1, 'invoice', 124, 'draft', 0, 'INV-36244 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(222, 1, 'invoice', 124, 'partial', 0, '$224.00 Payment', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(223, 1, 'invoice', 125, 'draft', 0, 'INV-48234 added!', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(224, 1, 'invoice', 125, 'paid', 0, '$906.75 Payment', 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(225, 1, 'invoice', 126, 'draft', 0, 'INV-53288 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(226, 1, 'invoice', 126, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(227, 1, 'invoice', 127, 'draft', 0, 'INV-25602 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(228, 1, 'invoice', 128, 'draft', 0, 'INV-36551 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(229, 1, 'invoice', 128, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(230, 1, 'invoice', 129, 'draft', 0, 'INV-56381 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(231, 1, 'invoice', 129, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(232, 1, 'invoice', 130, 'draft', 0, 'INV-14883 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(233, 1, 'invoice', 130, 'partial', 0, '$226.00 Payment', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(234, 1, 'invoice', 131, 'draft', 0, 'INV-77590 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(235, 1, 'invoice', 132, 'draft', 0, 'INV-8424 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(236, 1, 'invoice', 132, 'partial', 0, '$183.00 Payment', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(237, 1, 'invoice', 133, 'draft', 0, 'INV-10354 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(238, 1, 'invoice', 133, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(239, 1, 'invoice', 134, 'draft', 0, 'INV-71528 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(240, 1, 'invoice', 135, 'draft', 0, 'INV-20394 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(241, 1, 'invoice', 135, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(242, 1, 'invoice', 136, 'draft', 0, 'INV-54828 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(243, 1, 'invoice', 137, 'draft', 0, 'INV-69040 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(244, 1, 'invoice', 137, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(245, 1, 'invoice', 138, 'draft', 0, 'INV-34515 added!', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(246, 1, 'invoice', 138, 'paid', 0, '$739.03 Payment', 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(247, 1, 'invoice', 139, 'draft', 0, 'INV-8951 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(248, 1, 'invoice', 139, 'paid', 0, '$726.18 Payment', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(249, 1, 'invoice', 140, 'draft', 0, 'INV-24259 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(250, 1, 'invoice', 140, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(251, 1, 'invoice', 141, 'draft', 0, 'INV-74765 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(252, 1, 'invoice', 141, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(253, 1, 'invoice', 142, 'draft', 0, 'INV-91320 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(254, 1, 'invoice', 142, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(255, 1, 'invoice', 143, 'draft', 0, 'INV-38238 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(256, 1, 'invoice', 143, 'paid', 0, '$981.60 Payment', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(257, 1, 'invoice', 144, 'draft', 0, 'INV-26605 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(258, 1, 'invoice', 144, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(259, 1, 'invoice', 145, 'draft', 0, 'INV-20456 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(260, 1, 'invoice', 146, 'draft', 0, 'INV-5152 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(261, 1, 'invoice', 147, 'draft', 0, 'INV-54121 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(262, 1, 'invoice', 148, 'draft', 0, 'INV-12960 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(263, 1, 'invoice', 148, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(264, 1, 'invoice', 149, 'draft', 0, 'INV-53663 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(265, 1, 'invoice', 149, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(266, 1, 'invoice', 150, 'draft', 0, 'INV-89714 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(267, 1, 'invoice', 150, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(268, 1, 'invoice', 151, 'draft', 0, 'INV-8126 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(269, 1, 'invoice', 151, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(270, 1, 'invoice', 152, 'draft', 0, 'INV-53441 added!', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(271, 1, 'invoice', 152, 'partial', 0, '$55.00 Payment', 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(272, 1, 'invoice', 153, 'draft', 0, 'INV-6835 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(273, 1, 'invoice', 153, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(274, 1, 'invoice', 154, 'draft', 0, 'INV-50068 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(275, 1, 'invoice', 154, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(276, 1, 'invoice', 155, 'draft', 0, 'INV-80484 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(277, 1, 'invoice', 155, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(278, 1, 'invoice', 156, 'draft', 0, 'INV-4870 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(279, 1, 'invoice', 156, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(280, 1, 'invoice', 157, 'draft', 0, 'INV-13178 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(281, 1, 'invoice', 157, 'paid', 0, '$158.39 Payment', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(282, 1, 'invoice', 158, 'draft', 0, 'INV-91666 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(283, 1, 'invoice', 158, 'partial', 0, '$283.00 Payment', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(284, 1, 'invoice', 159, 'draft', 0, 'INV-3020 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(285, 1, 'invoice', 160, 'draft', 0, 'INV-57821 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(286, 1, 'invoice', 160, 'paid', 0, '$435.66 Payment', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(287, 1, 'invoice', 161, 'draft', 0, 'INV-17443 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(288, 1, 'invoice', 161, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(289, 1, 'invoice', 162, 'draft', 0, 'INV-54208 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(290, 1, 'invoice', 163, 'draft', 0, 'INV-23354 added!', 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(291, 1, 'invoice', 163, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(292, 1, 'invoice', 164, 'draft', 0, 'INV-62438 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(293, 1, 'invoice', 164, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(294, 1, 'invoice', 165, 'draft', 0, 'INV-6224 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(295, 1, 'invoice', 166, 'draft', 0, 'INV-36196 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(296, 1, 'invoice', 166, 'partial', 0, '$127.00 Payment', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(297, 1, 'invoice', 167, 'draft', 0, 'INV-52580 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(298, 1, 'invoice', 167, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(299, 1, 'invoice', 168, 'draft', 0, 'INV-9313 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(300, 1, 'invoice', 169, 'draft', 0, 'INV-83466 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(301, 1, 'invoice', 169, 'paid', 0, '$422.50 Payment', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(302, 1, 'invoice', 170, 'draft', 0, 'INV-88734 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(303, 1, 'invoice', 170, 'partial', 0, '$105.00 Payment', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(304, 1, 'invoice', 171, 'draft', 0, 'INV-28717 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(305, 1, 'invoice', 171, 'paid', 0, '$170.77 Payment', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(306, 1, 'invoice', 172, 'draft', 0, 'INV-51152 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(307, 1, 'invoice', 172, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(308, 1, 'invoice', 173, 'draft', 0, 'INV-6351 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(309, 1, 'invoice', 173, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(310, 1, 'invoice', 174, 'draft', 0, 'INV-96156 added!', 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(311, 1, 'invoice', 174, 'paid', 0, '$760.28 Payment', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(312, 1, 'invoice', 175, 'draft', 0, 'INV-91810 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(313, 1, 'invoice', 175, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(314, 1, 'invoice', 176, 'draft', 0, 'INV-83193 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(315, 1, 'invoice', 176, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(316, 1, 'invoice', 177, 'draft', 0, 'INV-38327 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(317, 1, 'invoice', 177, 'paid', 0, '$101.96 Payment', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(318, 1, 'invoice', 178, 'draft', 0, 'INV-63225 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(319, 1, 'invoice', 179, 'draft', 0, 'INV-16938 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(320, 1, 'invoice', 179, 'partial', 0, '$185.00 Payment', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(321, 1, 'invoice', 180, 'draft', 0, 'INV-2808 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(322, 1, 'invoice', 180, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(323, 1, 'invoice', 181, 'draft', 0, 'INV-61787 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(324, 1, 'invoice', 181, 'paid', 0, '$394.31 Payment', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(325, 1, 'invoice', 182, 'draft', 0, 'INV-53164 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(326, 1, 'invoice', 182, 'partial', 0, '$103.00 Payment', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(327, 1, 'invoice', 183, 'draft', 0, 'INV-43300 added!', 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(328, 1, 'invoice', 183, 'paid', 0, '$694.62 Payment', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(329, 1, 'invoice', 184, 'draft', 0, 'INV-58791 added!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(330, 1, 'invoice', 184, 'partial', 0, '$14.00 Payment', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(331, 1, 'invoice', 185, 'draft', 0, 'INV-64185 added!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(332, 1, 'invoice', 185, 'paid', 0, '$327.77 Payment', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(333, 1, 'invoice', 186, 'draft', 0, 'INV-96162 added!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(334, 1, 'invoice', 186, 'partial', 0, '$108.00 Payment', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(335, 1, 'invoice', 187, 'draft', 0, 'INV-35779 added!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(336, 1, 'invoice', 187, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(337, 1, 'invoice', 188, 'draft', 0, 'INV-43738 added!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(338, 1, 'invoice', 188, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(339, 1, 'invoice', 189, 'draft', 0, 'INV-27785 added!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(340, 1, 'invoice', 190, 'draft', 0, 'INV-84778 added!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(341, 1, 'invoice', 190, 'paid', 0, '$942.91 Payment', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(342, 1, 'invoice', 191, 'draft', 0, 'INV-35450 added!', 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(343, 1, 'invoice', 191, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(344, 1, 'invoice', 192, 'draft', 0, 'INV-55383 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(345, 1, 'invoice', 192, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(346, 1, 'invoice', 193, 'draft', 0, 'INV-2082 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(347, 1, 'invoice', 193, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(348, 1, 'invoice', 194, 'draft', 0, 'INV-14501 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(349, 1, 'invoice', 195, 'draft', 0, 'INV-6874 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(350, 1, 'invoice', 195, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(351, 1, 'invoice', 196, 'draft', 0, 'INV-26213 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(352, 1, 'invoice', 196, 'sent', 0, 'Invoice marked as sent!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(353, 1, 'invoice', 197, 'draft', 0, 'INV-90052 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(354, 1, 'invoice', 197, 'viewed', 0, 'Invoice marked as viewed!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(355, 1, 'invoice', 198, 'draft', 0, 'INV-55324 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(356, 1, 'invoice', 198, 'partial', 0, '$213.00 Payment', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(357, 1, 'invoice', 199, 'draft', 0, 'INV-61292 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(358, 1, 'invoice', 199, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(359, 1, 'invoice', 200, 'draft', 0, 'INV-80687 added!', 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(360, 1, 'invoice', 104, 'cancelled', 0, 'Invoice marked as cancelled!', 'core::ui', '1', '2022-02-24 08:07:24', '2022-02-24 08:07:24', NULL),
(361, 1, 'bill', 201, 'draft', 0, '738 added!', 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(362, 1, 'invoice', 202, 'draft', 0, '84 added!', 'core::ui', '1', '2022-03-06 07:40:21', '2022-03-06 07:40:21', NULL),
(363, 1, 'bill', 203, 'draft', 0, 'BILL-00102 added!', 'core::ui', '1', '2022-03-07 05:23:57', '2022-03-07 05:23:57', NULL),
(364, 1, 'invoice', 204, 'draft', 0, '811 added!', 'core::ui', '1', '2022-03-09 09:30:41', '2022-03-09 09:30:41', NULL),
(365, 1, 'invoice', 205, 'draft', 0, 'INV-00103 added!', 'core::ui', '1', '2022-07-03 08:12:37', '2022-07-03 08:12:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_document_items`
--

CREATE TABLE `p9k_document_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `quantity` double(7,2) NOT NULL,
  `price` double(15,4) NOT NULL,
  `tax` double(15,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(191) NOT NULL DEFAULT 'normal',
  `discount_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `total` double(15,4) NOT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_document_items`
--

INSERT INTO `p9k_document_items` (`id`, `company_id`, `type`, `document_id`, `item_id`, `name`, `description`, `sku`, `quantity`, `price`, `tax`, `discount_type`, `discount_rate`, `total`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'bill', 1, 96, 'Aliquid.', 'Eum voluptates qui dignissimos voluptatem dolores possimus dolor. Repellat officia illo asperiores magni enim hic. Voluptatem sapiente corporis placeat optio iusto inventore.', NULL, 1.00, 653.6200, -106.4100, 'percentage', 0.0000, 653.6200, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(2, 1, 'bill', 2, 75, 'Voluptatem.', 'Est hic voluptas ea iste ipsum. Illum ut necessitatibus fuga sunt autem accusantium voluptates. Sed molestiae quia non ut. Voluptatem est commodi atque qui.', NULL, 1.00, 333.8000, 51.6100, 'percentage', 0.0000, 282.1900, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(3, 1, 'bill', 3, 66, 'Vero aut quo.', 'Nesciunt dolorum sed corporis accusantium quam magnam qui. Doloremque omnis exercitationem aliquid deserunt. Reiciendis aut laboriosam qui sit quo laboriosam quasi inventore.', NULL, 1.00, 902.1300, 95.0700, 'percentage', 0.0000, 807.0600, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(4, 1, 'bill', 4, 81, 'Eum dolores.', 'Exercitationem totam illo cumque voluptatem sed ut maxime. Quam quis distinctio quasi ut. Commodi at omnis sint ducimus aut blanditiis.', NULL, 1.00, 449.6100, 45.3600, 'percentage', 0.0000, 404.2500, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(5, 1, 'bill', 5, 69, 'Et est et et.', 'Ipsam fugit qui nobis. Eveniet quis recusandae provident incidunt sint. Suscipit nulla sapiente molestiae ut dolor omnis. Iste ipsum consequuntur illum.', NULL, 1.00, 363.8400, 38.7500, 'percentage', 0.0000, 325.0900, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(6, 1, 'bill', 6, 3, 'Id harum.', 'Voluptatibus similique aut itaque ut. Ut reprehenderit modi beatae incidunt accusamus. Quisquam sit temporibus repudiandae. Ea sed sequi esse nihil autem.', NULL, 1.00, 86.5300, -15.6400, 'percentage', 0.0000, 86.5300, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(7, 1, 'bill', 7, 95, 'Reprehenderit.', 'Dicta natus dolorem dolorem eos. Quo veritatis corrupti est accusamus. Earum excepturi ducimus ratione deserunt dolores.', NULL, 1.00, 556.2400, 58.6200, 'percentage', 0.0000, 497.6200, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(8, 1, 'bill', 8, 75, 'Voluptatem.', 'Iusto fuga voluptas et dolore soluta asperiores odio eligendi. Vero deleniti maiores natus enim doloremque ducimus. Soluta occaecati quasi nisi quis necessitatibus dolores. Et autem odit modi sit.', NULL, 1.00, 824.8500, -134.2900, 'percentage', 0.0000, 824.8500, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(9, 1, 'bill', 9, 83, 'Qui sint eos.', 'Modi eum et inventore ut ut velit et. Assumenda maiores dicta impedit ratione. Alias repudiandae neque sit eos recusandae.', NULL, 1.00, 196.9200, 20.7500, 'percentage', 0.0000, 176.1700, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(10, 1, 'bill', 10, 39, 'Veniam ipsum.', 'Consequatur quo nihil ea voluptatem repellat modi veritatis itaque. Dolorem rem eum nulla voluptatum temporibus et odio. Et laboriosam in aut sapiente.', NULL, 1.00, 809.6000, 132.5300, 'percentage', 0.0000, 809.6000, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(11, 1, 'bill', 11, 27, 'Velit tenetur.', 'Quod laboriosam ut eaque voluptates omnis. Veritatis dolorem rerum et. Tempora enim laudantium consequatur inventore ut. Ea excepturi ut quae eum aut maiores est.', NULL, 1.00, 508.0400, -91.8000, 'percentage', 0.0000, 508.0400, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(12, 1, 'bill', 12, 44, 'Consectetur et.', 'Voluptatem blanditiis ullam natus et debitis. Eveniet quo ratione sunt aut natus molestiae eum. Omnis natus quia atque voluptatem et.', NULL, 1.00, 971.6900, 106.1100, 'percentage', 0.0000, 971.6900, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(13, 1, 'bill', 13, 69, 'Et est et et.', 'Rerum a laborum ullam. Placeat dolorem soluta quam voluptas. Perferendis ipsam quibusdam consequatur molestiae nemo quo aut.', NULL, 1.00, 161.1700, 17.6000, 'percentage', 0.0000, 161.1700, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(14, 1, 'bill', 14, 41, 'Voluptate.', 'Tempore molestiae non reprehenderit error. Dolore quia temporibus in distinctio error molestias labore. Distinctio ut explicabo hic at. Est est officia ut.', NULL, 1.00, 400.2100, 65.5100, 'percentage', 0.0000, 400.2100, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(15, 1, 'bill', 15, 30, 'Quae expedita.', 'Velit sed sed minima alias. Quod iste corporis dolorem. Dolorem totam est ratione molestias hic quasi.', NULL, 1.00, 392.9000, -71.0000, 'percentage', 0.0000, 392.9000, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(16, 1, 'bill', 16, 44, 'Consectetur et.', 'Veniam ea et amet. Amet recusandae quasi nam eaque laudantium eveniet. Possimus beatae laboriosam et recusandae.', NULL, 1.00, 637.5500, -86.5800, 'percentage', 0.0000, 637.5500, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(17, 1, 'bill', 17, 84, 'Ab eum eveniet.', 'Ipsam ut sed deleniti qui aspernatur consequatur. Et earum sed laborum excepturi qui et dolorum. Ut est rerum nostrum nemo aliquam. At placeat saepe voluptatibus ea voluptatem.', NULL, 1.00, 916.5000, 141.7100, 'percentage', 0.0000, 774.7900, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(18, 1, 'bill', 18, 92, 'Suscipit.', 'Nihil aliquid incidunt at nemo nam. Temporibus non hic reprehenderit error voluptates ipsum aut. Vel culpa sed fugit velit sit. Culpa dolor molestiae rerum necessitatibus.', NULL, 1.00, 496.9200, 52.3700, 'percentage', 0.0000, 444.5500, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(19, 1, 'bill', 19, 76, 'Officiis.', 'Quo et possimus est aut omnis quis. Sit eum architecto qui nam ratione in qui. Consequatur eaque non voluptas architecto aliquam maiores.', NULL, 1.00, 81.0400, 8.1800, 'percentage', 0.0000, 72.8600, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(20, 1, 'bill', 20, 30, 'Quae expedita.', 'Temporibus nostrum esse aut exercitationem. Doloremque velit voluptatibus harum nostrum nemo quae. Provident sunt praesentium sed nesciunt. Eveniet voluptatem est exercitationem dolores sint.', NULL, 1.00, 600.3000, 63.9300, 'percentage', 0.0000, 536.3700, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(21, 1, 'bill', 21, 46, 'Nihil vel.', 'Unde saepe non ut quis pariatur rerum. Rem cumque asperiores quia sit voluptatem. Quibusdam nisi at aut illum aut adipisci nostrum. Incidunt consequatur alias in illo perspiciatis inventore amet.', NULL, 1.00, 149.3200, -20.2800, 'percentage', 0.0000, 149.3200, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(22, 1, 'bill', 22, 11, 'Et quod.', 'Earum quaerat quis vel hic. Doloremque sint voluptate quibusdam culpa molestiae necessitatibus quo. Ipsum eius occaecati odit neque sit.', NULL, 1.00, 699.3300, 73.7000, 'percentage', 0.0000, 625.6300, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(23, 1, 'bill', 23, 41, 'Voluptate.', 'Et ea mollitia et hic. Facilis maiores dolor ipsa consectetur aut. Consequatur nisi optio ex iure voluptas.', NULL, 1.00, 151.5100, 16.1400, 'percentage', 0.0000, 135.3700, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(24, 1, 'bill', 24, 77, 'Aspernatur.', 'Architecto suscipit minima commodi ex facere delectus rerum. Accusamus earum molestiae hic voluptas quisquam. Et sequi non voluptas.', NULL, 1.00, 591.6700, 64.6100, 'percentage', 0.0000, 591.6700, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(25, 1, 'bill', 25, 46, 'Nihil vel.', 'A nam consectetur eum. Eum qui dignissimos sit dolor omnis nihil ad. Sequi iste nihil modi. Eius accusamus aut animi culpa quis ipsa provident. Et harum quo aliquam numquam.', NULL, 1.00, 305.2400, 47.2000, 'percentage', 0.0000, 258.0400, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(26, 1, 'bill', 26, 58, 'Fugiat.', 'Dicta a voluptatibus culpa. Beatae aperiam ut expedita numquam ut consequatur aliquam ad. Incidunt eveniet minima molestiae pariatur.', NULL, 1.00, 650.0300, 70.9800, 'percentage', 0.0000, 650.0300, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(27, 1, 'bill', 27, 61, 'Accusamus aut.', 'Rem saepe ut magnam sunt ipsam. Vero quasi harum facilis sapiente quae dolor inventore aut. Corporis voluptas occaecati adipisci tenetur quae. Quam autem nesciunt molestias et eum pariatur.', NULL, 1.00, 118.7000, 12.5100, 'percentage', 0.0000, 106.1900, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(28, 1, 'bill', 28, 83, 'Qui sint eos.', 'Deleniti quo dolores autem sunt quisquam distinctio nulla voluptatibus. Totam sed eum perspiciatis ut. At sequi minus unde qui fugit est.', NULL, 1.00, 788.0100, 129.0000, 'percentage', 0.0000, 788.0100, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(29, 1, 'bill', 29, 91, 'Ullam cumque.', 'Architecto et explicabo veritatis quod minus omnis iste. Veritatis sequi ut sit aliquam pariatur nobis. Sit eius quaerat omnis iure. Odit ea autem atque enim labore id.', NULL, 1.00, 831.9700, 88.6100, 'percentage', 0.0000, 743.3600, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(30, 1, 'bill', 30, 70, 'Sequi hic.', 'Illum repellat aliquam est rerum. Quam ea dolorum consequuntur. Illum facere earum dolor.', NULL, 1.00, 385.0700, -69.5800, 'percentage', 0.0000, 385.0700, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(31, 1, 'bill', 31, 99, 'Provident aut.', 'Cupiditate sunt et quas modi. Ducimus accusantium minus ipsum ducimus molestias aut fugit. Cumque sint et distinctio autem natus.', NULL, 1.00, 516.6300, -84.1100, 'percentage', 0.0000, 516.6300, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(32, 1, 'bill', 32, 58, 'Fugiat.', 'Quas eum facilis ut quis. Aliquid et impedit reprehenderit incidunt reiciendis debitis. Dolorem et dolorum fugit sunt nostrum nobis.', NULL, 1.00, 453.2900, 45.7300, 'percentage', 0.0000, 407.5600, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(33, 1, 'bill', 33, 83, 'Qui sint eos.', 'Nihil quia aliquam earum. Itaque quia sed sit qui. Provident animi temporibus soluta sint cupiditate. Unde tenetur corrupti voluptatum molestias.', NULL, 1.00, 227.1400, -30.8500, 'percentage', 0.0000, 227.1400, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(34, 1, 'bill', 34, 29, 'Neque.', 'Est eius autem accusamus dolor consectetur est. Dignissimos sapiente unde dolor modi ducimus tenetur. In perferendis ut perspiciatis nulla doloremque maiores.', NULL, 1.00, 993.9700, -179.6100, 'percentage', 0.0000, 993.9700, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(35, 1, 'bill', 35, 81, 'Eum dolores.', 'Voluptatem odio vel qui enim corporis reprehenderit. Debitis incidunt vel dolor maxime. Explicabo delectus aut nulla. Ducimus in architecto eum. Reprehenderit voluptatem quod ut.', NULL, 1.00, 476.0600, 77.9300, 'percentage', 0.0000, 476.0600, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(36, 1, 'bill', 36, 78, 'Ex id qui est.', 'Voluptatem facere nesciunt aut qui consequatur et iste aut. Quae ea enim atque aliquam. Ea non error molestiae et magni eos. Rerum reiciendis eaque nam delectus quo.', NULL, 1.00, 167.0400, -27.1900, 'percentage', 0.0000, 167.0400, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(37, 1, 'bill', 37, 78, 'Ex id qui est.', 'Aliquam non pariatur vel autem labore officiis. Consequatur inventore beatae sapiente ducimus id. Aliquam ut ea aut aliquid.', NULL, 1.00, 586.6200, 59.1800, 'percentage', 0.0000, 527.4400, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(38, 1, 'bill', 38, 59, 'Totam eos.', 'Sint quis odit rerum omnis est laborum aut. Possimus non ullam maiores amet illo. Omnis nam illo ipsum esse alias odio quis.', NULL, 1.00, 782.2600, -127.3500, 'percentage', 0.0000, 782.2600, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(39, 1, 'bill', 39, 73, 'Ullam.', 'Inventore omnis tempore dolorem ut. Asperiores repellendus eum veritatis voluptates. Repudiandae quia fugiat ratione facere labore saepe voluptate.', NULL, 1.00, 558.0300, 58.8100, 'percentage', 0.0000, 499.2200, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(40, 1, 'bill', 40, 86, 'Et unde illum.', 'Aut cumque nesciunt sed quisquam qui soluta facilis omnis. Qui nam error et. Sed et at et suscipit eum. Voluptatem quasi et rerum vel aut.', NULL, 1.00, 252.5100, 39.0400, 'percentage', 0.0000, 213.4700, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(41, 1, 'bill', 41, 67, 'Vitae a.', 'Id sit totam ut assumenda. Sed odio error soluta quae neque voluptas iste. Consequuntur recusandae accusantium enim porro.', NULL, 1.00, 899.6500, 139.1000, 'percentage', 0.0000, 760.5500, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(42, 1, 'bill', 42, 99, 'Provident aut.', 'Laudantium tempora doloremque harum voluptas architecto excepturi praesentium rerum. Eligendi non illum et eveniet voluptate. Non qui blanditiis eos et dolor quaerat.', NULL, 1.00, 508.8400, -82.8400, 'percentage', 0.0000, 508.8400, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(43, 1, 'bill', 43, 3, 'Id harum.', 'Voluptates necessitatibus corporis ipsa beatae. Reprehenderit accusantium magni voluptatum veritatis nisi quibusdam. Minima aut excepturi iusto corporis aut. Minima est expedita iusto eos quo.', NULL, 1.00, 40.2500, -5.4700, 'percentage', 0.0000, 40.2500, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(44, 1, 'bill', 44, 44, 'Consectetur et.', 'Veritatis perspiciatis ea eum blanditiis enim. Et quam dolor magnam. Sequi vel non nostrum esse ea eius. Dignissimos voluptas et et maxime.', NULL, 1.00, 784.2900, 128.3900, 'percentage', 0.0000, 784.2900, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(45, 1, 'bill', 45, 96, 'Aliquid.', 'Impedit eligendi ea animi. Ipsa aperiam suscipit et et alias rerum tempora rerum. Quibusdam ab omnis accusantium. Consequatur accusantium suscipit quos sapiente animi enim in.', NULL, 1.00, 330.2700, 51.8900, 'percentage', 0.0000, 278.3800, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(46, 1, 'bill', 46, 53, 'Mollitia et et.', 'Non optio voluptas error quidem debitis magnam. Consequatur ipsum aliquid commodi cumque. Labore mollitia in aliquam tempore inventore.', NULL, 1.00, 573.6300, 93.9000, 'percentage', 0.0000, 573.6300, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(47, 1, 'bill', 47, 75, 'Voluptatem.', 'Quo occaecati perspiciatis deleniti cum sit. Amet distinctio enim rerum dolorum dolorum sequi. Aut eos sunt dolorem reprehenderit ab qui officia corrupti.', NULL, 1.00, 251.0200, -40.8700, 'percentage', 0.0000, 251.0200, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(48, 1, 'bill', 48, 94, 'Praesentium.', 'Voluptatibus error exercitationem suscipit temporibus quo. Corporis debitis suscipit nostrum libero ex non. Impedit sed amet ut facere ipsa ipsa sed.', NULL, 1.00, 818.2100, 128.5500, 'percentage', 0.0000, 689.6600, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(49, 1, 'bill', 49, 67, 'Vitae a.', 'Facilis nostrum sed quia. Doloribus illum ut doloribus nulla voluptas quos sunt.', NULL, 1.00, 503.2700, 82.3900, 'percentage', 0.0000, 503.2700, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(50, 1, 'bill', 50, 43, 'Et ipsa ut in.', 'Occaecati natus vitae cumque sit voluptate. Et possimus quod est ut praesentium corporis dicta. Quis blanditiis architecto nihil maxime quas.', NULL, 1.00, 721.1200, 113.3000, 'percentage', 0.0000, 607.8200, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(51, 1, 'bill', 51, 15, 'Dicta nesciunt.', 'Qui beatae recusandae eos quaerat qui tempora dolores perspiciatis. Eaque labore ut ex qui aspernatur. Explicabo in aut qui doloribus provident sunt eveniet.', NULL, 1.00, 120.8200, -21.8300, 'percentage', 0.0000, 120.8200, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(52, 1, 'bill', 52, 84, 'Ab eum eveniet.', 'Velit vero quia vitae est ullam est nam. Consequatur neque natus ab error. Dignissimos omnis et aut sit excepturi.', NULL, 1.00, 434.1500, 45.7500, 'percentage', 0.0000, 388.4000, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(53, 1, 'bill', 53, 86, 'Et unde illum.', 'Recusandae repellendus beatae suscipit veritatis quae. Consectetur sed eos eius blanditiis expedita. Et facilis sint rem commodi minus vero omnis.', NULL, 1.00, 835.3500, -150.9500, 'percentage', 0.0000, 835.3500, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(54, 1, 'bill', 54, 29, 'Neque.', 'Et sint quo officiis doloremque qui exercitationem officiis voluptas. Eum asperiores architecto temporibus quidem.', NULL, 1.00, 824.9200, -112.0200, 'percentage', 0.0000, 824.9200, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(55, 1, 'bill', 55, 61, 'Accusamus aut.', 'Ut repellendus modi facilis. Laborum maxime pariatur quisquam praesentium. Aut id perferendis tenetur in nisi aperiam commodi. Et et quidem tempore quae.', NULL, 1.00, 720.4400, 76.7300, 'percentage', 0.0000, 643.7100, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(56, 1, 'bill', 56, 86, 'Et unde illum.', 'Atque maxime incidunt est placeat alias temporibus ipsa. Dicta ducimus pariatur molestiae tempore. Velit delectus tempora nihil fuga tenetur laudantium.', NULL, 1.00, 934.7600, 102.0800, 'percentage', 0.0000, 934.7600, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(57, 1, 'bill', 57, 70, 'Sequi hic.', 'Ex dolor error ut deserunt debitis. Vel quae atque et non porro. Et nulla voluptatum ut ut. Rerum similique non molestiae minus qui.', NULL, 1.00, 639.3100, 98.8500, 'percentage', 0.0000, 540.4600, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(58, 1, 'bill', 58, 70, 'Sequi hic.', 'Placeat et non exercitationem autem hic. Rerum excepturi quae sequi quis nesciunt. Unde tenetur tempora delectus totam ut ex ipsa. Quo et est doloremque quis ut quis.', NULL, 1.00, 961.5900, 102.4100, 'percentage', 0.0000, 859.1800, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(59, 1, 'bill', 59, 21, 'Explicabo.', 'Doloremque amet voluptas impedit et. Enim qui accusamus aspernatur. Praesentium temporibus fuga consectetur quo quisquam laboriosam nesciunt.', NULL, 1.00, 611.4800, 61.6900, 'percentage', 0.0000, 549.7900, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(60, 1, 'bill', 60, 43, 'Et ipsa ut in.', 'Facere recusandae aspernatur itaque. Ipsum aut placeat excepturi in delectus quae in. Ut doloremque rem quas assumenda omnis aut sed corporis. Sint et nostrum nesciunt sequi omnis qui totam.', NULL, 1.00, 814.5800, 127.9800, 'percentage', 0.0000, 686.6000, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(61, 1, 'bill', 61, 44, 'Consectetur et.', 'Necessitatibus et numquam placeat iusto consectetur laudantium. Consequuntur autem ut beatae ut quis rerum.', NULL, 1.00, 835.6800, 131.3000, 'percentage', 0.0000, 704.3800, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(62, 1, 'bill', 62, 83, 'Qui sint eos.', 'Pariatur eum repellendus voluptatem est mollitia. Tempora aut quos animi aliquid. Amet eius fugiat exercitationem labore. Sit maxime vitae quo fugiat ex.', NULL, 1.00, 702.4600, -126.9300, 'percentage', 0.0000, 702.4600, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(63, 1, 'bill', 63, 39, 'Veniam ipsum.', 'Et quia quis nesciunt repellat ut voluptas. Eum a quam quia doloremque recusandae commodi et. Neque dolor enim at rerum consectetur. Et fugit est tenetur voluptatem ex.', NULL, 1.00, 381.6100, 40.6400, 'percentage', 0.0000, 340.9700, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(64, 1, 'bill', 64, 66, 'Vero aut quo.', 'Est asperiores aut sequi sint voluptatum aut veritatis. Praesentium autem accusantium et omnis sed incidunt non.', NULL, 1.00, 588.5400, 62.0200, 'percentage', 0.0000, 526.5200, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(65, 1, 'bill', 65, 21, 'Explicabo.', 'Atque quos enim quibusdam tenetur repellat amet iusto exercitationem. Rerum dolorem dicta aut. Voluptatem et voluptas eaque minima voluptates.', NULL, 1.00, 464.6000, 48.9600, 'percentage', 0.0000, 415.6400, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(66, 1, 'bill', 66, 58, 'Fugiat.', 'Ea ipsum autem ipsum. Consectetur corporis consequuntur provident omnis. Ducimus quas consequatur autem et possimus qui. Nobis facere nostrum et vel id.', NULL, 1.00, 117.1900, -21.1800, 'percentage', 0.0000, 117.1900, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(67, 1, 'bill', 67, 72, 'Expedita optio.', 'Dolorum necessitatibus aut incidunt. Soluta iste sequi atque qui perferendis quis. Sit laborum quasi adipisci ad id aut consectetur deserunt.', NULL, 1.00, 698.6000, 109.7600, 'percentage', 0.0000, 588.8400, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(68, 1, 'bill', 68, 11, 'Et quod.', 'Dolorum et ut rerum magnam. Ut repudiandae sit id voluptate provident ut et.', NULL, 1.00, 91.6700, -16.5600, 'percentage', 0.0000, 91.6700, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(69, 1, 'bill', 69, 95, 'Reprehenderit.', 'Dolore libero necessitatibus est incidunt molestias at. Sit quas earum ut qui. Odio tempore velit sunt nihil repudiandae libero. Deleniti optio aliquam hic in aut ea.', NULL, 1.00, 318.9300, 49.3100, 'percentage', 0.0000, 269.6200, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(70, 1, 'bill', 70, 61, 'Accusamus aut.', 'Commodi sed voluptas delectus quos. Eum vitae quis enim eius beatae. Est quisquam quos distinctio dolores quae asperiores occaecati.', NULL, 1.00, 827.2600, 87.1800, 'percentage', 0.0000, 740.0800, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(71, 1, 'bill', 71, 69, 'Et est et et.', 'Minus culpa voluptatibus voluptatem commodi ratione molestiae. Nostrum sit laboriosam autem. Consequatur sed illum deleniti enim voluptas sed enim sit. Dolore autem ipsam laborum ea quia.', NULL, 1.00, 261.7100, -47.2900, 'percentage', 0.0000, 261.7100, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(72, 1, 'bill', 72, 43, 'Et ipsa ut in.', 'Deserunt qui qui rem sunt. Omnis eius est quaerat. Magnam qui voluptatem aut sit. Atque qui cumque quos et tenetur. Sint temporibus adipisci sed molestiae ut animi et.', NULL, 1.00, 612.1400, 61.7500, 'percentage', 0.0000, 550.3900, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(73, 1, 'bill', 73, 72, 'Expedita optio.', 'Ut eligendi tenetur ipsum voluptate rerum ad. Quam est impedit error et minus voluptatum.', NULL, 1.00, 523.9000, 81.0100, 'percentage', 0.0000, 442.8900, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(74, 1, 'bill', 74, 11, 'Et quod.', 'Molestiae similique corporis facere molestiae dolor. Qui debitis recusandae qui. Molestiae autem maiores et quos.', NULL, 1.00, 189.9200, 20.7400, 'percentage', 0.0000, 189.9200, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(75, 1, 'bill', 75, 68, 'Et minus.', 'Vero possimus ut consequatur odit id. Dolores illum est error eum facilis officiis atque. Inventore qui cum consequuntur.', NULL, 1.00, 150.9500, 24.7100, 'percentage', 0.0000, 150.9500, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(76, 1, 'bill', 76, 7, 'Rem quia.', 'Tenetur officiis reiciendis quia ipsum non quo illo magnam. Autem id rerum in voluptatem ipsam. Et ut enim rem omnis sed praesentium quo.', NULL, 1.00, 608.1700, 61.3500, 'percentage', 0.0000, 546.8200, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(77, 1, 'bill', 77, 66, 'Vero aut quo.', 'Esse sunt voluptate at aut suscipit. Nihil quod voluptatem sed quia. Voluptates maxime perferendis et aut vitae ut impedit voluptas.', NULL, 1.00, 854.9600, 93.3600, 'percentage', 0.0000, 854.9600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(78, 1, 'bill', 78, 96, 'Aliquid.', 'Nihil eum est et eius provident ea facilis. Nulla soluta fugit sint.', NULL, 1.00, 727.1300, 77.4400, 'percentage', 0.0000, 649.6900, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(79, 1, 'bill', 79, 70, 'Sequi hic.', 'Et tempora qui fugiat et. Non cum neque est. Qui voluptas sint qui fuga quae aut.', NULL, 1.00, 924.5300, 100.9600, 'percentage', 0.0000, 924.5300, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(80, 1, 'bill', 80, 73, 'Ullam.', 'Natus minima placeat est. Est unde sed nihil blanditiis. Dolor culpa illo nostrum harum velit voluptates.', NULL, 1.00, 973.4600, -158.4800, 'percentage', 0.0000, 973.4600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(81, 1, 'bill', 81, 43, 'Et ipsa ut in.', 'Et fugit dolorem aut reiciendis exercitationem rem delectus. Molestiae corrupti harum sint. Laudantium repellendus quod voluptate voluptates sint.', NULL, 1.00, 48.1200, 7.5600, 'percentage', 0.0000, 40.5600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(82, 1, 'bill', 82, 57, 'Facilis et.', 'Repellendus est quasi veniam voluptatem magni ut amet. Reiciendis eveniet non sint sunt velit omnis. Quo aliquid ab quod.', NULL, 1.00, 377.4400, 39.7800, 'percentage', 0.0000, 337.6600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(83, 1, 'bill', 83, 59, 'Totam eos.', 'Sint enim nisi sit qui asperiores. Qui saepe earum quia. Illum quia aut architecto.', NULL, 1.00, 240.2500, 25.3200, 'percentage', 0.0000, 214.9300, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(84, 1, 'bill', 84, 3, 'Id harum.', 'Dolor voluptatem soluta voluptatem rerum. Similique vitae debitis minima maxime culpa tempore. Aut id omnis in accusantium nisi cum consectetur. Voluptates repellat voluptatibus libero.', NULL, 1.00, 121.1900, 13.2300, 'percentage', 0.0000, 121.1900, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(85, 1, 'bill', 85, 95, 'Reprehenderit.', 'Totam dolorem nemo quis dolore qui et fuga sed. Sit quisquam vel possimus cupiditate deleniti. Ut id quo aliquam rerum inventore. Qui dolorem inventore totam mollitia.', NULL, 1.00, 8.3000, 0.8700, 'percentage', 0.0000, 7.4300, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(86, 1, 'bill', 86, 15, 'Dicta nesciunt.', 'Eos amet architecto quo et debitis autem animi. Accusantium aut beatae est eum. Nobis non voluptatem et soluta molestias atque quidem. Fugit aliquam in maiores amet omnis eum.', NULL, 1.00, 829.9300, 128.3200, 'percentage', 0.0000, 701.6100, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(87, 1, 'bill', 87, 81, 'Eum dolores.', 'Consectetur necessitatibus illum eum nobis eaque consectetur. Dignissimos aliquam quos sed tempore cumque. Omnis eligendi aut similique ut officiis saepe. Ex vitae omnis quod debitis illo.', NULL, 1.00, 280.5600, -45.6800, 'percentage', 0.0000, 280.5600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(88, 1, 'bill', 88, 46, 'Nihil vel.', 'Asperiores soluta aut molestiae et. Ex quibusdam beatae ex dolorem velit quos sit tenetur. Consequatur rem quos animi quis sed ut vitae.', NULL, 1.00, 714.1300, 112.2000, 'percentage', 0.0000, 601.9300, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(89, 1, 'bill', 89, 91, 'Ullam cumque.', 'Voluptate praesentium perspiciatis et est. Qui consequatur consectetur nulla sint nisi et consequatur omnis. Voluptas dolor numquam aut est. Molestiae rerum autem odit quas.', NULL, 1.00, 823.2600, 86.7600, 'percentage', 0.0000, 736.5000, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(90, 1, 'bill', 90, 96, 'Aliquid.', 'Voluptatibus odio recusandae tempora dolore. Omnis non dolorem blanditiis natus voluptas praesentium repudiandae. Omnis omnis asperiores et aperiam aut. Deleniti et commodi necessitatibus nam.', NULL, 1.00, 925.1200, 101.0200, 'percentage', 0.0000, 925.1200, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(91, 1, 'bill', 91, 44, 'Consectetur et.', 'Temporibus laborum adipisci molestias in laudantium. Minima et est sapiente. Quo id ullam beatae tempora aperiam saepe. Vitae quia necessitatibus non et voluptas eos consequatur accusamus.', NULL, 1.00, 577.0000, 60.8100, 'percentage', 0.0000, 516.1900, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(92, 1, 'bill', 92, 91, 'Ullam cumque.', 'Ipsa occaecati consequuntur soluta. Sunt aut laudantium repellendus molestiae quia. Et officia fuga error at occaecati.', NULL, 1.00, 681.9400, -123.2300, 'percentage', 0.0000, 681.9400, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(93, 1, 'bill', 93, 30, 'Quae expedita.', 'Hic ad vitae id veniam recusandae. Numquam itaque magnam porro molestias atque esse. Aut optio non dolorum modi voluptatem voluptatem.', NULL, 1.00, 332.3600, 51.3900, 'percentage', 0.0000, 280.9700, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(94, 1, 'bill', 94, 70, 'Sequi hic.', 'Tenetur velit non et perspiciatis et veritatis. Voluptatem corporis odio adipisci natus eos quod vitae. Vitae voluptatem delectus maxime dicta cupiditate.', NULL, 1.00, 653.5900, 65.9300, 'percentage', 0.0000, 587.6600, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(95, 1, 'bill', 95, 99, 'Provident aut.', 'Voluptatum possimus corporis et expedita dolorem. Quo reiciendis aperiam beatae. Inventore consectetur labore nihil. Nisi eos quia est natus. Officiis delectus iure voluptas odit et autem.', NULL, 1.00, 163.4500, 25.6800, 'percentage', 0.0000, 137.7700, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(96, 1, 'bill', 96, 94, 'Praesentium.', 'Harum ratione reiciendis cupiditate. Quod adipisci nulla et. Debitis est non repudiandae veniam saepe ratione maxime. Ducimus tenetur porro tenetur et ea minima.', NULL, 1.00, 137.4100, 14.4800, 'percentage', 0.0000, 122.9300, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(97, 1, 'bill', 97, 68, 'Et minus.', 'Ullam repellat velit et nihil nesciunt magnam. Quaerat sed totam doloremque corporis sit et laboriosam nulla. Non qui qui perspiciatis harum.', NULL, 1.00, 756.5300, 80.5700, 'percentage', 0.0000, 675.9600, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(98, 1, 'bill', 98, 43, 'Et ipsa ut in.', 'Quae doloremque sit ratione alias rerum perferendis. Dolorem dolores nostrum illo. Alias corrupti esse ut tempore eum ipsam.', NULL, 1.00, 62.7000, 6.6100, 'percentage', 0.0000, 56.0900, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(99, 1, 'bill', 99, 3, 'Id harum.', 'Ut eaque est quia ratione rerum autem et reiciendis. Magnam unde doloribus et minima nihil. Aut molestias doloremque sunt sed sit laborum ad.', NULL, 1.00, 440.4600, 44.4300, 'percentage', 0.0000, 396.0300, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(100, 1, 'bill', 100, 53, 'Mollitia et et.', 'Consequatur corrupti quia molestias ad numquam aut. Ad inventore molestiae accusantium ut voluptas. Facilis nihil optio rem non vero nam fugit.', NULL, 1.00, 199.4900, 20.1200, 'percentage', 0.0000, 179.3700, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(101, 1, 'invoice', 101, 78, 'Ex id qui est.', 'Aperiam natus est ut aliquid enim. Nostrum et minima rerum alias. Earum sunt voluptas magni impedit. Omnis deserunt reprehenderit corrupti. Maxime autem optio saepe laudantium est.', NULL, 1.00, 89.6600, 9.7900, 'percentage', 0.0000, 89.6600, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(102, 1, 'invoice', 102, 83, 'Qui sint eos.', 'Natus et est est molestiae est qui. Repellendus dolorem at incidunt est. Aut et eligendi alias aut autem consequatur. Eos iste nihil est est.', NULL, 1.00, 825.1000, -134.3300, 'percentage', 0.0000, 825.1000, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(103, 1, 'invoice', 103, 70, 'Sequi hic.', 'Et voluptatem non consequatur consectetur labore veritatis qui. Aut soluta et minus excepturi necessitatibus voluptas. Excepturi molestiae laborum illum unde molestiae ratione.', NULL, 1.00, 399.6000, -54.2700, 'percentage', 0.0000, 399.6000, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(104, 1, 'invoice', 104, 3, 'Id harum.', 'Molestiae voluptatibus dolor animi. Commodi omnis fugit iste ipsa voluptas deleniti aut dicta. Necessitatibus blanditiis alias vel placeat fugiat.', NULL, 1.00, 741.6900, 80.9900, 'percentage', 0.0000, 741.6900, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(105, 1, 'invoice', 105, 57, 'Facilis et.', 'Dicta eligendi nobis est nam cumque dolor minima. Harum voluptas laboriosam neque. Qui qui nemo illum.', NULL, 1.00, 847.4100, 133.1400, 'percentage', 0.0000, 714.2700, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(106, 1, 'invoice', 106, 73, 'Ullam.', 'Consequuntur non quis quisquam quia. Dolor et eum ut recusandae vel quisquam dolorem. Placeat nisi neque deserunt corporis omnis reprehenderit iusto.', NULL, 1.00, 658.7400, 107.8400, 'percentage', 0.0000, 658.7400, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(107, 1, 'invoice', 107, 68, 'Et minus.', 'Placeat delectus quo nihil voluptas voluptate in. Autem fugiat soluta consequatur doloremque. Rerum repudiandae nihil aut qui eveniet sint.', NULL, 1.00, 932.0100, 94.0200, 'percentage', 0.0000, 837.9900, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(108, 1, 'invoice', 108, 95, 'Reprehenderit.', 'Voluptas facere debitis ratione. Repellat dolorem inventore cupiditate enim ducimus qui. Quidem id facere aliquam animi et. Enim vel assumenda architecto.', NULL, 1.00, 329.3900, 53.9200, 'percentage', 0.0000, 329.3900, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(109, 1, 'invoice', 109, 83, 'Qui sint eos.', 'Error et odio ab voluptas. Occaecati rerum pariatur voluptas nemo. Laborum delectus voluptatem laudantium debitis.', NULL, 1.00, 293.1300, -52.9700, 'percentage', 0.0000, 293.1300, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(110, 1, 'invoice', 110, 70, 'Sequi hic.', 'Illum fugiat beatae laborum pariatur odio repellendus. Ipsa possimus rerum modi suscipit nihil qui quaerat. Rem fugit aut iste fuga nulla ad totam.', NULL, 1.00, 494.6900, 52.6900, 'percentage', 0.0000, 442.0000, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(111, 1, 'invoice', 111, 66, 'Vero aut quo.', 'Nemo dolor dolorem necessitatibus qui nobis autem. Vel et consequatur occaecati error dolorum. Sit tenetur eius incidunt quia suscipit. Placeat officiis voluptas voluptatem.', NULL, 1.00, 709.4500, 71.5700, 'percentage', 0.0000, 637.8800, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(112, 1, 'invoice', 112, 46, 'Nihil vel.', 'Sequi temporibus voluptas voluptatem cumque. Voluptate sit aspernatur beatae. Explicabo quo consequuntur fugit rerum. Dolorem ut et ea distinctio pariatur rem voluptatem.', NULL, 1.00, 66.8600, -10.8800, 'percentage', 0.0000, 66.8600, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(113, 1, 'invoice', 113, 92, 'Suscipit.', 'Quo praesentium laudantium veniam qui. Molestiae est quia explicabo in natus ut eius rerum. Ex excepturi eum consequuntur autem ab et. Laudantium ut sunt unde sit.', NULL, 1.00, 101.1900, 15.6500, 'percentage', 0.0000, 85.5400, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(114, 1, 'invoice', 114, 66, 'Vero aut quo.', 'Neque dignissimos est molestiae commodi. Quis optio perspiciatis aut cum qui sint. Iste aut repellendus ut. Eaque officiis qui id iusto totam. Accusamus expedita tenetur quis voluptate.', NULL, 1.00, 133.6600, 21.0000, 'percentage', 0.0000, 112.6600, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(115, 1, 'invoice', 115, 11, 'Et quod.', 'Quidem modi tenetur qui accusantium et. Veniam ut ea culpa aliquid necessitatibus omnis et. Temporibus quo autem ab qui laborum praesentium.', NULL, 1.00, 751.3100, 80.0200, 'percentage', 0.0000, 671.2900, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(116, 1, 'invoice', 116, 70, 'Sequi hic.', 'Eos sequi est in nemo at aliquid. Minus harum aspernatur voluptatem cum. Nihil tempora voluptatem officiis enim.', NULL, 1.00, 111.4400, 18.2400, 'percentage', 0.0000, 111.4400, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(117, 1, 'invoice', 117, 95, 'Reprehenderit.', 'Rerum placeat illo quam sit sit laborum dolore rerum. Aut quia rerum odit qui. Et doloribus et dolor qui ipsam veritatis. Ducimus veniam quidem ut iure.', NULL, 1.00, 877.0800, 95.7800, 'percentage', 0.0000, 877.0800, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(118, 1, 'invoice', 118, 66, 'Vero aut quo.', 'Vel et voluptas perspiciatis repellat eum molestiae qui. Earum quae possimus possimus iure ut dignissimos ut. Inventore magni repellendus sapiente occaecati.', NULL, 1.00, 405.1100, -55.0100, 'percentage', 0.0000, 405.1100, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(119, 1, 'invoice', 119, 68, 'Et minus.', 'Architecto quo et consequatur quia. Et eos ea enim saepe. Aliquid repellat ratione modi.', NULL, 1.00, 786.0200, 121.5300, 'percentage', 0.0000, 664.4900, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(120, 1, 'invoice', 120, 86, 'Et unde illum.', 'Accusantium quo veritatis iure est modi. Sequi commodi voluptatem voluptas amet illum enim. Omnis in fugiat dolorem eaque neque.', NULL, 1.00, 829.0000, -134.9600, 'percentage', 0.0000, 829.0000, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(121, 1, 'invoice', 121, 61, 'Accusamus aut.', 'Repellat nesciunt sed dolorem explicabo. Tempora hic qui illo quia soluta ex. Est veniam soluta dignissimos nostrum commodi quia facere.', NULL, 1.00, 977.8000, 160.0700, 'percentage', 0.0000, 977.8000, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(122, 1, 'invoice', 122, 83, 'Qui sint eos.', 'Ducimus qui dolor sed eveniet. Officia qui qui tempora aliquam tempora harum. Expedita id porro est placeat unde sit. Rem neque culpa ipsam et numquam.', NULL, 1.00, 544.1300, -88.5800, 'percentage', 0.0000, 544.1300, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(123, 1, 'invoice', 123, 29, 'Neque.', 'Qui vel quisquam consectetur dolorem. Veritatis dolor quis corporis exercitationem. Perferendis ratione possimus quasi minima suscipit excepturi. Ab esse minima laboriosam unde corrupti in enim.', NULL, 1.00, 256.2100, -34.7900, 'percentage', 0.0000, 256.2100, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(124, 1, 'invoice', 124, 39, 'Veniam ipsum.', 'Quidem doloribus occaecati autem maiores quo voluptatibus. Quisquam expedita laborum pariatur maxime dicta. Harum qui consequatur est repudiandae a veritatis minus.', NULL, 1.00, 672.5900, -91.3400, 'percentage', 0.0000, 672.5900, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(125, 1, 'invoice', 125, 76, 'Officiis.', 'Et inventore aperiam dolor veritatis. Commodi nisi earum aut perferendis sit.', NULL, 1.00, 906.7500, 95.5600, 'percentage', 0.0000, 811.1900, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(126, 1, 'invoice', 126, 76, 'Officiis.', 'Est autem sed sapiente sapiente quos ad atque nostrum. Unde molestias error voluptatem repellat cumque. Sed non esse nostrum dolor aliquid. Officiis rem unde velit labore.', NULL, 1.00, 583.4300, 95.5100, 'percentage', 0.0000, 583.4300, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(127, 1, 'invoice', 127, 27, 'Velit tenetur.', 'Debitis est voluptatem dolores labore vitae et. Eligendi nemo ducimus et aut sunt unde. Error sit velit sed doloribus.', NULL, 1.00, 696.9100, 76.1000, 'percentage', 0.0000, 696.9100, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(128, 1, 'invoice', 128, 3, 'Id harum.', 'Fugiat veritatis ratione nisi saepe. Facilis harum nemo facilis iste quia dolores est. Voluptate quo enim veritatis adipisci. Iste et aut sed est est id. Ipsum consequuntur et laudantium occaecati.', NULL, 1.00, 862.5300, 94.1900, 'percentage', 0.0000, 862.5300, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(129, 1, 'invoice', 129, 69, 'Et est et et.', 'Placeat quia dicta et nesciunt voluptas. Ex quidem quia provident occaecati corrupti molestiae. Quam reiciendis fugit expedita ut voluptatem ratione deleniti.', NULL, 1.00, 852.7200, 93.1200, 'percentage', 0.0000, 852.7200, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(130, 1, 'invoice', 130, 94, 'Praesentium.', 'Impedit enim praesentium eos recusandae. Ad doloribus voluptates vero sint perferendis. Dicta voluptates voluptatem dolorum earum.', NULL, 1.00, 678.7700, -122.6500, 'percentage', 0.0000, 678.7700, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(131, 1, 'invoice', 131, 86, 'Et unde illum.', 'Qui ut eveniet maiores corporis dolores tenetur impedit facilis. Eveniet tempore sit nihil tempore. Magni sit est tempora qui modi.', NULL, 1.00, 660.5300, 70.3500, 'percentage', 0.0000, 590.1800, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(132, 1, 'invoice', 132, 73, 'Ullam.', 'Ratione tenetur adipisci eos quasi. Nostrum et similique soluta non sint praesentium.', NULL, 1.00, 551.0800, 85.2100, 'percentage', 0.0000, 465.8700, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(133, 1, 'invoice', 133, 43, 'Et ipsa ut in.', 'Aperiam accusantium soluta porro dolores repellat ea. Et neque suscipit molestiae atque. Non repellendus voluptas et necessitatibus quis enim voluptas.', NULL, 1.00, 51.1000, 5.3900, 'percentage', 0.0000, 45.7100, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(134, 1, 'invoice', 134, 46, 'Nihil vel.', 'Ut soluta alias est illum nihil. Ut facere vitae et recusandae esse ad laudantium. Hic incidunt id necessitatibus fuga vel vero et.', NULL, 1.00, 364.2800, 38.3900, 'percentage', 0.0000, 325.8900, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(135, 1, 'invoice', 135, 39, 'Veniam ipsum.', 'Et cumque rem voluptate voluptatem. Voluptatem dolor qui vero officia velit enim sed. Iure porro et a hic eum.', NULL, 1.00, 43.1900, -5.8700, 'percentage', 0.0000, 43.1900, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(136, 1, 'invoice', 136, 3, 'Id harum.', 'Aut esse fugit autem. Quae unde doloremque velit. Rerum in quo odit nulla neque.', NULL, 1.00, 449.4700, -81.2200, 'percentage', 0.0000, 449.4700, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(137, 1, 'invoice', 137, 15, 'Dicta nesciunt.', 'Assumenda nesciunt modi est eum et tempora perferendis. Quia dolor aut aut consequatur dolorem sequi. Vel perspiciatis facere enim et veniam perferendis culpa.', NULL, 1.00, 711.2400, -128.5200, 'percentage', 0.0000, 711.2400, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(138, 1, 'invoice', 138, 84, 'Ab eum eveniet.', 'Iusto voluptatem nesciunt et. Laboriosam dolorem earum velit provident veritatis id id. Eum neque eum quis impedit amet voluptatem qui. Beatae adipisci aut et ducimus.', NULL, 1.00, 855.1600, -116.1300, 'percentage', 0.0000, 855.1600, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(139, 1, 'invoice', 139, 91, 'Ullam cumque.', 'Minus amet quisquam alias. Veritatis occaecati ab totam ea. Explicabo omnis aliquam fuga veritatis. Exercitationem quia rerum quaerat expedita quia. Eligendi cum eius repellendus voluptatem nulla.', NULL, 1.00, 654.6900, 71.4900, 'percentage', 0.0000, 654.6900, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(140, 1, 'invoice', 140, 59, 'Totam eos.', 'Cum quidem doloribus necessitatibus dolorem. Accusamus rem debitis corporis sunt nemo ducimus dicta. Saepe nam rerum deleniti molestiae modi commodi voluptatem provident.', NULL, 1.00, 611.6400, 65.1400, 'percentage', 0.0000, 546.5000, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(141, 1, 'invoice', 141, 58, 'Fugiat.', 'Unde dolores autem libero unde ea perspiciatis. Aut aut autem deserunt unde facilis accusantium. Quo sit eligendi velit sed. Ad magnam quia enim ut.', NULL, 1.00, 677.8900, 110.9700, 'percentage', 0.0000, 677.8900, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(142, 1, 'invoice', 142, 81, 'Eum dolores.', 'Officiis reiciendis explicabo animi explicabo iure expedita. Non libero esse laborum id excepturi aspernatur assumenda. Aut vero et autem dolor officiis iusto.', NULL, 1.00, 717.6400, 112.7500, 'percentage', 0.0000, 604.8900, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(143, 1, 'invoice', 143, 61, 'Accusamus aut.', 'Non rem quidem nisi ea adipisci impedit. Enim exercitationem deleniti natus delectus. Aperiam sit reprehenderit quibusdam debitis.', NULL, 1.00, 981.6000, 103.4500, 'percentage', 0.0000, 878.1500, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(144, 1, 'invoice', 144, 68, 'Et minus.', 'Minus saepe commodi quis. Quia repellat in recusandae deserunt. Quisquam adipisci non tempore quisquam asperiores. Adipisci molestiae voluptatem dolorum et. Voluptas ducimus et similique sed.', NULL, 1.00, 875.5700, 92.2700, 'percentage', 0.0000, 783.3000, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(145, 1, 'invoice', 145, 68, 'Et minus.', 'Et maiores quo amet ad et voluptatem. Quasi reiciendis eum possimus. Quam adipisci voluptatem eveniet voluptate qui sunt.', NULL, 1.00, 54.9200, -9.9200, 'percentage', 0.0000, 54.9200, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(146, 1, 'invoice', 146, 96, 'Aliquid.', 'Ea rerum dolor facere est. Et ad ut rerum. Quisquam omnis earum officiis.', NULL, 1.00, 381.3600, 41.6400, 'percentage', 0.0000, 381.3600, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(147, 1, 'invoice', 147, 30, 'Quae expedita.', 'Quia itaque placeat ut ratione dolorum. Qui tempore quos voluptatem magni voluptatem. Doloremque vitae officiis eaque praesentium quo. Est eos et et et tempore.', NULL, 1.00, 565.2100, 60.2000, 'percentage', 0.0000, 505.0100, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(148, 1, 'invoice', 148, 99, 'Provident aut.', 'Sit tempore ipsa totam quibusdam voluptate enim. Atque eum debitis aut vel. Qui consectetur est veritatis autem sunt cumque vel iure. Dolorum in eos totam omnis. Odit ut modi ipsum et minima.', NULL, 1.00, 668.4800, 103.3600, 'percentage', 0.0000, 565.1200, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(149, 1, 'invoice', 149, 78, 'Ex id qui est.', 'Est rem accusamus aut. Ducimus architecto reprehenderit quia quam nobis. Sapiente possimus quia numquam possimus. Et labore autem temporibus.', NULL, 1.00, 969.5700, 102.1800, 'percentage', 0.0000, 867.3900, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(150, 1, 'invoice', 150, 81, 'Eum dolores.', 'Nesciunt enim eum deserunt sed ut. Quaerat non sit placeat unde provident. Nulla non enim modi cum omnis et. Occaecati at earum est aut odit et dolor laborum.', NULL, 1.00, 95.3600, 15.6100, 'percentage', 0.0000, 95.3600, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(151, 1, 'invoice', 151, 30, 'Quae expedita.', 'Quibusdam voluptate tempore id aspernatur rerum ipsam aut. Qui eveniet cupiditate amet quis fuga autem enim. Et atque rerum odio magni.', NULL, 1.00, 769.6800, 119.0100, 'percentage', 0.0000, 650.6700, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(152, 1, 'invoice', 152, 29, 'Neque.', 'Velit natus quos dolor atque atque blanditiis. Pariatur est a eius in quas quo. Cum id blanditiis commodi exercitationem unde porro voluptates vel.', NULL, 1.00, 166.3000, -27.0700, 'percentage', 0.0000, 166.3000, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL);
INSERT INTO `p9k_document_items` (`id`, `company_id`, `type`, `document_id`, `item_id`, `name`, `description`, `sku`, `quantity`, `price`, `tax`, `discount_type`, `discount_rate`, `total`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(153, 1, 'invoice', 153, 94, 'Praesentium.', 'Illo quidem repellat porro. Rerum accusamus distinctio soluta voluptas minus.', NULL, 1.00, 192.6300, -31.3600, 'percentage', 0.0000, 192.6300, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(154, 1, 'invoice', 154, 86, 'Et unde illum.', 'Vitae nobis et facere maxime nihil quidem. Nostrum rerum temporibus saepe repudiandae officiis sunt. Placeat quis ea deleniti sint enim. Perspiciatis neque est non numquam.', NULL, 1.00, 397.3400, -64.6900, 'percentage', 0.0000, 397.3400, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(155, 1, 'invoice', 155, 21, 'Explicabo.', 'Ipsa architecto sapiente maxime laudantium. Fugit dignissimos rerum sunt. Esse magnam ut a earum blanditiis. Qui iusto non qui ut. Officia voluptatem quo voluptates.', NULL, 1.00, 601.0300, 92.9300, 'percentage', 0.0000, 508.1000, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(156, 1, 'invoice', 156, 29, 'Neque.', 'Cum perspiciatis earum ex architecto ab rerum. Odio sit aliquid ipsum vel consequatur optio ut. Quia quo rerum pariatur magnam. Voluptas nihil voluptatem ipsam iste tempore nisi ut quisquam.', NULL, 1.00, 36.0900, 5.6700, 'percentage', 0.0000, 30.4200, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(157, 1, 'invoice', 157, 46, 'Nihil vel.', 'Id quidem sed vel. Ut harum veniam voluptatibus a sed alias veniam. Nobis et eaque quae eius praesentium.', NULL, 1.00, 142.8000, 15.5900, 'percentage', 0.0000, 142.8000, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(158, 1, 'invoice', 158, 72, 'Expedita optio.', 'Ut occaecati corrupti voluptas ratione accusantium dolorem delectus qui. Iusto illo omnis delectus voluptas voluptatum aut qui. Consectetur aliquid nostrum velit quisquam explicabo.', NULL, 1.00, 851.1000, -153.7900, 'percentage', 0.0000, 851.1000, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(159, 1, 'invoice', 159, 53, 'Mollitia et et.', 'Voluptatem omnis vel totam corrupti et. Enim sed impedit sunt aut atque non. Ut quibusdam amet laborum distinctio sequi ut non. Sunt sunt error animi eligendi consequatur officia quia.', NULL, 1.00, 255.5200, 41.8300, 'percentage', 0.0000, 255.5200, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(160, 1, 'invoice', 160, 76, 'Officiis.', 'Fugiat cum quo accusamus voluptatem incidunt itaque. Nostrum ullam dolorem voluptas dolores. Voluptas fugiat quis aut earum sit quasi.', NULL, 1.00, 435.6600, 45.9100, 'percentage', 0.0000, 389.7500, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(161, 1, 'invoice', 161, 77, 'Aspernatur.', 'Quasi in tempore quis est. Nihil veniam unde qui ut. Pariatur totam ipsum qui quis. Ab vel et fuga harum.', NULL, 1.00, 870.3500, 92.7000, 'percentage', 0.0000, 777.6500, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(162, 1, 'invoice', 162, 7, 'Rem quia.', 'Corporis et nobis quibusdam sint in. Reiciendis ut officiis animi. Provident architecto nisi suscipit culpa maxime nemo.', NULL, 1.00, 742.0000, 74.8500, 'percentage', 0.0000, 667.1500, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(163, 1, 'invoice', 163, 84, 'Ab eum eveniet.', 'Ipsum ut sed id ipsam. Dolorem quo reprehenderit sed inventore nihil voluptates dolorem.', NULL, 1.00, 438.6700, 68.9200, 'percentage', 0.0000, 369.7500, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(164, 1, 'invoice', 164, 53, 'Mollitia et et.', 'Libero tempore ut porro commodi eius. Mollitia cupiditate maiores omnis iste unde est. Sed praesentium laborum sit quas nihil dolor perferendis. Repellat recusandae et dolor quasi.', NULL, 1.00, 550.6300, -99.5000, 'percentage', 0.0000, 550.6300, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(165, 1, 'invoice', 165, 81, 'Eum dolores.', 'Dicta sint id maxime veniam est recusandae sapiente. Sed doloribus qui voluptatum quia ea tempora.', NULL, 1.00, 433.4300, 43.7200, 'percentage', 0.0000, 389.7100, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(166, 1, 'invoice', 166, 11, 'Et quod.', 'Minima rerum sint in sapiente architecto vel sunt. Fugit sunt aperiam ut distinctio voluptatem nemo. Beatae qui architecto et repudiandae quia aut.', NULL, 1.00, 381.0800, -51.7500, 'percentage', 0.0000, 381.0800, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(167, 1, 'invoice', 167, 68, 'Et minus.', 'Aut repellendus officiis ipsum eos consequatur. Aut explicabo voluptates minima praesentium voluptas. Ipsum ut sed repellendus omnis.', NULL, 1.00, 815.2200, 82.2400, 'percentage', 0.0000, 732.9800, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(168, 1, 'invoice', 168, 83, 'Qui sint eos.', 'Asperiores incidunt sed atque sed. Quaerat excepturi ipsum qui eos et debitis. Rerum nam explicabo architecto quas. Dignissimos eos exercitationem nisi ut.', NULL, 1.00, 868.0700, 142.1000, 'percentage', 0.0000, 868.0700, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(169, 1, 'invoice', 169, 58, 'Fugiat.', 'Harum suscipit doloremque quia numquam veritatis. Iure animi qui tenetur tempora earum recusandae excepturi ut.', NULL, 1.00, 488.8900, -66.3900, 'percentage', 0.0000, 488.8900, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(170, 1, 'invoice', 170, 21, 'Explicabo.', 'Qui autem illo voluptatem eius eligendi est alias. Incidunt laudantium quia voluptas earum. Et mollitia incidunt iusto in optio et. Consequatur quis et dolorem suscipit voluptate assumenda ut.', NULL, 1.00, 315.0400, 49.5000, 'percentage', 0.0000, 265.5400, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(171, 1, 'invoice', 171, 99, 'Provident aut.', 'Commodi sit et autem aut. Repudiandae laudantium saepe voluptate. Ut enim laborum sunt. Quo quia quos cumque quasi ullam rerum.', NULL, 1.00, 197.6100, -26.8400, 'percentage', 0.0000, 197.6100, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(172, 1, 'invoice', 172, 57, 'Facilis et.', 'Aut qui magnam dolore sint nulla voluptates ab. Cupiditate quia et et quidem ex enim perferendis voluptas. Placeat accusamus culpa nesciunt eum ex.', NULL, 1.00, 78.8200, -12.8300, 'percentage', 0.0000, 78.8200, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(173, 1, 'invoice', 173, 15, 'Dicta nesciunt.', 'Reprehenderit quas assumenda fuga cum aspernatur. Fugit similique distinctio doloribus ad quae. Numquam ab assumenda ullam nostrum eaque a.', NULL, 1.00, 709.1200, 74.7300, 'percentage', 0.0000, 634.3900, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(174, 1, 'invoice', 174, 73, 'Ullam.', 'Aut quas numquam aut quam consequatur. Cupiditate rerum maxime est natus explicabo enim accusamus.', NULL, 1.00, 685.4300, 74.8500, 'percentage', 0.0000, 685.4300, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(175, 1, 'invoice', 175, 44, 'Consectetur et.', 'Eos voluptatibus occaecati aliquid aspernatur modi aliquam quisquam. Eos id eum alias expedita qui possimus pariatur. Ipsam et laborum in. Ab recusandae consequatur hic dolorem.', NULL, 1.00, 932.8500, 144.2400, 'percentage', 0.0000, 788.6100, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(176, 1, 'invoice', 176, 78, 'Ex id qui est.', 'Voluptatum cumque vel error esse vitae delectus nesciunt. Et ipsum voluptatem nam rerum a non et. Illum blanditiis voluptates fugiat. Est quia aperiam ut.', NULL, 1.00, 743.9500, -134.4300, 'percentage', 0.0000, 743.9500, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(177, 1, 'invoice', 177, 3, 'Id harum.', 'Debitis cumque dolorem ducimus recusandae maiores voluptates et. Doloribus dolor consequuntur quaerat dolore. Occaecati vero quidem omnis dolorem sapiente. Nemo enim et ut ea ex quasi.', NULL, 1.00, 87.6200, 14.3400, 'percentage', 0.0000, 87.6200, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(178, 1, 'invoice', 178, 35, 'Aut modi est.', 'Consequuntur libero excepturi et nemo dolorem est rem sed. Laboriosam vitae qui enim accusantium dolorem esse. Doloremque et totam fuga illo voluptate.', NULL, 1.00, 246.0400, -40.0600, 'percentage', 0.0000, 246.0400, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(179, 1, 'invoice', 179, 67, 'Vitae a.', 'Iusto assumenda fuga assumenda ratione aut voluptatem qui. Consectetur nihil velit suscipit culpa porro. Iste qui error nulla quas.', NULL, 1.00, 557.6600, 60.9000, 'percentage', 0.0000, 557.6600, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(180, 1, 'invoice', 180, 73, 'Ullam.', 'Assumenda provident quia nihil aut. Voluptas qui et quis asperiores. Deserunt aut ut praesentium cupiditate a fugit enim.', NULL, 1.00, 654.1800, 71.4400, 'percentage', 0.0000, 654.1800, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(181, 1, 'invoice', 181, 84, 'Ab eum eveniet.', 'Libero commodi et mollitia porro alias necessitatibus. Aliquam dolorem laudantium corporis qui omnis nam soluta. Et accusantium qui sed qui.', NULL, 1.00, 481.2800, -86.9700, 'percentage', 0.0000, 481.2800, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(182, 1, 'invoice', 182, 41, 'Voluptate.', 'Facere natus nam officiis. Deleniti aut blanditiis id nam vel et. Nam omnis aliquam sapiente dolor omnis delectus. Quis culpa excepturi expedita eum tempore enim omnis.', NULL, 1.00, 310.8300, 48.0600, 'percentage', 0.0000, 262.7700, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(183, 1, 'invoice', 183, 21, 'Explicabo.', 'Voluptatem velit quidem rerum quos. Ut ad quo minus neque quibusdam nulla.', NULL, 1.00, 694.6200, 107.4000, 'percentage', 0.0000, 587.2200, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(184, 1, 'invoice', 184, 96, 'Aliquid.', 'Debitis distinctio molestias culpa dolor quia ab. Eligendi totam sint cum earum impedit sit corporis. Aut incidunt illum veritatis sapiente ad. Autem sit eligendi aut blanditiis corporis accusamus.', NULL, 1.00, 43.0000, 7.0400, 'percentage', 0.0000, 43.0000, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(185, 1, 'invoice', 185, 46, 'Nihil vel.', 'Quisquam aut quisquam non nemo sed cumque et. Et eos recusandae minus eveniet. Aut quae ipsum qui nihil recusandae. Praesentium enim libero dolor.', NULL, 1.00, 327.7700, 34.9100, 'percentage', 0.0000, 292.8600, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(186, 1, 'invoice', 186, 29, 'Neque.', 'Quibusdam tempore atque ut ea non tempore rerum. In blanditiis sed blanditiis mollitia maiores.', NULL, 1.00, 326.9400, 51.3700, 'percentage', 0.0000, 275.5700, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(187, 1, 'invoice', 187, 21, 'Explicabo.', 'Vitae architecto aut minima est ad illo. Repellat non libero dolorem aut sed blanditiis sit.', NULL, 1.00, 908.3600, -164.1400, 'percentage', 0.0000, 908.3600, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(188, 1, 'invoice', 188, 83, 'Qui sint eos.', 'Est unde quos consequatur et voluptatem eaque. Cumque dolore quia voluptate et dolor nisi ad. Occaecati illo asperiores et id. Modi dolores dolores id consequuntur incidunt.', NULL, 1.00, 116.3900, -15.8100, 'percentage', 0.0000, 116.3900, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(189, 1, 'invoice', 189, 77, 'Aspernatur.', 'Error sapiente est ea ipsa. Cum aperiam sequi recusandae repellendus aspernatur temporibus. Magnam sed quae et facere quo aut.', NULL, 1.00, 619.9700, 65.3400, 'percentage', 0.0000, 554.6300, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(190, 1, 'invoice', 190, 99, 'Provident aut.', 'Qui eum vitae eius aut debitis veniam. Blanditiis praesentium in aspernatur qui. Voluptatem animi hic optio hic. Est voluptatum asperiores omnis facilis molestias quia.', NULL, 1.00, 850.0800, 92.8300, 'percentage', 0.0000, 850.0800, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(191, 1, 'invoice', 191, 76, 'Officiis.', 'Ut maiores occaecati delectus qui voluptatem. Autem nam aut praesentium placeat. Eum reiciendis quo quia. Alias corporis sit earum enim nostrum adipisci. Perferendis vel et velit amet similique in.', NULL, 1.00, 890.3300, 93.8300, 'percentage', 0.0000, 796.5000, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(192, 1, 'invoice', 192, 35, 'Aut modi est.', 'Corrupti rerum voluptatem et quia qui repellendus ea. Sapiente nobis id dolores tenetur asperiores est quis. Magni quia vel amet est quaerat.', NULL, 1.00, 743.8600, -101.0200, 'percentage', 0.0000, 743.8600, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(193, 1, 'invoice', 193, 29, 'Neque.', 'Dolore a inventore quis dicta voluptas aperiam sint quis. Labore velit dolorem error aut aut. Dolorem cupiditate fuga corrupti possimus unde aut. Et recusandae dolores et sit repudiandae cum.', NULL, 1.00, 228.9400, 37.4800, 'percentage', 0.0000, 228.9400, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(194, 1, 'invoice', 194, 61, 'Accusamus aut.', 'Eum cum earum ut deserunt qui neque. Consequatur tenetur aperiam molestias aliquam. Nulla magni ut distinctio cumque molestiae.', NULL, 1.00, 170.5800, 27.9200, 'percentage', 0.0000, 170.5800, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(195, 1, 'invoice', 195, 69, 'Et est et et.', 'Dolores rerum fuga ut iure. Quae molestiae expedita quibusdam. Voluptatem itaque sint possimus fugiat omnis quo quia. Qui delectus asperiores sequi delectus qui tempore iste.', NULL, 1.00, 684.5900, 107.5600, 'percentage', 0.0000, 577.0300, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(196, 1, 'invoice', 196, 81, 'Eum dolores.', 'Beatae dolores et cupiditate inventore non aut repellendus. Quos molestias veritatis itaque dolorum. Quam explicabo similique a repudiandae. Est rem numquam cupiditate.', NULL, 1.00, 773.5600, 78.0400, 'percentage', 0.0000, 695.5200, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(197, 1, 'invoice', 197, 57, 'Facilis et.', 'Aut voluptatem et et quia amet cum. Facilis et sunt autem tempora eos. Exercitationem nostrum qui consectetur blanditiis eius.', NULL, 1.00, 812.6800, 125.6600, 'percentage', 0.0000, 687.0200, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(198, 1, 'invoice', 198, 76, 'Officiis.', 'Et neque ab dolorem omnis omnis soluta alias. Vel quia odio est aliquid voluptas aliquid fugit. Aut debitis repudiandae ipsum totam doloribus.', NULL, 1.00, 639.1600, 104.6300, 'percentage', 0.0000, 639.1600, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(199, 1, 'invoice', 199, 30, 'Quae expedita.', 'Sint sit culpa quis. Neque rerum doloremque aliquid inventore libero ut. Inventore quidem a facere expedita nihil. Aut vel fugit reiciendis.', NULL, 1.00, 884.7000, -159.8700, 'percentage', 0.0000, 884.7000, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(200, 1, 'invoice', 200, 61, 'Accusamus aut.', 'Reiciendis quae ea commodi numquam facilis. Eum tempora harum omnis architecto est autem. Veniam voluptatibus amet blanditiis inventore ea.', NULL, 1.00, 898.3800, -146.2600, 'percentage', 0.0000, 898.3800, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(201, 1, 'bill', 201, 84, 'Ab eum eveniet.', 'Ducimus hic omnis dolores nam. Doloribus enim amet et doloremque modi.', NULL, 1.00, 10.9200, -0.5900, 'percentage', 0.0000, 9.5400, 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(203, 1, 'bill', 203, 61, 'Accusamus aut.', 'Qui occaecati ut consectetur ut quia alias. Aut enim qui accusantium mollitia.', NULL, 1.00, 17.4200, -3.1500, 'percentage', 0.0000, 17.4200, 'core::ui', '1', '2022-03-07 05:25:15', '2022-03-07 05:25:15', NULL),
(204, 1, 'invoice', 205, 84, 'Ab eum eveniet.', 'Ducimus hic omnis dolores nam. Doloribus enim amet et doloremque modi.', NULL, 1.00, 18.5900, 0.0000, 'percentage', 0.0000, 18.5900, 'core::ui', '1', '2022-07-03 08:12:36', '2022-07-03 08:12:36', NULL),
(205, 1, 'invoice', 205, 102, 'pc', 'ehrtnty', NULL, 2.00, 3.0000, -1.0800, 'percentage', 0.0000, 6.0000, 'core::ui', '1', '2022-07-03 08:12:36', '2022-07-03 08:12:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_document_item_taxes`
--

CREATE TABLE `p9k_document_item_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `document_item_id` int(10) UNSIGNED NOT NULL,
  `tax_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_document_item_taxes`
--

INSERT INTO `p9k_document_item_taxes` (`id`, `company_id`, `type`, `document_id`, `document_item_id`, `tax_id`, `name`, `amount`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'bill', 1, 1, 9, 'Aperiam.', 106.4100, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(2, 1, 'bill', 2, 2, 10, 'Quod et et.', 51.6100, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(3, 1, 'bill', 3, 3, 1, 'Sint sint.', 95.0700, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(4, 1, 'bill', 4, 4, 5, 'Quidem.', 45.3600, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(5, 1, 'bill', 5, 5, 4, 'Earum rerum.', 38.7500, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(6, 1, 'bill', 6, 6, 3, 'Ex sed natus.', 15.6400, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(7, 1, 'bill', 7, 7, 1, 'Sint sint.', 58.6200, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(8, 1, 'bill', 8, 8, 9, 'Aperiam.', 134.2900, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(9, 1, 'bill', 9, 9, 1, 'Sint sint.', 20.7500, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(10, 1, 'bill', 10, 10, 6, 'Quis sed.', 132.5300, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(11, 1, 'bill', 11, 11, 3, 'Ex sed natus.', 91.8000, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(12, 1, 'bill', 12, 12, 8, 'At accusantium.', 106.1100, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(13, 1, 'bill', 13, 13, 8, 'At accusantium.', 17.6000, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(14, 1, 'bill', 14, 14, 6, 'Quis sed.', 65.5100, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(15, 1, 'bill', 15, 15, 3, 'Ex sed natus.', 71.0000, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(16, 1, 'bill', 16, 16, 2, 'Nesciunt.', 86.5800, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(17, 1, 'bill', 17, 17, 10, 'Quod et et.', 141.7100, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(18, 1, 'bill', 18, 18, 1, 'Sint sint.', 52.3700, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(19, 1, 'bill', 19, 19, 5, 'Quidem.', 8.1800, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(20, 1, 'bill', 20, 20, 4, 'Earum rerum.', 63.9300, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(21, 1, 'bill', 21, 21, 2, 'Nesciunt.', 20.2800, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(22, 1, 'bill', 22, 22, 1, 'Sint sint.', 73.7000, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(23, 1, 'bill', 23, 23, 4, 'Earum rerum.', 16.1400, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(24, 1, 'bill', 24, 24, 8, 'At accusantium.', 64.6100, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(25, 1, 'bill', 25, 25, 10, 'Quod et et.', 47.2000, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(26, 1, 'bill', 26, 26, 8, 'At accusantium.', 70.9800, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(27, 1, 'bill', 27, 27, 1, 'Sint sint.', 12.5100, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(28, 1, 'bill', 28, 28, 6, 'Quis sed.', 129.0000, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(29, 1, 'bill', 29, 29, 4, 'Earum rerum.', 88.6100, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(30, 1, 'bill', 30, 30, 3, 'Ex sed natus.', 69.5800, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(31, 1, 'bill', 31, 31, 9, 'Aperiam.', 84.1100, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(32, 1, 'bill', 32, 32, 5, 'Quidem.', 45.7300, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(33, 1, 'bill', 33, 33, 2, 'Nesciunt.', 30.8500, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(34, 1, 'bill', 34, 34, 3, 'Ex sed natus.', 179.6100, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(35, 1, 'bill', 35, 35, 6, 'Quis sed.', 77.9300, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(36, 1, 'bill', 36, 36, 9, 'Aperiam.', 27.1900, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(37, 1, 'bill', 37, 37, 5, 'Quidem.', 59.1800, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(38, 1, 'bill', 38, 38, 9, 'Aperiam.', 127.3500, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(39, 1, 'bill', 39, 39, 1, 'Sint sint.', 58.8100, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(40, 1, 'bill', 40, 40, 10, 'Quod et et.', 39.0400, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(41, 1, 'bill', 41, 41, 10, 'Quod et et.', 139.1000, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(42, 1, 'bill', 42, 42, 9, 'Aperiam.', 82.8400, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(43, 1, 'bill', 43, 43, 2, 'Nesciunt.', 5.4700, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(44, 1, 'bill', 44, 44, 6, 'Quis sed.', 128.3900, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(45, 1, 'bill', 45, 45, 7, 'Dolores at.', 51.8900, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(46, 1, 'bill', 46, 46, 6, 'Quis sed.', 93.9000, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(47, 1, 'bill', 47, 47, 9, 'Aperiam.', 40.8700, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(48, 1, 'bill', 48, 48, 7, 'Dolores at.', 128.5500, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(49, 1, 'bill', 49, 49, 6, 'Quis sed.', 82.3900, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(50, 1, 'bill', 50, 50, 7, 'Dolores at.', 113.3000, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(51, 1, 'bill', 51, 51, 3, 'Ex sed natus.', 21.8300, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(52, 1, 'bill', 52, 52, 1, 'Sint sint.', 45.7500, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(53, 1, 'bill', 53, 53, 3, 'Ex sed natus.', 150.9500, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(54, 1, 'bill', 54, 54, 2, 'Nesciunt.', 112.0200, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(55, 1, 'bill', 55, 55, 4, 'Earum rerum.', 76.7300, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(56, 1, 'bill', 56, 56, 8, 'At accusantium.', 102.0800, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(57, 1, 'bill', 57, 57, 10, 'Quod et et.', 98.8500, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(58, 1, 'bill', 58, 58, 4, 'Earum rerum.', 102.4100, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(59, 1, 'bill', 59, 59, 5, 'Quidem.', 61.6900, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(60, 1, 'bill', 60, 60, 7, 'Dolores at.', 127.9800, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(61, 1, 'bill', 61, 61, 7, 'Dolores at.', 131.3000, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(62, 1, 'bill', 62, 62, 3, 'Ex sed natus.', 126.9300, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(63, 1, 'bill', 63, 63, 4, 'Earum rerum.', 40.6400, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(64, 1, 'bill', 64, 64, 1, 'Sint sint.', 62.0200, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(65, 1, 'bill', 65, 65, 1, 'Sint sint.', 48.9600, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(66, 1, 'bill', 66, 66, 3, 'Ex sed natus.', 21.1800, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(67, 1, 'bill', 67, 67, 7, 'Dolores at.', 109.7600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(68, 1, 'bill', 68, 68, 3, 'Ex sed natus.', 16.5600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(69, 1, 'bill', 69, 69, 10, 'Quod et et.', 49.3100, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(70, 1, 'bill', 70, 70, 1, 'Sint sint.', 87.1800, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(71, 1, 'bill', 71, 71, 3, 'Ex sed natus.', 47.2900, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(72, 1, 'bill', 72, 72, 5, 'Quidem.', 61.7500, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(73, 1, 'bill', 73, 73, 10, 'Quod et et.', 81.0100, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(74, 1, 'bill', 74, 74, 8, 'At accusantium.', 20.7400, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(75, 1, 'bill', 75, 75, 6, 'Quis sed.', 24.7100, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(76, 1, 'bill', 76, 76, 5, 'Quidem.', 61.3500, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(77, 1, 'bill', 77, 77, 8, 'At accusantium.', 93.3600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(78, 1, 'bill', 78, 78, 4, 'Earum rerum.', 77.4400, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(79, 1, 'bill', 79, 79, 8, 'At accusantium.', 100.9600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(80, 1, 'bill', 80, 80, 9, 'Aperiam.', 158.4800, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(81, 1, 'bill', 81, 81, 7, 'Dolores at.', 7.5600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(82, 1, 'bill', 82, 82, 1, 'Sint sint.', 39.7800, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(83, 1, 'bill', 83, 83, 1, 'Sint sint.', 25.3200, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(84, 1, 'bill', 84, 84, 8, 'At accusantium.', 13.2300, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(85, 1, 'bill', 85, 85, 1, 'Sint sint.', 0.8700, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(86, 1, 'bill', 86, 86, 10, 'Quod et et.', 128.3200, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(87, 1, 'bill', 87, 87, 9, 'Aperiam.', 45.6800, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(88, 1, 'bill', 88, 88, 7, 'Dolores at.', 112.2000, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(89, 1, 'bill', 89, 89, 1, 'Sint sint.', 86.7600, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(90, 1, 'bill', 90, 90, 8, 'At accusantium.', 101.0200, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(91, 1, 'bill', 91, 91, 1, 'Sint sint.', 60.8100, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(92, 1, 'bill', 92, 92, 3, 'Ex sed natus.', 123.2300, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(93, 1, 'bill', 93, 93, 10, 'Quod et et.', 51.3900, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(94, 1, 'bill', 94, 94, 5, 'Quidem.', 65.9300, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(95, 1, 'bill', 95, 95, 7, 'Dolores at.', 25.6800, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(96, 1, 'bill', 96, 96, 1, 'Sint sint.', 14.4800, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(97, 1, 'bill', 97, 97, 4, 'Earum rerum.', 80.5700, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(98, 1, 'bill', 98, 98, 1, 'Sint sint.', 6.6100, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(99, 1, 'bill', 99, 99, 5, 'Quidem.', 44.4300, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(100, 1, 'bill', 100, 100, 5, 'Quidem.', 20.1200, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(101, 1, 'invoice', 101, 101, 8, 'At accusantium.', 9.7900, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(102, 1, 'invoice', 102, 102, 9, 'Aperiam.', 134.3300, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(103, 1, 'invoice', 103, 103, 2, 'Nesciunt.', 54.2700, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(104, 1, 'invoice', 104, 104, 8, 'At accusantium.', 80.9900, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(105, 1, 'invoice', 105, 105, 7, 'Dolores at.', 133.1400, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(106, 1, 'invoice', 106, 106, 6, 'Quis sed.', 107.8400, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(107, 1, 'invoice', 107, 107, 5, 'Quidem.', 94.0200, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(108, 1, 'invoice', 108, 108, 6, 'Quis sed.', 53.9200, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(109, 1, 'invoice', 109, 109, 3, 'Ex sed natus.', 52.9700, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(110, 1, 'invoice', 110, 110, 4, 'Earum rerum.', 52.6900, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(111, 1, 'invoice', 111, 111, 5, 'Quidem.', 71.5700, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(112, 1, 'invoice', 112, 112, 9, 'Aperiam.', 10.8800, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(113, 1, 'invoice', 113, 113, 10, 'Quod et et.', 15.6500, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(114, 1, 'invoice', 114, 114, 7, 'Dolores at.', 21.0000, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(115, 1, 'invoice', 115, 115, 4, 'Earum rerum.', 80.0200, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(116, 1, 'invoice', 116, 116, 6, 'Quis sed.', 18.2400, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(117, 1, 'invoice', 117, 117, 8, 'At accusantium.', 95.7800, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(118, 1, 'invoice', 118, 118, 2, 'Nesciunt.', 55.0100, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(119, 1, 'invoice', 119, 119, 10, 'Quod et et.', 121.5300, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(120, 1, 'invoice', 120, 120, 9, 'Aperiam.', 134.9600, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(121, 1, 'invoice', 121, 121, 6, 'Quis sed.', 160.0700, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(122, 1, 'invoice', 122, 122, 9, 'Aperiam.', 88.5800, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(123, 1, 'invoice', 123, 123, 2, 'Nesciunt.', 34.7900, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(124, 1, 'invoice', 124, 124, 2, 'Nesciunt.', 91.3400, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(125, 1, 'invoice', 125, 125, 1, 'Sint sint.', 95.5600, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(126, 1, 'invoice', 126, 126, 6, 'Quis sed.', 95.5100, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(127, 1, 'invoice', 127, 127, 8, 'At accusantium.', 76.1000, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(128, 1, 'invoice', 128, 128, 8, 'At accusantium.', 94.1900, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(129, 1, 'invoice', 129, 129, 8, 'At accusantium.', 93.1200, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(130, 1, 'invoice', 130, 130, 3, 'Ex sed natus.', 122.6500, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(131, 1, 'invoice', 131, 131, 4, 'Earum rerum.', 70.3500, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(132, 1, 'invoice', 132, 132, 10, 'Quod et et.', 85.2100, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(133, 1, 'invoice', 133, 133, 1, 'Sint sint.', 5.3900, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(134, 1, 'invoice', 134, 134, 1, 'Sint sint.', 38.3900, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(135, 1, 'invoice', 135, 135, 2, 'Nesciunt.', 5.8700, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(136, 1, 'invoice', 136, 136, 3, 'Ex sed natus.', 81.2200, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(137, 1, 'invoice', 137, 137, 3, 'Ex sed natus.', 128.5200, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(138, 1, 'invoice', 138, 138, 2, 'Nesciunt.', 116.1300, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(139, 1, 'invoice', 139, 139, 8, 'At accusantium.', 71.4900, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(140, 1, 'invoice', 140, 140, 4, 'Earum rerum.', 65.1400, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(141, 1, 'invoice', 141, 141, 6, 'Quis sed.', 110.9700, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(142, 1, 'invoice', 142, 142, 7, 'Dolores at.', 112.7500, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(143, 1, 'invoice', 143, 143, 1, 'Sint sint.', 103.4500, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(144, 1, 'invoice', 144, 144, 1, 'Sint sint.', 92.2700, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(145, 1, 'invoice', 145, 145, 3, 'Ex sed natus.', 9.9200, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(146, 1, 'invoice', 146, 146, 8, 'At accusantium.', 41.6400, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(147, 1, 'invoice', 147, 147, 4, 'Earum rerum.', 60.2000, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(148, 1, 'invoice', 148, 148, 10, 'Quod et et.', 103.3600, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(149, 1, 'invoice', 149, 149, 1, 'Sint sint.', 102.1800, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(150, 1, 'invoice', 150, 150, 6, 'Quis sed.', 15.6100, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(151, 1, 'invoice', 151, 151, 10, 'Quod et et.', 119.0100, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(152, 1, 'invoice', 152, 152, 9, 'Aperiam.', 27.0700, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(153, 1, 'invoice', 153, 153, 9, 'Aperiam.', 31.3600, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(154, 1, 'invoice', 154, 154, 9, 'Aperiam.', 64.6900, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(155, 1, 'invoice', 155, 155, 10, 'Quod et et.', 92.9300, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(156, 1, 'invoice', 156, 156, 7, 'Dolores at.', 5.6700, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(157, 1, 'invoice', 157, 157, 8, 'At accusantium.', 15.5900, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(158, 1, 'invoice', 158, 158, 3, 'Ex sed natus.', 153.7900, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(159, 1, 'invoice', 159, 159, 6, 'Quis sed.', 41.8300, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(160, 1, 'invoice', 160, 160, 1, 'Sint sint.', 45.9100, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(161, 1, 'invoice', 161, 161, 4, 'Earum rerum.', 92.7000, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(162, 1, 'invoice', 162, 162, 5, 'Quidem.', 74.8500, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(163, 1, 'invoice', 163, 163, 7, 'Dolores at.', 68.9200, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(164, 1, 'invoice', 164, 164, 3, 'Ex sed natus.', 99.5000, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(165, 1, 'invoice', 165, 165, 5, 'Quidem.', 43.7200, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(166, 1, 'invoice', 166, 166, 2, 'Nesciunt.', 51.7500, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(167, 1, 'invoice', 167, 167, 5, 'Quidem.', 82.2400, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(168, 1, 'invoice', 168, 168, 6, 'Quis sed.', 142.1000, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(169, 1, 'invoice', 169, 169, 2, 'Nesciunt.', 66.3900, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(170, 1, 'invoice', 170, 170, 7, 'Dolores at.', 49.5000, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(171, 1, 'invoice', 171, 171, 2, 'Nesciunt.', 26.8400, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(172, 1, 'invoice', 172, 172, 9, 'Aperiam.', 12.8300, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(173, 1, 'invoice', 173, 173, 1, 'Sint sint.', 74.7300, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(174, 1, 'invoice', 174, 174, 8, 'At accusantium.', 74.8500, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(175, 1, 'invoice', 175, 175, 10, 'Quod et et.', 144.2400, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(176, 1, 'invoice', 176, 176, 3, 'Ex sed natus.', 134.4300, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(177, 1, 'invoice', 177, 177, 6, 'Quis sed.', 14.3400, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(178, 1, 'invoice', 178, 178, 9, 'Aperiam.', 40.0600, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(179, 1, 'invoice', 179, 179, 8, 'At accusantium.', 60.9000, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(180, 1, 'invoice', 180, 180, 8, 'At accusantium.', 71.4400, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(181, 1, 'invoice', 181, 181, 3, 'Ex sed natus.', 86.9700, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(182, 1, 'invoice', 182, 182, 10, 'Quod et et.', 48.0600, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(183, 1, 'invoice', 183, 183, 10, 'Quod et et.', 107.4000, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(184, 1, 'invoice', 184, 184, 6, 'Quis sed.', 7.0400, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(185, 1, 'invoice', 185, 185, 4, 'Earum rerum.', 34.9100, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(186, 1, 'invoice', 186, 186, 7, 'Dolores at.', 51.3700, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(187, 1, 'invoice', 187, 187, 3, 'Ex sed natus.', 164.1400, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(188, 1, 'invoice', 188, 188, 2, 'Nesciunt.', 15.8100, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(189, 1, 'invoice', 189, 189, 1, 'Sint sint.', 65.3400, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(190, 1, 'invoice', 190, 190, 8, 'At accusantium.', 92.8300, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(191, 1, 'invoice', 191, 191, 1, 'Sint sint.', 93.8300, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(192, 1, 'invoice', 192, 192, 2, 'Nesciunt.', 101.0200, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(193, 1, 'invoice', 193, 193, 6, 'Quis sed.', 37.4800, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(194, 1, 'invoice', 194, 194, 6, 'Quis sed.', 27.9200, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(195, 1, 'invoice', 195, 195, 7, 'Dolores at.', 107.5600, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(196, 1, 'invoice', 196, 196, 5, 'Quidem.', 78.0400, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(197, 1, 'invoice', 197, 197, 10, 'Quod et et.', 125.6600, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(198, 1, 'invoice', 198, 198, 6, 'Quis sed.', 104.6300, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(199, 1, 'invoice', 199, 199, 3, 'Ex sed natus.', 159.8700, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(200, 1, 'invoice', 200, 200, 9, 'Aperiam.', 146.2600, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(201, 1, 'bill', 201, 201, 3, 'Ex sed natus.', 1.9700, 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(202, 1, 'bill', 201, 201, 10, 'Quod et et.', 1.3800, 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(204, 1, 'bill', 203, 203, 3, 'Ex sed natus.', 3.1500, 'core::ui', '1', '2022-03-07 05:25:15', '2022-03-07 05:25:15', NULL),
(205, 1, 'invoice', 205, 205, 3, 'Ex sed natus.', 1.0800, 'core::ui', '1', '2022-07-03 08:12:36', '2022-07-03 08:12:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_document_totals`
--

CREATE TABLE `p9k_document_totals` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(15,4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_document_totals`
--

INSERT INTO `p9k_document_totals` (`id`, `company_id`, `type`, `document_id`, `code`, `name`, `amount`, `sort_order`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'bill', 1, 'sub_total', 'invoices.sub_total', 653.6200, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(2, 1, 'bill', 1, 'tax', 'Aperiam.', 106.4100, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(3, 1, 'bill', 1, 'total', 'invoices.total', 547.2100, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(4, 1, 'bill', 2, 'sub_total', 'invoices.sub_total', 282.1900, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(5, 1, 'bill', 2, 'tax', 'Quod et et.', 51.6100, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(6, 1, 'bill', 2, 'total', 'invoices.total', 333.8000, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(7, 1, 'bill', 3, 'sub_total', 'invoices.sub_total', 807.0600, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(8, 1, 'bill', 3, 'tax', 'Sint sint.', 95.0700, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(9, 1, 'bill', 3, 'total', 'invoices.total', 902.1300, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(10, 1, 'bill', 4, 'sub_total', 'invoices.sub_total', 404.2500, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(11, 1, 'bill', 4, 'tax', 'Quidem.', 45.3600, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(12, 1, 'bill', 4, 'total', 'invoices.total', 449.6100, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(13, 1, 'bill', 5, 'sub_total', 'invoices.sub_total', 325.0900, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(14, 1, 'bill', 5, 'tax', 'Earum rerum.', 38.7500, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(15, 1, 'bill', 5, 'total', 'invoices.total', 363.8400, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(16, 1, 'bill', 6, 'sub_total', 'invoices.sub_total', 86.5300, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(17, 1, 'bill', 6, 'tax', 'Ex sed natus.', 15.6400, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(18, 1, 'bill', 6, 'total', 'invoices.total', 70.8900, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(19, 1, 'bill', 7, 'sub_total', 'invoices.sub_total', 497.6200, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(20, 1, 'bill', 7, 'tax', 'Sint sint.', 58.6200, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(21, 1, 'bill', 7, 'total', 'invoices.total', 556.2400, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(22, 1, 'bill', 8, 'sub_total', 'invoices.sub_total', 824.8500, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(23, 1, 'bill', 8, 'tax', 'Aperiam.', 134.2900, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(24, 1, 'bill', 8, 'total', 'invoices.total', 690.5600, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(25, 1, 'bill', 9, 'sub_total', 'invoices.sub_total', 176.1700, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(26, 1, 'bill', 9, 'tax', 'Sint sint.', 20.7500, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(27, 1, 'bill', 9, 'total', 'invoices.total', 196.9200, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(28, 1, 'bill', 10, 'sub_total', 'invoices.sub_total', 809.6000, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(29, 1, 'bill', 10, 'tax', 'Quis sed.', 132.5300, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(30, 1, 'bill', 10, 'total', 'invoices.total', 942.1300, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(31, 1, 'bill', 11, 'sub_total', 'invoices.sub_total', 508.0400, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(32, 1, 'bill', 11, 'tax', 'Ex sed natus.', 91.8000, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(33, 1, 'bill', 11, 'total', 'invoices.total', 416.2400, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(34, 1, 'bill', 12, 'sub_total', 'invoices.sub_total', 971.6900, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(35, 1, 'bill', 12, 'tax', 'At accusantium.', 106.1100, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(36, 1, 'bill', 12, 'total', 'invoices.total', 1077.8000, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(37, 1, 'bill', 13, 'sub_total', 'invoices.sub_total', 161.1700, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(38, 1, 'bill', 13, 'tax', 'At accusantium.', 17.6000, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(39, 1, 'bill', 13, 'total', 'invoices.total', 178.7700, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(40, 1, 'bill', 14, 'sub_total', 'invoices.sub_total', 400.2100, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(41, 1, 'bill', 14, 'tax', 'Quis sed.', 65.5100, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(42, 1, 'bill', 14, 'total', 'invoices.total', 465.7200, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(43, 1, 'bill', 15, 'sub_total', 'invoices.sub_total', 392.9000, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(44, 1, 'bill', 15, 'tax', 'Ex sed natus.', 71.0000, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(45, 1, 'bill', 15, 'total', 'invoices.total', 321.9000, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(46, 1, 'bill', 16, 'sub_total', 'invoices.sub_total', 637.5500, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(47, 1, 'bill', 16, 'tax', 'Nesciunt.', 86.5800, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(48, 1, 'bill', 16, 'total', 'invoices.total', 550.9700, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(49, 1, 'bill', 17, 'sub_total', 'invoices.sub_total', 774.7900, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(50, 1, 'bill', 17, 'tax', 'Quod et et.', 141.7100, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(51, 1, 'bill', 17, 'total', 'invoices.total', 916.5000, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(52, 1, 'bill', 18, 'sub_total', 'invoices.sub_total', 444.5500, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(53, 1, 'bill', 18, 'tax', 'Sint sint.', 52.3700, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(54, 1, 'bill', 18, 'total', 'invoices.total', 496.9200, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(55, 1, 'bill', 19, 'sub_total', 'invoices.sub_total', 72.8600, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(56, 1, 'bill', 19, 'tax', 'Quidem.', 8.1800, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(57, 1, 'bill', 19, 'total', 'invoices.total', 81.0400, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(58, 1, 'bill', 20, 'sub_total', 'invoices.sub_total', 536.3700, 1, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(59, 1, 'bill', 20, 'tax', 'Earum rerum.', 63.9300, 2, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(60, 1, 'bill', 20, 'total', 'invoices.total', 600.3000, 3, 'core::console', NULL, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(61, 1, 'bill', 21, 'sub_total', 'invoices.sub_total', 149.3200, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(62, 1, 'bill', 21, 'tax', 'Nesciunt.', 20.2800, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(63, 1, 'bill', 21, 'total', 'invoices.total', 129.0400, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(64, 1, 'bill', 22, 'sub_total', 'invoices.sub_total', 625.6300, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(65, 1, 'bill', 22, 'tax', 'Sint sint.', 73.7000, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(66, 1, 'bill', 22, 'total', 'invoices.total', 699.3300, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(67, 1, 'bill', 23, 'sub_total', 'invoices.sub_total', 135.3700, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(68, 1, 'bill', 23, 'tax', 'Earum rerum.', 16.1400, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(69, 1, 'bill', 23, 'total', 'invoices.total', 151.5100, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(70, 1, 'bill', 24, 'sub_total', 'invoices.sub_total', 591.6700, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(71, 1, 'bill', 24, 'tax', 'At accusantium.', 64.6100, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(72, 1, 'bill', 24, 'total', 'invoices.total', 656.2800, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(73, 1, 'bill', 25, 'sub_total', 'invoices.sub_total', 258.0400, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(74, 1, 'bill', 25, 'tax', 'Quod et et.', 47.2000, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(75, 1, 'bill', 25, 'total', 'invoices.total', 305.2400, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(76, 1, 'bill', 26, 'sub_total', 'invoices.sub_total', 650.0300, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(77, 1, 'bill', 26, 'tax', 'At accusantium.', 70.9800, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(78, 1, 'bill', 26, 'total', 'invoices.total', 721.0100, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(79, 1, 'bill', 27, 'sub_total', 'invoices.sub_total', 106.1900, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(80, 1, 'bill', 27, 'tax', 'Sint sint.', 12.5100, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(81, 1, 'bill', 27, 'total', 'invoices.total', 118.7000, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(82, 1, 'bill', 28, 'sub_total', 'invoices.sub_total', 788.0100, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(83, 1, 'bill', 28, 'tax', 'Quis sed.', 129.0000, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(84, 1, 'bill', 28, 'total', 'invoices.total', 917.0100, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(85, 1, 'bill', 29, 'sub_total', 'invoices.sub_total', 743.3600, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(86, 1, 'bill', 29, 'tax', 'Earum rerum.', 88.6100, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(87, 1, 'bill', 29, 'total', 'invoices.total', 831.9700, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(88, 1, 'bill', 30, 'sub_total', 'invoices.sub_total', 385.0700, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(89, 1, 'bill', 30, 'tax', 'Ex sed natus.', 69.5800, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(90, 1, 'bill', 30, 'total', 'invoices.total', 315.4900, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(91, 1, 'bill', 31, 'sub_total', 'invoices.sub_total', 516.6300, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(92, 1, 'bill', 31, 'tax', 'Aperiam.', 84.1100, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(93, 1, 'bill', 31, 'total', 'invoices.total', 432.5200, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(94, 1, 'bill', 32, 'sub_total', 'invoices.sub_total', 407.5600, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(95, 1, 'bill', 32, 'tax', 'Quidem.', 45.7300, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(96, 1, 'bill', 32, 'total', 'invoices.total', 453.2900, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(97, 1, 'bill', 33, 'sub_total', 'invoices.sub_total', 227.1400, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(98, 1, 'bill', 33, 'tax', 'Nesciunt.', 30.8500, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(99, 1, 'bill', 33, 'total', 'invoices.total', 196.2900, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(100, 1, 'bill', 34, 'sub_total', 'invoices.sub_total', 993.9700, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(101, 1, 'bill', 34, 'tax', 'Ex sed natus.', 179.6100, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(102, 1, 'bill', 34, 'total', 'invoices.total', 814.3600, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(103, 1, 'bill', 35, 'sub_total', 'invoices.sub_total', 476.0600, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(104, 1, 'bill', 35, 'tax', 'Quis sed.', 77.9300, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(105, 1, 'bill', 35, 'total', 'invoices.total', 553.9900, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(106, 1, 'bill', 36, 'sub_total', 'invoices.sub_total', 167.0400, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(107, 1, 'bill', 36, 'tax', 'Aperiam.', 27.1900, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(108, 1, 'bill', 36, 'total', 'invoices.total', 139.8500, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(109, 1, 'bill', 37, 'sub_total', 'invoices.sub_total', 527.4400, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(110, 1, 'bill', 37, 'tax', 'Quidem.', 59.1800, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(111, 1, 'bill', 37, 'total', 'invoices.total', 586.6200, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(112, 1, 'bill', 38, 'sub_total', 'invoices.sub_total', 782.2600, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(113, 1, 'bill', 38, 'tax', 'Aperiam.', 127.3500, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(114, 1, 'bill', 38, 'total', 'invoices.total', 654.9100, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(115, 1, 'bill', 39, 'sub_total', 'invoices.sub_total', 499.2200, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(116, 1, 'bill', 39, 'tax', 'Sint sint.', 58.8100, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(117, 1, 'bill', 39, 'total', 'invoices.total', 558.0300, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(118, 1, 'bill', 40, 'sub_total', 'invoices.sub_total', 213.4700, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(119, 1, 'bill', 40, 'tax', 'Quod et et.', 39.0400, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(120, 1, 'bill', 40, 'total', 'invoices.total', 252.5100, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(121, 1, 'bill', 41, 'sub_total', 'invoices.sub_total', 760.5500, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(122, 1, 'bill', 41, 'tax', 'Quod et et.', 139.1000, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(123, 1, 'bill', 41, 'total', 'invoices.total', 899.6500, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(124, 1, 'bill', 42, 'sub_total', 'invoices.sub_total', 508.8400, 1, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(125, 1, 'bill', 42, 'tax', 'Aperiam.', 82.8400, 2, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(126, 1, 'bill', 42, 'total', 'invoices.total', 426.0000, 3, 'core::console', NULL, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(127, 1, 'bill', 43, 'sub_total', 'invoices.sub_total', 40.2500, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(128, 1, 'bill', 43, 'tax', 'Nesciunt.', 5.4700, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(129, 1, 'bill', 43, 'total', 'invoices.total', 34.7800, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(130, 1, 'bill', 44, 'sub_total', 'invoices.sub_total', 784.2900, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(131, 1, 'bill', 44, 'tax', 'Quis sed.', 128.3900, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(132, 1, 'bill', 44, 'total', 'invoices.total', 912.6800, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(133, 1, 'bill', 45, 'sub_total', 'invoices.sub_total', 278.3800, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(134, 1, 'bill', 45, 'tax', 'Dolores at.', 51.8900, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(135, 1, 'bill', 45, 'total', 'invoices.total', 330.2700, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(136, 1, 'bill', 46, 'sub_total', 'invoices.sub_total', 573.6300, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(137, 1, 'bill', 46, 'tax', 'Quis sed.', 93.9000, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(138, 1, 'bill', 46, 'total', 'invoices.total', 667.5300, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(139, 1, 'bill', 47, 'sub_total', 'invoices.sub_total', 251.0200, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(140, 1, 'bill', 47, 'tax', 'Aperiam.', 40.8700, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(141, 1, 'bill', 47, 'total', 'invoices.total', 210.1500, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(142, 1, 'bill', 48, 'sub_total', 'invoices.sub_total', 689.6600, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(143, 1, 'bill', 48, 'tax', 'Dolores at.', 128.5500, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(144, 1, 'bill', 48, 'total', 'invoices.total', 818.2100, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(145, 1, 'bill', 49, 'sub_total', 'invoices.sub_total', 503.2700, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(146, 1, 'bill', 49, 'tax', 'Quis sed.', 82.3900, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(147, 1, 'bill', 49, 'total', 'invoices.total', 585.6600, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(148, 1, 'bill', 50, 'sub_total', 'invoices.sub_total', 607.8200, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(149, 1, 'bill', 50, 'tax', 'Dolores at.', 113.3000, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(150, 1, 'bill', 50, 'total', 'invoices.total', 721.1200, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(151, 1, 'bill', 51, 'sub_total', 'invoices.sub_total', 120.8200, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(152, 1, 'bill', 51, 'tax', 'Ex sed natus.', 21.8300, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(153, 1, 'bill', 51, 'total', 'invoices.total', 98.9900, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(154, 1, 'bill', 52, 'sub_total', 'invoices.sub_total', 388.4000, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(155, 1, 'bill', 52, 'tax', 'Sint sint.', 45.7500, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(156, 1, 'bill', 52, 'total', 'invoices.total', 434.1500, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(157, 1, 'bill', 53, 'sub_total', 'invoices.sub_total', 835.3500, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(158, 1, 'bill', 53, 'tax', 'Ex sed natus.', 150.9500, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(159, 1, 'bill', 53, 'total', 'invoices.total', 684.4000, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(160, 1, 'bill', 54, 'sub_total', 'invoices.sub_total', 824.9200, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(161, 1, 'bill', 54, 'tax', 'Nesciunt.', 112.0200, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(162, 1, 'bill', 54, 'total', 'invoices.total', 712.9000, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(163, 1, 'bill', 55, 'sub_total', 'invoices.sub_total', 643.7100, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(164, 1, 'bill', 55, 'tax', 'Earum rerum.', 76.7300, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(165, 1, 'bill', 55, 'total', 'invoices.total', 720.4400, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(166, 1, 'bill', 56, 'sub_total', 'invoices.sub_total', 934.7600, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(167, 1, 'bill', 56, 'tax', 'At accusantium.', 102.0800, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(168, 1, 'bill', 56, 'total', 'invoices.total', 1036.8400, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(169, 1, 'bill', 57, 'sub_total', 'invoices.sub_total', 540.4600, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(170, 1, 'bill', 57, 'tax', 'Quod et et.', 98.8500, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(171, 1, 'bill', 57, 'total', 'invoices.total', 639.3100, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(172, 1, 'bill', 58, 'sub_total', 'invoices.sub_total', 859.1800, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(173, 1, 'bill', 58, 'tax', 'Earum rerum.', 102.4100, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(174, 1, 'bill', 58, 'total', 'invoices.total', 961.5900, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(175, 1, 'bill', 59, 'sub_total', 'invoices.sub_total', 549.7900, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(176, 1, 'bill', 59, 'tax', 'Quidem.', 61.6900, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(177, 1, 'bill', 59, 'total', 'invoices.total', 611.4800, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(178, 1, 'bill', 60, 'sub_total', 'invoices.sub_total', 686.6000, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(179, 1, 'bill', 60, 'tax', 'Dolores at.', 127.9800, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(180, 1, 'bill', 60, 'total', 'invoices.total', 814.5800, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(181, 1, 'bill', 61, 'sub_total', 'invoices.sub_total', 704.3800, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(182, 1, 'bill', 61, 'tax', 'Dolores at.', 131.3000, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(183, 1, 'bill', 61, 'total', 'invoices.total', 835.6800, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(184, 1, 'bill', 62, 'sub_total', 'invoices.sub_total', 702.4600, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(185, 1, 'bill', 62, 'tax', 'Ex sed natus.', 126.9300, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(186, 1, 'bill', 62, 'total', 'invoices.total', 575.5300, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(187, 1, 'bill', 63, 'sub_total', 'invoices.sub_total', 340.9700, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(188, 1, 'bill', 63, 'tax', 'Earum rerum.', 40.6400, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(189, 1, 'bill', 63, 'total', 'invoices.total', 381.6100, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(190, 1, 'bill', 64, 'sub_total', 'invoices.sub_total', 526.5200, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(191, 1, 'bill', 64, 'tax', 'Sint sint.', 62.0200, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(192, 1, 'bill', 64, 'total', 'invoices.total', 588.5400, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(193, 1, 'bill', 65, 'sub_total', 'invoices.sub_total', 415.6400, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(194, 1, 'bill', 65, 'tax', 'Sint sint.', 48.9600, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(195, 1, 'bill', 65, 'total', 'invoices.total', 464.6000, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(196, 1, 'bill', 66, 'sub_total', 'invoices.sub_total', 117.1900, 1, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(197, 1, 'bill', 66, 'tax', 'Ex sed natus.', 21.1800, 2, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(198, 1, 'bill', 66, 'total', 'invoices.total', 96.0100, 3, 'core::console', NULL, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(199, 1, 'bill', 67, 'sub_total', 'invoices.sub_total', 588.8400, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(200, 1, 'bill', 67, 'tax', 'Dolores at.', 109.7600, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(201, 1, 'bill', 67, 'total', 'invoices.total', 698.6000, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(202, 1, 'bill', 68, 'sub_total', 'invoices.sub_total', 91.6700, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(203, 1, 'bill', 68, 'tax', 'Ex sed natus.', 16.5600, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(204, 1, 'bill', 68, 'total', 'invoices.total', 75.1100, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(205, 1, 'bill', 69, 'sub_total', 'invoices.sub_total', 269.6200, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(206, 1, 'bill', 69, 'tax', 'Quod et et.', 49.3100, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(207, 1, 'bill', 69, 'total', 'invoices.total', 318.9300, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(208, 1, 'bill', 70, 'sub_total', 'invoices.sub_total', 740.0800, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(209, 1, 'bill', 70, 'tax', 'Sint sint.', 87.1800, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(210, 1, 'bill', 70, 'total', 'invoices.total', 827.2600, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(211, 1, 'bill', 71, 'sub_total', 'invoices.sub_total', 261.7100, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(212, 1, 'bill', 71, 'tax', 'Ex sed natus.', 47.2900, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(213, 1, 'bill', 71, 'total', 'invoices.total', 214.4200, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(214, 1, 'bill', 72, 'sub_total', 'invoices.sub_total', 550.3900, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(215, 1, 'bill', 72, 'tax', 'Quidem.', 61.7500, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(216, 1, 'bill', 72, 'total', 'invoices.total', 612.1400, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(217, 1, 'bill', 73, 'sub_total', 'invoices.sub_total', 442.8900, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(218, 1, 'bill', 73, 'tax', 'Quod et et.', 81.0100, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(219, 1, 'bill', 73, 'total', 'invoices.total', 523.9000, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(220, 1, 'bill', 74, 'sub_total', 'invoices.sub_total', 189.9200, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(221, 1, 'bill', 74, 'tax', 'At accusantium.', 20.7400, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(222, 1, 'bill', 74, 'total', 'invoices.total', 210.6600, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(223, 1, 'bill', 75, 'sub_total', 'invoices.sub_total', 150.9500, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(224, 1, 'bill', 75, 'tax', 'Quis sed.', 24.7100, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(225, 1, 'bill', 75, 'total', 'invoices.total', 175.6600, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(226, 1, 'bill', 76, 'sub_total', 'invoices.sub_total', 546.8200, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(227, 1, 'bill', 76, 'tax', 'Quidem.', 61.3500, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(228, 1, 'bill', 76, 'total', 'invoices.total', 608.1700, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(229, 1, 'bill', 77, 'sub_total', 'invoices.sub_total', 854.9600, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(230, 1, 'bill', 77, 'tax', 'At accusantium.', 93.3600, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(231, 1, 'bill', 77, 'total', 'invoices.total', 948.3200, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(232, 1, 'bill', 78, 'sub_total', 'invoices.sub_total', 649.6900, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(233, 1, 'bill', 78, 'tax', 'Earum rerum.', 77.4400, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(234, 1, 'bill', 78, 'total', 'invoices.total', 727.1300, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(235, 1, 'bill', 79, 'sub_total', 'invoices.sub_total', 924.5300, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(236, 1, 'bill', 79, 'tax', 'At accusantium.', 100.9600, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(237, 1, 'bill', 79, 'total', 'invoices.total', 1025.4900, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(238, 1, 'bill', 80, 'sub_total', 'invoices.sub_total', 973.4600, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(239, 1, 'bill', 80, 'tax', 'Aperiam.', 158.4800, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(240, 1, 'bill', 80, 'total', 'invoices.total', 814.9800, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(241, 1, 'bill', 81, 'sub_total', 'invoices.sub_total', 40.5600, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(242, 1, 'bill', 81, 'tax', 'Dolores at.', 7.5600, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(243, 1, 'bill', 81, 'total', 'invoices.total', 48.1200, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(244, 1, 'bill', 82, 'sub_total', 'invoices.sub_total', 337.6600, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(245, 1, 'bill', 82, 'tax', 'Sint sint.', 39.7800, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(246, 1, 'bill', 82, 'total', 'invoices.total', 377.4400, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(247, 1, 'bill', 83, 'sub_total', 'invoices.sub_total', 214.9300, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(248, 1, 'bill', 83, 'tax', 'Sint sint.', 25.3200, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(249, 1, 'bill', 83, 'total', 'invoices.total', 240.2500, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(250, 1, 'bill', 84, 'sub_total', 'invoices.sub_total', 121.1900, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(251, 1, 'bill', 84, 'tax', 'At accusantium.', 13.2300, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(252, 1, 'bill', 84, 'total', 'invoices.total', 134.4200, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(253, 1, 'bill', 85, 'sub_total', 'invoices.sub_total', 7.4300, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(254, 1, 'bill', 85, 'tax', 'Sint sint.', 0.8700, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(255, 1, 'bill', 85, 'total', 'invoices.total', 8.3000, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(256, 1, 'bill', 86, 'sub_total', 'invoices.sub_total', 701.6100, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(257, 1, 'bill', 86, 'tax', 'Quod et et.', 128.3200, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(258, 1, 'bill', 86, 'total', 'invoices.total', 829.9300, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(259, 1, 'bill', 87, 'sub_total', 'invoices.sub_total', 280.5600, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(260, 1, 'bill', 87, 'tax', 'Aperiam.', 45.6800, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(261, 1, 'bill', 87, 'total', 'invoices.total', 234.8800, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(262, 1, 'bill', 88, 'sub_total', 'invoices.sub_total', 601.9300, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(263, 1, 'bill', 88, 'tax', 'Dolores at.', 112.2000, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(264, 1, 'bill', 88, 'total', 'invoices.total', 714.1300, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(265, 1, 'bill', 89, 'sub_total', 'invoices.sub_total', 736.5000, 1, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(266, 1, 'bill', 89, 'tax', 'Sint sint.', 86.7600, 2, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(267, 1, 'bill', 89, 'total', 'invoices.total', 823.2600, 3, 'core::console', NULL, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(268, 1, 'bill', 90, 'sub_total', 'invoices.sub_total', 925.1200, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(269, 1, 'bill', 90, 'tax', 'At accusantium.', 101.0200, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(270, 1, 'bill', 90, 'total', 'invoices.total', 1026.1400, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(271, 1, 'bill', 91, 'sub_total', 'invoices.sub_total', 516.1900, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(272, 1, 'bill', 91, 'tax', 'Sint sint.', 60.8100, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(273, 1, 'bill', 91, 'total', 'invoices.total', 577.0000, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(274, 1, 'bill', 92, 'sub_total', 'invoices.sub_total', 681.9400, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(275, 1, 'bill', 92, 'tax', 'Ex sed natus.', 123.2300, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(276, 1, 'bill', 92, 'total', 'invoices.total', 558.7100, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(277, 1, 'bill', 93, 'sub_total', 'invoices.sub_total', 280.9700, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(278, 1, 'bill', 93, 'tax', 'Quod et et.', 51.3900, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(279, 1, 'bill', 93, 'total', 'invoices.total', 332.3600, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(280, 1, 'bill', 94, 'sub_total', 'invoices.sub_total', 587.6600, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(281, 1, 'bill', 94, 'tax', 'Quidem.', 65.9300, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(282, 1, 'bill', 94, 'total', 'invoices.total', 653.5900, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(283, 1, 'bill', 95, 'sub_total', 'invoices.sub_total', 137.7700, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(284, 1, 'bill', 95, 'tax', 'Dolores at.', 25.6800, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(285, 1, 'bill', 95, 'total', 'invoices.total', 163.4500, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(286, 1, 'bill', 96, 'sub_total', 'invoices.sub_total', 122.9300, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(287, 1, 'bill', 96, 'tax', 'Sint sint.', 14.4800, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(288, 1, 'bill', 96, 'total', 'invoices.total', 137.4100, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(289, 1, 'bill', 97, 'sub_total', 'invoices.sub_total', 675.9600, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(290, 1, 'bill', 97, 'tax', 'Earum rerum.', 80.5700, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(291, 1, 'bill', 97, 'total', 'invoices.total', 756.5300, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(292, 1, 'bill', 98, 'sub_total', 'invoices.sub_total', 56.0900, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(293, 1, 'bill', 98, 'tax', 'Sint sint.', 6.6100, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(294, 1, 'bill', 98, 'total', 'invoices.total', 62.7000, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(295, 1, 'bill', 99, 'sub_total', 'invoices.sub_total', 396.0300, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(296, 1, 'bill', 99, 'tax', 'Quidem.', 44.4300, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(297, 1, 'bill', 99, 'total', 'invoices.total', 440.4600, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(298, 1, 'bill', 100, 'sub_total', 'invoices.sub_total', 179.3700, 1, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(299, 1, 'bill', 100, 'tax', 'Quidem.', 20.1200, 2, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(300, 1, 'bill', 100, 'total', 'invoices.total', 199.4900, 3, 'core::console', NULL, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(301, 1, 'invoice', 101, 'sub_total', 'invoices.sub_total', 89.6600, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(302, 1, 'invoice', 101, 'tax', 'At accusantium.', 9.7900, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(303, 1, 'invoice', 101, 'total', 'invoices.total', 99.4500, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(304, 1, 'invoice', 102, 'sub_total', 'invoices.sub_total', 825.1000, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(305, 1, 'invoice', 102, 'tax', 'Aperiam.', 134.3300, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(306, 1, 'invoice', 102, 'total', 'invoices.total', 690.7700, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(307, 1, 'invoice', 103, 'sub_total', 'invoices.sub_total', 399.6000, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(308, 1, 'invoice', 103, 'tax', 'Nesciunt.', 54.2700, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(309, 1, 'invoice', 103, 'total', 'invoices.total', 345.3300, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(310, 1, 'invoice', 104, 'sub_total', 'invoices.sub_total', 741.6900, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(311, 1, 'invoice', 104, 'tax', 'At accusantium.', 80.9900, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(312, 1, 'invoice', 104, 'total', 'invoices.total', 822.6800, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(313, 1, 'invoice', 105, 'sub_total', 'invoices.sub_total', 714.2700, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(314, 1, 'invoice', 105, 'tax', 'Dolores at.', 133.1400, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(315, 1, 'invoice', 105, 'total', 'invoices.total', 847.4100, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(316, 1, 'invoice', 106, 'sub_total', 'invoices.sub_total', 658.7400, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(317, 1, 'invoice', 106, 'tax', 'Quis sed.', 107.8400, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(318, 1, 'invoice', 106, 'total', 'invoices.total', 766.5800, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(319, 1, 'invoice', 107, 'sub_total', 'invoices.sub_total', 837.9900, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(320, 1, 'invoice', 107, 'tax', 'Quidem.', 94.0200, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(321, 1, 'invoice', 107, 'total', 'invoices.total', 932.0100, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(322, 1, 'invoice', 108, 'sub_total', 'invoices.sub_total', 329.3900, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(323, 1, 'invoice', 108, 'tax', 'Quis sed.', 53.9200, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(324, 1, 'invoice', 108, 'total', 'invoices.total', 383.3100, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(325, 1, 'invoice', 109, 'sub_total', 'invoices.sub_total', 293.1300, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(326, 1, 'invoice', 109, 'tax', 'Ex sed natus.', 52.9700, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(327, 1, 'invoice', 109, 'total', 'invoices.total', 240.1600, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(328, 1, 'invoice', 110, 'sub_total', 'invoices.sub_total', 442.0000, 1, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(329, 1, 'invoice', 110, 'tax', 'Earum rerum.', 52.6900, 2, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(330, 1, 'invoice', 110, 'total', 'invoices.total', 494.6900, 3, 'core::console', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(331, 1, 'invoice', 111, 'sub_total', 'invoices.sub_total', 637.8800, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(332, 1, 'invoice', 111, 'tax', 'Quidem.', 71.5700, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(333, 1, 'invoice', 111, 'total', 'invoices.total', 709.4500, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(334, 1, 'invoice', 112, 'sub_total', 'invoices.sub_total', 66.8600, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(335, 1, 'invoice', 112, 'tax', 'Aperiam.', 10.8800, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(336, 1, 'invoice', 112, 'total', 'invoices.total', 55.9800, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(337, 1, 'invoice', 113, 'sub_total', 'invoices.sub_total', 85.5400, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(338, 1, 'invoice', 113, 'tax', 'Quod et et.', 15.6500, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(339, 1, 'invoice', 113, 'total', 'invoices.total', 101.1900, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(340, 1, 'invoice', 114, 'sub_total', 'invoices.sub_total', 112.6600, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(341, 1, 'invoice', 114, 'tax', 'Dolores at.', 21.0000, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(342, 1, 'invoice', 114, 'total', 'invoices.total', 133.6600, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(343, 1, 'invoice', 115, 'sub_total', 'invoices.sub_total', 671.2900, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(344, 1, 'invoice', 115, 'tax', 'Earum rerum.', 80.0200, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(345, 1, 'invoice', 115, 'total', 'invoices.total', 751.3100, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(346, 1, 'invoice', 116, 'sub_total', 'invoices.sub_total', 111.4400, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(347, 1, 'invoice', 116, 'tax', 'Quis sed.', 18.2400, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(348, 1, 'invoice', 116, 'total', 'invoices.total', 129.6800, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(349, 1, 'invoice', 117, 'sub_total', 'invoices.sub_total', 877.0800, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(350, 1, 'invoice', 117, 'tax', 'At accusantium.', 95.7800, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(351, 1, 'invoice', 117, 'total', 'invoices.total', 972.8600, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(352, 1, 'invoice', 118, 'sub_total', 'invoices.sub_total', 405.1100, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(353, 1, 'invoice', 118, 'tax', 'Nesciunt.', 55.0100, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(354, 1, 'invoice', 118, 'total', 'invoices.total', 350.1000, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(355, 1, 'invoice', 119, 'sub_total', 'invoices.sub_total', 664.4900, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(356, 1, 'invoice', 119, 'tax', 'Quod et et.', 121.5300, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(357, 1, 'invoice', 119, 'total', 'invoices.total', 786.0200, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(358, 1, 'invoice', 120, 'sub_total', 'invoices.sub_total', 829.0000, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(359, 1, 'invoice', 120, 'tax', 'Aperiam.', 134.9600, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(360, 1, 'invoice', 120, 'total', 'invoices.total', 694.0400, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(361, 1, 'invoice', 121, 'sub_total', 'invoices.sub_total', 977.8000, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(362, 1, 'invoice', 121, 'tax', 'Quis sed.', 160.0700, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(363, 1, 'invoice', 121, 'total', 'invoices.total', 1137.8700, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(364, 1, 'invoice', 122, 'sub_total', 'invoices.sub_total', 544.1300, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(365, 1, 'invoice', 122, 'tax', 'Aperiam.', 88.5800, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(366, 1, 'invoice', 122, 'total', 'invoices.total', 455.5500, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL);
INSERT INTO `p9k_document_totals` (`id`, `company_id`, `type`, `document_id`, `code`, `name`, `amount`, `sort_order`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(367, 1, 'invoice', 123, 'sub_total', 'invoices.sub_total', 256.2100, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(368, 1, 'invoice', 123, 'tax', 'Nesciunt.', 34.7900, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(369, 1, 'invoice', 123, 'total', 'invoices.total', 221.4200, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(370, 1, 'invoice', 124, 'sub_total', 'invoices.sub_total', 672.5900, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(371, 1, 'invoice', 124, 'tax', 'Nesciunt.', 91.3400, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(372, 1, 'invoice', 124, 'total', 'invoices.total', 581.2500, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(373, 1, 'invoice', 125, 'sub_total', 'invoices.sub_total', 811.1900, 1, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(374, 1, 'invoice', 125, 'tax', 'Sint sint.', 95.5600, 2, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(375, 1, 'invoice', 125, 'total', 'invoices.total', 906.7500, 3, 'core::console', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(376, 1, 'invoice', 126, 'sub_total', 'invoices.sub_total', 583.4300, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(377, 1, 'invoice', 126, 'tax', 'Quis sed.', 95.5100, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(378, 1, 'invoice', 126, 'total', 'invoices.total', 678.9400, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(379, 1, 'invoice', 127, 'sub_total', 'invoices.sub_total', 696.9100, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(380, 1, 'invoice', 127, 'tax', 'At accusantium.', 76.1000, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(381, 1, 'invoice', 127, 'total', 'invoices.total', 773.0100, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(382, 1, 'invoice', 128, 'sub_total', 'invoices.sub_total', 862.5300, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(383, 1, 'invoice', 128, 'tax', 'At accusantium.', 94.1900, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(384, 1, 'invoice', 128, 'total', 'invoices.total', 956.7200, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(385, 1, 'invoice', 129, 'sub_total', 'invoices.sub_total', 852.7200, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(386, 1, 'invoice', 129, 'tax', 'At accusantium.', 93.1200, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(387, 1, 'invoice', 129, 'total', 'invoices.total', 945.8400, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(388, 1, 'invoice', 130, 'sub_total', 'invoices.sub_total', 678.7700, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(389, 1, 'invoice', 130, 'tax', 'Ex sed natus.', 122.6500, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(390, 1, 'invoice', 130, 'total', 'invoices.total', 556.1200, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(391, 1, 'invoice', 131, 'sub_total', 'invoices.sub_total', 590.1800, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(392, 1, 'invoice', 131, 'tax', 'Earum rerum.', 70.3500, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(393, 1, 'invoice', 131, 'total', 'invoices.total', 660.5300, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(394, 1, 'invoice', 132, 'sub_total', 'invoices.sub_total', 465.8700, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(395, 1, 'invoice', 132, 'tax', 'Quod et et.', 85.2100, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(396, 1, 'invoice', 132, 'total', 'invoices.total', 551.0800, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(397, 1, 'invoice', 133, 'sub_total', 'invoices.sub_total', 45.7100, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(398, 1, 'invoice', 133, 'tax', 'Sint sint.', 5.3900, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(399, 1, 'invoice', 133, 'total', 'invoices.total', 51.1000, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(400, 1, 'invoice', 134, 'sub_total', 'invoices.sub_total', 325.8900, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(401, 1, 'invoice', 134, 'tax', 'Sint sint.', 38.3900, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(402, 1, 'invoice', 134, 'total', 'invoices.total', 364.2800, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(403, 1, 'invoice', 135, 'sub_total', 'invoices.sub_total', 43.1900, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(404, 1, 'invoice', 135, 'tax', 'Nesciunt.', 5.8700, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(405, 1, 'invoice', 135, 'total', 'invoices.total', 37.3200, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(406, 1, 'invoice', 136, 'sub_total', 'invoices.sub_total', 449.4700, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(407, 1, 'invoice', 136, 'tax', 'Ex sed natus.', 81.2200, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(408, 1, 'invoice', 136, 'total', 'invoices.total', 368.2500, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(409, 1, 'invoice', 137, 'sub_total', 'invoices.sub_total', 711.2400, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(410, 1, 'invoice', 137, 'tax', 'Ex sed natus.', 128.5200, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(411, 1, 'invoice', 137, 'total', 'invoices.total', 582.7200, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(412, 1, 'invoice', 138, 'sub_total', 'invoices.sub_total', 855.1600, 1, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(413, 1, 'invoice', 138, 'tax', 'Nesciunt.', 116.1300, 2, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(414, 1, 'invoice', 138, 'total', 'invoices.total', 739.0300, 3, 'core::console', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(415, 1, 'invoice', 139, 'sub_total', 'invoices.sub_total', 654.6900, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(416, 1, 'invoice', 139, 'tax', 'At accusantium.', 71.4900, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(417, 1, 'invoice', 139, 'total', 'invoices.total', 726.1800, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(418, 1, 'invoice', 140, 'sub_total', 'invoices.sub_total', 546.5000, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(419, 1, 'invoice', 140, 'tax', 'Earum rerum.', 65.1400, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(420, 1, 'invoice', 140, 'total', 'invoices.total', 611.6400, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(421, 1, 'invoice', 141, 'sub_total', 'invoices.sub_total', 677.8900, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(422, 1, 'invoice', 141, 'tax', 'Quis sed.', 110.9700, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(423, 1, 'invoice', 141, 'total', 'invoices.total', 788.8600, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(424, 1, 'invoice', 142, 'sub_total', 'invoices.sub_total', 604.8900, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(425, 1, 'invoice', 142, 'tax', 'Dolores at.', 112.7500, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(426, 1, 'invoice', 142, 'total', 'invoices.total', 717.6400, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(427, 1, 'invoice', 143, 'sub_total', 'invoices.sub_total', 878.1500, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(428, 1, 'invoice', 143, 'tax', 'Sint sint.', 103.4500, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(429, 1, 'invoice', 143, 'total', 'invoices.total', 981.6000, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(430, 1, 'invoice', 144, 'sub_total', 'invoices.sub_total', 783.3000, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(431, 1, 'invoice', 144, 'tax', 'Sint sint.', 92.2700, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(432, 1, 'invoice', 144, 'total', 'invoices.total', 875.5700, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(433, 1, 'invoice', 145, 'sub_total', 'invoices.sub_total', 54.9200, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(434, 1, 'invoice', 145, 'tax', 'Ex sed natus.', 9.9200, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(435, 1, 'invoice', 145, 'total', 'invoices.total', 45.0000, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(436, 1, 'invoice', 146, 'sub_total', 'invoices.sub_total', 381.3600, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(437, 1, 'invoice', 146, 'tax', 'At accusantium.', 41.6400, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(438, 1, 'invoice', 146, 'total', 'invoices.total', 423.0000, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(439, 1, 'invoice', 147, 'sub_total', 'invoices.sub_total', 505.0100, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(440, 1, 'invoice', 147, 'tax', 'Earum rerum.', 60.2000, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(441, 1, 'invoice', 147, 'total', 'invoices.total', 565.2100, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(442, 1, 'invoice', 148, 'sub_total', 'invoices.sub_total', 565.1200, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(443, 1, 'invoice', 148, 'tax', 'Quod et et.', 103.3600, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(444, 1, 'invoice', 148, 'total', 'invoices.total', 668.4800, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(445, 1, 'invoice', 149, 'sub_total', 'invoices.sub_total', 867.3900, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(446, 1, 'invoice', 149, 'tax', 'Sint sint.', 102.1800, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(447, 1, 'invoice', 149, 'total', 'invoices.total', 969.5700, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(448, 1, 'invoice', 150, 'sub_total', 'invoices.sub_total', 95.3600, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(449, 1, 'invoice', 150, 'tax', 'Quis sed.', 15.6100, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(450, 1, 'invoice', 150, 'total', 'invoices.total', 110.9700, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(451, 1, 'invoice', 151, 'sub_total', 'invoices.sub_total', 650.6700, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(452, 1, 'invoice', 151, 'tax', 'Quod et et.', 119.0100, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(453, 1, 'invoice', 151, 'total', 'invoices.total', 769.6800, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(454, 1, 'invoice', 152, 'sub_total', 'invoices.sub_total', 166.3000, 1, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(455, 1, 'invoice', 152, 'tax', 'Aperiam.', 27.0700, 2, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(456, 1, 'invoice', 152, 'total', 'invoices.total', 139.2300, 3, 'core::console', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(457, 1, 'invoice', 153, 'sub_total', 'invoices.sub_total', 192.6300, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(458, 1, 'invoice', 153, 'tax', 'Aperiam.', 31.3600, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(459, 1, 'invoice', 153, 'total', 'invoices.total', 161.2700, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(460, 1, 'invoice', 154, 'sub_total', 'invoices.sub_total', 397.3400, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(461, 1, 'invoice', 154, 'tax', 'Aperiam.', 64.6900, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(462, 1, 'invoice', 154, 'total', 'invoices.total', 332.6500, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(463, 1, 'invoice', 155, 'sub_total', 'invoices.sub_total', 508.1000, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(464, 1, 'invoice', 155, 'tax', 'Quod et et.', 92.9300, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(465, 1, 'invoice', 155, 'total', 'invoices.total', 601.0300, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(466, 1, 'invoice', 156, 'sub_total', 'invoices.sub_total', 30.4200, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(467, 1, 'invoice', 156, 'tax', 'Dolores at.', 5.6700, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(468, 1, 'invoice', 156, 'total', 'invoices.total', 36.0900, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(469, 1, 'invoice', 157, 'sub_total', 'invoices.sub_total', 142.8000, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(470, 1, 'invoice', 157, 'tax', 'At accusantium.', 15.5900, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(471, 1, 'invoice', 157, 'total', 'invoices.total', 158.3900, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(472, 1, 'invoice', 158, 'sub_total', 'invoices.sub_total', 851.1000, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(473, 1, 'invoice', 158, 'tax', 'Ex sed natus.', 153.7900, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(474, 1, 'invoice', 158, 'total', 'invoices.total', 697.3100, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(475, 1, 'invoice', 159, 'sub_total', 'invoices.sub_total', 255.5200, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(476, 1, 'invoice', 159, 'tax', 'Quis sed.', 41.8300, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(477, 1, 'invoice', 159, 'total', 'invoices.total', 297.3500, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(478, 1, 'invoice', 160, 'sub_total', 'invoices.sub_total', 389.7500, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(479, 1, 'invoice', 160, 'tax', 'Sint sint.', 45.9100, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(480, 1, 'invoice', 160, 'total', 'invoices.total', 435.6600, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(481, 1, 'invoice', 161, 'sub_total', 'invoices.sub_total', 777.6500, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(482, 1, 'invoice', 161, 'tax', 'Earum rerum.', 92.7000, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(483, 1, 'invoice', 161, 'total', 'invoices.total', 870.3500, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(484, 1, 'invoice', 162, 'sub_total', 'invoices.sub_total', 667.1500, 1, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(485, 1, 'invoice', 162, 'tax', 'Quidem.', 74.8500, 2, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(486, 1, 'invoice', 162, 'total', 'invoices.total', 742.0000, 3, 'core::console', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(487, 1, 'invoice', 163, 'sub_total', 'invoices.sub_total', 369.7500, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(488, 1, 'invoice', 163, 'tax', 'Dolores at.', 68.9200, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(489, 1, 'invoice', 163, 'total', 'invoices.total', 438.6700, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(490, 1, 'invoice', 164, 'sub_total', 'invoices.sub_total', 550.6300, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(491, 1, 'invoice', 164, 'tax', 'Ex sed natus.', 99.5000, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(492, 1, 'invoice', 164, 'total', 'invoices.total', 451.1300, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(493, 1, 'invoice', 165, 'sub_total', 'invoices.sub_total', 389.7100, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(494, 1, 'invoice', 165, 'tax', 'Quidem.', 43.7200, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(495, 1, 'invoice', 165, 'total', 'invoices.total', 433.4300, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(496, 1, 'invoice', 166, 'sub_total', 'invoices.sub_total', 381.0800, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(497, 1, 'invoice', 166, 'tax', 'Nesciunt.', 51.7500, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(498, 1, 'invoice', 166, 'total', 'invoices.total', 329.3300, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(499, 1, 'invoice', 167, 'sub_total', 'invoices.sub_total', 732.9800, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(500, 1, 'invoice', 167, 'tax', 'Quidem.', 82.2400, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(501, 1, 'invoice', 167, 'total', 'invoices.total', 815.2200, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(502, 1, 'invoice', 168, 'sub_total', 'invoices.sub_total', 868.0700, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(503, 1, 'invoice', 168, 'tax', 'Quis sed.', 142.1000, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(504, 1, 'invoice', 168, 'total', 'invoices.total', 1010.1700, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(505, 1, 'invoice', 169, 'sub_total', 'invoices.sub_total', 488.8900, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(506, 1, 'invoice', 169, 'tax', 'Nesciunt.', 66.3900, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(507, 1, 'invoice', 169, 'total', 'invoices.total', 422.5000, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(508, 1, 'invoice', 170, 'sub_total', 'invoices.sub_total', 265.5400, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(509, 1, 'invoice', 170, 'tax', 'Dolores at.', 49.5000, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(510, 1, 'invoice', 170, 'total', 'invoices.total', 315.0400, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(511, 1, 'invoice', 171, 'sub_total', 'invoices.sub_total', 197.6100, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(512, 1, 'invoice', 171, 'tax', 'Nesciunt.', 26.8400, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(513, 1, 'invoice', 171, 'total', 'invoices.total', 170.7700, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(514, 1, 'invoice', 172, 'sub_total', 'invoices.sub_total', 78.8200, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(515, 1, 'invoice', 172, 'tax', 'Aperiam.', 12.8300, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(516, 1, 'invoice', 172, 'total', 'invoices.total', 65.9900, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(517, 1, 'invoice', 173, 'sub_total', 'invoices.sub_total', 634.3900, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(518, 1, 'invoice', 173, 'tax', 'Sint sint.', 74.7300, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(519, 1, 'invoice', 173, 'total', 'invoices.total', 709.1200, 3, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(520, 1, 'invoice', 174, 'sub_total', 'invoices.sub_total', 685.4300, 1, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(521, 1, 'invoice', 174, 'tax', 'At accusantium.', 74.8500, 2, 'core::console', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(522, 1, 'invoice', 174, 'total', 'invoices.total', 760.2800, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(523, 1, 'invoice', 175, 'sub_total', 'invoices.sub_total', 788.6100, 1, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(524, 1, 'invoice', 175, 'tax', 'Quod et et.', 144.2400, 2, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(525, 1, 'invoice', 175, 'total', 'invoices.total', 932.8500, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(526, 1, 'invoice', 176, 'sub_total', 'invoices.sub_total', 743.9500, 1, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(527, 1, 'invoice', 176, 'tax', 'Ex sed natus.', 134.4300, 2, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(528, 1, 'invoice', 176, 'total', 'invoices.total', 609.5200, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(529, 1, 'invoice', 177, 'sub_total', 'invoices.sub_total', 87.6200, 1, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(530, 1, 'invoice', 177, 'tax', 'Quis sed.', 14.3400, 2, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(531, 1, 'invoice', 177, 'total', 'invoices.total', 101.9600, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(532, 1, 'invoice', 178, 'sub_total', 'invoices.sub_total', 246.0400, 1, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(533, 1, 'invoice', 178, 'tax', 'Aperiam.', 40.0600, 2, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(534, 1, 'invoice', 178, 'total', 'invoices.total', 205.9800, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(535, 1, 'invoice', 179, 'sub_total', 'invoices.sub_total', 557.6600, 1, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(536, 1, 'invoice', 179, 'tax', 'At accusantium.', 60.9000, 2, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(537, 1, 'invoice', 179, 'total', 'invoices.total', 618.5600, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(538, 1, 'invoice', 180, 'sub_total', 'invoices.sub_total', 654.1800, 1, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(539, 1, 'invoice', 180, 'tax', 'At accusantium.', 71.4400, 2, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(540, 1, 'invoice', 180, 'total', 'invoices.total', 725.6200, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(541, 1, 'invoice', 181, 'sub_total', 'invoices.sub_total', 481.2800, 1, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(542, 1, 'invoice', 181, 'tax', 'Ex sed natus.', 86.9700, 2, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(543, 1, 'invoice', 181, 'total', 'invoices.total', 394.3100, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(544, 1, 'invoice', 182, 'sub_total', 'invoices.sub_total', 262.7700, 1, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(545, 1, 'invoice', 182, 'tax', 'Quod et et.', 48.0600, 2, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(546, 1, 'invoice', 182, 'total', 'invoices.total', 310.8300, 3, 'core::console', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(547, 1, 'invoice', 183, 'sub_total', 'invoices.sub_total', 587.2200, 1, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(548, 1, 'invoice', 183, 'tax', 'Quod et et.', 107.4000, 2, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(549, 1, 'invoice', 183, 'total', 'invoices.total', 694.6200, 3, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(550, 1, 'invoice', 184, 'sub_total', 'invoices.sub_total', 43.0000, 1, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(551, 1, 'invoice', 184, 'tax', 'Quis sed.', 7.0400, 2, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(552, 1, 'invoice', 184, 'total', 'invoices.total', 50.0400, 3, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(553, 1, 'invoice', 185, 'sub_total', 'invoices.sub_total', 292.8600, 1, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(554, 1, 'invoice', 185, 'tax', 'Earum rerum.', 34.9100, 2, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(555, 1, 'invoice', 185, 'total', 'invoices.total', 327.7700, 3, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(556, 1, 'invoice', 186, 'sub_total', 'invoices.sub_total', 275.5700, 1, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(557, 1, 'invoice', 186, 'tax', 'Dolores at.', 51.3700, 2, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(558, 1, 'invoice', 186, 'total', 'invoices.total', 326.9400, 3, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(559, 1, 'invoice', 187, 'sub_total', 'invoices.sub_total', 908.3600, 1, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(560, 1, 'invoice', 187, 'tax', 'Ex sed natus.', 164.1400, 2, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(561, 1, 'invoice', 187, 'total', 'invoices.total', 744.2200, 3, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(562, 1, 'invoice', 188, 'sub_total', 'invoices.sub_total', 116.3900, 1, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(563, 1, 'invoice', 188, 'tax', 'Nesciunt.', 15.8100, 2, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(564, 1, 'invoice', 188, 'total', 'invoices.total', 100.5800, 3, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(565, 1, 'invoice', 189, 'sub_total', 'invoices.sub_total', 554.6300, 1, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(566, 1, 'invoice', 189, 'tax', 'Sint sint.', 65.3400, 2, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(567, 1, 'invoice', 189, 'total', 'invoices.total', 619.9700, 3, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(568, 1, 'invoice', 190, 'sub_total', 'invoices.sub_total', 850.0800, 1, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(569, 1, 'invoice', 190, 'tax', 'At accusantium.', 92.8300, 2, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(570, 1, 'invoice', 190, 'total', 'invoices.total', 942.9100, 3, 'core::console', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(571, 1, 'invoice', 191, 'sub_total', 'invoices.sub_total', 796.5000, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(572, 1, 'invoice', 191, 'tax', 'Sint sint.', 93.8300, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(573, 1, 'invoice', 191, 'total', 'invoices.total', 890.3300, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(574, 1, 'invoice', 192, 'sub_total', 'invoices.sub_total', 743.8600, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(575, 1, 'invoice', 192, 'tax', 'Nesciunt.', 101.0200, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(576, 1, 'invoice', 192, 'total', 'invoices.total', 642.8400, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(577, 1, 'invoice', 193, 'sub_total', 'invoices.sub_total', 228.9400, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(578, 1, 'invoice', 193, 'tax', 'Quis sed.', 37.4800, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(579, 1, 'invoice', 193, 'total', 'invoices.total', 266.4200, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(580, 1, 'invoice', 194, 'sub_total', 'invoices.sub_total', 170.5800, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(581, 1, 'invoice', 194, 'tax', 'Quis sed.', 27.9200, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(582, 1, 'invoice', 194, 'total', 'invoices.total', 198.5000, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(583, 1, 'invoice', 195, 'sub_total', 'invoices.sub_total', 577.0300, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(584, 1, 'invoice', 195, 'tax', 'Dolores at.', 107.5600, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(585, 1, 'invoice', 195, 'total', 'invoices.total', 684.5900, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(586, 1, 'invoice', 196, 'sub_total', 'invoices.sub_total', 695.5200, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(587, 1, 'invoice', 196, 'tax', 'Quidem.', 78.0400, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(588, 1, 'invoice', 196, 'total', 'invoices.total', 773.5600, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(589, 1, 'invoice', 197, 'sub_total', 'invoices.sub_total', 687.0200, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(590, 1, 'invoice', 197, 'tax', 'Quod et et.', 125.6600, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(591, 1, 'invoice', 197, 'total', 'invoices.total', 812.6800, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(592, 1, 'invoice', 198, 'sub_total', 'invoices.sub_total', 639.1600, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(593, 1, 'invoice', 198, 'tax', 'Quis sed.', 104.6300, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(594, 1, 'invoice', 198, 'total', 'invoices.total', 743.7900, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(595, 1, 'invoice', 199, 'sub_total', 'invoices.sub_total', 884.7000, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(596, 1, 'invoice', 199, 'tax', 'Ex sed natus.', 159.8700, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(597, 1, 'invoice', 199, 'total', 'invoices.total', 724.8300, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(598, 1, 'invoice', 200, 'sub_total', 'invoices.sub_total', 898.3800, 1, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(599, 1, 'invoice', 200, 'tax', 'Aperiam.', 146.2600, 2, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(600, 1, 'invoice', 200, 'total', 'invoices.total', 752.1200, 3, 'core::console', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(601, 1, 'bill', 201, 'sub_total', 'invoices.sub_total', 9.5400, 1, 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(602, 1, 'bill', 201, 'tax', 'Ex sed natus.', 1.9700, 2, 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(603, 1, 'bill', 201, 'tax', 'Quod et et.', 1.3800, 3, 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(604, 1, 'bill', 201, 'total', 'invoices.total', 8.9500, 4, 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(605, 1, 'invoice', 202, 'sub_total', 'invoices.sub_total', 0.0000, 1, 'core::ui', '1', '2022-03-06 07:40:21', '2022-03-06 07:40:21', NULL),
(606, 1, 'invoice', 202, 'total', 'invoices.total', 0.0000, 2, 'core::ui', '1', '2022-03-06 07:40:21', '2022-03-06 07:40:21', NULL),
(610, 1, 'bill', 203, 'sub_total', 'invoices.sub_total', 17.4200, 1, 'core::ui', '1', '2022-03-07 05:25:15', '2022-03-07 05:25:15', NULL),
(611, 1, 'bill', 203, 'tax', 'Ex sed natus.', 3.1500, 2, 'core::ui', '1', '2022-03-07 05:25:15', '2022-03-07 05:25:15', NULL),
(612, 1, 'bill', 203, 'total', 'invoices.total', 14.2700, 3, 'core::ui', '1', '2022-03-07 05:25:15', '2022-03-07 05:25:15', NULL),
(613, 1, 'invoice', 204, 'sub_total', 'invoices.sub_total', 0.0000, 1, 'core::ui', '1', '2022-03-09 09:30:41', '2022-03-09 09:30:41', NULL),
(614, 1, 'invoice', 204, 'total', 'invoices.total', 0.0000, 2, 'core::ui', '1', '2022-03-09 09:30:41', '2022-03-09 09:30:41', NULL),
(615, 1, 'invoice', 205, 'sub_total', 'invoices.sub_total', 24.5900, 1, 'core::ui', '1', '2022-07-03 08:12:36', '2022-07-03 08:12:36', NULL),
(616, 1, 'invoice', 205, 'discount', 'invoices.discount', 1.2300, 2, 'core::ui', '1', '2022-07-03 08:12:37', '2022-07-03 08:12:37', NULL),
(617, 1, 'invoice', 205, 'tax', 'Ex sed natus.', 1.0800, 3, 'core::ui', '1', '2022-07-03 08:12:37', '2022-07-03 08:12:37', NULL),
(618, 1, 'invoice', 205, 'total', 'invoices.total', 22.2800, 4, 'core::ui', '1', '2022-07-03 08:12:37', '2022-07-03 08:12:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_email_templates`
--

CREATE TABLE `p9k_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `alias` varchar(191) NOT NULL,
  `class` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `params` text DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_email_templates`
--

INSERT INTO `p9k_email_templates` (`id`, `company_id`, `alias`, `class`, `name`, `subject`, `body`, `params`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'invoice_new_customer', 'App\\Notifications\\Sale\\Invoice', 'settings.email.templates.invoice_new_customer', '{invoice_number} invoice created', 'Dear {customer_name},<br /><br />We have prepared the following invoice for you: <strong>{invoice_number}</strong>.<br /><br />You can see the invoice details and proceed with the payment from the following link: <a href=\"{invoice_guest_link}\">{invoice_number}</a>.<br /><br />Feel free to contact us with any questions.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(2, 1, 'invoice_remind_customer', 'App\\Notifications\\Sale\\Invoice', 'settings.email.templates.invoice_remind_customer', '{invoice_number} invoice overdue notice', 'Dear {customer_name},<br /><br />This is an overdue notice for <strong>{invoice_number}</strong> invoice.<br /><br />The invoice total is {invoice_total} and was due <strong>{invoice_due_date}</strong>.<br /><br />You can see the invoice details and proceed with the payment from the following link: <a href=\"{invoice_guest_link}\">{invoice_number}</a>.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(3, 1, 'invoice_remind_admin', 'App\\Notifications\\Sale\\Invoice', 'settings.email.templates.invoice_remind_admin', '{invoice_number} invoice overdue notice', 'Hello,<br /><br />{customer_name} has received an overdue notice for <strong>{invoice_number}</strong> invoice.<br /><br />The invoice total is {invoice_total} and was due <strong>{invoice_due_date}</strong>.<br /><br />You can see the invoice details from the following link: <a href=\"{invoice_admin_link}\">{invoice_number}</a>.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(4, 1, 'invoice_recur_customer', 'App\\Notifications\\Sale\\Invoice', 'settings.email.templates.invoice_recur_customer', '{invoice_number} recurring invoice created', 'Dear {customer_name},<br /><br />Based on your recurring circle, we have prepared the following invoice for you: <strong>{invoice_number}</strong>.<br /><br />You can see the invoice details and proceed with the payment from the following link: <a href=\"{invoice_guest_link}\">{invoice_number}</a>.<br /><br />Feel free to contact us with any questions.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(5, 1, 'invoice_recur_admin', 'App\\Notifications\\Sale\\Invoice', 'settings.email.templates.invoice_recur_admin', '{invoice_number} recurring invoice created', 'Hello,<br /><br />Based on {customer_name} recurring circle, <strong>{invoice_number}</strong> invoice has been automatically created.<br /><br />You can see the invoice details from the following link: <a href=\"{invoice_admin_link}\">{invoice_number}</a>.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(6, 1, 'invoice_payment_customer', 'App\\Notifications\\Portal\\PaymentReceived', 'settings.email.templates.invoice_payment_customer', 'Payment received for {invoice_number} invoice', 'Dear {customer_name},<br /><br />Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br />Amount: <strong>{transaction_total}</strong><br />Date: <strong>{transaction_paid_date}</strong><br />Invoice Number: <strong>{invoice_number}</strong><br />-------------------------------------------------<br /><br />You can always see the invoice details from the following link: <a href=\"{invoice_guest_link}\">{invoice_number}</a>.<br /><br />Feel free to contact us with any questions.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(7, 1, 'invoice_payment_admin', 'App\\Notifications\\Portal\\PaymentReceived', 'settings.email.templates.invoice_payment_admin', 'Payment received for {invoice_number} invoice', 'Hello,<br /><br />{customer_name} recorded a payment for <strong>{invoice_number}</strong> invoice.<br /><br />You can see the invoice details from the following link: <a href=\"{invoice_admin_link}\">{invoice_number}</a>.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(8, 1, 'bill_remind_admin', 'App\\Notifications\\Purchase\\Bill', 'settings.email.templates.bill_remind_admin', '{bill_number} bill reminding notice', 'Hello,<br /><br />This is a reminding notice for <strong>{bill_number}</strong> bill to {vendor_name}.<br /><br />The bill total is {bill_total} and is due <strong>{bill_due_date}</strong>.<br /><br />You can see the bill details from the following link: <a href=\"{bill_admin_link}\">{bill_number}</a>.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(9, 1, 'bill_recur_admin', 'App\\Notifications\\Purchase\\Bill', 'settings.email.templates.bill_recur_admin', '{bill_number} recurring bill created', 'Hello,<br /><br />Based on {vendor_name} recurring circle, <strong>{bill_number}</strong> bill has been automatically created.<br /><br />You can see the bill details from the following link: <a href=\"{bill_admin_link}\">{bill_number}</a>.<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(10, 1, 'revenue_new_customer', 'App\\Notifications\\Sale\\Revenue', 'settings.email.templates.revenue_new_customer', '{revenue_date} payment created', 'Dear {customer_name},<br /><br />We have prepared the following payment. <br /><br />You can see the payment details from the following link: <a href=\"{revenue_guest_link}\">{revenue_date}</a>.<br /><br />Feel free to contact us with any questions..<br /><br />Best Regards,<br />{company_name}', NULL, 'core::seed', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_failed_jobs`
--

CREATE TABLE `p9k_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) DEFAULT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_firewall_ips`
--

CREATE TABLE `p9k_firewall_ips` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(191) NOT NULL,
  `log_id` int(11) DEFAULT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_firewall_logs`
--

CREATE TABLE `p9k_firewall_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(191) NOT NULL,
  `level` varchar(191) NOT NULL DEFAULT 'medium',
  `middleware` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `referrer` varchar(191) DEFAULT NULL,
  `request` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_firewall_logs`
--

INSERT INTO `p9k_firewall_logs` (`id`, `ip`, `level`, `middleware`, `user_id`, `url`, `referrer`, `request`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '::1', 'medium', 'login', 0, 'http://localhost/akaunting-master/auth/login', 'http://localhost/akaunting-master/auth/login', '_token=f75EtHpp8zQStAaEafrpCINbobC1fajuLtUYQ19W&email=admin@gmail.com&password=******', '2022-06-05 23:25:53', '2022-06-05 23:25:53', NULL),
(2, '::1', 'medium', 'login', 0, 'http://localhost/akaunting-master/auth/login', 'http://localhost/akaunting-master/auth/login', '_token=f75EtHpp8zQStAaEafrpCINbobC1fajuLtUYQ19W&email=admin@gmail.com&password=******', '2022-06-05 23:26:12', '2022-06-05 23:26:12', NULL),
(3, '::1', 'medium', 'login', 0, 'http://localhost/akaunting-master/auth/login', 'http://localhost/akaunting-master/auth/login', '_token=YVVLNrBK7Z0yCCErf50PtkOPAknpPNs1n07tErEC&email=admin@gmail.com&password=******', '2022-06-06 02:29:11', '2022-06-06 02:29:11', NULL),
(4, '::1', 'medium', 'login', 0, 'http://localhost/akaunting-master/auth/login', 'http://localhost/akaunting-master/auth/login', '_token=REoiOKNzzEJ0cWd91vpeCGgTyC7ivcIhJnoJr1xh&email=admin@gmail.com&password=******', '2022-06-19 03:19:52', '2022-06-19 03:19:52', NULL),
(5, '::1', 'medium', 'login', 0, 'http://localhost/akaunting-master/auth/login', 'http://localhost/akaunting-master/auth/login', '_token=H5pg8ZHCMS2NRXuHnCNOYGL2pjTOAhZIARdnUCrc&email=admin@gmail.com&password=******', '2022-07-03 07:04:06', '2022-07-03 07:04:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_invoices`
--

CREATE TABLE `p9k_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_number` varchar(191) NOT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `invoiced_at` datetime NOT NULL,
  `due_at` datetime NOT NULL,
  `amount` double(15,4) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `currency_rate` double(15,8) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1,
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(191) NOT NULL,
  `contact_email` varchar(191) DEFAULT NULL,
  `contact_tax_number` varchar(191) DEFAULT NULL,
  `contact_phone` varchar(191) DEFAULT NULL,
  `contact_address` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_invoice_histories`
--

CREATE TABLE `p9k_invoice_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_invoice_items`
--

CREATE TABLE `p9k_invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `quantity` double(7,2) NOT NULL,
  `price` double(15,4) NOT NULL,
  `total` double(15,4) NOT NULL,
  `tax` double(15,4) NOT NULL DEFAULT 0.0000,
  `discount_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(191) NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_invoice_item_taxes`
--

CREATE TABLE `p9k_invoice_item_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_item_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_invoice_totals`
--

CREATE TABLE `p9k_invoice_totals` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(15,4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_items`
--

CREATE TABLE `p9k_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sale_price` double(15,4) NOT NULL,
  `purchase_price` double(15,4) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `category_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_items`
--

INSERT INTO `p9k_items` (`id`, `company_id`, `name`, `sku`, `description`, `sale_price`, `purchase_price`, `quantity`, `category_id`, `tax_id`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Aliquam non.', NULL, 'Neque enim optio aut temporibus quisquam in incidunt. Saepe quas alias adipisci.', 19.6100, 17.6900, 1, 78, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(2, 1, 'Qui non.', NULL, 'Dolor itaque voluptatibus dolorem quo. Sunt corporis placeat rerum et.', 14.7400, 12.3900, 1, 96, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(3, 1, 'Id harum.', NULL, 'Sit iure quis modi hic consequatur culpa sint. Ipsum doloremque earum repellendus distinctio.', 15.8200, 16.1800, 1, 24, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(4, 1, 'Modi.', NULL, 'Et magnam tempora iste numquam deleniti animi. Libero labore illo nemo et aut amet.', 19.5000, 11.6800, 1, 64, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(5, 1, 'Et ipsam est.', NULL, 'Natus rerum quo mollitia tempora. Explicabo minima ullam quas nam fuga aperiam.', 13.4700, 10.5700, 1, 15, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(6, 1, 'Amet.', NULL, 'Maxime magni voluptatem iure amet est. Voluptates ut sit ut ut consectetur.', 17.3800, 11.4700, 1, 34, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(7, 1, 'Rem quia.', NULL, 'Totam quam vel voluptatum aut. Fuga ut neque et libero tempore velit consequuntur voluptas.', 11.5600, 12.0400, 1, 44, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(8, 1, 'Quos et.', NULL, 'Et maiores vel nihil. Tenetur deleniti magnam consequatur voluptate labore quasi.', 14.2600, 18.6600, 1, 32, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(9, 1, 'Facere dolores.', NULL, 'Quae impedit tempore quia. Error et recusandae nobis minus. Facere beatae quae ipsam velit iure.', 11.4600, 18.5000, 1, 34, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(10, 1, 'Qui facere.', NULL, 'Odit saepe similique modi. Explicabo quas facilis sapiente ut sapiente aperiam.', 14.2700, 13.3200, 1, 65, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(11, 1, 'Et quod.', NULL, 'Earum laudantium omnis modi et omnis. Minima ut possimus molestiae rerum aliquid tenetur deleniti.', 10.1400, 18.0200, 1, 102, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(12, 1, 'Aut ab vero.', NULL, 'Dolore quam sapiente vero consequuntur. Earum assumenda illo aut saepe atque quas.', 16.1600, 16.7000, 1, 94, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(13, 1, 'Esse ad nisi.', NULL, 'Ducimus quod officiis doloremque quisquam. Quia sed qui et vero et natus.', 13.2000, 14.0600, 1, 5, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(14, 1, 'Incidunt enim.', NULL, 'Temporibus porro deleniti iure. Voluptas eveniet incidunt fugit aperiam.', 16.5400, 19.1000, 1, 96, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(15, 1, 'Dicta nesciunt.', NULL, 'Dolorum ea a et. Ea et soluta non non sint commodi autem. Non ipsa est et odio odio officiis.', 15.9200, 12.5400, 1, 83, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(16, 1, 'Exercitationem.', NULL, 'Ratione temporibus beatae et. Totam at odio qui quos id ea. Nesciunt aut necessitatibus error.', 11.8400, 17.6000, 1, 18, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(17, 1, 'Sit officia.', NULL, 'Aut maxime dolorem consequatur commodi repellendus error. Qui et est qui non sunt sequi.', 12.5500, 13.0200, 1, 24, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(18, 1, 'Labore.', NULL, 'Et pariatur ea itaque eos occaecati sed. Vero dolorem est alias sit dicta voluptatibus eum qui.', 11.5300, 18.2300, 1, 18, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(19, 1, 'Doloremque.', NULL, 'Facere nostrum perferendis sed fugit. Voluptatum veniam non enim occaecati et et.', 19.7900, 10.7600, 1, 83, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(20, 1, 'Ratione.', NULL, 'Quis ipsa dolor quis sunt dolor vel. Non omnis repellendus voluptatem laudantium.', 18.3000, 18.4700, 1, 68, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(21, 1, 'Explicabo.', NULL, 'Quas enim at nisi expedita iste. Voluptatem a omnis aperiam non cum ea voluptas nobis.', 17.3100, 19.8300, 1, 54, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(22, 1, 'Ea est ipsa.', NULL, 'Praesentium et aut itaque dolores ut quidem. Nihil eos doloremque consectetur.', 13.0900, 19.4400, 1, 18, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(23, 1, 'Voluptatem.', NULL, 'Nobis maiores qui nihil quia molestias dolorem. Impedit doloribus aut ut et.', 19.1200, 10.0800, 1, 54, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(24, 1, 'Qui veniam.', NULL, 'Et sunt nostrum nobis cumque. Aspernatur dolorum et non.', 10.0900, 14.7400, 1, 70, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(25, 1, 'Officia.', NULL, 'Dicta ab ut ipsam animi nihil possimus. Voluptatem voluptas vitae sit et.', 19.5500, 12.7400, 1, 11, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(26, 1, 'Minus.', NULL, 'Sed eos totam ad. Asperiores et delectus quam similique voluptas.', 18.9100, 19.5100, 1, 96, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(27, 1, 'Velit tenetur.', NULL, 'Molestias dolorem et repellat numquam saepe aut. Dolor distinctio illum quo nam asperiores qui qui.', 15.5300, 11.5800, 1, 31, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(28, 1, 'Voluptatem.', NULL, 'Temporibus illo corrupti facere. Ut esse eligendi velit hic. Voluptas voluptas fugit provident.', 16.5500, 13.1600, 1, 83, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(29, 1, 'Neque.', NULL, 'Delectus maiores quia quaerat tempora numquam animi adipisci. Laborum similique dolores voluptate.', 14.4500, 10.6200, 1, 21, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(30, 1, 'Quae expedita.', NULL, 'Dolor suscipit praesentium labore vitae occaecati non. Et consequatur eum facilis blanditiis.', 11.3400, 16.6200, 1, 94, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(31, 1, 'Dolorem quia.', NULL, 'Id error ratione excepturi et. Error quasi deserunt voluptas deserunt et.', 17.5500, 13.3100, 1, 5, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(32, 1, 'Corporis.', NULL, 'Ullam aut modi rerum eveniet. Sint ea voluptates iste eum. Quia nulla et porro recusandae.', 14.9300, 18.6400, 1, 94, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(33, 1, 'Ut et qui.', NULL, 'Eos aut iusto ut. Error hic qui qui qui at. Aut distinctio sapiente in possimus et voluptatum.', 15.7500, 16.8500, 1, 18, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(34, 1, 'Id non.', NULL, 'Cumque quod et blanditiis qui. Quia dolor alias vel ea. Enim ut laboriosam amet et.', 14.3500, 16.9400, 1, 102, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(35, 1, 'Aut modi est.', NULL, 'Autem similique odio molestiae ratione. Alias quam dicta ad sed debitis quam dolorum.', 19.4800, 15.6100, 1, 102, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(36, 1, 'Alias.', NULL, 'Voluptate recusandae ut neque rerum quasi. Amet magnam et in laboriosam modi.', 12.8100, 13.3500, 1, 68, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(37, 1, 'Et voluptate.', NULL, 'Placeat distinctio dicta unde. Laboriosam qui sapiente assumenda.', 16.3500, 13.6500, 1, 94, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(38, 1, 'Blanditiis.', NULL, 'Sed cumque vel quidem iste et. Est ea blanditiis eos ut quam nemo quo. Quas porro omnis aut.', 18.0700, 10.6200, 1, 70, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(39, 1, 'Veniam ipsum.', NULL, 'Deserunt atque sunt ut quos. Dicta porro dolores qui in pariatur impedit.', 17.5400, 13.2900, 1, 78, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(40, 1, 'Et quam.', NULL, 'Fugit earum aut nemo nam occaecati. Ab aut quos qui quos rem et.', 14.2800, 18.0600, 1, 68, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(41, 1, 'Voluptate.', NULL, 'Vero aut odio qui quia voluptatem ut repellendus. Delectus cum nam aliquam qui rem non.', 18.1100, 17.2400, 1, 102, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(42, 1, 'Dolorem maxime.', NULL, 'Et velit reiciendis assumenda quia. Aut laborum eius ea ipsa. Eaque ut sapiente animi ipsa ut.', 10.4600, 19.2700, 1, 94, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(43, 1, 'Et ipsa ut in.', NULL, 'Est eveniet dolore qui et. Ipsam consectetur beatae veritatis qui autem repellendus.', 18.6700, 11.5500, 1, 34, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(44, 1, 'Consectetur et.', NULL, 'Corporis rerum quasi culpa minima. Et est culpa autem aut quasi. Qui sed non non dolor id quis.', 16.7300, 16.5300, 1, 96, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(45, 1, 'Assumenda.', NULL, 'Ratione rerum placeat iure inventore aut saepe. Voluptas explicabo et commodi rerum nesciunt modi.', 11.3900, 13.1400, 1, 24, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(46, 1, 'Nihil vel.', NULL, 'Recusandae minus incidunt recusandae nihil mollitia quia. Optio qui itaque corrupti iusto.', 12.3400, 11.5900, 1, 71, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(47, 1, 'Molestiae non.', NULL, 'Voluptatem et harum aut minima est omnis quod. Occaecati dolorem iure doloribus rerum.', 17.7800, 14.1500, 1, 52, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(48, 1, 'Qui nihil aut.', NULL, 'Officia quos magni in sunt. Vero placeat et ratione eos inventore qui ipsa.', 14.0200, 19.4300, 1, 102, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(49, 1, 'Ab quis sequi.', NULL, 'Ut omnis voluptatum quae optio enim. Eveniet sapiente vero occaecati quasi accusantium et.', 14.1300, 14.2300, 1, 21, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(50, 1, 'Laborum et.', NULL, 'Molestiae cumque sit aliquam facilis. Ipsa maxime minima ab aut occaecati.', 13.1300, 12.8400, 1, 24, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(51, 1, 'Nihil quod.', NULL, 'Magnam enim et enim. Ullam omnis aut alias. Ut commodi quos est et. Sint ut labore debitis.', 11.1500, 14.7700, 1, 11, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(52, 1, 'Enim rerum.', NULL, 'Earum sequi eos mollitia omnis reprehenderit. Debitis et libero ut odio.', 14.4000, 16.1200, 1, 24, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(53, 1, 'Mollitia et et.', NULL, 'Qui aut placeat sunt odit recusandae. Voluptas iure voluptatem in aliquid quam voluptatem.', 17.4700, 19.6600, 1, 54, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(54, 1, 'Earum nihil ut.', NULL, 'Quod debitis tenetur laborum voluptas. Recusandae ipsum corrupti qui et est.', 17.3000, 15.4400, 1, 94, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(55, 1, 'Ab repudiandae.', NULL, 'Et est aliquid omnis sapiente. Unde quisquam voluptate cum qui architecto omnis doloremque labore.', 12.2300, 14.0300, 1, 68, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(56, 1, 'Quo harum.', NULL, 'Quia ut placeat modi eius fugit. Nisi eum non nam. Ut ab dolores eius occaecati id et.', 11.7100, 10.5400, 1, 54, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(57, 1, 'Facilis et.', NULL, 'Et soluta sapiente sit. Non officia neque veritatis est et labore.', 12.7100, 14.3600, 1, 96, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(58, 1, 'Fugiat.', NULL, 'Sed commodi quae ab. Qui optio voluptates odit. Laborum aliquid voluptates velit qui.', 11.2100, 14.0800, 1, 11, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(59, 1, 'Totam eos.', NULL, 'Mollitia quaerat nisi enim. Qui deserunt dolores vitae eos soluta incidunt expedita.', 17.0600, 16.1600, 1, 68, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(60, 1, 'Architecto.', NULL, 'Eum ipsum sed nisi ut fuga fugiat numquam. Quod laboriosam ut rerum porro.', 19.1200, 11.9900, 1, 32, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(61, 1, 'Accusamus aut.', NULL, 'Qui occaecati ut consectetur ut quia alias. Aut enim qui accusantium mollitia.', 19.2100, 17.4200, 1, 78, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(62, 1, 'Incidunt iste.', NULL, 'Porro inventore est qui. Ut amet esse numquam sed amet asperiores. Sed consequatur sit quam est.', 10.5500, 19.4800, 1, 78, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(63, 1, 'Laboriosam.', NULL, 'Aut quis officiis et. Assumenda dolore repellat nulla. Quae ut nobis nulla perspiciatis.', 11.3900, 16.9000, 1, 21, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(64, 1, 'Molestiae qui.', NULL, 'Pariatur laborum minima omnis. Labore illum ut aut nihil animi quam recusandae.', 19.1200, 19.0100, 1, 96, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(65, 1, 'Quis dolor.', NULL, 'Ut dicta laboriosam tenetur. Non explicabo repudiandae aut. Eaque sed fugiat rerum odio distinctio.', 11.1000, 12.3700, 1, 34, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(66, 1, 'Vero aut quo.', NULL, 'Et aut hic unde sunt. Cupiditate omnis nostrum consequatur possimus fuga qui.', 15.9400, 14.2600, 1, 24, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(67, 1, 'Vitae a.', NULL, 'Eligendi quisquam quo cupiditate ullam. Et dolor voluptatibus officia qui et temporibus et ad.', 16.1000, 10.0200, 1, 71, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(68, 1, 'Et minus.', NULL, 'Et veniam ratione sunt vitae quis. Suscipit aut praesentium maxime minima aperiam officiis.', 16.7200, 17.8400, 1, 31, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(69, 1, 'Et est et et.', NULL, 'Quia sunt labore suscipit laboriosam eligendi corporis at. Laudantium illum ab laboriosam.', 19.4600, 16.0700, 1, 70, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(70, 1, 'Sequi hic.', NULL, 'Ut quo amet odit eius. Qui quas voluptate in et sint.', 14.5400, 11.1000, 1, 34, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(71, 1, 'Sequi expedita.', NULL, 'Sit dolor accusamus alias labore. Ut qui nihil placeat expedita.', 17.0200, 11.8300, 1, 96, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(72, 1, 'Expedita optio.', NULL, 'Quis quod iure nesciunt sit. Cupiditate placeat ut eaque aut.', 13.2500, 18.8200, 1, 21, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(73, 1, 'Ullam.', NULL, 'Et aut quo eum eum ea quo nostrum. Distinctio voluptas quo laudantium atque quia.', 16.9600, 14.3400, 1, 44, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(74, 1, 'Facilis.', NULL, 'Et iste voluptatem eaque. Ex cum molestiae eveniet. Sed ea quis minus. Ut explicabo iure adipisci.', 18.8800, 15.6900, 1, 31, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(75, 1, 'Voluptatem.', NULL, 'Sed aspernatur sed qui aliquam. Doloribus perferendis praesentium unde mollitia.', 10.5000, 15.7400, 1, 64, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(76, 1, 'Officiis.', NULL, 'Praesentium est et sequi. Laborum accusamus animi eum consequatur blanditiis.', 18.3400, 15.2600, 1, 32, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(77, 1, 'Aspernatur.', NULL, 'Vel cupiditate quasi voluptas ex neque officia dolores. Voluptates voluptas ad quibusdam.', 16.6800, 15.7900, 1, 83, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(78, 1, 'Ex id qui est.', NULL, 'Vel est dolorem et velit. Qui aut quia est voluptatum porro.', 18.2200, 13.9000, 1, 54, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(79, 1, 'Laboriosam.', NULL, 'Quibusdam atque cum magni qui maxime. Vel et facilis dolores ut deleniti aut.', 16.8200, 10.7000, 1, 85, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(80, 1, 'Architecto.', NULL, 'Ad occaecati aut est. Et quia dolor sed reprehenderit vero. Delectus nihil dolore quas.', 16.6500, 12.7200, 1, 24, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(81, 1, 'Eum dolores.', NULL, 'Corrupti earum et illum. Illo id quia doloremque laudantium. Voluptatem aut labore ad earum.', 12.1700, 19.7500, 1, 54, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(82, 1, 'Rerum magnam.', NULL, 'Qui sint incidunt non debitis sit consequatur. Enim voluptas rerum soluta sed porro.', 13.1600, 18.0700, 1, 102, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(83, 1, 'Qui sint eos.', NULL, 'Culpa natus odio in consequuntur dolorem. Sequi omnis libero ex.', 19.8000, 12.9600, 1, 70, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(84, 1, 'Ab eum eveniet.', NULL, 'Ducimus hic omnis dolores nam. Doloribus enim amet et doloremque modi.', 18.5900, 10.9200, 1, 96, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-06-19 04:22:02', NULL),
(85, 1, 'Quia alias eum.', NULL, 'Autem dolorum officia qui quo. At maxime sint sed at sit. Vitae illum occaecati corporis et ut.', 19.9100, 10.1900, 1, 53, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(86, 1, 'Et unde illum.', NULL, 'Aut maxime voluptatibus et. Sint vitae quo suscipit illum ipsum.', 17.8900, 15.3200, 1, 44, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(87, 1, 'Placeat vitae.', NULL, 'Numquam rem fugit corporis aspernatur reprehenderit. Ut neque qui dolore qui reiciendis est.', 13.1300, 14.4200, 1, 44, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(88, 1, 'Quasi.', NULL, 'Minus accusamus nulla omnis sed omnis eum non. Dolores vitae et debitis animi hic.', 18.2900, 19.9900, 1, 53, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(89, 1, 'Culpa fuga.', NULL, 'Esse occaecati hic aut itaque sit iste. Et illum eos esse et.', 14.3600, 12.6100, 1, 24, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(90, 1, 'Quo impedit.', NULL, 'Ipsa aspernatur id quisquam omnis. Velit odit velit id consequatur rerum.', 19.6100, 13.6900, 1, 102, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(91, 1, 'Ullam cumque.', NULL, 'Vitae nesciunt perferendis earum. Aliquam vel nisi dolor. Sapiente cumque aut ut ut.', 15.6400, 18.6200, 1, 15, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(92, 1, 'Suscipit.', NULL, 'Quo reiciendis nihil officiis qui tenetur maiores. Molestias neque deserunt dolore et sunt minima.', 11.6000, 15.3700, 1, 18, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(93, 1, 'Explicabo.', NULL, 'Autem doloribus beatae hic eaque architecto. Voluptates vel saepe cumque quam qui.', 14.7000, 11.5200, 1, 34, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(94, 1, 'Praesentium.', NULL, 'Sunt nemo debitis quo. Quo error aut beatae blanditiis rerum.', 17.9600, 16.5800, 1, 102, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(95, 1, 'Reprehenderit.', NULL, 'Nobis aut vero commodi dolores magni. Deleniti dolor necessitatibus omnis nobis magnam.', 11.7600, 12.0900, 1, 64, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(96, 1, 'Aliquid.', NULL, 'Vero id ipsa debitis voluptatem. Rem qui eveniet nihil qui.', 14.0300, 13.8400, 1, 85, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(97, 1, 'Est voluptatem.', NULL, 'Unde quia at dolore quod voluptatem. Eligendi impedit velit qui debitis repellat.', 15.6200, 11.4400, 1, 52, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(98, 1, 'Vitae adipisci.', NULL, 'Suscipit non aut nihil et repellendus quasi. Aut sed perspiciatis quidem ut.', 18.7200, 12.9500, 1, 32, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(99, 1, 'Provident aut.', NULL, 'Architecto quis in autem mollitia. Vel esse quo rerum nobis necessitatibus.', 11.7900, 16.4300, 1, 11, NULL, 1, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(100, 1, 'Quia iusto.', NULL, 'Ut ipsum praesentium ex qui suscipit voluptas est. Quo recusandae sit odit minima sequi ratione.', 14.6100, 10.8400, 1, 18, NULL, 0, 'core::factory', NULL, '2022-02-22 11:29:02', '2022-02-22 11:29:02', NULL),
(101, 1, 'Pc', NULL, 'My Computer', 20000.0000, 19000.0000, 1, 5, NULL, 1, 'core::ui', 1, '2022-07-03 08:06:17', '2022-07-03 08:06:17', NULL),
(102, 1, 'pc', NULL, 'ehrtnty', 3.0000, 3.0000, 1, NULL, NULL, 1, 'core::ui', 1, '2022-07-03 08:12:36', '2022-07-03 08:12:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_item_taxes`
--

CREATE TABLE `p9k_item_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_item_taxes`
--

INSERT INTO `p9k_item_taxes` (`id`, `company_id`, `item_id`, `tax_id`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 101, 9, 'core::ui', '1', '2022-07-03 08:06:17', '2022-07-03 08:06:17', NULL),
(2, 1, 102, 3, 'core::ui', '1', '2022-07-03 08:12:36', '2022-07-03 08:12:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_jobs`
--

CREATE TABLE `p9k_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_media`
--

CREATE TABLE `p9k_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `disk` varchar(32) NOT NULL,
  `directory` varchar(191) NOT NULL,
  `filename` varchar(191) NOT NULL,
  `extension` varchar(32) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `aggregate_type` varchar(32) NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `original_media_id` int(10) UNSIGNED DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_media`
--

INSERT INTO `p9k_media` (`id`, `company_id`, `disk`, `directory`, `filename`, `extension`, `mime_type`, `aggregate_type`, `size`, `variant_name`, `original_media_id`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'uploads', '2022/04/30/1/transactions', 'b18a68954fa6980e55a8494eca5b373a', 'png', 'image/png', 'image', 331678, NULL, NULL, 'core::ui', '1', '2022-04-30 12:28:22', '2022-04-30 12:28:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_mediables`
--

CREATE TABLE `p9k_mediables` (
  `media_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mediable_type` varchar(191) NOT NULL,
  `mediable_id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_mediables`
--

INSERT INTO `p9k_mediables` (`media_id`, `company_id`, `mediable_type`, `mediable_id`, `tag`, `order`, `created_from`, `created_by`) VALUES
(1, 1, 'App\\Models\\Banking\\Transaction', 84, 'attachment', 1, 'core::ui', '1');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_migrations`
--

CREATE TABLE `p9k_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_migrations`
--

INSERT INTO `p9k_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_27_000000_create_mediable_tables', 1),
(2, '2017_09_14_000000_core_v1', 1),
(3, '2020_01_08_000000_core_v200', 1),
(4, '2020_03_20_183732_core_v208', 1),
(5, '2020_06_09_000000_core_v2014', 1),
(6, '2020_07_20_000000_core_v2017', 1),
(7, '2020_10_12_000000_add_variants_to_media', 1),
(8, '2020_10_13_000000_core_v210', 1),
(9, '2021_04_01_000000_core_v219', 1),
(10, '2021_05_17_000000_core_v2114', 1),
(11, '2021_06_17_000000_core_v2117', 1),
(12, '2021_09_01_000000_core_v2124', 1),
(13, '2021_09_10_000000_core_v2125', 1),
(14, '2021_09_10_000000_core_v2126', 1),
(15, '2021_09_10_000000_core_v2127', 1);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_modules`
--

CREATE TABLE `p9k_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `alias` varchar(191) NOT NULL,
  `enabled` int(11) NOT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_modules`
--

INSERT INTO `p9k_modules` (`id`, `company_id`, `alias`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'offline-payments', 1, 'core::console', NULL, '2022-02-22 11:27:08', '2022-02-22 11:27:08', NULL),
(2, 1, 'paypal-standard', 1, 'core::console', NULL, '2022-02-22 11:27:09', '2022-02-22 11:27:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_module_histories`
--

CREATE TABLE `p9k_module_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `version` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_module_histories`
--

INSERT INTO `p9k_module_histories` (`id`, `company_id`, `module_id`, `version`, `description`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2.0.3', 'offline-payments installed', 'core::console', NULL, '2022-02-22 11:27:09', '2022-02-22 11:27:09', NULL),
(2, 1, 2, '2.0.0', 'paypal-standard installed', 'core::console', NULL, '2022-02-22 11:27:09', '2022-02-22 11:27:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_notifications`
--

CREATE TABLE `p9k_notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_notifications`
--

INSERT INTO `p9k_notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00174a9d-0ade-43e3-aede-a33f7888430d', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":158,\"invoice_number\":\"INV-91666\",\"customer_name\":\"Philip Mitchell\",\"amount\":697.31,\"invoice_at\":\"2022-07-04T05:57:14.000000Z\",\"due_at\":\"2024-09-09T05:57:14.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12'),
('07b24fbe-a239-4fda-bfeb-789343862ec0', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":181,\"invoice_number\":\"INV-61787\",\"customer_name\":\"Wayne Cook\",\"amount\":394.31,\"invoice_at\":\"2022-01-17T10:34:53.000000Z\",\"due_at\":\"2022-07-30T09:34:53.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('1237caad-63ee-4fed-87b6-8effbd3f64d4', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":186,\"invoice_number\":\"INV-96162\",\"customer_name\":\"Francesca Knight\",\"amount\":326.94,\"invoice_at\":\"2022-09-12T19:01:23.000000Z\",\"due_at\":\"2023-10-11T19:01:23.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('1402856a-c125-4762-9d2e-d3965bbe4496', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 2, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":198,\"invoice_number\":\"INV-55324\",\"customer_name\":\"Francesca Knight\",\"amount\":743.79,\"invoice_at\":\"2022-12-03T23:50:01.000000Z\",\"due_at\":\"2025-04-01T22:50:01.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16'),
('1545acd9-b887-40cb-8c6b-a133fabb98ee', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":139,\"invoice_number\":\"INV-8951\",\"customer_name\":\"Jane Owen\",\"amount\":726.18,\"invoice_at\":\"2022-01-18T05:11:15.000000Z\",\"due_at\":\"2023-01-11T05:11:15.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11'),
('16ec0286-69d1-46b3-bf8e-c0f2197149e4', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":184,\"invoice_number\":\"INV-58791\",\"customer_name\":\"Charlie Clark\",\"amount\":50.04,\"invoice_at\":\"2022-04-21T04:30:07.000000Z\",\"due_at\":\"2022-05-11T04:30:07.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('17a4b09b-06e2-4544-ab77-f3eff1cc78f0', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 55, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":174,\"invoice_number\":\"INV-96156\",\"customer_name\":\"Lily Simpson\",\"amount\":760.28,\"invoice_at\":\"2022-01-03T20:42:55.000000Z\",\"due_at\":\"2023-01-31T20:42:55.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('2ec3a540-6104-473a-9620-9f2dd340125d', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 80, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":132,\"invoice_number\":\"INV-8424\",\"customer_name\":\"Pauline Williams\",\"amount\":551.08,\"invoice_at\":\"2022-11-18T17:20:40.000000Z\",\"due_at\":\"2024-02-17T17:20:40.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10'),
('307091d5-0626-452b-8623-78d7dcfcc749', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":171,\"invoice_number\":\"INV-28717\",\"customer_name\":\"Finley Powell\",\"amount\":170.77,\"invoice_at\":\"2022-06-23T22:44:29.000000Z\",\"due_at\":\"2024-01-06T23:44:29.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13'),
('3155405c-ae32-4e3d-8074-af0017cc9011', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":169,\"invoice_number\":\"INV-83466\",\"customer_name\":\"Kyle Knight\",\"amount\":422.5,\"invoice_at\":\"2022-11-12T16:03:23.000000Z\",\"due_at\":\"2024-09-30T15:03:23.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13'),
('36e1a65e-5ccd-4c8a-9c8f-aa914e168add', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 37, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":160,\"invoice_number\":\"INV-57821\",\"customer_name\":\"Wayne Cook\",\"amount\":435.66,\"invoice_at\":\"2022-05-05T00:01:08.000000Z\",\"due_at\":\"2024-11-11T01:01:08.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12'),
('38a4c667-abb3-4d80-860d-1bcd730d83c8', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 6, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":183,\"invoice_number\":\"INV-43300\",\"customer_name\":\"Dennis Price\",\"amount\":694.62,\"invoice_at\":\"2022-06-18T05:32:29.000000Z\",\"due_at\":\"2022-12-30T06:32:29.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('3e2d3738-de73-45ff-9896-482084153a92', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 37, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":181,\"invoice_number\":\"INV-61787\",\"customer_name\":\"Wayne Cook\",\"amount\":394.31,\"invoice_at\":\"2022-01-17T10:34:53.000000Z\",\"due_at\":\"2022-07-30T09:34:53.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('437165e4-7902-4dc2-b0f9-ccc4bf26f9c2', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":125,\"invoice_number\":\"INV-48234\",\"customer_name\":\"Kyle Shaw\",\"amount\":906.75,\"invoice_at\":\"2022-10-31T18:22:36.000000Z\",\"due_at\":\"2022-12-13T18:22:36.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10'),
('43b71136-6649-4f04-a4ef-1531017c86a4', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":130,\"invoice_number\":\"INV-14883\",\"customer_name\":\"Pauline Williams\",\"amount\":556.12,\"invoice_at\":\"2022-12-07T18:57:45.000000Z\",\"due_at\":\"2023-12-23T18:57:45.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10'),
('47f3dfcf-228f-4103-9a43-875c576a9b82', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 29, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":124,\"invoice_number\":\"INV-36244\",\"customer_name\":\"Rob White\",\"amount\":581.25,\"invoice_at\":\"2022-05-18T20:58:49.000000Z\",\"due_at\":\"2023-01-12T21:58:49.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09'),
('4efa51c4-c2ad-49a1-bcdc-63176692495f', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":160,\"invoice_number\":\"INV-57821\",\"customer_name\":\"Wayne Cook\",\"amount\":435.66,\"invoice_at\":\"2022-05-05T00:01:08.000000Z\",\"due_at\":\"2024-11-11T01:01:08.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12'),
('518b4abc-3c34-4c68-a273-d8624f086615', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 100, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":143,\"invoice_number\":\"INV-38238\",\"customer_name\":\"Kyle Gray\",\"amount\":981.6,\"invoice_at\":\"2022-02-05T20:16:11.000000Z\",\"due_at\":\"2024-10-05T19:16:11.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11'),
('582d9b5f-37fc-40f6-8689-eef9293430a6', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 24, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":157,\"invoice_number\":\"INV-13178\",\"customer_name\":\"Finley Powell\",\"amount\":158.39,\"invoice_at\":\"2022-12-10T02:52:22.000000Z\",\"due_at\":\"2023-04-23T01:52:22.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12'),
('5d37ee7a-7a9a-45a3-a249-005cd21b7cdd', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 87, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":109,\"invoice_number\":\"INV-22748\",\"customer_name\":\"Wayne Green\",\"amount\":240.16,\"invoice_at\":\"2022-10-01T03:22:32.000000Z\",\"due_at\":\"2024-10-31T04:22:32.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08'),
('5dfdee05-fdd6-4618-b9b3-00bd87b1f3e6', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":124,\"invoice_number\":\"INV-36244\",\"customer_name\":\"Rob White\",\"amount\":581.25,\"invoice_at\":\"2022-05-18T20:58:49.000000Z\",\"due_at\":\"2023-01-12T21:58:49.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09'),
('63bf1804-18ba-46bc-8194-641fb3d7d0ed', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":110,\"invoice_number\":\"INV-92536\",\"customer_name\":\"Natasha Walker\",\"amount\":494.69,\"invoice_at\":\"2022-02-09T05:17:07.000000Z\",\"due_at\":\"2024-08-16T04:17:07.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09'),
('67d8f969-bf4d-4855-b8bd-70e3a0ef3ef6', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":185,\"invoice_number\":\"INV-64185\",\"customer_name\":\"Lily Simpson\",\"amount\":327.77,\"invoice_at\":\"2022-05-18T23:28:26.000000Z\",\"due_at\":\"2024-01-27T00:28:26.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('6fdf9645-76a1-496d-a67c-8a47de7ba2a7', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 37, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":182,\"invoice_number\":\"INV-53164\",\"customer_name\":\"Wayne Cook\",\"amount\":310.83,\"invoice_at\":\"2022-02-17T06:50:44.000000Z\",\"due_at\":\"2022-11-25T06:50:44.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('6ff79637-1f26-4f22-8108-b66d03d6077c', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":152,\"invoice_number\":\"INV-53441\",\"customer_name\":\"Eden Wilkinson\",\"amount\":139.23,\"invoice_at\":\"2022-11-18T13:00:19.000000Z\",\"due_at\":\"2025-06-20T12:00:19.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12'),
('76bc3d82-d0ba-4213-a5a2-b97ebda3d4fe', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 55, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":170,\"invoice_number\":\"INV-88734\",\"customer_name\":\"Lily Simpson\",\"amount\":315.04,\"invoice_at\":\"2022-09-18T20:12:15.000000Z\",\"due_at\":\"2022-10-09T20:12:15.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13'),
('7d560575-1a6b-4894-bc9e-faefc80c349e', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 67, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":177,\"invoice_number\":\"INV-38327\",\"customer_name\":\"Charlie Clark\",\"amount\":101.96,\"invoice_at\":\"2022-07-29T21:50:44.000000Z\",\"due_at\":\"2023-06-30T21:50:44.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('80729dae-0570-474b-8ad0-0967b78fd169', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":166,\"invoice_number\":\"INV-36196\",\"customer_name\":\"Dennis Price\",\"amount\":329.33,\"invoice_at\":\"2022-04-11T15:10:58.000000Z\",\"due_at\":\"2023-12-17T16:10:58.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13'),
('81e1fce7-0905-46ca-aeed-9c58ddc02906', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 67, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":190,\"invoice_number\":\"INV-84778\",\"customer_name\":\"Charlie Clark\",\"amount\":942.91,\"invoice_at\":\"2022-08-11T10:25:14.000000Z\",\"due_at\":\"2025-02-02T11:25:14.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('91bdfadd-9fa2-402f-8d06-5d6c3f066cb3', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 55, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":185,\"invoice_number\":\"INV-64185\",\"customer_name\":\"Lily Simpson\",\"amount\":327.77,\"invoice_at\":\"2022-05-18T23:28:26.000000Z\",\"due_at\":\"2024-01-27T00:28:26.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('93add9b7-09c2-476c-a02c-96c5f541c554', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":157,\"invoice_number\":\"INV-13178\",\"customer_name\":\"Finley Powell\",\"amount\":158.39,\"invoice_at\":\"2022-12-10T02:52:22.000000Z\",\"due_at\":\"2023-04-23T01:52:22.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12'),
('93bc3ee0-9c48-4924-8e2b-b5bae60193dd', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":138,\"invoice_number\":\"INV-34515\",\"customer_name\":\"Kyle Gray\",\"amount\":739.03,\"invoice_at\":\"2022-01-03T01:18:29.000000Z\",\"due_at\":\"2023-02-21T01:18:29.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11'),
('9e3e55e6-2c23-4c2a-a6c5-4f98f0b41dae', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 67, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":184,\"invoice_number\":\"INV-58791\",\"customer_name\":\"Charlie Clark\",\"amount\":50.04,\"invoice_at\":\"2022-04-21T04:30:07.000000Z\",\"due_at\":\"2022-05-11T04:30:07.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('9f3385e4-2ff2-4e44-b26c-53404d5b674e', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":183,\"invoice_number\":\"INV-43300\",\"customer_name\":\"Dennis Price\",\"amount\":694.62,\"invoice_at\":\"2022-06-18T05:32:29.000000Z\",\"due_at\":\"2022-12-30T06:32:29.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('a051c4dc-fbc4-4a7e-9763-30ae22f9626e', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":174,\"invoice_number\":\"INV-96156\",\"customer_name\":\"Lily Simpson\",\"amount\":760.28,\"invoice_at\":\"2022-01-03T20:42:55.000000Z\",\"due_at\":\"2023-01-31T20:42:55.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('ab536c1b-7ec8-4a3d-b8d8-590e0a910515', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 77, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":152,\"invoice_number\":\"INV-53441\",\"customer_name\":\"Eden Wilkinson\",\"amount\":139.23,\"invoice_at\":\"2022-11-18T13:00:19.000000Z\",\"due_at\":\"2025-06-20T12:00:19.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11'),
('ab92a68d-9384-4b54-8baa-ef338b9ad524', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":198,\"invoice_number\":\"INV-55324\",\"customer_name\":\"Francesca Knight\",\"amount\":743.79,\"invoice_at\":\"2022-12-03T23:50:01.000000Z\",\"due_at\":\"2025-04-01T22:50:01.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:16', '2022-02-22 11:29:16'),
('aea958a3-8a12-499e-9abd-e2a730ee5a14', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":182,\"invoice_number\":\"INV-53164\",\"customer_name\":\"Wayne Cook\",\"amount\":310.83,\"invoice_at\":\"2022-02-17T06:50:44.000000Z\",\"due_at\":\"2022-11-25T06:50:44.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('aee285ad-d391-4685-9461-d97985af7b05', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 24, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":171,\"invoice_number\":\"INV-28717\",\"customer_name\":\"Finley Powell\",\"amount\":170.77,\"invoice_at\":\"2022-06-23T22:44:29.000000Z\",\"due_at\":\"2024-01-06T23:44:29.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13'),
('b62545c7-2302-462f-83ae-43df6f358e61', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 100, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":138,\"invoice_number\":\"INV-34515\",\"customer_name\":\"Kyle Gray\",\"amount\":739.03,\"invoice_at\":\"2022-01-03T01:18:29.000000Z\",\"due_at\":\"2023-02-21T01:18:29.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10'),
('b7c13751-089b-42ba-8621-767468d759a3', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":170,\"invoice_number\":\"INV-88734\",\"customer_name\":\"Lily Simpson\",\"amount\":315.04,\"invoice_at\":\"2022-09-18T20:12:15.000000Z\",\"due_at\":\"2022-10-09T20:12:15.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13'),
('b860a4e0-d6d7-45dc-ba89-07ec2162978a', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":143,\"invoice_number\":\"INV-38238\",\"customer_name\":\"Kyle Gray\",\"amount\":981.6,\"invoice_at\":\"2022-02-05T20:16:11.000000Z\",\"due_at\":\"2024-10-05T19:16:11.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11'),
('bc38cbbb-1680-43a1-943a-a50a590856e2', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":177,\"invoice_number\":\"INV-38327\",\"customer_name\":\"Charlie Clark\",\"amount\":101.96,\"invoice_at\":\"2022-07-29T21:50:44.000000Z\",\"due_at\":\"2023-06-30T21:50:44.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('c54e714a-2098-4fc9-abe4-265320b7fafe', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 42, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":110,\"invoice_number\":\"INV-92536\",\"customer_name\":\"Natasha Walker\",\"amount\":494.69,\"invoice_at\":\"2022-02-09T05:17:07.000000Z\",\"due_at\":\"2024-08-16T04:17:07.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09'),
('d152407f-dbd7-4bf3-a634-4b0561977740', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":101,\"invoice_number\":\"INV-52683\",\"customer_name\":\"Rachel Cook\",\"amount\":99.45,\"invoice_at\":\"2022-03-12T05:39:59.000000Z\",\"due_at\":\"2023-12-06T05:39:59.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08'),
('d3a887fc-11e8-4535-ba43-c99c5495cf28', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":179,\"invoice_number\":\"INV-16938\",\"customer_name\":\"Dennis Price\",\"amount\":618.56,\"invoice_at\":\"2022-07-25T16:02:31.000000Z\",\"due_at\":\"2025-04-14T16:02:31.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('d5755ad2-ab09-4fb6-af07-cbdee44db031', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 81, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":122,\"invoice_number\":\"INV-41286\",\"customer_name\":\"Philip Mitchell\",\"amount\":455.55,\"invoice_at\":\"2022-06-12T14:50:12.000000Z\",\"due_at\":\"2023-08-19T14:50:12.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09'),
('d8d59942-9eed-48fc-b0dd-f7dcffacbd8b', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 2, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":186,\"invoice_number\":\"INV-96162\",\"customer_name\":\"Francesca Knight\",\"amount\":326.94,\"invoice_at\":\"2022-09-12T19:01:23.000000Z\",\"due_at\":\"2023-10-11T19:01:23.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('db5aa04e-6cf5-4e00-8490-e1c795ddbf92', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 80, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":130,\"invoice_number\":\"INV-14883\",\"customer_name\":\"Pauline Williams\",\"amount\":556.12,\"invoice_at\":\"2022-12-07T18:57:45.000000Z\",\"due_at\":\"2023-12-23T18:57:45.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10'),
('dbe616a5-1469-4f1c-bc3d-f546ff825ede', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 6, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":166,\"invoice_number\":\"INV-36196\",\"customer_name\":\"Dennis Price\",\"amount\":329.33,\"invoice_at\":\"2022-04-11T15:10:58.000000Z\",\"due_at\":\"2023-12-17T16:10:58.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13'),
('ded7dcb0-d41b-4783-b313-3c3f133bfa8b', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 35, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":101,\"invoice_number\":\"INV-52683\",\"customer_name\":\"Rachel Cook\",\"amount\":99.45,\"invoice_at\":\"2022-03-12T05:39:59.000000Z\",\"due_at\":\"2023-12-06T05:39:59.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08'),
('df59319d-ea56-4a01-bce1-064d1211267f', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 70, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":169,\"invoice_number\":\"INV-83466\",\"customer_name\":\"Kyle Knight\",\"amount\":422.5,\"invoice_at\":\"2022-11-12T16:03:23.000000Z\",\"due_at\":\"2024-09-30T15:03:23.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:13', '2022-02-22 11:29:13'),
('e4e0a28d-78ab-4007-8fde-c016b9393a03', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 81, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":158,\"invoice_number\":\"INV-91666\",\"customer_name\":\"Philip Mitchell\",\"amount\":697.31,\"invoice_at\":\"2022-07-04T05:57:14.000000Z\",\"due_at\":\"2024-09-09T05:57:14.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:12', '2022-02-22 11:29:12'),
('e7201703-2e3e-4b48-96ae-bc325cae988d', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":122,\"invoice_number\":\"INV-41286\",\"customer_name\":\"Philip Mitchell\",\"amount\":455.55,\"invoice_at\":\"2022-06-12T14:50:12.000000Z\",\"due_at\":\"2023-08-19T14:50:12.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:09', '2022-02-22 11:29:09'),
('eb6145eb-6e87-449f-b7b8-fe2655485c0a', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":132,\"invoice_number\":\"INV-8424\",\"customer_name\":\"Pauline Williams\",\"amount\":551.08,\"invoice_at\":\"2022-11-18T17:20:40.000000Z\",\"due_at\":\"2024-02-17T17:20:40.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10'),
('eee433e5-95b2-4765-9ca7-bfc69c55d72f', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":190,\"invoice_number\":\"INV-84778\",\"customer_name\":\"Charlie Clark\",\"amount\":942.91,\"invoice_at\":\"2022-08-11T10:25:14.000000Z\",\"due_at\":\"2025-02-02T11:25:14.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:15', '2022-02-22 11:29:15'),
('efc20abb-a4da-4be4-813b-9789342dde1a', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 18, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":139,\"invoice_number\":\"INV-8951\",\"customer_name\":\"Jane Owen\",\"amount\":726.18,\"invoice_at\":\"2022-01-18T05:11:15.000000Z\",\"due_at\":\"2023-01-11T05:11:15.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:11', '2022-02-22 11:29:11'),
('f3df2182-a440-4197-8985-93063268835c', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 6, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":179,\"invoice_number\":\"INV-16938\",\"customer_name\":\"Dennis Price\",\"amount\":618.56,\"invoice_at\":\"2022-07-25T16:02:31.000000Z\",\"due_at\":\"2025-04-14T16:02:31.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:14', '2022-02-22 11:29:14'),
('fac23f42-bd08-428a-89c3-d787e68c3dd1', 'App\\Notifications\\Portal\\PaymentReceived', 'users', 1, '{\"template_alias\":\"invoice_payment_admin\",\"invoice_id\":109,\"invoice_number\":\"INV-22748\",\"customer_name\":\"Wayne Green\",\"amount\":240.16,\"invoice_at\":\"2022-10-01T03:22:32.000000Z\",\"due_at\":\"2024-10-31T04:22:32.000000Z\",\"status\":\"partial\"}', NULL, '2022-02-22 11:29:08', '2022-02-22 11:29:08'),
('fd002351-4003-4d53-bdb5-67c316278b9a', 'App\\Notifications\\Portal\\PaymentReceived', 'App\\Models\\Common\\Contact', 16, '{\"template_alias\":\"invoice_payment_customer\",\"invoice_id\":125,\"invoice_number\":\"INV-48234\",\"customer_name\":\"Kyle Shaw\",\"amount\":906.75,\"invoice_at\":\"2022-10-31T18:22:36.000000Z\",\"due_at\":\"2022-12-13T18:22:36.000000Z\",\"status\":\"paid\"}', NULL, '2022-02-22 11:29:10', '2022-02-22 11:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_password_resets`
--

CREATE TABLE `p9k_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_permissions`
--

CREATE TABLE `p9k_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_permissions`
--

INSERT INTO `p9k_permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'read-admin-panel', 'Read Admin Panel', 'Read Admin Panel', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(2, 'read-api', 'Read Api', 'Read Api', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(3, 'create-auth-permissions', 'Create Auth Permissions', 'Create Auth Permissions', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(4, 'read-auth-permissions', 'Read Auth Permissions', 'Read Auth Permissions', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(5, 'update-auth-permissions', 'Update Auth Permissions', 'Update Auth Permissions', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(6, 'delete-auth-permissions', 'Delete Auth Permissions', 'Delete Auth Permissions', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(7, 'read-auth-profile', 'Read Auth Profile', 'Read Auth Profile', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(8, 'update-auth-profile', 'Update Auth Profile', 'Update Auth Profile', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(9, 'create-auth-roles', 'Create Auth Roles', 'Create Auth Roles', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(10, 'read-auth-roles', 'Read Auth Roles', 'Read Auth Roles', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(11, 'update-auth-roles', 'Update Auth Roles', 'Update Auth Roles', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(12, 'delete-auth-roles', 'Delete Auth Roles', 'Delete Auth Roles', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(13, 'create-auth-users', 'Create Auth Users', 'Create Auth Users', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(14, 'read-auth-users', 'Read Auth Users', 'Read Auth Users', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(15, 'update-auth-users', 'Update Auth Users', 'Update Auth Users', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(16, 'delete-auth-users', 'Delete Auth Users', 'Delete Auth Users', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(17, 'create-banking-accounts', 'Create Banking Accounts', 'Create Banking Accounts', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(18, 'read-banking-accounts', 'Read Banking Accounts', 'Read Banking Accounts', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(19, 'update-banking-accounts', 'Update Banking Accounts', 'Update Banking Accounts', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(20, 'delete-banking-accounts', 'Delete Banking Accounts', 'Delete Banking Accounts', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(21, 'create-banking-reconciliations', 'Create Banking Reconciliations', 'Create Banking Reconciliations', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(22, 'read-banking-reconciliations', 'Read Banking Reconciliations', 'Read Banking Reconciliations', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(23, 'update-banking-reconciliations', 'Update Banking Reconciliations', 'Update Banking Reconciliations', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(24, 'delete-banking-reconciliations', 'Delete Banking Reconciliations', 'Delete Banking Reconciliations', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(25, 'create-banking-transactions', 'Create Banking Transactions', 'Create Banking Transactions', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(26, 'read-banking-transactions', 'Read Banking Transactions', 'Read Banking Transactions', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(27, 'update-banking-transactions', 'Update Banking Transactions', 'Update Banking Transactions', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(28, 'delete-banking-transactions', 'Delete Banking Transactions', 'Delete Banking Transactions', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(29, 'create-banking-transfers', 'Create Banking Transfers', 'Create Banking Transfers', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(30, 'read-banking-transfers', 'Read Banking Transfers', 'Read Banking Transfers', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(31, 'update-banking-transfers', 'Update Banking Transfers', 'Update Banking Transfers', '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(32, 'delete-banking-transfers', 'Delete Banking Transfers', 'Delete Banking Transfers', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(33, 'create-common-companies', 'Create Common Companies', 'Create Common Companies', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(34, 'read-common-companies', 'Read Common Companies', 'Read Common Companies', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(35, 'update-common-companies', 'Update Common Companies', 'Update Common Companies', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(36, 'delete-common-companies', 'Delete Common Companies', 'Delete Common Companies', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(37, 'create-common-dashboards', 'Create Common Dashboards', 'Create Common Dashboards', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(38, 'read-common-dashboards', 'Read Common Dashboards', 'Read Common Dashboards', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(39, 'update-common-dashboards', 'Update Common Dashboards', 'Update Common Dashboards', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(40, 'delete-common-dashboards', 'Delete Common Dashboards', 'Delete Common Dashboards', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(41, 'create-common-import', 'Create Common Import', 'Create Common Import', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(42, 'create-common-items', 'Create Common Items', 'Create Common Items', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(43, 'read-common-items', 'Read Common Items', 'Read Common Items', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(44, 'update-common-items', 'Update Common Items', 'Update Common Items', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(45, 'delete-common-items', 'Delete Common Items', 'Delete Common Items', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(46, 'create-common-notifications', 'Create Common Notifications', 'Create Common Notifications', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(47, 'read-common-notifications', 'Read Common Notifications', 'Read Common Notifications', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(48, 'update-common-notifications', 'Update Common Notifications', 'Update Common Notifications', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(49, 'delete-common-notifications', 'Delete Common Notifications', 'Delete Common Notifications', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(50, 'create-common-reports', 'Create Common Reports', 'Create Common Reports', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(51, 'read-common-reports', 'Read Common Reports', 'Read Common Reports', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(52, 'update-common-reports', 'Update Common Reports', 'Update Common Reports', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(53, 'delete-common-reports', 'Delete Common Reports', 'Delete Common Reports', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(54, 'read-common-search', 'Read Common Search', 'Read Common Search', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(55, 'read-common-uploads', 'Read Common Uploads', 'Read Common Uploads', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(56, 'delete-common-uploads', 'Delete Common Uploads', 'Delete Common Uploads', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(57, 'create-common-widgets', 'Create Common Widgets', 'Create Common Widgets', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(58, 'read-common-widgets', 'Read Common Widgets', 'Read Common Widgets', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(59, 'update-common-widgets', 'Update Common Widgets', 'Update Common Widgets', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(60, 'delete-common-widgets', 'Delete Common Widgets', 'Delete Common Widgets', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(61, 'create-purchases-bills', 'Create Purchases Bills', 'Create Purchases Bills', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(62, 'read-purchases-bills', 'Read Purchases Bills', 'Read Purchases Bills', '2022-02-22 11:26:57', '2022-02-22 11:26:57'),
(63, 'update-purchases-bills', 'Update Purchases Bills', 'Update Purchases Bills', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(64, 'delete-purchases-bills', 'Delete Purchases Bills', 'Delete Purchases Bills', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(65, 'create-purchases-payments', 'Create Purchases Payments', 'Create Purchases Payments', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(66, 'read-purchases-payments', 'Read Purchases Payments', 'Read Purchases Payments', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(67, 'update-purchases-payments', 'Update Purchases Payments', 'Update Purchases Payments', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(68, 'delete-purchases-payments', 'Delete Purchases Payments', 'Delete Purchases Payments', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(69, 'create-purchases-vendors', 'Create Purchases Vendors', 'Create Purchases Vendors', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(70, 'read-purchases-vendors', 'Read Purchases Vendors', 'Read Purchases Vendors', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(71, 'update-purchases-vendors', 'Update Purchases Vendors', 'Update Purchases Vendors', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(72, 'delete-purchases-vendors', 'Delete Purchases Vendors', 'Delete Purchases Vendors', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(73, 'create-sales-customers', 'Create Sales Customers', 'Create Sales Customers', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(74, 'read-sales-customers', 'Read Sales Customers', 'Read Sales Customers', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(75, 'update-sales-customers', 'Update Sales Customers', 'Update Sales Customers', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(76, 'delete-sales-customers', 'Delete Sales Customers', 'Delete Sales Customers', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(77, 'create-sales-invoices', 'Create Sales Invoices', 'Create Sales Invoices', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(78, 'read-sales-invoices', 'Read Sales Invoices', 'Read Sales Invoices', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(79, 'update-sales-invoices', 'Update Sales Invoices', 'Update Sales Invoices', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(80, 'delete-sales-invoices', 'Delete Sales Invoices', 'Delete Sales Invoices', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(81, 'create-sales-revenues', 'Create Sales Revenues', 'Create Sales Revenues', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(82, 'read-sales-revenues', 'Read Sales Revenues', 'Read Sales Revenues', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(83, 'update-sales-revenues', 'Update Sales Revenues', 'Update Sales Revenues', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(84, 'delete-sales-revenues', 'Delete Sales Revenues', 'Delete Sales Revenues', '2022-02-22 11:26:58', '2022-02-22 11:26:58'),
(85, 'read-install-updates', 'Read Install Updates', 'Read Install Updates', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(86, 'update-install-updates', 'Update Install Updates', 'Update Install Updates', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(87, 'create-modules-api-key', 'Create Modules Api Key', 'Create Modules Api Key', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(88, 'update-modules-api-key', 'Update Modules Api Key', 'Update Modules Api Key', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(89, 'read-modules-home', 'Read Modules Home', 'Read Modules Home', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(90, 'create-modules-item', 'Create Modules Item', 'Create Modules Item', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(91, 'read-modules-item', 'Read Modules Item', 'Read Modules Item', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(92, 'update-modules-item', 'Update Modules Item', 'Update Modules Item', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(93, 'delete-modules-item', 'Delete Modules Item', 'Delete Modules Item', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(94, 'read-modules-my', 'Read Modules My', 'Read Modules My', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(95, 'read-modules-tiles', 'Read Modules Tiles', 'Read Modules Tiles', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(96, 'read-notifications', 'Read Notifications', 'Read Notifications', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(97, 'update-notifications', 'Update Notifications', 'Update Notifications', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(98, 'read-reports-expense-summary', 'Read Reports Expense Summary', 'Read Reports Expense Summary', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(99, 'read-reports-income-summary', 'Read Reports Income Summary', 'Read Reports Income Summary', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(100, 'read-reports-income-expense-summary', 'Read Reports Income Expense Summary', 'Read Reports Income Expense Summary', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(101, 'read-reports-profit-loss', 'Read Reports Profit Loss', 'Read Reports Profit Loss', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(102, 'read-reports-tax-summary', 'Read Reports Tax Summary', 'Read Reports Tax Summary', '2022-02-22 11:26:59', '2022-02-22 11:26:59'),
(103, 'create-settings-categories', 'Create Settings Categories', 'Create Settings Categories', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(104, 'read-settings-categories', 'Read Settings Categories', 'Read Settings Categories', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(105, 'update-settings-categories', 'Update Settings Categories', 'Update Settings Categories', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(106, 'delete-settings-categories', 'Delete Settings Categories', 'Delete Settings Categories', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(107, 'read-settings-company', 'Read Settings Company', 'Read Settings Company', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(108, 'create-settings-currencies', 'Create Settings Currencies', 'Create Settings Currencies', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(109, 'read-settings-currencies', 'Read Settings Currencies', 'Read Settings Currencies', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(110, 'update-settings-currencies', 'Update Settings Currencies', 'Update Settings Currencies', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(111, 'delete-settings-currencies', 'Delete Settings Currencies', 'Delete Settings Currencies', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(112, 'read-settings-defaults', 'Read Settings Defaults', 'Read Settings Defaults', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(113, 'read-settings-email', 'Read Settings Email', 'Read Settings Email', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(114, 'read-settings-invoice', 'Read Settings Invoice', 'Read Settings Invoice', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(115, 'read-settings-localisation', 'Read Settings Localisation', 'Read Settings Localisation', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(116, 'read-settings-modules', 'Read Settings Modules', 'Read Settings Modules', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(117, 'update-settings-modules', 'Update Settings Modules', 'Update Settings Modules', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(118, 'read-settings-settings', 'Read Settings Settings', 'Read Settings Settings', '2022-02-22 11:27:00', '2022-02-22 11:27:00'),
(119, 'update-settings-settings', 'Update Settings Settings', 'Update Settings Settings', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(120, 'read-settings-schedule', 'Read Settings Schedule', 'Read Settings Schedule', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(121, 'create-settings-taxes', 'Create Settings Taxes', 'Create Settings Taxes', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(122, 'read-settings-taxes', 'Read Settings Taxes', 'Read Settings Taxes', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(123, 'update-settings-taxes', 'Update Settings Taxes', 'Update Settings Taxes', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(124, 'delete-settings-taxes', 'Delete Settings Taxes', 'Delete Settings Taxes', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(125, 'read-widgets-account-balance', 'Read Widgets Account Balance', 'Read Widgets Account Balance', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(126, 'read-widgets-cash-flow', 'Read Widgets Cash Flow', 'Read Widgets Cash Flow', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(127, 'read-widgets-expenses-by-category', 'Read Widgets Expenses By Category', 'Read Widgets Expenses By Category', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(128, 'read-widgets-income-by-category', 'Read Widgets Income By Category', 'Read Widgets Income By Category', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(129, 'read-widgets-latest-expenses', 'Read Widgets Latest Expenses', 'Read Widgets Latest Expenses', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(130, 'read-widgets-latest-income', 'Read Widgets Latest Income', 'Read Widgets Latest Income', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(131, 'read-widgets-total-expenses', 'Read Widgets Total Expenses', 'Read Widgets Total Expenses', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(132, 'read-widgets-total-income', 'Read Widgets Total Income', 'Read Widgets Total Income', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(133, 'read-widgets-total-profit', 'Read Widgets Total Profit', 'Read Widgets Total Profit', '2022-02-22 11:27:01', '2022-02-22 11:27:01'),
(134, 'read-widgets-currencies', 'Read Widgets Currencies', 'Read Widgets Currencies', '2022-02-22 11:27:02', '2022-02-22 11:27:02'),
(135, 'read-client-portal', 'Read Client Portal', 'Read Client Portal', '2022-02-22 11:27:07', '2022-02-22 11:27:07'),
(136, 'read-portal-invoices', 'Read Portal Invoices', 'Read Portal Invoices', '2022-02-22 11:27:07', '2022-02-22 11:27:07'),
(137, 'update-portal-invoices', 'Update Portal Invoices', 'Update Portal Invoices', '2022-02-22 11:27:07', '2022-02-22 11:27:07'),
(138, 'read-portal-payments', 'Read Portal Payments', 'Read Portal Payments', '2022-02-22 11:27:08', '2022-02-22 11:27:08'),
(139, 'update-portal-payments', 'Update Portal Payments', 'Update Portal Payments', '2022-02-22 11:27:08', '2022-02-22 11:27:08'),
(140, 'read-portal-profile', 'Read Portal Profile', 'Read Portal Profile', '2022-02-22 11:27:08', '2022-02-22 11:27:08'),
(141, 'update-portal-profile', 'Update Portal Profile', 'Update Portal Profile', '2022-02-22 11:27:08', '2022-02-22 11:27:08'),
(142, 'read-offline-payments-settings', 'Read Offline Payments Settings', 'Read Offline Payments Settings', '2022-02-22 11:27:09', '2022-02-22 11:27:09'),
(143, 'update-offline-payments-settings', 'Update Offline Payments Settings', 'Update Offline Payments Settings', '2022-02-22 11:27:09', '2022-02-22 11:27:09'),
(144, 'delete-offline-payments-settings', 'Delete Offline Payments Settings', 'Delete Offline Payments Settings', '2022-02-22 11:27:09', '2022-02-22 11:27:09'),
(145, 'read-paypal-standard-settings', 'Read PayPal Standard Settings', 'Read PayPal Standard Settings', '2022-02-22 11:27:10', '2022-02-22 11:27:10'),
(146, 'update-paypal-standard-settings', 'Update PayPal Standard Settings', 'Update PayPal Standard Settings', '2022-02-22 11:27:10', '2022-02-22 11:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_reconciliations`
--

CREATE TABLE `p9k_reconciliations` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime NOT NULL,
  `closing_balance` double(15,4) NOT NULL DEFAULT 0.0000,
  `reconciled` tinyint(1) NOT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_reconciliations`
--

INSERT INTO `p9k_reconciliations` (`id`, `company_id`, `account_id`, `started_at`, `ended_at`, `closing_balance`, `reconciled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2022-03-01 18:01:09', '2022-03-31 18:01:09', -124465426.0600, 0, 'core::ui', 1, '2022-03-06 12:01:09', '2022-03-06 12:01:09', NULL),
(2, 1, 1, '2022-03-01 18:02:10', '2022-03-16 18:02:10', -184293165.0900, 0, 'core::ui', 1, '2022-03-06 12:02:10', '2022-03-06 12:02:10', NULL),
(3, 1, 1, '2022-03-03 18:02:42', '2022-03-10 18:02:42', -134622882.9600, 0, 'core::ui', 1, '2022-03-06 12:02:42', '2022-03-06 12:02:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_recurring`
--

CREATE TABLE `p9k_recurring` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `recurable_type` varchar(191) NOT NULL,
  `recurable_id` bigint(20) UNSIGNED NOT NULL,
  `frequency` varchar(191) NOT NULL,
  `interval` int(11) NOT NULL DEFAULT 1,
  `started_at` datetime NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_recurring`
--

INSERT INTO `p9k_recurring` (`id`, `company_id`, `recurable_type`, `recurable_id`, `frequency`, `interval`, `started_at`, `count`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'App\\Models\\Document\\Document', 201, 'daily', 1, '2022-03-05 15:06:47', 3, 'core::ui', '1', '2022-03-05 09:06:47', '2022-03-05 09:06:47', NULL),
(2, 1, 'App\\Models\\Document\\Document', 202, 'weekly', 1, '2022-03-06 13:40:21', 3, 'core::ui', '1', '2022-03-06 07:40:21', '2022-03-06 07:40:21', NULL),
(3, 1, 'App\\Models\\Banking\\Transaction', 83, 'weekly', 1, '2022-03-06 19:08:56', 2, 'core::ui', '1', '2022-03-06 13:08:56', '2022-03-06 13:08:56', NULL),
(4, 1, 'App\\Models\\Document\\Document', 203, 'daily', 1, '2022-03-07 11:25:15', 4, 'core::ui', '1', '2022-03-07 05:23:57', '2022-03-07 05:25:15', NULL),
(5, 1, 'App\\Models\\Document\\Document', 204, 'weekly', 1, '2022-03-09 15:30:41', 5, 'core::ui', '1', '2022-03-09 09:30:41', '2022-03-09 09:30:41', NULL),
(6, 1, 'App\\Models\\Banking\\Transaction', 84, 'monthly', 1, '2022-03-31 18:28:21', 0, 'core::ui', '1', '2022-04-30 12:28:22', '2022-04-30 12:28:22', NULL),
(7, 1, 'App\\Models\\Document\\Document', 205, 'daily', 1, '2022-07-03 14:12:36', 1, 'core::ui', '1', '2022-07-03 08:12:37', '2022-07-03 08:12:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_reports`
--

CREATE TABLE `p9k_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `class` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `settings` text DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_reports`
--

INSERT INTO `p9k_reports` (`id`, `company_id`, `class`, `name`, `description`, `settings`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'App\\Reports\\IncomeSummary', 'Income Summary', 'Monthly income summary by category.', '{\"group\":\"category\",\"period\":\"monthly\",\"basis\":\"accrual\",\"chart\":\"line\"}', 'core::seed', NULL, '2022-02-22 11:27:10', '2022-02-22 11:27:10', NULL),
(2, 1, 'App\\Reports\\ExpenseSummary', 'Expense Summary', 'Monthly expense summary by category.', '{\"group\":\"category\",\"period\":\"monthly\",\"basis\":\"accrual\",\"chart\":\"line\"}', 'core::seed', NULL, '2022-02-22 11:27:10', '2022-02-22 11:27:10', NULL),
(3, 1, 'App\\Reports\\IncomeExpenseSummary', 'Income vs Expense', 'Monthly income vs expense by category.', '{\"group\":\"category\",\"period\":\"monthly\",\"basis\":\"accrual\",\"chart\":\"line\"}', 'core::seed', NULL, '2022-02-22 11:27:10', '2022-02-22 11:27:10', NULL),
(4, 1, 'App\\Reports\\ProfitLoss', 'Profit & Loss', 'Quarterly profit & loss by category.', '{\"group\":\"category\",\"period\":\"quarterly\",\"basis\":\"accrual\"}', 'core::seed', NULL, '2022-02-22 11:27:10', '2022-02-22 11:27:10', NULL),
(5, 1, 'App\\Reports\\TaxSummary', 'Tax Summary', 'Quarterly tax summary.', '{\"period\":\"quarterly\",\"basis\":\"accrual\"}', 'core::seed', NULL, '2022-02-22 11:27:10', '2022-02-22 11:27:10', NULL),
(6, 1, 'App\\Reports\\IncomeSummary', 'hgfghjk', 'hjkl', '{\"report\":\"invalid\",\"group\":\"category\",\"period\":\"quarterly\",\"basis\":\"accrual\",\"chart\":\"0\"}', 'core::ui', 1, '2022-02-27 12:59:20', '2022-02-27 12:59:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_roles`
--

CREATE TABLE `p9k_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_roles`
--

INSERT INTO `p9k_roles` (`id`, `name`, `display_name`, `description`, `created_from`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', NULL, NULL, '2022-02-22 11:26:56', '2022-02-22 11:26:56'),
(2, 'manager', 'Manager', 'Manager', NULL, NULL, '2022-02-22 11:27:02', '2022-02-22 11:27:02'),
(3, 'customer', 'Customer', 'Customer', NULL, NULL, '2022-02-22 11:27:07', '2022-02-22 11:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_role_permissions`
--

CREATE TABLE `p9k_role_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_role_permissions`
--

INSERT INTO `p9k_role_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 130),
(1, 131),
(1, 132),
(1, 133),
(1, 134),
(1, 142),
(1, 143),
(1, 144),
(1, 145),
(1, 146),
(2, 1),
(2, 7),
(2, 8),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 114),
(2, 115),
(2, 116),
(2, 117),
(2, 118),
(2, 119),
(2, 120),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(2, 127),
(2, 128),
(2, 129),
(2, 130),
(2, 131),
(2, 132),
(2, 133),
(2, 134),
(2, 142),
(2, 143),
(2, 144),
(2, 145),
(2, 146),
(3, 135),
(3, 136),
(3, 137),
(3, 138),
(3, 139),
(3, 140),
(3, 141);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_sessions`
--

CREATE TABLE `p9k_sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_settings`
--

CREATE TABLE `p9k_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_settings`
--

INSERT INTO `p9k_settings` (`id`, `company_id`, `key`, `value`) VALUES
(1, 1, 'invoice.title', 'Invoice'),
(2, 1, 'default.account', '1'),
(3, 1, 'default.income_category', '2'),
(4, 1, 'default.expense_category', '4'),
(5, 1, 'wizard.completed', '1'),
(6, 1, 'offline-payments.methods', '[{\"code\":\"offline-payments.cash.1\",\"name\":\"Cash\",\"customer\":\"0\",\"order\":\"1\",\"description\":null},{\"code\":\"offline-payments.bank_transfer.2\",\"name\":\"Bank Transfer\",\"customer\":\"0\",\"order\":\"2\",\"description\":null}]'),
(7, 1, 'company.name', 'My Company'),
(8, 1, 'company.email', 'my@company.com'),
(9, 1, 'bill.number_next', '103'),
(10, 1, 'invoice.number_next', '104'),
(11, 1, 'company.tax_number', '546'),
(12, 1, 'company.address', 'Voluptatem Quo ex n'),
(13, 1, 'company.country', 'AO'),
(14, 1, 'company._prefix', 'company');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_taxes`
--

CREATE TABLE `p9k_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `rate` double(15,4) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'normal',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_taxes`
--

INSERT INTO `p9k_taxes` (`id`, `company_id`, `name`, `rate`, `type`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Sint sint.', 11.7800, 'inclusive', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(2, 1, 'Nesciunt.', 13.5800, 'withholding', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(3, 1, 'Ex sed natus.', 18.0700, 'withholding', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(4, 1, 'Earum rerum.', 11.9200, 'inclusive', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(5, 1, 'Quidem.', 11.2200, 'inclusive', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(6, 1, 'Quis sed.', 16.3700, 'compound', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(7, 1, 'Dolores at.', 18.6400, 'inclusive', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(8, 1, 'At accusantium.', 10.9200, 'normal', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(9, 1, 'Aperiam.', 16.2800, 'withholding', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL),
(10, 1, 'Quod et et.', 18.2900, 'inclusive', 1, 'core::factory', NULL, '2022-02-22 11:29:01', '2022-02-22 11:29:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_transactions`
--

CREATE TABLE `p9k_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `paid_at` datetime NOT NULL,
  `amount` double(15,4) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_rate` double(15,8) NOT NULL,
  `account_id` int(11) NOT NULL,
  `document_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `payment_method` varchar(191) NOT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `reconciled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_transactions`
--

INSERT INTO `p9k_transactions` (`id`, `company_id`, `type`, `paid_at`, `amount`, `currency_code`, `currency_rate`, `account_id`, `document_id`, `contact_id`, `category_id`, `description`, `payment_method`, `reference`, `parent_id`, `created_from`, `created_by`, `reconciled`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'expense', '2022-12-23 22:52:57', 111.0000, 'USD', 1.00000000, 1, 2, 57, 80, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(2, 1, 'expense', '2022-12-05 05:18:22', 449.6100, 'USD', 1.00000000, 1, 4, 8, 76, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(3, 1, 'expense', '2024-03-01 21:32:01', 363.8400, 'USD', 1.00000000, 1, 5, 76, 36, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(4, 1, 'expense', '2023-01-18 02:41:26', 28.0000, 'USD', 1.00000000, 1, 6, 53, 76, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(5, 1, 'expense', '2023-03-19 19:03:36', 196.9200, 'USD', 1.00000000, 1, 9, 98, 95, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(6, 1, 'expense', '2022-11-03 15:14:47', 178.7700, 'USD', 1.00000000, 1, 13, 45, 8, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(7, 1, 'expense', '2023-04-17 20:24:25', 133.0000, 'USD', 1.00000000, 1, 14, 48, 97, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(8, 1, 'expense', '2024-07-01 20:51:29', 321.9000, 'USD', 1.00000000, 1, 15, 48, 20, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:03', '2022-02-22 11:29:03', NULL),
(9, 1, 'expense', '2023-12-10 08:47:47', 49.0000, 'USD', 1.00000000, 1, 21, 72, 63, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(10, 1, 'expense', '2022-09-17 11:00:50', 151.5100, 'USD', 1.00000000, 1, 23, 48, 35, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(11, 1, 'expense', '2022-06-11 05:22:52', 656.2800, 'USD', 1.00000000, 1, 24, 26, 35, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(12, 1, 'expense', '2022-11-24 23:10:05', 101.0000, 'USD', 1.00000000, 1, 25, 8, 58, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(13, 1, 'expense', '2022-10-08 00:21:43', 216.0000, 'USD', 1.00000000, 1, 26, 34, 35, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(14, 1, 'expense', '2023-05-02 01:57:08', 39.0000, 'USD', 1.00000000, 1, 27, 38, 49, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(15, 1, 'expense', '2022-07-21 03:04:11', 277.0000, 'USD', 1.00000000, 1, 29, 48, 16, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(16, 1, 'expense', '2023-11-14 16:22:12', 315.4900, 'USD', 1.00000000, 1, 30, 10, 97, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(17, 1, 'expense', '2025-01-15 21:28:52', 432.5200, 'USD', 1.00000000, 1, 31, 71, 4, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(18, 1, 'expense', '2025-06-14 10:41:21', 55.0000, 'USD', 1.00000000, 1, 36, 45, 58, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(19, 1, 'expense', '2023-02-26 14:08:10', 195.0000, 'USD', 1.00000000, 1, 37, 60, 41, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(20, 1, 'expense', '2023-12-22 19:42:18', 260.0000, 'USD', 1.00000000, 1, 38, 69, 76, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(21, 1, 'expense', '2024-07-19 16:06:32', 299.0000, 'USD', 1.00000000, 1, 41, 34, 17, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(22, 1, 'expense', '2022-10-04 20:47:04', 426.0000, 'USD', 1.00000000, 1, 42, 34, 80, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:04', '2022-02-22 11:29:04', NULL),
(23, 1, 'expense', '2022-10-25 22:42:40', 191.0000, 'USD', 1.00000000, 1, 46, 71, 16, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(24, 1, 'expense', '2022-03-27 16:57:30', 818.2100, 'USD', 1.00000000, 1, 48, 72, 20, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(25, 1, 'expense', '2024-04-06 21:27:25', 98.9900, 'USD', 1.00000000, 1, 51, 45, 76, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(26, 1, 'expense', '2024-03-07 19:11:59', 434.1500, 'USD', 1.00000000, 1, 52, 34, 49, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(27, 1, 'expense', '2022-04-27 03:11:48', 684.4000, 'USD', 1.00000000, 1, 53, 10, 17, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(28, 1, 'expense', '2022-06-04 11:56:53', 311.0000, 'USD', 1.00000000, 1, 56, 45, 80, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(29, 1, 'expense', '2023-04-26 15:42:37', 639.3100, 'USD', 1.00000000, 1, 57, 26, 41, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(30, 1, 'expense', '2023-08-10 22:29:07', 381.6100, 'USD', 1.00000000, 1, 63, 98, 63, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(31, 1, 'expense', '2025-02-24 21:35:15', 464.6000, 'USD', 1.00000000, 1, 65, 39, 58, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:05', '2022-02-22 11:29:05', NULL),
(32, 1, 'expense', '2024-09-03 22:59:03', 39.0000, 'USD', 1.00000000, 1, 66, 38, 8, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(33, 1, 'expense', '2023-08-07 22:17:03', 698.6000, 'USD', 1.00000000, 1, 67, 51, 16, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(34, 1, 'expense', '2023-11-04 07:19:09', 75.1100, 'USD', 1.00000000, 1, 68, 79, 63, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(35, 1, 'expense', '2022-03-18 16:48:15', 106.0000, 'USD', 1.00000000, 1, 69, 71, 97, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(36, 1, 'expense', '2023-03-07 10:43:04', 827.2600, 'USD', 1.00000000, 1, 70, 14, 17, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(37, 1, 'expense', '2024-04-15 03:33:15', 204.0000, 'USD', 1.00000000, 1, 72, 14, 35, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(38, 1, 'expense', '2024-12-14 19:09:19', 174.0000, 'USD', 1.00000000, 1, 73, 34, 56, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(39, 1, 'expense', '2025-01-01 01:42:09', 175.6600, 'USD', 1.00000000, 1, 75, 60, 76, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(40, 1, 'expense', '2023-03-18 22:44:38', 727.1300, 'USD', 1.00000000, 1, 78, 34, 97, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(41, 1, 'expense', '2023-03-20 07:19:23', 16.0000, 'USD', 1.00000000, 1, 81, 8, 20, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(42, 1, 'expense', '2022-11-06 09:22:40', 125.0000, 'USD', 1.00000000, 1, 82, 69, 41, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(43, 1, 'expense', '2023-05-26 08:02:41', 276.0000, 'USD', 1.00000000, 1, 86, 39, 35, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(44, 1, 'expense', '2024-01-05 00:31:46', 234.8800, 'USD', 1.00000000, 1, 87, 51, 4, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(45, 1, 'expense', '2023-12-18 13:52:15', 823.2600, 'USD', 1.00000000, 1, 89, 57, 76, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:06', '2022-02-22 11:29:06', NULL),
(46, 1, 'expense', '2022-12-05 00:54:11', 308.0000, 'USD', 1.00000000, 1, 90, 90, 8, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(47, 1, 'expense', '2024-01-07 23:15:48', 110.0000, 'USD', 1.00000000, 1, 93, 54, 89, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(48, 1, 'expense', '2023-12-18 17:12:56', 653.5900, 'USD', 1.00000000, 1, 94, 38, 58, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(49, 1, 'expense', '2023-10-03 22:04:22', 54.0000, 'USD', 1.00000000, 1, 95, 72, 97, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(50, 1, 'expense', '2022-10-13 05:19:54', 756.5300, 'USD', 1.00000000, 1, 97, 45, 80, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(51, 1, 'expense', '2023-04-04 02:48:45', 62.7000, 'USD', 1.00000000, 1, 98, 51, 35, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(52, 1, 'expense', '2023-11-05 22:50:44', 440.4600, 'USD', 1.00000000, 1, 99, 26, 35, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:07', '2022-02-22 11:29:07', NULL),
(53, 1, 'income', '2023-12-06 05:39:59', 99.4500, 'USD', 1.00000000, 1, 101, 35, 2, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(54, 1, 'income', '2024-10-31 04:22:32', 97.0000, 'USD', 1.00000000, 1, 109, 87, 86, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(55, 1, 'income', '2024-08-16 05:17:07', 494.6900, 'USD', 1.00000000, 1, 110, 42, 48, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:08', '2022-02-22 11:29:08', NULL),
(56, 1, 'income', '2023-08-19 15:50:12', 181.0000, 'USD', 1.00000000, 1, 122, 81, 27, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(57, 1, 'income', '2023-01-12 21:58:49', 224.0000, 'USD', 1.00000000, 1, 124, 29, 90, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(58, 1, 'income', '2022-12-13 18:22:36', 906.7500, 'USD', 1.00000000, 1, 125, 16, 2, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:09', '2022-02-22 11:29:09', NULL),
(59, 1, 'income', '2023-12-23 18:57:45', 226.0000, 'USD', 1.00000000, 1, 130, 80, 38, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(60, 1, 'income', '2024-02-17 17:20:40', 183.0000, 'USD', 1.00000000, 1, 132, 80, 62, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(61, 1, 'income', '2023-02-21 01:18:29', 739.0300, 'USD', 1.00000000, 1, 138, 100, 82, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:10', '2022-02-22 11:29:10', NULL),
(62, 1, 'income', '2023-01-11 05:11:15', 726.1800, 'USD', 1.00000000, 1, 139, 18, 60, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(63, 1, 'income', '2024-10-05 20:16:11', 981.6000, 'USD', 1.00000000, 1, 143, 100, 90, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(64, 1, 'income', '2025-06-20 13:00:19', 55.0000, 'USD', 1.00000000, 1, 152, 77, 23, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:11', '2022-02-22 11:29:11', NULL),
(65, 1, 'income', '2023-04-23 02:52:22', 158.3900, 'USD', 1.00000000, 1, 157, 24, 72, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(66, 1, 'income', '2024-09-09 06:57:14', 283.0000, 'USD', 1.00000000, 1, 158, 81, 3, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(67, 1, 'income', '2024-11-11 01:01:08', 435.6600, 'USD', 1.00000000, 1, 160, 37, 3, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:12', '2022-02-22 11:29:12', NULL),
(68, 1, 'income', '2023-12-17 16:10:58', 127.0000, 'USD', 1.00000000, 1, 166, 6, 30, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(69, 1, 'income', '2024-09-30 16:03:23', 422.5000, 'USD', 1.00000000, 1, 169, 70, 82, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(70, 1, 'income', '2022-10-09 21:12:15', 105.0000, 'USD', 1.00000000, 1, 170, 55, 103, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(71, 1, 'income', '2024-01-06 23:44:29', 170.7700, 'USD', 1.00000000, 1, 171, 24, 62, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:13', '2022-02-22 11:29:13', NULL),
(72, 1, 'income', '2023-01-31 20:42:55', 760.2800, 'USD', 1.00000000, 1, 174, 55, 27, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(73, 1, 'income', '2023-06-30 22:50:44', 101.9600, 'USD', 1.00000000, 1, 177, 67, 86, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(74, 1, 'income', '2025-04-14 17:02:31', 185.0000, 'USD', 1.00000000, 1, 179, 6, 2, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(75, 1, 'income', '2022-07-30 10:34:53', 394.3100, 'USD', 1.00000000, 1, 181, 37, 9, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(76, 1, 'income', '2022-11-25 06:50:44', 103.0000, 'USD', 1.00000000, 1, 182, 37, 30, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:14', '2022-02-22 11:29:14', NULL),
(77, 1, 'income', '2022-12-30 06:32:29', 694.6200, 'USD', 1.00000000, 1, 183, 6, 92, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(78, 1, 'income', '2022-05-11 05:30:07', 14.0000, 'USD', 1.00000000, 1, 184, 67, 6, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(79, 1, 'income', '2024-01-27 00:28:26', 327.7700, 'USD', 1.00000000, 1, 185, 55, 90, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(80, 1, 'income', '2023-10-11 20:01:23', 108.0000, 'USD', 1.00000000, 1, 186, 2, 77, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(81, 1, 'income', '2025-02-02 11:25:14', 942.9100, 'USD', 1.00000000, 1, 190, 67, 3, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:15', '2022-02-22 11:29:15', NULL),
(82, 1, 'income', '2025-04-01 23:50:01', 213.0000, 'USD', 1.00000000, 1, 198, 2, 6, NULL, 'offline-payments.cash.1', NULL, 0, 'core::console', NULL, 0, '2022-02-22 11:29:16', '2022-02-22 11:29:16', NULL),
(83, 1, 'expense', '2022-03-06 19:08:56', 1.2500, 'USD', 1.00000000, 1, NULL, 39, 16, 'Voluptatum proident', 'offline-payments.cash.1', 'Sunt pariatur Paria', 0, 'core::ui', 1, 0, '2022-03-06 13:08:56', '2022-03-06 13:08:56', NULL),
(84, 1, 'expense', '2022-03-31 18:28:21', 34326.4600, 'GBP', 1.60000000, 7, NULL, 38, 41, 'Voluptas aute rerum', 'offline-payments.cash.1', 'Sunt consequatur r', 0, 'core::ui', 1, 0, '2022-04-30 12:28:21', '2022-04-30 12:28:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_transfers`
--

CREATE TABLE `p9k_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `expense_transaction_id` int(11) NOT NULL,
  `income_transaction_id` int(11) NOT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_users`
--

CREATE TABLE `p9k_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `last_logged_in_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(191) NOT NULL DEFAULT 'en-GB',
  `landing_page` varchar(70) DEFAULT 'dashboard',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_users`
--

INSERT INTO `p9k_users` (`id`, `name`, `email`, `password`, `remember_token`, `last_logged_in_at`, `locale`, `landing_page`, `enabled`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'admin@example.com', '$2y$10$vKPUuqo5OdnCzFNEIgV3rel3t74loVwcyYMi.rKoWu/pZZvcens5S', 'lWqXzKRqE0wgxXyItX1esDazXDB3IwIV9PkhwkEy2yRWFXLcnNTA0xQOx5Ip', '2022-07-03 11:02:52', 'en-GB', 'dashboard', 1, 'core::console', NULL, '2022-02-22 11:27:11', '2022-07-03 11:02:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p9k_user_companies`
--

CREATE TABLE `p9k_user_companies` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_user_companies`
--

INSERT INTO `p9k_user_companies` (`user_id`, `company_id`, `user_type`) VALUES
(1, 1, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_user_dashboards`
--

CREATE TABLE `p9k_user_dashboards` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `dashboard_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_user_dashboards`
--

INSERT INTO `p9k_user_dashboards` (`user_id`, `dashboard_id`, `user_type`) VALUES
(1, 1, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_user_permissions`
--

CREATE TABLE `p9k_user_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p9k_user_roles`
--

CREATE TABLE `p9k_user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_user_roles`
--

INSERT INTO `p9k_user_roles` (`user_id`, `role_id`, `user_type`) VALUES
(1, 1, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `p9k_widgets`
--

CREATE TABLE `p9k_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `dashboard_id` int(11) NOT NULL,
  `class` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `settings` text DEFAULT NULL,
  `created_from` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p9k_widgets`
--

INSERT INTO `p9k_widgets` (`id`, `company_id`, `dashboard_id`, `class`, `name`, `sort`, `settings`, `created_from`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'App\\Widgets\\TotalIncome', 'Total Income', 1, '{\"width\":\"col-md-6\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-03-07 05:34:10', NULL),
(2, 1, 1, 'App\\Widgets\\TotalExpenses', 'Total Expenses', 2, '{\"width\":\"col-md-4\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL),
(3, 1, 1, 'App\\Widgets\\TotalProfit', 'Total Profit', 3, '{\"width\":\"col-md-4\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL),
(4, 1, 1, 'App\\Widgets\\CashFlow', 'Cash Flow', 4, '{\"width\":\"col-md-12\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL),
(5, 1, 1, 'App\\Widgets\\IncomeByCategory', 'Income By Category', 5, '{\"width\":\"col-md-6\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL),
(6, 1, 1, 'App\\Widgets\\ExpensesByCategory', 'Expenses By Category', 6, '{\"width\":\"col-md-6\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL),
(7, 1, 1, 'App\\Widgets\\AccountBalance', 'Account Balance', 7, '{\"width\":\"col-md-4\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL),
(8, 1, 1, 'App\\Widgets\\LatestIncome', 'Latest Income', 8, '{\"width\":\"col-md-4\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL),
(9, 1, 1, 'App\\Widgets\\LatestExpenses', 'Latest Expenses', 9, '{\"width\":\"col-md-4\"}', 'core::console', NULL, '2022-02-22 11:27:11', '2022-02-22 11:27:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p9k_accounts`
--
ALTER TABLE `p9k_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_accounts_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_bills`
--
ALTER TABLE `p9k_bills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_bills_company_id_bill_number_deleted_at_unique` (`company_id`,`bill_number`,`deleted_at`),
  ADD KEY `p9k_bills_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_bill_histories`
--
ALTER TABLE `p9k_bill_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_bill_histories_company_id_index` (`company_id`),
  ADD KEY `p9k_bill_histories_bill_id_index` (`bill_id`);

--
-- Indexes for table `p9k_bill_items`
--
ALTER TABLE `p9k_bill_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_bill_items_company_id_index` (`company_id`),
  ADD KEY `p9k_bill_items_bill_id_index` (`bill_id`);

--
-- Indexes for table `p9k_bill_item_taxes`
--
ALTER TABLE `p9k_bill_item_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_bill_item_taxes_company_id_index` (`company_id`),
  ADD KEY `p9k_bill_item_taxes_bill_id_index` (`bill_id`);

--
-- Indexes for table `p9k_bill_totals`
--
ALTER TABLE `p9k_bill_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_bill_totals_company_id_index` (`company_id`),
  ADD KEY `p9k_bill_totals_bill_id_index` (`bill_id`);

--
-- Indexes for table `p9k_categories`
--
ALTER TABLE `p9k_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_categories_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_companies`
--
ALTER TABLE `p9k_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p9k_contacts`
--
ALTER TABLE `p9k_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_contacts_company_id_type_email_deleted_at_unique` (`company_id`,`type`,`email`,`deleted_at`),
  ADD KEY `p9k_contacts_company_id_type_index` (`company_id`,`type`);

--
-- Indexes for table `p9k_currencies`
--
ALTER TABLE `p9k_currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_currencies_company_id_code_deleted_at_unique` (`company_id`,`code`,`deleted_at`),
  ADD KEY `p9k_currencies_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_dashboards`
--
ALTER TABLE `p9k_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_dashboards_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_documents`
--
ALTER TABLE `p9k_documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_documents_document_number_deleted_at_company_id_type_unique` (`document_number`,`deleted_at`,`company_id`,`type`),
  ADD KEY `p9k_documents_company_id_index` (`company_id`),
  ADD KEY `p9k_documents_type_index` (`type`);

--
-- Indexes for table `p9k_document_histories`
--
ALTER TABLE `p9k_document_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_document_histories_company_id_index` (`company_id`),
  ADD KEY `p9k_document_histories_type_index` (`type`),
  ADD KEY `p9k_document_histories_document_id_index` (`document_id`);

--
-- Indexes for table `p9k_document_items`
--
ALTER TABLE `p9k_document_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_document_items_company_id_index` (`company_id`),
  ADD KEY `p9k_document_items_type_index` (`type`),
  ADD KEY `p9k_document_items_document_id_index` (`document_id`);

--
-- Indexes for table `p9k_document_item_taxes`
--
ALTER TABLE `p9k_document_item_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_document_item_taxes_company_id_index` (`company_id`),
  ADD KEY `p9k_document_item_taxes_type_index` (`type`),
  ADD KEY `p9k_document_item_taxes_document_id_index` (`document_id`);

--
-- Indexes for table `p9k_document_totals`
--
ALTER TABLE `p9k_document_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_document_totals_company_id_index` (`company_id`),
  ADD KEY `p9k_document_totals_type_index` (`type`),
  ADD KEY `p9k_document_totals_document_id_index` (`document_id`);

--
-- Indexes for table `p9k_email_templates`
--
ALTER TABLE `p9k_email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_email_templates_company_id_alias_deleted_at_unique` (`company_id`,`alias`,`deleted_at`),
  ADD KEY `p9k_email_templates_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_failed_jobs`
--
ALTER TABLE `p9k_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `p9k_firewall_ips`
--
ALTER TABLE `p9k_firewall_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_firewall_ips_ip_deleted_at_unique` (`ip`,`deleted_at`),
  ADD KEY `p9k_firewall_ips_ip_index` (`ip`);

--
-- Indexes for table `p9k_firewall_logs`
--
ALTER TABLE `p9k_firewall_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_firewall_logs_ip_index` (`ip`);

--
-- Indexes for table `p9k_invoices`
--
ALTER TABLE `p9k_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_invoices_company_id_invoice_number_deleted_at_unique` (`company_id`,`invoice_number`,`deleted_at`),
  ADD KEY `p9k_invoices_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_invoice_histories`
--
ALTER TABLE `p9k_invoice_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_invoice_histories_company_id_index` (`company_id`),
  ADD KEY `p9k_invoice_histories_invoice_id_index` (`invoice_id`);

--
-- Indexes for table `p9k_invoice_items`
--
ALTER TABLE `p9k_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_invoice_items_company_id_index` (`company_id`),
  ADD KEY `p9k_invoice_items_invoice_id_index` (`invoice_id`);

--
-- Indexes for table `p9k_invoice_item_taxes`
--
ALTER TABLE `p9k_invoice_item_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_invoice_item_taxes_company_id_index` (`company_id`),
  ADD KEY `p9k_invoice_item_taxes_invoice_id_index` (`invoice_id`);

--
-- Indexes for table `p9k_invoice_totals`
--
ALTER TABLE `p9k_invoice_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_invoice_totals_company_id_index` (`company_id`),
  ADD KEY `p9k_invoice_totals_invoice_id_index` (`invoice_id`);

--
-- Indexes for table `p9k_items`
--
ALTER TABLE `p9k_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_items_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_item_taxes`
--
ALTER TABLE `p9k_item_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_item_taxes_company_id_item_id_index` (`company_id`,`item_id`);

--
-- Indexes for table `p9k_jobs`
--
ALTER TABLE `p9k_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `p9k_media`
--
ALTER TABLE `p9k_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_media_disk_directory_filename_extension_unique` (`disk`,`directory`,`filename`,`extension`),
  ADD UNIQUE KEY `p9k_media_disk_directory_filename_extension_deleted_at_unique` (`disk`,`directory`,`filename`,`extension`,`deleted_at`),
  ADD KEY `p9k_media_aggregate_type_index` (`aggregate_type`),
  ADD KEY `p9k_media_disk_directory_index` (`disk`,`directory`),
  ADD KEY `original_media_id` (`original_media_id`),
  ADD KEY `p9k_media_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_mediables`
--
ALTER TABLE `p9k_mediables`
  ADD PRIMARY KEY (`media_id`,`mediable_type`,`mediable_id`,`tag`),
  ADD KEY `p9k_mediables_mediable_id_mediable_type_index` (`mediable_id`,`mediable_type`),
  ADD KEY `p9k_mediables_tag_index` (`tag`),
  ADD KEY `p9k_mediables_order_index` (`order`),
  ADD KEY `p9k_mediables_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_migrations`
--
ALTER TABLE `p9k_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p9k_modules`
--
ALTER TABLE `p9k_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_modules_company_id_alias_deleted_at_unique` (`company_id`,`alias`,`deleted_at`),
  ADD KEY `p9k_modules_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_module_histories`
--
ALTER TABLE `p9k_module_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_module_histories_company_id_module_id_index` (`company_id`,`module_id`);

--
-- Indexes for table `p9k_notifications`
--
ALTER TABLE `p9k_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `p9k_password_resets`
--
ALTER TABLE `p9k_password_resets`
  ADD KEY `p9k_password_resets_email_index` (`email`);

--
-- Indexes for table `p9k_permissions`
--
ALTER TABLE `p9k_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_permissions_name_unique` (`name`);

--
-- Indexes for table `p9k_reconciliations`
--
ALTER TABLE `p9k_reconciliations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_reconciliations_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_recurring`
--
ALTER TABLE `p9k_recurring`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_recurring_recurable_type_recurable_id_index` (`recurable_type`,`recurable_id`),
  ADD KEY `p9k_recurring_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_reports`
--
ALTER TABLE `p9k_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_reports_company_id_index` (`company_id`),
  ADD KEY `p9k_reports_class_index` (`class`);

--
-- Indexes for table `p9k_roles`
--
ALTER TABLE `p9k_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_roles_name_unique` (`name`);

--
-- Indexes for table `p9k_role_permissions`
--
ALTER TABLE `p9k_role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `p9k_role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `p9k_sessions`
--
ALTER TABLE `p9k_sessions`
  ADD UNIQUE KEY `p9k_sessions_id_unique` (`id`);

--
-- Indexes for table `p9k_settings`
--
ALTER TABLE `p9k_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_settings_company_id_key_unique` (`company_id`,`key`),
  ADD KEY `p9k_settings_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_taxes`
--
ALTER TABLE `p9k_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_taxes_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_transactions`
--
ALTER TABLE `p9k_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_transactions_company_id_type_index` (`company_id`,`type`),
  ADD KEY `p9k_transactions_account_id_index` (`account_id`),
  ADD KEY `p9k_transactions_category_id_index` (`category_id`),
  ADD KEY `p9k_transactions_contact_id_index` (`contact_id`),
  ADD KEY `p9k_transactions_document_id_index` (`document_id`);

--
-- Indexes for table `p9k_transfers`
--
ALTER TABLE `p9k_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_transfers_company_id_index` (`company_id`);

--
-- Indexes for table `p9k_users`
--
ALTER TABLE `p9k_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p9k_users_email_deleted_at_unique` (`email`,`deleted_at`);

--
-- Indexes for table `p9k_user_companies`
--
ALTER TABLE `p9k_user_companies`
  ADD PRIMARY KEY (`user_id`,`company_id`,`user_type`);

--
-- Indexes for table `p9k_user_dashboards`
--
ALTER TABLE `p9k_user_dashboards`
  ADD PRIMARY KEY (`user_id`,`dashboard_id`,`user_type`);

--
-- Indexes for table `p9k_user_permissions`
--
ALTER TABLE `p9k_user_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `p9k_user_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `p9k_user_roles`
--
ALTER TABLE `p9k_user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `p9k_user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `p9k_widgets`
--
ALTER TABLE `p9k_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p9k_widgets_company_id_dashboard_id_index` (`company_id`,`dashboard_id`),
  ADD KEY `p9k_widgets_class_index` (`class`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `p9k_accounts`
--
ALTER TABLE `p9k_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `p9k_bills`
--
ALTER TABLE `p9k_bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_bill_histories`
--
ALTER TABLE `p9k_bill_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_bill_items`
--
ALTER TABLE `p9k_bill_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_bill_item_taxes`
--
ALTER TABLE `p9k_bill_item_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_bill_totals`
--
ALTER TABLE `p9k_bill_totals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_categories`
--
ALTER TABLE `p9k_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `p9k_companies`
--
ALTER TABLE `p9k_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `p9k_contacts`
--
ALTER TABLE `p9k_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `p9k_currencies`
--
ALTER TABLE `p9k_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `p9k_dashboards`
--
ALTER TABLE `p9k_dashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `p9k_documents`
--
ALTER TABLE `p9k_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `p9k_document_histories`
--
ALTER TABLE `p9k_document_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `p9k_document_items`
--
ALTER TABLE `p9k_document_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `p9k_document_item_taxes`
--
ALTER TABLE `p9k_document_item_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `p9k_document_totals`
--
ALTER TABLE `p9k_document_totals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

--
-- AUTO_INCREMENT for table `p9k_email_templates`
--
ALTER TABLE `p9k_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `p9k_failed_jobs`
--
ALTER TABLE `p9k_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_firewall_ips`
--
ALTER TABLE `p9k_firewall_ips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_firewall_logs`
--
ALTER TABLE `p9k_firewall_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `p9k_invoices`
--
ALTER TABLE `p9k_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_invoice_histories`
--
ALTER TABLE `p9k_invoice_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_invoice_items`
--
ALTER TABLE `p9k_invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_invoice_item_taxes`
--
ALTER TABLE `p9k_invoice_item_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_invoice_totals`
--
ALTER TABLE `p9k_invoice_totals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_items`
--
ALTER TABLE `p9k_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `p9k_item_taxes`
--
ALTER TABLE `p9k_item_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p9k_jobs`
--
ALTER TABLE `p9k_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_media`
--
ALTER TABLE `p9k_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `p9k_migrations`
--
ALTER TABLE `p9k_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `p9k_modules`
--
ALTER TABLE `p9k_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p9k_module_histories`
--
ALTER TABLE `p9k_module_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p9k_permissions`
--
ALTER TABLE `p9k_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `p9k_reconciliations`
--
ALTER TABLE `p9k_reconciliations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `p9k_recurring`
--
ALTER TABLE `p9k_recurring`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `p9k_reports`
--
ALTER TABLE `p9k_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `p9k_roles`
--
ALTER TABLE `p9k_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `p9k_settings`
--
ALTER TABLE `p9k_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `p9k_taxes`
--
ALTER TABLE `p9k_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `p9k_transactions`
--
ALTER TABLE `p9k_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `p9k_transfers`
--
ALTER TABLE `p9k_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p9k_users`
--
ALTER TABLE `p9k_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `p9k_widgets`
--
ALTER TABLE `p9k_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p9k_media`
--
ALTER TABLE `p9k_media`
  ADD CONSTRAINT `original_media_id` FOREIGN KEY (`original_media_id`) REFERENCES `p9k_media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `p9k_mediables`
--
ALTER TABLE `p9k_mediables`
  ADD CONSTRAINT `p9k_mediables_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `p9k_media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `p9k_role_permissions`
--
ALTER TABLE `p9k_role_permissions`
  ADD CONSTRAINT `p9k_role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `p9k_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p9k_role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `p9k_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `p9k_user_permissions`
--
ALTER TABLE `p9k_user_permissions`
  ADD CONSTRAINT `p9k_user_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `p9k_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `p9k_user_roles`
--
ALTER TABLE `p9k_user_roles`
  ADD CONSTRAINT `p9k_user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `p9k_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
