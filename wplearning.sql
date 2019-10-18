-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2019 at 11:22 AM
-- Server version: 10.3.18-MariaDB-1:10.3.18+maria~bionic-log
-- PHP Version: 7.2.23-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wplearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-07-23 11:58:38', '2019-07-23 11:58:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
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
(1, 'siteurl', 'http://wp-learning.local.in', 'yes'),
(2, 'home', 'http://wp-learning.local.in', 'yes'),
(3, 'blogname', 'wp-learning.local.in', 'yes'),
(4, 'blogdescription', 'Arcana: A Jay&#039;s First Theme Integration', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@local.test', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=106&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:1;s:34:\"custom-sidebars/customsidebars.php\";i:2;s:25:\"tags-relatedpost/init.php\";i:3;s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";i:4;s:34:\"wp-page-widget/wp-page-widgets.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'arcana', 'yes'),
(41, 'stylesheet', 'arcana', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '106', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:5:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:13:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:1:\"1\";s:5:\"state\";s:2:\"ok\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:3:{s:5:\"title\";s:0:\"\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:13:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:1:\"2\";s:5:\"state\";s:2:\"ok\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:12:\"categories-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-3\";i:2;s:6:\"meta-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:5:{i:1571392777;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1571399977;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1571400117;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1571400121;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570618256;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:12:\"categories-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-3\";i:2;s:6:\"meta-3\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.4-partial-2.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.4-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-rollback-2.zip\";}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1571389217;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1571389221;s:7:\"checked\";a:5:{s:6:\"arcana\";s:5:\"1.0.0\";s:20:\"twentynineteen-child\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(166, 'blog-type_children', 'a:0:{}', 'yes'),
(193, 'current_theme', 'Arcana', 'yes'),
(194, 'theme_mods_twentynineteen-child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570538082;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"trp-sidebar-1\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:8:\"search-2\";i:1;s:17:\"jy_first_widget-3\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}}}}', 'yes'),
(195, 'theme_switched', '', 'yes'),
(196, 'recovery_mode_email_last_sent', '1570627212', 'yes'),
(378, 'widget_foo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(380, 'widget_wpb_widget', 'a:2:{i:2;a:1:{s:5:\"title\";s:17:\"Hello This is Jay\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(401, 'widget_first_widget', 'a:2:{i:2;a:2:{s:5:\"title\";s:11:\"First title\";s:8:\"tag_line\";s:14:\"First Tag Line\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(405, 'widget_jy_first_widget', 'a:2:{i:3;a:5:{s:5:\"title\";s:11:\"New titlecs\";s:8:\"tag_line\";s:15:\"New Tag Linexxx\";s:9:\"post_type\";s:4:\"blog\";s:5:\"limit\";s:1:\"2\";s:21:\"display_widget_option\";s:3:\"yes\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(498, 'recently_activated', 'a:1:{s:30:\"advanced-custom-fields/acf.php\";i:1571056094;}', 'yes'),
(978, 'selected_post', 'a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:4:\"blog\";}', 'yes'),
(1112, 'widget_trp_related_post_widget', 'a:9:{i:3;a:5:{s:9:\"trp_title\";s:25:\"TRP Widget Area New title\";s:18:\"trp_upper_tag_line\";s:26:\"New Upper Tag Line in Area\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:1:\"1\";s:5:\"state\";s:2:\"ok\";}}i:4;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"19\";s:5:\"state\";s:2:\"ok\";}}i:5;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"20\";s:5:\"state\";s:2:\"ok\";}}i:6;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"21\";s:5:\"state\";s:2:\"ok\";}}i:7;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"22\";s:5:\"state\";s:2:\"ok\";}}i:8;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"23\";s:5:\"state\";s:2:\"ok\";}}i:9;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"24\";s:5:\"state\";s:2:\"ok\";}}i:10;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"25\";s:5:\"state\";s:2:\"ok\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1144, 'wdev-frash', 'a:3:{s:7:\"plugins\";a:1:{s:34:\"custom-sidebars/customsidebars.php\";i:1568973613;}s:5:\"queue\";a:2:{s:32:\"6a9b139509f3226afafc03dc81d90bd2\";a:3:{s:6:\"plugin\";s:34:\"custom-sidebars/customsidebars.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1568973613;}s:32:\"f21a0d5a84b747557fce042d7049df2b\";a:3:{s:6:\"plugin\";s:34:\"custom-sidebars/customsidebars.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1569578413;}}s:4:\"done\";a:0:{}}', 'no'),
(1152, 'cs_modifiable', 'a:15:{s:10:\"modifiable\";a:1:{i:0;s:9:\"sidebar-1\";}s:7:\"authors\";a:0:{}s:4:\"blog\";a:0:{}s:16:\"category_archive\";a:0:{}s:14:\"category_pages\";N;s:14:\"category_posts\";N;s:15:\"category_single\";a:0:{}s:4:\"date\";a:0:{}s:8:\"defaults\";N;s:17:\"post_type_archive\";a:0:{}s:15:\"post_type_pages\";N;s:16:\"post_type_single\";a:0:{}s:6:\"search\";a:0:{}s:4:\"tags\";a:0:{}s:6:\"screen\";a:1:{s:4:\"cs-1\";a:0:{}}}', 'yes'),
(1168, 'cs_sidebars', 'a:0:{}', 'yes'),
(1179, 'custom_post_type_page_template', 'a:1:{s:10:\"post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"blog\";}}', 'yes'),
(1182, 'page_widget_version', '3.9', 'yes'),
(1184, 'pw_options', 'a:4:{s:8:\"donation\";s:2:\"no\";s:10:\"post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:4:\"blog\";}s:8:\"sidebars\";a:1:{i:0;s:13:\"trp-sidebar-1\";}s:20:\"customize_by_default\";s:2:\"no\";}', 'yes'),
(1185, 'widget_38_trp_related_post_widget', 'a:3:{i:4;a:5:{s:9:\"trp_title\";s:17:\"TRP Sidebar added\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"19\";s:5:\"state\";s:2:\"ok\";}}i:5;a:5:{s:9:\"trp_title\";s:34:\"New titlesssssssssssssssssssssssss\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"20\";s:5:\"state\";s:2:\"ok\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1187, 'widget_customsidebarsemptyplugin', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1188, 'widget_5_trp_related_post_widget', 'a:5:{i:7;a:5:{s:9:\"trp_title\";s:12:\"New titlesss\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"22\";s:5:\"state\";s:2:\"ok\";}}i:8;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:20:\"ssNew Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:19:\"sNew Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"23\";s:5:\"state\";s:2:\"ok\";}}i:9;a:5:{s:9:\"trp_title\";s:22:\"sdfdsfsdfNew titlessss\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:22:\"New Lower Tag Linessss\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"24\";s:5:\"state\";s:2:\"ok\";}}i:3;a:5:{s:9:\"trp_title\";s:25:\"TRP Widget Area New title\";s:18:\"trp_upper_tag_line\";s:26:\"New Upper Tag Line in Area\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:1:\"1\";s:5:\"state\";s:2:\"ok\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1230, 'widget_39_trp_related_post_widget', 'a:2:{i:10;a:5:{s:9:\"trp_title\";s:9:\"New title\";s:18:\"trp_upper_tag_line\";s:18:\"New Upper Tag Line\";s:18:\"trp_lower_tag_line\";s:18:\"New Lower Tag Line\";s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:15:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:7:\"pt-blog\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:13:\"tax-blog-type\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:2:\"25\";s:5:\"state\";s:2:\"ok\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1352, 'theme_mods_arcana', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:12;s:18:\"arcana-custom-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1353, 'category_children', 'a:0:{}', 'yes'),
(1383, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1409, 'acf_version', '5.8.5', 'yes'),
(1424, '_site_transient_timeout_php_check_7e4527cc16f9a95bbd6e8b03dba0e848', '1571653199', 'no'),
(1425, '_site_transient_php_check_7e4527cc16f9a95bbd6e8b03dba0e848', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1449, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1571389221;s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:65:\"custom-post-type-page-template/custom-post-type-page-template.php\";s:3:\"1.1\";s:34:\"custom-sidebars/customsidebars.php\";s:5:\"3.2.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:25:\"tags-relatedpost/init.php\";s:3:\"1.0\";s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";s:5:\"2.2.4\";s:34:\"wp-page-widget/wp-page-widgets.php\";s:3:\"3.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:65:\"custom-post-type-page-template/custom-post-type-page-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:44:\"w.org/plugins/custom-post-type-page-template\";s:4:\"slug\";s:30:\"custom-post-type-page-template\";s:6:\"plugin\";s:65:\"custom-post-type-page-template/custom-post-type-page-template.php\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/custom-post-type-page-template/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/custom-post-type-page-template.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:81:\"https://s.w.org/plugins/geopattern-icon/custom-post-type-page-template_fcfcfc.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:84:\"https://ps.w.org/custom-post-type-page-template/assets/banner-772x250.jpg?rev=620559\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"custom-sidebars/customsidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/custom-sidebars\";s:4:\"slug\";s:15:\"custom-sidebars\";s:6:\"plugin\";s:34:\"custom-sidebars/customsidebars.php\";s:11:\"new_version\";s:5:\"3.2.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/custom-sidebars/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/custom-sidebars.3.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/custom-sidebars/assets/icon-256x256.png?rev=1414065\";s:2:\"1x\";s:68:\"https://ps.w.org/custom-sidebars/assets/icon-128x128.png?rev=1414065\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/custom-sidebars/assets/banner-1544x500.png?rev=1414065\";s:2:\"1x\";s:70:\"https://ps.w.org/custom-sidebars/assets/banner-772x250.png?rev=1414065\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-sidebars/assets/banner-1544x500-rtl.png?rev=1562672\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-sidebars/assets/banner-772x250-rtl.png?rev=1562672\";}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:61:\"w.org/plugins/wck-custom-fields-and-custom-post-types-creator\";s:4:\"slug\";s:47:\"wck-custom-fields-and-custom-post-types-creator\";s:6:\"plugin\";s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";s:11:\"new_version\";s:5:\"2.2.4\";s:3:\"url\";s:78:\"https://wordpress.org/plugins/wck-custom-fields-and-custom-post-types-creator/\";s:7:\"package\";s:96:\"https://downloads.wordpress.org/plugin/wck-custom-fields-and-custom-post-types-creator.2.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:100:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/icon-256x256.png?rev=1470029\";s:2:\"1x\";s:100:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/icon-128x128.png?rev=1470029\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:102:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/banner-772x250.png?rev=1470029\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"wp-page-widget/wp-page-widgets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-page-widget\";s:4:\"slug\";s:14:\"wp-page-widget\";s:6:\"plugin\";s:34:\"wp-page-widget/wp-page-widgets.php\";s:11:\"new_version\";s:3:\"3.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-page-widget/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-page-widget.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:65:\"https://s.w.org/plugins/geopattern-icon/wp-page-widget_fcfbfc.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-page-widget/assets/banner-772x250.png?rev=525273\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1450, 'wck_meta_boxes_ids', 'a:2:{i:0;i:131;i:1;i:132;}', 'yes'),
(1451, 'wck_update_to_unserialized', 'no', 'yes'),
(1452, 'wck_tools', 'a:1:{i:0;a:4:{s:21:\"custom-fields-creator\";s:7:\"enabled\";s:24:\"custom-post-type-creator\";s:8:\"disabled\";s:23:\"custom-taxonomy-creator\";s:8:\"disabled\";s:37:\"swift-templates-and-front-end-posting\";s:8:\"disabled\";}}', 'yes'),
(1477, '_site_transient_timeout_theme_roots', '1571391019', 'no'),
(1478, '_site_transient_theme_roots', 'a:5:{s:6:\"arcana\";s:7:\"/themes\";s:20:\"twentynineteen-child\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1568269403:1'),
(4, 5, '_edit_lock', '1570709247:1'),
(5, 5, '_wp_page_template', 'custom-blog-template.php'),
(6, 7, '_edit_last', '1'),
(7, 7, '_edit_lock', '1569824440:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1569821435:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1564741089:1'),
(12, 10, '_edit_last', '1'),
(13, 10, '_edit_lock', '1564740892:1'),
(14, 11, '_edit_lock', '1570452732:1'),
(15, 11, '_wp_page_template', 'cutom-taxonomy-base-listing-template.php'),
(16, 9, 'post_disp_options', 'yes'),
(18, 10, 'post_disp_options', 'yes'),
(19, 8, 'post_disp_options', 'yes'),
(20, 7, 'post_display_options', 'yes'),
(22, 8, 'post_display_options', 'yes'),
(23, 9, 'post_display_options', 'yes'),
(24, 10, 'post_display_options', 'yes'),
(26, 1, 'post_views_count', '13'),
(27, 7, 'visit_count', '23'),
(28, 10, 'visit_count', '9'),
(29, 9, 'visit_count', '13'),
(30, 8, 'visit_count', '14'),
(31, 5, 'post_display_options', '1'),
(53, 29, 'post_display_options', 'yes'),
(55, 29, '_edit_last', '1'),
(56, 29, '_edit_lock', '1565246606:1'),
(57, 29, 'visit_count', '3'),
(61, 36, 'post_display_options', '1'),
(62, 36, '_edit_last', '1'),
(63, 36, '_edit_lock', '1569231240:1'),
(64, 36, 'visit_count', '13'),
(66, 38, 'post_display_options', '1'),
(67, 38, '_edit_last', '1'),
(68, 38, '_edit_lock', '1569393497:1'),
(69, 38, 'post_display_options', '1'),
(70, 38, 'visit_count', '64'),
(71, 39, 'post_display_options', '1'),
(72, 39, '_edit_lock', '1569578200:1'),
(73, 39, '_edit_last', '1'),
(74, 39, 'post_display_options', '1'),
(75, 39, 'post_display_options', '1'),
(78, 44, '_wp_attached_file', '2019/08/Jay.jpeg'),
(79, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1136;s:6:\"height\";i:757;s:4:\"file\";s:16:\"2019/08/Jay.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Jay-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"Jay-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"Jay-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"Jay-1024x682.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(80, 45, '_wp_attached_file', '2019/08/team.jpeg'),
(81, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1136;s:6:\"height\";i:852;s:4:\"file\";s:17:\"2019/08/team.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"team-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"team-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"team-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"team-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(82, 46, '_wp_attached_file', '2019/08/jay-monark.jpeg'),
(83, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:852;s:6:\"height\";i:1136;s:4:\"file\";s:23:\"2019/08/jay-monark.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"jay-monark-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"jay-monark-225x300.jpeg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"jay-monark-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"jay-monark-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(88, 49, '_wp_attached_file', '2019/08/Dwight-D.-Viehland.jpg'),
(89, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:30:\"2019/08/Dwight-D.-Viehland.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Dwight-D.-Viehland-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 50, '_wp_attached_file', '2019/08/Carolina-Tallon.jpg'),
(91, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:27:\"2019/08/Carolina-Tallon.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Carolina-Tallon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 51, '_wp_attached_file', '2019/08/Celine-Hin.jpg'),
(93, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:22:\"2019/08/Celine-Hin.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Celine-Hin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 52, '_wp_attached_file', '2019/08/Miqin-Zhang.jpg'),
(95, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:23:\"2019/08/Miqin-Zhang.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Miqin-Zhang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 53, '_wp_attached_file', '2019/08/Peter-J.-Pauzauskie.jpg'),
(97, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:31:\"2019/08/Peter-J.-Pauzauskie.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Peter-J.-Pauzauskie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 54, '_wp_attached_file', '2019/08/Lucien-Brush.jpg'),
(99, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2019/08/Lucien-Brush.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Lucien-Brush-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 55, '_wp_attached_file', '2019/08/Chelsey-Hargather.jpg'),
(101, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:29:\"2019/08/Chelsey-Hargather.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Chelsey-Hargather-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 56, '_wp_attached_file', '2019/08/Hyeoneui-Kim.jpg'),
(103, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2019/08/Hyeoneui-Kim.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Hyeoneui-Kim-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 57, '_wp_attached_file', '2019/08/image4.jpeg'),
(105, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1136;s:6:\"height\";i:852;s:4:\"file\";s:19:\"2019/08/image4.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image4-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image4-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image4-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(106, 58, '_wp_attached_file', '2019/08/image3.jpeg'),
(107, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1136;s:6:\"height\";i:852;s:4:\"file\";s:19:\"2019/08/image3.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image3-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image3-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image3-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(108, 59, '_wp_attached_file', '2019/08/image2.jpeg'),
(109, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1136;s:6:\"height\";i:852;s:4:\"file\";s:19:\"2019/08/image2.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image2-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image2-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image2-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(110, 60, '_wp_attached_file', '2019/08/image1.jpeg'),
(111, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1136;s:6:\"height\";i:852;s:4:\"file\";s:19:\"2019/08/image1.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image1-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image1-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image1-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(113, 3, '_edit_lock', '1566560470:1'),
(114, 3, 'post_display_options', ''),
(119, 5, '_edit_last', '1'),
(120, 5, 'post_display_options', '1'),
(121, 5, 'post_display_options', '1'),
(122, 5, 'post_display_options', '1'),
(123, 5, 'post_display_options', '1'),
(124, 5, 'post_display_options', '1'),
(125, 5, 'post_display_options', '1'),
(126, 5, 'post_display_options', '1'),
(127, 5, 'post_display_options', '1'),
(128, 5, 'post_display_options', '1'),
(129, 5, 'post_display_options', '1'),
(130, 5, 'post_display_options', '1'),
(131, 5, 'post_display_options', '1'),
(132, 5, 'post_display_options', '1'),
(133, 5, 'post_display_options', '1'),
(134, 5, 'post_display_options', '1'),
(135, 5, 'post_display_options', '1'),
(136, 5, 'post_display_options', '1'),
(137, 5, 'post_display_options', '1'),
(138, 5, 'post_display_options', '1'),
(139, 5, 'post_display_options', '1'),
(140, 5, 'post_display_options', '1'),
(141, 5, 'post_display_options', '1'),
(142, 11, 'post_display_options', ''),
(143, 11, '_edit_last', '1'),
(144, 11, 'trp_tag_select_meta', 'Tag 10'),
(145, 11, 'post_display_options', ''),
(146, 11, 'post_display_options', ''),
(147, 5, 'post_display_options', '1'),
(148, 5, 'post_display_options', '1'),
(149, 11, 'post_display_options', ''),
(150, 11, 'post_display_options', ''),
(151, 5, 'post_display_options', '1'),
(152, 5, 'post_display_options', '1'),
(153, 2, '_edit_lock', '1568706650:1'),
(154, 2, 'post_display_options', '1'),
(155, 2, '_edit_last', '1'),
(156, 2, 'trp_tag_select_meta', 'Tag 3'),
(157, 2, 'post_display_options', ''),
(158, 2, 'post_display_options', '1'),
(160, 5, 'trp_tag_prime_select_meta', 'Tag 1'),
(162, 5, 'trp_tag_sec_select_meta', 'Tag 11'),
(164, 5, 'post_display_options', '1'),
(169, 5, 'post_display_options', '1'),
(170, 5, 'post_display_options', '1'),
(176, 5, 'post_display_options', '1'),
(179, 73, '_wp_trash_meta_status', 'publish'),
(180, 73, '_wp_trash_meta_time', '1568964669'),
(181, 73, 'trp_tag_sec_select_meta', ''),
(182, 73, 'post_display_options', ''),
(183, 74, '_wp_trash_meta_status', 'publish'),
(184, 74, '_wp_trash_meta_time', '1568964689'),
(185, 74, 'trp_tag_sec_select_meta', ''),
(186, 74, 'post_display_options', ''),
(187, 75, '_wp_trash_meta_status', 'publish'),
(188, 75, '_wp_trash_meta_time', '1568964706'),
(189, 75, 'trp_tag_sec_select_meta', ''),
(190, 75, 'post_display_options', ''),
(191, 76, '_wp_trash_meta_status', 'publish'),
(192, 76, '_wp_trash_meta_time', '1568964734'),
(193, 76, 'trp_tag_sec_select_meta', ''),
(194, 76, 'post_display_options', ''),
(197, 11, 'trp_tag_sec_select_meta', ''),
(198, 11, 'post_display_options', ''),
(199, 11, 'trp_tag_prime_select_meta', 'Please select'),
(201, 11, 'post_display_options', ''),
(202, 38, 'trp_tag_sec_select_meta', ''),
(203, 38, 'post_display_options', ''),
(204, 38, 'trp_tag_prime_select_meta', 'Please select'),
(206, 38, 'post_display_options', '1'),
(207, 36, 'trp_tag_sec_select_meta', ''),
(208, 36, 'post_display_options', ''),
(209, 36, 'trp_tag_prime_select_meta', 'Please select'),
(210, 36, '_cs_replacements', 'a:1:{s:9:\"sidebar-1\";s:4:\"cs-1\";}'),
(211, 36, 'post_display_options', '1'),
(212, 36, 'post_display_options', ''),
(213, 36, 'post_display_options', '1'),
(214, 11, 'post_display_options', ''),
(215, 78, 'trp_tag_sec_select_meta', ''),
(216, 78, 'post_display_options', ''),
(217, 78, '_edit_last', '1'),
(218, 78, '_edit_lock', '1569231411:1'),
(221, 38, '_wp_page_template', 'default'),
(222, 38, 'post_display_options', '1'),
(223, 38, '_sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"trp-sidebar-1\";a:1:{i:0;s:25:\"trp_related_post_widget-5\";}s:13:\"array_version\";i:3;}'),
(224, 38, '_customize_sidebars', 'yes'),
(226, 38, 'post_display_options', '1'),
(227, 38, 'post_display_options', '1'),
(228, 80, '_wp_trash_meta_status', 'publish'),
(229, 80, '_wp_trash_meta_time', '1569235754'),
(230, 80, 'trp_tag_sec_select_meta', ''),
(231, 80, 'post_display_options', ''),
(232, 38, 'post_display_options', '1'),
(233, 38, 'post_display_options', '1'),
(234, 38, 'post_display_options', '1'),
(235, 38, 'post_display_options', '1'),
(236, 38, 'post_display_options', '1'),
(238, 38, 'post_display_options', '1'),
(239, 38, 'post_display_options', '1'),
(240, 38, 'post_display_options', '1'),
(241, 5, '_sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:25:\"trp_related_post_widget-3\";}s:13:\"trp-sidebar-1\";a:1:{i:0;s:25:\"trp_related_post_widget-9\";}s:13:\"array_version\";i:3;}'),
(242, 5, '_customize_sidebars', 'yes'),
(247, 5, 'post_display_options', '1'),
(252, 5, 'post_display_options', '1'),
(253, 38, 'post_display_options', '1'),
(254, 39, '_sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"trp-sidebar-1\";a:1:{i:0;s:26:\"trp_related_post_widget-10\";}s:13:\"array_version\";i:3;}'),
(255, 39, '_wp_page_template', 'default'),
(256, 39, 'trp_tag_sec_select_meta', ''),
(257, 39, 'trp_tag_prime_select_meta', 'Please select'),
(258, 39, '_customize_sidebars', 'no'),
(259, 39, 'post_display_options', '1'),
(260, 7, '_thumbnail_id', '44'),
(261, 7, 'trp_tag_sec_select_meta', ''),
(262, 7, 'trp_tag_prime_select_meta', 'Please select'),
(263, 7, '_customize_sidebars', 'no'),
(264, 7, 'post_display_options', '1'),
(267, 5, 'post_display_options', '1'),
(268, 5, 'post_display_options', '1'),
(269, 87, 'trp_tag_sec_select_meta', ''),
(270, 87, 'post_display_options', '1'),
(271, 87, '_edit_lock', '1570452578:1'),
(272, 87, '_wp_page_template', 'js-learn-template.php'),
(273, 87, '_edit_last', '1'),
(274, 87, 'trp_tag_prime_select_meta', 'Please select'),
(275, 87, '_customize_sidebars', 'no'),
(276, 89, '_wp_trash_meta_status', 'publish'),
(277, 89, '_wp_trash_meta_time', '1570539522'),
(278, 89, 'trp_tag_sec_select_meta', ''),
(280, 91, '_wp_trash_meta_status', 'publish'),
(281, 91, '_wp_trash_meta_time', '1570618048'),
(282, 91, 'trp_tag_sec_select_meta', ''),
(283, 92, 'trp_tag_sec_select_meta', ''),
(284, 92, '_menu_item_type', 'custom'),
(285, 92, '_menu_item_menu_item_parent', '0'),
(286, 92, '_menu_item_object_id', '92'),
(287, 92, '_menu_item_object', 'custom'),
(288, 92, '_menu_item_target', ''),
(289, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(290, 92, '_menu_item_xfn', ''),
(291, 92, '_menu_item_url', 'http://wp-learning.local.in'),
(313, 95, 'trp_tag_sec_select_meta', ''),
(314, 95, '_menu_item_type', 'custom'),
(315, 95, '_menu_item_menu_item_parent', '0'),
(316, 95, '_menu_item_object_id', '95'),
(317, 95, '_menu_item_object', 'custom'),
(318, 95, '_menu_item_target', ''),
(319, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(320, 95, '_menu_item_xfn', ''),
(321, 95, '_menu_item_url', '#'),
(323, 96, 'trp_tag_sec_select_meta', ''),
(324, 96, '_menu_item_type', 'custom'),
(325, 96, '_menu_item_menu_item_parent', '0'),
(326, 96, '_menu_item_object_id', '96'),
(327, 96, '_menu_item_object', 'custom'),
(328, 96, '_menu_item_target', ''),
(329, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(330, 96, '_menu_item_xfn', ''),
(331, 96, '_menu_item_url', '#'),
(333, 97, 'trp_tag_sec_select_meta', ''),
(334, 97, '_menu_item_type', 'custom'),
(335, 97, '_menu_item_menu_item_parent', '0'),
(336, 97, '_menu_item_object_id', '97'),
(337, 97, '_menu_item_object', 'custom'),
(338, 97, '_menu_item_target', ''),
(339, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(340, 97, '_menu_item_xfn', ''),
(341, 97, '_menu_item_url', '#'),
(343, 98, 'trp_tag_sec_select_meta', ''),
(344, 98, '_menu_item_type', 'post_type'),
(345, 98, '_menu_item_menu_item_parent', '0'),
(346, 98, '_menu_item_object_id', '5'),
(347, 98, '_menu_item_object', 'page'),
(348, 98, '_menu_item_target', ''),
(349, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(350, 98, '_menu_item_xfn', ''),
(351, 98, '_menu_item_url', ''),
(353, 99, 'trp_tag_sec_select_meta', ''),
(354, 99, '_menu_item_type', 'post_type'),
(355, 99, '_menu_item_menu_item_parent', '0'),
(356, 99, '_menu_item_object_id', '2'),
(357, 99, '_menu_item_object', 'page'),
(358, 99, '_menu_item_target', ''),
(359, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 99, '_menu_item_xfn', ''),
(361, 99, '_menu_item_url', ''),
(363, 100, 'trp_tag_sec_select_meta', ''),
(364, 100, '_menu_item_type', 'post_type'),
(365, 100, '_menu_item_menu_item_parent', '98'),
(366, 100, '_menu_item_object_id', '11'),
(367, 100, '_menu_item_object', 'page'),
(368, 100, '_menu_item_target', ''),
(369, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(370, 100, '_menu_item_xfn', ''),
(371, 100, '_menu_item_url', ''),
(373, 101, 'trp_tag_sec_select_meta', ''),
(374, 101, '_menu_item_type', 'post_type'),
(375, 101, '_menu_item_menu_item_parent', '98'),
(376, 101, '_menu_item_object_id', '87'),
(377, 101, '_menu_item_object', 'page'),
(378, 101, '_menu_item_target', ''),
(379, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 101, '_menu_item_xfn', ''),
(381, 101, '_menu_item_url', ''),
(383, 102, 'trp_tag_sec_select_meta', ''),
(384, 102, '_edit_last', '1'),
(385, 103, 'trp_tag_sec_select_meta', ''),
(386, 104, 'trp_tag_sec_select_meta', ''),
(387, 105, 'trp_tag_sec_select_meta', ''),
(388, 102, '_edit_lock', '1570714293:1'),
(389, 106, 'trp_tag_sec_select_meta', ''),
(390, 106, '_edit_lock', '1571058742:1'),
(391, 106, '_edit_last', '1'),
(392, 106, 'trp_tag_prime_select_meta', 'Please select'),
(393, 106, '_customize_sidebars', 'no'),
(394, 108, 'trp_tag_sec_select_meta', ''),
(395, 109, 'trp_tag_sec_select_meta', ''),
(396, 110, 'trp_tag_sec_select_meta', ''),
(397, 111, 'trp_tag_sec_select_meta', ''),
(398, 112, 'trp_tag_sec_select_meta', ''),
(399, 113, 'trp_tag_sec_select_meta', ''),
(400, 114, 'trp_tag_sec_select_meta', ''),
(401, 115, 'trp_tag_sec_select_meta', ''),
(402, 112, '_edit_lock', '1570714223:1'),
(403, 108, '_edit_lock', '1570714802:1'),
(404, 108, '_edit_last', '1'),
(405, 112, '_edit_last', '1'),
(406, 106, '_wp_page_template', 'home-page-template.php'),
(407, 106, 'also_important_title', 'Also Important'),
(408, 106, '_also_important_title', 'field_5d9f234231e0a'),
(409, 106, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(410, 106, '_also_important_discription', 'field_5d9f234232160'),
(411, 106, 'this_is_important_image', '55'),
(412, 106, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(413, 106, 'this_is_important_title', 'This Is Important'),
(414, 106, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(415, 106, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(416, 106, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(417, 106, 'probably_important_title', 'Probably Important'),
(418, 106, '_probably_important_title', 'field_5d9f2343d53e9'),
(419, 106, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(420, 106, '_probably_important_discription', 'field_5d9f2343d548b'),
(421, 106, 'probably_important_image', '56'),
(422, 106, '_probably_important_image', 'field_5d9f2343d54ce'),
(423, 107, 'also_important_title', ''),
(424, 107, '_also_important_title', 'field_5d9f234231e0a'),
(425, 107, 'also_important_discription', ''),
(426, 107, '_also_important_discription', 'field_5d9f234232160'),
(427, 107, 'this_is_important_image', ''),
(428, 107, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(429, 107, 'this_is_important_title', ''),
(430, 107, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(431, 107, 'this_is_important_discription', ''),
(432, 107, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(433, 107, 'probably_important_title', ''),
(434, 107, '_probably_important_title', 'field_5d9f2343d53e9'),
(435, 107, 'probably_important_discription', ''),
(436, 107, '_probably_important_discription', 'field_5d9f2343d548b'),
(437, 107, 'probably_important_image', ''),
(438, 107, '_probably_important_image', 'field_5d9f2343d54ce'),
(439, 116, 'also_important_title', 'Also Important'),
(440, 116, '_also_important_title', 'field_5d9f234231e0a'),
(441, 116, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(442, 116, '_also_important_discription', 'field_5d9f234232160'),
(443, 116, 'this_is_important_image', '55'),
(444, 116, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(445, 116, 'this_is_important_title', 'This Is Important'),
(446, 116, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(447, 116, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(448, 116, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(449, 116, 'probably_important_title', 'Probably Important'),
(450, 116, '_probably_important_title', 'field_5d9f2343d53e9'),
(451, 116, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(452, 116, '_probably_important_discription', 'field_5d9f2343d548b'),
(453, 116, 'probably_important_image', '56'),
(454, 116, '_probably_important_image', 'field_5d9f2343d54ce'),
(455, 106, 'also_important_image', '50'),
(456, 106, '_also_important_image', 'field_5d9f234232476'),
(457, 117, 'also_important_title', 'Also Important'),
(458, 117, '_also_important_title', 'field_5d9f234231e0a'),
(459, 117, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(460, 117, '_also_important_discription', 'field_5d9f234232160'),
(461, 117, 'this_is_important_image', '55'),
(462, 117, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(463, 117, 'this_is_important_title', 'This Is Important'),
(464, 117, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(465, 117, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(466, 117, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(467, 117, 'probably_important_title', 'Probably Important'),
(468, 117, '_probably_important_title', 'field_5d9f2343d53e9'),
(469, 117, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(470, 117, '_probably_important_discription', 'field_5d9f2343d548b'),
(471, 117, 'probably_important_image', '56'),
(472, 117, '_probably_important_image', 'field_5d9f2343d54ce'),
(473, 117, 'also_important_image', '50'),
(474, 117, '_also_important_image', 'field_5d9f234232476'),
(475, 118, 'trp_tag_sec_select_meta', ''),
(476, 118, '_edit_last', '1'),
(478, 118, '_edit_lock', '1571055034:1'),
(479, 106, 'header_image', ''),
(480, 106, '_header_image', 'field_5da4624a5133f'),
(481, 120, 'also_important_title', 'Also Important'),
(482, 120, '_also_important_title', 'field_5d9f234231e0a'),
(483, 120, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(484, 120, '_also_important_discription', 'field_5d9f234232160'),
(485, 120, 'this_is_important_image', '55'),
(486, 120, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(487, 120, 'this_is_important_title', 'This Is Important'),
(488, 120, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(489, 120, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(490, 120, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(491, 120, 'probably_important_title', 'Probably Important'),
(492, 120, '_probably_important_title', 'field_5d9f2343d53e9'),
(493, 120, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(494, 120, '_probably_important_discription', 'field_5d9f2343d548b'),
(495, 120, 'probably_important_image', '56'),
(496, 120, '_probably_important_image', 'field_5d9f2343d54ce'),
(497, 120, 'also_important_image', '50'),
(498, 120, '_also_important_image', 'field_5d9f234232476'),
(499, 120, 'header_image', '58'),
(500, 120, '_header_image', 'field_5da4624a5133f'),
(501, 121, 'trp_tag_sec_select_meta', ''),
(502, 122, 'trp_tag_sec_select_meta', ''),
(503, 106, 'header_tag_line', 'This is the Tag line of header'),
(504, 106, '_header_tag_line', 'field_5da463e5eb40c'),
(505, 106, 'button_link', 'http://jayupadhyay.ml/'),
(506, 106, '_button_link', 'field_5da46484eb40d'),
(507, 123, 'also_important_title', 'Also Important'),
(508, 123, '_also_important_title', 'field_5d9f234231e0a'),
(509, 123, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(510, 123, '_also_important_discription', 'field_5d9f234232160'),
(511, 123, 'this_is_important_image', '55'),
(512, 123, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(513, 123, 'this_is_important_title', 'This Is Important'),
(514, 123, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(515, 123, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(516, 123, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(517, 123, 'probably_important_title', 'Probably Important'),
(518, 123, '_probably_important_title', 'field_5d9f2343d53e9'),
(519, 123, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(520, 123, '_probably_important_discription', 'field_5d9f2343d548b'),
(521, 123, 'probably_important_image', '56'),
(522, 123, '_probably_important_image', 'field_5d9f2343d54ce'),
(523, 123, 'also_important_image', '50'),
(524, 123, '_also_important_image', 'field_5d9f234232476'),
(525, 123, 'header_image', '58'),
(526, 123, '_header_image', 'field_5da4624a5133f'),
(527, 123, 'header_tag_line', 'This is the Tag line of header'),
(528, 123, '_header_tag_line', 'field_5da463e5eb40c'),
(529, 123, 'button_link', 'http://jayupadhyay.ml/'),
(530, 123, '_button_link', 'field_5da46484eb40d'),
(531, 124, 'also_important_title', 'Also Important'),
(532, 124, '_also_important_title', 'field_5d9f234231e0a'),
(533, 124, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(534, 124, '_also_important_discription', 'field_5d9f234232160'),
(535, 124, 'this_is_important_image', '55'),
(536, 124, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(537, 124, 'this_is_important_title', 'This Is Important'),
(538, 124, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(539, 124, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(540, 124, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(541, 124, 'probably_important_title', 'Probably Important'),
(542, 124, '_probably_important_title', 'field_5d9f2343d53e9'),
(543, 124, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(544, 124, '_probably_important_discription', 'field_5d9f2343d548b'),
(545, 124, 'probably_important_image', '56'),
(546, 124, '_probably_important_image', 'field_5d9f2343d54ce'),
(547, 124, 'also_important_image', '50'),
(548, 124, '_also_important_image', 'field_5d9f234232476'),
(549, 124, 'header_image', '58'),
(550, 124, '_header_image', 'field_5da4624a5133f'),
(551, 124, 'header_tag_line', 'This is the Tag line of header'),
(552, 124, '_header_tag_line', 'field_5da463e5eb40c'),
(553, 124, 'button_link', 'http://jayupadhyay.ml/'),
(554, 124, '_button_link', 'field_5da46484eb40d'),
(555, 106, 'header_button_link', 'http://jayupadhyay.ml/'),
(556, 106, '_header_button_link', 'field_5da46484eb40d'),
(557, 125, 'also_important_title', 'Also Important'),
(558, 125, '_also_important_title', 'field_5d9f234231e0a'),
(559, 125, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(560, 125, '_also_important_discription', 'field_5d9f234232160'),
(561, 125, 'this_is_important_image', '55'),
(562, 125, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(563, 125, 'this_is_important_title', 'This Is Important'),
(564, 125, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(565, 125, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(566, 125, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(567, 125, 'probably_important_title', 'Probably Important'),
(568, 125, '_probably_important_title', 'field_5d9f2343d53e9'),
(569, 125, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(570, 125, '_probably_important_discription', 'field_5d9f2343d548b'),
(571, 125, 'probably_important_image', '56'),
(572, 125, '_probably_important_image', 'field_5d9f2343d54ce'),
(573, 125, 'also_important_image', '50'),
(574, 125, '_also_important_image', 'field_5d9f234232476'),
(575, 125, 'header_image', '58'),
(576, 125, '_header_image', 'field_5da4624a5133f'),
(577, 125, 'header_tag_line', 'This is the Tag line of header'),
(578, 125, '_header_tag_line', 'field_5da463e5eb40c'),
(579, 125, 'button_link', 'http://jayupadhyay.ml/'),
(580, 125, '_button_link', 'field_5da46484eb40d'),
(581, 125, 'header_button_link', ''),
(582, 125, '_header_button_link', 'field_5da46484eb40d'),
(583, 126, 'also_important_title', 'Also Important'),
(584, 126, '_also_important_title', 'field_5d9f234231e0a'),
(585, 126, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(586, 126, '_also_important_discription', 'field_5d9f234232160'),
(587, 126, 'this_is_important_image', '55'),
(588, 126, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(589, 126, 'this_is_important_title', 'This Is Important'),
(590, 126, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(591, 126, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(592, 126, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(593, 126, 'probably_important_title', 'Probably Important'),
(594, 126, '_probably_important_title', 'field_5d9f2343d53e9'),
(595, 126, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(596, 126, '_probably_important_discription', 'field_5d9f2343d548b'),
(597, 126, 'probably_important_image', '56'),
(598, 126, '_probably_important_image', 'field_5d9f2343d54ce'),
(599, 126, 'also_important_image', '50'),
(600, 126, '_also_important_image', 'field_5d9f234232476'),
(601, 126, 'header_image', '58'),
(602, 126, '_header_image', 'field_5da4624a5133f'),
(603, 126, 'header_tag_line', 'This is the Tag line of header'),
(604, 126, '_header_tag_line', 'field_5da463e5eb40c'),
(605, 126, 'button_link', 'http://jayupadhyay.ml/'),
(606, 126, '_button_link', 'field_5da46484eb40d'),
(607, 126, 'header_button_link', 'http://jayupadhyay.ml/'),
(608, 126, '_header_button_link', 'field_5da46484eb40d'),
(610, 128, 'also_important_title', 'Also Important'),
(611, 128, '_also_important_title', 'field_5d9f234231e0a'),
(612, 128, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(613, 128, '_also_important_discription', 'field_5d9f234232160'),
(614, 128, 'this_is_important_image', '55'),
(615, 128, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(616, 128, 'this_is_important_title', 'This Is Important'),
(617, 128, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(618, 128, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(619, 128, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(620, 128, 'probably_important_title', 'Probably Important'),
(621, 128, '_probably_important_title', 'field_5d9f2343d53e9'),
(622, 128, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(623, 128, '_probably_important_discription', 'field_5d9f2343d548b'),
(624, 128, 'probably_important_image', '56'),
(625, 128, '_probably_important_image', 'field_5d9f2343d54ce'),
(626, 128, 'also_important_image', '50'),
(627, 128, '_also_important_image', 'field_5d9f234232476'),
(628, 128, 'header_image', ''),
(629, 128, '_header_image', 'field_5da4624a5133f'),
(630, 128, 'header_tag_line', 'This is the Tag line of header'),
(631, 128, '_header_tag_line', 'field_5da463e5eb40c'),
(632, 128, 'button_link', 'http://jayupadhyay.ml/'),
(633, 128, '_button_link', 'field_5da46484eb40d'),
(634, 128, 'header_button_link', 'http://jayupadhyay.ml/'),
(635, 128, '_header_button_link', 'field_5da46484eb40d'),
(636, 129, 'also_important_title', 'Also Important'),
(637, 129, '_also_important_title', 'field_5d9f234231e0a'),
(638, 129, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(639, 129, '_also_important_discription', 'field_5d9f234232160'),
(640, 129, 'this_is_important_image', '55'),
(641, 129, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(642, 129, 'this_is_important_title', 'This Is Important'),
(643, 129, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(644, 129, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(645, 129, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(646, 129, 'probably_important_title', 'Probably Important'),
(647, 129, '_probably_important_title', 'field_5d9f2343d53e9'),
(648, 129, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(649, 129, '_probably_important_discription', 'field_5d9f2343d548b'),
(650, 129, 'probably_important_image', '56'),
(651, 129, '_probably_important_image', 'field_5d9f2343d54ce'),
(652, 129, 'also_important_image', '50'),
(653, 129, '_also_important_image', 'field_5d9f234232476'),
(654, 129, 'header_image', ''),
(655, 129, '_header_image', 'field_5da4624a5133f'),
(656, 129, 'header_tag_line', 'This is the Tag line of header'),
(657, 129, '_header_tag_line', 'field_5da463e5eb40c'),
(658, 129, 'button_link', 'http://jayupadhyay.ml/'),
(659, 129, '_button_link', 'field_5da46484eb40d'),
(660, 129, 'header_button_link', 'http://jayupadhyay.ml/'),
(661, 129, '_header_button_link', 'field_5da46484eb40d'),
(662, 130, 'also_important_title', 'Also Important'),
(663, 130, '_also_important_title', 'field_5d9f234231e0a'),
(664, 130, 'also_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.\r\n\r\n'),
(665, 130, '_also_important_discription', 'field_5d9f234232160'),
(666, 130, 'this_is_important_image', '55'),
(667, 130, '_this_is_important_image', 'field_5d9f1eda7eab1'),
(668, 130, 'this_is_important_title', 'This Is Important'),
(669, 130, '_this_is_important_title', 'field_5d9f1e337eaaf'),
(670, 130, 'this_is_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(671, 130, '_this_is_important_discription', 'field_5d9f1eb17eab0'),
(672, 130, 'probably_important_title', 'Probably Important'),
(673, 130, '_probably_important_title', 'field_5d9f2343d53e9'),
(674, 130, 'probably_important_discription', 'Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.'),
(675, 130, '_probably_important_discription', 'field_5d9f2343d548b'),
(676, 130, 'probably_important_image', '56'),
(677, 130, '_probably_important_image', 'field_5d9f2343d54ce'),
(678, 130, 'also_important_image', '50'),
(679, 130, '_also_important_image', 'field_5d9f234232476'),
(680, 130, 'header_image', ''),
(681, 130, '_header_image', 'field_5da4624a5133f'),
(682, 130, 'header_tag_line', 'This is the Tag line of header'),
(683, 130, '_header_tag_line', 'field_5da463e5eb40c'),
(684, 130, 'button_link', 'http://jayupadhyay.ml/'),
(685, 130, '_button_link', 'field_5da46484eb40d'),
(686, 130, 'header_button_link', 'http://jayupadhyay.ml/'),
(687, 130, '_header_button_link', 'field_5da46484eb40d'),
(688, 106, '_thumbnail_id', '57'),
(689, 131, 'trp_tag_sec_select_meta', ''),
(690, 131, 'wck_cfc_fields', 'a:2:{i:0;a:24:{s:11:\"field-title\";s:15:\"header tag line\";s:10:\"field-type\";s:4:\"text\";s:10:\"field-slug\";s:15:\"header-tag-line\";s:18:\"wck-overwrite-slug\";s:0:\"\";s:11:\"description\";s:23:\"Add the Header Tag line\";s:8:\"required\";s:5:\"false\";s:3:\"cpt\";s:4:\"post\";s:13:\"default-value\";s:24:\"This is default tag line\";s:12:\"default-text\";s:0:\"\";s:12:\"html-content\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:12:\"phone-format\";s:14:\"(###) ###-####\";s:16:\"min-number-value\";s:0:\"\";s:16:\"max-number-value\";s:0:\"\";s:17:\"number-step-value\";s:0:\"\";s:21:\"attach-upload-to-post\";s:3:\"yes\";s:14:\"number-of-rows\";s:1:\"5\";s:8:\"readonly\";s:5:\"false\";s:20:\"map-default-latitude\";s:1:\"0\";s:21:\"map-default-longitude\";s:1:\"0\";s:16:\"map-default-zoom\";s:2:\"15\";s:10:\"map-height\";s:3:\"350\";s:11:\"date-format\";s:8:\"dd-mm-yy\";}i:1;a:24:{s:11:\"field-title\";s:18:\"header button link\";s:10:\"field-type\";s:4:\"text\";s:10:\"field-slug\";s:18:\"header-button-link\";s:18:\"wck-overwrite-slug\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:5:\"false\";s:3:\"cpt\";s:4:\"post\";s:13:\"default-value\";s:0:\"\";s:12:\"default-text\";s:0:\"\";s:12:\"html-content\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:12:\"phone-format\";s:14:\"(###) ###-####\";s:16:\"min-number-value\";s:0:\"\";s:16:\"max-number-value\";s:0:\"\";s:17:\"number-step-value\";s:0:\"\";s:21:\"attach-upload-to-post\";s:3:\"yes\";s:14:\"number-of-rows\";s:1:\"5\";s:8:\"readonly\";s:5:\"false\";s:20:\"map-default-latitude\";s:1:\"0\";s:21:\"map-default-longitude\";s:1:\"0\";s:16:\"map-default-zoom\";s:2:\"15\";s:10:\"map-height\";s:3:\"350\";s:11:\"date-format\";s:8:\"dd-mm-yy\";}}'),
(691, 131, 'field-title', 'header tag line'),
(692, 131, 'field-type', 'text'),
(693, 131, 'field-slug', 'header-tag-line'),
(694, 131, 'wck-overwrite-slug', ''),
(695, 131, 'description', 'Add the Header Tag line'),
(696, 131, 'required', 'false'),
(697, 131, 'cpt', 'post'),
(698, 131, 'default-value', 'This is default tag line'),
(699, 131, 'default-text', ''),
(700, 131, 'html-content', ''),
(701, 131, 'options', ''),
(702, 131, 'labels', ''),
(703, 131, 'phone-format', '(###) ###-####'),
(704, 131, 'min-number-value', ''),
(705, 131, 'max-number-value', ''),
(706, 131, 'number-step-value', ''),
(707, 131, 'attach-upload-to-post', 'yes'),
(708, 131, 'number-of-rows', '5'),
(709, 131, 'readonly', 'false'),
(710, 131, 'map-default-latitude', '0'),
(711, 131, 'map-default-longitude', '0'),
(712, 131, 'map-default-zoom', '15'),
(713, 131, 'map-height', '350'),
(714, 131, 'date-format', 'dd-mm-yy'),
(715, 131, '_edit_last', '1'),
(716, 131, 'wck_cfc_post_type_arg', 'page'),
(717, 131, 'wck_cfc_page_template_arg', 'home-page-template.php'),
(718, 131, 'wck_cfc_args', 'a:1:{i:0;a:7:{s:9:\"meta-name\";s:11:\"headergroup\";s:9:\"post-type\";s:4:\"page\";s:8:\"repeater\";s:5:\"false\";s:8:\"sortable\";s:5:\"false\";s:7:\"post-id\";s:0:\"\";s:13:\"page-template\";s:22:\"home-page-template.php\";s:9:\"box-style\";s:7:\"default\";}}'),
(719, 131, 'meta-name', 'headergroup'),
(720, 131, 'post-type', 'page'),
(721, 131, 'repeater', 'false'),
(722, 131, 'sortable', 'false'),
(723, 131, 'post-id', ''),
(724, 131, 'page-template', 'home-page-template.php'),
(725, 131, 'box-style', 'default'),
(726, 131, '_edit_lock', '1571056482:1'),
(727, 131, 'field-title_1', 'header button link'),
(728, 131, 'field-type_1', 'text'),
(729, 131, 'field-slug_1', 'header-button-link'),
(730, 131, 'wck-overwrite-slug_1', ''),
(731, 131, 'description_1', ''),
(732, 131, 'required_1', 'false'),
(733, 131, 'cpt_1', 'post'),
(734, 131, 'default-value_1', ''),
(735, 131, 'default-text_1', ''),
(736, 131, 'html-content_1', ''),
(737, 131, 'options_1', ''),
(738, 131, 'labels_1', ''),
(739, 131, 'phone-format_1', '(###) ###-####'),
(740, 131, 'min-number-value_1', ''),
(741, 131, 'max-number-value_1', ''),
(742, 131, 'number-step-value_1', ''),
(743, 131, 'attach-upload-to-post_1', 'yes'),
(744, 131, 'number-of-rows_1', '5'),
(745, 131, 'readonly_1', 'false'),
(746, 131, 'map-default-latitude_1', '0'),
(747, 131, 'map-default-longitude_1', '0'),
(748, 131, 'map-default-zoom_1', '15'),
(749, 131, 'map-height_1', '350'),
(750, 131, 'date-format_1', 'dd-mm-yy'),
(751, 106, 'headergroup', 'a:1:{i:0;a:2:{s:15:\"header-tag-line\";s:24:\"This is default tag line\";s:18:\"header-button-link\";s:22:\"http://jayupadhyay.ml/\";}}'),
(752, 106, 'header-tag-line', 'This is default tag line'),
(753, 106, 'header-button-link', 'http://jayupadhyay.ml/'),
(754, 132, 'trp_tag_sec_select_meta', ''),
(755, 132, '_edit_last', '1'),
(756, 132, '_edit_lock', '1571058742:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(757, 132, 'wck_cfc_fields', 'a:3:{i:0;a:24:{s:11:\"field-title\";s:18:\"Testimonial Image \";s:10:\"field-type\";s:6:\"upload\";s:10:\"field-slug\";s:17:\"testimonial-image\";s:18:\"wck-overwrite-slug\";s:0:\"\";s:11:\"description\";s:28:\"Please add testimonial image\";s:8:\"required\";s:5:\"false\";s:3:\"cpt\";s:4:\"post\";s:13:\"default-value\";s:0:\"\";s:12:\"default-text\";s:0:\"\";s:12:\"html-content\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:12:\"phone-format\";s:14:\"(###) ###-####\";s:16:\"min-number-value\";s:0:\"\";s:16:\"max-number-value\";s:0:\"\";s:17:\"number-step-value\";s:0:\"\";s:21:\"attach-upload-to-post\";s:3:\"yes\";s:14:\"number-of-rows\";s:1:\"5\";s:8:\"readonly\";s:5:\"false\";s:20:\"map-default-latitude\";s:1:\"0\";s:21:\"map-default-longitude\";s:1:\"0\";s:16:\"map-default-zoom\";s:2:\"15\";s:10:\"map-height\";s:3:\"350\";s:11:\"date-format\";s:8:\"dd-mm-yy\";}i:1;a:24:{s:11:\"field-title\";s:17:\"Testimonial Title\";s:10:\"field-type\";s:4:\"text\";s:10:\"field-slug\";s:17:\"testimonial-title\";s:18:\"wck-overwrite-slug\";s:0:\"\";s:11:\"description\";s:28:\"Please Add Testimonial Title\";s:8:\"required\";s:5:\"false\";s:3:\"cpt\";s:4:\"post\";s:13:\"default-value\";s:0:\"\";s:12:\"default-text\";s:0:\"\";s:12:\"html-content\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:12:\"phone-format\";s:14:\"(###) ###-####\";s:16:\"min-number-value\";s:0:\"\";s:16:\"max-number-value\";s:0:\"\";s:17:\"number-step-value\";s:0:\"\";s:21:\"attach-upload-to-post\";s:3:\"yes\";s:14:\"number-of-rows\";s:1:\"5\";s:8:\"readonly\";s:5:\"false\";s:20:\"map-default-latitude\";s:1:\"0\";s:21:\"map-default-longitude\";s:1:\"0\";s:16:\"map-default-zoom\";s:2:\"15\";s:10:\"map-height\";s:3:\"350\";s:11:\"date-format\";s:8:\"dd-mm-yy\";}i:2;a:24:{s:11:\"field-title\";s:23:\"Testimonial Description\";s:10:\"field-type\";s:8:\"textarea\";s:10:\"field-slug\";s:23:\"testimonial-description\";s:18:\"wck-overwrite-slug\";s:0:\"\";s:11:\"description\";s:34:\"Please add testimonial description\";s:8:\"required\";s:5:\"false\";s:3:\"cpt\";s:4:\"post\";s:13:\"default-value\";s:0:\"\";s:12:\"default-text\";s:0:\"\";s:12:\"html-content\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:12:\"phone-format\";s:14:\"(###) ###-####\";s:16:\"min-number-value\";s:0:\"\";s:16:\"max-number-value\";s:0:\"\";s:17:\"number-step-value\";s:0:\"\";s:21:\"attach-upload-to-post\";s:3:\"yes\";s:14:\"number-of-rows\";s:1:\"5\";s:8:\"readonly\";s:5:\"false\";s:20:\"map-default-latitude\";s:1:\"0\";s:21:\"map-default-longitude\";s:1:\"0\";s:16:\"map-default-zoom\";s:2:\"15\";s:10:\"map-height\";s:3:\"350\";s:11:\"date-format\";s:8:\"dd-mm-yy\";}}'),
(758, 132, 'field-title', 'Testimonial Image '),
(759, 132, 'field-type', 'upload'),
(760, 132, 'field-slug', 'testimonial-image'),
(761, 132, 'wck-overwrite-slug', ''),
(762, 132, 'description', 'Please add testimonial image'),
(763, 132, 'required', 'false'),
(764, 132, 'cpt', 'post'),
(765, 132, 'default-value', ''),
(766, 132, 'default-text', ''),
(767, 132, 'html-content', ''),
(768, 132, 'options', ''),
(769, 132, 'labels', ''),
(770, 132, 'phone-format', '(###) ###-####'),
(771, 132, 'min-number-value', ''),
(772, 132, 'max-number-value', ''),
(773, 132, 'number-step-value', ''),
(774, 132, 'attach-upload-to-post', 'yes'),
(775, 132, 'number-of-rows', '5'),
(776, 132, 'readonly', 'false'),
(777, 132, 'map-default-latitude', '0'),
(778, 132, 'map-default-longitude', '0'),
(779, 132, 'map-default-zoom', '15'),
(780, 132, 'map-height', '350'),
(781, 132, 'date-format', 'dd-mm-yy'),
(782, 132, 'field-title_1', 'Testimonial Title'),
(783, 132, 'field-type_1', 'text'),
(784, 132, 'field-slug_1', 'testimonial-title'),
(785, 132, 'wck-overwrite-slug_1', ''),
(786, 132, 'description_1', 'Please Add Testimonial Title'),
(787, 132, 'required_1', 'false'),
(788, 132, 'cpt_1', 'post'),
(789, 132, 'default-value_1', ''),
(790, 132, 'default-text_1', ''),
(791, 132, 'html-content_1', ''),
(792, 132, 'options_1', ''),
(793, 132, 'labels_1', ''),
(794, 132, 'phone-format_1', '(###) ###-####'),
(795, 132, 'min-number-value_1', ''),
(796, 132, 'max-number-value_1', ''),
(797, 132, 'number-step-value_1', ''),
(798, 132, 'attach-upload-to-post_1', 'yes'),
(799, 132, 'number-of-rows_1', '5'),
(800, 132, 'readonly_1', 'false'),
(801, 132, 'map-default-latitude_1', '0'),
(802, 132, 'map-default-longitude_1', '0'),
(803, 132, 'map-default-zoom_1', '15'),
(804, 132, 'map-height_1', '350'),
(805, 132, 'date-format_1', 'dd-mm-yy'),
(806, 132, 'field-title_2', 'Testimonial Description'),
(807, 132, 'field-type_2', 'textarea'),
(808, 132, 'field-slug_2', 'testimonial-description'),
(809, 132, 'wck-overwrite-slug_2', ''),
(810, 132, 'description_2', 'Please add testimonial description'),
(811, 132, 'required_2', 'false'),
(812, 132, 'cpt_2', 'post'),
(813, 132, 'default-value_2', ''),
(814, 132, 'default-text_2', ''),
(815, 132, 'html-content_2', ''),
(816, 132, 'options_2', ''),
(817, 132, 'labels_2', ''),
(818, 132, 'phone-format_2', '(###) ###-####'),
(819, 132, 'min-number-value_2', ''),
(820, 132, 'max-number-value_2', ''),
(821, 132, 'number-step-value_2', ''),
(822, 132, 'attach-upload-to-post_2', 'yes'),
(823, 132, 'number-of-rows_2', '5'),
(824, 132, 'readonly_2', 'false'),
(825, 132, 'map-default-latitude_2', '0'),
(826, 132, 'map-default-longitude_2', '0'),
(827, 132, 'map-default-zoom_2', '15'),
(828, 132, 'map-height_2', '350'),
(829, 132, 'date-format_2', 'dd-mm-yy'),
(830, 132, 'wck_cfc_post_type_arg', 'page'),
(831, 132, 'wck_cfc_page_template_arg', 'home-page-template.php'),
(832, 132, 'wck_cfc_args', 'a:1:{i:0;a:7:{s:9:\"meta-name\";s:29:\"homepage_testimonial_sections\";s:9:\"post-type\";s:4:\"page\";s:8:\"repeater\";s:4:\"true\";s:8:\"sortable\";s:4:\"true\";s:7:\"post-id\";s:0:\"\";s:13:\"page-template\";s:22:\"home-page-template.php\";s:9:\"box-style\";s:7:\"default\";}}'),
(833, 132, 'meta-name', 'homepage_testimonial_sections'),
(834, 132, 'post-type', 'page'),
(835, 132, 'repeater', 'true'),
(836, 132, 'sortable', 'true'),
(837, 132, 'post-id', ''),
(838, 132, 'page-template', 'home-page-template.php'),
(839, 132, 'box-style', 'default'),
(840, 106, 'homepage_testimonial_sections', 'a:3:{i:0;a:3:{s:17:\"testimonial-image\";s:2:\"49\";s:17:\"testimonial-title\";s:20:\"This is Second Title\";s:23:\"testimonial-description\";s:154:\"This is Second Decription,This is Second Decription,This is Second DecriptionThis is Second Decription,This is Second Decription,This is Second Decription\";}i:1;a:3:{s:17:\"testimonial-image\";s:2:\"56\";s:17:\"testimonial-title\";s:19:\"This is First Title\";s:23:\"testimonial-description\";s:149:\"This is First Decription,This is First Decription,This is First Decription,This is First Decription,This is First Decription,This is First Decription\";}i:2;a:3:{s:17:\"testimonial-image\";s:2:\"50\";s:17:\"testimonial-title\";s:19:\"This is Third Title\";s:23:\"testimonial-description\";s:149:\"This is Third Decription,This is Third Decription,This is Third Decription,This is Third Decription,This is Third Decription,This is Third Decription\";}}'),
(853, 106, 'testimonial-image', '49'),
(854, 106, 'testimonial-title', 'This is Second Title'),
(855, 106, 'testimonial-description', 'This is Second Decription,This is Second Decription,This is Second DecriptionThis is Second Decription,This is Second Decription,This is Second Decription'),
(856, 106, 'testimonial-image_1', '56'),
(857, 106, 'testimonial-title_1', 'This is First Title'),
(858, 106, 'testimonial-description_1', 'This is First Decription,This is First Decription,This is First Decription,This is First Decription,This is First Decription,This is First Decription'),
(859, 106, 'testimonial-image_2', '50'),
(860, 106, 'testimonial-title_2', 'This is Third Title'),
(861, 106, 'testimonial-description_2', 'This is Third Decription,This is Third Decription,This is Third Decription,This is Third Decription,This is Third Decription,This is Third Decription'),
(862, 133, 'trp_tag_sec_select_meta', ''),
(863, 133, '_edit_lock', '1571130944:1'),
(864, 134, 'trp_tag_sec_select_meta', ''),
(865, 134, '_edit_lock', '1571134338:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-07-23 11:58:38', '2019-07-23 11:58:38', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-07-23 11:58:38', '2019-07-23 11:58:38', '', 0, 'http://wp-learning.local.in/?p=1', 0, 'post', '', 1),
(2, 1, '2019-07-23 11:58:38', '2019-07-23 11:58:38', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp-learning.local.in/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-17 07:50:50', '2019-09-17 07:50:50', '', 0, 'http://wp-learning.local.in/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-07-23 11:58:38', '2019-07-23 11:58:38', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://wp-learning.local.in.gr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.j</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-23 11:39:56', '2019-08-23 11:39:56', '', 0, 'http://wp-learning.local.in/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-07-24 11:08:23', '2019-07-24 11:08:23', '', 'Custom Blogs', '', 'publish', 'closed', 'closed', '', 'custom-blogs', '', '', '2019-10-07 10:41:45', '2019-10-07 10:41:45', '', 0, 'http://wp-learning.local.in/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-07-24 11:08:23', '2019-07-24 11:08:23', '', 'Custom Blogs', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-24 11:08:23', '2019-07-24 11:08:23', '', 5, 'http://wp-learning.local.in/?p=6', 0, 'revision', '', 0),
(7, 1, '2019-07-24 11:09:09', '2019-07-24 11:09:09', '', 'Custom Blog Test - 1', '', 'publish', 'open', 'closed', '', 'custom-blog-test-1', '', '', '2019-09-30 05:41:00', '2019-09-30 05:41:00', '', 0, 'http://wp-learning.local.in/?post_type=blog&#038;p=7', 0, 'blog', '', 0),
(8, 1, '2019-07-24 11:09:31', '2019-07-24 11:09:31', '', 'Custom Blog Test - 2', '', 'publish', 'open', 'closed', '', 'custom-blog-test-2', '', '', '2019-07-30 10:03:06', '2019-07-30 10:03:06', '', 0, 'http://wp-learning.local.in/?post_type=blog&#038;p=8', 0, 'blog', '', 0),
(9, 1, '2019-07-24 11:09:42', '2019-07-24 11:09:42', '', 'Custom Blog Test - 3', '', 'publish', 'open', 'closed', '', 'custom-blog-test-3', '', '', '2019-08-02 10:15:11', '2019-08-02 10:15:11', '', 0, 'http://wp-learning.local.in/?post_type=blog&#038;p=9', 0, 'blog', '', 0),
(10, 1, '2019-07-24 11:10:31', '2019-07-24 11:10:31', '', 'Custom Blog Test - 4', '', 'publish', 'open', 'closed', '', 'custom-blog-test-4', '', '', '2019-07-30 12:59:59', '2019-07-30 12:59:59', '', 0, 'http://wp-learning.local.in/?post_type=blog&#038;p=10', 0, 'blog', '', 0),
(11, 1, '2019-07-25 09:49:34', '2019-07-25 09:49:34', '', 'Custom Taxonomy Listings', '', 'publish', 'closed', 'closed', '', 'custom-taxonomy-listings', '', '', '2019-09-23 09:31:27', '2019-09-23 09:31:27', '', 0, 'http://wp-learning.local.in/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-07-25 09:49:34', '2019-07-25 09:49:34', '', 'Custom Taxonomy Listings', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-07-25 09:49:34', '2019-07-25 09:49:34', '', 11, 'http://wp-learning.local.in/11-revision-v1', 0, 'revision', '', 0),
(29, 1, '2019-08-07 09:33:49', '2019-08-07 09:33:49', '', 'Custom Blog Test – 5', '', 'publish', 'open', 'closed', '', 'custom-blog-test-5', '', '', '2019-08-07 09:33:49', '2019-08-07 09:33:49', '', 0, 'http://wp-learning.local.in/?post_type=blog&#038;p=29', 0, 'blog', '', 0),
(36, 1, '2019-08-07 09:39:22', '2019-08-07 09:39:22', '', 'Custom Blog Test – 6', '', 'publish', 'open', 'closed', '', 'custom-blog-test-6', '', '', '2019-09-23 09:29:38', '2019-09-23 09:29:38', '', 0, 'http://wp-learning.local.in/?post_type=blog&#038;p=36', 0, 'blog', '', 0),
(38, 1, '2019-08-08 12:33:34', '2019-08-08 12:33:34', '', 'Custom Blog Test – 7', '', 'publish', 'open', 'closed', '', 'custom-blog-test-6-2', '', '', '2019-09-23 12:07:22', '2019-09-23 12:07:22', '', 0, 'http://wp-learning.local.in/?post_type=blog&#038;p=38', 0, 'blog', '', 0),
(39, 1, '2019-08-09 12:16:26', '2019-08-09 12:16:26', '<!-- wp:shortcode -->\r\n<p>[image_search]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Image Search with ShortCode', '', 'publish', 'closed', 'closed', '', 'image-search-with-shortcode', '', '', '2019-09-27 09:32:06', '2019-09-27 09:32:06', '', 0, 'http://wp-learning.local.in/?page_id=39', 0, 'page', '', 0),
(40, 1, '2019-08-09 12:16:23', '2019-08-09 12:16:23', '<!-- wp:shortcode -->\n[image_search]\n<!-- /wp:shortcode -->', 'Image Search with ShortCode', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-08-09 12:16:23', '2019-08-09 12:16:23', '', 39, 'http://wp-learning.local.in/39-revision-v1', 0, 'revision', '', 0),
(41, 1, '2019-08-09 12:17:27', '2019-08-09 12:17:27', '<!-- wp:shortcode -->\n[/image_search]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Image Search with ShortCode', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-08-09 12:17:27', '2019-08-09 12:17:27', '', 39, 'http://wp-learning.local.in/39-revision-v1', 0, 'revision', '', 0),
(42, 1, '2019-08-09 12:19:04', '2019-08-09 12:19:04', '<!-- wp:shortcode -->\n[image_search]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Image Search with ShortCode', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-08-09 12:19:04', '2019-08-09 12:19:04', '', 39, 'http://wp-learning.local.in/39-revision-v1', 0, 'revision', '', 0),
(44, 1, '2019-08-13 09:34:48', '2019-08-13 09:34:48', '', 'Jay', '', 'inherit', 'open', 'closed', '', 'jay', '', '', '2019-08-13 09:34:48', '2019-08-13 09:34:48', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Jay.jpeg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-08-13 09:44:31', '2019-08-13 09:44:31', '', 'team', '', 'inherit', 'open', 'closed', '', 'team', '', '', '2019-08-13 09:44:31', '2019-08-13 09:44:31', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/team.jpeg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-08-13 09:44:31', '2019-08-13 09:44:31', '', 'jay-monark', '', 'inherit', 'open', 'closed', '', 'jay-monark', '', '', '2019-08-13 09:44:31', '2019-08-13 09:44:31', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/jay-monark.jpeg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 'Dwight D. Viehland', '', 'inherit', 'open', 'closed', '', 'dwight-d-viehland', '', '', '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Dwight-D.-Viehland.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 'Carolina Tallon', '', 'inherit', 'open', 'closed', '', 'carolina-tallon', '', '', '2019-10-10 12:59:38', '2019-10-10 12:59:38', '', 106, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Carolina-Tallon.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 'Celine Hin', '', 'inherit', 'open', 'closed', '', 'celine-hin', '', '', '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Celine-Hin.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 'Miqin Zhang', '', 'inherit', 'open', 'closed', '', 'miqin-zhang', '', '', '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Miqin-Zhang.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 'Peter J. Pauzauskie', '', 'inherit', 'open', 'closed', '', 'peter-j-pauzauskie', '', '', '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Peter-J.-Pauzauskie.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 'Lucien Brush', '', 'inherit', 'open', 'closed', '', 'lucien-brush', '', '', '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Lucien-Brush.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-08-13 09:46:52', '2019-08-13 09:46:52', '', 'Chelsey Hargather', '', 'inherit', 'open', 'closed', '', 'chelsey-hargather', '', '', '2019-10-10 12:59:38', '2019-10-10 12:59:38', '', 106, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Chelsey-Hargather.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-08-13 09:47:08', '2019-08-13 09:47:08', '', 'Hyeoneui Kim', '', 'inherit', 'open', 'closed', '', 'hyeoneui-kim', '', '', '2019-10-10 12:59:38', '2019-10-10 12:59:38', '', 106, 'http://wp-learning.local.in/wp-content/uploads/2019/08/Hyeoneui-Kim.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-08-13 11:10:29', '2019-08-13 11:10:29', '', 'image4', '', 'inherit', 'open', 'closed', '', 'image4', '', '', '2019-08-13 11:10:29', '2019-08-13 11:10:29', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/image4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-08-13 11:10:30', '2019-08-13 11:10:30', '', 'image3', '', 'inherit', 'open', 'closed', '', 'image3', '', '', '2019-10-14 11:58:43', '2019-10-14 11:58:43', '', 106, 'http://wp-learning.local.in/wp-content/uploads/2019/08/image3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-08-13 11:10:30', '2019-08-13 11:10:30', '', 'image2', '', 'inherit', 'open', 'closed', '', 'image2', '', '', '2019-08-13 11:10:30', '2019-08-13 11:10:30', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/image2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-08-13 11:10:30', '2019-08-13 11:10:30', '', 'image1', '', 'inherit', 'open', 'closed', '', 'image1', '', '', '2019-08-13 11:10:30', '2019-08-13 11:10:30', '', 0, 'http://wp-learning.local.in/wp-content/uploads/2019/08/image1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-09-17 07:50:48', '2019-09-17 07:50:48', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp-learning.local.in/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-17 07:50:48', '2019-09-17 07:50:48', '', 2, 'http://wp-learning.local.in/2-revision-v1', 0, 'revision', '', 0),
(73, 1, '2019-09-20 07:31:09', '2019-09-20 07:31:09', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"trp_related_post_widget-2\",\n            \"search-2\",\n            \"jy_first_widget-3\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-20 07:31:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2cb618b3-0758-4d5a-a483-d455065d2804', '', '', '2019-09-20 07:31:09', '2019-09-20 07:31:09', '', 0, 'http://wp-learning.local.in/2cb618b3-0758-4d5a-a483-d455065d2804', 0, 'customize_changeset', '', 0),
(74, 1, '2019-09-20 07:31:29', '2019-09-20 07:31:29', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"trp_related_post_widget-2\",\n            \"jy_first_widget-3\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-20 07:31:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4f1c27f-d1b0-4335-ad50-17ecb903044c', '', '', '2019-09-20 07:31:29', '2019-09-20 07:31:29', '', 0, 'http://wp-learning.local.in/e4f1c27f-d1b0-4335-ad50-17ecb903044c', 0, 'customize_changeset', '', 0),
(75, 1, '2019-09-20 07:31:46', '2019-09-20 07:31:46', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"trp_related_post_widget-2\",\n            \"recent-posts-2\",\n            \"jy_first_widget-3\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-20 07:31:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a3fc5ec1-42dc-471a-a615-47c24252b2ca', '', '', '2019-09-20 07:31:46', '2019-09-20 07:31:46', '', 0, 'http://wp-learning.local.in/a3fc5ec1-42dc-471a-a615-47c24252b2ca', 0, 'customize_changeset', '', 0),
(76, 1, '2019-09-20 07:32:14', '2019-09-20 07:32:14', '{\n    \"widget_jy_first_widget[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjU6InRpdGxlIjtzOjEwOiJOZXcgdGl0bGVjIjtzOjg6InRhZ19saW5lIjtzOjE1OiJOZXcgVGFnIExpbmV4eHgiO3M6OToicG9zdF90eXBlIjtzOjQ6ImJsb2ciO3M6NToibGltaXQiO3M6MToiMiI7czoyMToiZGlzcGxheV93aWRnZXRfb3B0aW9uIjtzOjM6InllcyI7fQ==\",\n            \"title\": \"New titlec\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2301b7e77f597f4afe99376431cd09cc\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-20 07:32:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ccb6829e-1773-4d8e-a889-948e8b1c9502', '', '', '2019-09-20 07:32:14', '2019-09-20 07:32:14', '', 0, 'http://wp-learning.local.in/ccb6829e-1773-4d8e-a889-948e8b1c9502', 0, 'customize_changeset', '', 0),
(78, 1, '2019-09-23 09:36:51', '0000-00-00 00:00:00', '', 'Hello Post', '', 'draft', 'open', 'open', '', '', '', '', '2019-09-23 09:36:51', '2019-09-23 09:36:51', '', 0, 'http://wp-learning.local.in/?p=78', 0, 'post', '', 0),
(80, 1, '2019-09-23 10:49:14', '2019-09-23 10:49:14', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"jy_first_widget-3\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-23 10:49:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '52a07e68-2464-42f5-90e3-baddcac6e4a2', '', '', '2019-09-23 10:49:14', '2019-09-23 10:49:14', '', 0, 'http://wp-learning.local.in/52a07e68-2464-42f5-90e3-baddcac6e4a2', 0, 'customize_changeset', '', 0),
(81, 1, '2019-09-27 09:32:06', '2019-09-27 09:32:06', '<!-- wp:shortcode -->\r\n<p>[image_search]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Image Search with ShortCode', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-09-27 09:32:06', '2019-09-27 09:32:06', '', 39, 'http://wp-learning.local.in/39-revision-v1', 0, 'revision', '', 0),
(83, 1, '2019-10-07 10:40:11', '2019-10-07 10:40:11', '<!-- wp:html -->\n<div class=\'printchatbox\' id=\'printchatbox\'></div>\n\n<input type=\'text\' name=\'fname\' class=\'chatinput\' id=\'chatinput\'>\n<!-- /wp:html -->', 'Custom Blogs', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-10-07 10:40:11', '2019-10-07 10:40:11', '', 5, 'http://wp-learning.local.in/5-revision-v1', 0, 'revision', '', 0),
(85, 1, '2019-10-07 10:41:45', '2019-10-07 10:41:45', '', 'Custom Blogs', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-10-07 10:41:45', '2019-10-07 10:41:45', '', 5, 'http://wp-learning.local.in/5-revision-v1', 0, 'revision', '', 0),
(86, 1, '2019-10-07 10:43:33', '2019-10-07 10:43:33', '', 'Custom Taxonomy Listings', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2019-10-07 10:43:33', '2019-10-07 10:43:33', '', 11, 'http://wp-learning.local.in/11-autosave-v1', 0, 'revision', '', 0),
(87, 1, '2019-10-07 11:48:52', '2019-10-07 11:48:52', '', 'JS Learning', '', 'publish', 'closed', 'closed', '', 'js-learning', '', '', '2019-10-07 11:48:52', '2019-10-07 11:48:52', '', 0, 'http://wp-learning.local.in/?page_id=87', 0, 'page', '', 0),
(88, 1, '2019-10-07 11:48:52', '2019-10-07 11:48:52', '', 'JS Learning', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-10-07 11:48:52', '2019-10-07 11:48:52', '', 87, 'http://wp-learning.local.in/87-revision-v1', 0, 'revision', '', 0),
(89, 1, '2019-10-08 12:58:42', '2019-10-08 12:58:42', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-08 12:58:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c6fee9ad-cd5f-4b3b-8370-ac818df9e66e', '', '', '2019-10-08 12:58:42', '2019-10-08 12:58:42', '', 0, 'http://wp-learning.local.in/c6fee9ad-cd5f-4b3b-8370-ac818df9e66e', 0, 'customize_changeset', '', 0),
(91, 1, '2019-10-09 10:47:28', '2019-10-09 10:47:28', '{\n    \"blogdescription\": {\n        \"value\": \"Arcana: A Jay\'s First Theme Integration\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-09 10:47:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3ba7c1a-9b60-488f-9925-315e4736e231', '', '', '2019-10-09 10:47:28', '2019-10-09 10:47:28', '', 0, 'http://wp-learning.local.in/d3ba7c1a-9b60-488f-9925-315e4736e231', 0, 'customize_changeset', '', 0),
(92, 1, '2019-10-09 12:02:31', '2019-10-09 12:02:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-09 13:26:15', '2019-10-09 13:26:15', '', 0, 'http://wp-learning.local.in/?p=92', 1, 'nav_menu_item', '', 0),
(95, 1, '2019-10-09 13:12:24', '2019-10-09 13:12:24', '', 'Right Sidebar', '', 'publish', 'closed', 'closed', '', 'right-sidebar', '', '', '2019-10-09 13:26:15', '2019-10-09 13:26:15', '', 0, 'http://wp-learning.local.in/?p=95', 6, 'nav_menu_item', '', 0),
(96, 1, '2019-10-09 13:12:24', '2019-10-09 13:12:24', '', 'Two Sidebar', '', 'publish', 'closed', 'closed', '', 'two-sidebar', '', '', '2019-10-09 13:26:15', '2019-10-09 13:26:15', '', 0, 'http://wp-learning.local.in/?p=96', 7, 'nav_menu_item', '', 0),
(97, 1, '2019-10-09 13:12:24', '2019-10-09 13:12:24', '', 'No Sidebar', '', 'publish', 'closed', 'closed', '', 'no-sidebar', '', '', '2019-10-09 13:26:15', '2019-10-09 13:26:15', '', 0, 'http://wp-learning.local.in/?p=97', 8, 'nav_menu_item', '', 0),
(98, 1, '2019-10-09 13:25:26', '2019-10-09 13:25:26', '', 'Dropdown', '', 'publish', 'closed', 'closed', '', 'dropdown-2', '', '', '2019-10-09 13:26:15', '2019-10-09 13:26:15', '', 0, 'http://wp-learning.local.in/?p=98', 2, 'nav_menu_item', '', 0),
(99, 1, '2019-10-09 13:25:27', '2019-10-09 13:25:27', '', 'Left Sidebar', '', 'publish', 'closed', 'closed', '', 'left-sidebar-2', '', '', '2019-10-09 13:26:15', '2019-10-09 13:26:15', '', 0, 'http://wp-learning.local.in/?p=99', 5, 'nav_menu_item', '', 0),
(100, 1, '2019-10-09 13:26:15', '2019-10-09 13:26:15', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2019-10-09 13:26:15', '2019-10-09 13:26:15', '', 0, 'http://wp-learning.local.in/?p=100', 3, 'nav_menu_item', '', 0),
(101, 1, '2019-10-09 13:26:15', '2019-10-09 13:26:15', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2019-10-09 13:26:15', '2019-10-09 13:26:15', '', 0, 'http://wp-learning.local.in/?p=101', 4, 'nav_menu_item', '', 0),
(102, 1, '2019-10-10 12:08:23', '2019-10-10 12:08:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Important', 'important', 'publish', 'closed', 'closed', '', 'group_5d9f1dc6383c8', '', '', '2019-10-10 12:27:35', '2019-10-10 12:27:35', '', 0, 'http://wp-learning.local.in/?post_type=acf-field-group&#038;p=102', 0, 'acf-field-group', '', 0),
(103, 1, '2019-10-10 12:08:23', '2019-10-10 12:08:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Please Add This is Important Data\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'This Is Important Title', 'this_is_important_title', 'publish', 'closed', 'closed', '', 'field_5d9f1e337eaaf', '', '', '2019-10-10 12:27:35', '2019-10-10 12:27:35', '', 102, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=103', 0, 'acf-field', '', 0),
(104, 1, '2019-10-10 12:08:23', '2019-10-10 12:08:23', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'This Is Important Discription', 'this_is_important_discription', 'publish', 'closed', 'closed', '', 'field_5d9f1eb17eab0', '', '', '2019-10-10 12:08:23', '2019-10-10 12:08:23', '', 102, 'http://wp-learning.local.in/?post_type=acf-field&p=104', 1, 'acf-field', '', 0),
(105, 1, '2019-10-10 12:08:23', '2019-10-10 12:08:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:37:\"Please Select This Is Important Image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'This Is Important Image', 'this_is_important_image', 'publish', 'closed', 'closed', '', 'field_5d9f1eda7eab1', '', '', '2019-10-10 12:08:23', '2019-10-10 12:08:23', '', 102, 'http://wp-learning.local.in/?post_type=acf-field&p=105', 2, 'acf-field', '', 0),
(106, 1, '2019-10-10 12:09:17', '2019-10-10 12:09:17', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2019-10-14 12:47:47', '2019-10-14 12:47:47', '', 0, 'http://wp-learning.local.in/?page_id=106', 0, 'page', '', 0),
(107, 1, '2019-10-10 12:09:17', '2019-10-10 12:09:17', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-10 12:09:17', '2019-10-10 12:09:17', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(108, 1, '2019-10-10 12:25:38', '2019-10-10 12:25:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Also Important', 'also-important', 'publish', 'closed', 'closed', '', 'group_5d9f23422d929', '', '', '2019-10-10 13:34:21', '2019-10-10 13:34:21', '', 0, 'http://wp-learning.local.in/?p=108', 0, 'acf-field-group', '', 0),
(109, 1, '2019-10-10 12:25:38', '2019-10-10 12:25:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Please Add This is Important Data\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Also Important Title', 'also_important_title', 'publish', 'closed', 'closed', '', 'field_5d9f234231e0a', '', '', '2019-10-10 12:27:57', '2019-10-10 12:27:57', '', 108, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=109', 0, 'acf-field', '', 0),
(110, 1, '2019-10-10 12:25:38', '2019-10-10 12:25:38', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Also Important Discription', 'also_important_discription', 'publish', 'closed', 'closed', '', 'field_5d9f234232160', '', '', '2019-10-10 12:28:48', '2019-10-10 12:28:48', '', 108, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=110', 1, 'acf-field', '', 0),
(111, 1, '2019-10-10 12:25:38', '2019-10-10 12:25:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:37:\"Please Select This Is Important Image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Also Important Image', 'also_important_image', 'publish', 'closed', 'closed', '', 'field_5d9f234232476', '', '', '2019-10-10 13:34:21', '2019-10-10 13:34:21', '', 108, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=111', 2, 'acf-field', '', 0),
(112, 1, '2019-10-10 12:25:39', '2019-10-10 12:25:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Probably Important', 'probably-important', 'publish', 'closed', 'closed', '', 'group_5d9f2343cbfc5', '', '', '2019-10-10 12:58:21', '2019-10-10 12:58:21', '', 0, 'http://wp-learning.local.in/?p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2019-10-10 12:25:39', '2019-10-10 12:25:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Please Add This is Important Data\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Probably Important Title', 'probably_important_title', 'publish', 'closed', 'closed', '', 'field_5d9f2343d53e9', '', '', '2019-10-10 12:29:58', '2019-10-10 12:29:58', '', 112, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=113', 0, 'acf-field', '', 0),
(114, 1, '2019-10-10 12:25:39', '2019-10-10 12:25:39', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Probably Important Discription', 'probably_important_discription', 'publish', 'closed', 'closed', '', 'field_5d9f2343d548b', '', '', '2019-10-10 12:29:58', '2019-10-10 12:29:58', '', 112, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=114', 1, 'acf-field', '', 0),
(115, 1, '2019-10-10 12:25:39', '2019-10-10 12:25:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:37:\"Please Select This Is Important Image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Probably Important Image', 'probably_important_image', 'publish', 'closed', 'closed', '', 'field_5d9f2343d54ce', '', '', '2019-10-10 12:29:58', '2019-10-10 12:29:58', '', 112, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=115', 2, 'acf-field', '', 0),
(116, 1, '2019-10-10 12:59:38', '2019-10-10 12:59:38', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-10 12:59:38', '2019-10-10 12:59:38', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(117, 1, '2019-10-10 13:35:39', '2019-10-10 13:35:39', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-10 13:35:39', '2019-10-10 13:35:39', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(118, 1, '2019-10-14 11:56:24', '2019-10-14 11:56:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"106\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header Image HomePage', 'header-image-homepage', 'publish', 'closed', 'closed', '', 'group_5da462276349d', '', '', '2019-10-14 12:12:37', '2019-10-14 12:12:37', '', 0, 'http://wp-learning.local.in/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(120, 1, '2019-10-14 11:58:43', '2019-10-14 11:58:43', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-14 11:58:43', '2019-10-14 11:58:43', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(121, 1, '2019-10-14 12:06:25', '2019-10-14 12:06:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Header Tag Line', 'header_tag_line', 'publish', 'closed', 'closed', '', 'field_5da463e5eb40c', '', '', '2019-10-14 12:12:37', '2019-10-14 12:12:37', '', 118, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=121', 0, 'acf-field', '', 0),
(122, 1, '2019-10-14 12:06:25', '2019-10-14 12:06:25', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Header Button Link', 'header_button_link', 'publish', 'closed', 'closed', '', 'field_5da46484eb40d', '', '', '2019-10-14 12:12:37', '2019-10-14 12:12:37', '', 118, 'http://wp-learning.local.in/?post_type=acf-field&#038;p=122', 1, 'acf-field', '', 0),
(123, 1, '2019-10-14 12:07:02', '2019-10-14 12:07:02', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-14 12:07:02', '2019-10-14 12:07:02', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(124, 1, '2019-10-14 12:07:07', '2019-10-14 12:07:07', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-14 12:07:07', '2019-10-14 12:07:07', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(125, 1, '2019-10-14 12:08:26', '2019-10-14 12:08:26', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-14 12:08:26', '2019-10-14 12:08:26', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(126, 1, '2019-10-14 12:08:29', '2019-10-14 12:08:29', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-14 12:08:29', '2019-10-14 12:08:29', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(128, 1, '2019-10-14 12:12:00', '2019-10-14 12:12:00', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-14 12:12:00', '2019-10-14 12:12:00', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(129, 1, '2019-10-14 12:12:18', '2019-10-14 12:12:18', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-14 12:12:18', '2019-10-14 12:12:18', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(130, 1, '2019-10-14 12:12:30', '2019-10-14 12:12:30', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-10-14 12:12:30', '2019-10-14 12:12:30', '', 106, 'http://wp-learning.local.in/106-revision-v1', 0, 'revision', '', 0),
(131, 1, '2019-10-14 12:22:23', '2019-10-14 12:22:23', '', 'Header Group', '', 'publish', 'closed', 'closed', '', '131', '', '', '2019-10-14 12:28:54', '2019-10-14 12:28:54', '', 0, 'http://wp-learning.local.in/?post_type=wck-meta-box&#038;p=131', 0, 'wck-meta-box', '', 0),
(132, 1, '2019-10-14 12:36:13', '2019-10-14 12:36:13', '', 'Repeater Testimonials Section', '', 'publish', 'closed', 'closed', '', 'repeater-testimonials-section', '', '', '2019-10-14 13:10:35', '2019-10-14 13:10:35', '', 0, 'http://wp-learning.local.in/?post_type=wck-meta-box&#038;p=132', 0, 'wck-meta-box', '', 0),
(133, 1, '2019-10-15 09:18:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-15 09:18:05', '0000-00-00 00:00:00', '', 0, 'http://wp-learning.local.in/?post_type=things&p=133', 0, 'things', '', 0),
(134, 1, '2019-10-15 09:18:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-15 09:18:09', '0000-00-00 00:00:00', '', 0, 'http://wp-learning.local.in/?post_type=things&p=134', 0, 'things', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Type Test-1', 'type-test-1', 0),
(3, 'Type Test-2', 'type-test-2', 0),
(4, 'Type Test-3', 'type-test-3', 0),
(5, 'Type Test-4', 'type-test-4', 0),
(6, 'Type Test-5', 'type-test-5', 0),
(7, 'Type Test-6', 'type-test-6', 0),
(8, 'Type Test-7', 'type-test-7', 0),
(9, 'Type Test-8', 'type-test-8', 0),
(10, 'Type Test-9', 'type-test-9', 0),
(11, 'Type Test-10', 'type-test-10', 0),
(12, 'Header Menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(7, 10, 0),
(8, 3, 0),
(9, 4, 0),
(10, 5, 0),
(10, 10, 0),
(78, 1, 0),
(92, 12, 0),
(95, 12, 0),
(96, 12, 0),
(97, 12, 0),
(98, 12, 0),
(99, 12, 0),
(100, 12, 0),
(101, 12, 0),
(108, 1, 0),
(112, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'blog-type', '', 0, 1),
(3, 3, 'blog-type', '', 0, 1),
(4, 4, 'blog-type', '', 0, 1),
(5, 5, 'blog-type', '', 0, 1),
(6, 6, 'blog-type', '', 0, 0),
(7, 7, 'blog-type', '', 0, 0),
(8, 8, 'blog-type', '', 0, 0),
(9, 9, 'blog-type', '', 0, 0),
(10, 10, 'blog-type', '', 0, 2),
(11, 11, 'blog-type', '', 0, 0),
(12, 12, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_trp_category`
--

CREATE TABLE `wp_trp_category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_trp_category`
--

INSERT INTO `wp_trp_category` (`id`, `category`) VALUES
(1, 'Category 1'),
(2, 'Category 2'),
(3, 'Category 3'),
(4, 'Category 4'),
(5, 'Category 5'),
(6, 'Category 6'),
(7, 'Category 7'),
(8, 'Category 8'),
(9, 'Category 9');

-- --------------------------------------------------------

--
-- Table structure for table `wp_trp_tag`
--

CREATE TABLE `wp_trp_tag` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_trp_tag`
--

INSERT INTO `wp_trp_tag` (`id`, `tag_name`, `cat_id`) VALUES
(1, 'Tag 1', 1),
(2, 'Tag 2', 2),
(3, 'Tag 3', 3),
(4, 'Tag 4', 4),
(5, 'Tag 5', 5),
(6, 'Tag 6', 6),
(7, 'Tag 7', 7),
(8, 'Tag 8', 8),
(9, 'Tag 9', 9),
(11, 'Tag 11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(14, 1, 'dismissed_wp_pointers', 'wpmudcs1'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"19ef1c166c0cfc52d2fd93afd81d1d04b951f57484d1c4b1ccc72ccfcb4b0d67\";a:4:{s:10:\"expiration\";i:1571821543;s:2:\"ip\";s:12:\"192.168.50.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570611943;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '90'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"192.168.50.0\";}'),
(19, 1, 'closedpostboxes_blog', 'a:1:{i:0;s:25:\"display-blog-visit-box-id\";}'),
(20, 1, 'metaboxhidden_blog', 'a:0:{}'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(23, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:40:\"count_dashboard_widget,dashboard_primary\";s:7:\"column3\";s:21:\"dashboard_quick_press\";s:7:\"column4\";s:0:\"\";}'),
(24, 1, 'closedpostboxes_page', 'a:4:{i:0;s:12:\"header-group\";i:1;s:10:\"pw-widgets\";i:2;s:20:\"trp_page_tags-box-id\";i:3;s:17:\"customsidebars-mb\";}'),
(25, 1, 'metaboxhidden_page', 'a:0:{}'),
(26, 1, 'wp_user-settings', 'widgets_access=off&libraryContent=browse'),
(27, 1, 'wp_user-settings-time', '1569578506'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:0:{}'),
(30, 1, 'enable_custom_fields', ''),
(31, 1, 'wp_custom-sidebars-editor-advance', 'a:1:{s:4:\"cs-1\";b:1;}'),
(32, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(33, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(34, 1, 'nav_menu_recently_edited', '12'),
(35, 1, 'meta-box-order_page', 'a:4:{s:8:\"advanced\";s:10:\"pw-widgets\";s:4:\"side\";s:38:\"trp_page_tags-box-id,customsidebars-mb\";s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:0:\"\";}');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJIJ7yc1OOTPQLnnVxtMxfpGKyrF4S1', 'admin', 'admin@local.test', '', '2019-07-23 11:58:38', '', 0, 'admin');

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
-- Indexes for table `wp_trp_category`
--
ALTER TABLE `wp_trp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_trp_tag`
--
ALTER TABLE `wp_trp_tag`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1479;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_trp_category`
--
ALTER TABLE `wp_trp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_trp_tag`
--
ALTER TABLE `wp_trp_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
