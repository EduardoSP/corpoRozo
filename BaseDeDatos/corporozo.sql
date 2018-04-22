-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2018 a las 03:19:02
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `corporozo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
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
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-21 03:11:21', '2018-04-21 03:11:21', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/corpoRozo', 'yes'),
(2, 'home', 'http://localhost/corpoRozo', 'yes'),
(3, 'blogname', 'corporozo', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'soporte@zfpsa.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:61:\"D:\\xampp\\htdocs\\corpoRozo/wp-content/themes/presto/purple.css\";i:1;s:60:\"D:\\xampp\\htdocs\\corpoRozo/wp-content/themes/presto/style.css\";i:2;s:60:\"D:\\xampp\\htdocs\\corpoRozo/wp-content/themes/enigma/style.css\";i:4;s:61:\"D:\\xampp\\htdocs\\corpoRozo/wp-content/themes/presto/header.php\";i:5;s:69:\"D:\\xampp\\htdocs\\corpoRozo/wp-content/themes/enigma/home-portfolio.php\";}', 'no'),
(40, 'template', 'enigma', 'yes'),
(41, 'stylesheet', 'presto', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_CO', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1524366684;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524366736;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524367070;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1524282712;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(121, '_site_transient_timeout_browser_f486628b8b3cd381d361bdc25237d08d', '1524885108', 'no'),
(122, '_site_transient_browser_f486628b8b3cd381d361bdc25237d08d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1524325604;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(135, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1524359018;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(140, '_transient_timeout_plugin_slugs', '1524445443', 'no'),
(141, '_transient_plugin_slugs', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}', 'no'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1524354154;s:7:\"checked\";a:5:{s:6:\"enigma\";s:5:\"4.1.5\";s:6:\"presto\";s:3:\"0.3\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(159, 'current_theme', 'Presto', 'yes'),
(160, 'theme_mods_presto', 'a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:5:\"blank\";s:16:\"background_color\";s:6:\"1d7bba\";s:12:\"header_image\";s:13:\"remove-header\";s:11:\"custom_logo\";i:93;s:14:\"service_1_text\";s:182:\"<p>Expedición de certificado de donación por los aportes recibidos, los cuales podrán ser deducidos según articulo 125 del Estatuto Tributario en algunos casos hasta el 100%.</p>\";s:14:\"service_2_text\";s:134:\"<p>En alianza con el SENA y Comfenalco Valle, gestionamos la capacitación al personal para que tenga un mejor desempeño laboral.</p>\";s:14:\"service_3_text\";s:179:\"<p>Entrega de informes del trabajo social realizado a cada una de las empresas asociadas, para que a su vez estas lo  presenten a las diferentes entidades que  lo requieran.</p>\";s:9:\"scroll_up\";b:1;s:6:\"layout\";i:1;s:25:\"enigma_options_search_box\";s:1:\"1\";}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(162, 'enigma_options', 'a:36:{s:8:\"phone_no\";s:10:\"3182702148\";s:13:\"linkedin_link\";s:0:\"\";s:5:\"gplus\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"vk_link\";s:0:\"\";s:7:\"qq_link\";s:0:\"\";s:13:\"whatsapp_link\";s:0:\"\";s:8:\"email_id\";s:21:\"corporozo@hotmail.com\";s:30:\"header_social_media_in_enabled\";b:1;s:34:\"footer_section_social_media_enbled\";b:1;s:20:\"home_service_heading\";s:29:\"Beneficios de la Corporación\";s:15:\"service_1_icons\";s:16:\"fa-balance-scale\";s:15:\"service_1_title\";s:11:\"Tributarios\";s:15:\"service_2_title\";s:13:\"Capacitación\";s:15:\"service_2_icons\";s:7:\"fa-book\";s:15:\"service_3_title\";s:22:\"Responsabilidad Social\";s:15:\"service_3_icons\";s:8:\"fa-users\";s:14:\"service_3_link\";s:0:\"\";s:13:\"services_home\";b:1;s:12:\"twitter_link\";s:20:\"https://twitter.com/\";s:7:\"fb_link\";s:24:\"https://www.facebook.com\";s:12:\"youtube_link\";s:24:\"https://www.youtube.com/\";s:12:\"port_heading\";s:18:\"Nuestros Asociados\";s:10:\"port_1_img\";s:0:\"\";s:10:\"port_2_img\";s:67:\"http://localhost/corpoRozo/wp-content/uploads/2018/04/asociados.png\";s:10:\"port_3_img\";s:67:\"http://localhost/corpoRozo/wp-content/uploads/2018/04/asociados.png\";s:10:\"port_4_img\";s:0:\"\";s:21:\"footer_customizations\";s:18:\" © 2018 CorpoRozo\";s:17:\"developed_by_text\";s:0:\"\";s:26:\"developed_by_weblizar_text\";s:0:\"\";s:17:\"developed_by_link\";s:0:\"\";s:9:\"blog_home\";b:0;s:12:\"port_2_title\";s:0:\"\";s:12:\"port_3_title\";s:0:\"\";s:11:\"port_1_link\";s:1:\"#\";s:7:\"fc_home\";s:0:\"\";}', 'yes'),
(233, '_transient_timeout_dash_v2_8ed47f02370e4304b3fb8352267b4572', '1524384762', 'no'),
(234, '_transient_dash_v2_8ed47f02370e4304b3fb8352267b4572', '<div class=\"rss-widget\"><p><strong>Error RSS:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10015 milliseconds</p></div><div class=\"rss-widget\"><p><strong>Error RSS:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div>', 'no'),
(255, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1524958893', 'no'),
(256, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(257, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1524397295', 'no'),
(258, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Optimiza y conoce tu WordPress al máximo\";s:3:\"url\";s:62:\"https://www.meetup.com/Cali-WordPress-Meetup/events/249885943/\";s:6:\"meetup\";s:21:\"Cali WordPress Meetup\";s:10:\"meetup_url\";s:45:\"https://www.meetup.com/Cali-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-04-28 09:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Cali, Colombia\";s:7:\"country\";s:2:\"co\";s:8:\"latitude\";d:3.368902;s:9:\"longitude\";d:-76.535675;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:47:\"Celebración del 15º aniversario de WordPress \";s:3:\"url\";s:62:\"https://www.meetup.com/Cali-WordPress-Meetup/events/249886187/\";s:6:\"meetup\";s:21:\"Cali WordPress Meetup\";s:10:\"meetup_url\";s:45:\"https://www.meetup.com/Cali-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-05-26 15:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Cali, Colombia\";s:7:\"country\";s:2:\"co\";s:8:\"latitude\";d:3.451647;s:9:\"longitude\";d:-76.531982;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Celebración de los 15 años de WordPress\";s:3:\"url\";s:56:\"https://www.meetup.com/WordPress-Tulua/events/249540121/\";s:6:\"meetup\";s:16:\"WordPress Tuluá\";s:10:\"meetup_url\";s:39:\"https://www.meetup.com/WordPress-Tulua/\";s:4:\"date\";s:19:\"2018-05-26 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:33:\"Tuluá, Valle del Cauca, Colombia\";s:7:\"country\";s:2:\"CO\";s:8:\"latitude\";d:4.0900001525879;s:9:\"longitude\";d:-76.209999084473;}}}}', 'no'),
(293, '_site_transient_timeout_theme_roots', '1524357792', 'no'),
(294, '_site_transient_theme_roots', 'a:5:{s:6:\"enigma\";s:7:\"/themes\";s:6:\"presto\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(319, 'category_children', 'a:0:{}', 'yes'),
(320, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1524369849', 'no'),
(321, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4453;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2738;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2553;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2422;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1868;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1645;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1637;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1452;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1387;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1386;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1383;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1310;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1282;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1198;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1097;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1058;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1021;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1005;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:882;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:874;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:826;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:801;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:800;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:705;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:690;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:683;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:680;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:672;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:654;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:654;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:641;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:633;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:621;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:610;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:604;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:601;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:593;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:588;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:585;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:562;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:545;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:535;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:531;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:520;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:520;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:511;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:492;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:491;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:489;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:483;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:479;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:476;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:469;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:465;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:456;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:454;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:437;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:432;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:425;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:423;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:419;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:415;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:413;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:412;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:405;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:404;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:390;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:389;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:384;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:364;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:361;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:355;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:355;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:347;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:346;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:344;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:343;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:340;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:338;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:337;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:337;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:333;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:330;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:329;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:320;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:312;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:304;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:303;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:302;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:296;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:294;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:292;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:292;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:289;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:289;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:289;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:284;}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1524280451:1'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1524280663'),
(5, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1524280575:1'),
(8, 9, '_menu_item_type', 'post_type'),
(9, 9, '_menu_item_menu_item_parent', '0'),
(10, 9, '_menu_item_object_id', '6'),
(11, 9, '_menu_item_object', 'page'),
(12, 9, '_menu_item_target', ''),
(13, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 9, '_menu_item_xfn', ''),
(15, 9, '_menu_item_url', ''),
(17, 11, '_menu_item_type', 'custom'),
(18, 11, '_menu_item_menu_item_parent', '0'),
(19, 11, '_menu_item_object_id', '11'),
(20, 11, '_menu_item_object', 'custom'),
(21, 11, '_menu_item_target', ''),
(22, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 11, '_menu_item_xfn', ''),
(24, 11, '_menu_item_url', 'http://localhost/corpoRozo'),
(25, 10, '_wp_trash_meta_status', 'publish'),
(26, 10, '_wp_trash_meta_time', '1524280919'),
(27, 12, '_edit_lock', '1524281185:1'),
(28, 12, '_wp_trash_meta_status', 'publish'),
(29, 12, '_wp_trash_meta_time', '1524281188'),
(30, 13, '_edit_lock', '1524283106:1'),
(31, 13, '_wp_trash_meta_status', 'publish'),
(32, 13, '_wp_trash_meta_time', '1524283118'),
(33, 14, '_wp_trash_meta_status', 'publish'),
(34, 14, '_wp_trash_meta_time', '1524283140'),
(35, 15, '_wp_attached_file', '2018/04/logo-e1524283641413.png'),
(36, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:222;s:4:\"file\";s:31:\"2018/04/logo-e1524283641413.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x267.png\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:16:\"logo-340x210.png\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:16:\"logo-719x350.png\";s:5:\"width\";i:719;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:16:\"logo-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 16, '_wp_attached_file', '2018/04/cropped-logo.png'),
(38, 16, '_wp_attachment_context', 'custom-header'),
(39, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:716;s:6:\"height\";i:636;s:4:\"file\";s:24:\"2018/04/cropped-logo.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x266.png\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:24:\"cropped-logo-340x210.png\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:24:\"cropped-logo-716x350.png\";s:5:\"width\";i:716;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:24:\"cropped-logo-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:15;}'),
(40, 16, '_wp_attachment_custom_header_last_used_presto', '1524283394'),
(41, 16, '_wp_attachment_is_custom_header', 'presto'),
(42, 17, '_edit_lock', '1524283569:1'),
(43, 18, '_wp_attached_file', '2018/04/cropped-logo-1.png'),
(44, 18, '_wp_attachment_context', 'custom-logo'),
(45, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:596;s:6:\"height\";i:599;s:4:\"file\";s:26:\"2018/04/cropped-logo-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-298x300.png\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-340x210.png\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-596x350.png\";s:5:\"width\";i:596;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 15, '_edit_lock', '1524283610:1'),
(47, 15, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:719;s:6:\"height\";i:639;s:4:\"file\";s:8:\"logo.png\";}s:18:\"full-1524283641413\";a:3:{s:5:\"width\";i:719;s:6:\"height\";i:639;s:4:\"file\";s:23:\"logo-e1524283554709.png\";}}'),
(48, 15, '_edit_last', '1'),
(49, 17, '_wp_trash_meta_status', 'publish'),
(50, 17, '_wp_trash_meta_time', '1524283580'),
(51, 19, '_wp_trash_meta_status', 'publish'),
(52, 19, '_wp_trash_meta_time', '1524283768'),
(53, 20, '_edit_lock', '1524284002:1'),
(54, 21, '_wp_attached_file', '2018/04/logo1.png'),
(55, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:241;s:6:\"height\";i:238;s:4:\"file\";s:17:\"2018/04/logo1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:17:\"logo1-241x210.png\";s:5:\"width\";i:241;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 22, '_wp_attached_file', '2018/04/cropped-logo1.png'),
(57, 22, '_wp_attachment_context', 'custom-logo'),
(58, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:238;s:6:\"height\";i:238;s:4:\"file\";s:25:\"2018/04/cropped-logo1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:25:\"cropped-logo1-238x210.png\";s:5:\"width\";i:238;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 23, '_wp_trash_meta_status', 'publish'),
(60, 23, '_wp_trash_meta_time', '1524284004'),
(61, 20, '_customize_restore_dismissed', '1'),
(62, 24, '_wp_trash_meta_status', 'publish'),
(63, 24, '_wp_trash_meta_time', '1524284067'),
(64, 25, '_wp_trash_meta_status', 'publish'),
(65, 25, '_wp_trash_meta_time', '1524284091'),
(66, 26, '_wp_trash_meta_status', 'publish'),
(67, 26, '_wp_trash_meta_time', '1524284116'),
(68, 27, '_wp_trash_meta_status', 'publish'),
(69, 27, '_wp_trash_meta_time', '1524284186'),
(70, 28, '_edit_lock', '1524284276:1'),
(71, 28, '_wp_trash_meta_status', 'publish'),
(72, 28, '_wp_trash_meta_time', '1524284303'),
(73, 29, '_wp_trash_meta_status', 'publish'),
(74, 29, '_wp_trash_meta_time', '1524284356'),
(75, 30, '_wp_trash_meta_status', 'publish'),
(76, 30, '_wp_trash_meta_time', '1524284374'),
(77, 31, '_edit_lock', '1524284437:1'),
(78, 31, '_wp_trash_meta_status', 'publish'),
(79, 31, '_wp_trash_meta_time', '1524284449'),
(80, 32, '_wp_trash_meta_status', 'publish'),
(81, 32, '_wp_trash_meta_time', '1524284490'),
(82, 33, '_wp_trash_meta_status', 'publish'),
(83, 33, '_wp_trash_meta_time', '1524284534'),
(84, 34, '_wp_trash_meta_status', 'publish'),
(85, 34, '_wp_trash_meta_time', '1524284565'),
(86, 35, '_wp_trash_meta_status', 'publish'),
(87, 35, '_wp_trash_meta_time', '1524284835'),
(88, 36, '_wp_trash_meta_status', 'publish'),
(89, 36, '_wp_trash_meta_time', '1524284886'),
(90, 37, '_wp_trash_meta_status', 'publish'),
(91, 37, '_wp_trash_meta_time', '1524284967'),
(92, 38, '_wp_trash_meta_status', 'publish'),
(93, 38, '_wp_trash_meta_time', '1524285006'),
(94, 39, '_wp_trash_meta_status', 'publish'),
(95, 39, '_wp_trash_meta_time', '1524285989'),
(96, 40, '_wp_trash_meta_status', 'publish'),
(97, 40, '_wp_trash_meta_time', '1524286038'),
(98, 41, '_edit_lock', '1524287393:1'),
(99, 41, '_wp_trash_meta_status', 'publish'),
(100, 41, '_wp_trash_meta_time', '1524287396'),
(101, 42, '_edit_lock', '1524287857:1'),
(102, 42, '_wp_trash_meta_status', 'publish'),
(103, 42, '_wp_trash_meta_time', '1524287858'),
(104, 43, '_wp_attached_file', '2018/04/IMG_20150305_182209.jpg'),
(105, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:4:\"file\";s:31:\"2018/04/IMG_20150305_182209.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20150305_182209-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_20150305_182209-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_20150305_182209-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG_20150305_182209-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:31:\"IMG_20150305_182209-340x210.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:31:\"IMG_20150305_182209-730x350.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:31:\"IMG_20150305_182209-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1425579729\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0/0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(106, 44, '_edit_lock', '1524292280:1'),
(107, 45, '_wp_attached_file', '2018/04/a1.jpg'),
(108, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:233;s:6:\"height\";i:216;s:4:\"file\";s:14:\"2018/04/a1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:14:\"a1-233x210.jpg\";s:5:\"width\";i:233;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 46, '_wp_attached_file', '2018/04/logo-bueno.png'),
(110, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:355;s:4:\"file\";s:22:\"2018/04/logo-bueno.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-bueno-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo-bueno-300x266.png\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:22:\"logo-bueno-340x210.png\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:22:\"logo-bueno-400x350.png\";s:5:\"width\";i:400;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:22:\"logo-bueno-400x350.png\";s:5:\"width\";i:400;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 44, '_customize_restore_dismissed', '1'),
(112, 46, '_wp_attachment_custom_header_last_used_presto', '1524329818'),
(113, 46, '_wp_attachment_is_custom_header', 'presto'),
(114, 47, '_wp_trash_meta_status', 'publish'),
(115, 47, '_wp_trash_meta_time', '1524329866'),
(116, 48, '_edit_last', '1'),
(117, 48, '_wp_page_template', 'default'),
(118, 48, '_edit_lock', '1524331219:1'),
(119, 50, '_edit_last', '1'),
(120, 50, '_wp_page_template', 'default'),
(121, 50, '_edit_lock', '1524331242:1'),
(122, 52, '_edit_last', '1'),
(123, 52, '_edit_lock', '1524331265:1'),
(124, 52, '_wp_page_template', 'default'),
(125, 54, '_edit_last', '1'),
(126, 54, '_wp_page_template', 'default'),
(127, 54, '_edit_lock', '1524331276:1'),
(128, 56, '_edit_last', '1'),
(129, 56, '_wp_page_template', 'default'),
(130, 56, '_edit_lock', '1524358875:1'),
(131, 58, '_edit_last', '1'),
(132, 58, '_edit_lock', '1524331320:1'),
(133, 58, '_wp_page_template', 'default'),
(134, 61, '_menu_item_type', 'post_type'),
(135, 61, '_menu_item_menu_item_parent', '0'),
(136, 61, '_menu_item_object_id', '58'),
(137, 61, '_menu_item_object', 'page'),
(138, 61, '_menu_item_target', ''),
(139, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 61, '_menu_item_xfn', ''),
(141, 61, '_menu_item_url', ''),
(143, 62, '_menu_item_type', 'post_type'),
(144, 62, '_menu_item_menu_item_parent', '0'),
(145, 62, '_menu_item_object_id', '56'),
(146, 62, '_menu_item_object', 'page'),
(147, 62, '_menu_item_target', ''),
(148, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 62, '_menu_item_xfn', ''),
(150, 62, '_menu_item_url', ''),
(152, 63, '_menu_item_type', 'post_type'),
(153, 63, '_menu_item_menu_item_parent', '0'),
(154, 63, '_menu_item_object_id', '54'),
(155, 63, '_menu_item_object', 'page'),
(156, 63, '_menu_item_target', ''),
(157, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 63, '_menu_item_xfn', ''),
(159, 63, '_menu_item_url', ''),
(161, 64, '_menu_item_type', 'post_type'),
(162, 64, '_menu_item_menu_item_parent', '0'),
(163, 64, '_menu_item_object_id', '52'),
(164, 64, '_menu_item_object', 'page'),
(165, 64, '_menu_item_target', ''),
(166, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 64, '_menu_item_xfn', ''),
(168, 64, '_menu_item_url', ''),
(170, 65, '_menu_item_type', 'post_type'),
(171, 65, '_menu_item_menu_item_parent', '0'),
(172, 65, '_menu_item_object_id', '50'),
(173, 65, '_menu_item_object', 'page'),
(174, 65, '_menu_item_target', ''),
(175, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 65, '_menu_item_xfn', ''),
(177, 65, '_menu_item_url', ''),
(179, 66, '_menu_item_type', 'post_type'),
(180, 66, '_menu_item_menu_item_parent', '0'),
(181, 66, '_menu_item_object_id', '48'),
(182, 66, '_menu_item_object', 'page'),
(183, 66, '_menu_item_target', ''),
(184, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 66, '_menu_item_xfn', ''),
(186, 66, '_menu_item_url', ''),
(188, 67, '_edit_last', '1'),
(189, 67, '_edit_lock', '1524332139:1'),
(190, 67, '_wp_page_template', 'default'),
(191, 69, '_edit_last', '1'),
(192, 69, '_wp_page_template', 'default'),
(193, 69, '_edit_lock', '1524332152:1'),
(194, 71, '_edit_last', '1'),
(195, 71, '_wp_page_template', 'default'),
(196, 71, '_edit_lock', '1524332162:1'),
(197, 73, '_edit_last', '1'),
(198, 73, '_edit_lock', '1524332189:1'),
(199, 73, '_wp_page_template', 'default'),
(200, 75, '_edit_last', '1'),
(201, 75, '_wp_page_template', 'default'),
(202, 75, '_edit_lock', '1524332219:1'),
(203, 77, '_edit_last', '1'),
(204, 77, '_wp_page_template', 'default'),
(205, 77, '_edit_lock', '1524332232:1'),
(206, 79, '_edit_last', '1'),
(207, 79, '_wp_page_template', 'default'),
(208, 79, '_edit_lock', '1524332245:1'),
(209, 81, '_edit_last', '1'),
(210, 81, '_wp_page_template', 'default'),
(211, 81, '_edit_lock', '1524332296:1'),
(212, 83, '_menu_item_type', 'post_type'),
(213, 83, '_menu_item_menu_item_parent', '66'),
(214, 83, '_menu_item_object_id', '81'),
(215, 83, '_menu_item_object', 'page'),
(216, 83, '_menu_item_target', ''),
(217, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 83, '_menu_item_xfn', ''),
(219, 83, '_menu_item_url', ''),
(221, 84, '_menu_item_type', 'post_type'),
(222, 84, '_menu_item_menu_item_parent', '66'),
(223, 84, '_menu_item_object_id', '79'),
(224, 84, '_menu_item_object', 'page'),
(225, 84, '_menu_item_target', ''),
(226, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(227, 84, '_menu_item_xfn', ''),
(228, 84, '_menu_item_url', ''),
(230, 85, '_menu_item_type', 'post_type'),
(231, 85, '_menu_item_menu_item_parent', '66'),
(232, 85, '_menu_item_object_id', '77'),
(233, 85, '_menu_item_object', 'page'),
(234, 85, '_menu_item_target', ''),
(235, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 85, '_menu_item_xfn', ''),
(237, 85, '_menu_item_url', ''),
(239, 86, '_menu_item_type', 'post_type'),
(240, 86, '_menu_item_menu_item_parent', '66'),
(241, 86, '_menu_item_object_id', '75'),
(242, 86, '_menu_item_object', 'page'),
(243, 86, '_menu_item_target', ''),
(244, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(245, 86, '_menu_item_xfn', ''),
(246, 86, '_menu_item_url', ''),
(248, 87, '_menu_item_type', 'post_type'),
(249, 87, '_menu_item_menu_item_parent', '9'),
(250, 87, '_menu_item_object_id', '73'),
(251, 87, '_menu_item_object', 'page'),
(252, 87, '_menu_item_target', ''),
(253, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 87, '_menu_item_xfn', ''),
(255, 87, '_menu_item_url', ''),
(257, 88, '_menu_item_type', 'post_type'),
(258, 88, '_menu_item_menu_item_parent', '9'),
(259, 88, '_menu_item_object_id', '71'),
(260, 88, '_menu_item_object', 'page'),
(261, 88, '_menu_item_target', ''),
(262, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(263, 88, '_menu_item_xfn', ''),
(264, 88, '_menu_item_url', ''),
(266, 89, '_menu_item_type', 'post_type'),
(267, 89, '_menu_item_menu_item_parent', '9'),
(268, 89, '_menu_item_object_id', '69'),
(269, 89, '_menu_item_object', 'page'),
(270, 89, '_menu_item_target', ''),
(271, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 89, '_menu_item_xfn', ''),
(273, 89, '_menu_item_url', ''),
(275, 90, '_menu_item_type', 'post_type'),
(276, 90, '_menu_item_menu_item_parent', '9'),
(277, 90, '_menu_item_object_id', '67'),
(278, 90, '_menu_item_object', 'page'),
(279, 90, '_menu_item_target', ''),
(280, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(281, 90, '_menu_item_xfn', ''),
(282, 90, '_menu_item_url', ''),
(284, 91, '_wp_attached_file', '2018/04/logo-bueno1.png'),
(285, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:89;s:4:\"file\";s:23:\"2018/04/logo-bueno1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 92, '_wp_trash_meta_status', 'publish'),
(287, 92, '_wp_trash_meta_time', '1524334038'),
(288, 93, '_wp_attached_file', '2018/04/logo-bueno11.png'),
(289, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:178;s:4:\"file\";s:24:\"2018/04/logo-bueno11.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-bueno11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 94, '_wp_trash_meta_status', 'publish'),
(291, 94, '_wp_trash_meta_time', '1524334215'),
(292, 95, '_edit_lock', '1524334617:1'),
(293, 95, '_wp_trash_meta_status', 'publish'),
(294, 95, '_wp_trash_meta_time', '1524334632'),
(295, 96, '_edit_lock', '1524337578:1'),
(296, 97, '_wp_attached_file', '2018/04/asociados.png'),
(297, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2827;s:6:\"height\";i:1529;s:4:\"file\";s:21:\"2018/04/asociados.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"asociados-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"asociados-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"asociados-768x415.png\";s:5:\"width\";i:768;s:6:\"height\";i:415;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"asociados-1024x554.png\";s:5:\"width\";i:1024;s:6:\"height\";i:554;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:21:\"asociados-340x210.png\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:21:\"asociados-730x350.png\";s:5:\"width\";i:730;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:21:\"asociados-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 98, '_wp_attached_file', '2018/04/asociadosssss.png'),
(299, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:780;s:6:\"height\";i:348;s:4:\"file\";s:25:\"2018/04/asociadosssss.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"asociadosssss-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"asociadosssss-300x134.png\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"asociadosssss-768x343.png\";s:5:\"width\";i:768;s:6:\"height\";i:343;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:25:\"asociadosssss-340x210.png\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:25:\"asociadosssss-730x348.png\";s:5:\"width\";i:730;s:6:\"height\";i:348;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:25:\"asociadosssss-570x348.png\";s:5:\"width\";i:570;s:6:\"height\";i:348;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 99, '_wp_attached_file', '2018/04/asociado111.png'),
(301, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:420;s:4:\"file\";s:23:\"2018/04/asociado111.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"asociado111-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"asociado111-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:23:\"asociado111-340x210.png\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:23:\"asociado111-630x350.png\";s:5:\"width\";i:630;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:23:\"asociado111-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 96, '_wp_trash_meta_status', 'publish'),
(303, 96, '_wp_trash_meta_time', '1524337608'),
(304, 100, '_wp_trash_meta_status', 'publish'),
(305, 100, '_wp_trash_meta_time', '1524337673'),
(306, 101, '_wp_attached_file', '2018/04/asociado2.png'),
(307, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:525;s:6:\"height\";i:375;s:4:\"file\";s:21:\"2018/04/asociado2.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"asociado2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"asociado2-300x214.png\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:21:\"asociado2-340x210.png\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:21:\"asociado2-525x350.png\";s:5:\"width\";i:525;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:21:\"asociado2-525x350.png\";s:5:\"width\";i:525;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 102, '_wp_trash_meta_status', 'publish'),
(309, 102, '_wp_trash_meta_time', '1524337934'),
(310, 103, '_wp_trash_meta_status', 'publish'),
(311, 103, '_wp_trash_meta_time', '1524337993'),
(312, 54, '_wp_trash_meta_status', 'publish'),
(313, 54, '_wp_trash_meta_time', '1524340104'),
(314, 54, '_wp_desired_post_slug', 'obras'),
(316, 104, '_customize_restore_dismissed', '1'),
(317, 105, '_wp_trash_meta_status', 'publish'),
(318, 105, '_wp_trash_meta_time', '1524344456'),
(319, 106, '_wp_trash_meta_status', 'publish'),
(320, 106, '_wp_trash_meta_time', '1524344654'),
(321, 50, '_wp_trash_meta_status', 'publish'),
(322, 50, '_wp_trash_meta_time', '1524345190'),
(323, 50, '_wp_desired_post_slug', 'beneficios-de-la-corporacion'),
(324, 107, '_edit_lock', '1524345426:1'),
(325, 107, '_wp_trash_meta_status', 'publish'),
(326, 107, '_wp_trash_meta_time', '1524345468'),
(327, 108, '_wp_trash_meta_status', 'publish'),
(328, 108, '_wp_trash_meta_time', '1524345784'),
(329, 109, '_wp_trash_meta_status', 'publish'),
(330, 109, '_wp_trash_meta_time', '1524345791'),
(331, 110, '_wp_trash_meta_status', 'publish'),
(332, 110, '_wp_trash_meta_time', '1524354425'),
(333, 111, '_wp_trash_meta_status', 'publish'),
(334, 111, '_wp_trash_meta_time', '1524354965'),
(335, 112, '_wp_trash_meta_status', 'publish'),
(336, 112, '_wp_trash_meta_time', '1524355011'),
(337, 113, '_wp_trash_meta_status', 'publish'),
(338, 113, '_wp_trash_meta_time', '1524355402'),
(339, 114, '_wp_trash_meta_status', 'publish'),
(340, 114, '_wp_trash_meta_time', '1524355430'),
(341, 115, '_wp_trash_meta_status', 'publish'),
(342, 115, '_wp_trash_meta_time', '1524355640'),
(343, 116, '_wp_trash_meta_status', 'publish'),
(344, 116, '_wp_trash_meta_time', '1524355668'),
(345, 117, '_edit_lock', '1524357414:1'),
(346, 117, '_wp_trash_meta_status', 'publish'),
(347, 117, '_wp_trash_meta_time', '1524357416'),
(348, 118, '_wp_trash_meta_status', 'publish'),
(349, 118, '_wp_trash_meta_time', '1524357446'),
(350, 1, '_edit_lock', '1524358287:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-21 03:11:21', '2018-04-21 03:11:21', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-04-21 03:11:21', '2018-04-21 03:11:21', '', 0, 'http://localhost/corpoRozo/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-21 03:11:21', '2018-04-21 03:11:21', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así: <blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote> … o algo así: <blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote> Si eres nuevo en WordPress deberías ir a <a href=\"http://localhost/corpoRozo/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2018-04-21 03:17:43', '2018-04-21 03:17:43', '', 0, 'http://localhost/corpoRozo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-21 03:11:49', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-21 03:11:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/corpoRozo/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-21 03:16:05', '2018-04-21 03:16:05', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:\r\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>\r\n… o algo así:\r\n<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\r\nSi eres nuevo en WordPress deberías ir a <a href=\"http://localhost/corpoRozo/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Misión', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-04-21 03:16:05', '2018-04-21 03:16:05', '', 2, 'http://localhost/corpoRozo/2018/04/21/2-autosave-v1/', 0, 'revision', '', 0),
(5, 1, '2018-04-21 03:17:43', '2018-04-21 03:17:43', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así: <blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote> … o algo así: <blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote> Si eres nuevo en WordPress deberías ir a <a href=\"http://localhost/corpoRozo/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-21 03:17:43', '2018-04-21 03:17:43', '', 2, 'http://localhost/corpoRozo/2018/04/21/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-21 03:18:32', '2018-04-21 03:18:32', '<p style=\"text-align: left;\">eduardo y lady</p>\r\n<p style=\"text-align: left;\"></p>', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2018-04-21 03:18:32', '2018-04-21 03:18:32', '', 0, 'http://localhost/corpoRozo/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-04-21 03:18:12', '2018-04-21 03:18:12', 'eduardo y lady\r\n\r\n&nbsp;', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-21 03:18:12', '2018-04-21 03:18:12', '', 6, 'http://localhost/corpoRozo/2018/04/21/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-21 03:18:32', '2018-04-21 03:18:32', '<p style=\"text-align: left;\">eduardo y lady</p>\r\n<p style=\"text-align: left;\"></p>', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-21 03:18:32', '2018-04-21 03:18:32', '', 6, 'http://localhost/corpoRozo/2018/04/21/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-04-21 03:19:08', '2018-04-21 03:19:08', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2018-04-21 03:21:58', '2018-04-21 03:21:58', '{\n    \"nav_menu_item[-284422081]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Inicio\",\n            \"url\": \"http://localhost/corpoRozo\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Inicio\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:21:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e241db95-d172-457b-a8f8-47901156e294', '', '', '2018-04-21 03:21:58', '2018-04-21 03:21:58', '', 0, 'http://localhost/corpoRozo/2018/04/21/e241db95-d172-457b-a8f8-47901156e294/', 0, 'customize_changeset', '', 0),
(11, 1, '2018-04-21 03:21:58', '2018-04-21 03:21:58', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/2018/04/21/inicio/', 1, 'nav_menu_item', '', 0),
(12, 1, '2018-04-21 03:26:28', '2018-04-21 03:26:28', '{\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:22:53\"\n    },\n    \"nav_menu_item[9]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://localhost/corpoRozo/nosotros/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Nosotros\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:23:53\"\n    },\n    \"nav_menu_item[11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Inicio\",\n            \"url\": \"http://localhost/corpoRozo\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Inicio\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:23:53\"\n    },\n    \"nav_menu_item[-161148194]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:24:53\"\n    },\n    \"nav_menu_item[-1474691140]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:24:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c5ad4bd6-6bcc-43fc-bc8e-ff58cc7e9dc1', '', '', '2018-04-21 03:26:28', '2018-04-21 03:26:28', '', 0, 'http://localhost/corpoRozo/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2018-04-21 03:58:38', '2018-04-21 03:58:38', '{\n    \"presto::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:58:26\"\n    },\n    \"presto::background_color\": {\n        \"value\": \"#81d742\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:58:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd532e03d-1dc3-4b86-aaf0-7b91097c4b33', '', '', '2018-04-21 03:58:38', '2018-04-21 03:58:38', '', 0, 'http://localhost/corpoRozo/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2018-04-21 03:59:00', '2018-04-21 03:59:00', '{\n    \"presto::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 03:59:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '454a0b21-ef58-45d2-8b60-f1ff0af30c4b', '', '', '2018-04-21 03:59:00', '2018-04-21 03:59:00', '', 0, 'http://localhost/corpoRozo/2018/04/21/454a0b21-ef58-45d2-8b60-f1ff0af30c4b/', 0, 'customize_changeset', '', 0),
(15, 1, '2018-04-21 04:02:15', '2018-04-21 04:02:15', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-04-21 04:08:56', '2018-04-21 04:08:56', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2018-04-21 04:03:12', '2018-04-21 04:03:12', '', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2018-04-21 04:03:12', '2018-04-21 04:03:12', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2018-04-21 04:06:19', '2018-04-21 04:06:19', '{\n    \"presto::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:04:43\"\n    },\n    \"presto::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:04:43\"\n    },\n    \"presto::custom_logo\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:05:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e881b03e-f68a-4a69-bd3f-26449712a11a', '', '', '2018-04-21 04:06:19', '2018-04-21 04:06:19', '', 0, 'http://localhost/corpoRozo/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2018-04-21 04:05:05', '2018-04-21 04:05:05', 'http://localhost/corpoRozo/wp-content/uploads/2018/04/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2018-04-21 04:05:05', '2018-04-21 04:05:05', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2018-04-21 04:09:27', '2018-04-21 04:09:27', '{\n    \"presto::background_color\": {\n        \"value\": \"#1e73be\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:09:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e2c2a63-5d54-407a-9a62-a4c384378bfe', '', '', '2018-04-21 04:09:27', '2018-04-21 04:09:27', '', 0, 'http://localhost/corpoRozo/2018/04/21/5e2c2a63-5d54-407a-9a62-a4c384378bfe/', 0, 'customize_changeset', '', 0),
(20, 1, '2018-04-21 04:10:30', '0000-00-00 00:00:00', '{\n    \"presto::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:10:30\"\n    },\n    \"presto::header_image\": {\n        \"value\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/cropped-logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:10:30\"\n    },\n    \"presto::header_image_data\": {\n        \"value\": {\n            \"attachment_id\": 16,\n            \"url\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/cropped-logo.png\",\n            \"thumbnail_url\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/cropped-logo.png\",\n            \"alt_text\": \"\",\n            \"attachment_parent\": 15,\n            \"width\": 716,\n            \"height\": 636,\n            \"timestamp\": [\n                \"1524283394\"\n            ]\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:10:30\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7443a751-448a-4c83-bc4d-507bb963d144', '', '', '2018-04-21 04:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/corpoRozo/?p=20', 0, 'customize_changeset', '', 0),
(21, 1, '2018-04-21 04:13:10', '2018-04-21 04:13:10', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2018-04-21 04:13:10', '2018-04-21 04:13:10', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/logo1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2018-04-21 04:13:17', '2018-04-21 04:13:17', 'http://localhost/corpoRozo/wp-content/uploads/2018/04/cropped-logo1.png', 'cropped-logo1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo1-png', '', '', '2018-04-21 04:13:17', '2018-04-21 04:13:17', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/cropped-logo1.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-04-21 04:13:24', '2018-04-21 04:13:24', '{\n    \"presto::custom_logo\": {\n        \"value\": 22,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:13:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a6951581-4231-4422-8247-b7a1083bf3bd', '', '', '2018-04-21 04:13:24', '2018-04-21 04:13:24', '', 0, 'http://localhost/corpoRozo/2018/04/21/a6951581-4231-4422-8247-b7a1083bf3bd/', 0, 'customize_changeset', '', 0),
(24, 1, '2018-04-21 04:14:26', '2018-04-21 04:14:26', '{\n    \"blogname\": {\n        \"value\": \"CORPOROZO\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:14:26\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:14:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff2d246d-c2a7-4451-b1d6-4885a8bf6267', '', '', '2018-04-21 04:14:26', '2018-04-21 04:14:26', '', 0, 'http://localhost/corpoRozo/2018/04/21/ff2d246d-c2a7-4451-b1d6-4885a8bf6267/', 0, 'customize_changeset', '', 0),
(25, 1, '2018-04-21 04:14:50', '2018-04-21 04:14:50', '{\n    \"blogdescription\": {\n        \"value\": \"A\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:14:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'be2072ef-c3a4-4050-8a58-1ce2f007b4f6', '', '', '2018-04-21 04:14:50', '2018-04-21 04:14:50', '', 0, 'http://localhost/corpoRozo/2018/04/21/be2072ef-c3a4-4050-8a58-1ce2f007b4f6/', 0, 'customize_changeset', '', 0),
(26, 1, '2018-04-21 04:15:15', '2018-04-21 04:15:15', '{\n    \"blogname\": {\n        \"value\": \"corporozo\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:15:15\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Otro sitio realizado con WordPress\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:15:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd480ab38-3ce6-4cb5-9271-21b8e7e989ed', '', '', '2018-04-21 04:15:15', '2018-04-21 04:15:15', '', 0, 'http://localhost/corpoRozo/2018/04/21/d480ab38-3ce6-4cb5-9271-21b8e7e989ed/', 0, 'customize_changeset', '', 0),
(27, 1, '2018-04-21 04:16:25', '2018-04-21 04:16:25', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:16:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7e70fb9e-1002-4df2-b20b-1f7b5fa3c06f', '', '', '2018-04-21 04:16:25', '2018-04-21 04:16:25', '', 0, 'http://localhost/corpoRozo/2018/04/21/7e70fb9e-1002-4df2-b20b-1f7b5fa3c06f/', 0, 'customize_changeset', '', 0),
(28, 1, '2018-04-21 04:18:22', '2018-04-21 04:18:22', '{\n    \"presto::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:17:27\"\n    },\n    \"enigma_options[phone_no]\": {\n        \"value\": \"3182702148\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:18:22\"\n    },\n    \"enigma_options[linkedin_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:18:22\"\n    },\n    \"enigma_options[gplus]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:18:22\"\n    },\n    \"enigma_options[instagram]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:18:22\"\n    },\n    \"enigma_options[vk_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:18:22\"\n    },\n    \"enigma_options[qq_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:18:22\"\n    },\n    \"enigma_options[whatsapp_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:18:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '229eebad-cc19-4b8d-8724-5ea92b9295d8', '', '', '2018-04-21 04:18:22', '2018-04-21 04:18:22', '', 0, 'http://localhost/corpoRozo/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2018-04-21 04:19:15', '2018-04-21 04:19:15', '{\n    \"enigma_options[email_id]\": {\n        \"value\": \"carrera\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:19:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '96e20888-3871-4713-9efa-2758141dd558', '', '', '2018-04-21 04:19:15', '2018-04-21 04:19:15', '', 0, 'http://localhost/corpoRozo/2018/04/21/96e20888-3871-4713-9efa-2758141dd558/', 0, 'customize_changeset', '', 0),
(30, 1, '2018-04-21 04:19:34', '2018-04-21 04:19:34', '{\n    \"enigma_options[email_id]\": {\n        \"value\": \"example@mymail.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:19:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b9e736e1-ceea-47e0-8808-f41e7b760c40', '', '', '2018-04-21 04:19:34', '2018-04-21 04:19:34', '', 0, 'http://localhost/corpoRozo/2018/04/21/b9e736e1-ceea-47e0-8808-f41e7b760c40/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-04-21 04:20:49', '2018-04-21 04:20:49', '{\n    \"enigma_options[header_social_media_in_enabled]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:20:37\"\n    },\n    \"enigma_options[footer_section_social_media_enbled]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:20:37\"\n    },\n    \"enigma_options[email_id]\": {\n        \"value\": \"corporozo@hotmail.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:20:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1b4c7e7e-fbd0-480b-a56a-4990813a1203', '', '', '2018-04-21 04:20:49', '2018-04-21 04:20:49', '', 0, 'http://localhost/corpoRozo/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2018-04-21 04:21:30', '2018-04-21 04:21:30', '{\n    \"presto::background_color\": {\n        \"value\": \"#1e73be\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:21:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd8ce39c-df3e-489a-b659-0934292fa0c9', '', '', '2018-04-21 04:21:30', '2018-04-21 04:21:30', '', 0, 'http://localhost/corpoRozo/2018/04/21/bd8ce39c-df3e-489a-b659-0934292fa0c9/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-04-21 04:22:14', '2018-04-21 04:22:14', '{\n    \"presto::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:22:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25d9f639-1dc5-45f2-a1b6-930ea6d7c6ff', '', '', '2018-04-21 04:22:14', '2018-04-21 04:22:14', '', 0, 'http://localhost/corpoRozo/2018/04/21/25d9f639-1dc5-45f2-a1b6-930ea6d7c6ff/', 0, 'customize_changeset', '', 0),
(34, 1, '2018-04-21 04:22:45', '2018-04-21 04:22:45', '{\n    \"presto::background_color\": {\n        \"value\": \"#dd3333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:22:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '21a57ec3-eeb3-4b8e-8714-f83bdc72685d', '', '', '2018-04-21 04:22:45', '2018-04-21 04:22:45', '', 0, 'http://localhost/corpoRozo/2018/04/21/21a57ec3-eeb3-4b8e-8714-f83bdc72685d/', 0, 'customize_changeset', '', 0),
(35, 1, '2018-04-21 04:27:15', '2018-04-21 04:27:15', '{\n    \"presto::background_color\": {\n        \"value\": \"#1e73be\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:27:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2edd2065-e1cc-44c3-8ac4-20c3d799cb5b', '', '', '2018-04-21 04:27:15', '2018-04-21 04:27:15', '', 0, 'http://localhost/corpoRozo/2018/04/21/2edd2065-e1cc-44c3-8ac4-20c3d799cb5b/', 0, 'customize_changeset', '', 0),
(36, 1, '2018-04-21 04:28:06', '2018-04-21 04:28:06', '{\n    \"presto::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:28:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb0997ac-1f25-4b86-a295-4596af537162', '', '', '2018-04-21 04:28:06', '2018-04-21 04:28:06', '', 0, 'http://localhost/corpoRozo/2018/04/21/bb0997ac-1f25-4b86-a295-4596af537162/', 0, 'customize_changeset', '', 0),
(37, 1, '2018-04-21 04:29:27', '2018-04-21 04:29:27', '{\n    \"presto::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:29:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0bc58e3b-013a-414e-b27e-053fdf35f3ff', '', '', '2018-04-21 04:29:27', '2018-04-21 04:29:27', '', 0, 'http://localhost/corpoRozo/2018/04/21/0bc58e3b-013a-414e-b27e-053fdf35f3ff/', 0, 'customize_changeset', '', 0),
(38, 1, '2018-04-21 04:30:06', '2018-04-21 04:30:06', '{\n    \"presto::background_color\": {\n        \"value\": \"#21abce\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:30:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f1e9fe98-d1e9-4f32-bea4-d46d7abcc707', '', '', '2018-04-21 04:30:06', '2018-04-21 04:30:06', '', 0, 'http://localhost/corpoRozo/2018/04/21/f1e9fe98-d1e9-4f32-bea4-d46d7abcc707/', 0, 'customize_changeset', '', 0),
(39, 1, '2018-04-21 04:46:29', '2018-04-21 04:46:29', '{\n    \"presto::background_color\": {\n        \"value\": \"#21b7ce\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:46:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9fbfc3a0-50a4-41f8-ae79-1c60f722328f', '', '', '2018-04-21 04:46:29', '2018-04-21 04:46:29', '', 0, 'http://localhost/corpoRozo/2018/04/21/9fbfc3a0-50a4-41f8-ae79-1c60f722328f/', 0, 'customize_changeset', '', 0),
(40, 1, '2018-04-21 04:47:17', '2018-04-21 04:47:17', '{\n    \"presto::background_color\": {\n        \"value\": \"#1d7bba\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 04:47:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '67e831e4-c7b2-4c4a-b0ac-de8d7662b768', '', '', '2018-04-21 04:47:17', '2018-04-21 04:47:17', '', 0, 'http://localhost/corpoRozo/2018/04/21/67e831e4-c7b2-4c4a-b0ac-de8d7662b768/', 0, 'customize_changeset', '', 0),
(41, 1, '2018-04-21 05:09:55', '2018-04-21 05:09:55', '{\n    \"enigma_options[home_service_heading]\": {\n        \"value\": \"Beneficios\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:09:52\"\n    },\n    \"enigma_options[service_1_icons]\": {\n        \"value\": \"fa-balance-scale\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:09:52\"\n    },\n    \"enigma_options[service_1_title]\": {\n        \"value\": \"Tributarios\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:09:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e016f118-3e34-40df-bee5-f9e1e9095ede', '', '', '2018-04-21 05:09:55', '2018-04-21 05:09:55', '', 0, 'http://localhost/corpoRozo/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2018-04-21 05:17:38', '2018-04-21 05:17:38', '{\n    \"enigma_options[service_2_title]\": {\n        \"value\": \"Capacitaci\\u00f3n\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:11:52\"\n    },\n    \"enigma_options[service_2_icons]\": {\n        \"value\": \"fa-book\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:13:53\"\n    },\n    \"enigma_options[service_3_title]\": {\n        \"value\": \"Seguridad\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:15:03\"\n    },\n    \"enigma_options[service_3_icons]\": {\n        \"value\": \"fa-lock\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:16:03\"\n    },\n    \"enigma_options[service_3_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:17:38\"\n    },\n    \"enigma_options[services_home]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:17:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5b3952d-ade8-496e-8f1e-78d3c36ca460', '', '', '2018-04-21 05:17:38', '2018-04-21 05:17:38', '', 0, 'http://localhost/corpoRozo/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2018-04-21 05:36:06', '2018-04-21 05:36:06', '', 'IMG_20150305_182209', '', 'inherit', 'open', 'closed', '', 'img_20150305_182209', '', '', '2018-04-21 05:36:06', '2018-04-21 05:36:06', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/IMG_20150305_182209.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-04-21 05:37:08', '0000-00-00 00:00:00', '{\n    \"enigma_options[port_1_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:36:08\"\n    },\n    \"enigma_options[port_4_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:36:08\"\n    },\n    \"enigma_options[port_2_img]\": {\n        \"value\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/a1.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 05:37:08\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '212dc589-7791-488a-90ce-7637726564bd', '', '', '2018-04-21 05:37:08', '2018-04-21 05:37:08', '', 0, 'http://localhost/corpoRozo/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2018-04-21 05:36:41', '2018-04-21 05:36:41', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1', '', '', '2018-04-21 05:36:41', '2018-04-21 05:36:41', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/a1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-04-21 16:56:48', '2018-04-21 16:56:48', '', 'logo bueno', '', 'inherit', 'open', 'closed', '', 'logo-bueno', '', '', '2018-04-21 16:56:48', '2018-04-21 16:56:48', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/logo-bueno.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2018-04-21 16:57:46', '2018-04-21 16:57:46', '{\n    \"presto::custom_logo\": {\n        \"value\": 46,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 16:57:46\"\n    },\n    \"presto::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 16:57:46\"\n    },\n    \"presto::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 16:57:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e8fd431c-45a0-47e4-ac96-9319690cb07a', '', '', '2018-04-21 16:57:46', '2018-04-21 16:57:46', '', 0, 'http://localhost/corpoRozo/2018/04/21/e8fd431c-45a0-47e4-ac96-9319690cb07a/', 0, 'customize_changeset', '', 0),
(48, 1, '2018-04-21 17:19:46', '2018-04-21 17:19:46', '', 'Nuestros Programas', '', 'publish', 'closed', 'closed', '', 'nuestros-programas', '', '', '2018-04-21 17:19:46', '2018-04-21 17:19:46', '', 0, 'http://localhost/corpoRozo/?page_id=48', 0, 'page', '', 0),
(49, 1, '2018-04-21 17:19:46', '2018-04-21 17:19:46', '', 'Nuestros Programas', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-04-21 17:19:46', '2018-04-21 17:19:46', '', 48, 'http://localhost/corpoRozo/2018/04/21/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-04-21 17:23:01', '2018-04-21 17:23:01', '', 'Beneficios de la Corporación', '', 'trash', 'closed', 'closed', '', 'beneficios-de-la-corporacion__trashed', '', '', '2018-04-21 21:13:10', '2018-04-21 21:13:10', '', 0, 'http://localhost/corpoRozo/?page_id=50', 0, 'page', '', 0),
(51, 1, '2018-04-21 17:23:01', '2018-04-21 17:23:01', '', 'Beneficios de la Corporación', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-04-21 17:23:01', '2018-04-21 17:23:01', '', 50, 'http://localhost/corpoRozo/2018/04/21/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-04-21 17:23:26', '2018-04-21 17:23:26', '', 'Nuestros Asociados', '', 'publish', 'closed', 'closed', '', 'nuestros-asociados', '', '', '2018-04-21 17:23:26', '2018-04-21 17:23:26', '', 0, 'http://localhost/corpoRozo/?page_id=52', 0, 'page', '', 0),
(53, 1, '2018-04-21 17:23:26', '2018-04-21 17:23:26', '', 'Nuestros Asociados', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-04-21 17:23:26', '2018-04-21 17:23:26', '', 52, 'http://localhost/corpoRozo/2018/04/21/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-04-21 17:23:37', '2018-04-21 17:23:37', '', 'Obras', '', 'trash', 'closed', 'closed', '', 'obras__trashed', '', '', '2018-04-21 19:48:24', '2018-04-21 19:48:24', '', 0, 'http://localhost/corpoRozo/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-04-21 17:23:37', '2018-04-21 17:23:37', '', 'Obras', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-04-21 17:23:37', '2018-04-21 17:23:37', '', 54, 'http://localhost/corpoRozo/2018/04/21/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-04-21 17:23:51', '2018-04-21 17:23:51', '', 'Ubicación', '', 'publish', 'closed', 'closed', '', 'ubicacion', '', '', '2018-04-21 17:23:51', '2018-04-21 17:23:51', '', 0, 'http://localhost/corpoRozo/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-04-21 17:23:51', '2018-04-21 17:23:51', '', 'Ubicación', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-04-21 17:23:51', '2018-04-21 17:23:51', '', 56, 'http://localhost/corpoRozo/2018/04/21/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-04-21 17:24:22', '2018-04-21 17:24:22', '', 'Contáctenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2018-04-21 17:24:22', '2018-04-21 17:24:22', '', 0, 'http://localhost/corpoRozo/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-04-21 17:24:22', '2018-04-21 17:24:22', '', 'Contáctenos', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-04-21 17:24:22', '2018-04-21 17:24:22', '', 58, 'http://localhost/corpoRozo/2018/04/21/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-04-21 17:24:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-21 17:24:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/corpoRozo/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-04-21 17:30:24', '2018-04-21 17:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-04-21 21:13:29', '2018-04-21 21:13:29', '', 0, 'http://localhost/corpoRozo/?p=61', 16, 'nav_menu_item', '', 0),
(62, 1, '2018-04-21 17:30:24', '2018-04-21 17:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2018-04-21 21:13:29', '2018-04-21 21:13:29', '', 0, 'http://localhost/corpoRozo/?p=62', 15, 'nav_menu_item', '', 0),
(63, 1, '2018-04-21 17:30:23', '2018-04-21 17:30:23', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=63', 14, 'nav_menu_item', '', 0),
(64, 1, '2018-04-21 17:30:23', '2018-04-21 17:30:23', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=64', 13, 'nav_menu_item', '', 0),
(65, 1, '2018-04-21 17:30:23', '2018-04-21 17:30:23', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=65', 12, 'nav_menu_item', '', 0),
(66, 1, '2018-04-21 17:30:22', '2018-04-21 17:30:22', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=66', 7, 'nav_menu_item', '', 0),
(67, 1, '2018-04-21 17:38:01', '2018-04-21 17:38:01', '', 'Quiénes Somos', '', 'publish', 'closed', 'closed', '', 'quienes-somos', '', '', '2018-04-21 17:38:01', '2018-04-21 17:38:01', '', 0, 'http://localhost/corpoRozo/?page_id=67', 0, 'page', '', 0),
(68, 1, '2018-04-21 17:38:01', '2018-04-21 17:38:01', '', 'Quiénes Somos', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-21 17:38:01', '2018-04-21 17:38:01', '', 67, 'http://localhost/corpoRozo/2018/04/21/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-21 17:38:11', '2018-04-21 17:38:11', '', 'Misión', '', 'publish', 'closed', 'closed', '', 'mision', '', '', '2018-04-21 17:38:11', '2018-04-21 17:38:11', '', 0, 'http://localhost/corpoRozo/?page_id=69', 0, 'page', '', 0),
(70, 1, '2018-04-21 17:38:11', '2018-04-21 17:38:11', '', 'Misión', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-04-21 17:38:11', '2018-04-21 17:38:11', '', 69, 'http://localhost/corpoRozo/2018/04/21/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-04-21 17:38:23', '2018-04-21 17:38:23', '', 'Visión', '', 'publish', 'closed', 'closed', '', 'vision', '', '', '2018-04-21 17:38:23', '2018-04-21 17:38:23', '', 0, 'http://localhost/corpoRozo/?page_id=71', 0, 'page', '', 0),
(72, 1, '2018-04-21 17:38:23', '2018-04-21 17:38:23', '', 'Visión', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-04-21 17:38:23', '2018-04-21 17:38:23', '', 71, 'http://localhost/corpoRozo/2018/04/21/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-04-21 17:38:48', '2018-04-21 17:38:48', '', 'Filosofía', '', 'publish', 'closed', 'closed', '', 'filosofia', '', '', '2018-04-21 17:38:48', '2018-04-21 17:38:48', '', 0, 'http://localhost/corpoRozo/?page_id=73', 0, 'page', '', 0),
(74, 1, '2018-04-21 17:38:48', '2018-04-21 17:38:48', '', 'Filosofía', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-04-21 17:38:48', '2018-04-21 17:38:48', '', 73, 'http://localhost/corpoRozo/2018/04/21/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-04-21 17:39:20', '2018-04-21 17:39:20', '', 'Dare', '', 'publish', 'closed', 'closed', '', 'dare', '', '', '2018-04-21 17:39:20', '2018-04-21 17:39:20', '', 0, 'http://localhost/corpoRozo/?page_id=75', 0, 'page', '', 0),
(76, 1, '2018-04-21 17:39:20', '2018-04-21 17:39:20', '', 'Dare', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-04-21 17:39:20', '2018-04-21 17:39:20', '', 75, 'http://localhost/corpoRozo/2018/04/21/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-04-21 17:39:33', '2018-04-21 17:39:33', '', 'Vacaciones Recreativas', '', 'publish', 'closed', 'closed', '', 'vacaciones-recreativas', '', '', '2018-04-21 17:39:33', '2018-04-21 17:39:33', '', 0, 'http://localhost/corpoRozo/?page_id=77', 0, 'page', '', 0),
(78, 1, '2018-04-21 17:39:33', '2018-04-21 17:39:33', '', 'Vacaciones Recreativas', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-04-21 17:39:33', '2018-04-21 17:39:33', '', 77, 'http://localhost/corpoRozo/2018/04/21/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-04-21 17:39:43', '2018-04-21 17:39:43', '', 'Ambientales', '', 'publish', 'closed', 'closed', '', 'ambientales', '', '', '2018-04-21 17:39:43', '2018-04-21 17:39:43', '', 0, 'http://localhost/corpoRozo/?page_id=79', 0, 'page', '', 0),
(80, 1, '2018-04-21 17:39:43', '2018-04-21 17:39:43', '', 'Ambientales', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-04-21 17:39:43', '2018-04-21 17:39:43', '', 79, 'http://localhost/corpoRozo/2018/04/21/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-04-21 17:39:58', '2018-04-21 17:39:58', '', 'Sembremos futuro', '', 'publish', 'closed', 'closed', '', 'sembremos-futuro', '', '', '2018-04-21 17:39:58', '2018-04-21 17:39:58', '', 0, 'http://localhost/corpoRozo/?page_id=81', 0, 'page', '', 0),
(82, 1, '2018-04-21 17:39:58', '2018-04-21 17:39:58', '', 'Sembremos futuro', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-04-21 17:39:58', '2018-04-21 17:39:58', '', 81, 'http://localhost/corpoRozo/2018/04/21/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-04-21 17:43:56', '2018-04-21 17:43:56', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=83', 10, 'nav_menu_item', '', 0),
(84, 1, '2018-04-21 17:43:56', '2018-04-21 17:43:56', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=84', 11, 'nav_menu_item', '', 0),
(85, 1, '2018-04-21 17:43:55', '2018-04-21 17:43:55', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=85', 9, 'nav_menu_item', '', 0),
(86, 1, '2018-04-21 17:43:55', '2018-04-21 17:43:55', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=86', 8, 'nav_menu_item', '', 0),
(87, 1, '2018-04-21 17:43:55', '2018-04-21 17:43:55', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=87', 6, 'nav_menu_item', '', 0),
(88, 1, '2018-04-21 17:43:54', '2018-04-21 17:43:54', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=88', 5, 'nav_menu_item', '', 0),
(89, 1, '2018-04-21 17:43:54', '2018-04-21 17:43:54', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=89', 4, 'nav_menu_item', '', 0),
(90, 1, '2018-04-21 17:43:53', '2018-04-21 17:43:53', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2018-04-21 21:13:28', '2018-04-21 21:13:28', '', 0, 'http://localhost/corpoRozo/?p=90', 3, 'nav_menu_item', '', 0),
(91, 1, '2018-04-21 18:07:09', '2018-04-21 18:07:09', '', 'logo bueno1', '', 'inherit', 'open', 'closed', '', 'logo-bueno1', '', '', '2018-04-21 18:07:09', '2018-04-21 18:07:09', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/logo-bueno1.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2018-04-21 18:07:17', '2018-04-21 18:07:17', '{\n    \"presto::custom_logo\": {\n        \"value\": 91,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 18:07:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '03ba4724-2557-4098-a509-f942f315187b', '', '', '2018-04-21 18:07:17', '2018-04-21 18:07:17', '', 0, 'http://localhost/corpoRozo/2018/04/21/03ba4724-2557-4098-a509-f942f315187b/', 0, 'customize_changeset', '', 0),
(93, 1, '2018-04-21 18:10:09', '2018-04-21 18:10:09', '', 'logo bueno11', '', 'inherit', 'open', 'closed', '', 'logo-bueno11', '', '', '2018-04-21 18:10:09', '2018-04-21 18:10:09', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/logo-bueno11.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2018-04-21 18:10:15', '2018-04-21 18:10:15', '{\n    \"presto::custom_logo\": {\n        \"value\": 93,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 18:10:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4875d9c3-9c35-49a5-9ce7-5b8ab55069dd', '', '', '2018-04-21 18:10:15', '2018-04-21 18:10:15', '', 0, 'http://localhost/corpoRozo/2018/04/21/4875d9c3-9c35-49a5-9ce7-5b8ab55069dd/', 0, 'customize_changeset', '', 0),
(95, 1, '2018-04-21 18:17:12', '2018-04-21 18:17:12', '{\n    \"enigma_options[twitter_link]\": {\n        \"value\": \"https://twitter.com/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 18:16:34\"\n    },\n    \"enigma_options[fb_link]\": {\n        \"value\": \"https://www.facebook.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 18:16:57\"\n    },\n    \"enigma_options[youtube_link]\": {\n        \"value\": \"https://www.youtube.com/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 18:17:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3872ab76-bb9d-4304-80b7-079b99a5bafa', '', '', '2018-04-21 18:17:12', '2018-04-21 18:17:12', '', 0, 'http://localhost/corpoRozo/?p=95', 0, 'customize_changeset', '', 0),
(96, 1, '2018-04-21 19:06:47', '2018-04-21 19:06:47', '{\n    \"enigma_options[port_heading]\": {\n        \"value\": \"Nuestros Asociados\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 18:59:17\"\n    },\n    \"enigma_options[port_1_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:02:18\"\n    },\n    \"enigma_options[port_2_img]\": {\n        \"value\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/asociados.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:02:18\"\n    },\n    \"enigma_options[port_3_img]\": {\n        \"value\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/asociadosssss.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:06:18\"\n    },\n    \"enigma_options[port_4_img]\": {\n        \"value\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/asociado111.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:06:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '16e4e5c2-e8ea-4a3d-b78a-1a3a4eda5e55', '', '', '2018-04-21 19:06:47', '2018-04-21 19:06:47', '', 0, 'http://localhost/corpoRozo/?p=96', 0, 'customize_changeset', '', 0),
(97, 1, '2018-04-21 19:01:32', '2018-04-21 19:01:32', '', 'asociados', '', 'inherit', 'open', 'closed', '', 'asociados', '', '', '2018-04-21 19:01:32', '2018-04-21 19:01:32', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/asociados.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2018-04-21 19:05:32', '2018-04-21 19:05:32', '', 'asociadosssss', '', 'inherit', 'open', 'closed', '', 'asociadosssss', '', '', '2018-04-21 19:05:32', '2018-04-21 19:05:32', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/asociadosssss.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2018-04-21 19:06:37', '2018-04-21 19:06:37', '', 'asociado111', '', 'inherit', 'open', 'closed', '', 'asociado111', '', '', '2018-04-21 19:06:37', '2018-04-21 19:06:37', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/asociado111.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2018-04-21 19:07:52', '2018-04-21 19:07:52', '{\n    \"enigma_options[footer_customizations]\": {\n        \"value\": \" \\u00a9 2018 CorpoRozo\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:07:52\"\n    },\n    \"enigma_options[developed_by_text]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:07:52\"\n    },\n    \"enigma_options[developed_by_weblizar_text]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:07:52\"\n    },\n    \"enigma_options[developed_by_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:07:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bffa04a3-2116-4ab9-a85f-104bfc8aea17', '', '', '2018-04-21 19:07:52', '2018-04-21 19:07:52', '', 0, 'http://localhost/corpoRozo/2018/04/21/bffa04a3-2116-4ab9-a85f-104bfc8aea17/', 0, 'customize_changeset', '', 0),
(101, 1, '2018-04-21 19:12:07', '2018-04-21 19:12:07', '', 'asociado2', '', 'inherit', 'open', 'closed', '', 'asociado2', '', '', '2018-04-21 19:12:07', '2018-04-21 19:12:07', '', 0, 'http://localhost/corpoRozo/wp-content/uploads/2018/04/asociado2.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2018-04-21 19:12:14', '2018-04-21 19:12:14', '{\n    \"enigma_options[port_1_img]\": {\n        \"value\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/asociado2.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:12:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6173e62e-ddac-475e-bf08-88eaafb1f3bb', '', '', '2018-04-21 19:12:14', '2018-04-21 19:12:14', '', 0, 'http://localhost/corpoRozo/2018/04/21/6173e62e-ddac-475e-bf08-88eaafb1f3bb/', 0, 'customize_changeset', '', 0),
(103, 1, '2018-04-21 19:13:12', '2018-04-21 19:13:12', '{\n    \"enigma_options[blog_home]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 19:13:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f926fd8e-e3d2-4757-bd0f-9552a5878db3', '', '', '2018-04-21 19:13:12', '2018-04-21 19:13:12', '', 0, 'http://localhost/corpoRozo/2018/04/21/f926fd8e-e3d2-4757-bd0f-9552a5878db3/', 0, 'customize_changeset', '', 0),
(104, 1, '2018-04-21 20:29:52', '0000-00-00 00:00:00', '{\n    \"enigma_options[services_home]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 20:27:52\"\n    },\n    \"presto::layout\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 20:29:52\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '4a34393f-a29e-4382-885b-5e9fc2958275', '', '', '2018-04-21 20:29:52', '2018-04-21 20:29:52', '', 0, 'http://localhost/corpoRozo/?p=104', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(105, 1, '2018-04-21 21:00:56', '2018-04-21 21:00:56', '{\n    \"enigma_options[service_3_title]\": {\n        \"value\": \"Responsabilidad\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:00:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8b591eef-f45c-4023-85c2-4456e6e2ccdf', '', '', '2018-04-21 21:00:56', '2018-04-21 21:00:56', '', 0, 'http://localhost/corpoRozo/2018/04/21/8b591eef-f45c-4023-85c2-4456e6e2ccdf/', 0, 'customize_changeset', '', 0),
(106, 1, '2018-04-21 21:04:14', '2018-04-21 21:04:14', '{\n    \"enigma_options[service_3_title]\": {\n        \"value\": \"Seguridad\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:04:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'be8c48f9-bb18-406a-877d-eed14a8dbf89', '', '', '2018-04-21 21:04:14', '2018-04-21 21:04:14', '', 0, 'http://localhost/corpoRozo/2018/04/21/be8c48f9-bb18-406a-877d-eed14a8dbf89/', 0, 'customize_changeset', '', 0),
(107, 1, '2018-04-21 21:17:48', '2018-04-21 21:17:48', '{\n    \"enigma_options[home_service_heading]\": {\n        \"value\": \"Beneficios de la Corporaci\\u00f3n\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:15:06\"\n    },\n    \"presto::service_1_text\": {\n        \"value\": \"<p>Expedici\\u00f3n de certificado de donaci\\u00f3n por los aportes recibidos, los cuales podr\\u00e1n ser deducidos seg\\u00fan articulo 125 del Estatuto Tributario en algunos casos hasta el 100%.</p>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:15:06\"\n    },\n    \"presto::service_2_text\": {\n        \"value\": \"<p>En alianza con el SENA y Comfenalco Valle, gestionamos la capacitaci\\u00f3n al personal para que tenga un mejor desempe\\u00f1o laboral.</p>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:16:06\"\n    },\n    \"presto::service_3_text\": {\n        \"value\": \"<p>Entrega de informes del trabajo social realizado a cada una de las empresas asociadas, para que a su vez estas lo\\u00a0 presenten a las diferentes entidades que\\u00a0 lo requieran.</p>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:17:48\"\n    },\n    \"enigma_options[service_3_title]\": {\n        \"value\": \"Responsabilidad Social\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:17:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd132a5a0-98fb-462c-b091-b92a54ca2b5e', '', '', '2018-04-21 21:17:48', '2018-04-21 21:17:48', '', 0, 'http://localhost/corpoRozo/?p=107', 0, 'customize_changeset', '', 0),
(108, 1, '2018-04-21 21:23:04', '2018-04-21 21:23:04', '{\n    \"enigma_options[service_3_icons]\": {\n        \"value\": \"-users\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:23:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c7065315-7aa9-4883-b9c0-c3176e096e42', '', '', '2018-04-21 21:23:04', '2018-04-21 21:23:04', '', 0, 'http://localhost/corpoRozo/2018/04/21/c7065315-7aa9-4883-b9c0-c3176e096e42/', 0, 'customize_changeset', '', 0),
(109, 1, '2018-04-21 21:23:11', '2018-04-21 21:23:11', '{\n    \"enigma_options[service_3_icons]\": {\n        \"value\": \"fa-users\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 21:23:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a2f6347-9aea-482c-a41e-f0bf3eb2e267', '', '', '2018-04-21 21:23:11', '2018-04-21 21:23:11', '', 0, 'http://localhost/corpoRozo/2018/04/21/4a2f6347-9aea-482c-a41e-f0bf3eb2e267/', 0, 'customize_changeset', '', 0),
(110, 1, '2018-04-21 23:47:05', '2018-04-21 23:47:05', '{\n    \"enigma_options[port_3_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 23:47:05\"\n    },\n    \"enigma_options[port_4_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 23:47:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ba0b0164-f102-4cf1-9e12-1c34c90ee515', '', '', '2018-04-21 23:47:05', '2018-04-21 23:47:05', '', 0, 'http://localhost/corpoRozo/2018/04/21/ba0b0164-f102-4cf1-9e12-1c34c90ee515/', 0, 'customize_changeset', '', 0),
(111, 1, '2018-04-21 23:56:05', '2018-04-21 23:56:05', '{\n    \"enigma_options[port_1_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 23:56:05\"\n    },\n    \"enigma_options[port_3_img]\": {\n        \"value\": \"http://localhost/corpoRozo/wp-content/uploads/2018/04/asociados.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 23:56:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2214d4de-fd35-42de-ba61-6411cb431695', '', '', '2018-04-21 23:56:05', '2018-04-21 23:56:05', '', 0, 'http://localhost/corpoRozo/2018/04/21/2214d4de-fd35-42de-ba61-6411cb431695/', 0, 'customize_changeset', '', 0),
(112, 1, '2018-04-21 23:56:51', '2018-04-21 23:56:51', '{\n    \"enigma_options[port_2_title]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 23:56:51\"\n    },\n    \"enigma_options[port_3_title]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-21 23:56:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8f7beb36-1a73-4cd1-b5ff-c61d3cb423e4', '', '', '2018-04-21 23:56:51', '2018-04-21 23:56:51', '', 0, 'http://localhost/corpoRozo/2018/04/21/8f7beb36-1a73-4cd1-b5ff-c61d3cb423e4/', 0, 'customize_changeset', '', 0),
(113, 1, '2018-04-22 00:03:22', '2018-04-22 00:03:22', '{\n    \"enigma_options[port_2_title]\": {\n        \"value\": \"Nuestros Asociados\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:03:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0d4b60fc-2395-4e76-971a-a9638b0033ca', '', '', '2018-04-22 00:03:22', '2018-04-22 00:03:22', '', 0, 'http://localhost/corpoRozo/2018/04/22/0d4b60fc-2395-4e76-971a-a9638b0033ca/', 0, 'customize_changeset', '', 0),
(114, 1, '2018-04-22 00:03:50', '2018-04-22 00:03:50', '{\n    \"enigma_options[port_2_title]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:03:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d5c43d6-575c-4b4a-b2f4-6591a3866a20', '', '', '2018-04-22 00:03:50', '2018-04-22 00:03:50', '', 0, 'http://localhost/corpoRozo/2018/04/22/8d5c43d6-575c-4b4a-b2f4-6591a3866a20/', 0, 'customize_changeset', '', 0),
(115, 1, '2018-04-22 00:07:20', '2018-04-22 00:07:20', '{\n    \"enigma_options[port_1_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:07:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e411756-a1f2-448e-a5a2-ed48090c4b60', '', '', '2018-04-22 00:07:20', '2018-04-22 00:07:20', '', 0, 'http://localhost/corpoRozo/2018/04/22/8e411756-a1f2-448e-a5a2-ed48090c4b60/', 0, 'customize_changeset', '', 0),
(116, 1, '2018-04-22 00:07:48', '2018-04-22 00:07:48', '{\n    \"enigma_options[port_1_link]\": {\n        \"value\": \"#\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:07:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5aa8bd98-2ebf-4686-86b4-54eb2ad00139', '', '', '2018-04-22 00:07:48', '2018-04-22 00:07:48', '', 0, 'http://localhost/corpoRozo/2018/04/22/5aa8bd98-2ebf-4686-86b4-54eb2ad00139/', 0, 'customize_changeset', '', 0),
(117, 1, '2018-04-22 00:36:56', '2018-04-22 00:36:56', '{\n    \"enigma_options[fc_home]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:33:54\"\n    },\n    \"presto::scroll_up\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:34:54\"\n    },\n    \"presto::layout\": {\n        \"value\": \"2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:35:54\"\n    },\n    \"presto::enigma_options_search_box\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:35:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '48d8c666-b4ca-479c-b119-ebe0d766016b', '', '', '2018-04-22 00:36:56', '2018-04-22 00:36:56', '', 0, 'http://localhost/corpoRozo/?p=117', 0, 'customize_changeset', '', 0),
(118, 1, '2018-04-22 00:37:26', '2018-04-22 00:37:26', '{\n    \"presto::layout\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-22 00:37:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2186f2d-3340-4084-9e97-bd4d0c09aca2', '', '', '2018-04-22 00:37:26', '2018-04-22 00:37:26', '', 0, 'http://localhost/corpoRozo/2018/04/22/f2186f2d-3340-4084-9e97-bd4d0c09aca2/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'menu principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(11, 2, 0),
(61, 2, 0),
(62, 2, 0),
(63, 2, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(83, 2, 0),
(84, 2, 0),
(85, 2, 0),
(86, 2, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
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
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'corporozo'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"b914730d7a7647358111b5983c3f65d77126a2e1c057bf3c3fcf0907f7fc6e30\";a:4:{s:10:\"expiration\";i:1524453106;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524280306;}s:64:\"2d8efd1b589f023ab7bd4beb26bc706e8d63f7b25a7b59541ae7207bb16bd110\";a:4:{s:10:\"expiration\";i:1524498443;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36\";s:5:\"login\";i:1524325643;}s:64:\"725ebc191a056e334c57153da5d50b1a7e6fee80c7af83a0d5222f0577e65100\";a:4:{s:10:\"expiration\";i:1524529290;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524356490;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'editor=tinymce&hidetb=0&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1524354379');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'corporozo', '$P$BBLXjV4u3.T.O1EqSA4mgSKifJcAha.', 'corporozo', 'soporte@zfpsa.com', '', '2018-04-21 03:11:20', '', 0, 'corporozo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
