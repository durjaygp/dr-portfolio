-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2025 at 10:13 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferences` json DEFAULT NULL,
  `patient_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency` tinyint(1) NOT NULL DEFAULT '0',
  `referral` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `full_name`, `email`, `phone`, `preferences`, `patient_type`, `service`, `emergency`, `referral`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Dolan Hopkins', 'wuratyge@mailinator.com', '+1 (359) 893-9162', '[\"Tuesday\", \"Monday\"]', 'New Patient', 'Cosmetic Dentistry', 1, 'Friend Referral', 'Reprehenderit repreh', '2025-09-11 15:45:57', '2025-09-11 15:45:57'),
(2, 'Malachi Daniel', 'tytibosuc@mailinator.com', '+1 (402) 406-8906', '[\"Friday\"]', 'New Patient', 'Extractions', 1, 'Driving By', 'Et odit obcaecati qu', '2025-09-11 15:47:34', '2025-09-11 15:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `main_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `seo_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `slug`, `image`, `main_content`, `description`, `user_id`, `category_id`, `seo_description`, `seo_tags`, `seo_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rerum voluptatem nihil enim.', 'sunt-odit-libero-culpa-quidem-vel-similique-et-alias', 'uploads/images/8.jpg', '<p>Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.Explicabo odio porro quisquam maiores eligendi.</p>', 'Consequatur sit est nihil qui mollitia dolore.', 1, 3, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-10-16 15:51:05'),
(2, 'Ex consectetur quas voluptatum eius beatae necessitatibus.', 'dolor-fugiat-sint-odit-ratione-aut-minima', 'uploads/images/2.jpg', 'Suscipit ut totam perferendis rerum qui.', 'Assumenda reiciendis repudiandae laborum culpa.', 1, 7, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(3, 'Recusandae natus autem temporibus.', 'temporibus-tempore-doloremque-laudantium-unde', 'uploads/images/7.jpg', 'Non et exercitationem quia aliquam illum nam id minus.', 'Impedit sit corporis fugiat ipsam qui.', 1, 5, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(4, 'Architecto doloribus laudantium est.', 'est-non-dignissimos-facilis-voluptas-ut-iste-quo', 'uploads/images/9.jpg', 'In eligendi voluptatibus eligendi et et necessitatibus repellendus.', 'Ipsa provident dolorem modi quo quis natus.', 1, 1, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(5, 'Dolores facere animi numquam pariatur.', 'nisi-aliquid-maxime-fugit-voluptatem-laborum-fugiat', 'uploads/images/3.jpg', 'Molestiae atque dignissimos possimus sint.', 'Dolore animi impedit eligendi quisquam ut omnis illo.', 1, 6, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(6, 'Nam laudantium at ipsam assumenda laudantium perferendis et.', 'nobis-qui-suscipit-qui-enim-nam', 'uploads/images/6.jpg', 'Placeat autem architecto rem velit hic voluptatem voluptatum.', 'Quo ea possimus tempore maiores.', 1, 9, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(7, 'Provident voluptatum qui doloremque veniam quaerat.', 'rerum-libero-deleniti-asperiores-quam-possimus-sit', 'uploads/images/5.jpg', 'Qui voluptas qui quo suscipit aut non dolor.', 'Inventore molestias explicabo dicta expedita ullam voluptatem voluptas.', 1, 2, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(8, 'Qui ipsa aspernatur ut excepturi velit magni.', 'consequatur-velit-nesciunt-voluptatum-delectus-totam-in', 'uploads/images/6.jpg', 'Sit cum accusamus dolores necessitatibus.', 'Eos et deleniti dolorem sint occaecati.', 1, 9, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(9, 'Numquam est vero sit nihil soluta.', 'quis-praesentium-occaecati-quo-at-nostrum', 'uploads/images/3.jpg', 'Consequuntur repellendus sint et.', 'Illum architecto aspernatur est suscipit.', 1, 1, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(10, 'Est sint amet sapiente quidem.', 'earum-inventore-eum-similique-vel-tempora-eum-voluptatum', 'uploads/images/5.jpg', 'Aut est esse harum maiores dolorem et.', 'Nisi velit corporis deserunt qui.', 1, 6, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(11, 'Voluptas voluptas beatae et et.', 'praesentium-nisi-amet-omnis-quod', 'uploads/images/7.jpg', 'Reprehenderit quibusdam porro occaecati rem neque.', 'Quis rerum labore doloribus qui sed itaque.', 1, 4, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(12, 'Non perspiciatis praesentium perspiciatis maiores vero.', 'dolor-non-quibusdam-odio-necessitatibus-et-reiciendis', 'uploads/images/10.jpg', 'Cumque labore enim ex pariatur temporibus.', 'At eos est est ipsum sapiente incidunt delectus.', 1, 7, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(13, 'Necessitatibus sit nostrum laboriosam quas.', 'id-esse-atque-et-eligendi', 'uploads/images/7.jpg', 'Quae in dolores reprehenderit voluptatem sed ut.', 'Hic ullam aut expedita et voluptatum fugiat beatae.', 1, 7, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(14, 'Deserunt eos animi et et.', 'velit-inventore-ab-consectetur-alias-ut-reprehenderit-voluptas', 'uploads/images/9.jpg', 'Qui porro molestiae fugit.', 'Reprehenderit laboriosam aut a sit.', 1, 10, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(15, 'Sit quas non voluptas perferendis dolorum blanditiis est eum.', 'eveniet-quia-aspernatur-sit-placeat', 'uploads/images/8.jpg', 'Expedita eveniet voluptatem qui excepturi velit.', 'Iusto sit voluptate pariatur ut odit voluptas.', 1, 4, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(16, 'Odio accusantium non natus quaerat eligendi.', 'amet-mollitia-id-eaque-excepturi-ut-id-quia', 'uploads/images/8.jpg', 'Magnam neque corporis occaecati et velit dignissimos id.', 'Nostrum enim et aut sit dolore.', 1, 7, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(17, 'Ea est dolorum reprehenderit perspiciatis dolores.', 'est-nisi-reprehenderit-alias-et-aut', 'uploads/images/4.jpg', 'Voluptatem qui placeat nihil voluptatem ex dolorem.', 'Libero eius aut eligendi quia.', 1, 5, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(18, 'Nihil ab illum ducimus.', 'quaerat-illum-quos-dolorum-et-quos-ut', 'uploads/images/1.jpg', 'Maxime enim id possimus quibusdam voluptas tenetur.', 'Fugiat aut qui est dicta.', 1, 5, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(19, 'Ducimus esse exercitationem id labore.', 'quasi-maiores-aliquid-ad-reprehenderit', 'uploads/images/1.jpg', 'Eum sapiente sequi porro dolor.', 'Aut est totam at est.', 1, 1, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(20, 'Quis consequatur dolores voluptas earum iste quidem laborum.', 'ab-ad-animi-et-voluptates-qui-pariatur', 'uploads/images/10.jpg', 'Fugiat rem sint qui.', 'Ut placeat ea neque possimus omnis.', 1, 4, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(21, 'Dolore unde quidem suscipit quo minima libero vel doloribus.', 'aut-quam-ducimus-exercitationem-debitis-ea-atque-nisi-corrupti', 'uploads/images/9.jpg', 'Atque molestiae suscipit et in aut fuga impedit.', 'Aut sed neque quia provident animi autem sequi.', 1, 1, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(22, 'Minus porro soluta tempora debitis rem accusantium eum.', 'velit-eos-sunt-doloremque', 'uploads/images/2.jpg', 'Fugit non facere blanditiis quo optio.', 'Animi nihil veritatis ut eum est.', 1, 3, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(23, 'In nisi ut saepe sequi iure.', 'fuga-quae-qui-aut-cum-error-et-quae-quo', 'uploads/images/1.jpg', 'Quis in ut eum error possimus voluptates harum.', 'Deserunt qui distinctio dolorem.', 1, 6, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(24, 'Minima placeat aliquam amet molestiae non et praesentium.', 'exercitationem-voluptatum-nemo-dolores-omnis', 'uploads/images/6.jpg', 'Atque nihil aliquam corrupti et.', 'Natus occaecati deleniti non ea.', 1, 10, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(25, 'A quia est corporis hic.', 'sequi-aut-recusandae-cupiditate-animi', 'uploads/images/11.jpg', 'Voluptas est sed illum accusamus accusantium magni soluta.', 'Consequuntur sint velit perspiciatis et quis soluta natus itaque.', 1, 9, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(26, 'Corporis perferendis qui consequatur exercitationem labore facilis amet.', 'est-et-exercitationem-illum', 'uploads/images/2.jpg', 'Illo aut maxime quam reprehenderit est occaecati.', 'Ut pariatur est itaque id quas laborum nam.', 1, 4, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(27, 'Nostrum dolorem quam commodi in.', 'ad-molestias-perspiciatis-tempore-et-aut', 'uploads/images/6.jpg', 'Aspernatur voluptatem placeat corrupti doloremque.', 'Qui ullam ratione distinctio doloribus est.', 1, 10, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(28, 'Eum voluptate ut similique doloribus consequatur.', 'repellendus-tenetur-vero-pariatur-molestiae', 'uploads/images/1.jpg', 'Beatae enim nemo tempora est ea odit.', 'Fuga odio pariatur molestias nostrum.', 1, 10, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(29, 'Sunt deserunt saepe enim.', 'officia-aut-officia-officiis-cum', 'uploads/images/7.jpg', 'Maxime ut perferendis maiores labore tenetur dignissimos.', 'Rerum exercitationem nulla odio dolor tempore.', 1, 6, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24'),
(30, 'Magni magnam non sit sapiente.', 'voluptatem-veniam-voluptas-neque-reiciendis-earum', 'uploads/images/8.jpg', 'Laboriosam consequatur sed dolores nihil qui maxime.', 'Esse aliquid omnis exercitationem eos aspernatur dolor quidem.', 1, 8, 'SEO description goes here', 'SEO tags go here', 'SEO keywords go here', 1, '2025-09-06 00:31:24', '2025-09-06 00:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gum Care', 'gum-care', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(2, 'Teeth Whitening', 'teeth-whitening', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(3, 'Dental Implants', 'dental-implants', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(4, 'Dental Surgery', 'dental-surgery', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(5, 'Orthodontics', 'orthodontics', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(6, 'Pediatric Dentistry', 'pediatric-dentistry', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(7, 'Oral Hygiene', 'oral-hygiene', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(8, 'Cosmetic Dentistry', 'cosmetic-dentistry', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(9, 'Root Canal Treatment', 'root-canal-treatment', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55'),
(10, 'Preventive Dentistry', 'preventive-dentistry', NULL, 1, '2025-09-06 00:30:55', '2025-09-06 00:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `breezy_sessions`
--

CREATE TABLE `breezy_sessions` (
  `id` bigint UNSIGNED NOT NULL,
  `authenticatable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint UNSIGNED NOT NULL,
  `panel_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expires_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('17ba0791499db908433b80f37c5fbc89b870084b', 'i:1;', 1761211605),
('17ba0791499db908433b80f37c5fbc89b870084b:timer', 'i:1761211605;', 1761211605),
('homepage', 'O:26:\"App\\Models\\HomepageSetting\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:17:\"homepage_settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:77:{s:2:\"id\";i:1;s:12:\"header_title\";s:55:\"Exceptional dental care for every stage of your journey\";s:12:\"header_video\";s:38:\"uploads/01K4QZN08NMCSJ7TTP7XN87M41.mp4\";s:16:\"header_title_two\";s:27:\"Mon to Sat 9:00AM to 9:00PM\";s:19:\"header_phone_number\";s:17:\"(+01) 987 828 745\";s:18:\"header_title_three\";s:20:\"appointment@mail.com\";s:17:\"header_title_four\";s:26:\"Physical Commodity Trading\";s:24:\"header_second_line_title\";N;s:22:\"header_small_paragraph\";s:94:\"We are committed to providing top-notch dental care in a comfortable and friendly environment.\";s:13:\"header_button\";s:16:\"book appointment\";s:17:\"header_button_url\";s:5:\"/book\";s:18:\"header_json_button\";s:72:\"[{\"url\": \"#FastFacts\", \"text\": \"book appointment\", \"color\": \"gray-500\"}]\";s:12:\"target_roles\";s:430:\"[{\"type\": \"list\", \"role_name\": \"Logistics / Operations Coordinator\"}, {\"type\": \"list\", \"role_name\": \"Trader Assistant / Desk Support\"}, {\"type\": \"list\", \"role_name\": \"Export Documentation (B/L, L/C, SOF)\"}, {\"type\": \"button\", \"role_name\": \"FOB • CIF • CFR\"}, {\"type\": \"button\", \"role_name\": \"Letters of Credit\"}, {\"type\": \"button\", \"role_name\": \"Laytime & Demurrage\"}, {\"type\": \"button\", \"role_name\": \"Bulk & Container Flow\"}]\";s:12:\"header_image\";N;s:11:\"about_title\";s:64:\"The evolution of our company and the people who made It possible\";s:17:\"about_description\";s:182:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic and specialist dental treatments With dental practice throughout the world.\";s:12:\"about_button\";s:9:\"Read More\";s:16:\"about_button_url\";s:6:\"/about\";s:11:\"about_image\";s:38:\"uploads/01K4R07Q2Y8326F6B06G5R3QE2.jpg\";s:13:\"about_us_list\";s:146:\"[{\"list\": \"Experienced Team\"}, {\"list\": \"Emergency Dental Services\"}, {\"list\": \"State-of-the-Art Technology\"}, {\"list\": \"Comprehensive Services\"}]\";s:10:\"experience\";s:2:\"20\";s:8:\"patients\";s:4:\"5000\";s:9:\"treatment\";s:3:\"986\";s:12:\"total_review\";s:4:\"1250\";s:13:\"working_hours\";s:223:\"[{\"day\": \"Monday\", \"hours\": \"8 AM - 5 PM\"}, {\"day\": \"Tuesday\", \"hours\": \"10 AM - 7 PM\"}, {\"day\": \"Wednesday\", \"hours\": \"8 AM - 5 PM\"}, {\"day\": \"Thursday\", \"hours\": \"10 AM - 7 PM\"}, {\"day\": \"Friday\", \"hours\": \"8 AM - 3 PM\"}]\";s:10:\"created_at\";N;s:8:\"facebook\";s:4:\"ggrg\";s:8:\"whatsapp\";s:2:\"gg\";s:7:\"youtube\";s:2:\"gg\";s:9:\"instagram\";N;s:6:\"tiktok\";s:5:\"dgdgd\";s:8:\"telegram\";s:5:\"sdfdf\";s:8:\"snapchat\";N;s:7:\"twitter\";N;s:9:\"pinterest\";s:3:\"gfs\";s:10:\"updated_at\";s:19:\"2025-10-16 23:09:28\";s:12:\"about_status\";i:1;s:13:\"process_title\";s:11:\"our process\";s:14:\"process_header\";s:47:\"A Step by Step Guide to Our Dental Care Process\";s:17:\"process_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:14:\"process_button\";s:12:\"get in touch\";s:18:\"process_button_url\";s:1:\"#\";s:12:\"process_step\";s:594:\"[{\"icon\": \"uploads/01K6G53ST17CZCR04P7ADTHNJ6.svg\", \"title\": \"initial consultation\", \"paragraph\": \"Your journey begins with an in-depth consultation. We\'ll listen to your concerns, discuss your goals.\"}, {\"icon\": \"uploads/01K6G53ST9TE27ZDNK7775927X.svg\", \"title\": \"treatment by experts\", \"paragraph\": \"Once the plan is finalized, we\'ll proceed with your treatment. Our expert team will guide you.\"}, {\"icon\": \"uploads/01K6G53STJFA1DHGW3WF59QYM2.svg\", \"title\": \"follow-up care\", \"paragraph\": \"After your treatment, we\'ll schedule any necessary follow-up appointments to monitor your progress.\"}]\";s:14:\"process_status\";i:1;s:12:\"choose_title\";s:13:\"why Choose Us\";s:13:\"choose_header\";s:46:\"Exceptional dental care\ntailored to your needs\";s:16:\"choose_paragraph\";s:351:\"We take the time to understand your individual needs and goals, creating customized treatment plans to help you achieve optimal oral health.\nwe believe that your dental experience should be more than just a routine visit. Our goal is to provide comprehensive, personalized care in a welcoming environment, where your comfort and well-being come first.\";s:14:\"choose_options\";s:488:\"[{\"icon\": \"uploads/01K6G4R91DVZWR1QPWNSZXB5XE.svg\", \"title\": \"personalized care for patient\", \"paragraph\": \"We understand that each patient is unique and listen to concerns.\"}, {\"icon\": \"uploads/01K6G4R93AZ3VN82T0QA9SAQSP.svg\", \"title\": \"cutting edge technology\", \"paragraph\": \"We invest in the latest dental technology to give you.\"}, {\"icon\": \"uploads/01K6G4T2796AVJGZB7EEZXE8Q3.svg\", \"title\": \"family friendly\", \"paragraph\": \"No matter your age or dental needs, we are here to help.\"}]\";s:13:\"choose_status\";i:1;s:18:\"testimonials_title\";s:12:\"testimonials\";s:19:\"testimonials_header\";s:30:\"Listen from our happy patients\";s:22:\"testimonials_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:19:\"testimonials_status\";i:1;s:13:\"provide_title\";s:15:\"what we provide\";s:14:\"provide_header\";s:72:\"Experience comfort, technology, and care at our advanced dental facility\";s:17:\"provide_paragraph\";s:260:\"We believe that a welcoming, state-of-the-art facility is key to delivering exceptional dental care. Our practice is designed not only to provide cutting-edge treatments but also to create an environment where patients feel relaxed and confident in their care.\";s:18:\"provide_video_link\";s:43:\"https://www.youtube.com/watch?v=GodkRBghOsA\";s:19:\"provide_video_image\";N;s:15:\"provide_options\";s:475:\"[{\"title\": \"comfort & care\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}, {\"title\": \"advanced technology\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}, {\"title\": \"sterilization & safety\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}]\";s:14:\"provide_status\";i:1;s:10:\"team_title\";s:8:\"our team\";s:11:\"team_header\";s:34:\"Experienced and caring dental team\";s:14:\"team_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:11:\"team_status\";i:1;s:10:\"blog_title\";N;s:11:\"blog_header\";N;s:14:\"blog_paragraph\";N;s:11:\"blog_status\";N;s:13:\"contact_title\";s:10:\"contact us\";s:14:\"contact_header\";s:20:\"Get in touch with us\";s:17:\"contact_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:14:\"contact_status\";i:1;s:13:\"service_title\";s:11:\"Our Service\";s:17:\"service_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:14:\"service_status\";i:1;s:14:\"service_header\";s:32:\"Explore the solutions we provide\";s:13:\"hero_features\";s:231:\"[{\"image\": \"01K7QMJ55RZCHVAQ99CET3K0BC.svg\", \"title\": \"experience doctor\"}, {\"image\": \"01K7QMJ55ZXG88ET2RWNPV036H.svg\", \"title\": \"personalized care\"}, {\"image\": \"01K7QMJ5643NB8TD416S7Q5VQM.svg\", \"title\": \"flexible payment option\"}]\";}s:11:\"\0*\0original\";a:77:{s:2:\"id\";i:1;s:12:\"header_title\";s:55:\"Exceptional dental care for every stage of your journey\";s:12:\"header_video\";s:38:\"uploads/01K4QZN08NMCSJ7TTP7XN87M41.mp4\";s:16:\"header_title_two\";s:27:\"Mon to Sat 9:00AM to 9:00PM\";s:19:\"header_phone_number\";s:17:\"(+01) 987 828 745\";s:18:\"header_title_three\";s:20:\"appointment@mail.com\";s:17:\"header_title_four\";s:26:\"Physical Commodity Trading\";s:24:\"header_second_line_title\";N;s:22:\"header_small_paragraph\";s:94:\"We are committed to providing top-notch dental care in a comfortable and friendly environment.\";s:13:\"header_button\";s:16:\"book appointment\";s:17:\"header_button_url\";s:5:\"/book\";s:18:\"header_json_button\";s:72:\"[{\"url\": \"#FastFacts\", \"text\": \"book appointment\", \"color\": \"gray-500\"}]\";s:12:\"target_roles\";s:430:\"[{\"type\": \"list\", \"role_name\": \"Logistics / Operations Coordinator\"}, {\"type\": \"list\", \"role_name\": \"Trader Assistant / Desk Support\"}, {\"type\": \"list\", \"role_name\": \"Export Documentation (B/L, L/C, SOF)\"}, {\"type\": \"button\", \"role_name\": \"FOB • CIF • CFR\"}, {\"type\": \"button\", \"role_name\": \"Letters of Credit\"}, {\"type\": \"button\", \"role_name\": \"Laytime & Demurrage\"}, {\"type\": \"button\", \"role_name\": \"Bulk & Container Flow\"}]\";s:12:\"header_image\";N;s:11:\"about_title\";s:64:\"The evolution of our company and the people who made It possible\";s:17:\"about_description\";s:182:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic and specialist dental treatments With dental practice throughout the world.\";s:12:\"about_button\";s:9:\"Read More\";s:16:\"about_button_url\";s:6:\"/about\";s:11:\"about_image\";s:38:\"uploads/01K4R07Q2Y8326F6B06G5R3QE2.jpg\";s:13:\"about_us_list\";s:146:\"[{\"list\": \"Experienced Team\"}, {\"list\": \"Emergency Dental Services\"}, {\"list\": \"State-of-the-Art Technology\"}, {\"list\": \"Comprehensive Services\"}]\";s:10:\"experience\";s:2:\"20\";s:8:\"patients\";s:4:\"5000\";s:9:\"treatment\";s:3:\"986\";s:12:\"total_review\";s:4:\"1250\";s:13:\"working_hours\";s:223:\"[{\"day\": \"Monday\", \"hours\": \"8 AM - 5 PM\"}, {\"day\": \"Tuesday\", \"hours\": \"10 AM - 7 PM\"}, {\"day\": \"Wednesday\", \"hours\": \"8 AM - 5 PM\"}, {\"day\": \"Thursday\", \"hours\": \"10 AM - 7 PM\"}, {\"day\": \"Friday\", \"hours\": \"8 AM - 3 PM\"}]\";s:10:\"created_at\";N;s:8:\"facebook\";s:4:\"ggrg\";s:8:\"whatsapp\";s:2:\"gg\";s:7:\"youtube\";s:2:\"gg\";s:9:\"instagram\";N;s:6:\"tiktok\";s:5:\"dgdgd\";s:8:\"telegram\";s:5:\"sdfdf\";s:8:\"snapchat\";N;s:7:\"twitter\";N;s:9:\"pinterest\";s:3:\"gfs\";s:10:\"updated_at\";s:19:\"2025-10-16 23:09:28\";s:12:\"about_status\";i:1;s:13:\"process_title\";s:11:\"our process\";s:14:\"process_header\";s:47:\"A Step by Step Guide to Our Dental Care Process\";s:17:\"process_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:14:\"process_button\";s:12:\"get in touch\";s:18:\"process_button_url\";s:1:\"#\";s:12:\"process_step\";s:594:\"[{\"icon\": \"uploads/01K6G53ST17CZCR04P7ADTHNJ6.svg\", \"title\": \"initial consultation\", \"paragraph\": \"Your journey begins with an in-depth consultation. We\'ll listen to your concerns, discuss your goals.\"}, {\"icon\": \"uploads/01K6G53ST9TE27ZDNK7775927X.svg\", \"title\": \"treatment by experts\", \"paragraph\": \"Once the plan is finalized, we\'ll proceed with your treatment. Our expert team will guide you.\"}, {\"icon\": \"uploads/01K6G53STJFA1DHGW3WF59QYM2.svg\", \"title\": \"follow-up care\", \"paragraph\": \"After your treatment, we\'ll schedule any necessary follow-up appointments to monitor your progress.\"}]\";s:14:\"process_status\";i:1;s:12:\"choose_title\";s:13:\"why Choose Us\";s:13:\"choose_header\";s:46:\"Exceptional dental care\ntailored to your needs\";s:16:\"choose_paragraph\";s:351:\"We take the time to understand your individual needs and goals, creating customized treatment plans to help you achieve optimal oral health.\nwe believe that your dental experience should be more than just a routine visit. Our goal is to provide comprehensive, personalized care in a welcoming environment, where your comfort and well-being come first.\";s:14:\"choose_options\";s:488:\"[{\"icon\": \"uploads/01K6G4R91DVZWR1QPWNSZXB5XE.svg\", \"title\": \"personalized care for patient\", \"paragraph\": \"We understand that each patient is unique and listen to concerns.\"}, {\"icon\": \"uploads/01K6G4R93AZ3VN82T0QA9SAQSP.svg\", \"title\": \"cutting edge technology\", \"paragraph\": \"We invest in the latest dental technology to give you.\"}, {\"icon\": \"uploads/01K6G4T2796AVJGZB7EEZXE8Q3.svg\", \"title\": \"family friendly\", \"paragraph\": \"No matter your age or dental needs, we are here to help.\"}]\";s:13:\"choose_status\";i:1;s:18:\"testimonials_title\";s:12:\"testimonials\";s:19:\"testimonials_header\";s:30:\"Listen from our happy patients\";s:22:\"testimonials_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:19:\"testimonials_status\";i:1;s:13:\"provide_title\";s:15:\"what we provide\";s:14:\"provide_header\";s:72:\"Experience comfort, technology, and care at our advanced dental facility\";s:17:\"provide_paragraph\";s:260:\"We believe that a welcoming, state-of-the-art facility is key to delivering exceptional dental care. Our practice is designed not only to provide cutting-edge treatments but also to create an environment where patients feel relaxed and confident in their care.\";s:18:\"provide_video_link\";s:43:\"https://www.youtube.com/watch?v=GodkRBghOsA\";s:19:\"provide_video_image\";N;s:15:\"provide_options\";s:475:\"[{\"title\": \"comfort & care\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}, {\"title\": \"advanced technology\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}, {\"title\": \"sterilization & safety\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}]\";s:14:\"provide_status\";i:1;s:10:\"team_title\";s:8:\"our team\";s:11:\"team_header\";s:34:\"Experienced and caring dental team\";s:14:\"team_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:11:\"team_status\";i:1;s:10:\"blog_title\";N;s:11:\"blog_header\";N;s:14:\"blog_paragraph\";N;s:11:\"blog_status\";N;s:13:\"contact_title\";s:10:\"contact us\";s:14:\"contact_header\";s:20:\"Get in touch with us\";s:17:\"contact_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:14:\"contact_status\";i:1;s:13:\"service_title\";s:11:\"Our Service\";s:17:\"service_paragraph\";s:185:\"The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.\";s:14:\"service_status\";i:1;s:14:\"service_header\";s:32:\"Explore the solutions we provide\";s:13:\"hero_features\";s:231:\"[{\"image\": \"01K7QMJ55RZCHVAQ99CET3K0BC.svg\", \"title\": \"experience doctor\"}, {\"image\": \"01K7QMJ55ZXG88ET2RWNPV036H.svg\", \"title\": \"personalized care\"}, {\"image\": \"01K7QMJ5643NB8TD416S7Q5VQM.svg\", \"title\": \"flexible payment option\"}]\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:8:{s:18:\"header_json_button\";s:5:\"array\";s:12:\"target_roles\";s:5:\"array\";s:13:\"about_us_list\";s:5:\"array\";s:13:\"working_hours\";s:5:\"array\";s:12:\"process_step\";s:5:\"array\";s:14:\"choose_options\";s:5:\"array\";s:15:\"provide_options\";s:5:\"array\";s:13:\"hero_features\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}', 2076016171),
('livewire-rate-limiter:4aee96a03ab29b9b6e25e233be159eccf4bc336c', 'i:1;', 1760968171),
('livewire-rate-limiter:4aee96a03ab29b9b6e25e233be159eccf4bc336c:timer', 'i:1760968171;', 1760968171),
('livewire-rate-limiter:59d6ad626907b5a0341aba51c3754cd265bffec5', 'i:2;', 1761235653),
('livewire-rate-limiter:59d6ad626907b5a0341aba51c3754cd265bffec5:timer', 'i:1761235653;', 1761235653),
('livewire-rate-limiter:770cf5040bfee6ca1d894e406bc93202930915cc', 'i:1;', 1761176241),
('livewire-rate-limiter:770cf5040bfee6ca1d894e406bc93202930915cc:timer', 'i:1761176240;', 1761176240),
('menuServices', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:0;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:4:\"name\";s:31:\"Full Mouth Reconstruction hello\";s:4:\"slug\";s:25:\"full-mouth-reconstruction\";s:5:\"icons\";s:38:\"uploads/01K4SSXHSP69RK83HPATZRS77S.svg\";}s:11:\"\0*\0original\";a:3:{s:4:\"name\";s:31:\"Full Mouth Reconstruction hello\";s:4:\"slug\";s:25:\"full-mouth-reconstruction\";s:5:\"icons\";s:38:\"uploads/01K4SSXHSP69RK83HPATZRS77S.svg\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:1;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:4:\"name\";s:17:\"General Dentistry\";s:4:\"slug\";s:17:\"general-dentistry\";s:5:\"icons\";s:38:\"uploads/01K4X3KNV5WXXXVH2YJVBG77V5.svg\";}s:11:\"\0*\0original\";a:3:{s:4:\"name\";s:17:\"General Dentistry\";s:4:\"slug\";s:17:\"general-dentistry\";s:5:\"icons\";s:38:\"uploads/01K4X3KNV5WXXXVH2YJVBG77V5.svg\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:2;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:4:\"name\";s:14:\"Dental Checkup\";s:4:\"slug\";s:14:\"dental-checkup\";s:5:\"icons\";s:38:\"uploads/01K4X3S9NKHED7DH5G8BXDM6QZ.svg\";}s:11:\"\0*\0original\";a:3:{s:4:\"name\";s:14:\"Dental Checkup\";s:4:\"slug\";s:14:\"dental-checkup\";s:5:\"icons\";s:38:\"uploads/01K4X3S9NKHED7DH5G8BXDM6QZ.svg\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:3;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:4:\"name\";s:14:\"Dental Bridges\";s:4:\"slug\";s:14:\"dental-bridges\";s:5:\"icons\";s:38:\"uploads/01K4X40GNR7Y9R5TT940B2NR8H.svg\";}s:11:\"\0*\0original\";a:3:{s:4:\"name\";s:14:\"Dental Bridges\";s:4:\"slug\";s:14:\"dental-bridges\";s:5:\"icons\";s:38:\"uploads/01K4X40GNR7Y9R5TT940B2NR8H.svg\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:4;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:4:\"name\";s:29:\"Dentures and Partial Dentures\";s:4:\"slug\";s:29:\"dentures-and-partial-dentures\";s:5:\"icons\";s:38:\"uploads/01K4X49BHW8HC9K0071WBB3N9M.svg\";}s:11:\"\0*\0original\";a:3:{s:4:\"name\";s:29:\"Dentures and Partial Dentures\";s:4:\"slug\";s:29:\"dentures-and-partial-dentures\";s:5:\"icons\";s:38:\"uploads/01K4X49BHW8HC9K0071WBB3N9M.svg\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2075999278);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('navbar_data', 'a:3:{s:5:\"menus\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:6:{i:0;O:15:\"App\\Models\\Menu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:6;s:9:\"parent_id\";N;s:5:\"title\";s:4:\"Home\";s:3:\"url\";s:1:\"/\";s:4:\"icon\";N;s:4:\"type\";s:6:\"custom\";s:13:\"reference_ids\";N;s:5:\"order\";i:1;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 10:18:10\";s:10:\"updated_at\";s:19:\"2025-10-09 10:18:10\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:6;s:9:\"parent_id\";N;s:5:\"title\";s:4:\"Home\";s:3:\"url\";s:1:\"/\";s:4:\"icon\";N;s:4:\"type\";s:6:\"custom\";s:13:\"reference_ids\";N;s:5:\"order\";i:1;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 10:18:10\";s:10:\"updated_at\";s:19:\"2025-10-09 10:18:10\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"reference_ids\";s:5:\"array\";s:6:\"status\";s:7:\"boolean\";s:15:\"enable_livewire\";s:7:\"boolean\";s:11:\"is_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:1;O:15:\"App\\Models\\Menu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:2;s:9:\"parent_id\";N;s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:9:\"/about-us\";s:4:\"icon\";N;s:4:\"type\";s:6:\"custom\";s:13:\"reference_ids\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:25:17\";s:10:\"updated_at\";s:19:\"2025-10-09 09:30:03\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:2;s:9:\"parent_id\";N;s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:9:\"/about-us\";s:4:\"icon\";N;s:4:\"type\";s:6:\"custom\";s:13:\"reference_ids\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:25:17\";s:10:\"updated_at\";s:19:\"2025-10-09 09:30:03\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"reference_ids\";s:5:\"array\";s:6:\"status\";s:7:\"boolean\";s:15:\"enable_livewire\";s:7:\"boolean\";s:11:\"is_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:2;O:15:\"App\\Models\\Menu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:1;s:9:\"parent_id\";N;s:5:\"title\";s:7:\"Service\";s:3:\"url\";N;s:4:\"icon\";N;s:4:\"type\";s:7:\"service\";s:13:\"reference_ids\";s:25:\"[\"6\", \"5\", \"7\", \"2\", \"4\"]\";s:5:\"order\";i:3;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:13:44\";s:10:\"updated_at\";s:19:\"2025-10-09 09:30:03\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:1;s:9:\"parent_id\";N;s:5:\"title\";s:7:\"Service\";s:3:\"url\";N;s:4:\"icon\";N;s:4:\"type\";s:7:\"service\";s:13:\"reference_ids\";s:25:\"[\"6\", \"5\", \"7\", \"2\", \"4\"]\";s:5:\"order\";i:3;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:13:44\";s:10:\"updated_at\";s:19:\"2025-10-09 09:30:03\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"reference_ids\";s:5:\"array\";s:6:\"status\";s:7:\"boolean\";s:15:\"enable_livewire\";s:7:\"boolean\";s:11:\"is_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:3;O:15:\"App\\Models\\Menu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:3;s:9:\"parent_id\";N;s:5:\"title\";s:4:\"Blog\";s:3:\"url\";s:5:\"/blog\";s:4:\"icon\";N;s:4:\"type\";s:6:\"custom\";s:13:\"reference_ids\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:26:26\";s:10:\"updated_at\";s:19:\"2025-10-09 09:30:03\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:3;s:9:\"parent_id\";N;s:5:\"title\";s:4:\"Blog\";s:3:\"url\";s:5:\"/blog\";s:4:\"icon\";N;s:4:\"type\";s:6:\"custom\";s:13:\"reference_ids\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:26:26\";s:10:\"updated_at\";s:19:\"2025-10-09 09:30:03\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"reference_ids\";s:5:\"array\";s:6:\"status\";s:7:\"boolean\";s:15:\"enable_livewire\";s:7:\"boolean\";s:11:\"is_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:4;O:15:\"App\\Models\\Menu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:5;s:9:\"parent_id\";N;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";N;s:4:\"icon\";N;s:4:\"type\";s:4:\"page\";s:13:\"reference_ids\";s:15:\"[\"2\", \"3\", \"4\"]\";s:5:\"order\";i:5;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:45:39\";s:10:\"updated_at\";s:19:\"2025-10-09 21:04:51\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:5;s:9:\"parent_id\";N;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";N;s:4:\"icon\";N;s:4:\"type\";s:4:\"page\";s:13:\"reference_ids\";s:15:\"[\"2\", \"3\", \"4\"]\";s:5:\"order\";i:5;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:45:39\";s:10:\"updated_at\";s:19:\"2025-10-09 21:04:51\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"reference_ids\";s:5:\"array\";s:6:\"status\";s:7:\"boolean\";s:15:\"enable_livewire\";s:7:\"boolean\";s:11:\"is_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:5;O:15:\"App\\Models\\Menu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:4;s:9:\"parent_id\";N;s:5:\"title\";s:10:\"Contact Us\";s:3:\"url\";s:11:\"/contact-us\";s:4:\"icon\";N;s:4:\"type\";s:6:\"custom\";s:13:\"reference_ids\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:28:30\";s:10:\"updated_at\";s:19:\"2025-10-09 09:30:03\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:4;s:9:\"parent_id\";N;s:5:\"title\";s:10:\"Contact Us\";s:3:\"url\";s:11:\"/contact-us\";s:4:\"icon\";N;s:4:\"type\";s:6:\"custom\";s:13:\"reference_ids\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:15:\"enable_livewire\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:28:30\";s:10:\"updated_at\";s:19:\"2025-10-09 09:30:03\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"reference_ids\";s:5:\"array\";s:6:\"status\";s:7:\"boolean\";s:15:\"enable_livewire\";s:7:\"boolean\";s:11:\"is_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"allServices\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:2;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:2;s:4:\"name\";s:31:\"Full Mouth Reconstruction hello\";s:4:\"slug\";s:25:\"full-mouth-reconstruction\";s:5:\"image\";s:38:\"uploads/01K4SSXHQX6MGSZK0VABY1HNKZ.jpg\";s:5:\"icons\";s:38:\"uploads/01K4SSXHSP69RK83HPATZRS77S.svg\";s:12:\"main_content\";s:6202:\"<h3>Trauma</h3><p><br></p><p>In many cases, the patient may have experienced a traumatic accident and be in need of repairing a chipped tooth, while also simultaneously replacing another tooth that fell out. Since accidents can happen at any time, it is difficult to prepare for the possibility of damaging more than one tooth. Through full mouth reconstruction, the dentist will be able to repair the mouth, while also repairing the appearance and functionality of a patient\'s teeth.</p><p>If a patient experiences an accident that results in damage to the teeth, seeking an emergency dentist as soon as possible is a necessity. If a patient goes to a normal emergency room after damaging a tooth, the nurse will only be able to triage the wounds but not treat the condition. At Tri-City Dental Excellence we will find the best treatment for each individual and recommend options that help to repair the damage.</p><p>Patients assume that the only option will be one that merely imitates the appearance of a natural tooth and that the patient will have to practice caution when eating for the rest of his or her life. In reality, we can provide possible treatments such as dental implants, dental bonding, dental crowns, dental veneers, dental bridges and more to help repair the appearance and functionality of the tooth. After a full mouth reconstruction at Tri-City Dental Excellence our patients will be able to smile confidently and eat what they like since our repairs are long-lasting and sturdy. There is no need for a patient to live with a cracked or damaged set of teeth.</p><p><br></p><h3>Infection</h3><p><br></p><p>In other cases, a patient may lose multiple teeth to dental caries (tooth decay), gum disease or other infections. Upon infection, the dentist will do everything in his or her power to prevent the spreading. However, some patients may not visit the dentist at least once every six months and allow the infection to spread. If the infection spreads to the tooth, then there is a possibility that an extraction will be necessary.</p><p>When a patient has an infection, a <a href=\"http://dental.test/root-canal-treatment\"><span style=\"text-decoration: underline;\">root canal</span></a> is one option to treat the tooth. A root canal allows the dentist to remove the infected pulp and clean the area. Following a root canal, we will plug up the hole with a dental filling. In the cases where the tooth is removed due to infection, we may recommend a dental implant. The dental implant is a titanium post that bonds with the jaw bone through osseointegration. We will also place a dental crown on top of the implant to create a sturdy and natural-looking tooth.</p><p>If the infection has spread to multiple teeth, Tri-City Dental Excellence will recommend the best option for treating the infection and repairing one\'s teeth.</p><h3>Other Topics</h3><p><br></p><ul><li><a href=\"http://dental.test/clear-braces\">Clear Braces</a></li><li><a href=\"http://dental.test/dental-bonding\">Dental Bonding</a></li><li><a href=\"http://dental.test/dental-crowns\">Dental Crowns</a></li><li><a href=\"http://dental.test/dental-implants\">Dental Implants</a></li><li><a href=\"http://dental.test/dental-veneers\">Dental Veneers</a></li><li><a href=\"http://dental.test/smile-makeover\">Smile Makeover</a></li><li><a href=\"http://dental.test/teeth-whitening\">Teeth Whitening</a></li></ul><p><br></p><ul><li><a href=\"http://dental.test/find-a-dentist\">Find a Dentist in Vista, CA</a></li></ul><h2>Long-term Wear</h2><p><br></p><p>For some people, proper dental care is not a common part of daily life. When one chooses to not practice proper dental care, the teeth wear down more quickly as a result. Acid from certain foods, types of citrus, beverages, acid reflux, grinding and more are all causes for a patient to lose his or her teeth more quickly.</p><p>At <a href=\"http://dental.test/\"><span style=\"text-decoration: underline;\">Tri-City Dental Excellence</span></a> we can monitor the teeth at least once every six months and help patients remain healthy. For patients who experience these issues on a regular basis and have teeth that are wearing down, we can use full mouth reconstruction to address multiple issues.</p><p><br></p><h2>Reconstruction Methods</h2><p><br></p><p>At Tri-City Dental Excellence we will ensure that each patient receives the best full mouth reconstruction for his or her needs. We can reconstruct a mouth with a variety of dental tools and options at our disposal. The tools, options and restorations for a full mouth reconstruction include:</p><ul><li><a href=\"http://dental.test/dental-implants\"><span style=\"text-decoration: underline;\">Dental Implants</span></a></li><li><a href=\"http://dental.test/dental-crowns\"><span style=\"text-decoration: underline;\">Dental Crowns</span></a></li><li><a href=\"http://dental.test/dental-veneers\"><span style=\"text-decoration: underline;\">Dental Veneers</span></a></li><li><a href=\"http://dental.test/dental-bridges\"><span style=\"text-decoration: underline;\">Dental Bridges</span></a></li><li><a href=\"http://dental.test/dentures\"><span style=\"text-decoration: underline;\">Dentures</span></a></li><li><a href=\"http://dental.test/root-canal-treatment\"><span style=\"text-decoration: underline;\">Root Canal</span></a></li></ul><p>Some patients may have concerns over the price of full mouth reconstructions and avoid the necessary treatment. The longer one goes without the necessary treatment, the great the pain and risk. For instance, an adult who loses a tooth and does not seek treatment will allow the jaw to weaken over time. If the jaw weakens enough, then there will not be a way to install a dental implant in the gap.</p><p>In other cases, a gap can become infected just as a tooth can; especially if the individual does not keep it clean. The full mouth reconstruction process will take multiple appointments to customize the restoration and then install it. However, it will be worth it since the restoration will give back complete functionality of the teeth. We will be careful and precise during the installation process, making sure that each restoration is complete to perfection.</p><p><br><br></p><p><br></p>\";s:11:\"description\";s:1081:\"Full mouth reconstruction involves one or several restorative dental procedures to restore and replace the teeth in a person\'s mouth. Full mouth reconstruction is a specialty service offered at Tri-City Dental Excellence.\n\nPeople with multiple oral health issues such as tooth decay, missing teeth or damaged teeth may benefit from full mouth reconstruction. No matter the cause, people will find it incredibly challenging to live without a full set of functional teeth. Fortunately, we can use full mouth reconstruction to restore both the functionality and appearance of teeth.\n\nInstead of only focusing on one aspect of the mouth, we can help address multiple aspects. Along with ensuring that the teeth are customized to fit each patient\'s unique needs, we will replace missing teeth to create a uniform smile. This way, they can enjoy the benefits of a functional and sturdy set of teeth that also provide a great, natural appearance.\n\nIf you want to restore the functionality and appearance of your teeth with full mouth reconstruction, schedule an appointment with us today.\";s:15:\"seo_description\";s:246:\"Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions\";s:8:\"seo_tags\";s:246:\"Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions\";s:12:\"seo_keywords\";s:246:\"Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions\";s:4:\"faqs\";s:116:\"[{\"answer\": \"FAQ Answer 1\", \"question\": \"FAQ Question 1\"}, {\"answer\": \"FAQ Answer 3\", \"question\": \"FAQ Question 2\"}]\";s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-09 18:54:34\";s:10:\"updated_at\";s:19:\"2025-10-01 12:50:53\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:2;s:4:\"name\";s:31:\"Full Mouth Reconstruction hello\";s:4:\"slug\";s:25:\"full-mouth-reconstruction\";s:5:\"image\";s:38:\"uploads/01K4SSXHQX6MGSZK0VABY1HNKZ.jpg\";s:5:\"icons\";s:38:\"uploads/01K4SSXHSP69RK83HPATZRS77S.svg\";s:12:\"main_content\";s:6202:\"<h3>Trauma</h3><p><br></p><p>In many cases, the patient may have experienced a traumatic accident and be in need of repairing a chipped tooth, while also simultaneously replacing another tooth that fell out. Since accidents can happen at any time, it is difficult to prepare for the possibility of damaging more than one tooth. Through full mouth reconstruction, the dentist will be able to repair the mouth, while also repairing the appearance and functionality of a patient\'s teeth.</p><p>If a patient experiences an accident that results in damage to the teeth, seeking an emergency dentist as soon as possible is a necessity. If a patient goes to a normal emergency room after damaging a tooth, the nurse will only be able to triage the wounds but not treat the condition. At Tri-City Dental Excellence we will find the best treatment for each individual and recommend options that help to repair the damage.</p><p>Patients assume that the only option will be one that merely imitates the appearance of a natural tooth and that the patient will have to practice caution when eating for the rest of his or her life. In reality, we can provide possible treatments such as dental implants, dental bonding, dental crowns, dental veneers, dental bridges and more to help repair the appearance and functionality of the tooth. After a full mouth reconstruction at Tri-City Dental Excellence our patients will be able to smile confidently and eat what they like since our repairs are long-lasting and sturdy. There is no need for a patient to live with a cracked or damaged set of teeth.</p><p><br></p><h3>Infection</h3><p><br></p><p>In other cases, a patient may lose multiple teeth to dental caries (tooth decay), gum disease or other infections. Upon infection, the dentist will do everything in his or her power to prevent the spreading. However, some patients may not visit the dentist at least once every six months and allow the infection to spread. If the infection spreads to the tooth, then there is a possibility that an extraction will be necessary.</p><p>When a patient has an infection, a <a href=\"http://dental.test/root-canal-treatment\"><span style=\"text-decoration: underline;\">root canal</span></a> is one option to treat the tooth. A root canal allows the dentist to remove the infected pulp and clean the area. Following a root canal, we will plug up the hole with a dental filling. In the cases where the tooth is removed due to infection, we may recommend a dental implant. The dental implant is a titanium post that bonds with the jaw bone through osseointegration. We will also place a dental crown on top of the implant to create a sturdy and natural-looking tooth.</p><p>If the infection has spread to multiple teeth, Tri-City Dental Excellence will recommend the best option for treating the infection and repairing one\'s teeth.</p><h3>Other Topics</h3><p><br></p><ul><li><a href=\"http://dental.test/clear-braces\">Clear Braces</a></li><li><a href=\"http://dental.test/dental-bonding\">Dental Bonding</a></li><li><a href=\"http://dental.test/dental-crowns\">Dental Crowns</a></li><li><a href=\"http://dental.test/dental-implants\">Dental Implants</a></li><li><a href=\"http://dental.test/dental-veneers\">Dental Veneers</a></li><li><a href=\"http://dental.test/smile-makeover\">Smile Makeover</a></li><li><a href=\"http://dental.test/teeth-whitening\">Teeth Whitening</a></li></ul><p><br></p><ul><li><a href=\"http://dental.test/find-a-dentist\">Find a Dentist in Vista, CA</a></li></ul><h2>Long-term Wear</h2><p><br></p><p>For some people, proper dental care is not a common part of daily life. When one chooses to not practice proper dental care, the teeth wear down more quickly as a result. Acid from certain foods, types of citrus, beverages, acid reflux, grinding and more are all causes for a patient to lose his or her teeth more quickly.</p><p>At <a href=\"http://dental.test/\"><span style=\"text-decoration: underline;\">Tri-City Dental Excellence</span></a> we can monitor the teeth at least once every six months and help patients remain healthy. For patients who experience these issues on a regular basis and have teeth that are wearing down, we can use full mouth reconstruction to address multiple issues.</p><p><br></p><h2>Reconstruction Methods</h2><p><br></p><p>At Tri-City Dental Excellence we will ensure that each patient receives the best full mouth reconstruction for his or her needs. We can reconstruct a mouth with a variety of dental tools and options at our disposal. The tools, options and restorations for a full mouth reconstruction include:</p><ul><li><a href=\"http://dental.test/dental-implants\"><span style=\"text-decoration: underline;\">Dental Implants</span></a></li><li><a href=\"http://dental.test/dental-crowns\"><span style=\"text-decoration: underline;\">Dental Crowns</span></a></li><li><a href=\"http://dental.test/dental-veneers\"><span style=\"text-decoration: underline;\">Dental Veneers</span></a></li><li><a href=\"http://dental.test/dental-bridges\"><span style=\"text-decoration: underline;\">Dental Bridges</span></a></li><li><a href=\"http://dental.test/dentures\"><span style=\"text-decoration: underline;\">Dentures</span></a></li><li><a href=\"http://dental.test/root-canal-treatment\"><span style=\"text-decoration: underline;\">Root Canal</span></a></li></ul><p>Some patients may have concerns over the price of full mouth reconstructions and avoid the necessary treatment. The longer one goes without the necessary treatment, the great the pain and risk. For instance, an adult who loses a tooth and does not seek treatment will allow the jaw to weaken over time. If the jaw weakens enough, then there will not be a way to install a dental implant in the gap.</p><p>In other cases, a gap can become infected just as a tooth can; especially if the individual does not keep it clean. The full mouth reconstruction process will take multiple appointments to customize the restoration and then install it. However, it will be worth it since the restoration will give back complete functionality of the teeth. We will be careful and precise during the installation process, making sure that each restoration is complete to perfection.</p><p><br><br></p><p><br></p>\";s:11:\"description\";s:1081:\"Full mouth reconstruction involves one or several restorative dental procedures to restore and replace the teeth in a person\'s mouth. Full mouth reconstruction is a specialty service offered at Tri-City Dental Excellence.\n\nPeople with multiple oral health issues such as tooth decay, missing teeth or damaged teeth may benefit from full mouth reconstruction. No matter the cause, people will find it incredibly challenging to live without a full set of functional teeth. Fortunately, we can use full mouth reconstruction to restore both the functionality and appearance of teeth.\n\nInstead of only focusing on one aspect of the mouth, we can help address multiple aspects. Along with ensuring that the teeth are customized to fit each patient\'s unique needs, we will replace missing teeth to create a uniform smile. This way, they can enjoy the benefits of a functional and sturdy set of teeth that also provide a great, natural appearance.\n\nIf you want to restore the functionality and appearance of your teeth with full mouth reconstruction, schedule an appointment with us today.\";s:15:\"seo_description\";s:246:\"Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions\";s:8:\"seo_tags\";s:246:\"Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions\";s:12:\"seo_keywords\";s:246:\"Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions\";s:4:\"faqs\";s:116:\"[{\"answer\": \"FAQ Answer 1\", \"question\": \"FAQ Question 1\"}, {\"answer\": \"FAQ Answer 3\", \"question\": \"FAQ Question 2\"}]\";s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-09 18:54:34\";s:10:\"updated_at\";s:19:\"2025-10-01 12:50:53\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:4;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:4;s:4:\"name\";s:17:\"General Dentistry\";s:4:\"slug\";s:17:\"general-dentistry\";s:5:\"image\";s:38:\"uploads/01K4X3KNTY2C0G0S09TVNTJA1X.jpg\";s:5:\"icons\";s:38:\"uploads/01K4X3KNV5WXXXVH2YJVBG77V5.svg\";s:12:\"main_content\";s:2895:\"<h3>CEREC® Provides Dental Restorations and Cosmetic Solutions in One Day</h3><p><br></p><p>CEREC® is the modern solution to your dental care needs. At Tri-City Dental Excellence, we use CEREC® to provide patients with better dental treatments in one day. The traditional process for dental procedures to treat damaged, stained, crooked or overcrowded teeth, involves taking an impression of the tooth. Upon completing measurements, the dentist sends the results to a lab to create the restoration. In the meantime, the patient may spend up to two weeks with a temporary restoration while the lab creates the new one. After the final restoration is complete, the patient returns for the bonding procedure and to verify that the restoration is a good fit. The two biggest challenges with this scenario come down to time and convenience. The traditional process takes too much time and is inconvenient due to the necessity to have multiple dental appointments and the need to wear a temporary solution.</p><p>However, as a CEREC® dentist, we complete the process differently. If you are seeking to improve the appearance of your teeth by straightening them, covering a dark stain, closing gaps or changing their size, we can do all of this in one day. The same is true if you have a damaged tooth in need of repair. We offer a one-day treatment without the need to wear a temporary restoration, made possible by the CEREC® technology. If you need a dental restoration, have a dental emergency, or simply need to improve how your teeth look, visit our Vista dental office for an immediate solution.<br><br></p><h2>How The CEREC® Technology Works</h2><p><br></p><p>Our CEREC® system can be used to create crowns, veneers, inlays and onlays while you wait. At Tri-City Dental Excellence, we take digital images of the tooth and mouth and immediately upload them into the software. Using CAD/CAM technology, we create a computerized image of the tooth along with the exact dimensions and blueprint for what the new restoration needs to look like. The software processes the information quickly before making comprehensive recommendations for the restoration. The software accounts for every detail.</p><p>We then send the instructions and specifications to our milling machine, which will effectively print the restoration in our office. You no longer need to wear a temporary solution and return for a permanent one at a later date. Since our software is so accurate, there is very little need to make any adjustments once the crown is in place. We can complete all necessary steps in one appointment. Beyond being convenient, the results are just as stunning as they can be using the traditional method. You will experience the results you are looking for as fast as possible so that you can begin to enjoy your smile again. To learn more, we invite you to call (760) 216-6886.</p><p><br></p>\";s:11:\"description\";s:1096:\"At Tri-City Dental Excellence, we are a CEREC® dentist that specializes in creating beautiful smiles in one visit. By using the latest in dental technology, we can transform your smile into one that is bright, beautiful and one that you are proud to show off. If you live in the Vista, CA area, we invite you to call our office to discuss any oral health issues you are struggling with or anything that you do not like about the appearance of your smile. We can correct both in our vista dental office.\n\nAs a local dentist, we understand how uncomfortable it can be to smile when one does not like his or her teeth due to unsightly gaps, dark stains, or problems with their shape. When you visit our cosmetic dentist office, we can discuss any issues that you have with your smile and create a plan for how to address it. This is the standard approach that most cosmetic dentists will take. What makes our Vista dental office different is that we use the CEREC® technology to improve your smile in one visit. This means even the busiest of people can take the time to have their smile improved.\";s:15:\"seo_description\";N;s:8:\"seo_tags\";N;s:12:\"seo_keywords\";N;s:4:\"faqs\";N;s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-11 19:21:33\";s:10:\"updated_at\";s:19:\"2025-09-11 19:21:33\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:4;s:4:\"name\";s:17:\"General Dentistry\";s:4:\"slug\";s:17:\"general-dentistry\";s:5:\"image\";s:38:\"uploads/01K4X3KNTY2C0G0S09TVNTJA1X.jpg\";s:5:\"icons\";s:38:\"uploads/01K4X3KNV5WXXXVH2YJVBG77V5.svg\";s:12:\"main_content\";s:2895:\"<h3>CEREC® Provides Dental Restorations and Cosmetic Solutions in One Day</h3><p><br></p><p>CEREC® is the modern solution to your dental care needs. At Tri-City Dental Excellence, we use CEREC® to provide patients with better dental treatments in one day. The traditional process for dental procedures to treat damaged, stained, crooked or overcrowded teeth, involves taking an impression of the tooth. Upon completing measurements, the dentist sends the results to a lab to create the restoration. In the meantime, the patient may spend up to two weeks with a temporary restoration while the lab creates the new one. After the final restoration is complete, the patient returns for the bonding procedure and to verify that the restoration is a good fit. The two biggest challenges with this scenario come down to time and convenience. The traditional process takes too much time and is inconvenient due to the necessity to have multiple dental appointments and the need to wear a temporary solution.</p><p>However, as a CEREC® dentist, we complete the process differently. If you are seeking to improve the appearance of your teeth by straightening them, covering a dark stain, closing gaps or changing their size, we can do all of this in one day. The same is true if you have a damaged tooth in need of repair. We offer a one-day treatment without the need to wear a temporary restoration, made possible by the CEREC® technology. If you need a dental restoration, have a dental emergency, or simply need to improve how your teeth look, visit our Vista dental office for an immediate solution.<br><br></p><h2>How The CEREC® Technology Works</h2><p><br></p><p>Our CEREC® system can be used to create crowns, veneers, inlays and onlays while you wait. At Tri-City Dental Excellence, we take digital images of the tooth and mouth and immediately upload them into the software. Using CAD/CAM technology, we create a computerized image of the tooth along with the exact dimensions and blueprint for what the new restoration needs to look like. The software processes the information quickly before making comprehensive recommendations for the restoration. The software accounts for every detail.</p><p>We then send the instructions and specifications to our milling machine, which will effectively print the restoration in our office. You no longer need to wear a temporary solution and return for a permanent one at a later date. Since our software is so accurate, there is very little need to make any adjustments once the crown is in place. We can complete all necessary steps in one appointment. Beyond being convenient, the results are just as stunning as they can be using the traditional method. You will experience the results you are looking for as fast as possible so that you can begin to enjoy your smile again. To learn more, we invite you to call (760) 216-6886.</p><p><br></p>\";s:11:\"description\";s:1096:\"At Tri-City Dental Excellence, we are a CEREC® dentist that specializes in creating beautiful smiles in one visit. By using the latest in dental technology, we can transform your smile into one that is bright, beautiful and one that you are proud to show off. If you live in the Vista, CA area, we invite you to call our office to discuss any oral health issues you are struggling with or anything that you do not like about the appearance of your smile. We can correct both in our vista dental office.\n\nAs a local dentist, we understand how uncomfortable it can be to smile when one does not like his or her teeth due to unsightly gaps, dark stains, or problems with their shape. When you visit our cosmetic dentist office, we can discuss any issues that you have with your smile and create a plan for how to address it. This is the standard approach that most cosmetic dentists will take. What makes our Vista dental office different is that we use the CEREC® technology to improve your smile in one visit. This means even the busiest of people can take the time to have their smile improved.\";s:15:\"seo_description\";N;s:8:\"seo_tags\";N;s:12:\"seo_keywords\";N;s:4:\"faqs\";N;s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-11 19:21:33\";s:10:\"updated_at\";s:19:\"2025-09-11 19:21:33\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:5;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:5;s:4:\"name\";s:14:\"Dental Checkup\";s:4:\"slug\";s:14:\"dental-checkup\";s:5:\"image\";s:38:\"uploads/01K4X3S9NCJ4B3MZHWM3P7PWRP.jpg\";s:5:\"icons\";s:38:\"uploads/01K4X3S9NKHED7DH5G8BXDM6QZ.svg\";s:12:\"main_content\";s:5095:\"<h3>Why You Need a Dental Checkup</h3><p><br></p><p>There is a direct link between visiting the dentist and keeping your natural teeth. If you want to ensure that you have a full mouth of healthy teeth, then visit the dentist. Gallup Poll released a study in 2014 finding that the states with the highest percentage of dental visits also had the lowest percentage of adult tooth loss. For example, in Connecticut, 74 percent of adults visited the dentist in the past year, and their rate of adult tooth loss was only 9 percent. On the other hand, only 57 percent of adults in West Virginia visited the dentist in the past year, and 37 percent of adults have complete tooth loss. The correlation is clear and should prompt you to give us a call. If you do lose your teeth, we can help by providing you with replacements in the form of dental implants, bridges, or dentures. Still, there is no need for you to experience significant tooth loss when you visit our office regularly for preventative care. Saving your teeth, after all, is less time-consuming and less expensive.</p><p>Another reason to schedule a dental check-up is to make sure that you don\'t experience a toothache or infection. We treat patients throughout the Vista area and find that toothaches can create enough discomfort to cause people to miss work. In fact, according to the Center for Disease Control, 164 million work hours are lost each and every year due to dental related health issues. If you have a busy schedule and feel you do not have time for the dentist, you definitely need to schedule a dental checkup. Failing to do so could result in a more serious health condition forming and the need to take time off of work. After all, without preventative dental care, you are at a greater risk for tooth decay, infection, and gum disease.</p><p><br></p><h3>What Happens at Your Dental Check-Up</h3><p><br></p><p>At Tri-City Dental Excellence, we are a gentle dentist, being sure to complete your dental checkup in a way that is comfortable and relaxing. We understand that some people do not visit the dentist since they have a dental phobia or concern that something may be wrong. If this is the case, and you do have a cavity, we will treat your tooth gently and carefully so that we can address your dental health issues without causing you any further irritation.<br><br></p><h2>Call Us to Schedule a Checkup Today</h2><p>We invite you to call <a href=\"tel:760-216-6886\"><span style=\"text-decoration: underline;\">(760)-216-6886</span></a> and schedule your dental checkup right away. When you come in, our friendly staff will make sure everything is ready to go. Next, we will take images of your teeth and gums to see if there are any infections or decay that are under the surface. We will also perform a visual inspection of your gums and each one of your teeth. During this time, we will also be looking for signs of infection, tooth decay, gum disease, and oral cancer. If we identify any of these issues, we will discuss treatment options with you and may even be able to treat minor cavities that day. Before starting any procedures we will discuss them in detail to ensure that you are comfortable. We will also clean your teeth before you go to ensure that you do not have any lingering plaque or bacteria in your mouth. When you visit our Vista, CA dental office, we will provide you the highest quality of care we can, by completing your dental checkup efficiently and gently.</p><p><br></p><h2>The Benefits of Coming in Now</h2><p>At Tri-City Dental Excellence, we want you to visit our dentist office at the first sign of discomfort. If you have a slight toothache or irritation in your gums, you can schedule a dental exam. If there is a problem, we can correct it immediately, rather than allowing it to grow and spread. In many cases, we can help you to avoid experiencing any significant discomfort by simply removing the decayed area while it is still small. Otherwise, you may find yourself with a dental emergency as an untreated cavity spreads. Fortunately, we make it easy to schedule a dental checkup with our Vista dentist office. All you need to do is call <a href=\"tel:760-216-6886\"><span style=\"text-decoration: underline;\">(760)-216-6886</span></a> to schedule an appointment. We will work within your schedule to ensure that you receive the care you need, when you need it.</p><p><br></p><h2>Why You Shouldn’t Wait for Dental Care</h2><p><br></p><p>While we understand that many people wait to seek dental care due to anxiety, time, or finances, we do not recommend it. Instead, we suggest that you schedule a dental exam at least once every six months, even if you are not experiencing any discomfort. Doing so will allow us to remove any plaque or bacteria that is on your teeth, ensure that you do not have any cavities that are forming, and prevent you from experiencing gum disease. Our goal is to treat you before you have any health issues, and a dental checkup allows us to do so. We welcome you to come in so that we can protect and improve your oral health.</p><p><br></p>\";s:11:\"description\";s:956:\"A regular dental checkup offers patients professional dental cleaning services to detect and prevent tooth infections while helping maintain healthy teeth. Regular dental checkups are a standard service offered at Tri-City Dental Excellence.\n\nNo matter the age, most people tend to avoid the subject when hearing that they have another dental checkup soon. However, regular dental checkups are crucial to maintaining oral health. With a dental checkup every six months, patients can receive the professional care they need for their teeth.\n\nDuring a checkup, we can not only clean your teeth and gums, but can also look for signs of any oral health issues. If an issue should be found, we can treat it as soon as possible. We can also go over effective cleaning methods and make recommendations to help keep teeth healthy.\n\nIf you want to keep your teeth healthy with professional cleaning and examination services, schedule a dental checkup with us today.\";s:15:\"seo_description\";N;s:8:\"seo_tags\";N;s:12:\"seo_keywords\";N;s:4:\"faqs\";N;s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-11 19:24:37\";s:10:\"updated_at\";s:19:\"2025-09-11 19:24:37\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:5;s:4:\"name\";s:14:\"Dental Checkup\";s:4:\"slug\";s:14:\"dental-checkup\";s:5:\"image\";s:38:\"uploads/01K4X3S9NCJ4B3MZHWM3P7PWRP.jpg\";s:5:\"icons\";s:38:\"uploads/01K4X3S9NKHED7DH5G8BXDM6QZ.svg\";s:12:\"main_content\";s:5095:\"<h3>Why You Need a Dental Checkup</h3><p><br></p><p>There is a direct link between visiting the dentist and keeping your natural teeth. If you want to ensure that you have a full mouth of healthy teeth, then visit the dentist. Gallup Poll released a study in 2014 finding that the states with the highest percentage of dental visits also had the lowest percentage of adult tooth loss. For example, in Connecticut, 74 percent of adults visited the dentist in the past year, and their rate of adult tooth loss was only 9 percent. On the other hand, only 57 percent of adults in West Virginia visited the dentist in the past year, and 37 percent of adults have complete tooth loss. The correlation is clear and should prompt you to give us a call. If you do lose your teeth, we can help by providing you with replacements in the form of dental implants, bridges, or dentures. Still, there is no need for you to experience significant tooth loss when you visit our office regularly for preventative care. Saving your teeth, after all, is less time-consuming and less expensive.</p><p>Another reason to schedule a dental check-up is to make sure that you don\'t experience a toothache or infection. We treat patients throughout the Vista area and find that toothaches can create enough discomfort to cause people to miss work. In fact, according to the Center for Disease Control, 164 million work hours are lost each and every year due to dental related health issues. If you have a busy schedule and feel you do not have time for the dentist, you definitely need to schedule a dental checkup. Failing to do so could result in a more serious health condition forming and the need to take time off of work. After all, without preventative dental care, you are at a greater risk for tooth decay, infection, and gum disease.</p><p><br></p><h3>What Happens at Your Dental Check-Up</h3><p><br></p><p>At Tri-City Dental Excellence, we are a gentle dentist, being sure to complete your dental checkup in a way that is comfortable and relaxing. We understand that some people do not visit the dentist since they have a dental phobia or concern that something may be wrong. If this is the case, and you do have a cavity, we will treat your tooth gently and carefully so that we can address your dental health issues without causing you any further irritation.<br><br></p><h2>Call Us to Schedule a Checkup Today</h2><p>We invite you to call <a href=\"tel:760-216-6886\"><span style=\"text-decoration: underline;\">(760)-216-6886</span></a> and schedule your dental checkup right away. When you come in, our friendly staff will make sure everything is ready to go. Next, we will take images of your teeth and gums to see if there are any infections or decay that are under the surface. We will also perform a visual inspection of your gums and each one of your teeth. During this time, we will also be looking for signs of infection, tooth decay, gum disease, and oral cancer. If we identify any of these issues, we will discuss treatment options with you and may even be able to treat minor cavities that day. Before starting any procedures we will discuss them in detail to ensure that you are comfortable. We will also clean your teeth before you go to ensure that you do not have any lingering plaque or bacteria in your mouth. When you visit our Vista, CA dental office, we will provide you the highest quality of care we can, by completing your dental checkup efficiently and gently.</p><p><br></p><h2>The Benefits of Coming in Now</h2><p>At Tri-City Dental Excellence, we want you to visit our dentist office at the first sign of discomfort. If you have a slight toothache or irritation in your gums, you can schedule a dental exam. If there is a problem, we can correct it immediately, rather than allowing it to grow and spread. In many cases, we can help you to avoid experiencing any significant discomfort by simply removing the decayed area while it is still small. Otherwise, you may find yourself with a dental emergency as an untreated cavity spreads. Fortunately, we make it easy to schedule a dental checkup with our Vista dentist office. All you need to do is call <a href=\"tel:760-216-6886\"><span style=\"text-decoration: underline;\">(760)-216-6886</span></a> to schedule an appointment. We will work within your schedule to ensure that you receive the care you need, when you need it.</p><p><br></p><h2>Why You Shouldn’t Wait for Dental Care</h2><p><br></p><p>While we understand that many people wait to seek dental care due to anxiety, time, or finances, we do not recommend it. Instead, we suggest that you schedule a dental exam at least once every six months, even if you are not experiencing any discomfort. Doing so will allow us to remove any plaque or bacteria that is on your teeth, ensure that you do not have any cavities that are forming, and prevent you from experiencing gum disease. Our goal is to treat you before you have any health issues, and a dental checkup allows us to do so. We welcome you to come in so that we can protect and improve your oral health.</p><p><br></p>\";s:11:\"description\";s:956:\"A regular dental checkup offers patients professional dental cleaning services to detect and prevent tooth infections while helping maintain healthy teeth. Regular dental checkups are a standard service offered at Tri-City Dental Excellence.\n\nNo matter the age, most people tend to avoid the subject when hearing that they have another dental checkup soon. However, regular dental checkups are crucial to maintaining oral health. With a dental checkup every six months, patients can receive the professional care they need for their teeth.\n\nDuring a checkup, we can not only clean your teeth and gums, but can also look for signs of any oral health issues. If an issue should be found, we can treat it as soon as possible. We can also go over effective cleaning methods and make recommendations to help keep teeth healthy.\n\nIf you want to keep your teeth healthy with professional cleaning and examination services, schedule a dental checkup with us today.\";s:15:\"seo_description\";N;s:8:\"seo_tags\";N;s:12:\"seo_keywords\";N;s:4:\"faqs\";N;s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-11 19:24:37\";s:10:\"updated_at\";s:19:\"2025-09-11 19:24:37\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:6;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:6;s:4:\"name\";s:14:\"Dental Bridges\";s:4:\"slug\";s:14:\"dental-bridges\";s:5:\"image\";s:38:\"uploads/01K4X40GNGWC2Q3JPDBW7W9E4A.jpg\";s:5:\"icons\";s:38:\"uploads/01K4X40GNR7Y9R5TT940B2NR8H.svg\";s:12:\"main_content\";s:4858:\"<h2>What is a Dental Bridge?</h2><p>A bridge is a fixed prosthetic that can be an effective solution in cases of partial tooth loss. It is exactly as the name suggests, a bridge that replaces lost teeth between your remaining strong ones. However, in order to qualify for a dental bridge, you must have remaining teeth that are strong enough to support it. If you do, we will place dental crowns on those teeth these teeth so they can serve as anchors to hold up a gum-colored base that we can use to secure the bridge. Essentially, your remaining teeth provide the support necessary for ensuring your new tooth or teeth stay in place.</p><h2>Why should I get a dental bridge?</h2><p>There are several reasons to get a dental bridge, including restoring the appearance of your smile; giving you the ability to eat and speak normally; preserving the shape and structure of your face; and preventing pressure and wear on your remaining teeth.</p><h3>How does a dental bridge compare to standard dentures?</h3><p>When you visit our dental office, we can discuss what the differences will be like from the perspective of the treatment and process. Generally speaking, the most significant difference between a dental bridge and dentures is that dentures are removable. Since they need to come out nightly, you will not have a full set of teeth 24/7. Simultaneously, anything removable runs the risk of becoming loose or even falling out at inconvenient times. For this reason, patients may be uncomfortable wearing dentures and prefer a more secure solution. If you are wearing dentures currently and find that you have difficulty eating your favorite foods, laughing loudly, or playing sports when wearing them, consider this alternative.</p><h2>Will my dental bridge look natural?</h2><p>Absolutely. At Tri-City Dental Excellence, we will take every step necessary to ensure they look natural and fit perfectly. We begin by taking accurate measurements and also matching the shade of your prosthetic with your surrounding natural teeth. If your other teeth are stained or yellow, now is an excellent time to whiten them since we will create your new teeth using materials that are both resistant to stain and bleach.</p><h3>How long does a dental bridge last?</h3><p>The duration of a dental bridge is different for everyone and is impacted by your daily habits. However, fixed dental bridges can last for 15 years or even longer. On the short end, they tend to last for five years. One thing to keep in mind is that the overall health of your mouth will influence the longevity of your bridge. Since the natural teeth with dental crowns determine the stability of the bridge, you must keep your natural teeth healthy. We recommend you do so by visiting our Vista, CA dental office for a teeth cleaning and dental examination twice a year. We can remove built-up plaque to prevent decay and infections. If you develop any oral health problems, we will address them immediately. We will prevent the problems from spreading do not spread and your mouth can remain in excellent health.</p><h3>What can I expect from the procedure?</h3><p>When you visit our dentist office for a dental bridge, we will begin by conducting an examination and taking X-rays. We need to determine whether your remaining teeth are strong enough to support a bridge. We also need to make sure you do not have any decay or infections. If you do, we will treat the problem before placing your bridge. Afterward, we will prepare your abutment teeth for the placing of dental crowns. We remove a small portion of the enamel from around the teeth. Next, we will take measurements, make an impression, and use a shade card to determine what shade your new teeth need to be. This information will all be sent to the dental lab to create your new crowns and bridge. In the meantime, we will place a temporary bridge in your mouth. This will not look as good or be as secure as the final product, but it will preserve your appearance while you wait.</p><p>Once your new bridge is ready, you will need to come back to our Vista, CA dentist office so we can remove the temporary bridge and bond the new one in place in place. We may need to make some minor adjustments during the fitting process and will do what is necessary to ensure that it fits correctly, is comfortable, and looks natural. Taking the time to do so will help you to enjoy your new teeth now and in the future.</p><h3>Will getting a dental brdige be uncomfortable?</h3><p>At Tri-City Dental Excellence, we can provide you with anesthesia to help you remain comfortable while getting your new dental bridge. The only time anesthesia may be necessary is when we are preparing your teeth or when we are securing your bridge in place. Feel free to let us know how you are feeling about the procedure and will help you to relax.</p>\";s:11:\"description\";s:753:\"If you are missing some of your teeth, we can replace them using a dental bridge. This is a secure and permanent alternative to wearing dentures. We can work to make a dental bridge look entirely natural after we place it on your teeth. We begin the procedure by taking precise measurements of your teeth in our dentist office. We will also take an impression, so the dental lab has all the information they need to create replacement teeth that look like your natural ones. To find out if you are a good candidate for the procedure, call (760) 216-6886 and schedule a consultation. At Tri-City Dental Excellence, we offer several solutions for replacing missing teeth, so if a bridge is not suited to your needs, we will recommend a different solution.\";s:15:\"seo_description\";s:753:\"If you are missing some of your teeth, we can replace them using a dental bridge. This is a secure and permanent alternative to wearing dentures. We can work to make a dental bridge look entirely natural after we place it on your teeth. We begin the procedure by taking precise measurements of your teeth in our dentist office. We will also take an impression, so the dental lab has all the information they need to create replacement teeth that look like your natural ones. To find out if you are a good candidate for the procedure, call (760) 216-6886 and schedule a consultation. At Tri-City Dental Excellence, we offer several solutions for replacing missing teeth, so if a bridge is not suited to your needs, we will recommend a different solution.\";s:8:\"seo_tags\";N;s:12:\"seo_keywords\";N;s:4:\"faqs\";N;s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-11 19:28:33\";s:10:\"updated_at\";s:19:\"2025-09-11 19:28:33\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:6;s:4:\"name\";s:14:\"Dental Bridges\";s:4:\"slug\";s:14:\"dental-bridges\";s:5:\"image\";s:38:\"uploads/01K4X40GNGWC2Q3JPDBW7W9E4A.jpg\";s:5:\"icons\";s:38:\"uploads/01K4X40GNR7Y9R5TT940B2NR8H.svg\";s:12:\"main_content\";s:4858:\"<h2>What is a Dental Bridge?</h2><p>A bridge is a fixed prosthetic that can be an effective solution in cases of partial tooth loss. It is exactly as the name suggests, a bridge that replaces lost teeth between your remaining strong ones. However, in order to qualify for a dental bridge, you must have remaining teeth that are strong enough to support it. If you do, we will place dental crowns on those teeth these teeth so they can serve as anchors to hold up a gum-colored base that we can use to secure the bridge. Essentially, your remaining teeth provide the support necessary for ensuring your new tooth or teeth stay in place.</p><h2>Why should I get a dental bridge?</h2><p>There are several reasons to get a dental bridge, including restoring the appearance of your smile; giving you the ability to eat and speak normally; preserving the shape and structure of your face; and preventing pressure and wear on your remaining teeth.</p><h3>How does a dental bridge compare to standard dentures?</h3><p>When you visit our dental office, we can discuss what the differences will be like from the perspective of the treatment and process. Generally speaking, the most significant difference between a dental bridge and dentures is that dentures are removable. Since they need to come out nightly, you will not have a full set of teeth 24/7. Simultaneously, anything removable runs the risk of becoming loose or even falling out at inconvenient times. For this reason, patients may be uncomfortable wearing dentures and prefer a more secure solution. If you are wearing dentures currently and find that you have difficulty eating your favorite foods, laughing loudly, or playing sports when wearing them, consider this alternative.</p><h2>Will my dental bridge look natural?</h2><p>Absolutely. At Tri-City Dental Excellence, we will take every step necessary to ensure they look natural and fit perfectly. We begin by taking accurate measurements and also matching the shade of your prosthetic with your surrounding natural teeth. If your other teeth are stained or yellow, now is an excellent time to whiten them since we will create your new teeth using materials that are both resistant to stain and bleach.</p><h3>How long does a dental bridge last?</h3><p>The duration of a dental bridge is different for everyone and is impacted by your daily habits. However, fixed dental bridges can last for 15 years or even longer. On the short end, they tend to last for five years. One thing to keep in mind is that the overall health of your mouth will influence the longevity of your bridge. Since the natural teeth with dental crowns determine the stability of the bridge, you must keep your natural teeth healthy. We recommend you do so by visiting our Vista, CA dental office for a teeth cleaning and dental examination twice a year. We can remove built-up plaque to prevent decay and infections. If you develop any oral health problems, we will address them immediately. We will prevent the problems from spreading do not spread and your mouth can remain in excellent health.</p><h3>What can I expect from the procedure?</h3><p>When you visit our dentist office for a dental bridge, we will begin by conducting an examination and taking X-rays. We need to determine whether your remaining teeth are strong enough to support a bridge. We also need to make sure you do not have any decay or infections. If you do, we will treat the problem before placing your bridge. Afterward, we will prepare your abutment teeth for the placing of dental crowns. We remove a small portion of the enamel from around the teeth. Next, we will take measurements, make an impression, and use a shade card to determine what shade your new teeth need to be. This information will all be sent to the dental lab to create your new crowns and bridge. In the meantime, we will place a temporary bridge in your mouth. This will not look as good or be as secure as the final product, but it will preserve your appearance while you wait.</p><p>Once your new bridge is ready, you will need to come back to our Vista, CA dentist office so we can remove the temporary bridge and bond the new one in place in place. We may need to make some minor adjustments during the fitting process and will do what is necessary to ensure that it fits correctly, is comfortable, and looks natural. Taking the time to do so will help you to enjoy your new teeth now and in the future.</p><h3>Will getting a dental brdige be uncomfortable?</h3><p>At Tri-City Dental Excellence, we can provide you with anesthesia to help you remain comfortable while getting your new dental bridge. The only time anesthesia may be necessary is when we are preparing your teeth or when we are securing your bridge in place. Feel free to let us know how you are feeling about the procedure and will help you to relax.</p>\";s:11:\"description\";s:753:\"If you are missing some of your teeth, we can replace them using a dental bridge. This is a secure and permanent alternative to wearing dentures. We can work to make a dental bridge look entirely natural after we place it on your teeth. We begin the procedure by taking precise measurements of your teeth in our dentist office. We will also take an impression, so the dental lab has all the information they need to create replacement teeth that look like your natural ones. To find out if you are a good candidate for the procedure, call (760) 216-6886 and schedule a consultation. At Tri-City Dental Excellence, we offer several solutions for replacing missing teeth, so if a bridge is not suited to your needs, we will recommend a different solution.\";s:15:\"seo_description\";s:753:\"If you are missing some of your teeth, we can replace them using a dental bridge. This is a secure and permanent alternative to wearing dentures. We can work to make a dental bridge look entirely natural after we place it on your teeth. We begin the procedure by taking precise measurements of your teeth in our dentist office. We will also take an impression, so the dental lab has all the information they need to create replacement teeth that look like your natural ones. To find out if you are a good candidate for the procedure, call (760) 216-6886 and schedule a consultation. At Tri-City Dental Excellence, we offer several solutions for replacing missing teeth, so if a bridge is not suited to your needs, we will recommend a different solution.\";s:8:\"seo_tags\";N;s:12:\"seo_keywords\";N;s:4:\"faqs\";N;s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-11 19:28:33\";s:10:\"updated_at\";s:19:\"2025-09-11 19:28:33\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:7;O:18:\"App\\Models\\Service\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:7;s:4:\"name\";s:29:\"Dentures and Partial Dentures\";s:4:\"slug\";s:29:\"dentures-and-partial-dentures\";s:5:\"image\";s:38:\"uploads/01K4X46QS8NVD5AS9ZKM1MX1SS.jpg\";s:5:\"icons\";s:38:\"uploads/01K4X49BHW8HC9K0071WBB3N9M.svg\";s:12:\"main_content\";s:9831:\"<h3>Dentures Can Help Prevent Further Oral Health Issues</h3><p><br></p><p>The purpose of dental care and oral hygiene is to prevent tooth loss as much as possible. However, there are cases in which tooth loss is unavoidable. When an infection advances to later stages or begins to spread, tooth extraction may become the only option. If a tooth falls out on its own or is knocked out, there is a chance the empty socket can cause the other teeth to begin to shift.</p><p>The doctor can help restore missing teeth with dentures or partial dentures. By ensuring there are no more traces of infection in the mouth, dentures can help to prevent the spread of further contamination to the mouth or jaw. Even with dentures, patients will want to continue an oral hygiene routine that involves keeping the gums and mouth clean.</p><p>With partial dentures or at least several natural teeth still in the mouth, it is essential to keep up regular oral hygiene methods, including:</p><ul><li><strong>Daily brushing.</strong> As soon as teeth emerge in a child’s mouth, it is vital to brush regularly. It is wise to brush at least twice daily through one’s entire life</li><li><strong>Consistent Flossing.</strong> Daily flossing will remove food from between teeth. Doing this will keep bacteria from growing on the gums and beneath the teeth.</li><li><strong>Regular Visits to the Dentist.</strong> Patients should visit our dental staff at least once every six months. More frequent visits may be necessary for restorative care.</li></ul><h2>Full Dentures</h2><p>When To Get Partial Dentures</p><p>As discussed in an article by the Oral Health Foundation, there are key differences between full and partial dentures. Partial dentures are ideal for patients who have lost multiple teeth but still have healthy natural teeth remaining. This option may also be a wise one for a patient who has several decaying teeth that need to be extracted to prevent the spread of infection and other dental problems. This procedure may also be the right option for patients who are concerned about the cost. Although prices can vary depending on insurance, partial dentures can be an affordable tooth replacement option. Patients worried about pain from a dental procedure may feel eased, knowing that the process is often less invasive than other replacement options.</p><p><strong>Placing the Dental Implant</strong><br>Our team will first discuss the benefits and challenges of wearing both dentures and partial dentures. When the patient is ready to begin the procedure for dentures, X-rays and impressions of the person’s mouth will need to be made. There will also be a review of the patient’s health history, including current medications and recent surgeries. The impressions will go to a lab where a technician makes the full dentures.</p><p>The patient will get the apparatus at the following appointment. During this appointment, the doctor will remove any remaining teeth that need to come out, though this can also be done at a prior date. The dental professional will test the dentures to make sure everything fits properly, and the patient feels comfortable with the dentures in the mouth. The dentist may need to make additional adjustments. Be aware, some kinds of dentures can be ready for fitting right after removing teeth, while others require a patient’s gums to be completely healed.</p><p><strong>Partial Dentures</strong></p><p><br></p><p>When To Get Complete Dentures<br><br></p><p>Everyone should be able to enjoy a comfortable use of their mouth and a bright smile. Going through life without teeth may cause unnecessary hardships. Missing teeth can complicate regular activities such as eating, speaking, and even socializing. Fortunately, dentures can solve this concern. If a patient has lost all teeth, or if a dental professional has pulled them all, the person should consider full dentures. At Tri-City Dental Excellence, we can customize the right set of dentures to fit in the person’s mouth and provide a natural-looking solution.</p><p><br></p><p>Getting Partial Dentures<br><br></p><p>The process of getting partial dentures is similar, though the apparatus itself has some differences. Partial dentures are connected by a metal framework to secure them in the person’s mouth. The dentist will use a fixed bridge to connect the partial dentures to any remaining natural teeth. This type of denture is also removable.</p><p>The patient will make two or three appointments to complete this process. Our team will make sure everything fits well and that the patient can have full mouth function with it. Patients should be prepared to wait a few weeks for the dentures. It takes time for the lab technician to make the appliance based on the molds our dental team makes.</p><p><br></p><p>What Material Dentures Are Made Of<br><br></p><p>One of the most popular reasons why people choose dentures and partial dentures are their resemblance to natural teeth. Dentures consist of a gum-colored base, which is often coated with acrylic or plastic. Other materials may be used in modern denture bases, as discussed in an article originally published in the Contemporary Clinical Dentistry. Artificial teeth attach to the base. The teeth are typically composed of porcelain or a resin, such as acrylic. While there are permanent dentures, most are removable, which can help the patient maintain and clean them efficiently.</p><h2>Main Teeth Replacement Options​</h2><p>There are several options that patients can choose from when it comes to teeth replacement. Some people may rely on more than one, depending on the situation.</p><p><br></p><p>1. Implants<br><br></p><p>This option is the most permanent, having the potential to go without a replacement. It requires several visits, time for healing, and may take a year to complete. The process involves placing an implant into the bone structure of the jaw, where it should sit permanently. The dentist then places a crown over the implant for a realistic look. Most patients can then use the tooth immediately.</p><p>2. Bridges<br><br></p><p>An often-faster option and, depending on insurance, more cost-conscious option is to get bridges. However, unlike implants, these typically need replacement every five to ten years. With exceptional care, some people extend that lifespan to about 15 years. Bridges involve cementing an artificial tooth into the available gap and securing it to the natural teeth or implants on both or either side. This procedure typically takes about two visits to complete and may include a crown.</p><p>3. Dentures<br><br></p><p>Patients may choose to get either full or partial dentures, depending on the extent of tooth loss. Most types of dentures are removable. If a person still has natural teeth, the dentist must note the color of the teeth and gums. That way, the doctor can ensure the coating of the dentures match the natural teeth, especially if the teeth are visible.</p><p><br><br></p><h2>Helping Dentures Last With Proper Care</h2><p>Dentures can work effectively for up to 10 years. This time frame will depend mainly on the person’s commitment and diligence to maintaining the appliance. Just as patients should brush and floss natural teeth, people must do the same with dentures. These habits will help prevent and remove stains from artificial teeth, helping to preserve the color.</p><p>Each night, patients should remove the dentures and soak the appliance in a solution that we recommend to help clean the dentures. After every meal, the wearer should take out the dentures and rinse them off. When doing this, the person must be careful not to drop the appliance. It may be helpful to place a towel on the counter or in the sink.</p><p>Dentures should allow the person to eat most foods without any issues. However, the patient should be careful about chewing hard items such as candy, nuts, and ice. Sticky foods can also pull the dentures out of the person’s mouth. If the person notices any damage to the base or artificial teeth, they should contact our office right away.</p><p>People should not try to fix the dentures without professional assistance. An article on the American Dental Association website offers more information on the subject of maintaining dentures and what to do if the break. In all cases of the dentures sustaining damage, it is crucial to call us for repairs.</p><h2>Denture Myths Versus Reality</h2><p>There are many misconceptions about dentures that can stand in the way of people getting the care they need. Learning the facts about some common myths can help patients better understand their options. Talk to our team to get further information and specific advice for your situation.</p><p><br></p><ul><li><strong>Myth #1: </strong>Discomfort and irritation is a normal part of having to wear dentures. Today’s techniques allow the creation of dentures that fit well. If you are not comfortable, it is a sign that something is wrong. If this is the case, consult a dentist.</li></ul><p><br></p><ul><li><strong>Myth #2: </strong>Getting dentures means not having to return to the dentist again. Even if you no longer have natural teeth, seeing the dentist at least once a year is vital to maintaining oral health. Dentists can identify and treat gum issues and other problems. They can also adjust your dentures and make sure everything is going well.</li></ul><p><br></p><ul><li><strong>Myth #3: </strong>Getting dentures means never being able to eat anything besides soft food again. While it can take a little time to adjust to the feel of eating with dentures, many people can enjoy a variety of foods. The dental team can talk to you in further detail about any concerns regarding the potential effect of your diet on your dentures.</li></ul><p><br></p>\";s:11:\"description\";s:686:\"Dentures and partial dentures are most commonly associated with seniors, but many young people wear them too. According to the CDC, adult tooth loss has been on the decline for roughly 70 years. Even so, many Americans rely on dentures to improve not just their smiles but also their speech and ability to chew food comfortably. Dentures and partial dentures fill any tooth loss gaps with false teeth.Dentures and partial dentures are available at Tri-City Dental Excellence in Vista and the surrounding area. We offer a range of tooth replacement options.By investing in a dental veneer treatment, we can help you change the size, shape and shade of your teeth for your specific needs.\";s:15:\"seo_description\";N;s:8:\"seo_tags\";N;s:12:\"seo_keywords\";N;s:4:\"faqs\";s:2:\"[]\";s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-11 19:31:16\";s:10:\"updated_at\";s:19:\"2025-10-03 19:56:19\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:7;s:4:\"name\";s:29:\"Dentures and Partial Dentures\";s:4:\"slug\";s:29:\"dentures-and-partial-dentures\";s:5:\"image\";s:38:\"uploads/01K4X46QS8NVD5AS9ZKM1MX1SS.jpg\";s:5:\"icons\";s:38:\"uploads/01K4X49BHW8HC9K0071WBB3N9M.svg\";s:12:\"main_content\";s:9831:\"<h3>Dentures Can Help Prevent Further Oral Health Issues</h3><p><br></p><p>The purpose of dental care and oral hygiene is to prevent tooth loss as much as possible. However, there are cases in which tooth loss is unavoidable. When an infection advances to later stages or begins to spread, tooth extraction may become the only option. If a tooth falls out on its own or is knocked out, there is a chance the empty socket can cause the other teeth to begin to shift.</p><p>The doctor can help restore missing teeth with dentures or partial dentures. By ensuring there are no more traces of infection in the mouth, dentures can help to prevent the spread of further contamination to the mouth or jaw. Even with dentures, patients will want to continue an oral hygiene routine that involves keeping the gums and mouth clean.</p><p>With partial dentures or at least several natural teeth still in the mouth, it is essential to keep up regular oral hygiene methods, including:</p><ul><li><strong>Daily brushing.</strong> As soon as teeth emerge in a child’s mouth, it is vital to brush regularly. It is wise to brush at least twice daily through one’s entire life</li><li><strong>Consistent Flossing.</strong> Daily flossing will remove food from between teeth. Doing this will keep bacteria from growing on the gums and beneath the teeth.</li><li><strong>Regular Visits to the Dentist.</strong> Patients should visit our dental staff at least once every six months. More frequent visits may be necessary for restorative care.</li></ul><h2>Full Dentures</h2><p>When To Get Partial Dentures</p><p>As discussed in an article by the Oral Health Foundation, there are key differences between full and partial dentures. Partial dentures are ideal for patients who have lost multiple teeth but still have healthy natural teeth remaining. This option may also be a wise one for a patient who has several decaying teeth that need to be extracted to prevent the spread of infection and other dental problems. This procedure may also be the right option for patients who are concerned about the cost. Although prices can vary depending on insurance, partial dentures can be an affordable tooth replacement option. Patients worried about pain from a dental procedure may feel eased, knowing that the process is often less invasive than other replacement options.</p><p><strong>Placing the Dental Implant</strong><br>Our team will first discuss the benefits and challenges of wearing both dentures and partial dentures. When the patient is ready to begin the procedure for dentures, X-rays and impressions of the person’s mouth will need to be made. There will also be a review of the patient’s health history, including current medications and recent surgeries. The impressions will go to a lab where a technician makes the full dentures.</p><p>The patient will get the apparatus at the following appointment. During this appointment, the doctor will remove any remaining teeth that need to come out, though this can also be done at a prior date. The dental professional will test the dentures to make sure everything fits properly, and the patient feels comfortable with the dentures in the mouth. The dentist may need to make additional adjustments. Be aware, some kinds of dentures can be ready for fitting right after removing teeth, while others require a patient’s gums to be completely healed.</p><p><strong>Partial Dentures</strong></p><p><br></p><p>When To Get Complete Dentures<br><br></p><p>Everyone should be able to enjoy a comfortable use of their mouth and a bright smile. Going through life without teeth may cause unnecessary hardships. Missing teeth can complicate regular activities such as eating, speaking, and even socializing. Fortunately, dentures can solve this concern. If a patient has lost all teeth, or if a dental professional has pulled them all, the person should consider full dentures. At Tri-City Dental Excellence, we can customize the right set of dentures to fit in the person’s mouth and provide a natural-looking solution.</p><p><br></p><p>Getting Partial Dentures<br><br></p><p>The process of getting partial dentures is similar, though the apparatus itself has some differences. Partial dentures are connected by a metal framework to secure them in the person’s mouth. The dentist will use a fixed bridge to connect the partial dentures to any remaining natural teeth. This type of denture is also removable.</p><p>The patient will make two or three appointments to complete this process. Our team will make sure everything fits well and that the patient can have full mouth function with it. Patients should be prepared to wait a few weeks for the dentures. It takes time for the lab technician to make the appliance based on the molds our dental team makes.</p><p><br></p><p>What Material Dentures Are Made Of<br><br></p><p>One of the most popular reasons why people choose dentures and partial dentures are their resemblance to natural teeth. Dentures consist of a gum-colored base, which is often coated with acrylic or plastic. Other materials may be used in modern denture bases, as discussed in an article originally published in the Contemporary Clinical Dentistry. Artificial teeth attach to the base. The teeth are typically composed of porcelain or a resin, such as acrylic. While there are permanent dentures, most are removable, which can help the patient maintain and clean them efficiently.</p><h2>Main Teeth Replacement Options​</h2><p>There are several options that patients can choose from when it comes to teeth replacement. Some people may rely on more than one, depending on the situation.</p><p><br></p><p>1. Implants<br><br></p><p>This option is the most permanent, having the potential to go without a replacement. It requires several visits, time for healing, and may take a year to complete. The process involves placing an implant into the bone structure of the jaw, where it should sit permanently. The dentist then places a crown over the implant for a realistic look. Most patients can then use the tooth immediately.</p><p>2. Bridges<br><br></p><p>An often-faster option and, depending on insurance, more cost-conscious option is to get bridges. However, unlike implants, these typically need replacement every five to ten years. With exceptional care, some people extend that lifespan to about 15 years. Bridges involve cementing an artificial tooth into the available gap and securing it to the natural teeth or implants on both or either side. This procedure typically takes about two visits to complete and may include a crown.</p><p>3. Dentures<br><br></p><p>Patients may choose to get either full or partial dentures, depending on the extent of tooth loss. Most types of dentures are removable. If a person still has natural teeth, the dentist must note the color of the teeth and gums. That way, the doctor can ensure the coating of the dentures match the natural teeth, especially if the teeth are visible.</p><p><br><br></p><h2>Helping Dentures Last With Proper Care</h2><p>Dentures can work effectively for up to 10 years. This time frame will depend mainly on the person’s commitment and diligence to maintaining the appliance. Just as patients should brush and floss natural teeth, people must do the same with dentures. These habits will help prevent and remove stains from artificial teeth, helping to preserve the color.</p><p>Each night, patients should remove the dentures and soak the appliance in a solution that we recommend to help clean the dentures. After every meal, the wearer should take out the dentures and rinse them off. When doing this, the person must be careful not to drop the appliance. It may be helpful to place a towel on the counter or in the sink.</p><p>Dentures should allow the person to eat most foods without any issues. However, the patient should be careful about chewing hard items such as candy, nuts, and ice. Sticky foods can also pull the dentures out of the person’s mouth. If the person notices any damage to the base or artificial teeth, they should contact our office right away.</p><p>People should not try to fix the dentures without professional assistance. An article on the American Dental Association website offers more information on the subject of maintaining dentures and what to do if the break. In all cases of the dentures sustaining damage, it is crucial to call us for repairs.</p><h2>Denture Myths Versus Reality</h2><p>There are many misconceptions about dentures that can stand in the way of people getting the care they need. Learning the facts about some common myths can help patients better understand their options. Talk to our team to get further information and specific advice for your situation.</p><p><br></p><ul><li><strong>Myth #1: </strong>Discomfort and irritation is a normal part of having to wear dentures. Today’s techniques allow the creation of dentures that fit well. If you are not comfortable, it is a sign that something is wrong. If this is the case, consult a dentist.</li></ul><p><br></p><ul><li><strong>Myth #2: </strong>Getting dentures means not having to return to the dentist again. Even if you no longer have natural teeth, seeing the dentist at least once a year is vital to maintaining oral health. Dentists can identify and treat gum issues and other problems. They can also adjust your dentures and make sure everything is going well.</li></ul><p><br></p><ul><li><strong>Myth #3: </strong>Getting dentures means never being able to eat anything besides soft food again. While it can take a little time to adjust to the feel of eating with dentures, many people can enjoy a variety of foods. The dental team can talk to you in further detail about any concerns regarding the potential effect of your diet on your dentures.</li></ul><p><br></p>\";s:11:\"description\";s:686:\"Dentures and partial dentures are most commonly associated with seniors, but many young people wear them too. According to the CDC, adult tooth loss has been on the decline for roughly 70 years. Even so, many Americans rely on dentures to improve not just their smiles but also their speech and ability to chew food comfortably. Dentures and partial dentures fill any tooth loss gaps with false teeth.Dentures and partial dentures are available at Tri-City Dental Excellence in Vista and the surrounding area. We offer a range of tooth replacement options.By investing in a dental veneer treatment, we can help you change the size, shape and shade of your teeth for your specific needs.\";s:15:\"seo_description\";N;s:8:\"seo_tags\";N;s:12:\"seo_keywords\";N;s:4:\"faqs\";s:2:\"[]\";s:11:\"faqs_header\";N;s:6:\"status\";i:1;s:8:\"location\";s:9:\"Vista, CA\";s:10:\"created_at\";s:19:\"2025-09-11 19:31:16\";s:10:\"updated_at\";s:19:\"2025-10-03 19:56:19\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:4:\"faqs\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:8:\"allPages\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:2;O:16:\"App\\Models\\Pages\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:2;s:5:\"title\";s:14:\"Privacy Policy\";s:4:\"slug\";s:14:\"privacy-policy\";s:8:\"location\";s:9:\"Vista, CA\";s:5:\"image\";s:38:\"uploads/01K88675Y32JEYEN0G89Q5658E.png\";s:11:\"description\";N;s:12:\"main_content\";s:2307:\"<p>sdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dssssssssss</p>\";s:10:\"components\";s:2:\"[]\";s:10:\"meta_title\";s:10:\"Meta title\";s:16:\"meta_description\";s:17:\"Meta description\n\";s:13:\"meta_keywords\";s:13:\"Meta keywords\";s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:42:29\";s:10:\"updated_at\";s:19:\"2025-10-23 19:26:42\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:2;s:5:\"title\";s:14:\"Privacy Policy\";s:4:\"slug\";s:14:\"privacy-policy\";s:8:\"location\";s:9:\"Vista, CA\";s:5:\"image\";s:38:\"uploads/01K88675Y32JEYEN0G89Q5658E.png\";s:11:\"description\";N;s:12:\"main_content\";s:2307:\"<p>sdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dssssssssss</p>\";s:10:\"components\";s:2:\"[]\";s:10:\"meta_title\";s:10:\"Meta title\";s:16:\"meta_description\";s:17:\"Meta description\n\";s:13:\"meta_keywords\";s:13:\"Meta keywords\";s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:42:29\";s:10:\"updated_at\";s:19:\"2025-10-23 19:26:42\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"components\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:3;O:16:\"App\\Models\\Pages\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:3;s:5:\"title\";s:18:\"Terms & Conditions\";s:4:\"slug\";s:16:\"terms-conditions\";s:8:\"location\";N;s:5:\"image\";N;s:11:\"description\";s:18:\"Terms & Conditions\";s:12:\"main_content\";s:46:\"<p><strong>Terms &amp; Conditions</strong></p>\";s:10:\"components\";s:2:\"[]\";s:10:\"meta_title\";s:29:\"Terms & Conditions Meta title\";s:16:\"meta_description\";s:36:\"Meta description Terms & Conditions\n\";s:13:\"meta_keywords\";s:32:\"Meta keywords Terms & Conditions\";s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:43:23\";s:10:\"updated_at\";s:19:\"2025-10-09 09:43:23\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:3;s:5:\"title\";s:18:\"Terms & Conditions\";s:4:\"slug\";s:16:\"terms-conditions\";s:8:\"location\";N;s:5:\"image\";N;s:11:\"description\";s:18:\"Terms & Conditions\";s:12:\"main_content\";s:46:\"<p><strong>Terms &amp; Conditions</strong></p>\";s:10:\"components\";s:2:\"[]\";s:10:\"meta_title\";s:29:\"Terms & Conditions Meta title\";s:16:\"meta_description\";s:36:\"Meta description Terms & Conditions\n\";s:13:\"meta_keywords\";s:32:\"Meta keywords Terms & Conditions\";s:6:\"status\";i:1;s:11:\"is_featured\";i:1;s:10:\"created_at\";s:19:\"2025-10-09 09:43:23\";s:10:\"updated_at\";s:19:\"2025-10-09 09:43:23\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"components\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:4;O:16:\"App\\Models\\Pages\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:4;s:5:\"title\";s:24:\"First Visit Expectations\";s:4:\"slug\";s:24:\"first-visit-expectations\";s:8:\"location\";s:9:\"Vista, CA\";s:5:\"image\";s:38:\"uploads/01K75CG7FZ7QAD987537VEW2N8.jpg\";s:11:\"description\";s:518:\"We know the first visit to any doctor’s office can be intimidating so we want your time with us to be as comfortable as possible. During your first visit, our team will get to know you by asking some questions about your medical and oral health history. Please bring a list of any medications you may be taking and their dosages, including all vitamins and supplements. We love to educate our patients and answer questions, so don’t be shy! We encourage you to ask questions and express your concerns or desires.\n\n\";s:12:\"main_content\";s:2501:\"<h2>your comfort is our priority</h2><p>We know the first visit to any doctor’s office can be intimidating so we want your time with us to be as comfortable as possible. During your first visit, our team will get to know you by asking some questions about your medical and oral health history. Please bring a list of any medications you may be taking and their dosages, including all vitamins and supplements. We love to educate our patients and answer questions, so don’t be shy! We encourage you to ask questions and express your concerns or desires.</p><p>Next, we will perform a comprehensive oral exam that may include x-rays, periodontal probing, charting of your existing restorations, and a non-invasive oral cancer screening. If no signs of periodontal disease are present, you will have a routine cleaning. If we notice signs of periodontal disease, we may reschedule the cleaning portion of your visit to allow for more time.</p><p>Once your exam is complete, your doctor will review their findings with you and work on a treatment plan that reflects your wants and needs while giving you a functional, healthy smile. We offer many payment options and can prioritize and stagger your treatments to give you a smile you deserve in a timeframe you can afford.<br><br></p><h3>relaxing atmosphere</h3><p>You may not associate comfort with the dentist, but at Tri-City Dental Excellence, now you can. We work hard to ensure our patients feel at home while they’re with us. We have a full suite of patient amenities to keep you relaxed and entertained from our lobby to our treatment rooms.</p><ul><li><strong>Soft Pillows</strong></li><li><strong>TVs in Treatment Rooms</strong></li><li><strong>Private Treatment Rooms</strong></li><li><strong>Curated Local Art</strong></li></ul><h3>convenient scheduling</h3><p>We understand that fitting dental care into a busy schedule can be difficult. That’s why we do our best to make your visits to our office as easy and convenient as possible.</p><ul><li><strong>Family Block Appointments</strong> | You won’t have to make multiple trips to the office—we can treat your whole family in just one visit.</li><li><strong>Appointment Reminders</strong> | With a hectic schedule it can be hard to keep track of appointments, but don’t worry. We’ll send you a reminder!</li><li><strong>Emergencies Seen ASAP</strong> | If you have severe tooth pain or another dental emergency, we’ll get you into our office the same day you call.</li></ul>\";s:10:\"components\";s:144:\"[{\"type\": \"faqs\", \"sort_by\": \"2\"}, {\"type\": \"services\", \"sort_by\": \"1\"}, {\"type\": \"doctor\", \"sort_by\": \"3\"}, {\"type\": \"review\", \"sort_by\": \"4\"}]\";s:10:\"meta_title\";s:10:\"Meta title\";s:16:\"meta_description\";s:17:\"Meta description\n\";s:13:\"meta_keywords\";s:13:\"Meta keywords\";s:6:\"status\";i:1;s:11:\"is_featured\";N;s:10:\"created_at\";s:19:\"2025-10-09 21:00:38\";s:10:\"updated_at\";s:19:\"2025-10-09 21:20:32\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:4;s:5:\"title\";s:24:\"First Visit Expectations\";s:4:\"slug\";s:24:\"first-visit-expectations\";s:8:\"location\";s:9:\"Vista, CA\";s:5:\"image\";s:38:\"uploads/01K75CG7FZ7QAD987537VEW2N8.jpg\";s:11:\"description\";s:518:\"We know the first visit to any doctor’s office can be intimidating so we want your time with us to be as comfortable as possible. During your first visit, our team will get to know you by asking some questions about your medical and oral health history. Please bring a list of any medications you may be taking and their dosages, including all vitamins and supplements. We love to educate our patients and answer questions, so don’t be shy! We encourage you to ask questions and express your concerns or desires.\n\n\";s:12:\"main_content\";s:2501:\"<h2>your comfort is our priority</h2><p>We know the first visit to any doctor’s office can be intimidating so we want your time with us to be as comfortable as possible. During your first visit, our team will get to know you by asking some questions about your medical and oral health history. Please bring a list of any medications you may be taking and their dosages, including all vitamins and supplements. We love to educate our patients and answer questions, so don’t be shy! We encourage you to ask questions and express your concerns or desires.</p><p>Next, we will perform a comprehensive oral exam that may include x-rays, periodontal probing, charting of your existing restorations, and a non-invasive oral cancer screening. If no signs of periodontal disease are present, you will have a routine cleaning. If we notice signs of periodontal disease, we may reschedule the cleaning portion of your visit to allow for more time.</p><p>Once your exam is complete, your doctor will review their findings with you and work on a treatment plan that reflects your wants and needs while giving you a functional, healthy smile. We offer many payment options and can prioritize and stagger your treatments to give you a smile you deserve in a timeframe you can afford.<br><br></p><h3>relaxing atmosphere</h3><p>You may not associate comfort with the dentist, but at Tri-City Dental Excellence, now you can. We work hard to ensure our patients feel at home while they’re with us. We have a full suite of patient amenities to keep you relaxed and entertained from our lobby to our treatment rooms.</p><ul><li><strong>Soft Pillows</strong></li><li><strong>TVs in Treatment Rooms</strong></li><li><strong>Private Treatment Rooms</strong></li><li><strong>Curated Local Art</strong></li></ul><h3>convenient scheduling</h3><p>We understand that fitting dental care into a busy schedule can be difficult. That’s why we do our best to make your visits to our office as easy and convenient as possible.</p><ul><li><strong>Family Block Appointments</strong> | You won’t have to make multiple trips to the office—we can treat your whole family in just one visit.</li><li><strong>Appointment Reminders</strong> | With a hectic schedule it can be hard to keep track of appointments, but don’t worry. We’ll send you a reminder!</li><li><strong>Emergencies Seen ASAP</strong> | If you have severe tooth pain or another dental emergency, we’ll get you into our office the same day you call.</li></ul>\";s:10:\"components\";s:144:\"[{\"type\": \"faqs\", \"sort_by\": \"2\"}, {\"type\": \"services\", \"sort_by\": \"1\"}, {\"type\": \"doctor\", \"sort_by\": \"3\"}, {\"type\": \"review\", \"sort_by\": \"4\"}]\";s:10:\"meta_title\";s:10:\"Meta title\";s:16:\"meta_description\";s:17:\"Meta description\n\";s:13:\"meta_keywords\";s:13:\"Meta keywords\";s:6:\"status\";i:1;s:11:\"is_featured\";N;s:10:\"created_at\";s:19:\"2025-10-09 21:00:38\";s:10:\"updated_at\";s:19:\"2025-10-09 21:20:32\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"components\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}', 1761402136);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('setting', 'O:25:\"App\\Models\\WebsiteSetting\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"website_settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:69:{s:2:\"id\";i:1;s:4:\"name\";s:13:\"Dental Clinic\";s:11:\"description\";s:103:\"Ready to discuss opportunities in ag & forestry trading, logistics coordination, or desk support roles.\";s:6:\"footer\";s:44:\"© 2025 your copyright. All rights reserved.\";s:6:\"google\";N;s:6:\"author\";s:14:\"Jonathan Davis\";s:8:\"keywords\";N;s:4:\"tags\";N;s:3:\"url\";s:31:\"http://jonathon-portfolio.test/\";s:12:\"website_logo\";s:38:\"uploads/01K4XDPPWPMRZDK1FFJEGQXA6H.png\";s:8:\"fav_icon\";s:38:\"uploads/01K4XDPPWX5KDJTTCZR5A5S533.png\";s:7:\"address\";s:21:\"Tennessee, Washington\";s:5:\"email\";s:14:\"test@gmail.com\";s:5:\"phone\";s:15:\" (123) 456-7890\";s:8:\"linkedin\";s:37:\"https://www.linkedin.com/in/durjaygp/\";s:14:\"footer_heading\";s:13:\"Let\'s Connect\";s:17:\"footer_card_title\";s:22:\"Quick Response Promise\";s:21:\"footer_card_paragraph\";s:135:\"I respond to all inquiries within 24 hours. Currently prioritizing Washington-based opportunities in ag/forestry trading and logistics.\";s:21:\"contact_spam_keywords\";N;s:10:\"created_at\";s:19:\"2025-10-01 23:49:32\";s:3:\"map\";s:396:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d193375.44825389085!2d-117.253136!3d33.191631!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dc741d0876e547%3A0x5ee679eb71b4aa9!2sTri-City%20Dental%20Excellence!5e1!3m2!1sen!2sus!4v1759323969157!5m2!1sen!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\";s:8:\"map_link\";s:197:\"https://www.google.com/maps/place/Tri-City+Dental/@33.1864518,-117.2864629,11.93z/data=!4m6!3m5!1s0x80dc741d0876e547:0x5ee679eb71b4aa9!8m2!3d33.1916313!4d-117.2531356!16s%2Fg%2F11b90dq5dh?entry=ttu\";s:10:\"updated_at\";s:19:\"2025-10-25 12:04:54\";s:13:\"primary_color\";s:7:\"#4A5B61\";s:15:\"secondary_color\";s:7:\"#F5F7F8\";s:10:\"text_color\";s:7:\"#334E57\";s:12:\"accent_color\";s:7:\"#C3D941\";s:11:\"white_color\";s:7:\"#FFFFFF\";s:13:\"divider_color\";s:9:\"#4A5B6112\";s:18:\"dark_divider_color\";s:9:\"#FFFFFF1F\";s:11:\"error_color\";s:9:\"#E65757FF\";s:17:\"top_header_button\";s:7:\"#C3D941\";s:15:\"top_header_back\";s:7:\"#4A5B61\";s:15:\"top_header_text\";s:7:\"#FFFFFF\";s:21:\"top_header_text_hover\";s:7:\"#C3D941\";s:23:\"top_header_button_hover\";s:7:\"#B6CB38\";s:22:\"top_header_button_text\";s:7:\"#000000\";s:28:\"top_header_button_text_hover\";s:7:\"#111111\";s:20:\"primary_button_color\";s:7:\"#C3D941\";s:26:\"primary_button_hover_color\";s:7:\"#B6CB38\";s:25:\"primary_button_text_color\";s:7:\"#000000\";s:31:\"primary_button_text_hover_color\";s:7:\"#111111\";s:17:\"footer_back_color\";s:7:\"#3d3a3a\";s:17:\"footer_text_color\";s:7:\"#ffffff\";s:17:\"navbar_back_color\";s:7:\"#ffffff\";s:22:\"navbar_menu_text_color\";s:7:\"#4A5B61\";s:28:\"navbar_menu_text_hover_color\";s:7:\"#C3D941\";s:35:\"navbar_menu_mobile_text_hover_color\";s:7:\"#C3D941\";s:29:\"navbar_menu_mobile_text_color\";s:7:\"#4A5B61\";s:26:\"navbar_dropdown_back_color\";s:7:\"#FFFFFF\";s:17:\"navbar_icon_color\";s:7:\"#C3D941\";s:23:\"social_media_icon_color\";s:7:\"#ffffff\";s:28:\"social_media_icon_back_color\";s:7:\"#000000\";s:14:\"seo_home_title\";s:11:\"The New You\";s:20:\"seo_home_description\";s:20:\"Vero odit est quia s\";s:17:\"seo_home_keywords\";s:18:\"Fuga Veniam ipsam \";s:14:\"seo_home_image\";N;s:14:\"seo_blog_title\";s:20:\"Voluptatum ipsum tem\";s:20:\"seo_blog_description\";s:20:\"Quibusdam neque prov\";s:17:\"seo_blog_keywords\";s:20:\"Quos tempora minima \";s:14:\"seo_blog_image\";N;s:17:\"seo_service_title\";s:19:\"Dolores est tempori\";s:23:\"seo_service_description\";s:20:\"Aut ut eu cupiditate\";s:20:\"seo_service_keywords\";s:20:\"Atque sunt nisi fuga\";s:17:\"seo_service_image\";N;s:17:\"seo_contact_title\";s:20:\"Illo velit voluptas \";s:23:\"seo_contact_description\";s:19:\"Magni ipsa eiusmod \";s:20:\"seo_contact_keywords\";s:19:\"Tempore quis aperia\";s:17:\"seo_contact_image\";N;}s:11:\"\0*\0original\";a:69:{s:2:\"id\";i:1;s:4:\"name\";s:13:\"Dental Clinic\";s:11:\"description\";s:103:\"Ready to discuss opportunities in ag & forestry trading, logistics coordination, or desk support roles.\";s:6:\"footer\";s:44:\"© 2025 your copyright. All rights reserved.\";s:6:\"google\";N;s:6:\"author\";s:14:\"Jonathan Davis\";s:8:\"keywords\";N;s:4:\"tags\";N;s:3:\"url\";s:31:\"http://jonathon-portfolio.test/\";s:12:\"website_logo\";s:38:\"uploads/01K4XDPPWPMRZDK1FFJEGQXA6H.png\";s:8:\"fav_icon\";s:38:\"uploads/01K4XDPPWX5KDJTTCZR5A5S533.png\";s:7:\"address\";s:21:\"Tennessee, Washington\";s:5:\"email\";s:14:\"test@gmail.com\";s:5:\"phone\";s:15:\" (123) 456-7890\";s:8:\"linkedin\";s:37:\"https://www.linkedin.com/in/durjaygp/\";s:14:\"footer_heading\";s:13:\"Let\'s Connect\";s:17:\"footer_card_title\";s:22:\"Quick Response Promise\";s:21:\"footer_card_paragraph\";s:135:\"I respond to all inquiries within 24 hours. Currently prioritizing Washington-based opportunities in ag/forestry trading and logistics.\";s:21:\"contact_spam_keywords\";N;s:10:\"created_at\";s:19:\"2025-10-01 23:49:32\";s:3:\"map\";s:396:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d193375.44825389085!2d-117.253136!3d33.191631!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dc741d0876e547%3A0x5ee679eb71b4aa9!2sTri-City%20Dental%20Excellence!5e1!3m2!1sen!2sus!4v1759323969157!5m2!1sen!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\";s:8:\"map_link\";s:197:\"https://www.google.com/maps/place/Tri-City+Dental/@33.1864518,-117.2864629,11.93z/data=!4m6!3m5!1s0x80dc741d0876e547:0x5ee679eb71b4aa9!8m2!3d33.1916313!4d-117.2531356!16s%2Fg%2F11b90dq5dh?entry=ttu\";s:10:\"updated_at\";s:19:\"2025-10-25 12:04:54\";s:13:\"primary_color\";s:7:\"#4A5B61\";s:15:\"secondary_color\";s:7:\"#F5F7F8\";s:10:\"text_color\";s:7:\"#334E57\";s:12:\"accent_color\";s:7:\"#C3D941\";s:11:\"white_color\";s:7:\"#FFFFFF\";s:13:\"divider_color\";s:9:\"#4A5B6112\";s:18:\"dark_divider_color\";s:9:\"#FFFFFF1F\";s:11:\"error_color\";s:9:\"#E65757FF\";s:17:\"top_header_button\";s:7:\"#C3D941\";s:15:\"top_header_back\";s:7:\"#4A5B61\";s:15:\"top_header_text\";s:7:\"#FFFFFF\";s:21:\"top_header_text_hover\";s:7:\"#C3D941\";s:23:\"top_header_button_hover\";s:7:\"#B6CB38\";s:22:\"top_header_button_text\";s:7:\"#000000\";s:28:\"top_header_button_text_hover\";s:7:\"#111111\";s:20:\"primary_button_color\";s:7:\"#C3D941\";s:26:\"primary_button_hover_color\";s:7:\"#B6CB38\";s:25:\"primary_button_text_color\";s:7:\"#000000\";s:31:\"primary_button_text_hover_color\";s:7:\"#111111\";s:17:\"footer_back_color\";s:7:\"#3d3a3a\";s:17:\"footer_text_color\";s:7:\"#ffffff\";s:17:\"navbar_back_color\";s:7:\"#ffffff\";s:22:\"navbar_menu_text_color\";s:7:\"#4A5B61\";s:28:\"navbar_menu_text_hover_color\";s:7:\"#C3D941\";s:35:\"navbar_menu_mobile_text_hover_color\";s:7:\"#C3D941\";s:29:\"navbar_menu_mobile_text_color\";s:7:\"#4A5B61\";s:26:\"navbar_dropdown_back_color\";s:7:\"#FFFFFF\";s:17:\"navbar_icon_color\";s:7:\"#C3D941\";s:23:\"social_media_icon_color\";s:7:\"#ffffff\";s:28:\"social_media_icon_back_color\";s:7:\"#000000\";s:14:\"seo_home_title\";s:11:\"The New You\";s:20:\"seo_home_description\";s:20:\"Vero odit est quia s\";s:17:\"seo_home_keywords\";s:18:\"Fuga Veniam ipsam \";s:14:\"seo_home_image\";N;s:14:\"seo_blog_title\";s:20:\"Voluptatum ipsum tem\";s:20:\"seo_blog_description\";s:20:\"Quibusdam neque prov\";s:17:\"seo_blog_keywords\";s:20:\"Quos tempora minima \";s:14:\"seo_blog_image\";N;s:17:\"seo_service_title\";s:19:\"Dolores est tempori\";s:23:\"seo_service_description\";s:20:\"Aut ut eu cupiditate\";s:20:\"seo_service_keywords\";s:20:\"Atque sunt nisi fuga\";s:17:\"seo_service_image\";N;s:17:\"seo_contact_title\";s:20:\"Illo velit voluptas \";s:23:\"seo_contact_description\";s:19:\"Magni ipsa eiusmod \";s:20:\"seo_contact_keywords\";s:19:\"Tempore quis aperia\";s:17:\"seo_contact_image\";N;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}', 2076753896),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:218:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"restore_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"restore_any_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"replicate_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"reorder_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"delete_any_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"force_delete_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:21:\"force_delete_any_blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:19:\"view_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:23:\"view_any_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:21:\"create_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:21:\"update_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:22:\"restore_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:26:\"restore_any_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:24:\"replicate_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:22:\"reorder_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:21:\"delete_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:25:\"delete_any_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:27:\"force_delete_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:31:\"force_delete_any_blog::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:3:{s:1:\"a\";i:25;s:1:\"b\";s:9:\"view_book\";s:1:\"c\";s:3:\"web\";}i:25;a:3:{s:1:\"a\";i:26;s:1:\"b\";s:13:\"view_any_book\";s:1:\"c\";s:3:\"web\";}i:26;a:3:{s:1:\"a\";i:27;s:1:\"b\";s:11:\"create_book\";s:1:\"c\";s:3:\"web\";}i:27;a:3:{s:1:\"a\";i:28;s:1:\"b\";s:11:\"update_book\";s:1:\"c\";s:3:\"web\";}i:28;a:3:{s:1:\"a\";i:29;s:1:\"b\";s:12:\"restore_book\";s:1:\"c\";s:3:\"web\";}i:29;a:3:{s:1:\"a\";i:30;s:1:\"b\";s:16:\"restore_any_book\";s:1:\"c\";s:3:\"web\";}i:30;a:3:{s:1:\"a\";i:31;s:1:\"b\";s:14:\"replicate_book\";s:1:\"c\";s:3:\"web\";}i:31;a:3:{s:1:\"a\";i:32;s:1:\"b\";s:12:\"reorder_book\";s:1:\"c\";s:3:\"web\";}i:32;a:3:{s:1:\"a\";i:33;s:1:\"b\";s:11:\"delete_book\";s:1:\"c\";s:3:\"web\";}i:33;a:3:{s:1:\"a\";i:34;s:1:\"b\";s:15:\"delete_any_book\";s:1:\"c\";s:3:\"web\";}i:34;a:3:{s:1:\"a\";i:35;s:1:\"b\";s:17:\"force_delete_book\";s:1:\"c\";s:3:\"web\";}i:35;a:3:{s:1:\"a\";i:36;s:1:\"b\";s:21:\"force_delete_any_book\";s:1:\"c\";s:3:\"web\";}i:36;a:3:{s:1:\"a\";i:37;s:1:\"b\";s:16:\"book:create_book\";s:1:\"c\";s:3:\"web\";}i:37;a:3:{s:1:\"a\";i:38;s:1:\"b\";s:16:\"book:update_book\";s:1:\"c\";s:3:\"web\";}i:38;a:3:{s:1:\"a\";i:39;s:1:\"b\";s:16:\"book:delete_book\";s:1:\"c\";s:3:\"web\";}i:39;a:3:{s:1:\"a\";i:40;s:1:\"b\";s:20:\"book:pagination_book\";s:1:\"c\";s:3:\"web\";}i:40;a:3:{s:1:\"a\";i:41;s:1:\"b\";s:16:\"book:detail_book\";s:1:\"c\";s:3:\"web\";}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:13:\"view_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:17:\"view_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:15:\"create_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:15:\"update_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:16:\"restore_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:20:\"restore_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:18:\"replicate_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:16:\"reorder_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:15:\"delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:19:\"delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:21:\"force_delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:25:\"force_delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:3:{s:1:\"a\";i:54;s:1:\"b\";s:11:\"view_coupon\";s:1:\"c\";s:3:\"web\";}i:54;a:3:{s:1:\"a\";i:55;s:1:\"b\";s:15:\"view_any_coupon\";s:1:\"c\";s:3:\"web\";}i:55;a:3:{s:1:\"a\";i:56;s:1:\"b\";s:13:\"create_coupon\";s:1:\"c\";s:3:\"web\";}i:56;a:3:{s:1:\"a\";i:57;s:1:\"b\";s:13:\"update_coupon\";s:1:\"c\";s:3:\"web\";}i:57;a:3:{s:1:\"a\";i:58;s:1:\"b\";s:14:\"restore_coupon\";s:1:\"c\";s:3:\"web\";}i:58;a:3:{s:1:\"a\";i:59;s:1:\"b\";s:18:\"restore_any_coupon\";s:1:\"c\";s:3:\"web\";}i:59;a:3:{s:1:\"a\";i:60;s:1:\"b\";s:16:\"replicate_coupon\";s:1:\"c\";s:3:\"web\";}i:60;a:3:{s:1:\"a\";i:61;s:1:\"b\";s:14:\"reorder_coupon\";s:1:\"c\";s:3:\"web\";}i:61;a:3:{s:1:\"a\";i:62;s:1:\"b\";s:13:\"delete_coupon\";s:1:\"c\";s:3:\"web\";}i:62;a:3:{s:1:\"a\";i:63;s:1:\"b\";s:17:\"delete_any_coupon\";s:1:\"c\";s:3:\"web\";}i:63;a:3:{s:1:\"a\";i:64;s:1:\"b\";s:19:\"force_delete_coupon\";s:1:\"c\";s:3:\"web\";}i:64;a:3:{s:1:\"a\";i:65;s:1:\"b\";s:23:\"force_delete_any_coupon\";s:1:\"c\";s:3:\"web\";}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:19:\"view_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:23:\"view_any_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:21:\"create_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:21:\"update_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:22:\"restore_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:26:\"restore_any_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:24:\"replicate_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:22:\"reorder_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:21:\"delete_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:25:\"delete_any_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:27:\"force_delete_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:31:\"force_delete_any_custom::review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:8:\"view_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:12:\"view_any_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:10:\"create_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:10:\"update_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:11:\"restore_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:15:\"restore_any_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:13:\"replicate_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:11:\"reorder_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:10:\"delete_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:14:\"delete_any_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:16:\"force_delete_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:20:\"force_delete_any_faq\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:22:\"view_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:26:\"view_any_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:24:\"create_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:24:\"update_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:25:\"restore_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:29:\"restore_any_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:27:\"replicate_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:25:\"reorder_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:24:\"delete_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:28:\"delete_any_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:30:\"force_delete_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:34:\"force_delete_any_homepage::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:3:{s:1:\"a\";i:102;s:1:\"b\";s:12:\"view_product\";s:1:\"c\";s:3:\"web\";}i:102;a:3:{s:1:\"a\";i:103;s:1:\"b\";s:16:\"view_any_product\";s:1:\"c\";s:3:\"web\";}i:103;a:3:{s:1:\"a\";i:104;s:1:\"b\";s:14:\"create_product\";s:1:\"c\";s:3:\"web\";}i:104;a:3:{s:1:\"a\";i:105;s:1:\"b\";s:14:\"update_product\";s:1:\"c\";s:3:\"web\";}i:105;a:3:{s:1:\"a\";i:106;s:1:\"b\";s:15:\"restore_product\";s:1:\"c\";s:3:\"web\";}i:106;a:3:{s:1:\"a\";i:107;s:1:\"b\";s:19:\"restore_any_product\";s:1:\"c\";s:3:\"web\";}i:107;a:3:{s:1:\"a\";i:108;s:1:\"b\";s:17:\"replicate_product\";s:1:\"c\";s:3:\"web\";}i:108;a:3:{s:1:\"a\";i:109;s:1:\"b\";s:15:\"reorder_product\";s:1:\"c\";s:3:\"web\";}i:109;a:3:{s:1:\"a\";i:110;s:1:\"b\";s:14:\"delete_product\";s:1:\"c\";s:3:\"web\";}i:110;a:3:{s:1:\"a\";i:111;s:1:\"b\";s:18:\"delete_any_product\";s:1:\"c\";s:3:\"web\";}i:111;a:3:{s:1:\"a\";i:112;s:1:\"b\";s:20:\"force_delete_product\";s:1:\"c\";s:3:\"web\";}i:112;a:3:{s:1:\"a\";i:113;s:1:\"b\";s:24:\"force_delete_any_product\";s:1:\"c\";s:3:\"web\";}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:3:{s:1:\"a\";i:120;s:1:\"b\";s:9:\"view_size\";s:1:\"c\";s:3:\"web\";}i:120;a:3:{s:1:\"a\";i:121;s:1:\"b\";s:13:\"view_any_size\";s:1:\"c\";s:3:\"web\";}i:121;a:3:{s:1:\"a\";i:122;s:1:\"b\";s:11:\"create_size\";s:1:\"c\";s:3:\"web\";}i:122;a:3:{s:1:\"a\";i:123;s:1:\"b\";s:11:\"update_size\";s:1:\"c\";s:3:\"web\";}i:123;a:3:{s:1:\"a\";i:124;s:1:\"b\";s:12:\"restore_size\";s:1:\"c\";s:3:\"web\";}i:124;a:3:{s:1:\"a\";i:125;s:1:\"b\";s:16:\"restore_any_size\";s:1:\"c\";s:3:\"web\";}i:125;a:3:{s:1:\"a\";i:126;s:1:\"b\";s:14:\"replicate_size\";s:1:\"c\";s:3:\"web\";}i:126;a:3:{s:1:\"a\";i:127;s:1:\"b\";s:12:\"reorder_size\";s:1:\"c\";s:3:\"web\";}i:127;a:3:{s:1:\"a\";i:128;s:1:\"b\";s:11:\"delete_size\";s:1:\"c\";s:3:\"web\";}i:128;a:3:{s:1:\"a\";i:129;s:1:\"b\";s:15:\"delete_any_size\";s:1:\"c\";s:3:\"web\";}i:129;a:3:{s:1:\"a\";i:130;s:1:\"b\";s:17:\"force_delete_size\";s:1:\"c\";s:3:\"web\";}i:130;a:3:{s:1:\"a\";i:131;s:1:\"b\";s:21:\"force_delete_any_size\";s:1:\"c\";s:3:\"web\";}i:131;a:3:{s:1:\"a\";i:132;s:1:\"b\";s:16:\"view_subcategory\";s:1:\"c\";s:3:\"web\";}i:132;a:3:{s:1:\"a\";i:133;s:1:\"b\";s:20:\"view_any_subcategory\";s:1:\"c\";s:3:\"web\";}i:133;a:3:{s:1:\"a\";i:134;s:1:\"b\";s:18:\"create_subcategory\";s:1:\"c\";s:3:\"web\";}i:134;a:3:{s:1:\"a\";i:135;s:1:\"b\";s:18:\"update_subcategory\";s:1:\"c\";s:3:\"web\";}i:135;a:3:{s:1:\"a\";i:136;s:1:\"b\";s:19:\"restore_subcategory\";s:1:\"c\";s:3:\"web\";}i:136;a:3:{s:1:\"a\";i:137;s:1:\"b\";s:23:\"restore_any_subcategory\";s:1:\"c\";s:3:\"web\";}i:137;a:3:{s:1:\"a\";i:138;s:1:\"b\";s:21:\"replicate_subcategory\";s:1:\"c\";s:3:\"web\";}i:138;a:3:{s:1:\"a\";i:139;s:1:\"b\";s:19:\"reorder_subcategory\";s:1:\"c\";s:3:\"web\";}i:139;a:3:{s:1:\"a\";i:140;s:1:\"b\";s:18:\"delete_subcategory\";s:1:\"c\";s:3:\"web\";}i:140;a:3:{s:1:\"a\";i:141;s:1:\"b\";s:22:\"delete_any_subcategory\";s:1:\"c\";s:3:\"web\";}i:141;a:3:{s:1:\"a\";i:142;s:1:\"b\";s:24:\"force_delete_subcategory\";s:1:\"c\";s:3:\"web\";}i:142;a:3:{s:1:\"a\";i:143;s:1:\"b\";s:28:\"force_delete_any_subcategory\";s:1:\"c\";s:3:\"web\";}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:10:\"view_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:14:\"view_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:12:\"create_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:12:\"update_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:13:\"restore_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:17:\"restore_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:15:\"replicate_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:13:\"reorder_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:12:\"delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:152;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:16:\"delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:153;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:18:\"force_delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:154;a:4:{s:1:\"a\";i:155;s:1:\"b\";s:22:\"force_delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:155;a:3:{s:1:\"a\";i:156;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";}i:156;a:3:{s:1:\"a\";i:157;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";}i:157;a:3:{s:1:\"a\";i:158;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";}i:158;a:3:{s:1:\"a\";i:159;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";}i:159;a:3:{s:1:\"a\";i:160;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";}i:160;a:3:{s:1:\"a\";i:161;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";}i:161;a:3:{s:1:\"a\";i:162;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";}i:162;a:3:{s:1:\"a\";i:163;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";}i:163;a:3:{s:1:\"a\";i:164;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";}i:164;a:3:{s:1:\"a\";i:165;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";}i:165;a:3:{s:1:\"a\";i:166;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";}i:166;a:3:{s:1:\"a\";i:167;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";}i:167;a:4:{s:1:\"a\";i:168;s:1:\"b\";s:21:\"view_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:168;a:4:{s:1:\"a\";i:169;s:1:\"b\";s:25:\"view_any_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:169;a:4:{s:1:\"a\";i:170;s:1:\"b\";s:23:\"create_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:170;a:4:{s:1:\"a\";i:171;s:1:\"b\";s:23:\"update_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:171;a:4:{s:1:\"a\";i:172;s:1:\"b\";s:24:\"restore_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:172;a:4:{s:1:\"a\";i:173;s:1:\"b\";s:28:\"restore_any_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:173;a:4:{s:1:\"a\";i:174;s:1:\"b\";s:26:\"replicate_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:174;a:4:{s:1:\"a\";i:175;s:1:\"b\";s:24:\"reorder_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:175;a:4:{s:1:\"a\";i:176;s:1:\"b\";s:23:\"delete_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:176;a:4:{s:1:\"a\";i:177;s:1:\"b\";s:27:\"delete_any_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:177;a:4:{s:1:\"a\";i:178;s:1:\"b\";s:29:\"force_delete_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:178;a:4:{s:1:\"a\";i:179;s:1:\"b\";s:33:\"force_delete_any_website::setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:179;a:4:{s:1:\"a\";i:180;s:1:\"b\";s:18:\"page_ManageSetting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:180;a:4:{s:1:\"a\";i:181;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:181;a:4:{s:1:\"a\";i:182;s:1:\"b\";s:18:\"page_MyProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:182;a:4:{s:1:\"a\";i:183;s:1:\"b\";s:12:\"view_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:183;a:4:{s:1:\"a\";i:184;s:1:\"b\";s:16:\"view_any_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:184;a:4:{s:1:\"a\";i:185;s:1:\"b\";s:14:\"create_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:185;a:4:{s:1:\"a\";i:186;s:1:\"b\";s:14:\"update_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:186;a:4:{s:1:\"a\";i:187;s:1:\"b\";s:15:\"restore_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:187;a:4:{s:1:\"a\";i:188;s:1:\"b\";s:19:\"restore_any_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:188;a:4:{s:1:\"a\";i:189;s:1:\"b\";s:17:\"replicate_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:189;a:4:{s:1:\"a\";i:190;s:1:\"b\";s:15:\"reorder_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:190;a:4:{s:1:\"a\";i:191;s:1:\"b\";s:14:\"delete_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:191;a:4:{s:1:\"a\";i:192;s:1:\"b\";s:18:\"delete_any_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:192;a:4:{s:1:\"a\";i:193;s:1:\"b\";s:20:\"force_delete_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:193;a:4:{s:1:\"a\";i:194;s:1:\"b\";s:24:\"force_delete_any_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:194;a:4:{s:1:\"a\";i:195;s:1:\"b\";s:11:\"view_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:195;a:4:{s:1:\"a\";i:196;s:1:\"b\";s:15:\"view_any_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:196;a:4:{s:1:\"a\";i:197;s:1:\"b\";s:13:\"create_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:197;a:4:{s:1:\"a\";i:198;s:1:\"b\";s:13:\"update_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:198;a:4:{s:1:\"a\";i:199;s:1:\"b\";s:14:\"restore_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:199;a:4:{s:1:\"a\";i:200;s:1:\"b\";s:18:\"restore_any_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:200;a:4:{s:1:\"a\";i:201;s:1:\"b\";s:16:\"replicate_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:201;a:4:{s:1:\"a\";i:202;s:1:\"b\";s:14:\"reorder_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:202;a:4:{s:1:\"a\";i:203;s:1:\"b\";s:13:\"delete_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:203;a:4:{s:1:\"a\";i:204;s:1:\"b\";s:17:\"delete_any_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:204;a:4:{s:1:\"a\";i:205;s:1:\"b\";s:19:\"force_delete_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:205;a:4:{s:1:\"a\";i:206;s:1:\"b\";s:23:\"force_delete_any_doctor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:206;a:4:{s:1:\"a\";i:207;s:1:\"b\";s:12:\"view_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:207;a:4:{s:1:\"a\";i:208;s:1:\"b\";s:16:\"view_any_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:208;a:4:{s:1:\"a\";i:209;s:1:\"b\";s:14:\"create_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:209;a:4:{s:1:\"a\";i:210;s:1:\"b\";s:14:\"update_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:210;a:4:{s:1:\"a\";i:211;s:1:\"b\";s:15:\"restore_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:211;a:4:{s:1:\"a\";i:212;s:1:\"b\";s:19:\"restore_any_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:212;a:4:{s:1:\"a\";i:213;s:1:\"b\";s:17:\"replicate_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:213;a:4:{s:1:\"a\";i:214;s:1:\"b\";s:15:\"reorder_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:214;a:4:{s:1:\"a\";i:215;s:1:\"b\";s:14:\"delete_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:215;a:4:{s:1:\"a\";i:216;s:1:\"b\";s:18:\"delete_any_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:216;a:4:{s:1:\"a\";i:217;s:1:\"b\";s:20:\"force_delete_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:217;a:4:{s:1:\"a\";i:218;s:1:\"b\";s:24:\"force_delete_any_service\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}}}', 1761479070);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'Appetizers', 'appetizers', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-06 02:07:17', '1'),
(2, 'Main Dishes', 'main-dishes', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-06 02:07:21', '1'),
(3, 'Salads', 'salads', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-06 02:07:24', '1'),
(4, 'Soups', 'soups', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-06 02:09:21', '1'),
(5, 'Side Dishes', 'side-dishes', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL),
(6, 'Breakfast & Brunch', 'breakfast-brunch', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-06 02:09:24', '1'),
(7, 'Desserts', 'desserts', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-06 02:09:09', '0'),
(8, 'Beverages', 'beverages', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL),
(9, 'Snacks', 'snacks', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL),
(10, 'International Cuisine', 'international-cuisine', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-06 02:08:28', '1'),
(11, 'Vegan & Vegetarian', 'vegan-vegetarian', NULL, NULL, 1, '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Aut quis et aliquam ', 'kivisucugi@mailinator.com', 'Voluptate in eaque m', 'Aperiam qui sed quid', '2025-09-11 14:43:21', '2025-09-11 14:43:21'),
(2, 'Vitae dolor reiciend', 'wuxog@mailinator.com', 'Doloribus commodi do', 'Sint autem consectet', '2025-09-11 14:43:31', '2025-09-11 14:43:31'),
(3, 'Sed itaque ad volupt', 'cuwyriro@mailinator.com', 'Aspernatur ex eum a ', 'Corrupti amet aut ', '2025-10-09 05:44:34', '2025-10-09 05:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_reviews`
--

CREATE TABLE `custom_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `review` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_reviews`
--

INSERT INTO `custom_reviews` (`id`, `name`, `rating`, `subject`, `review`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Emily Johnson', '5', 'Amazing Teeth Cleaning', 'I had a wonderful experience! The staff was very friendly and professional. My teeth feel cleaner than ever and I didn’t feel rushed at all. Highly recommend!', 'reviews/emily.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(2, 'Michael Smith', '4', 'Quick Emergency Visit', 'I had a terrible toothache and they scheduled me the same day. The dentist was very gentle during the extraction and explained everything clearly. Great service!', 'reviews/michael.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(3, 'Sarah Williams', '5', 'Beautiful Veneers', 'I finally decided to get veneers and I couldn’t be happier with the results. My smile looks so natural and I feel more confident than ever!', 'reviews/sarah.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(4, 'David Brown', '5', 'Best Pediatric Dentistry', 'Took my 7-year-old daughter for her first dental check-up and she loved it! The dentist was so kind and explained things in a way that made her feel comfortable.', 'reviews/david.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(5, 'Jessica Taylor', '4', 'Invisalign Treatment', 'I’ve been doing Invisalign here for 8 months and the results are fantastic. The staff always follows up to make sure everything is going smoothly.', 'reviews/jessica.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(6, 'Olivia Martinez', '5', 'Professional Staff', 'The team is very professional and caring. My routine checkups are always thorough and comfortable.', 'reviews/olivia.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(7, 'Liam Anderson', '4', 'Friendly Environment', 'I was nervous about getting a root canal, but the staff made me feel at ease. Highly recommended!', 'reviews/liam.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(8, 'Sophia Robinson', '5', 'Teeth Whitening Results', 'Amazing teeth whitening service! My smile looks brighter and the procedure was painless.', 'reviews/sophia.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(9, 'Noah Wilson', '4', 'Gentle Dentist', 'The dentist is very gentle and explains every step. I feel confident visiting here regularly.', 'reviews/noah.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(10, 'Ava Lewis', '5', 'Dental Implants Success', 'Got my dental implants done here and the results are excellent. The process was smooth and pain-free.', 'reviews/ava.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(11, 'James Hall', '5', 'Comfortable Visit', 'Very comfortable environment. I never thought going to the dentist could feel this relaxing!', 'reviews/james.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(12, 'Isabella Young', '4', 'Good Cosmetic Dentistry', 'Had cosmetic work done on my teeth. Staff is knowledgeable and the results look natural.', 'reviews/isabella.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(13, 'Benjamin King', '5', 'Friendly with Kids', 'Took my son for his first dental cleaning. The staff is excellent with kids and made him feel comfortable.', 'reviews/benjamin.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(14, 'Mia Scott', '5', 'Emergency Care', 'I had a dental emergency and they saw me immediately. Very professional and caring service!', 'reviews/mia.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55'),
(15, 'William Adams', '4', 'Clear Explanations', 'The dentist explained the procedure clearly and answered all my questions. Very reassuring experience.', 'reviews/william.jpg', 1, '2025-09-11 09:57:55', '2025-09-11 09:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `additional_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `image`, `designation`, `about`, `additional_info`, `address`, `email`, `phone`, `twitter`, `facebook`, `instagram`, `linkedin`, `other_website`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Dr. Miguel Torres', 'uploads/team-6.jpg', 'Pediatric Dentist', 'Dedicated to children’s oral health.', 'Creates a fun and safe environment for kids.', '303 Maple St, San Jose, CA, USA', 'miguel.torres@caldental.com', '+1 (408) 555-6006', 'https://twitter.com/drmiguelto', NULL, NULL, NULL, NULL, '1', '2025-09-11 14:12:00', '2025-09-11 14:12:00'),
(7, 'Dr. Anita Sharma', 'uploads/team-7.jpg', 'Oral Pathologist', 'Expert in diagnosing oral diseases.', 'Researcher in oral cancer and infections.', '404 Elm St, Oakland, CA, USA', 'anita.sharma@caldental.com', '+1 (510) 555-7007', NULL, 'https://facebook.com/dranitasharma', NULL, 'https://linkedin.com/in/dranitasharma', NULL, '1', '2025-09-11 14:12:00', '2025-09-11 14:12:00'),
(8, 'Dr. Kevin Brown', 'uploads/team-8.jpg', 'General Dentist', 'Provides comprehensive dental care and routine checkups.', 'Over 20 years of experience in family dentistry.', '505 Beach Dr, Santa Monica, CA, USA', 'kevin.brown@caldental.com', '+1 (310) 555-8008', NULL, NULL, 'https://instagram.com/drkevinbrown', NULL, NULL, '1', '2025-09-11 14:12:00', '2025-09-11 14:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exporter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint UNSIGNED NOT NULL,
  `data` json NOT NULL,
  `import_id` bigint UNSIGNED NOT NULL,
  `validation_error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'cd796c18-8566-4d61-a5f6-ff4b3f02e366', 'database', 'default', '{\"uuid\":\"cd796c18-8566-4d61-a5f6-ff4b3f02e366\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:12;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:39:\\\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\\\":2:{s:3:\\\"url\\\";s:194:\\\"http:\\/\\/norwayrecipe.test\\/admin\\/email-verification\\/verify\\/12\\/e2cc4d2a88790bb008c6bd2cf602b8be455c1723?expires=1749465993&signature=8eb980d00e9d0d95572f1d65fc6758e1a6588fdd30f2c955319781a424e94aba\\\";s:2:\\\"id\\\";s:36:\\\"bf074301-6d8b-4159-8050-f001f1fbf5b3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1749462394,\"delay\":null}', 'Resend\\Exceptions\\ErrorException: API key is invalid in D:\\laragon\\www\\norwayrecipe\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php:95\nStack trace:\n#0 D:\\laragon\\www\\norwayrecipe\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php(47): Resend\\Transporters\\HttpTransporter->throwIfJsonError(Array, \'{\"statusCode\":4...\')\n#1 D:\\laragon\\www\\norwayrecipe\\vendor\\resend\\resend-php\\src\\Service\\Email.php(32): Resend\\Transporters\\HttpTransporter->request(Object(Resend\\ValueObjects\\Transporter\\Payload))\n#2 D:\\laragon\\www\\norwayrecipe\\vendor\\resend\\resend-php\\src\\Service\\Email.php(44): Resend\\Service\\Email->create(Array)\n#3 D:\\laragon\\www\\norwayrecipe\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php(62): Resend\\Service\\Email->send(Array)\n#4 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send(Object(Closure), Array, Object(Closure))\n#8 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(159): Illuminate\\Notifications\\Channels\\MailChannel->send(Object(App\\Models\\User), Object(Filament\\Notifications\\Auth\\VerifyEmail))\n#9 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(116): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(App\\Models\\User), \'8e557d7b-30d2-4...\', Object(Filament\\Notifications\\Auth\\VerifyEmail), \'mail\')\n#10 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#11 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(111): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#12 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(Filament\\Notifications\\Auth\\VerifyEmail), Array)\n#13 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\SendQueuedNotifications.php(118): Illuminate\\Notifications\\ChannelManager->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(Filament\\Notifications\\Auth\\VerifyEmail), Array)\n#14 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#15 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Container\\Container->call(Array)\n#20 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#21 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#22 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#24 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#25 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#26 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#28 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#40 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\laragon\\www\\norwayrecipe\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#48 {main}\n\nNext Symfony\\Component\\Mailer\\Exception\\TransportException: Request to the Resend API failed. Reason: API key is invalid in D:\\laragon\\www\\norwayrecipe\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php:75\nStack trace:\n#0 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#1 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#2 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#3 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send(Object(Closure), Array, Object(Closure))\n#4 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(159): Illuminate\\Notifications\\Channels\\MailChannel->send(Object(App\\Models\\User), Object(Filament\\Notifications\\Auth\\VerifyEmail))\n#5 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(116): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(App\\Models\\User), \'8e557d7b-30d2-4...\', Object(Filament\\Notifications\\Auth\\VerifyEmail), \'mail\')\n#6 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#7 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(111): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#8 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(Filament\\Notifications\\Auth\\VerifyEmail), Array)\n#9 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\SendQueuedNotifications.php(118): Illuminate\\Notifications\\ChannelManager->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(Filament\\Notifications\\Auth\\VerifyEmail), Array)\n#10 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#11 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#13 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Container\\Container->call(Array)\n#16 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#17 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#18 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#20 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#21 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#22 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#24 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#25 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#27 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#30 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#32 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#33 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#34 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#35 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#36 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\laragon\\www\\norwayrecipe\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 D:\\laragon\\www\\norwayrecipe\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\laragon\\www\\norwayrecipe\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#44 {main}', '2025-06-10 13:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(3, 'What services do you offer?', 'Yes, we accept a variety of insurance plans. Please contact our office to verify if your specific insurance provider is accepted and to discuss coverage.', 1, '2025-10-09 15:41:55', '2025-10-09 15:41:55'),
(4, 'How often should I visit the dentist?', 'Dental sealants are thin, protective coatings applied to the chewing surfaces of molars to prevent cavities.', 1, '2025-10-09 15:41:55', '2025-10-09 15:41:55'),
(5, 'Do you accept insurance?', 'Yes, teeth whitening treatments performed by a dentist or with dentist-approved products are safe and effective.', 1, '2025-10-09 15:41:55', '2025-10-09 15:41:55'),
(6, 'What can I expect during my first visit?', 'Cosmetic dentistry focuses on improving the appearance of teeth, gums, and smile through procedures like whitening, veneers, and bonding.', 1, '2025-10-09 15:41:55', '2025-10-09 15:41:55'),
(7, 'Do you offer emergency dental care?', 'At-home whitening options include over-the-counter whitening strips, gels, toothpaste, and custom trays provided by your dentist.', 1, '2025-10-09 15:41:55', '2025-10-09 15:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_settings`
--

CREATE TABLE `homepage_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `header_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_title_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_phone_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_title_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_title_four` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_second_line_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_small_paragraph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_button` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_json_button` json DEFAULT NULL,
  `target_roles` json DEFAULT NULL,
  `header_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_button` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_list` json DEFAULT NULL,
  `experience` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `patients` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `treatment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `working_hours` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `facebook` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whatsapp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instagram` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tiktok` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `telegram` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `snapchat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pinterest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `about_status` tinyint(1) DEFAULT NULL,
  `process_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `process_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `process_paragraph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `process_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `process_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `process_step` json DEFAULT NULL,
  `process_status` tinyint(1) DEFAULT NULL,
  `choose_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `choose_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `choose_paragraph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `choose_options` json DEFAULT NULL,
  `choose_status` tinyint(1) DEFAULT NULL,
  `testimonials_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonials_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonials_paragraph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonials_status` tinyint(1) DEFAULT NULL,
  `provide_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `provide_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `provide_paragraph` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `provide_video_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `provide_video_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `provide_options` json DEFAULT NULL,
  `provide_status` tinyint(1) DEFAULT NULL,
  `team_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `team_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `team_paragraph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `team_status` tinyint(1) DEFAULT NULL,
  `blog_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_paragraph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_status` tinyint(1) DEFAULT NULL,
  `contact_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_paragraph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_status` tinyint(1) DEFAULT NULL,
  `service_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_paragraph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_status` tinyint DEFAULT NULL,
  `service_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_features` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepage_settings`
--

INSERT INTO `homepage_settings` (`id`, `header_title`, `header_video`, `header_title_two`, `header_phone_number`, `header_title_three`, `header_title_four`, `header_second_line_title`, `header_small_paragraph`, `header_button`, `header_button_url`, `header_json_button`, `target_roles`, `header_image`, `about_title`, `about_description`, `about_button`, `about_button_url`, `about_image`, `about_us_list`, `experience`, `patients`, `treatment`, `total_review`, `working_hours`, `created_at`, `facebook`, `whatsapp`, `youtube`, `instagram`, `tiktok`, `telegram`, `snapchat`, `twitter`, `pinterest`, `updated_at`, `about_status`, `process_title`, `process_header`, `process_paragraph`, `process_button`, `process_button_url`, `process_step`, `process_status`, `choose_title`, `choose_header`, `choose_paragraph`, `choose_options`, `choose_status`, `testimonials_title`, `testimonials_header`, `testimonials_paragraph`, `testimonials_status`, `provide_title`, `provide_header`, `provide_paragraph`, `provide_video_link`, `provide_video_image`, `provide_options`, `provide_status`, `team_title`, `team_header`, `team_paragraph`, `team_status`, `blog_title`, `blog_header`, `blog_paragraph`, `blog_status`, `contact_title`, `contact_header`, `contact_paragraph`, `contact_status`, `service_title`, `service_paragraph`, `service_status`, `service_header`, `hero_features`) VALUES
(1, 'Exceptional dental care for every stage of your journey', 'uploads/01K4QZN08NMCSJ7TTP7XN87M41.mp4', 'Mon to Sat 9:00AM to 9:00PM', '(+01) 987 828 745', 'appointment@mail.com', 'Physical Commodity Trading', NULL, 'We are committed to providing top-notch dental care in a comfortable and friendly environment.', 'book appointment', '/book', '[{\"url\": \"#FastFacts\", \"text\": \"book appointment\", \"color\": \"gray-500\"}]', '[{\"type\": \"list\", \"role_name\": \"Logistics / Operations Coordinator\"}, {\"type\": \"list\", \"role_name\": \"Trader Assistant / Desk Support\"}, {\"type\": \"list\", \"role_name\": \"Export Documentation (B/L, L/C, SOF)\"}, {\"type\": \"button\", \"role_name\": \"FOB • CIF • CFR\"}, {\"type\": \"button\", \"role_name\": \"Letters of Credit\"}, {\"type\": \"button\", \"role_name\": \"Laytime & Demurrage\"}, {\"type\": \"button\", \"role_name\": \"Bulk & Container Flow\"}]', NULL, 'The evolution of our company and the people who made It possible', 'The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic and specialist dental treatments With dental practice throughout the world.', 'Read More', '/about', 'uploads/01K4R07Q2Y8326F6B06G5R3QE2.jpg', '[{\"list\": \"Experienced Team\"}, {\"list\": \"Emergency Dental Services\"}, {\"list\": \"State-of-the-Art Technology\"}, {\"list\": \"Comprehensive Services\"}]', '20', '5000', '986', '1250', '[{\"day\": \"Monday\", \"hours\": \"8 AM - 5 PM\"}, {\"day\": \"Tuesday\", \"hours\": \"10 AM - 7 PM\"}, {\"day\": \"Wednesday\", \"hours\": \"8 AM - 5 PM\"}, {\"day\": \"Thursday\", \"hours\": \"10 AM - 7 PM\"}, {\"day\": \"Friday\", \"hours\": \"8 AM - 3 PM\"}]', NULL, 'ggrg', 'gg', 'gg', NULL, 'dgdgd', 'sdfdf', NULL, NULL, 'gfs', '2025-10-16 17:09:28', 1, 'our process', 'A Step by Step Guide to Our Dental Care Process', 'The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.', 'get in touch', '#', '[{\"icon\": \"uploads/01K6G53ST17CZCR04P7ADTHNJ6.svg\", \"title\": \"initial consultation\", \"paragraph\": \"Your journey begins with an in-depth consultation. We\'ll listen to your concerns, discuss your goals.\"}, {\"icon\": \"uploads/01K6G53ST9TE27ZDNK7775927X.svg\", \"title\": \"treatment by experts\", \"paragraph\": \"Once the plan is finalized, we\'ll proceed with your treatment. Our expert team will guide you.\"}, {\"icon\": \"uploads/01K6G53STJFA1DHGW3WF59QYM2.svg\", \"title\": \"follow-up care\", \"paragraph\": \"After your treatment, we\'ll schedule any necessary follow-up appointments to monitor your progress.\"}]', 1, 'why Choose Us', 'Exceptional dental care\ntailored to your needs', 'We take the time to understand your individual needs and goals, creating customized treatment plans to help you achieve optimal oral health.\nwe believe that your dental experience should be more than just a routine visit. Our goal is to provide comprehensive, personalized care in a welcoming environment, where your comfort and well-being come first.', '[{\"icon\": \"uploads/01K6G4R91DVZWR1QPWNSZXB5XE.svg\", \"title\": \"personalized care for patient\", \"paragraph\": \"We understand that each patient is unique and listen to concerns.\"}, {\"icon\": \"uploads/01K6G4R93AZ3VN82T0QA9SAQSP.svg\", \"title\": \"cutting edge technology\", \"paragraph\": \"We invest in the latest dental technology to give you.\"}, {\"icon\": \"uploads/01K6G4T2796AVJGZB7EEZXE8Q3.svg\", \"title\": \"family friendly\", \"paragraph\": \"No matter your age or dental needs, we are here to help.\"}]', 1, 'testimonials', 'Listen from our happy patients', 'The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.', 1, 'what we provide', 'Experience comfort, technology, and care at our advanced dental facility', 'We believe that a welcoming, state-of-the-art facility is key to delivering exceptional dental care. Our practice is designed not only to provide cutting-edge treatments but also to create an environment where patients feel relaxed and confident in their care.', 'https://www.youtube.com/watch?v=GodkRBghOsA', NULL, '[{\"title\": \"comfort & care\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}, {\"title\": \"advanced technology\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}, {\"title\": \"sterilization & safety\", \"paragraph\": \"We understand that visiting the dentist can sometimes feel intimidating, which is why we\'ve created a space.\"}]', 1, 'our team', 'Experienced and caring dental team', 'The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.', 1, NULL, NULL, NULL, NULL, 'contact us', 'Get in touch with us', 'The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.', 1, 'Our Service', 'The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.', 1, 'Explore the solutions we provide', '[{\"image\": \"01K7QMJ55RZCHVAQ99CET3K0BC.svg\", \"title\": \"experience doctor\"}, {\"image\": \"01K7QMJ55ZXG88ET2RWNPV036H.svg\", \"title\": \"personalized care\"}, {\"image\": \"01K7QMJ5643NB8TD416S7Q5VQM.svg\", \"title\": \"flexible payment option\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`id`, `completed_at`, `file_name`, `file_path`, `importer`, `processed_rows`, `total_rows`, `successful_rows`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2025-06-10 13:49:31', 'recipes_sample_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/ShqvwEuPV8isbAIUa4wD5CHloPTn6x-metacmVjaXBlc19zYW1wbGVfaW1wb3J0LmNzdg==-.csv', 'App\\Filament\\Imports\\RecipeImporter', 5, 5, 5, 11, '2025-06-10 13:46:53', '2025-06-10 13:49:31'),
(2, '2025-06-10 13:52:38', 'recipes_sam11ple_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/JPsJqobz0jkiTbhTVK3XnhrBaBmVf5-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQuY3N2-.csv', 'App\\Filament\\Imports\\RecipeImporter', 5, 5, 5, 11, '2025-06-10 13:52:37', '2025-06-10 13:52:38'),
(3, '2025-06-10 14:05:03', 'recipes_sam11ple_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/ycdCrVqnjY3LKvoa6ycXcg2nNaYwbd-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQuY3N2-.csv', 'App\\Filament\\Imports\\RecipeImporter', 5, 5, 5, 11, '2025-06-10 14:05:02', '2025-06-10 14:05:03'),
(4, '2025-06-10 14:20:28', 'recipes_sam11ple_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/zdMpagogTqhbn4x5oH13UsHaWWlsFp-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQuY3N2-.csv', 'App\\Filament\\Imports\\RecipeImporter', 5, 5, 5, 11, '2025-06-10 14:20:26', '2025-06-10 14:20:28'),
(5, NULL, 'recipes_sam11ple_import - Copy.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/PBVsKIWuE0Kj9ZPj48cGQvZF2JNWlq-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQgLSBDb3B5LmNzdg==-.csv', 'App\\Filament\\Imports\\RecipeImporter', 5, 5, 0, 11, '2025-06-10 14:26:49', '2025-06-10 14:27:26'),
(6, NULL, 'recipes_sam11ple_import - Copy.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/FIvR1mf38OgwpEMs43dVndBec1A3jd-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQgLSBDb3B5LmNzdg==-.csv', 'App\\Filament\\Imports\\RecipeImporter', 0, 5, 0, 11, '2025-06-10 14:28:53', '2025-06-10 14:28:53'),
(7, NULL, 'recipes_sam11ple_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/BOA9WtxPOI24Qzi9kJAUhjJCHMORyT-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQuY3N2-.csv', 'App\\Filament\\Imports\\RecipeImporter', 0, 5, 0, 11, '2025-06-10 14:30:20', '2025-06-10 14:30:20'),
(8, NULL, 'recipes_sam11ple_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/MpQ8tOb9kdIU4oJ6Xu2asnWI3nXl4I-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQuY3N2-.csv', 'App\\Filament\\Imports\\RecipeImporter', 0, 5, 0, 11, '2025-06-10 14:34:25', '2025-06-10 14:34:25'),
(9, NULL, 'recipes_sample_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/oan2mP4P5ZiQykLU4pHPpFt443sCSE-metacmVjaXBlc19zYW1wbGVfaW1wb3J0LmNzdg==-.csv', 'App\\Filament\\Imports\\RecipeImporter', 0, 5, 0, 11, '2025-06-10 14:38:18', '2025-06-10 14:38:18'),
(10, NULL, 'recipes_sam11ple_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/XbEHB5VrEE1frHJsRibj4c0nraUrLo-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQuY3N2-.csv', 'App\\Filament\\Imports\\RecipeImporter', 0, 5, 0, 11, '2025-06-10 14:43:14', '2025-06-10 14:43:14'),
(11, NULL, 'recipes_sam11ple_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/88HSONlIo3ikhOa6k2aRV8HA52XThX-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQuY3N2-.csv', 'App\\Filament\\Imports\\RecipeImporter', 0, 5, 0, 11, '2025-06-10 14:54:52', '2025-06-10 14:54:52'),
(12, NULL, 'recipes_sam11ple_import.csv', 'D:\\laragon\\www\\norwayrecipe\\storage\\app/private\\livewire-tmp/JBKD4Uquqg0G72ErVTLmB7fZgxvTVj-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQuY3N2-.csv', 'App\\Filament\\Imports\\RecipeImporter', 0, 5, 0, 11, '2025-06-21 00:27:24', '2025-06-21 00:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(269, 'default', '{\"uuid\":\"ce37dba1-c32a-405c-97fd-04e77a566fd2\",\"displayName\":\"Filament\\\\Actions\\\\Imports\\\\Jobs\\\\ImportCsv\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":1749673610,\"data\":{\"commandName\":\"Filament\\\\Actions\\\\Imports\\\\Jobs\\\\ImportCsv\",\"command\":\"O:39:\\\"Filament\\\\Actions\\\\Imports\\\\Jobs\\\\ImportCsv\\\":6:{s:11:\\\"\\u0000*\\u0000importer\\\";O:35:\\\"App\\\\Filament\\\\Imports\\\\RecipeImporter\\\":3:{s:9:\\\"\\u0000*\\u0000import\\\";O:38:\\\"Filament\\\\Actions\\\\Imports\\\\Models\\\\Import\\\":33:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:11;s:9:\\\"file_name\\\";s:34:\\\"recipes_sam11ple_import - Copy.csv\\\";s:9:\\\"file_path\\\";s:149:\\\"D:\\\\laragon\\\\www\\\\norwayrecipe\\\\storage\\\\app\\/private\\\\livewire-tmp\\/PBVsKIWuE0Kj9ZPj48cGQvZF2JNWlq-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQgLSBDb3B5LmNzdg==-.csv\\\";s:8:\\\"importer\\\";s:35:\\\"App\\\\Filament\\\\Imports\\\\RecipeImporter\\\";s:10:\\\"total_rows\\\";i:5;s:10:\\\"updated_at\\\";s:19:\\\"2025-06-10 20:26:49\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-06-10 20:26:49\\\";s:2:\\\"id\\\";i:5;}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:11;s:9:\\\"file_name\\\";s:34:\\\"recipes_sam11ple_import - Copy.csv\\\";s:9:\\\"file_path\\\";s:149:\\\"D:\\\\laragon\\\\www\\\\norwayrecipe\\\\storage\\\\app\\/private\\\\livewire-tmp\\/PBVsKIWuE0Kj9ZPj48cGQvZF2JNWlq-metacmVjaXBlc19zYW0xMXBsZV9pbXBvcnQgLSBDb3B5LmNzdg==-.csv\\\";s:8:\\\"importer\\\";s:35:\\\"App\\\\Filament\\\\Imports\\\\RecipeImporter\\\";s:10:\\\"total_rows\\\";i:5;s:10:\\\"updated_at\\\";s:19:\\\"2025-06-10 20:26:49\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-06-10 20:26:49\\\";s:2:\\\"id\\\";i:5;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000previous\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:27:\\\"\\u0000*\\u0000relationAutoloadCallback\\\";N;s:26:\\\"\\u0000*\\u0000relationAutoloadContext\\\";N;s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:23:{s:4:\\\"name\\\";s:4:\\\"name\\\";s:4:\\\"slug\\\";N;s:5:\\\"image\\\";s:5:\\\"image\\\";s:6:\\\"person\\\";s:6:\\\"person\\\";s:10:\\\"difficulty\\\";s:10:\\\"difficulty\\\";s:7:\\\"calorie\\\";s:7:\\\"calorie\\\";s:7:\\\"protein\\\";s:7:\\\"protein\\\";s:12:\\\"carbohydrate\\\";s:12:\\\"carbohydrate\\\";s:3:\\\"fat\\\";s:3:\\\"fat\\\";s:12:\\\"main_content\\\";s:12:\\\"main_content\\\";s:11:\\\"description\\\";s:11:\\\"description\\\";s:7:\\\"user_id\\\";s:7:\\\"user_id\\\";s:11:\\\"category_id\\\";s:11:\\\"category_id\\\";s:14:\\\"subcategory_id\\\";s:14:\\\"subcategory_id\\\";s:16:\\\"preparation_time\\\";s:16:\\\"preparation_time\\\";s:15:\\\"additional_time\\\";s:15:\\\"additional_time\\\";s:10:\\\"total_time\\\";s:10:\\\"total_time\\\";s:11:\\\"ingredients\\\";s:11:\\\"ingredients\\\";s:15:\\\"seo_description\\\";s:15:\\\"seo_description\\\";s:8:\\\"seo_tags\\\";s:8:\\\"seo_tags\\\";s:12:\\\"seo_keywords\\\";s:12:\\\"seo_keywords\\\";s:5:\\\"views\\\";s:5:\\\"views\\\";s:6:\\\"status\\\";s:6:\\\"status\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000import\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Imports\\\\Models\\\\Import\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000rows\\\";s:6480:\\\"YTo1OntpOjA7YToyMjp7czo0OiJuYW1lIjtzOjIxOiJTcGFnaGV0dGkgQ2FyYm9uYXJhIDEiO3M6NToiaW1hZ2UiO3M6MjE6InVwbG9hZHMvc3BhZ2hldHRpLmpwZyI7czo2OiJwZXJzb24iO3M6MToiMiI7czoxMDoiZGlmZmljdWx0eSI7czo2OiJNZWRpdW0iO3M6NzoiY2Fsb3JpZSI7czozOiI1MjAiO3M6NzoicHJvdGVpbiI7czozOiIyMGciO3M6MTI6ImNhcmJvaHlkcmF0ZSI7czozOiI0NWciO3M6MzoiZmF0IjtzOjM6IjIyZyI7czoxMjoibWFpbl9jb250ZW50IjtzOjM5OiJBIGRlbGljaW91cyBjcmVhbXkgcGFzdGEgd2l0aCBwYW5jZXR0YS4iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjE5OiJRdWljayBJdGFsaWFuIG1lYWwuIjtzOjc6InVzZXJfaWQiO3M6MToiMSI7czoxMToiY2F0ZWdvcnlfaWQiO3M6MToiMyI7czoxNDoic3ViY2F0ZWdvcnlfaWQiO3M6MToiNiI7czoxNjoicHJlcGFyYXRpb25fdGltZSI7czoxMDoiMTAgbWludXRlcyI7czoxNToiYWRkaXRpb25hbF90aW1lIjtzOjk6IjUgbWludXRlcyI7czoxMDoidG90YWxfdGltZSI7czoxMDoiMTUgbWludXRlcyI7czoxMToiaW5ncmVkaWVudHMiO3M6MTgxOiJbeyJuYW1lIjoiU3BhZ2hldHRpIiwiYW1vdW50IjoiMjAwIiwidW5pdCI6ImcifSx7Im5hbWUiOiJFZ2dzIiwiYW1vdW50IjoiMiIsInVuaXQiOiJwY3MifSx7Im5hbWUiOiJQYXJtZXNhbiIsImFtb3VudCI6IjUwIiwidW5pdCI6ImcifSx7Im5hbWUiOiJQYW5jZXR0YSIsImFtb3VudCI6IjEwMCIsInVuaXQiOiJnIn1dIjtzOjE1OiJzZW9fZGVzY3JpcHRpb24iO3M6Mzg6IkNsYXNzaWMgY3JlYW15IGNhcmJvbmFyYSB3aXRoIHBhbmNldHRhIjtzOjg6InNlb190YWdzIjtzOjM3OiJzcGFnaGV0dGksIGNhcmJvbmFyYSwgaXRhbGlhbiwgZGlubmVyIjtzOjEyOiJzZW9fa2V5d29yZHMiO3M6MjQ6InBhc3RhLCBjcmVhbXksIGNhcmJvbmFyYSI7czo1OiJ2aWV3cyI7czoxOiIwIjtzOjY6InN0YXR1cyI7czoxOiIxIjt9aToxO2E6MjI6e3M6NDoibmFtZSI7czoxNzoiQ2hpY2tlbiBCaXJ5YW5pIDIiO3M6NToiaW1hZ2UiO3M6MTk6InVwbG9hZHMvYmlyeWFuaS5qcGciO3M6NjoicGVyc29uIjtzOjE6IjQiO3M6MTA6ImRpZmZpY3VsdHkiO3M6NDoiSGFyZCI7czo3OiJjYWxvcmllIjtzOjM6IjY1MCI7czo3OiJwcm90ZWluIjtzOjM6IjMwZyI7czoxMjoiY2FyYm9oeWRyYXRlIjtzOjM6IjYwZyI7czozOiJmYXQiO3M6MzoiMjVnIjtzOjEyOiJtYWluX2NvbnRlbnQiO3M6NTI6IkZyYWdyYW50IHJpY2UgYW5kIGNoaWNrZW4gZGlzaCBzZWFzb25lZCB3aXRoIHNwaWNlcy4iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjI2OiJBIHRyYWRpdGlvbmFsIEluZGlhbiBkaXNoLiI7czo3OiJ1c2VyX2lkIjtzOjE6IjEiO3M6MTE6ImNhdGVnb3J5X2lkIjtzOjE6IjMiO3M6MTQ6InN1YmNhdGVnb3J5X2lkIjtzOjE6IjciO3M6MTY6InByZXBhcmF0aW9uX3RpbWUiO3M6MTA6IjMwIG1pbnV0ZXMiO3M6MTU6ImFkZGl0aW9uYWxfdGltZSI7czoxMDoiMTUgbWludXRlcyI7czoxMDoidG90YWxfdGltZSI7czoxMDoiNDUgbWludXRlcyI7czoxMToiaW5ncmVkaWVudHMiO3M6MTkzOiJbeyJuYW1lIjoiQ2hpY2tlbiIsImFtb3VudCI6IjUwMCIsInVuaXQiOiJnIn0seyJuYW1lIjoiQmFzbWF0aSBSaWNlIiwiYW1vdW50IjoiMzAwIiwidW5pdCI6ImcifSx7Im5hbWUiOiJZb2d1cnQiLCJhbW91bnQiOiIxMDAiLCJ1bml0IjoiZyJ9LHsibmFtZSI6IkJpcnlhbmkgTWFzYWxhIiwiYW1vdW50IjoiMiIsInVuaXQiOiJ0YnNwIn1dIjtzOjE1OiJzZW9fZGVzY3JpcHRpb24iO3M6MzM6IlRyYWRpdGlvbmFsIHNwaWN5IGNoaWNrZW4gYmlyeWFuaSI7czo4OiJzZW9fdGFncyI7czoyNDoiYmlyeWFuaSwgY2hpY2tlbiwgaW5kaWFuIjtzOjEyOiJzZW9fa2V5d29yZHMiO3M6MjI6ImJpcnlhbmksIHJpY2UsIGNoaWNrZW4iO3M6NToidmlld3MiO3M6MToiMCI7czo2OiJzdGF0dXMiO3M6MToiMSI7fWk6MjthOjIyOntzOjQ6Im5hbWUiO3M6MTU6IkF2b2NhZG8gVG9hc3QgMiI7czo1OiJpbWFnZSI7czoyNToidXBsb2Fkcy9hdm9jYWRvX3RvYXN0LmpwZyI7czo2OiJwZXJzb24iO3M6MToiMSI7czoxMDoiZGlmZmljdWx0eSI7czo0OiJFYXN5IjtzOjc6ImNhbG9yaWUiO3M6MzoiMzAwIjtzOjc6InByb3RlaW4iO3M6MjoiN2ciO3M6MTI6ImNhcmJvaHlkcmF0ZSI7czozOiIyNWciO3M6MzoiZmF0IjtzOjM6IjE4ZyI7czoxMjoibWFpbl9jb250ZW50IjtzOjQ3OiJTbWFzaGVkIGF2b2NhZG8gb24gdG9hc3RlZCBicmVhZCB3aXRoIHRvcHBpbmdzLiI7czoxMToiZGVzY3JpcHRpb24iO3M6Mjc6IkEgaGVhbHRoeSBicmVha2Zhc3Qgb3B0aW9uLiI7czo3OiJ1c2VyX2lkIjtzOjE6IjEiO3M6MTE6ImNhdGVnb3J5X2lkIjtzOjE6IjQiO3M6MTQ6InN1YmNhdGVnb3J5X2lkIjtzOjE6IjgiO3M6MTY6InByZXBhcmF0aW9uX3RpbWUiO3M6OToiNSBtaW51dGVzIjtzOjE1OiJhZGRpdGlvbmFsX3RpbWUiO3M6OToiMCBtaW51dGVzIjtzOjEwOiJ0b3RhbF90aW1lIjtzOjk6IjUgbWludXRlcyI7czoxMToiaW5ncmVkaWVudHMiO3M6MTQwOiJbeyJuYW1lIjoiQXZvY2FkbyIsImFtb3VudCI6IjEiLCJ1bml0IjoicGMifSx7Im5hbWUiOiJCcmVhZCIsImFtb3VudCI6IjIiLCJ1bml0Ijoic2xpY2VzIn0seyJuYW1lIjoiTGVtb24gSnVpY2UiLCJhbW91bnQiOiIxIiwidW5pdCI6InRzcCJ9XSI7czoxNToic2VvX2Rlc2NyaXB0aW9uIjtzOjM1OiJIZWFsdGh5IGF2b2NhZG8gdG9hc3QgZm9yIGJyZWFrZmFzdCI7czo4OiJzZW9fdGFncyI7czoyNToiYXZvY2FkbywgdG9hc3QsIGJyZWFrZmFzdCI7czoxMjoic2VvX2tleXdvcmRzIjtzOjIzOiJhdm9jYWRvLCBicmVhZCwgaGVhbHRoeSI7czo1OiJ2aWV3cyI7czoxOiIwIjtzOjY6InN0YXR1cyI7czoxOiIxIjt9aTozO2E6MjI6e3M6NDoibmFtZSI7czoxOToiVmVnYW4gQnVkZGhhIEJvd2wgMiI7czo1OiJpbWFnZSI7czoyMzoidXBsb2Fkcy9idWRkaGFfYm93bC5qcGciO3M6NjoicGVyc29uIjtzOjE6IjIiO3M6MTA6ImRpZmZpY3VsdHkiO3M6NDoiRWFzeSI7czo3OiJjYWxvcmllIjtzOjM6IjQ1MCI7czo3OiJwcm90ZWluIjtzOjM6IjE1ZyI7czoxMjoiY2FyYm9oeWRyYXRlIjtzOjM6IjUwZyI7czozOiJmYXQiO3M6MzoiMTJnIjtzOjEyOiJtYWluX2NvbnRlbnQiO3M6NDg6IkJhbGFuY2VkIGJvd2wgd2l0aCBncmFpbnMsIHZlZ2dpZXMsIGFuZCBsZWd1bWVzLiI7czoxMToiZGVzY3JpcHRpb24iO3M6MjA6IlBlcmZlY3QgdmVnYW4gbHVuY2guIjtzOjc6InVzZXJfaWQiO3M6MToiMSI7czoxMToiY2F0ZWdvcnlfaWQiO3M6MToiNCI7czoxNDoic3ViY2F0ZWdvcnlfaWQiO3M6MToiOSI7czoxNjoicHJlcGFyYXRpb25fdGltZSI7czoxMDoiMTUgbWludXRlcyI7czoxNToiYWRkaXRpb25hbF90aW1lIjtzOjk6IjUgbWludXRlcyI7czoxMDoidG90YWxfdGltZSI7czoxMDoiMjAgbWludXRlcyI7czoxMToiaW5ncmVkaWVudHMiO3M6MTgxOiJbeyJuYW1lIjoiUXVpbm9hIiwiYW1vdW50IjoiMTAwIiwidW5pdCI6ImcifSx7Im5hbWUiOiJDaGlja3BlYXMiLCJhbW91bnQiOiIxNTAiLCJ1bml0IjoiZyJ9LHsibmFtZSI6IlNwaW5hY2giLCJhbW91bnQiOiI1MCIsInVuaXQiOiJnIn0seyJuYW1lIjoiVGFoaW5pIiwiYW1vdW50IjoiMiIsInVuaXQiOiJ0YnNwIn1dIjtzOjE1OiJzZW9fZGVzY3JpcHRpb24iO3M6Mjg6Ik51dHJpdGlvdXMgdmVnYW4gYnVkZGhhIGJvd2wiO3M6ODoic2VvX3RhZ3MiO3M6Mjc6InZlZ2FuLCBidWRkaGEgYm93bCwgaGVhbHRoeSI7czoxMjoic2VvX2tleXdvcmRzIjtzOjI0OiJxdWlub2EsIGNoaWNrcGVhcywgdmVnYW4iO3M6NToidmlld3MiO3M6MToiMCI7czo2OiJzdGF0dXMiO3M6MToiMSI7fWk6NDthOjIyOntzOjQ6Im5hbWUiO3M6MTI6IkJlZWYgVGFjb3MgMiI7czo1OiJpbWFnZSI7czoyMjoidXBsb2Fkcy9iZWVmX3RhY29zLmpwZyI7czo2OiJwZXJzb24iO3M6MToiMyI7czoxMDoiZGlmZmljdWx0eSI7czo2OiJNZWRpdW0iO3M6NzoiY2Fsb3JpZSI7czozOiI1NTAiO3M6NzoicHJvdGVpbiI7czozOiIyNWciO3M6MTI6ImNhcmJvaHlkcmF0ZSI7czozOiI0MGciO3M6MzoiZmF0IjtzOjM6IjMwZyI7czoxMjoibWFpbl9jb250ZW50IjtzOjQ2OiJDcmlzcHkgdGFjb3MgZmlsbGVkIHdpdGggc2Vhc29uZWQgZ3JvdW5kIGJlZWYuIjtzOjExOiJkZXNjcmlwdGlvbiI7czoyNToiTWV4aWNhbi1zdHlsZSBiZWVmIHRhY29zLiI7czo3OiJ1c2VyX2lkIjtzOjE6IjEiO3M6MTE6ImNhdGVnb3J5X2lkIjtzOjE6IjUiO3M6MTQ6InN1YmNhdGVnb3J5X2lkIjtzOjI6IjEwIjtzOjE2OiJwcmVwYXJhdGlvbl90aW1lIjtzOjEwOiIxNSBtaW51dGVzIjtzOjE1OiJhZGRpdGlvbmFsX3RpbWUiO3M6MTA6IjEwIG1pbnV0ZXMiO3M6MTA6InRvdGFsX3RpbWUiO3M6MTA6IjI1IG1pbnV0ZXMiO3M6MTE6ImluZ3JlZGllbnRzIjtzOjE4NzoiW3sibmFtZSI6Ikdyb3VuZCBCZWVmIiwiYW1vdW50IjoiMzAwIiwidW5pdCI6ImcifSx7Im5hbWUiOiJUYWNvIFNoZWxscyIsImFtb3VudCI6IjYiLCJ1bml0IjoicGNzIn0seyJuYW1lIjoiQ2hlZGRhciIsImFtb3VudCI6IjUwIiwidW5pdCI6ImcifSx7Im5hbWUiOiJMZXR0dWNlIiwiYW1vdW50IjoiMzAiLCJ1bml0IjoiZyJ9XSI7czoxNToic2VvX2Rlc2NyaXB0aW9uIjtzOjQwOiJUYXN0eSBiZWVmIHRhY29zIHdpdGggY2hlZXNlIGFuZCBsZXR0dWNlIjtzOjg6InNlb190YWdzIjtzOjIwOiJ0YWNvcywgYmVlZiwgbWV4aWNhbiI7czoxMjoic2VvX2tleXdvcmRzIjtzOjI1OiJiZWVmLCB0YWNvcywgbWV4aWNhbiBmb29kIjtzOjU6InZpZXdzIjtzOjE6IjAiO3M6Njoic3RhdHVzIjtzOjE6IjEiO319\\\";s:12:\\\"\\u0000*\\u0000columnMap\\\";a:23:{s:4:\\\"name\\\";s:4:\\\"name\\\";s:4:\\\"slug\\\";N;s:5:\\\"image\\\";s:5:\\\"image\\\";s:6:\\\"person\\\";s:6:\\\"person\\\";s:10:\\\"difficulty\\\";s:10:\\\"difficulty\\\";s:7:\\\"calorie\\\";s:7:\\\"calorie\\\";s:7:\\\"protein\\\";s:7:\\\"protein\\\";s:12:\\\"carbohydrate\\\";s:12:\\\"carbohydrate\\\";s:3:\\\"fat\\\";s:3:\\\"fat\\\";s:12:\\\"main_content\\\";s:12:\\\"main_content\\\";s:11:\\\"description\\\";s:11:\\\"description\\\";s:7:\\\"user_id\\\";s:7:\\\"user_id\\\";s:11:\\\"category_id\\\";s:11:\\\"category_id\\\";s:14:\\\"subcategory_id\\\";s:14:\\\"subcategory_id\\\";s:16:\\\"preparation_time\\\";s:16:\\\"preparation_time\\\";s:15:\\\"additional_time\\\";s:15:\\\"additional_time\\\";s:10:\\\"total_time\\\";s:10:\\\"total_time\\\";s:11:\\\"ingredients\\\";s:11:\\\"ingredients\\\";s:15:\\\"seo_description\\\";s:15:\\\"seo_description\\\";s:8:\\\"seo_tags\\\";s:8:\\\"seo_tags\\\";s:12:\\\"seo_keywords\\\";s:12:\\\"seo_keywords\\\";s:5:\\\"views\\\";s:5:\\\"views\\\";s:6:\\\"status\\\";s:6:\\\"status\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}s:7:\\\"batchId\\\";s:36:\\\"9f1fc06a-53e0-48f6-9de4-567061b98193\\\";}\"},\"createdAt\":1749587210,\"delay\":null}', 255, NULL, 1749587246, 1749587246);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_batches`
--

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9f1fb221-019f-42c0-be0b-61453b17e73a', '', 1, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4196:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:1;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"bkc1suNs5zIxA3WIupXQwnvwYBHlQ08XeitZ1O2oQf4=\";}}}}', NULL, 1749584813, 1749584971),
('9f1fb42e-da19-4a83-8a1e-e874d6f4b782', '', 1, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4196:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:2;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"NNkyZ2pgKOPszQwDTdxqPdVeZAz+2cP599HzHoc/CBc=\";}}}}', NULL, 1749585157, 1749585158),
('9f1fb89e-b013-4adf-9622-fae39b6bf939', '', 1, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4196:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:3;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"pd+BVEycEBNAKE8iUqSh6BKt6u59xey3w9TZeHjA3F0=\";}}}}', NULL, 1749585902, 1749585903),
('9f1fbe21-b234-4ca4-8428-4f62f4f75c42', '', 1, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4196:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:4;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"U6QQc0yxYH49VKDcXfP5rZETkr/6V/d70nYszq00Dzc=\";}}}}', NULL, 1749586826, 1749586828),
('9f1fc06a-53e0-48f6-9de4-567061b98193', '', 1, 1, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4187:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";N;s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:5;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"FDGNTVDnLudvUVHbdoblZ1RSqDQApkRyJAU3xAOaenw=\";}}}}', NULL, 1749587209, NULL),
('9f1fc126-a39b-4d14-84fc-813fb8aa1c17', '', 1, 1, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4196:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"name\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:6;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000013320000000000000000\";}\";s:4:\"hash\";s:44:\"jSp/OG1O/MjNojAOlA+YvSmhJBSqY18H7jOSvBS9JEI=\";}}}}', NULL, 1749587333, NULL),
('9f1fc1ab-cfef-4bc0-aa9e-fc9c2c4b669e', '', 1, 1, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4196:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:7;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"Cc1OsGLj6uNnQ6h/u6ywVY7wdIpkvbgFilFKF/cUHPk=\";}}}}', NULL, 1749587420, NULL),
('9f1fc321-275f-48b2-84f9-8eab3556c64e', '', 1, 1, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4196:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:8;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"uxjWWCZuAp6Zn5ev2ZpvCGLphVmQPaBvxP1XBI9Znzw=\";}}}}', NULL, 1749587665, NULL),
('9f1fc485-c344-4b01-9946-1c9c5457b596', '', 1, 1, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4196:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:9;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"tl873B16T02TlQDLrm2njv4CzzFXPGoczVi1J1HQoTc=\";}}}}', NULL, 1749587899, NULL),
('9f1fc649-5fec-4081-a559-bed1b6afb0a3', '', 1, 1, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4197:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:10;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"17oUz1q8vktorxEWKoeONgSGKka6F6/3/cyZjHT3UJE=\";}}}}', NULL, 1749588195, NULL);
INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9f1fca72-6c8a-44c9-a49f-c8f0ff832da9', '', 1, 1, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4197:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:11;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000012790000000000000000\";}\";s:4:\"hash\";s:44:\"QDLlxMTH1MKe3zXERsF/VCAabV8sriC1PWK00hgW0Pc=\";}}}}', NULL, 1749588893, NULL),
('9f34b50a-c1ff-486d-ab07-f60d29a68770', '', 1, 1, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4197:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:23:{s:4:\"name\";s:4:\"name\";s:4:\"slug\";s:4:\"slug\";s:5:\"image\";s:5:\"image\";s:6:\"person\";s:6:\"person\";s:10:\"difficulty\";s:10:\"difficulty\";s:7:\"calorie\";s:7:\"calorie\";s:7:\"protein\";s:7:\"protein\";s:12:\"carbohydrate\";s:12:\"carbohydrate\";s:3:\"fat\";s:3:\"fat\";s:12:\"main_content\";s:12:\"main_content\";s:11:\"description\";s:11:\"description\";s:7:\"user_id\";s:7:\"user_id\";s:11:\"category_id\";s:11:\"category_id\";s:14:\"subcategory_id\";s:14:\"subcategory_id\";s:16:\"preparation_time\";s:16:\"preparation_time\";s:15:\"additional_time\";s:15:\"additional_time\";s:10:\"total_time\";s:10:\"total_time\";s:11:\"ingredients\";s:11:\"ingredients\";s:15:\"seo_description\";s:15:\"seo_description\";s:8:\"seo_tags\";s:8:\"seo_tags\";s:12:\"seo_keywords\";s:12:\"seo_keywords\";s:5:\"views\";s:5:\"views\";s:6:\"status\";s:6:\"status\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:12;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:36:\"Filament\\Tables\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000013190000000000000000\";}\";s:4:\"hash\";s:44:\"hjdlOqh9oE8xIuIU/gk+cnOAtXaw28VbDX0dbxh9Upo=\";}}}}', NULL, 1750487244, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('custom','page','service') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'custom',
  `reference_ids` json DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `enable_livewire` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `title`, `url`, `icon`, `type`, `reference_ids`, `order`, `status`, `is_featured`, `enable_livewire`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Service', NULL, NULL, 'service', '[\"6\", \"5\", \"7\", \"2\", \"4\"]', 3, 1, 1, 1, '2025-10-09 03:13:44', '2025-10-09 03:30:03'),
(2, NULL, 'About Us', '/about-us', NULL, 'custom', NULL, 2, 1, 1, 1, '2025-10-09 03:25:17', '2025-10-09 03:30:03'),
(3, NULL, 'Blog', '/blog', NULL, 'custom', NULL, 4, 1, 1, 1, '2025-10-09 03:26:26', '2025-10-09 03:30:03'),
(4, NULL, 'Contact Us', '/contact-us', NULL, 'custom', NULL, 6, 1, 1, 1, '2025-10-09 03:28:30', '2025-10-09 03:30:03'),
(5, NULL, 'Pages', NULL, NULL, 'page', '[\"2\", \"3\", \"4\"]', 5, 1, 1, 1, '2025-10-09 03:45:39', '2025-10-09 15:04:51'),
(6, NULL, 'Home', '/', NULL, 'custom', NULL, 1, 1, 1, 1, '2025-10-09 04:18:10', '2025-10-09 04:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2022_12_14_083707_create_settings_table', 1),
(5, '2024_12_04_025120_create_media_table', 1),
(6, '2024_12_04_041953_create_breezy_sessions_table', 1),
(7, '2025_01_01_120813_create_books_table', 1),
(8, '2025_01_02_064819_create_permission_tables', 1),
(9, '2025_01_02_225927_add_avatar_url_column_to_users_table', 1),
(10, '2025_01_03_114929_create_personal_access_tokens_table', 1),
(11, '2025_01_04_125650_create_posts_table', 1),
(12, '2025_01_08_152510_create_kaido_settings', 1),
(13, '2025_01_08_233142_create_socialite_users_table', 1),
(14, '2025_01_09_225908_update_user_table_make_password_column_nullable', 1),
(15, '2025_01_12_031340_create_notifications_table', 1),
(16, '2025_01_12_031357_create_imports_table', 1),
(17, '2025_01_12_031358_create_exports_table', 1),
(18, '2025_01_12_031359_create_failed_import_rows_table', 1),
(20, '2025_01_31_020024_add_themes_settings_to_users_table', 1),
(21, '2025_05_21_191628_create_sizes_table', 1),
(22, '2025_05_22_160231_create_categories_table', 1),
(23, '2025_05_22_191621_create_products_table', 1),
(24, '2025_05_22_192039_create_product_variations_table', 1),
(25, '2025_05_22_215106_create_faqs_table', 1),
(26, '2025_05_23_083005_create_coupons_table', 1),
(27, '2025_05_23_162632_create_custom_reviews_table', 1),
(28, '2025_05_23_170806_create_website_settings_table', 1),
(29, '2025_05_24_115113_create_homepage_settings_table', 1),
(30, '2025_05_24_143938_create_blog_categories_table', 1),
(31, '2025_05_24_144233_create_blogs_table', 1),
(32, '2025_05_27_084323_create_subcategories_table', 1),
(33, '2025_06_04_072756_create_recipes_table', 2),
(34, '2025_06_06_080250_add_column_to_categories_table', 3),
(36, '2025_06_06_112036_add_column_to_recipes_table', 1),
(37, '2025_06_16_160318_create_carts_table', 4),
(38, '2025_09_03_111027_create_commercial_highlights_table', 5),
(39, '2025_09_03_122045_create_skills_table', 6),
(40, '2025_09_03_152409_create_current_initiatives_table', 7),
(41, '2025_09_04_101449_create_studies_table', 8),
(42, '2025_09_04_105337_create_certificates_table', 9),
(43, '2025_09_06_071100_create_services_table', 10),
(44, '2025_09_09_144812_create_doctors_table', 11),
(45, '2025_01_12_091355_create_contacts_table', 12),
(46, '2025_09_11_203521_create_contacts_table', 13),
(47, '2025_09_11_214136_create_appointments_table', 14),
(48, '2025_09_25_144211_add_column_to_homepage_settings_table', 15),
(50, '2025_09_29_034228_add_column_to_website_settings_table', 16),
(51, '2025_10_08_141022_create_pages_table', 17),
(52, '2025_10_09_081651_create_menus_table', 18),
(53, '2025_10_09_090342_update_reference_ids_in_menus_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` json NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `main_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `components` json DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_featured` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `location`, `image`, `description`, `main_content`, `components`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `is_featured`, `created_at`, `updated_at`) VALUES
(2, 'Privacy Policy', 'privacy-policy', 'Vista, CA', 'uploads/01K88675Y32JEYEN0G89Q5658E.png', NULL, '<p>sdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dsssssssssssdfds dasf af dssssssssss</p>', '[]', 'Meta title', 'Meta description\n', 'Meta keywords', 1, 1, '2025-10-09 03:42:29', '2025-10-23 13:26:42'),
(3, 'Terms & Conditions', 'terms-conditions', NULL, NULL, 'Terms & Conditions', '<p><strong>Terms &amp; Conditions</strong></p>', '[]', 'Terms & Conditions Meta title', 'Meta description Terms & Conditions\n', 'Meta keywords Terms & Conditions', 1, 1, '2025-10-09 03:43:23', '2025-10-09 03:43:23'),
(4, 'First Visit Expectations', 'first-visit-expectations', 'Vista, CA', 'uploads/01K75CG7FZ7QAD987537VEW2N8.jpg', 'We know the first visit to any doctor’s office can be intimidating so we want your time with us to be as comfortable as possible. During your first visit, our team will get to know you by asking some questions about your medical and oral health history. Please bring a list of any medications you may be taking and their dosages, including all vitamins and supplements. We love to educate our patients and answer questions, so don’t be shy! We encourage you to ask questions and express your concerns or desires.\n\n', '<h2>your comfort is our priority</h2><p>We know the first visit to any doctor’s office can be intimidating so we want your time with us to be as comfortable as possible. During your first visit, our team will get to know you by asking some questions about your medical and oral health history. Please bring a list of any medications you may be taking and their dosages, including all vitamins and supplements. We love to educate our patients and answer questions, so don’t be shy! We encourage you to ask questions and express your concerns or desires.</p><p>Next, we will perform a comprehensive oral exam that may include x-rays, periodontal probing, charting of your existing restorations, and a non-invasive oral cancer screening. If no signs of periodontal disease are present, you will have a routine cleaning. If we notice signs of periodontal disease, we may reschedule the cleaning portion of your visit to allow for more time.</p><p>Once your exam is complete, your doctor will review their findings with you and work on a treatment plan that reflects your wants and needs while giving you a functional, healthy smile. We offer many payment options and can prioritize and stagger your treatments to give you a smile you deserve in a timeframe you can afford.<br><br></p><h3>relaxing atmosphere</h3><p>You may not associate comfort with the dentist, but at Tri-City Dental Excellence, now you can. We work hard to ensure our patients feel at home while they’re with us. We have a full suite of patient amenities to keep you relaxed and entertained from our lobby to our treatment rooms.</p><ul><li><strong>Soft Pillows</strong></li><li><strong>TVs in Treatment Rooms</strong></li><li><strong>Private Treatment Rooms</strong></li><li><strong>Curated Local Art</strong></li></ul><h3>convenient scheduling</h3><p>We understand that fitting dental care into a busy schedule can be difficult. That’s why we do our best to make your visits to our office as easy and convenient as possible.</p><ul><li><strong>Family Block Appointments</strong> | You won’t have to make multiple trips to the office—we can treat your whole family in just one visit.</li><li><strong>Appointment Reminders</strong> | With a hectic schedule it can be hard to keep track of appointments, but don’t worry. We’ll send you a reminder!</li><li><strong>Emergencies Seen ASAP</strong> | If you have severe tooth pain or another dental emergency, we’ll get you into our office the same day you call.</li></ul>', '[{\"type\": \"faqs\", \"sort_by\": \"2\"}, {\"type\": \"services\", \"sort_by\": \"1\"}, {\"type\": \"doctor\", \"sort_by\": \"3\"}, {\"type\": \"review\", \"sort_by\": \"4\"}]', 'Meta title', 'Meta description\n', 'Meta keywords', 1, NULL, '2025-10-09 15:00:38', '2025-10-09 15:20:32'),
(6, 'About Us', 'about-us', 'Safety Harbor, FL', NULL, NULL, '<p>&nbsp;&nbsp;</p>', '[{\"type\": \"review\", \"sort_by\": null}]', 'About meta title', 'Meta description\n', 'Meta keywords', 1, NULL, '2025-10-23 03:37:38', '2025-10-25 05:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(2, 'view_any_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(3, 'create_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(4, 'update_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(5, 'restore_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(6, 'restore_any_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(7, 'replicate_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(8, 'reorder_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(9, 'delete_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(10, 'delete_any_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(11, 'force_delete_blog', 'web', '2025-06-04 01:05:04', '2025-06-04 01:05:04'),
(12, 'force_delete_any_blog', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(13, 'view_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(14, 'view_any_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(15, 'create_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(16, 'update_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(17, 'restore_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(18, 'restore_any_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(19, 'replicate_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(20, 'reorder_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(21, 'delete_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(22, 'delete_any_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(23, 'force_delete_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(24, 'force_delete_any_blog::category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(25, 'view_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(26, 'view_any_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(27, 'create_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(28, 'update_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(29, 'restore_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(30, 'restore_any_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(31, 'replicate_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(32, 'reorder_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(33, 'delete_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(34, 'delete_any_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(35, 'force_delete_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(36, 'force_delete_any_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(37, 'book:create_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(38, 'book:update_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(39, 'book:delete_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(40, 'book:pagination_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(41, 'book:detail_book', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(42, 'view_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(43, 'view_any_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(44, 'create_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(45, 'update_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(46, 'restore_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(47, 'restore_any_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(48, 'replicate_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(49, 'reorder_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(50, 'delete_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(51, 'delete_any_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(52, 'force_delete_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(53, 'force_delete_any_category', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(54, 'view_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(55, 'view_any_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(56, 'create_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(57, 'update_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(58, 'restore_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(59, 'restore_any_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(60, 'replicate_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(61, 'reorder_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(62, 'delete_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(63, 'delete_any_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(64, 'force_delete_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(65, 'force_delete_any_coupon', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(66, 'view_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(67, 'view_any_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(68, 'create_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(69, 'update_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(70, 'restore_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(71, 'restore_any_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(72, 'replicate_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(73, 'reorder_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(74, 'delete_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(75, 'delete_any_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(76, 'force_delete_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(77, 'force_delete_any_custom::review', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(78, 'view_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(79, 'view_any_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(80, 'create_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(81, 'update_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(82, 'restore_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(83, 'restore_any_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(84, 'replicate_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(85, 'reorder_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(86, 'delete_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(87, 'delete_any_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(88, 'force_delete_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(89, 'force_delete_any_faq', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(90, 'view_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(91, 'view_any_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(92, 'create_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(93, 'update_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(94, 'restore_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(95, 'restore_any_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(96, 'replicate_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(97, 'reorder_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(98, 'delete_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(99, 'delete_any_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(100, 'force_delete_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(101, 'force_delete_any_homepage::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(102, 'view_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(103, 'view_any_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(104, 'create_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(105, 'update_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(106, 'restore_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(107, 'restore_any_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(108, 'replicate_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(109, 'reorder_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(110, 'delete_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(111, 'delete_any_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(112, 'force_delete_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(113, 'force_delete_any_product', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(114, 'view_role', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(115, 'view_any_role', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(116, 'create_role', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(117, 'update_role', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(118, 'delete_role', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(119, 'delete_any_role', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(120, 'view_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(121, 'view_any_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(122, 'create_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(123, 'update_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(124, 'restore_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(125, 'restore_any_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(126, 'replicate_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(127, 'reorder_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(128, 'delete_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(129, 'delete_any_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(130, 'force_delete_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(131, 'force_delete_any_size', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(132, 'view_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(133, 'view_any_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(134, 'create_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(135, 'update_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(136, 'restore_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(137, 'restore_any_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(138, 'replicate_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(139, 'reorder_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(140, 'delete_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(141, 'delete_any_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(142, 'force_delete_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(143, 'force_delete_any_subcategory', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(144, 'view_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(145, 'view_any_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(146, 'create_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(147, 'update_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(148, 'restore_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(149, 'restore_any_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(150, 'replicate_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(151, 'reorder_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(152, 'delete_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(153, 'delete_any_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(154, 'force_delete_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(155, 'force_delete_any_token', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(156, 'view_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(157, 'view_any_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(158, 'create_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(159, 'update_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(160, 'restore_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(161, 'restore_any_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(162, 'replicate_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(163, 'reorder_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(164, 'delete_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(165, 'delete_any_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(166, 'force_delete_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(167, 'force_delete_any_user', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(168, 'view_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(169, 'view_any_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(170, 'create_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(171, 'update_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(172, 'restore_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(173, 'restore_any_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(174, 'replicate_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(175, 'reorder_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(176, 'delete_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(177, 'delete_any_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(178, 'force_delete_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(179, 'force_delete_any_website::setting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(180, 'page_ManageSetting', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(181, 'page_Themes', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(182, 'page_MyProfilePage', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(183, 'view_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(184, 'view_any_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(185, 'create_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(186, 'update_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(187, 'restore_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(188, 'restore_any_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(189, 'replicate_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(190, 'reorder_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(191, 'delete_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(192, 'delete_any_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(193, 'force_delete_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(194, 'force_delete_any_contact', 'web', '2025-09-11 14:59:04', '2025-09-11 14:59:04'),
(195, 'view_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(196, 'view_any_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(197, 'create_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(198, 'update_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(199, 'restore_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(200, 'restore_any_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(201, 'replicate_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(202, 'reorder_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(203, 'delete_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(204, 'delete_any_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(205, 'force_delete_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(206, 'force_delete_any_doctor', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(207, 'view_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(208, 'view_any_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(209, 'create_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(210, 'update_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(211, 'restore_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(212, 'restore_any_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(213, 'replicate_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(214, 'reorder_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(215, 'delete_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(216, 'delete_any_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(217, 'force_delete_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39'),
(218, 'force_delete_any_service', 'web', '2025-09-11 14:59:39', '2025-09-11 14:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `size_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `main_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_schema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_other_tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_sellable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `color_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-06-04 01:05:05', '2025-06-04 01:05:05'),
(2, 'user', 'web', '2025-06-21 23:27:28', '2025-06-21 23:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `icons` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `main_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faqs` json DEFAULT NULL,
  `faqs_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `image`, `icons`, `main_content`, `description`, `seo_description`, `seo_tags`, `seo_keywords`, `faqs`, `faqs_header`, `status`, `location`, `created_at`, `updated_at`) VALUES
(2, 'Full Mouth Reconstruction hello', 'full-mouth-reconstruction', 'uploads/01K4SSXHQX6MGSZK0VABY1HNKZ.jpg', 'uploads/01K4SSXHSP69RK83HPATZRS77S.svg', '<h3>Trauma</h3><p><br></p><p>In many cases, the patient may have experienced a traumatic accident and be in need of repairing a chipped tooth, while also simultaneously replacing another tooth that fell out. Since accidents can happen at any time, it is difficult to prepare for the possibility of damaging more than one tooth. Through full mouth reconstruction, the dentist will be able to repair the mouth, while also repairing the appearance and functionality of a patient\'s teeth.</p><p>If a patient experiences an accident that results in damage to the teeth, seeking an emergency dentist as soon as possible is a necessity. If a patient goes to a normal emergency room after damaging a tooth, the nurse will only be able to triage the wounds but not treat the condition. At Tri-City Dental Excellence we will find the best treatment for each individual and recommend options that help to repair the damage.</p><p>Patients assume that the only option will be one that merely imitates the appearance of a natural tooth and that the patient will have to practice caution when eating for the rest of his or her life. In reality, we can provide possible treatments such as dental implants, dental bonding, dental crowns, dental veneers, dental bridges and more to help repair the appearance and functionality of the tooth. After a full mouth reconstruction at Tri-City Dental Excellence our patients will be able to smile confidently and eat what they like since our repairs are long-lasting and sturdy. There is no need for a patient to live with a cracked or damaged set of teeth.</p><p><br></p><h3>Infection</h3><p><br></p><p>In other cases, a patient may lose multiple teeth to dental caries (tooth decay), gum disease or other infections. Upon infection, the dentist will do everything in his or her power to prevent the spreading. However, some patients may not visit the dentist at least once every six months and allow the infection to spread. If the infection spreads to the tooth, then there is a possibility that an extraction will be necessary.</p><p>When a patient has an infection, a <a href=\"http://dental.test/root-canal-treatment\"><span style=\"text-decoration: underline;\">root canal</span></a> is one option to treat the tooth. A root canal allows the dentist to remove the infected pulp and clean the area. Following a root canal, we will plug up the hole with a dental filling. In the cases where the tooth is removed due to infection, we may recommend a dental implant. The dental implant is a titanium post that bonds with the jaw bone through osseointegration. We will also place a dental crown on top of the implant to create a sturdy and natural-looking tooth.</p><p>If the infection has spread to multiple teeth, Tri-City Dental Excellence will recommend the best option for treating the infection and repairing one\'s teeth.</p><h3>Other Topics</h3><p><br></p><ul><li><a href=\"http://dental.test/clear-braces\">Clear Braces</a></li><li><a href=\"http://dental.test/dental-bonding\">Dental Bonding</a></li><li><a href=\"http://dental.test/dental-crowns\">Dental Crowns</a></li><li><a href=\"http://dental.test/dental-implants\">Dental Implants</a></li><li><a href=\"http://dental.test/dental-veneers\">Dental Veneers</a></li><li><a href=\"http://dental.test/smile-makeover\">Smile Makeover</a></li><li><a href=\"http://dental.test/teeth-whitening\">Teeth Whitening</a></li></ul><p><br></p><ul><li><a href=\"http://dental.test/find-a-dentist\">Find a Dentist in Vista, CA</a></li></ul><h2>Long-term Wear</h2><p><br></p><p>For some people, proper dental care is not a common part of daily life. When one chooses to not practice proper dental care, the teeth wear down more quickly as a result. Acid from certain foods, types of citrus, beverages, acid reflux, grinding and more are all causes for a patient to lose his or her teeth more quickly.</p><p>At <a href=\"http://dental.test/\"><span style=\"text-decoration: underline;\">Tri-City Dental Excellence</span></a> we can monitor the teeth at least once every six months and help patients remain healthy. For patients who experience these issues on a regular basis and have teeth that are wearing down, we can use full mouth reconstruction to address multiple issues.</p><p><br></p><h2>Reconstruction Methods</h2><p><br></p><p>At Tri-City Dental Excellence we will ensure that each patient receives the best full mouth reconstruction for his or her needs. We can reconstruct a mouth with a variety of dental tools and options at our disposal. The tools, options and restorations for a full mouth reconstruction include:</p><ul><li><a href=\"http://dental.test/dental-implants\"><span style=\"text-decoration: underline;\">Dental Implants</span></a></li><li><a href=\"http://dental.test/dental-crowns\"><span style=\"text-decoration: underline;\">Dental Crowns</span></a></li><li><a href=\"http://dental.test/dental-veneers\"><span style=\"text-decoration: underline;\">Dental Veneers</span></a></li><li><a href=\"http://dental.test/dental-bridges\"><span style=\"text-decoration: underline;\">Dental Bridges</span></a></li><li><a href=\"http://dental.test/dentures\"><span style=\"text-decoration: underline;\">Dentures</span></a></li><li><a href=\"http://dental.test/root-canal-treatment\"><span style=\"text-decoration: underline;\">Root Canal</span></a></li></ul><p>Some patients may have concerns over the price of full mouth reconstructions and avoid the necessary treatment. The longer one goes without the necessary treatment, the great the pain and risk. For instance, an adult who loses a tooth and does not seek treatment will allow the jaw to weaken over time. If the jaw weakens enough, then there will not be a way to install a dental implant in the gap.</p><p>In other cases, a gap can become infected just as a tooth can; especially if the individual does not keep it clean. The full mouth reconstruction process will take multiple appointments to customize the restoration and then install it. However, it will be worth it since the restoration will give back complete functionality of the teeth. We will be careful and precise during the installation process, making sure that each restoration is complete to perfection.</p><p><br><br></p><p><br></p>', 'Full mouth reconstruction involves one or several restorative dental procedures to restore and replace the teeth in a person\'s mouth. Full mouth reconstruction is a specialty service offered at Tri-City Dental Excellence.\n\nPeople with multiple oral health issues such as tooth decay, missing teeth or damaged teeth may benefit from full mouth reconstruction. No matter the cause, people will find it incredibly challenging to live without a full set of functional teeth. Fortunately, we can use full mouth reconstruction to restore both the functionality and appearance of teeth.\n\nInstead of only focusing on one aspect of the mouth, we can help address multiple aspects. Along with ensuring that the teeth are customized to fit each patient\'s unique needs, we will replace missing teeth to create a uniform smile. This way, they can enjoy the benefits of a functional and sturdy set of teeth that also provide a great, natural appearance.\n\nIf you want to restore the functionality and appearance of your teeth with full mouth reconstruction, schedule an appointment with us today.', 'Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions', 'Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions', 'Regular visits to the dentist offer numerous benefits for maintaining optimal oral health. They help in early detection of issues like cavities, gum disease, and oral cancer, allowing for prompt treatment and prevention of more serious conditions', '[{\"answer\": \"FAQ Answer 1\", \"question\": \"FAQ Question 1\"}, {\"answer\": \"FAQ Answer 3\", \"question\": \"FAQ Question 2\"}]', NULL, 1, 'Vista, CA', '2025-09-09 12:54:34', '2025-10-01 06:50:53'),
(4, 'General Dentistry', 'general-dentistry', 'uploads/01K4X3KNTY2C0G0S09TVNTJA1X.jpg', 'uploads/01K4X3KNV5WXXXVH2YJVBG77V5.svg', '<h3>CEREC® Provides Dental Restorations and Cosmetic Solutions in One Day</h3><p><br></p><p>CEREC® is the modern solution to your dental care needs. At Tri-City Dental Excellence, we use CEREC® to provide patients with better dental treatments in one day. The traditional process for dental procedures to treat damaged, stained, crooked or overcrowded teeth, involves taking an impression of the tooth. Upon completing measurements, the dentist sends the results to a lab to create the restoration. In the meantime, the patient may spend up to two weeks with a temporary restoration while the lab creates the new one. After the final restoration is complete, the patient returns for the bonding procedure and to verify that the restoration is a good fit. The two biggest challenges with this scenario come down to time and convenience. The traditional process takes too much time and is inconvenient due to the necessity to have multiple dental appointments and the need to wear a temporary solution.</p><p>However, as a CEREC® dentist, we complete the process differently. If you are seeking to improve the appearance of your teeth by straightening them, covering a dark stain, closing gaps or changing their size, we can do all of this in one day. The same is true if you have a damaged tooth in need of repair. We offer a one-day treatment without the need to wear a temporary restoration, made possible by the CEREC® technology. If you need a dental restoration, have a dental emergency, or simply need to improve how your teeth look, visit our Vista dental office for an immediate solution.<br><br></p><h2>How The CEREC® Technology Works</h2><p><br></p><p>Our CEREC® system can be used to create crowns, veneers, inlays and onlays while you wait. At Tri-City Dental Excellence, we take digital images of the tooth and mouth and immediately upload them into the software. Using CAD/CAM technology, we create a computerized image of the tooth along with the exact dimensions and blueprint for what the new restoration needs to look like. The software processes the information quickly before making comprehensive recommendations for the restoration. The software accounts for every detail.</p><p>We then send the instructions and specifications to our milling machine, which will effectively print the restoration in our office. You no longer need to wear a temporary solution and return for a permanent one at a later date. Since our software is so accurate, there is very little need to make any adjustments once the crown is in place. We can complete all necessary steps in one appointment. Beyond being convenient, the results are just as stunning as they can be using the traditional method. You will experience the results you are looking for as fast as possible so that you can begin to enjoy your smile again. To learn more, we invite you to call (760) 216-6886.</p><p><br></p>', 'At Tri-City Dental Excellence, we are a CEREC® dentist that specializes in creating beautiful smiles in one visit. By using the latest in dental technology, we can transform your smile into one that is bright, beautiful and one that you are proud to show off. If you live in the Vista, CA area, we invite you to call our office to discuss any oral health issues you are struggling with or anything that you do not like about the appearance of your smile. We can correct both in our vista dental office.\n\nAs a local dentist, we understand how uncomfortable it can be to smile when one does not like his or her teeth due to unsightly gaps, dark stains, or problems with their shape. When you visit our cosmetic dentist office, we can discuss any issues that you have with your smile and create a plan for how to address it. This is the standard approach that most cosmetic dentists will take. What makes our Vista dental office different is that we use the CEREC® technology to improve your smile in one visit. This means even the busiest of people can take the time to have their smile improved.', NULL, NULL, NULL, NULL, NULL, 1, 'Vista, CA', '2025-09-11 13:21:33', '2025-09-11 13:21:33'),
(5, 'Dental Checkup', 'dental-checkup', 'uploads/01K4X3S9NCJ4B3MZHWM3P7PWRP.jpg', 'uploads/01K4X3S9NKHED7DH5G8BXDM6QZ.svg', '<h3>Why You Need a Dental Checkup</h3><p><br></p><p>There is a direct link between visiting the dentist and keeping your natural teeth. If you want to ensure that you have a full mouth of healthy teeth, then visit the dentist. Gallup Poll released a study in 2014 finding that the states with the highest percentage of dental visits also had the lowest percentage of adult tooth loss. For example, in Connecticut, 74 percent of adults visited the dentist in the past year, and their rate of adult tooth loss was only 9 percent. On the other hand, only 57 percent of adults in West Virginia visited the dentist in the past year, and 37 percent of adults have complete tooth loss. The correlation is clear and should prompt you to give us a call. If you do lose your teeth, we can help by providing you with replacements in the form of dental implants, bridges, or dentures. Still, there is no need for you to experience significant tooth loss when you visit our office regularly for preventative care. Saving your teeth, after all, is less time-consuming and less expensive.</p><p>Another reason to schedule a dental check-up is to make sure that you don\'t experience a toothache or infection. We treat patients throughout the Vista area and find that toothaches can create enough discomfort to cause people to miss work. In fact, according to the Center for Disease Control, 164 million work hours are lost each and every year due to dental related health issues. If you have a busy schedule and feel you do not have time for the dentist, you definitely need to schedule a dental checkup. Failing to do so could result in a more serious health condition forming and the need to take time off of work. After all, without preventative dental care, you are at a greater risk for tooth decay, infection, and gum disease.</p><p><br></p><h3>What Happens at Your Dental Check-Up</h3><p><br></p><p>At Tri-City Dental Excellence, we are a gentle dentist, being sure to complete your dental checkup in a way that is comfortable and relaxing. We understand that some people do not visit the dentist since they have a dental phobia or concern that something may be wrong. If this is the case, and you do have a cavity, we will treat your tooth gently and carefully so that we can address your dental health issues without causing you any further irritation.<br><br></p><h2>Call Us to Schedule a Checkup Today</h2><p>We invite you to call <a href=\"tel:760-216-6886\"><span style=\"text-decoration: underline;\">(760)-216-6886</span></a> and schedule your dental checkup right away. When you come in, our friendly staff will make sure everything is ready to go. Next, we will take images of your teeth and gums to see if there are any infections or decay that are under the surface. We will also perform a visual inspection of your gums and each one of your teeth. During this time, we will also be looking for signs of infection, tooth decay, gum disease, and oral cancer. If we identify any of these issues, we will discuss treatment options with you and may even be able to treat minor cavities that day. Before starting any procedures we will discuss them in detail to ensure that you are comfortable. We will also clean your teeth before you go to ensure that you do not have any lingering plaque or bacteria in your mouth. When you visit our Vista, CA dental office, we will provide you the highest quality of care we can, by completing your dental checkup efficiently and gently.</p><p><br></p><h2>The Benefits of Coming in Now</h2><p>At Tri-City Dental Excellence, we want you to visit our dentist office at the first sign of discomfort. If you have a slight toothache or irritation in your gums, you can schedule a dental exam. If there is a problem, we can correct it immediately, rather than allowing it to grow and spread. In many cases, we can help you to avoid experiencing any significant discomfort by simply removing the decayed area while it is still small. Otherwise, you may find yourself with a dental emergency as an untreated cavity spreads. Fortunately, we make it easy to schedule a dental checkup with our Vista dentist office. All you need to do is call <a href=\"tel:760-216-6886\"><span style=\"text-decoration: underline;\">(760)-216-6886</span></a> to schedule an appointment. We will work within your schedule to ensure that you receive the care you need, when you need it.</p><p><br></p><h2>Why You Shouldn’t Wait for Dental Care</h2><p><br></p><p>While we understand that many people wait to seek dental care due to anxiety, time, or finances, we do not recommend it. Instead, we suggest that you schedule a dental exam at least once every six months, even if you are not experiencing any discomfort. Doing so will allow us to remove any plaque or bacteria that is on your teeth, ensure that you do not have any cavities that are forming, and prevent you from experiencing gum disease. Our goal is to treat you before you have any health issues, and a dental checkup allows us to do so. We welcome you to come in so that we can protect and improve your oral health.</p><p><br></p>', 'A regular dental checkup offers patients professional dental cleaning services to detect and prevent tooth infections while helping maintain healthy teeth. Regular dental checkups are a standard service offered at Tri-City Dental Excellence.\n\nNo matter the age, most people tend to avoid the subject when hearing that they have another dental checkup soon. However, regular dental checkups are crucial to maintaining oral health. With a dental checkup every six months, patients can receive the professional care they need for their teeth.\n\nDuring a checkup, we can not only clean your teeth and gums, but can also look for signs of any oral health issues. If an issue should be found, we can treat it as soon as possible. We can also go over effective cleaning methods and make recommendations to help keep teeth healthy.\n\nIf you want to keep your teeth healthy with professional cleaning and examination services, schedule a dental checkup with us today.', NULL, NULL, NULL, NULL, NULL, 1, 'Vista, CA', '2025-09-11 13:24:37', '2025-09-11 13:24:37'),
(6, 'Dental Bridges', 'dental-bridges', 'uploads/01K4X40GNGWC2Q3JPDBW7W9E4A.jpg', 'uploads/01K4X40GNR7Y9R5TT940B2NR8H.svg', '<h2>What is a Dental Bridge?</h2><p>A bridge is a fixed prosthetic that can be an effective solution in cases of partial tooth loss. It is exactly as the name suggests, a bridge that replaces lost teeth between your remaining strong ones. However, in order to qualify for a dental bridge, you must have remaining teeth that are strong enough to support it. If you do, we will place dental crowns on those teeth these teeth so they can serve as anchors to hold up a gum-colored base that we can use to secure the bridge. Essentially, your remaining teeth provide the support necessary for ensuring your new tooth or teeth stay in place.</p><h2>Why should I get a dental bridge?</h2><p>There are several reasons to get a dental bridge, including restoring the appearance of your smile; giving you the ability to eat and speak normally; preserving the shape and structure of your face; and preventing pressure and wear on your remaining teeth.</p><h3>How does a dental bridge compare to standard dentures?</h3><p>When you visit our dental office, we can discuss what the differences will be like from the perspective of the treatment and process. Generally speaking, the most significant difference between a dental bridge and dentures is that dentures are removable. Since they need to come out nightly, you will not have a full set of teeth 24/7. Simultaneously, anything removable runs the risk of becoming loose or even falling out at inconvenient times. For this reason, patients may be uncomfortable wearing dentures and prefer a more secure solution. If you are wearing dentures currently and find that you have difficulty eating your favorite foods, laughing loudly, or playing sports when wearing them, consider this alternative.</p><h2>Will my dental bridge look natural?</h2><p>Absolutely. At Tri-City Dental Excellence, we will take every step necessary to ensure they look natural and fit perfectly. We begin by taking accurate measurements and also matching the shade of your prosthetic with your surrounding natural teeth. If your other teeth are stained or yellow, now is an excellent time to whiten them since we will create your new teeth using materials that are both resistant to stain and bleach.</p><h3>How long does a dental bridge last?</h3><p>The duration of a dental bridge is different for everyone and is impacted by your daily habits. However, fixed dental bridges can last for 15 years or even longer. On the short end, they tend to last for five years. One thing to keep in mind is that the overall health of your mouth will influence the longevity of your bridge. Since the natural teeth with dental crowns determine the stability of the bridge, you must keep your natural teeth healthy. We recommend you do so by visiting our Vista, CA dental office for a teeth cleaning and dental examination twice a year. We can remove built-up plaque to prevent decay and infections. If you develop any oral health problems, we will address them immediately. We will prevent the problems from spreading do not spread and your mouth can remain in excellent health.</p><h3>What can I expect from the procedure?</h3><p>When you visit our dentist office for a dental bridge, we will begin by conducting an examination and taking X-rays. We need to determine whether your remaining teeth are strong enough to support a bridge. We also need to make sure you do not have any decay or infections. If you do, we will treat the problem before placing your bridge. Afterward, we will prepare your abutment teeth for the placing of dental crowns. We remove a small portion of the enamel from around the teeth. Next, we will take measurements, make an impression, and use a shade card to determine what shade your new teeth need to be. This information will all be sent to the dental lab to create your new crowns and bridge. In the meantime, we will place a temporary bridge in your mouth. This will not look as good or be as secure as the final product, but it will preserve your appearance while you wait.</p><p>Once your new bridge is ready, you will need to come back to our Vista, CA dentist office so we can remove the temporary bridge and bond the new one in place in place. We may need to make some minor adjustments during the fitting process and will do what is necessary to ensure that it fits correctly, is comfortable, and looks natural. Taking the time to do so will help you to enjoy your new teeth now and in the future.</p><h3>Will getting a dental brdige be uncomfortable?</h3><p>At Tri-City Dental Excellence, we can provide you with anesthesia to help you remain comfortable while getting your new dental bridge. The only time anesthesia may be necessary is when we are preparing your teeth or when we are securing your bridge in place. Feel free to let us know how you are feeling about the procedure and will help you to relax.</p>', 'If you are missing some of your teeth, we can replace them using a dental bridge. This is a secure and permanent alternative to wearing dentures. We can work to make a dental bridge look entirely natural after we place it on your teeth. We begin the procedure by taking precise measurements of your teeth in our dentist office. We will also take an impression, so the dental lab has all the information they need to create replacement teeth that look like your natural ones. To find out if you are a good candidate for the procedure, call (760) 216-6886 and schedule a consultation. At Tri-City Dental Excellence, we offer several solutions for replacing missing teeth, so if a bridge is not suited to your needs, we will recommend a different solution.', 'If you are missing some of your teeth, we can replace them using a dental bridge. This is a secure and permanent alternative to wearing dentures. We can work to make a dental bridge look entirely natural after we place it on your teeth. We begin the procedure by taking precise measurements of your teeth in our dentist office. We will also take an impression, so the dental lab has all the information they need to create replacement teeth that look like your natural ones. To find out if you are a good candidate for the procedure, call (760) 216-6886 and schedule a consultation. At Tri-City Dental Excellence, we offer several solutions for replacing missing teeth, so if a bridge is not suited to your needs, we will recommend a different solution.', NULL, NULL, NULL, NULL, 1, 'Vista, CA', '2025-09-11 13:28:33', '2025-09-11 13:28:33'),
(7, 'Dentures and Partial Dentures', 'dentures-and-partial-dentures', 'uploads/01K4X46QS8NVD5AS9ZKM1MX1SS.jpg', 'uploads/01K4X49BHW8HC9K0071WBB3N9M.svg', '<h3>Dentures Can Help Prevent Further Oral Health Issues</h3><p><br></p><p>The purpose of dental care and oral hygiene is to prevent tooth loss as much as possible. However, there are cases in which tooth loss is unavoidable. When an infection advances to later stages or begins to spread, tooth extraction may become the only option. If a tooth falls out on its own or is knocked out, there is a chance the empty socket can cause the other teeth to begin to shift.</p><p>The doctor can help restore missing teeth with dentures or partial dentures. By ensuring there are no more traces of infection in the mouth, dentures can help to prevent the spread of further contamination to the mouth or jaw. Even with dentures, patients will want to continue an oral hygiene routine that involves keeping the gums and mouth clean.</p><p>With partial dentures or at least several natural teeth still in the mouth, it is essential to keep up regular oral hygiene methods, including:</p><ul><li><strong>Daily brushing.</strong> As soon as teeth emerge in a child’s mouth, it is vital to brush regularly. It is wise to brush at least twice daily through one’s entire life</li><li><strong>Consistent Flossing.</strong> Daily flossing will remove food from between teeth. Doing this will keep bacteria from growing on the gums and beneath the teeth.</li><li><strong>Regular Visits to the Dentist.</strong> Patients should visit our dental staff at least once every six months. More frequent visits may be necessary for restorative care.</li></ul><h2>Full Dentures</h2><p>When To Get Partial Dentures</p><p>As discussed in an article by the Oral Health Foundation, there are key differences between full and partial dentures. Partial dentures are ideal for patients who have lost multiple teeth but still have healthy natural teeth remaining. This option may also be a wise one for a patient who has several decaying teeth that need to be extracted to prevent the spread of infection and other dental problems. This procedure may also be the right option for patients who are concerned about the cost. Although prices can vary depending on insurance, partial dentures can be an affordable tooth replacement option. Patients worried about pain from a dental procedure may feel eased, knowing that the process is often less invasive than other replacement options.</p><p><strong>Placing the Dental Implant</strong><br>Our team will first discuss the benefits and challenges of wearing both dentures and partial dentures. When the patient is ready to begin the procedure for dentures, X-rays and impressions of the person’s mouth will need to be made. There will also be a review of the patient’s health history, including current medications and recent surgeries. The impressions will go to a lab where a technician makes the full dentures.</p><p>The patient will get the apparatus at the following appointment. During this appointment, the doctor will remove any remaining teeth that need to come out, though this can also be done at a prior date. The dental professional will test the dentures to make sure everything fits properly, and the patient feels comfortable with the dentures in the mouth. The dentist may need to make additional adjustments. Be aware, some kinds of dentures can be ready for fitting right after removing teeth, while others require a patient’s gums to be completely healed.</p><p><strong>Partial Dentures</strong></p><p><br></p><p>When To Get Complete Dentures<br><br></p><p>Everyone should be able to enjoy a comfortable use of their mouth and a bright smile. Going through life without teeth may cause unnecessary hardships. Missing teeth can complicate regular activities such as eating, speaking, and even socializing. Fortunately, dentures can solve this concern. If a patient has lost all teeth, or if a dental professional has pulled them all, the person should consider full dentures. At Tri-City Dental Excellence, we can customize the right set of dentures to fit in the person’s mouth and provide a natural-looking solution.</p><p><br></p><p>Getting Partial Dentures<br><br></p><p>The process of getting partial dentures is similar, though the apparatus itself has some differences. Partial dentures are connected by a metal framework to secure them in the person’s mouth. The dentist will use a fixed bridge to connect the partial dentures to any remaining natural teeth. This type of denture is also removable.</p><p>The patient will make two or three appointments to complete this process. Our team will make sure everything fits well and that the patient can have full mouth function with it. Patients should be prepared to wait a few weeks for the dentures. It takes time for the lab technician to make the appliance based on the molds our dental team makes.</p><p><br></p><p>What Material Dentures Are Made Of<br><br></p><p>One of the most popular reasons why people choose dentures and partial dentures are their resemblance to natural teeth. Dentures consist of a gum-colored base, which is often coated with acrylic or plastic. Other materials may be used in modern denture bases, as discussed in an article originally published in the Contemporary Clinical Dentistry. Artificial teeth attach to the base. The teeth are typically composed of porcelain or a resin, such as acrylic. While there are permanent dentures, most are removable, which can help the patient maintain and clean them efficiently.</p><h2>Main Teeth Replacement Options​</h2><p>There are several options that patients can choose from when it comes to teeth replacement. Some people may rely on more than one, depending on the situation.</p><p><br></p><p>1. Implants<br><br></p><p>This option is the most permanent, having the potential to go without a replacement. It requires several visits, time for healing, and may take a year to complete. The process involves placing an implant into the bone structure of the jaw, where it should sit permanently. The dentist then places a crown over the implant for a realistic look. Most patients can then use the tooth immediately.</p><p>2. Bridges<br><br></p><p>An often-faster option and, depending on insurance, more cost-conscious option is to get bridges. However, unlike implants, these typically need replacement every five to ten years. With exceptional care, some people extend that lifespan to about 15 years. Bridges involve cementing an artificial tooth into the available gap and securing it to the natural teeth or implants on both or either side. This procedure typically takes about two visits to complete and may include a crown.</p><p>3. Dentures<br><br></p><p>Patients may choose to get either full or partial dentures, depending on the extent of tooth loss. Most types of dentures are removable. If a person still has natural teeth, the dentist must note the color of the teeth and gums. That way, the doctor can ensure the coating of the dentures match the natural teeth, especially if the teeth are visible.</p><p><br><br></p><h2>Helping Dentures Last With Proper Care</h2><p>Dentures can work effectively for up to 10 years. This time frame will depend mainly on the person’s commitment and diligence to maintaining the appliance. Just as patients should brush and floss natural teeth, people must do the same with dentures. These habits will help prevent and remove stains from artificial teeth, helping to preserve the color.</p><p>Each night, patients should remove the dentures and soak the appliance in a solution that we recommend to help clean the dentures. After every meal, the wearer should take out the dentures and rinse them off. When doing this, the person must be careful not to drop the appliance. It may be helpful to place a towel on the counter or in the sink.</p><p>Dentures should allow the person to eat most foods without any issues. However, the patient should be careful about chewing hard items such as candy, nuts, and ice. Sticky foods can also pull the dentures out of the person’s mouth. If the person notices any damage to the base or artificial teeth, they should contact our office right away.</p><p>People should not try to fix the dentures without professional assistance. An article on the American Dental Association website offers more information on the subject of maintaining dentures and what to do if the break. In all cases of the dentures sustaining damage, it is crucial to call us for repairs.</p><h2>Denture Myths Versus Reality</h2><p>There are many misconceptions about dentures that can stand in the way of people getting the care they need. Learning the facts about some common myths can help patients better understand their options. Talk to our team to get further information and specific advice for your situation.</p><p><br></p><ul><li><strong>Myth #1: </strong>Discomfort and irritation is a normal part of having to wear dentures. Today’s techniques allow the creation of dentures that fit well. If you are not comfortable, it is a sign that something is wrong. If this is the case, consult a dentist.</li></ul><p><br></p><ul><li><strong>Myth #2: </strong>Getting dentures means not having to return to the dentist again. Even if you no longer have natural teeth, seeing the dentist at least once a year is vital to maintaining oral health. Dentists can identify and treat gum issues and other problems. They can also adjust your dentures and make sure everything is going well.</li></ul><p><br></p><ul><li><strong>Myth #3: </strong>Getting dentures means never being able to eat anything besides soft food again. While it can take a little time to adjust to the feel of eating with dentures, many people can enjoy a variety of foods. The dental team can talk to you in further detail about any concerns regarding the potential effect of your diet on your dentures.</li></ul><p><br></p>', 'Dentures and partial dentures are most commonly associated with seniors, but many young people wear them too. According to the CDC, adult tooth loss has been on the decline for roughly 70 years. Even so, many Americans rely on dentures to improve not just their smiles but also their speech and ability to chew food comfortably. Dentures and partial dentures fill any tooth loss gaps with false teeth.Dentures and partial dentures are available at Tri-City Dental Excellence in Vista and the surrounding area. We offer a range of tooth replacement options.By investing in a dental veneer treatment, we can help you change the size, shape and shade of your teeth for your specific needs.', NULL, NULL, NULL, '[]', NULL, 1, 'Vista, CA', '2025-09-11 13:31:16', '2025-10-03 13:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2sLo9npWFvBQTRdjdMwauu8kOaLOV8YqmbNFStNC', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaG5NUFN2Y1FmdDU3amxEdEIxQzBtRzVycmYzNUpTZTJlNjZNd2pVYSI7czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6MTE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiREZWc5UlMuMXltMnBLREdTcUt0WXdlTExKa1ZpWmVadnlMMFBQeWxKMW5mYTBXc09sdGlSMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91cGxvYWRzLzAxSzRYRFBQV1BNUlpESzFGRkpFR1FYQTZILnBuZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6ODoiZmlsYW1lbnQiO2E6MDp7fXM6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1761398538),
('kcgmch02TGCPZkIfq9eZ4VQujrzgRXyNZkjYj2AD', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVzZNUkh1OXRNaVVPRmlVNk1DU1d3SkdCNjY3ZjlYUWM2TmprVGhodCI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl8zZGM3YTkxM2VmNWZkNGI4OTBlY2FiZTM0ODcwODU1NzNlMTZjZjgyIjtpOjExO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkRGVnOVJTLjF5bTJwS0RHU3FLdFl3ZUxMSmtWaVplWnZ5TDBQUHlsSjFuZmEwV3NPbHRpUjIiO30=', 1761392691);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `payload` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group`, `name`, `locked`, `payload`, `created_at`, `updated_at`) VALUES
(1, 'KaidoSetting', 'site_name', 0, '\"dental clinic\"', '2025-06-04 01:04:09', '2025-09-05 08:48:51'),
(2, 'KaidoSetting', 'site_active', 0, 'true', '2025-06-04 01:04:09', '2025-09-05 08:48:51'),
(3, 'KaidoSetting', 'registration_enabled', 0, 'false', '2025-06-04 01:04:09', '2025-09-05 08:48:51'),
(4, 'KaidoSetting', 'login_enabled', 0, 'true', '2025-06-04 01:04:09', '2025-09-05 08:48:51'),
(5, 'KaidoSetting', 'password_reset_enabled', 0, 'true', '2025-06-04 01:04:09', '2025-09-05 08:48:51'),
(6, 'KaidoSetting', 'sso_enabled', 0, 'false', '2025-06-04 01:04:09', '2025-09-05 08:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `socialite_users`
--

CREATE TABLE `socialite_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `description`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Dips & Spreads', 'dips-spreads', NULL, 1, 1, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(2, 'Finger Foods', 'finger-foods', NULL, 1, 1, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(3, 'Cheese Platters', 'cheese-platters', NULL, 1, 1, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(4, 'Chicken', 'chicken', NULL, 1, 2, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(5, 'Beef', 'beef', NULL, 1, 2, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(6, 'Pasta', 'pasta', NULL, 1, 2, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(7, 'Seafood', 'seafood', NULL, 1, 2, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(8, 'Vegetarian', 'vegetarian', NULL, 1, 2, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(9, 'Green Salads', 'green-salads', NULL, 1, 3, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(10, 'Pasta Salads', 'pasta-salads', NULL, 1, 3, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(11, 'Fruit Salads', 'fruit-salads', NULL, 1, 3, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(12, 'Grain Salads', 'grain-salads', NULL, 1, 3, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(13, 'Broth-based Soups', 'broth-based-soups', NULL, 1, 4, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(14, 'Creamy Soups', 'creamy-soups', NULL, 1, 4, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(15, 'Chili', 'chili', NULL, 1, 4, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(16, 'Vegetables', 'vegetables', NULL, 1, 5, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(17, 'Potatoes', 'potatoes', NULL, 1, 5, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(18, 'Rice', 'rice', NULL, 1, 5, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(19, 'Bread', 'bread', NULL, 1, 5, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(20, 'Pancakes & Waffles', 'pancakes-waffles', NULL, 1, 6, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(21, 'Egg Dishes', 'egg-dishes', NULL, 1, 6, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(22, 'Breakfast Pastries', 'breakfast-pastries', NULL, 1, 6, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(23, 'Cakes', 'cakes', NULL, 1, 7, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(24, 'Cookies', 'cookies', NULL, 1, 7, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(25, 'Pies & Tarts', 'pies-tarts', NULL, 1, 7, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(26, 'Frozen Desserts', 'frozen-desserts', NULL, 1, 7, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(27, 'Smoothies', 'smoothies', NULL, 1, 8, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(28, 'Coffee Drinks', 'coffee-drinks', NULL, 1, 8, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(29, 'Cocktails', 'cocktails', NULL, 1, 8, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(30, 'Mocktails', 'mocktails', NULL, 1, 8, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(31, 'Healthy Snacks', 'healthy-snacks', NULL, 1, 9, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(32, 'Sweet Snacks', 'sweet-snacks', NULL, 1, 9, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(33, 'Savory Snacks', 'savory-snacks', NULL, 1, 9, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(34, 'Italian', 'italian', NULL, 1, 10, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(35, 'Mexican', 'mexican', NULL, 1, 10, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(36, 'Indian', 'indian', NULL, 1, 10, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(37, 'Asian', 'asian', NULL, 1, 10, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(38, 'Vegan Main Dishes', 'vegan-main-dishes', NULL, 1, 11, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(39, 'Vegetarian Appetizers', 'vegetarian-appetizers', NULL, 1, 11, '2025-06-04 01:04:10', '2025-06-04 01:04:10'),
(40, 'Plant-based Sides', 'plant-based-sides', NULL, 1, 11, '2025-06-04 01:04:10', '2025-06-04 01:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `theme_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar_url`, `theme`, `theme_color`) VALUES
(1, 'Pearlie Roberts', 'sigmund.yundt@example.net', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'di5jD7fzok', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(2, 'Alexandro Stanton Jr.', 'hubert62@example.com', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'XofOaUe2HA', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(3, 'Jerrell Waelchi', 'chanelle.rohan@example.org', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'Ub9DEZvcLi', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(4, 'Prof. Lulu Cartwright DVM', 'tjacobson@example.com', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'slMpLujpuu', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(5, 'Edmund Lakin IV', 'cbarton@example.org', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'MbgPrkFFgF', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(6, 'Elza Mosciski I', 'darby.gorczany@example.org', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'HAJ7xcpUSt', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(7, 'Allen Pollich', 'kenna.ondricka@example.com', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'Gfpox9gkzK', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(8, 'Kamille Gutmann', 'ankunding.graciela@example.org', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'z7lBzUmPxR', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(9, 'Haylee Dare', 'louie51@example.org', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'vPUnEMfRTl', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(10, 'Prof. Lucile Rohan', 'cboehm@example.net', '2025-06-04 01:04:10', '$2y$12$u20cFSStNo4uNoxH2fI25uNeCdbQBDMXeNH1BU6/xVVyFbNOzl/Gm', 'lqwoDlhDZu', '2025-06-04 01:04:10', '2025-06-04 01:04:10', NULL, 'default', NULL),
(11, 'admin', 'admin@gmail.com', '2025-06-04 01:04:10', '$2y$12$Deg9RS.1ym2pKDGSqKtYweLLJkViZeZvyL0PPylJ1nfa0WsOltiR2', 'dXfCSr5DTFvoDyg4MnlUff1ZgS1KTRjCitj7Od2CEZ6izzkGpzmAjF49ZWzQ', '2025-06-04 01:04:10', '2025-06-04 01:11:10', NULL, 'default', NULL),
(12, 'Micah Chen', 'hohy@mailinator.com', NULL, '$2y$12$UC6lUwi3iiV4PceEtD73yeCpN8gbO7ApsgviQcDqMZJYfvYi6qoli', NULL, '2025-06-09 03:46:33', '2025-06-09 03:46:33', NULL, 'default', NULL),
(13, 'Anim nulla minima re Sed voluptate dolore', 'pydi@mailinator.com', NULL, '$2y$12$ILQ/uq1k0nk2jGps5eBxMOsnGpe9qsEWsjTdxJbvS8NOn7bDwbyAq', NULL, '2025-06-16 08:59:36', '2025-06-16 08:59:36', NULL, 'default', NULL),
(14, 'Earum commodo tempor Sint quisquam nostr', 'waboqiv@mailinator.com', NULL, '$2y$12$OFhAzkYWhV9OcLljZ5hL.OnNYjWRhhjailatrtc3E7aYZnz3qzQpC', NULL, '2025-06-16 09:48:33', '2025-06-16 09:48:33', NULL, 'default', NULL),
(15, 'Sint pariatur Non d Voluptas totam vero ', 'fene@mailinator.com', NULL, '$2y$12$oKbLjqCKRWLQA99Bdyr3Lu46b.ofiDQiqSIpD05aN4vAWtm2G0SHK', NULL, '2025-06-16 10:00:56', '2025-06-16 10:00:56', NULL, 'default', NULL),
(16, 'Molestiae facilis au Hic vel rerum sit b', 'paxysus@mailinator.com', '2025-06-22 05:43:03', '$2y$12$ONUsGF5MZjvGkS5u2et6u.BIdrr9sid85s2.ZhSVeawDUyJ7mk7se', NULL, '2025-06-21 23:37:43', '2025-06-21 23:37:43', NULL, 'default', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website_logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fav_icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linkedin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_card_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_card_paragraph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_spam_keywords` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `map_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `primary_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accent_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `white_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_divider_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_header_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `top_header_back` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `top_header_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `top_header_text_hover` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `top_header_button_hover` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `top_header_button_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `top_header_button_text_hover` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `primary_button_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_button_hover_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `primary_button_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_button_text_hover_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_back_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_text_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navbar_back_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navbar_menu_text_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navbar_menu_text_hover_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navbar_menu_mobile_text_hover_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navbar_menu_mobile_text_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navbar_dropdown_back_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navbar_icon_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_media_icon_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_media_icon_back_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_home_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_home_description` text COLLATE utf8mb4_unicode_ci,
  `seo_home_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_home_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_blog_description` text COLLATE utf8mb4_unicode_ci,
  `seo_blog_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_service_description` text COLLATE utf8mb4_unicode_ci,
  `seo_service_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_service_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_contact_description` text COLLATE utf8mb4_unicode_ci,
  `seo_contact_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_contact_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `name`, `description`, `footer`, `google`, `author`, `keywords`, `tags`, `url`, `website_logo`, `fav_icon`, `address`, `email`, `phone`, `linkedin`, `footer_heading`, `footer_card_title`, `footer_card_paragraph`, `contact_spam_keywords`, `created_at`, `map`, `map_link`, `updated_at`, `primary_color`, `secondary_color`, `text_color`, `accent_color`, `white_color`, `divider_color`, `dark_divider_color`, `error_color`, `top_header_button`, `top_header_back`, `top_header_text`, `top_header_text_hover`, `top_header_button_hover`, `top_header_button_text`, `top_header_button_text_hover`, `primary_button_color`, `primary_button_hover_color`, `primary_button_text_color`, `primary_button_text_hover_color`, `footer_back_color`, `footer_text_color`, `navbar_back_color`, `navbar_menu_text_color`, `navbar_menu_text_hover_color`, `navbar_menu_mobile_text_hover_color`, `navbar_menu_mobile_text_color`, `navbar_dropdown_back_color`, `navbar_icon_color`, `social_media_icon_color`, `social_media_icon_back_color`, `seo_home_title`, `seo_home_description`, `seo_home_keywords`, `seo_home_image`, `seo_blog_title`, `seo_blog_description`, `seo_blog_keywords`, `seo_blog_image`, `seo_service_title`, `seo_service_description`, `seo_service_keywords`, `seo_service_image`, `seo_contact_title`, `seo_contact_description`, `seo_contact_keywords`, `seo_contact_image`) VALUES
(1, 'Dental Clinic', 'Ready to discuss opportunities in ag & forestry trading, logistics coordination, or desk support roles.', '© 2025 your copyright. All rights reserved.', NULL, 'Jonathan Davis', NULL, NULL, 'http://jonathon-portfolio.test/', 'uploads/01K4XDPPWPMRZDK1FFJEGQXA6H.png', 'uploads/01K4XDPPWX5KDJTTCZR5A5S533.png', 'Tennessee, Washington', 'test@gmail.com', ' (123) 456-7890', 'https://www.linkedin.com/in/durjaygp/', 'Let\'s Connect', 'Quick Response Promise', 'I respond to all inquiries within 24 hours. Currently prioritizing Washington-based opportunities in ag/forestry trading and logistics.', NULL, '2025-10-01 17:49:32', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d193375.44825389085!2d-117.253136!3d33.191631!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dc741d0876e547%3A0x5ee679eb71b4aa9!2sTri-City%20Dental%20Excellence!5e1!3m2!1sen!2sus!4v1759323969157!5m2!1sen!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.google.com/maps/place/Tri-City+Dental/@33.1864518,-117.2864629,11.93z/data=!4m6!3m5!1s0x80dc741d0876e547:0x5ee679eb71b4aa9!8m2!3d33.1916313!4d-117.2531356!16s%2Fg%2F11b90dq5dh?entry=ttu', '2025-10-25 06:04:54', '#4A5B61', '#F5F7F8', '#334E57', '#C3D941', '#FFFFFF', '#4A5B6112', '#FFFFFF1F', '#E65757FF', '#C3D941', '#4A5B61', '#FFFFFF', '#C3D941', '#B6CB38', '#000000', '#111111', '#C3D941', '#B6CB38', '#000000', '#111111', '#3d3a3a', '#ffffff', '#ffffff', '#4A5B61', '#C3D941', '#C3D941', '#4A5B61', '#FFFFFF', '#C3D941', '#ffffff', '#000000', 'The New You', 'Vero odit est quia s', 'Fuga Veniam ipsam ', NULL, 'Voluptatum ipsum tem', 'Quibusdam neque prov', 'Quos tempora minima ', NULL, 'Dolores est tempori', 'Aut ut eu cupiditate', 'Atque sunt nisi fuga', NULL, 'Illo velit voluptas ', 'Magni ipsa eiusmod ', 'Tempore quis aperia', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_name_unique` (`name`),
  ADD KEY `blogs_user_id_foreign` (`user_id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breezy_sessions_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_reviews`
--
ALTER TABLE `custom_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_settings`
--
ALTER TABLE `homepage_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_name_slug_index` (`name`,`slug`),
  ADD KEY `products_sku_index` (`sku`),
  ADD KEY `products_tags_index` (`tags`),
  ADD KEY `products_category_id_index` (`category_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_group_name_unique` (`group`,`name`);

--
-- Indexes for table `socialite_users`
--
ALTER TABLE `socialite_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialite_users_provider_provider_id_unique` (`provider`,`provider_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_name_unique` (`name`),
  ADD UNIQUE KEY `subcategories_slug_unique` (`slug`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_reviews`
--
ALTER TABLE `custom_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `homepage_settings`
--
ALTER TABLE `homepage_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socialite_users`
--
ALTER TABLE `socialite_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`),
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
