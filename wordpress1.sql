-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 05:49 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress1`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-30 09:04:57', '2019-05-30 09:04:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 53, 'ActionScheduler', '', '', '', '2019-05-31 06:47:18', '2019-05-31 06:47:18', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 54, 'ActionScheduler', '', '', '', '2019-05-31 06:47:18', '2019-05-31 06:47:18', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 53, 'ActionScheduler', '', '', '', '2019-05-31 06:48:45', '2019-05-31 06:48:45', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 53, 'ActionScheduler', '', '', '', '2019-05-31 06:48:45', '2019-05-31 06:48:45', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 54, 'ActionScheduler', '', '', '', '2019-05-31 06:48:45', '2019-05-31 06:48:45', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 54, 'ActionScheduler', '', '', '', '2019-05-31 06:48:46', '2019-05-31 06:48:46', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dampow.local', 'yes'),
(2, 'home', 'http://dampow.local', 'yes'),
(3, 'blogname', 'dampow', 'yes'),
(4, 'blogdescription', 'Mua bán trao đổi ô tô cũ', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lexuandam96@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:151:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'magazine-point', 'yes'),
(41, 'stylesheet', 'magazine-point', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '78', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-2\";i:3;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:0:{}s:32:\"sidebar-header-right-widget-area\";a:0:{}s:30:\"sidebar-front-page-widget-area\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:14:{i:1559372415;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559379898;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559379914;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559379915;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559379918;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559383205;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559527954;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1559531099;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1559531539;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1559545205;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559552699;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1559566805;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1559606400;a:2:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559208208;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_timeout_browser_fd1885f00291b83c2cb49a9bbb9a909a', '1559811917', 'no'),
(123, '_site_transient_browser_fd1885f00291b83c2cb49a9bbb9a909a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.169\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_642e4b067f071a5f6f6d441c28391537', '1559811918', 'no'),
(127, '_site_transient_php_check_642e4b067f071a5f6f6d441c28391537', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(144, 'db_upgraded', '', 'yes'),
(146, 'can_compress_scripts', '1', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'acf_version', '5.7.7', 'yes'),
(157, 'woocommerce_store_address', 'Linh Duong, Hoang Mai', 'yes'),
(158, 'woocommerce_store_address_2', 'Hoang Mai', 'yes'),
(159, 'woocommerce_store_city', 'Ha Noi', 'yes'),
(160, 'woocommerce_default_country', 'VN:*', 'yes'),
(161, 'woocommerce_store_postcode', '100000', 'yes'),
(162, 'woocommerce_allowed_countries', 'all', 'yes'),
(163, 'woocommerce_all_except_countries', '', 'yes'),
(164, 'woocommerce_specific_allowed_countries', '', 'yes'),
(165, 'woocommerce_ship_to_countries', '', 'yes'),
(166, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(167, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(168, 'woocommerce_calc_taxes', 'no', 'yes'),
(169, 'woocommerce_enable_coupons', 'yes', 'yes'),
(170, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(171, 'woocommerce_currency', 'VND', 'yes'),
(172, 'woocommerce_currency_pos', 'left', 'yes'),
(173, 'woocommerce_price_thousand_sep', ',', 'yes'),
(174, 'woocommerce_price_decimal_sep', '.', 'yes'),
(175, 'woocommerce_price_num_decimals', '2', 'yes'),
(176, 'woocommerce_shop_page_id', '8', 'yes'),
(177, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(178, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(179, 'woocommerce_placeholder_image', '7', 'yes'),
(180, 'woocommerce_weight_unit', 'kg', 'yes'),
(181, 'woocommerce_dimension_unit', 'cm', 'yes'),
(182, 'woocommerce_enable_reviews', 'yes', 'yes'),
(183, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(184, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(185, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(186, 'woocommerce_review_rating_required', 'yes', 'no'),
(187, 'woocommerce_manage_stock', 'yes', 'yes'),
(188, 'woocommerce_hold_stock_minutes', '60', 'no'),
(189, 'woocommerce_notify_low_stock', 'yes', 'no'),
(190, 'woocommerce_notify_no_stock', 'yes', 'no'),
(191, 'woocommerce_stock_email_recipient', 'lexuandam96@gmail.com', 'no'),
(192, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(193, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(194, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(195, 'woocommerce_stock_format', '', 'yes'),
(196, 'woocommerce_file_download_method', 'force', 'no'),
(197, 'woocommerce_downloads_require_login', 'no', 'no'),
(198, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(199, 'woocommerce_prices_include_tax', 'no', 'yes'),
(200, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(201, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(202, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(203, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(204, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(205, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(206, 'woocommerce_price_display_suffix', '', 'yes'),
(207, 'woocommerce_tax_total_display', 'itemized', 'no'),
(208, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(209, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(210, 'woocommerce_ship_to_destination', 'billing', 'no'),
(211, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(212, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(213, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(214, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(215, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(216, 'woocommerce_registration_generate_username', 'yes', 'no'),
(217, 'woocommerce_registration_generate_password', 'yes', 'no'),
(218, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(219, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(220, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(221, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(222, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(223, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(224, 'woocommerce_trash_pending_orders', '', 'no'),
(225, 'woocommerce_trash_failed_orders', '', 'no'),
(226, 'woocommerce_trash_cancelled_orders', '', 'no'),
(227, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(228, 'woocommerce_email_from_name', 'oto', 'no'),
(229, 'woocommerce_email_from_address', 'lexuandam96@gmail.com', 'no'),
(230, 'woocommerce_email_header_image', '', 'no'),
(231, 'woocommerce_email_footer_text', '{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(232, 'woocommerce_email_base_color', '#96588a', 'no'),
(233, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(234, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(235, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(236, 'woocommerce_cart_page_id', '9', 'yes'),
(237, 'woocommerce_checkout_page_id', '10', 'yes'),
(238, 'woocommerce_myaccount_page_id', '11', 'yes'),
(239, 'woocommerce_terms_page_id', '', 'no'),
(240, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(241, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(242, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(243, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(244, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(245, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(246, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(247, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(248, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(249, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(250, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(251, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(252, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(253, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(254, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(255, 'woocommerce_api_enabled', 'no', 'yes'),
(256, 'woocommerce_allow_tracking', 'yes', 'no'),
(257, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(258, 'woocommerce_single_image_width', '600', 'yes'),
(259, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(260, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(261, 'woocommerce_demo_store', 'no', 'no'),
(262, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(263, 'current_theme_supports_woocommerce', 'no', 'yes'),
(264, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(267, 'default_product_cat', '15', 'yes'),
(272, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(273, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(274, 'widget_woocommerce_widget_cart', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(275, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(291, '_transient_timeout_external_ip_address_127.0.0.1', '1559812935', 'no'),
(292, '_transient_external_ip_address_127.0.0.1', '123.25.30.88', 'no'),
(296, 'woocommerce_obw_last_completed_step', 'activate', 'yes'),
(299, 'woocommerce_product_type', 'both', 'yes'),
(300, 'woocommerce_sell_in_person', '1', 'yes'),
(302, 'woocommerce_tracker_last_send', '1559208167', 'yes'),
(303, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(304, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(305, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(307, '_transient_shipping-transient-version', '1559208186', 'yes'),
(309, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(314, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(320, 'current_theme', 'Magazine Point', 'yes'),
(321, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559286282;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(322, 'theme_switched', '', 'yes'),
(323, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack could not be installed (Could not copy file.). <a href=\"http://dampow.local/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Please install it manually by clicking here.</a>', 'yes'),
(324, 'storefront_nux_fresh_site', '0', 'yes'),
(325, 'woocommerce_catalog_rows', '3', 'yes'),
(326, 'woocommerce_catalog_columns', '3', 'yes'),
(327, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(333, 'mailchimp_woocommerce_version', '2.1.16', 'no'),
(335, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(337, 'mailchimp-woocommerce-store_id', '5cefa118d4848', 'yes'),
(339, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(354, '_transient_product_query-transient-version', '1559286929', 'yes'),
(355, 'storefront_nux_dismissed', '1', 'yes'),
(356, 'storefront_nux_guided_tour', '1', 'yes'),
(362, 'product_cat_children', 'a:0:{}', 'yes'),
(365, '_transient_product-transient-version', '1559286609', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(425, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1559285326;}', 'no'),
(427, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:7;s:3:\"all\";i:7;s:8:\"approved\";s:1:\"7\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(428, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(432, 'WPLANG', 'vi', 'yes'),
(433, 'new_admin_email', 'lexuandam96@gmail.com', 'yes'),
(449, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(450, 'woocommerce_version', '3.6.4', 'yes'),
(451, 'woocommerce_db_version', '3.6.4', 'yes'),
(457, '_transient_timeout_wc_shipping_method_count', '1561878016', 'no'),
(458, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1559208186\";s:5:\"value\";i:2;}', 'no'),
(461, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559286136;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(548, '_transient_timeout_wc_product_loop_29229bfdf045651e0d6763c3ae2d9d0a', '1561878150', 'no'),
(549, '_transient_wc_product_loop_29229bfdf045651e0d6763c3ae2d9d0a', 'a:2:{s:7:\"version\";s:10:\"1559285262\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:52;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}}', 'no'),
(550, '_transient_timeout_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', '1561878150', 'no'),
(551, '_transient_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', 'a:2:{s:7:\"version\";s:10:\"1559285262\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:52;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(554, 'widget_magazine-point-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(555, 'widget_magazine-point-recent-posts-extended', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(556, 'widget_magazine-point-news-block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(557, 'widget_magazine-point-posts-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(558, 'widget_magazine-point-featured-page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(559, 'widget_magazine-point-tabbed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(560, 'theme_mods_magazine-point', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";s:0:\"\";s:16:\"background_image\";s:0:\"\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:15:\"background_size\";s:5:\"cover\";s:13:\"theme_options\";a:7:{s:10:\"show_title\";b:1;s:12:\"show_tagline\";b:1;s:21:\"show_search_in_header\";b:1;s:18:\"show_breaking_news\";b:1;s:22:\"breaking_news_category\";i:0;s:14:\"copyright_text\";s:50:\"Trung tâm mua bán trao đổi ô tô cũ - mới\";s:15:\"breadcrumb_type\";s:7:\"enabled\";}}', 'yes'),
(563, 'theme_switch_menu_locations', 'a:0:{}', 'yes'),
(564, 'theme_switched_via_customizer', '', 'yes'),
(565, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(608, 'category_children', 'a:0:{}', 'yes'),
(622, '_transient_timeout_wc_term_counts', '1561878618', 'no'),
(623, '_transient_wc_term_counts', 'a:1:{i:15;s:1:\"3\";}', 'no'),
(648, '_transient_timeout_wc_shipping_method_count_legacy', '1561880039', 'no'),
(649, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1559208186\";s:5:\"value\";i:2;}', 'no'),
(658, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes — no orders shall be fulfilled.', 'yes'),
(659, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(660, '_transient_is_multi_author', '0', 'yes'),
(702, '_transient_magazine_point_categories', '1', 'yes'),
(718, '_site_transient_timeout_theme_roots', '1559529745', 'no'),
(719, '_site_transient_theme_roots', 'a:5:{s:14:\"magazine-point\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(722, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.1.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.10-new-bundled.zip\";s:7:\"partial\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.10-partial-8.zip\";s:8:\"rollback\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-rollback-8.zip\";}s:7:\"current\";s:6:\"4.9.10\";s:7:\"version\";s:6:\"4.9.10\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"4.9.8\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1559527951;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(723, '_transient_timeout_wc_related_58', '1559614350', 'no'),
(724, '_transient_wc_related_58', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=58\";a:2:{i:0;s:2:\"52\";i:1;s:2:\"72\";}}', 'no'),
(725, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1559527952;s:7:\"checked\";a:5:{s:14:\"magazine-point\";s:5:\"1.0.1\";s:10:\"storefront\";s:5:\"2.5.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:4:{s:14:\"magazine-point\";a:4:{s:5:\"theme\";s:14:\"magazine-point\";s:11:\"new_version\";s:5:\"2.0.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/magazine-point/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/magazine-point.2.0.1.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:10:\"storefront\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"2.5.0\";s:7:\"updated\";s:19:\"2019-05-11 01:30:41\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/storefront/2.5.0/vi.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"2.0\";s:7:\"updated\";s:19:\"2015-10-22 10:28:45\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/2.0/vi.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2018-04-20 08:31:03\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.7/vi.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentysixteen\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2016-12-05 01:43:13\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/theme/twentysixteen/1.5/vi.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(726, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1559527954;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:55:\"any-mobile-theme-switcher/any-mobile-theme-switcher.php\";s:3:\"2.1\";s:9:\"hello.php\";s:3:\"1.7\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.4\";s:37:\"wp-mobile-detect/wp-mobile-detect.php\";s:3:\"2.0\";}s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.0.8\";s:7:\"updated\";s:19:\"2018-08-24 07:49:23\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.8/vi.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"3.6.4\";s:7:\"updated\";s:19:\"2019-05-30 01:44:05\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/woocommerce/3.6.4/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:55:\"any-mobile-theme-switcher/any-mobile-theme-switcher.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/any-mobile-theme-switcher\";s:4:\"slug\";s:25:\"any-mobile-theme-switcher\";s:6:\"plugin\";s:55:\"any-mobile-theme-switcher/any-mobile-theme-switcher.php\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/any-mobile-theme-switcher/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/any-mobile-theme-switcher.2.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/any-mobile-theme-switcher/assets/icon-128x128.png?rev=1109204\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/any-mobile-theme-switcher/assets/banner-772x250.png?rev=1109204\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"wp-mobile-detect/wp-mobile-detect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wp-mobile-detect\";s:4:\"slug\";s:16:\"wp-mobile-detect\";s:6:\"plugin\";s:37:\"wp-mobile-detect/wp-mobile-detect.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-mobile-detect/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-mobile-detect.2.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:60:\"https://s.w.org/plugins/geopattern-icon/wp-mobile-detect.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1559207184:1'),
(4, 7, '_wp_attached_file', 'woocommerce-placeholder.png'),
(5, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 13, '_wp_attached_file', '2019/05/beanie.jpg'),
(7, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2019/05/beanie.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"beanie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"beanie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 13, '_starter_content_theme', 'storefront'),
(9, 13, '_customize_draft_post_name', 'beanie-image'),
(10, 14, '_wp_attached_file', '2019/05/belt.jpg'),
(11, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:16:\"2019/05/belt.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"belt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"belt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 14, '_starter_content_theme', 'storefront'),
(13, 14, '_customize_draft_post_name', 'belt-image'),
(14, 15, '_wp_attached_file', '2019/05/cap.jpg'),
(15, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:15:\"2019/05/cap.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"cap-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"cap-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 15, '_starter_content_theme', 'storefront'),
(17, 15, '_customize_draft_post_name', 'cap-image'),
(18, 16, '_wp_attached_file', '2019/05/hoodie-with-logo.jpg'),
(19, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:28:\"2019/05/hoodie-with-logo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 16, '_starter_content_theme', 'storefront'),
(21, 16, '_customize_draft_post_name', 'hoodie-with-logo-image'),
(22, 17, '_wp_attached_file', '2019/05/hoodie-with-pocket.jpg'),
(23, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2019/05/hoodie-with-pocket.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 17, '_starter_content_theme', 'storefront'),
(25, 17, '_customize_draft_post_name', 'hoodie-with-pocket-image'),
(26, 18, '_wp_attached_file', '2019/05/hoodie-with-zipper.jpg'),
(27, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2019/05/hoodie-with-zipper.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 18, '_starter_content_theme', 'storefront'),
(29, 18, '_customize_draft_post_name', 'hoodie-with-zipper-image'),
(30, 19, '_wp_attached_file', '2019/05/hoodie.jpg'),
(31, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2019/05/hoodie.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hoodie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hoodie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 19, '_starter_content_theme', 'storefront'),
(33, 19, '_customize_draft_post_name', 'hoodie-image'),
(34, 20, '_wp_attached_file', '2019/05/long-sleeve-tee.jpg'),
(35, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:27:\"2019/05/long-sleeve-tee.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 20, '_starter_content_theme', 'storefront'),
(37, 20, '_customize_draft_post_name', 'long-sleeve-tee-image'),
(38, 21, '_wp_attached_file', '2019/05/polo.jpg'),
(39, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2019/05/polo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"polo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"polo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"polo-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 21, '_starter_content_theme', 'storefront'),
(41, 21, '_customize_draft_post_name', 'polo-image'),
(42, 22, '_wp_attached_file', '2019/05/sunglasses.jpg'),
(43, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2019/05/sunglasses.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sunglasses-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sunglasses-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sunglasses-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 22, '_starter_content_theme', 'storefront'),
(45, 22, '_customize_draft_post_name', 'sunglasses-image'),
(46, 23, '_wp_attached_file', '2019/05/tshirt.jpg'),
(47, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2019/05/tshirt.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tshirt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tshirt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tshirt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 23, '_starter_content_theme', 'storefront'),
(49, 23, '_customize_draft_post_name', 'tshirt-image'),
(50, 24, '_wp_attached_file', '2019/05/vneck-tee.jpg'),
(51, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2019/05/vneck-tee.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vneck-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vneck-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"vneck-tee-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 24, '_starter_content_theme', 'storefront'),
(53, 24, '_customize_draft_post_name', 'vneck-tee-image'),
(54, 25, '_wp_attached_file', '2019/05/hero.jpg'),
(55, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:16:\"2019/05/hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 25, '_starter_content_theme', 'storefront'),
(57, 25, '_customize_draft_post_name', 'hero-image'),
(58, 26, '_wp_attached_file', '2019/05/accessories.jpg'),
(59, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2019/05/accessories.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"accessories-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"accessories-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"accessories-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 26, '_starter_content_theme', 'storefront'),
(61, 26, '_customize_draft_post_name', 'accessories-image'),
(62, 27, '_wp_attached_file', '2019/05/tshirts.jpg'),
(63, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2019/05/tshirts.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tshirts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tshirts-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"tshirts-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 27, '_starter_content_theme', 'storefront'),
(65, 27, '_customize_draft_post_name', 'tshirts-image'),
(66, 28, '_wp_attached_file', '2019/05/hoodies.jpg'),
(67, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2019/05/hoodies.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hoodies-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hoodies-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hoodies-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 28, '_starter_content_theme', 'storefront'),
(69, 28, '_customize_draft_post_name', 'hoodies-image'),
(70, 29, '_customize_draft_post_name', 'blog'),
(71, 29, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(72, 30, '_thumbnail_id', '25'),
(73, 30, '_wp_page_template', 'template-homepage.php'),
(74, 30, '_customize_draft_post_name', 'welcome'),
(75, 30, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(76, 31, '_thumbnail_id', '13'),
(77, 31, '_customize_draft_post_name', 'beanie'),
(78, 31, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(79, 32, '_thumbnail_id', '14'),
(80, 32, '_customize_draft_post_name', 'belt'),
(81, 32, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(82, 33, '_thumbnail_id', '15'),
(83, 33, '_customize_draft_post_name', 'cap'),
(84, 33, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(85, 34, '_thumbnail_id', '22'),
(86, 34, '_customize_draft_post_name', 'sunglasses'),
(87, 34, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(88, 35, '_thumbnail_id', '16'),
(89, 35, '_customize_draft_post_name', 'hoodie-with-logo'),
(90, 35, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(91, 36, '_thumbnail_id', '17'),
(92, 36, '_customize_draft_post_name', 'hoodie-with-pocket'),
(93, 36, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(94, 37, '_thumbnail_id', '18'),
(95, 37, '_customize_draft_post_name', 'hoodie-with-zipper'),
(96, 37, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(97, 38, '_thumbnail_id', '19'),
(98, 38, '_customize_draft_post_name', 'hoodie'),
(99, 38, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(100, 39, '_thumbnail_id', '20'),
(101, 39, '_customize_draft_post_name', 'long-sleeve-tee'),
(102, 39, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(103, 40, '_thumbnail_id', '21'),
(104, 40, '_customize_draft_post_name', 'polo'),
(105, 40, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(106, 41, '_thumbnail_id', '23'),
(107, 41, '_customize_draft_post_name', 'tshirt'),
(108, 41, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(109, 42, '_thumbnail_id', '24'),
(110, 42, '_customize_draft_post_name', 'vneck-tee'),
(111, 42, '_customize_changeset_uuid', '7942d7c0-b6aa-4848-967b-68fd4712041b'),
(112, 31, '_regular_price', '20'),
(113, 31, '_sale_price', '18'),
(114, 31, 'total_sales', '0'),
(115, 31, '_tax_status', 'taxable'),
(116, 31, '_tax_class', ''),
(117, 31, '_manage_stock', 'no'),
(118, 31, '_backorders', 'no'),
(119, 31, '_sold_individually', 'no'),
(120, 31, '_virtual', 'no'),
(121, 31, '_downloadable', 'no'),
(122, 31, '_download_limit', '-1'),
(123, 31, '_download_expiry', '-1'),
(124, 31, '_stock', NULL),
(125, 31, '_stock_status', 'instock'),
(126, 31, '_wc_average_rating', '0'),
(127, 31, '_wc_review_count', '0'),
(128, 31, '_product_version', '3.6.4'),
(129, 31, '_price', '18'),
(130, 32, '_regular_price', '65'),
(131, 32, '_sale_price', '55'),
(132, 32, 'total_sales', '0'),
(133, 32, '_tax_status', 'taxable'),
(134, 32, '_tax_class', ''),
(135, 32, '_manage_stock', 'no'),
(136, 32, '_backorders', 'no'),
(137, 32, '_sold_individually', 'no'),
(138, 32, '_virtual', 'no'),
(139, 32, '_downloadable', 'no'),
(140, 32, '_download_limit', '-1'),
(141, 32, '_download_expiry', '-1'),
(142, 32, '_stock', NULL),
(143, 32, '_stock_status', 'instock'),
(144, 32, '_wc_average_rating', '0'),
(145, 32, '_wc_review_count', '0'),
(146, 32, '_product_version', '3.6.4'),
(147, 32, '_price', '55'),
(148, 33, '_regular_price', '18'),
(149, 33, '_sale_price', '16'),
(150, 33, 'total_sales', '0'),
(151, 33, '_tax_status', 'taxable'),
(152, 33, '_tax_class', ''),
(153, 33, '_manage_stock', 'no'),
(154, 33, '_backorders', 'no'),
(155, 33, '_sold_individually', 'no'),
(156, 33, '_virtual', 'no'),
(157, 33, '_downloadable', 'no'),
(158, 33, '_download_limit', '-1'),
(159, 33, '_download_expiry', '-1'),
(160, 33, '_stock', NULL),
(161, 33, '_stock_status', 'instock'),
(162, 33, '_wc_average_rating', '0'),
(163, 33, '_wc_review_count', '0'),
(164, 33, '_product_version', '3.6.4'),
(165, 33, '_price', '16'),
(166, 34, '_regular_price', '90'),
(167, 44, '_edit_last', '1'),
(168, 34, 'total_sales', '0'),
(169, 34, '_tax_status', 'taxable'),
(170, 34, '_tax_class', ''),
(171, 34, '_manage_stock', 'no'),
(172, 34, '_backorders', 'no'),
(173, 34, '_sold_individually', 'no'),
(174, 34, '_virtual', 'no'),
(175, 34, '_downloadable', 'no'),
(176, 34, '_download_limit', '-1'),
(177, 44, '_edit_lock', '1559215461:1'),
(178, 34, '_download_expiry', '-1'),
(179, 34, '_stock', NULL),
(180, 34, '_stock_status', 'instock'),
(181, 34, '_wc_average_rating', '0'),
(182, 34, '_wc_review_count', '0'),
(183, 34, '_product_version', '3.6.4'),
(184, 34, '_price', '90'),
(185, 35, '_regular_price', '45'),
(186, 35, 'total_sales', '0'),
(187, 35, '_tax_status', 'taxable'),
(188, 35, '_tax_class', ''),
(189, 35, '_manage_stock', 'no'),
(190, 35, '_backorders', 'no'),
(191, 35, '_sold_individually', 'no'),
(192, 35, '_virtual', 'no'),
(193, 35, '_downloadable', 'no'),
(194, 35, '_download_limit', '-1'),
(195, 35, '_download_expiry', '-1'),
(196, 35, '_stock', NULL),
(197, 35, '_stock_status', 'instock'),
(198, 35, '_wc_average_rating', '0'),
(199, 35, '_wc_review_count', '0'),
(200, 35, '_product_version', '3.6.4'),
(201, 35, '_price', '45'),
(202, 36, '_regular_price', '45'),
(203, 36, '_sale_price', '35'),
(204, 36, 'total_sales', '0'),
(205, 36, '_tax_status', 'taxable'),
(206, 36, '_tax_class', ''),
(207, 36, '_manage_stock', 'no'),
(208, 36, '_backorders', 'no'),
(209, 36, '_sold_individually', 'no'),
(210, 36, '_virtual', 'no'),
(211, 36, '_downloadable', 'no'),
(212, 36, '_download_limit', '-1'),
(213, 36, '_download_expiry', '-1'),
(214, 36, '_stock', NULL),
(215, 36, '_stock_status', 'instock'),
(216, 36, '_wc_average_rating', '0'),
(217, 36, '_wc_review_count', '0'),
(218, 36, '_product_version', '3.6.4'),
(219, 36, '_price', '35'),
(220, 37, '_regular_price', '45'),
(221, 37, 'total_sales', '0'),
(222, 37, '_tax_status', 'taxable'),
(223, 37, '_tax_class', ''),
(224, 37, '_manage_stock', 'no'),
(225, 37, '_backorders', 'no'),
(226, 37, '_sold_individually', 'no'),
(227, 37, '_virtual', 'no'),
(228, 37, '_downloadable', 'no'),
(229, 37, '_download_limit', '-1'),
(230, 37, '_download_expiry', '-1'),
(231, 37, '_stock', NULL),
(232, 37, '_stock_status', 'instock'),
(233, 37, '_wc_average_rating', '0'),
(234, 37, '_wc_review_count', '0'),
(235, 37, '_product_version', '3.6.4'),
(236, 37, '_price', '45'),
(237, 38, '_regular_price', '45'),
(238, 38, '_sale_price', '42'),
(239, 38, 'total_sales', '0'),
(240, 38, '_tax_status', 'taxable'),
(241, 38, '_tax_class', ''),
(242, 38, '_manage_stock', 'no'),
(243, 38, '_backorders', 'no'),
(244, 38, '_sold_individually', 'no'),
(245, 38, '_virtual', 'no'),
(246, 38, '_downloadable', 'no'),
(247, 38, '_download_limit', '-1'),
(248, 38, '_download_expiry', '-1'),
(249, 38, '_stock', NULL),
(250, 38, '_stock_status', 'instock'),
(251, 38, '_wc_average_rating', '0'),
(252, 38, '_wc_review_count', '0'),
(253, 38, '_product_version', '3.6.4'),
(254, 38, '_price', '42'),
(255, 39, '_regular_price', '25'),
(256, 39, 'total_sales', '0'),
(257, 39, '_tax_status', 'taxable'),
(258, 39, '_tax_class', ''),
(259, 39, '_manage_stock', 'no'),
(260, 39, '_backorders', 'no'),
(261, 39, '_sold_individually', 'no'),
(262, 39, '_virtual', 'no'),
(263, 39, '_downloadable', 'no'),
(264, 39, '_download_limit', '-1'),
(265, 39, '_download_expiry', '-1'),
(266, 39, '_stock', NULL),
(267, 39, '_stock_status', 'instock'),
(268, 39, '_wc_average_rating', '0'),
(269, 39, '_wc_review_count', '0'),
(270, 39, '_product_version', '3.6.4'),
(271, 39, '_price', '25'),
(272, 40, '_regular_price', '20'),
(273, 40, 'total_sales', '0'),
(274, 40, '_tax_status', 'taxable'),
(275, 40, '_tax_class', ''),
(276, 40, '_manage_stock', 'no'),
(277, 40, '_backorders', 'no'),
(278, 40, '_sold_individually', 'no'),
(279, 40, '_virtual', 'no'),
(280, 40, '_downloadable', 'no'),
(281, 40, '_download_limit', '-1'),
(282, 40, '_download_expiry', '-1'),
(283, 40, '_stock', NULL),
(284, 40, '_stock_status', 'instock'),
(285, 40, '_wc_average_rating', '0'),
(286, 40, '_wc_review_count', '0'),
(287, 40, '_product_version', '3.6.4'),
(288, 40, '_price', '20'),
(289, 41, '_regular_price', '18'),
(290, 41, 'total_sales', '0'),
(291, 41, '_tax_status', 'taxable'),
(292, 41, '_tax_class', ''),
(293, 41, '_manage_stock', 'no'),
(294, 41, '_backorders', 'no'),
(295, 41, '_sold_individually', 'no'),
(296, 41, '_virtual', 'no'),
(297, 41, '_downloadable', 'no'),
(298, 41, '_download_limit', '-1'),
(299, 41, '_download_expiry', '-1'),
(300, 41, '_stock', NULL),
(301, 41, '_stock_status', 'instock'),
(302, 41, '_wc_average_rating', '0'),
(303, 41, '_wc_review_count', '0'),
(304, 41, '_product_version', '3.6.4'),
(305, 41, '_price', '18'),
(306, 42, '_regular_price', '18'),
(307, 42, 'total_sales', '0'),
(308, 42, '_tax_status', 'taxable'),
(309, 42, '_tax_class', ''),
(310, 42, '_manage_stock', 'no'),
(311, 42, '_backorders', 'no'),
(312, 42, '_sold_individually', 'no'),
(313, 42, '_virtual', 'no'),
(314, 42, '_downloadable', 'no'),
(315, 42, '_download_limit', '-1'),
(316, 42, '_download_expiry', '-1'),
(317, 42, '_stock', NULL),
(318, 42, '_stock_status', 'instock'),
(319, 42, '_wc_average_rating', '0'),
(320, 42, '_wc_review_count', '0'),
(321, 42, '_product_version', '3.6.4'),
(322, 42, '_price', '18'),
(323, 45, '_wp_attached_file', '2019/05/FUJITECH-5-YEARS-ANNIVERSARY-INVITATION.png'),
(324, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:948;s:6:\"height\";i:712;s:4:\"file\";s:51:\"2019/05/FUJITECH-5-YEARS-ANNIVERSARY-INVITATION.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-768x577.png\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(325, 46, '_wp_attached_file', '2019/05/USC20LGC041A01300.jpg'),
(326, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:29:\"2019/05/USC20LGC041A01300.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"USC20LGC041A01300-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-416x260.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-416x260.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 44, '_thumbnail_id', '46'),
(328, 53, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1559285238;}'),
(329, 54, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1559285238;}'),
(330, 52, '_edit_last', '1'),
(331, 52, '_edit_lock', '1559285207:1'),
(332, 52, '_thumbnail_id', '45'),
(333, 52, '_regular_price', '250000'),
(334, 52, '_sale_price', '200000'),
(335, 52, 'total_sales', '0'),
(336, 52, '_tax_status', 'taxable'),
(337, 52, '_tax_class', ''),
(338, 52, '_manage_stock', 'no'),
(339, 52, '_backorders', 'no'),
(340, 52, '_sold_individually', 'no'),
(341, 52, '_virtual', 'no'),
(342, 52, '_downloadable', 'no'),
(343, 52, '_download_limit', '-1'),
(344, 52, '_download_expiry', '-1'),
(345, 52, '_stock', NULL),
(346, 52, '_stock_status', 'instock'),
(347, 52, '_wc_average_rating', '0'),
(348, 52, '_wc_review_count', '0'),
(349, 52, '_product_version', '3.6.4'),
(350, 52, '_price', '200000'),
(351, 52, '_product_image_gallery', '46'),
(356, 57, '_wp_trash_meta_status', 'publish'),
(357, 57, '_wp_trash_meta_time', '1559286284'),
(358, 43, '_customize_restore_dismissed', '1'),
(359, 58, '_edit_last', '1'),
(360, 58, '_edit_lock', '1559286386:1'),
(361, 59, '_wp_attached_file', '2019/05/at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83.jpg'),
(362, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:422;s:4:\"file\";s:87:\"2019/05/at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-400x241.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-600x422.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-600x362.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-600x362.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:87:\"at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 60, '_wp_attached_file', '2019/05/audi_a3_audi-a3-sedan_2019-1552084281910.jpg'),
(364, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:489;s:4:\"file\";s:52:\"2019/05/audi_a3_audi-a3-sedan_2019-1552084281910.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-300x183.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-768x469.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:469;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-400x245.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-600x489.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:489;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-600x367.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-600x367.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:52:\"audi_a3_audi-a3-sedan_2019-1552084281910-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(365, 61, '_wp_attached_file', '2019/05/audi-r8-v10-decennium.jpg'),
(366, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:33:\"2019/05/audi-r8-v10-decennium.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"audi-r8-v10-decennium-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"audi-r8-v10-decennium-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(367, 62, '_wp_attached_file', '2019/05/dia-diem-du-lich-hap-dan-moc-chau-2.jpg'),
(368, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:47:\"2019/05/dia-diem-du-lich-hap-dan-moc-chau-2.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"dia-diem-du-lich-hap-dan-moc-chau-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(369, 63, '_wp_attached_file', '2019/05/ed005e285cfd17e6e2dbf526f8ef129a.jpg'),
(370, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:44:\"2019/05/ed005e285cfd17e6e2dbf526f8ef129a.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"ed005e285cfd17e6e2dbf526f8ef129a-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"ed005e285cfd17e6e2dbf526f8ef129a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 64, '_wp_attached_file', '2019/05/lung-cu-peak-hagiang.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(372, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:4:\"file\";s:32:\"2019/05/lung-cu-peak-hagiang.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"lung-cu-peak-hagiang-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"lung-cu-peak-hagiang-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(373, 65, '_wp_attached_file', '2019/05/maxresdefault.jpg'),
(374, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:25:\"2019/05/maxresdefault.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"maxresdefault-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"maxresdefault-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"maxresdefault-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"maxresdefault-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:25:\"maxresdefault-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:25:\"maxresdefault-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"maxresdefault-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"maxresdefault-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"maxresdefault-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"maxresdefault-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"maxresdefault-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"maxresdefault-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 66, '_wp_attached_file', '2019/05/moc-chau-24.jpg'),
(376, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:860;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2019/05/moc-chau-24.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-768x447.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-400x233.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"moc-chau-24-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-600x349.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:349;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-600x349.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:349;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:23:\"moc-chau-24-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 67, '_wp_attached_file', '2019/05/tải-xuống.jpg'),
(378, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:25:\"2019/05/tải-xuống.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"tải-xuống-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"tải-xuống-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"tải-xuống-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 68, '_wp_attached_file', '2019/05/thunglungSungLaHagiang.jpg'),
(380, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:34:\"2019/05/thunglungSungLaHagiang.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"thunglungSungLaHagiang-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 69, '_wp_attached_file', '2019/05/tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q.jpg'),
(382, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:550;s:4:\"file\";s:63:\"2019/05/tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-768x528.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-400x275.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:275;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-600x413.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-600x413.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:63:\"tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 70, '_wp_attached_file', '2019/05/USC20LGC041A01300.jpg'),
(384, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:29:\"2019/05/USC20LGC041A01300.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"USC20LGC041A01300-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"USC20LGC041A01300-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 71, '_wp_attached_file', '2019/05/used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024.jpg'),
(386, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:73:\"2019/05/used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:74:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:73:\"used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:23:\"Canon PowerShot SX60 HS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1553254614\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:5:\"7.354\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(387, 58, '_thumbnail_id', '60'),
(388, 58, '_regular_price', '140000000'),
(389, 58, '_sale_price', '130000000'),
(390, 58, 'total_sales', '0'),
(391, 58, '_tax_status', 'taxable'),
(392, 58, '_tax_class', ''),
(393, 58, '_manage_stock', 'no'),
(394, 58, '_backorders', 'no'),
(395, 58, '_sold_individually', 'no'),
(396, 58, '_virtual', 'no'),
(397, 58, '_downloadable', 'no'),
(398, 58, '_download_limit', '-1'),
(399, 58, '_download_expiry', '-1'),
(400, 58, '_stock', NULL),
(401, 58, '_stock_status', 'instock'),
(402, 58, '_wc_average_rating', '0'),
(403, 58, '_wc_review_count', '0'),
(404, 58, '_product_version', '3.6.4'),
(405, 58, '_price', '130000000'),
(406, 58, '_product_image_gallery', '46,71,60,70,63,61'),
(407, 72, '_edit_last', '1'),
(408, 72, '_edit_lock', '1559286715:1'),
(409, 72, '_thumbnail_id', '66'),
(410, 72, 'total_sales', '0'),
(411, 72, '_tax_status', 'taxable'),
(412, 72, '_tax_class', ''),
(413, 72, '_manage_stock', 'no'),
(414, 72, '_backorders', 'no'),
(415, 72, '_sold_individually', 'no'),
(416, 72, '_virtual', 'no'),
(417, 72, '_downloadable', 'no'),
(418, 72, '_download_limit', '-1'),
(419, 72, '_download_expiry', '-1'),
(420, 72, '_stock', NULL),
(421, 72, '_stock_status', 'instock'),
(422, 72, '_wc_average_rating', '0'),
(423, 72, '_wc_review_count', '0'),
(424, 72, '_product_version', '3.6.4'),
(425, 72, '_product_image_gallery', '65,62'),
(426, 73, '_edit_last', '1'),
(427, 73, '_edit_lock', '1559287729:1'),
(428, 73, '_oembed_fabfa374363c05ceabae56c040748eb4', '<blockquote class=\"wp-embedded-content\" data-secret=\"MgrQM49CMO\"><a href=\"http://dampow.local/product/moc-chau/\">Mộc châu</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://dampow.local/product/moc-chau/embed/#?secret=MgrQM49CMO\" data-secret=\"MgrQM49CMO\" width=\"600\" height=\"338\" title=\"&#8220;Mộc châu&#8221; &#8212; oto\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
(429, 73, '_oembed_time_fabfa374363c05ceabae56c040748eb4', '1559286891'),
(430, 73, '_thumbnail_id', '63'),
(433, 76, '_edit_lock', '1559288062:1'),
(434, 76, '_customize_restore_dismissed', '1'),
(435, 77, '_edit_lock', '1559288149:1'),
(436, 78, '_wp_attached_file', '2019/05/cropped-ed005e285cfd17e6e2dbf526f8ef129a.jpg'),
(437, 78, '_wp_attachment_context', 'site-icon'),
(438, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:52:\"2019/05/cropped-ed005e285cfd17e6e2dbf526f8ef129a.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-512x500.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:52:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:50:\"cropped-ed005e285cfd17e6e2dbf526f8ef129a-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(439, 79, '_wp_attached_file', '2019/05/cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024.jpg'),
(440, 79, '_wp_attachment_context', 'custom-logo'),
(441, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:823;s:6:\"height\";i:353;s:4:\"file\";s:81:\"2019/05/cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-300x129.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-768x329.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"magazine-point-thumb\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-400x172.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"magazine-point-featured\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-600x353.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:353;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-600x257.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-600x257.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:81:\"cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(442, 77, '_wp_trash_meta_status', 'publish'),
(443, 77, '_wp_trash_meta_time', '1559288156'),
(444, 69, '_wp_attachment_is_custom_background', 'magazine-point'),
(445, 80, '_edit_lock', '1559288304:1'),
(446, 80, '_wp_trash_meta_status', 'publish'),
(447, 80, '_wp_trash_meta_time', '1559288323'),
(448, 81, '_edit_lock', '1559288498:1'),
(449, 81, '_wp_trash_meta_status', 'publish'),
(450, 81, '_wp_trash_meta_time', '1559288529');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-30 09:04:57', '2019-05-30 09:04:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-05-30 09:04:57', '2019-05-30 09:04:57', '', 0, 'http://dampow.local/?p=1', 0, 'post', '', 1),
(2, 1, '2019-05-30 09:04:57', '2019-05-30 09:04:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://dampow.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-05-30 09:04:57', '2019-05-30 09:04:57', '', 0, 'http://dampow.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-30 09:04:57', '2019-05-30 09:04:57', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://dampow.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-05-30 09:04:57', '2019-05-30 09:04:57', '', 0, 'http://dampow.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-05-30 09:05:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-30 09:05:18', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?p=4', 0, 'post', '', 0),
(5, 1, '2019-05-30 09:05:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-30 09:05:21', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?p=5', 0, 'post', '', 0),
(6, 1, '2019-05-30 09:20:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-30 09:20:05', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?p=6', 0, 'post', '', 0),
(7, 1, '2019-05-30 09:22:11', '2019-05-30 09:22:11', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-05-30 09:22:11', '2019-05-30 09:22:11', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2019-05-30 09:22:45', '2019-05-30 09:22:45', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-05-30 09:22:45', '2019-05-30 09:22:45', '', 0, 'http://dampow.local/shop/', 0, 'page', '', 0),
(9, 1, '2019-05-30 09:22:46', '2019-05-30 09:22:46', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-05-30 09:22:46', '2019-05-30 09:22:46', '', 0, 'http://dampow.local/cart/', 0, 'page', '', 0),
(10, 1, '2019-05-30 09:22:46', '2019-05-30 09:22:46', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-05-30 09:22:46', '2019-05-30 09:22:46', '', 0, 'http://dampow.local/checkout/', 0, 'page', '', 0),
(11, 1, '2019-05-30 09:22:46', '2019-05-30 09:22:46', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-05-30 09:22:46', '2019-05-30 09:22:46', '', 0, 'http://dampow.local/my-account/', 0, 'page', '', 0),
(12, 1, '2019-05-30 09:34:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-30 09:34:59', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?p=12', 0, 'post', '', 0),
(13, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Beanie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:06', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/beanie.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Belt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:07', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/belt.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Cap', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:07', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/cap.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Hoodie with Logo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:07', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/hoodie-with-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Hoodie with Pocket', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:08', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/hoodie-with-pocket.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Hoodie with Zipper', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:08', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/hoodie-with-zipper.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Hoodie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:08', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/hoodie.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Long Sleeve Tee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:09', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/long-sleeve-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Polo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:09', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/polo.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Sunglasses', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:09', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/sunglasses.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:10', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Vneck Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:10', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/vneck-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Hero', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:11', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Accessories', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:12', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/accessories.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'T-shirts', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:12', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/tshirts.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Hoodies', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:13', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/hoodies.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-05-30 09:35:13', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the &quot;Welcome&quot; page via the &quot;Pages&quot; menu in your dashboard.', 'Welcome', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-05-30 09:35:13', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:23', '2019-05-30 09:35:23', '', 0, 'http://dampow.local/?p=31', 0, 'product', '', 0),
(32, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:25', '2019-05-30 09:35:25', '', 0, 'http://dampow.local/?p=32', 0, 'product', '', 0),
(33, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:26', '2019-05-30 09:35:26', '', 0, 'http://dampow.local/?p=33', 0, 'product', '', 0),
(34, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:27', '2019-05-30 09:35:27', '', 0, 'http://dampow.local/?p=34', 0, 'product', '', 0),
(35, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:29', '2019-05-30 09:35:29', '', 0, 'http://dampow.local/?p=35', 0, 'product', '', 0),
(36, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:30', '2019-05-30 09:35:30', '', 0, 'http://dampow.local/?p=36', 0, 'product', '', 0),
(37, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:31', '2019-05-30 09:35:31', '', 0, 'http://dampow.local/?p=37', 0, 'product', '', 0),
(38, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:32', '2019-05-30 09:35:32', '', 0, 'http://dampow.local/?p=38', 0, 'product', '', 0),
(39, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:33', '2019-05-30 09:35:33', '', 0, 'http://dampow.local/?p=39', 0, 'product', '', 0),
(40, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:34', '2019-05-30 09:35:34', '', 0, 'http://dampow.local/?p=40', 0, 'product', '', 0),
(41, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:36', '2019-05-30 09:35:36', '', 0, 'http://dampow.local/?p=41', 0, 'product', '', 0),
(42, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-05-30 09:35:37', '2019-05-30 09:35:37', '', 0, 'http://dampow.local/?p=42', 0, 'product', '', 0),
(43, 1, '2019-05-30 09:35:16', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            13,\n            14,\n            15,\n            16,\n            17,\n            18,\n            19,\n            20,\n            21,\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28,\n            29,\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37,\n            38,\n            39,\n            40,\n            41,\n            42,\n            9,\n            10,\n            11,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-30 09:35:16\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-30 09:35:16\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 30,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-30 09:35:16\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 29,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-30 09:35:16\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7942d7c0-b6aa-4848-967b-68fd4712041b', '', '', '2019-05-30 09:35:16', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?p=43', 0, 'customize_changeset', '', 0),
(44, 1, '2019-05-30 09:36:29', '2019-05-30 09:36:29', '<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n<!--more-->\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy c</span></span>\r\n\r\n<img class=\"alignnone size-medium wp-image-45\" src=\"http://dampow.local/wp-content/uploads/2019/05/FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-300x225.png\" alt=\"\" width=\"300\" height=\"225\" /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">họn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n&nbsp;', 'test 123', 'dampow 1233', 'publish', 'open', 'open', '', 'test-123', '', '', '2019-05-30 09:57:03', '2019-05-30 09:57:03', '', 0, 'http://dampow.local/?p=44', 0, 'post', '', 0),
(45, 1, '2019-05-30 09:35:42', '2019-05-30 09:35:42', '', 'FUJITECH 5 YEARS ANNIVERSARY - INVITATION', '', 'inherit', 'open', 'closed', '', 'fujitech-5-years-anniversary-invitation', '', '', '2019-05-30 09:35:42', '2019-05-30 09:35:42', '', 44, 'http://dampow.local/wp-content/uploads/2019/05/FUJITECH-5-YEARS-ANNIVERSARY-INVITATION.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2019-05-30 09:36:22', '2019-05-30 09:36:22', '', 'USC20LGC041A01300', '', 'inherit', 'open', 'closed', '', 'usc20lgc041a01300', '', '', '2019-05-30 09:36:22', '2019-05-30 09:36:22', '', 44, 'http://dampow.local/wp-content/uploads/2019/05/USC20LGC041A01300.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-05-30 09:36:29', '2019-05-30 09:36:29', '<img class=\"alignnone size-medium wp-image-45\" src=\"http://dampow.local/wp-content/uploads/2019/05/FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-300x225.png\" alt=\"\" width=\"300\" height=\"225\" />\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox  hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'test 123', 'dampow1233', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-05-30 09:36:29', '2019-05-30 09:36:29', '', 44, 'http://dampow.local/2019/05/30/44-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-05-30 09:37:18', '2019-05-30 09:37:18', '<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n<!--more-->\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy c</span></span>\r\n\r\n<img class=\"alignnone size-medium wp-image-45\" src=\"http://dampow.local/wp-content/uploads/2019/05/FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-300x225.png\" alt=\"\" width=\"300\" height=\"225\" /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">họn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span><a href=\"https://codex.wordpress.org/Excerpt\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu thêm về trích đoạn thủ công</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> .</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n&nbsp;', 'test 123', 'dampow1233', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-05-30 09:37:18', '2019-05-30 09:37:18', '', 44, 'http://dampow.local/2019/05/30/44-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(49, 1, '2019-05-30 09:56:23', '2019-05-30 09:56:23', '<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n<!--more-->\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy c</span></span>\r\n\r\n<img class=\"alignnone size-medium wp-image-45\" src=\"http://dampow.local/wp-content/uploads/2019/05/FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-300x225.png\" alt=\"\" width=\"300\" height=\"225\" /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">họn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n&nbsp;', 'test 123', 'dampow1233', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-05-30 09:56:23', '2019-05-30 09:56:23', '', 44, 'http://dampow.local/2019/05/30/44-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-05-30 09:57:03', '2019-05-30 09:57:03', '<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n<!--more-->\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy c</span></span>\r\n\r\n<img class=\"alignnone size-medium wp-image-45\" src=\"http://dampow.local/wp-content/uploads/2019/05/FUJITECH-5-YEARS-ANNIVERSARY-INVITATION-300x225.png\" alt=\"\" width=\"300\" height=\"225\" /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">họn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn.</span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"post-body\" class=\"metabox-holder columns-2\">\r\n<div id=\"postbox-container-2\" class=\"postbox-container\">\r\n<div id=\"normal-sortables\" class=\"meta-box-sortables ui-sortable\">\r\n<div id=\"postexcerpt\" class=\"postbox hide-if-js\">\r\n<div class=\"inside\">\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đoạn trích là bản tóm tắt thủ công tùy chọn nội dung của bạn có thể được sử dụng trong chủ đề của bạn. </span></span>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"advanced-sortables\" class=\"meta-box-sortables ui-sortable\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n&nbsp;', 'test 123', 'dampow 1233', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-05-30 09:57:03', '2019-05-30 09:57:03', '', 44, 'http://dampow.local/2019/05/30/44-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-05-31 06:46:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-31 06:46:48', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?p=51', 0, 'post', '', 0),
(52, 1, '2019-05-31 06:47:40', '2019-05-31 06:47:40', '', 'dampow', '', 'publish', 'open', 'closed', '', 'dampow', '', '', '2019-05-31 06:47:42', '2019-05-31 06:47:42', '', 0, 'http://dampow.local/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 0, '2019-05-31 06:47:18', '2019-05-31 06:47:18', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'woocommerce_update_marketplace_suggestions', '', '', '2019-05-31 06:48:45', '2019-05-31 06:48:45', '', 0, 'http://dampow.local/?post_type=scheduled-action&#038;p=53', 0, 'scheduled-action', '', 3),
(54, 0, '2019-05-31 06:47:18', '2019-05-31 06:47:18', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'woocommerce_update_marketplace_suggestions-2', '', '', '2019-05-31 06:48:46', '2019-05-31 06:48:46', '', 0, 'http://dampow.local/?post_type=scheduled-action&#038;p=54', 0, 'scheduled-action', '', 3),
(57, 1, '2019-05-31 07:04:43', '2019-05-31 07:04:43', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"header-1\": [],\n            \"footer-1\": [],\n            \"footer-2\": [],\n            \"footer-3\": [],\n            \"footer-4\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:04:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ebdb7594-f95b-4f81-8cf6-ecb0c0b2ef33', '', '', '2019-05-31 07:04:43', '2019-05-31 07:04:43', '', 0, 'http://dampow.local/2019/05/31/ebdb7594-f95b-4f81-8cf6-ecb0c0b2ef33/', 0, 'customize_changeset', '', 0),
(58, 1, '2019-05-31 07:08:17', '2019-05-31 07:08:17', 'audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp, audi a8 rất đẹp,', 'audi a8', '', 'publish', 'open', 'closed', '', 'audi-a8', '', '', '2019-05-31 07:08:20', '2019-05-31 07:08:20', '', 0, 'http://dampow.local/?post_type=product&#038;p=58', 0, 'product', '', 0),
(59, 1, '2019-05-31 07:07:26', '2019-05-31 07:07:26', '', 'at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83', '', 'inherit', 'open', 'closed', '', 'at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83', '', '', '2019-05-31 07:07:26', '2019-05-31 07:07:26', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/at_moc-chau-happy-land-thien-duong-co-that_149f05adad9edb25f8dd53c892866b83.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-05-31 07:07:27', '2019-05-31 07:07:27', '', 'audi_a3_audi-a3-sedan_2019-1552084281910', '', 'inherit', 'open', 'closed', '', 'audi_a3_audi-a3-sedan_2019-1552084281910', '', '', '2019-05-31 07:07:27', '2019-05-31 07:07:27', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/audi_a3_audi-a3-sedan_2019-1552084281910.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-05-31 07:07:28', '2019-05-31 07:07:28', '', 'audi-r8-v10-decennium', '', 'inherit', 'open', 'closed', '', 'audi-r8-v10-decennium', '', '', '2019-05-31 07:07:28', '2019-05-31 07:07:28', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/audi-r8-v10-decennium.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-05-31 07:07:29', '2019-05-31 07:07:29', '', 'dia-diem-du-lich-hap-dan-moc-chau-2', '', 'inherit', 'open', 'closed', '', 'dia-diem-du-lich-hap-dan-moc-chau-2', '', '', '2019-05-31 07:07:29', '2019-05-31 07:07:29', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/dia-diem-du-lich-hap-dan-moc-chau-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-05-31 07:07:30', '2019-05-31 07:07:30', '', 'ed005e285cfd17e6e2dbf526f8ef129a', '', 'inherit', 'open', 'closed', '', 'ed005e285cfd17e6e2dbf526f8ef129a', '', '', '2019-05-31 07:07:30', '2019-05-31 07:07:30', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/ed005e285cfd17e6e2dbf526f8ef129a.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-05-31 07:07:31', '2019-05-31 07:07:31', '', 'lung-cu-peak-hagiang', '', 'inherit', 'open', 'closed', '', 'lung-cu-peak-hagiang', '', '', '2019-05-31 07:07:31', '2019-05-31 07:07:31', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/lung-cu-peak-hagiang.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-05-31 07:07:32', '2019-05-31 07:07:32', '', 'maxresdefault', '', 'inherit', 'open', 'closed', '', 'maxresdefault', '', '', '2019-05-31 07:07:32', '2019-05-31 07:07:32', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/maxresdefault.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-05-31 07:07:33', '2019-05-31 07:07:33', '', 'moc-chau-24', '', 'inherit', 'open', 'closed', '', 'moc-chau-24', '', '', '2019-05-31 07:07:33', '2019-05-31 07:07:33', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/moc-chau-24.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-05-31 07:07:34', '2019-05-31 07:07:34', '', 'tải xuống', '', 'inherit', 'open', 'closed', '', 'tai-xuong', '', '', '2019-05-31 07:07:34', '2019-05-31 07:07:34', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/tải-xuống.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-05-31 07:07:35', '2019-05-31 07:07:35', '', 'thunglungSungLaHagiang', '', 'inherit', 'open', 'closed', '', 'thunglungsunglahagiang', '', '', '2019-05-31 07:07:35', '2019-05-31 07:07:35', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/thunglungSungLaHagiang.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-05-31 07:07:36', '2019-05-31 07:07:36', '', 'tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q', '', 'inherit', 'open', 'closed', '', 'tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q', '', '', '2019-05-31 07:07:36', '2019-05-31 07:07:36', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/tu-hai-phong-di-ha-giang-bao-nhieu-km-bb-baaadapf2q.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-05-31 07:07:36', '2019-05-31 07:07:36', '', 'USC20LGC041A01300', '', 'inherit', 'open', 'closed', '', 'usc20lgc041a01300-2', '', '', '2019-05-31 07:07:36', '2019-05-31 07:07:36', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/USC20LGC041A01300.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-05-31 07:07:37', '2019-05-31 07:07:37', '', 'used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024', '', 'inherit', 'open', 'closed', '', 'used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024', '', '', '2019-05-31 07:07:37', '2019-05-31 07:07:37', '', 58, 'http://dampow.local/wp-content/uploads/2019/05/used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-05-31 07:10:07', '2019-05-31 07:10:07', 'Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt. Cung đường Mộc Châu rất tuyệt.', 'Mộc châu', 'Mộc châu đẹp quá ae êi', 'publish', 'open', 'closed', '', 'moc-chau', '', '', '2019-05-31 07:10:09', '2019-05-31 07:10:09', '', 0, 'http://dampow.local/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2019-05-31 07:15:12', '2019-05-31 07:15:12', 'lamborghini mơ ước đây rồi. lamborghini mơ ước đây rồi .lamborghini mơ ước đây rồi. lamborghini mơ ước đây rồi\r\n\r\n<img class=\"alignnone size-medium wp-image-70\" src=\"http://dampow.local/wp-content/uploads/2019/05/USC20LGC041A01300-300x188.jpg\" alt=\"\" width=\"300\" height=\"188\" /> mút chỉ chưa', 'lamborghini', 'lamborghini mơ ước đây rồi', 'publish', 'open', 'open', '', 'lamborghini', '', '', '2019-05-31 07:15:29', '2019-05-31 07:15:29', '', 0, 'http://dampow.local/?p=73', 0, 'post', '', 0),
(74, 1, '2019-05-31 07:15:12', '2019-05-31 07:15:12', 'lamborghini mơ ước đây rồi. lamborghini mơ ước đây rồi .lamborghini mơ ước đây rồi. lamborghini mơ ước đây rồi', 'lamborghini', 'lamborghini mơ ước đây rồi', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2019-05-31 07:15:12', '2019-05-31 07:15:12', '', 73, 'http://dampow.local/2019/05/31/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-05-31 07:15:29', '2019-05-31 07:15:29', 'lamborghini mơ ước đây rồi. lamborghini mơ ước đây rồi .lamborghini mơ ước đây rồi. lamborghini mơ ước đây rồi\r\n\r\n<img class=\"alignnone size-medium wp-image-70\" src=\"http://dampow.local/wp-content/uploads/2019/05/USC20LGC041A01300-300x188.jpg\" alt=\"\" width=\"300\" height=\"188\" /> mút chỉ chưa', 'lamborghini', 'lamborghini mơ ước đây rồi', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2019-05-31 07:15:29', '2019-05-31 07:15:29', '', 73, 'http://dampow.local/2019/05/31/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-05-31 07:34:22', '0000-00-00 00:00:00', '{\n    \"magazine-point::theme_options[show_social_in_header]\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:34:22\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2cbfb9be-6c50-4880-8144-da08a33ec809', '', '', '2019-05-31 07:34:22', '0000-00-00 00:00:00', '', 0, 'http://dampow.local/?p=76', 0, 'customize_changeset', '', 0),
(77, 1, '2019-05-31 07:35:56', '2019-05-31 07:35:56', '{\n    \"blogname\": {\n        \"value\": \"dampow\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:34:49\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Mua b\\u00e1n trao \\u0111\\u1ed5i \\u00f4 t\\u00f4 c\\u0169\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:35:49\"\n    },\n    \"site_icon\": {\n        \"value\": 78,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:35:49\"\n    },\n    \"magazine-point::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:35:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b959640f-151e-4e42-83fe-6e939ce94915', '', '', '2019-05-31 07:35:56', '2019-05-31 07:35:56', '', 0, 'http://dampow.local/?p=77', 0, 'customize_changeset', '', 0),
(78, 1, '2019-05-31 07:34:53', '2019-05-31 07:34:53', 'http://dampow.local/wp-content/uploads/2019/05/cropped-ed005e285cfd17e6e2dbf526f8ef129a.jpg', 'cropped-ed005e285cfd17e6e2dbf526f8ef129a.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-ed005e285cfd17e6e2dbf526f8ef129a-jpg', '', '', '2019-05-31 07:34:53', '2019-05-31 07:34:53', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/cropped-ed005e285cfd17e6e2dbf526f8ef129a.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-05-31 07:35:44', '2019-05-31 07:35:44', 'http://dampow.local/wp-content/uploads/2019/05/cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024.jpg', 'cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024-jpg', '', '', '2019-05-31 07:35:44', '2019-05-31 07:35:44', '', 0, 'http://dampow.local/wp-content/uploads/2019/05/cropped-used-2019-lamborghini-aventador-svjcoupe-1769-18737630-5-1024.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-05-31 07:38:42', '2019-05-31 07:38:42', '{\n    \"magazine-point::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::theme_options[show_title]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::theme_options[show_tagline]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::theme_options[show_search_in_header]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::theme_options[show_breaking_news]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::theme_options[breaking_news_category]\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:37:49\"\n    },\n    \"magazine-point::theme_options[copyright_text]\": {\n        \"value\": \"Trung t\\u00e2m mua b\\u00e1n trao \\u0111\\u1ed5i \\u00f4 t\\u00f4 c\\u0169 - m\\u1edbi\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:38:42\"\n    },\n    \"magazine-point::theme_options[breadcrumb_type]\": {\n        \"value\": \"enabled\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:38:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cbc6bce7-e4a1-4449-aaf8-02a6b83bf9fc', '', '', '2019-05-31 07:38:42', '2019-05-31 07:38:42', '', 0, 'http://dampow.local/?p=80', 0, 'customize_changeset', '', 0),
(81, 1, '2019-05-31 07:42:08', '2019-05-31 07:42:08', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"categories-2\",\n            \"recent-comments-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:40:49\"\n    },\n    \"widget_woocommerce_widget_cart[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:39:49\"\n    },\n    \"woocommerce_demo_store_notice\": {\n        \"value\": \"This is a demo store for testing purposes \\u2014 no orders shall be fulfilled.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:41:38\"\n    },\n    \"woocommerce_catalog_columns\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:40:49\"\n    },\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:40:49\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:40:49\"\n    },\n    \"woocommerce_demo_store\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:41:38\"\n    },\n    \"woocommerce_thumbnail_cropping\": {\n        \"value\": \"1:1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-31 07:41:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c7f8dc7b-2ba1-46b2-b126-c8678903917c', '', '', '2019-05-31 07:42:08', '2019-05-31 07:42:08', '', 0, 'http://dampow.local/?p=81', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'thumbnail_id', '26'),
(2, 16, 'product_count_product_cat', '0'),
(3, 17, 'thumbnail_id', '28'),
(4, 17, 'product_count_product_cat', '0'),
(5, 18, 'thumbnail_id', '27'),
(6, 18, 'product_count_product_cat', '0'),
(7, 15, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Accessories', 'accessories', 0),
(17, 'Hoodies', 'hoodies', 0),
(18, 'Tshirts', 'tshirts', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(31, 2, 0),
(31, 16, 0),
(32, 2, 0),
(32, 16, 0),
(33, 2, 0),
(33, 16, 0),
(34, 2, 0),
(34, 8, 0),
(34, 16, 0),
(35, 2, 0),
(35, 17, 0),
(36, 2, 0),
(36, 8, 0),
(36, 17, 0),
(37, 2, 0),
(37, 8, 0),
(37, 17, 0),
(38, 2, 0),
(38, 8, 0),
(38, 17, 0),
(39, 2, 0),
(39, 18, 0),
(40, 2, 0),
(40, 18, 0),
(41, 2, 0),
(41, 18, 0),
(42, 2, 0),
(42, 18, 0),
(44, 1, 0),
(52, 2, 0),
(52, 15, 0),
(58, 2, 0),
(58, 15, 0),
(72, 2, 0),
(72, 15, 0),
(73, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'product_type', '', 0, 3),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 3),
(16, 16, 'product_cat', 'A short category description', 0, 0),
(17, 17, 'product_cat', 'A short category description', 0, 0),
(18, 18, 'product_cat', 'A short category description', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"3c01e5b2669bae9039499228232907932a2b21389eb428f2f1460b8d5a036d01\";a:4:{s:10:\"expiration\";i:1560416714;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1559207114;}s:64:\"b0c342754dc1ca388a982133415479977ff824ae95d43c449717bffaaad2d016\";a:4:{s:10:\"expiration\";i:1560416715;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1559207115;}s:64:\"2014f3c621978474d77dabca4feca527524b0df606d589395c633786397bdc8b\";a:4:{s:10:\"expiration\";i:1560417596;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1559207996;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor_plain_text_paste_warning=1&posts_list_mode=excerpt&unfold=1&mfold=o&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1559208023'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(22, 1, 'wc_last_active', '1559520000'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(25, 1, '_woocommerce_tracks_anon_id', 'woo:V4fL3RUqvbKYTdzFmdiO1IE7');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BZerXa528BqtoePOQ/fABX2uiJ0iXj.', 'admin', 'lexuandam96@gmail.com', '', '2019-05-30 09:04:56', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(31, '', 0, 0, '18.00', '18.00', 1, NULL, 'instock', 0, '0.00', 0),
(32, '', 0, 0, '55.00', '55.00', 1, NULL, 'instock', 0, '0.00', 0),
(33, '', 0, 0, '16.00', '16.00', 1, NULL, 'instock', 0, '0.00', 0),
(34, '', 0, 0, '90.00', '90.00', 0, NULL, 'instock', 0, '0.00', 0),
(35, '', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(36, '', 0, 0, '35.00', '35.00', 1, NULL, 'instock', 0, '0.00', 0),
(37, '', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(38, '', 0, 0, '42.00', '42.00', 1, NULL, 'instock', 0, '0.00', 0),
(39, '', 0, 0, '25.00', '25.00', 0, NULL, 'instock', 0, '0.00', 0),
(40, '', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(41, '', 0, 0, '18.00', '18.00', 0, NULL, 'instock', 0, '0.00', 0),
(42, '', 0, 0, '18.00', '18.00', 0, NULL, 'instock', 0, '0.00', 0),
(52, '', 0, 0, '200000.00', '200000.00', 1, NULL, 'instock', 0, '0.00', 0),
(58, '', 0, 0, '99999999.99', '99999999.99', 1, NULL, 'instock', 0, '0.00', 0),
(72, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:709:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"lexuandam96@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1559700741);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Vietnam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
